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
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !78
@.str.39 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !84
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !89
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !91
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !97
@.str.51 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.57, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.63, i32 0, i32 0), i8* null], align 16, !dbg !103
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !148
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !166
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.65 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.67 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.68 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.69 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.70 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !173
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !180
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !168
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !182
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !188
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.115 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !637 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !641, metadata !DIExpression()), !dbg !642
  %3 = icmp eq i32 %0, 0, !dbg !643
  br i1 %3, label %9, label %4, !dbg !645

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !646, !tbaa !648
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !646
  %7 = load i8*, i8** @program_name, align 8, !dbg !646, !tbaa !648
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !646
  br label %65, !dbg !646

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !652
  %11 = load i8*, i8** @program_name, align 8, !dbg !652, !tbaa !648
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !652
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !654
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 -20, i32 19) #25, !dbg !654
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #25, !dbg !655
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !648
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #25, !dbg !655
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !660
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !648
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !660
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !661
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !648
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !661
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !662
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !648
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !662
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !663
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !664, metadata !DIExpression()) #25, !dbg !682
  %29 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !684
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %29) #25, !dbg !684
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !669, metadata !DIExpression()) #25, !dbg !685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %29, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !678, metadata !DIExpression()) #25, !dbg !682
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !679, metadata !DIExpression()) #25, !dbg !682
  %30 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !686
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !679, metadata !DIExpression()) #25, !dbg !682
  br label %31, !dbg !687

31:                                               ; preds = %36, %9
  %32 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %33 = phi %struct.infomap* [ %37, %36 ], [ %30, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !679, metadata !DIExpression()) #25, !dbg !682
  %34 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %32) #26, !dbg !688
  %35 = icmp eq i32 %34, 0, !dbg !688
  br i1 %35, label %41, label %36, !dbg !687

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 1, !dbg !689
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !679, metadata !DIExpression()) #25, !dbg !682
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 0, !dbg !690
  %39 = load i8*, i8** %38, align 8, !dbg !690, !tbaa !691
  %40 = icmp eq i8* %39, null, !dbg !693
  br i1 %40, label %41, label %31, !dbg !694, !llvm.loop !695

41:                                               ; preds = %36, %31
  %42 = phi %struct.infomap* [ %33, %31 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 1, !dbg !697
  %44 = load i8*, i8** %43, align 8, !dbg !697, !tbaa !699
  %45 = icmp eq i8* %44, null, !dbg !700
  %46 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %44, !dbg !701
  call void @llvm.dbg.value(metadata i8* %46, metadata !678, metadata !DIExpression()) #25, !dbg !682
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !702
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #25, !dbg !702
  %49 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !703
  call void @llvm.dbg.value(metadata i8* %49, metadata !681, metadata !DIExpression()) #25, !dbg !682
  %50 = icmp eq i8* %49, null, !dbg !704
  br i1 %50, label %58, label %51, !dbg !706

51:                                               ; preds = %41
  %52 = tail call i32 @strncmp(i8* nonnull %49, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #26, !dbg !707
  %53 = icmp eq i32 %52, 0, !dbg !707
  br i1 %53, label %58, label %54, !dbg !708

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), i32 5) #25, !dbg !709
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !648
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56) #25, !dbg !709
  br label %58, !dbg !711

58:                                               ; preds = %41, %51, %54
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 5) #25, !dbg !712
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !712
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #25, !dbg !713
  %62 = icmp eq i8* %46, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !713
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !713
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* %46, i8* %63) #25, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %29) #25, !dbg !714
  br label %65

65:                                               ; preds = %58, %4
  tail call void @exit(i32 %0) #27, !dbg !715
  unreachable, !dbg !715
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !716 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !720 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !775 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !22 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !30, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8** %1, metadata !31, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !779
  %4 = load i8*, i8** %1, align 8, !dbg !780, !tbaa !648
  tail call void @set_program_name(i8* %4) #25, !dbg !781
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !782
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !783
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !784
  call void @llvm.dbg.value(metadata i32 125, metadata !785, metadata !DIExpression()), !dbg !788
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !790, !tbaa !792
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !794
  call void @llvm.dbg.value(metadata i32 1, metadata !39, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !779
  %9 = icmp sgt i32 %0, 1, !dbg !795
  br i1 %9, label %10, label %63, !dbg !796

10:                                               ; preds = %2, %48
  %11 = phi i8* [ %50, %48 ], [ null, %2 ]
  %12 = phi i32 [ %49, %48 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !34, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %12, metadata !39, metadata !DIExpression()), !dbg !779
  %13 = sext i32 %12 to i64, !dbg !797
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !797
  %15 = load i8*, i8** %14, align 8, !dbg !797, !tbaa !648
  call void @llvm.dbg.value(metadata i8* %15, metadata !40, metadata !DIExpression()), !dbg !798
  %16 = load i8, i8* %15, align 1, !dbg !799, !tbaa !800
  %17 = icmp eq i8 %16, 45, !dbg !801
  br i1 %17, label %18, label %32, !dbg !802

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !803
  %20 = load i8, i8* %19, align 1, !dbg !803, !tbaa !800
  %21 = icmp eq i8 %20, 45, !dbg !803
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !803
  %24 = select i1 %23, i64 2, i64 1, !dbg !803
  %25 = getelementptr inbounds i8, i8* %15, i64 %24, !dbg !803
  %26 = load i8, i8* %25, align 1, !dbg !803, !tbaa !800
  %27 = sext i8 %26 to i32, !dbg !803
  %28 = add nsw i32 %27, -48, !dbg !803
  %29 = icmp ult i32 %28, 10, !dbg !803
  br i1 %29, label %30, label %32, !dbg !804

30:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !34, metadata !DIExpression()), !dbg !779
  %31 = add nsw i32 %12, 1, !dbg !805
  call void @llvm.dbg.value(metadata i32 %31, metadata !39, metadata !DIExpression()), !dbg !779
  br label %48, !dbg !807

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !808
  %34 = sub nsw i32 %0, %33, !dbg !809
  call void @llvm.dbg.value(metadata i32 %34, metadata !47, metadata !DIExpression()), !dbg !810
  %35 = sext i32 %33 to i64, !dbg !811
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35, !dbg !811
  call void @llvm.dbg.value(metadata i8** %36, metadata !48, metadata !DIExpression()), !dbg !810
  %37 = load i8*, i8** %1, align 8, !dbg !812, !tbaa !648
  store i8* %37, i8** %36, align 8, !dbg !813, !tbaa !648
  store i32 0, i32* @optind, align 4, !dbg !814, !tbaa !792
  %38 = tail call i32 @getopt_long(i32 %34, i8** nonnull %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !815
  call void @llvm.dbg.value(metadata i32 %38, metadata !44, metadata !DIExpression()), !dbg !810
  %39 = load i32, i32* @optind, align 4, !dbg !816, !tbaa !792
  %40 = add i32 %33, %39, !dbg !817
  call void @llvm.dbg.value(metadata i32 %40, metadata !39, metadata !DIExpression()), !dbg !779
  switch i32 %38, label %45 [
    i32 110, label %46
    i32 -1, label %52
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !818

41:                                               ; preds = %32
  tail call void @usage(i32 0) #28, !dbg !819
  unreachable, !dbg !819

42:                                               ; preds = %32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !648
  %44 = load i8*, i8** @Version, align 8, !dbg !821, !tbaa !648
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #25, !dbg !821
  tail call void @exit(i32 0) #27, !dbg !821
  unreachable, !dbg !821

45:                                               ; preds = %32
  tail call void @usage(i32 125) #28, !dbg !822
  unreachable, !dbg !822

46:                                               ; preds = %32
  %47 = load i8*, i8** @optarg, align 8, !dbg !823, !tbaa !648
  call void @llvm.dbg.value(metadata i8* %47, metadata !34, metadata !DIExpression()), !dbg !779
  br label %48

48:                                               ; preds = %30, %46
  %49 = phi i32 [ %31, %30 ], [ %40, %46 ], !dbg !824
  %50 = phi i8* [ %19, %30 ], [ %47, %46 ], !dbg !779
  call void @llvm.dbg.value(metadata i8* %50, metadata !34, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %49, metadata !39, metadata !DIExpression()), !dbg !779
  %51 = icmp slt i32 %49, %0, !dbg !795
  br i1 %51, label %10, label %52, !dbg !796

52:                                               ; preds = %48, %32
  %53 = phi i8* [ %50, %48 ], [ %11, %32 ], !dbg !779
  %54 = phi i32 [ %49, %48 ], [ %40, %32 ], !dbg !825
  call void @llvm.dbg.value(metadata i8* %53, metadata !34, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %54, metadata !39, metadata !DIExpression()), !dbg !779
  %55 = icmp eq i8* %53, null, !dbg !826
  br i1 %55, label %63, label %56, !dbg !827

56:                                               ; preds = %52
  %57 = bitcast i64* %3 to i8*, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #25, !dbg !828
  call void @llvm.dbg.value(metadata i64* %3, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !829
  %58 = call i32 @xstrtol(i8* nonnull %53, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !830
  %59 = icmp ugt i32 %58, 1, !dbg !832
  br i1 %59, label %60, label %66, !dbg !833

60:                                               ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 5) #25, !dbg !834
  %62 = call i8* @quote(i8* nonnull %53) #25, !dbg !834
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %61, i8* %62) #25, !dbg !834
  unreachable, !dbg !834

63:                                               ; preds = %2, %52
  %64 = phi i32 [ %54, %52 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !779
  %65 = icmp eq i32 %64, %0, !dbg !835
  br i1 %65, label %76, label %87, !dbg !837

66:                                               ; preds = %56
  %67 = load i64, i64* %3, align 8, !dbg !838, !tbaa !839
  call void @llvm.dbg.value(metadata i64 %67, metadata !49, metadata !DIExpression()), !dbg !829
  %68 = icmp slt i64 %67, 39, !dbg !838
  %69 = select i1 %68, i64 %67, i64 39, !dbg !838
  %70 = icmp sgt i64 %69, -39, !dbg !838
  %71 = select i1 %70, i64 %69, i64 -39, !dbg !838
  %72 = trunc i64 %71 to i32, !dbg !838
  call void @llvm.dbg.value(metadata i32 %72, metadata !33, metadata !DIExpression()), !dbg !779
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #25, !dbg !841
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !779
  %73 = icmp eq i32 %54, %0, !dbg !835
  br i1 %73, label %74, label %87, !dbg !837

74:                                               ; preds = %66
  %75 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !842
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75) #25, !dbg !846
  call void @usage(i32 125) #28, !dbg !847
  unreachable, !dbg !847

76:                                               ; preds = %63
  %77 = tail call i32* @__errno_location() #29, !dbg !848
  store i32 0, i32* %77, align 4, !dbg !849, !tbaa !792
  %78 = tail call i32 @getpriority(i32 0, i32 0) #25, !dbg !850
  call void @llvm.dbg.value(metadata i32 %78, metadata !32, metadata !DIExpression()), !dbg !779
  %79 = icmp eq i32 %78, -1, !dbg !851
  br i1 %79, label %80, label %85, !dbg !853

80:                                               ; preds = %76
  %81 = load i32, i32* %77, align 4, !dbg !854, !tbaa !792
  %82 = icmp eq i32 %81, 0, !dbg !855
  br i1 %82, label %85, label %83, !dbg !856

83:                                               ; preds = %80
  %84 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #25, !dbg !857
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %81, i8* %84) #25, !dbg !857
  unreachable, !dbg !857

85:                                               ; preds = %80, %76
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %78) #25, !dbg !858
  br label %124, !dbg !859

87:                                               ; preds = %66, %63
  %88 = phi i32 [ %54, %66 ], [ %64, %63 ]
  %89 = phi i32 [ %72, %66 ], [ 10, %63 ]
  %90 = tail call i32* @__errno_location() #29, !dbg !860
  store i32 0, i32* %90, align 4, !dbg !861, !tbaa !792
  %91 = call i32 @getpriority(i32 0, i32 0) #25, !dbg !862
  call void @llvm.dbg.value(metadata i32 %91, metadata !32, metadata !DIExpression()), !dbg !779
  %92 = icmp eq i32 %91, -1, !dbg !863
  br i1 %92, label %93, label %98, !dbg !865

93:                                               ; preds = %87
  %94 = load i32, i32* %90, align 4, !dbg !866, !tbaa !792
  %95 = icmp eq i32 %94, 0, !dbg !867
  br i1 %95, label %98, label %96, !dbg !868

96:                                               ; preds = %93
  %97 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #25, !dbg !869
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %94, i8* %97) #25, !dbg !869
  unreachable, !dbg !869

98:                                               ; preds = %93, %87
  %99 = add nsw i32 %91, %89, !dbg !870
  %100 = call i32 @setpriority(i32 0, i32 0, i32 %99) #25, !dbg !871
  %101 = icmp eq i32 %100, 0, !dbg !872
  call void @llvm.dbg.value(metadata i1 %101, metadata !37, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !779
  br i1 %101, label %114, label %102, !dbg !873

102:                                              ; preds = %98
  %103 = load i32, i32* %90, align 4, !dbg !874, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %103, metadata !877, metadata !DIExpression()), !dbg !882
  %104 = icmp eq i32 %103, 13, !dbg !884
  %105 = icmp eq i32 %103, 1, !dbg !885
  %106 = or i1 %104, %105, !dbg !885
  %107 = select i1 %106, i32 0, i32 125, !dbg !886
  %108 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 5) #25, !dbg !887
  call void (i32, i32, i8*, ...) @error(i32 %107, i32 %103, i8* %108) #25, !dbg !888
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !889, !tbaa !648
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %109, metadata !891, metadata !DIExpression()), !dbg !900
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 0, !dbg !902
  %111 = load i32, i32* %110, align 8, !dbg !902, !tbaa !903
  %112 = and i32 %111, 32, !dbg !889
  %113 = icmp eq i32 %112, 0, !dbg !889
  br i1 %113, label %114, label %124, !dbg !906

114:                                              ; preds = %102, %98
  %115 = sext i32 %88 to i64, !dbg !907
  %116 = getelementptr inbounds i8*, i8** %1, i64 %115, !dbg !907
  %117 = load i8*, i8** %116, align 8, !dbg !907, !tbaa !648
  %118 = call i32 @execvp(i8* %117, i8** nonnull %116) #25, !dbg !908
  %119 = load i32, i32* %90, align 4, !dbg !909, !tbaa !792
  %120 = icmp eq i32 %119, 2, !dbg !910
  %121 = select i1 %120, i32 127, i32 126, !dbg !909
  call void @llvm.dbg.value(metadata i32 %121, metadata !53, metadata !DIExpression()), !dbg !779
  %122 = load i8*, i8** %116, align 8, !dbg !911, !tbaa !648
  %123 = call i8* @quote(i8* %122) #25, !dbg !912
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %123) #25, !dbg !913
  br label %124

124:                                              ; preds = %102, %114, %85
  %125 = phi i32 [ 0, %85 ], [ %121, %114 ], [ 125, %102 ], !dbg !779
  ret i32 %125, !dbg !914
}

; Function Attrs: nounwind
declare !dbg !915 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !918 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !921 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !926 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !932 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !936 i32 @getpriority(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !940 i32 @setpriority(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !943 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !949, metadata !DIExpression()), !dbg !950
  store i8* %0, i8** @file_name, align 8, !dbg !951, !tbaa !648
  ret void, !dbg !952
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !953 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !957, metadata !DIExpression()), !dbg !958
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !959, !tbaa !960
  ret void, !dbg !962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !963 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !968, !tbaa !648
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !969
  %3 = icmp eq i32 %2, 0, !dbg !970
  br i1 %3, label %22, label %4, !dbg !971

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !972, !tbaa !960, !range !973
  %6 = icmp eq i8 %5, 0, !dbg !972
  br i1 %6, label %11, label %7, !dbg !974

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !975
  %9 = load i32, i32* %8, align 4, !dbg !975, !tbaa !792
  %10 = icmp eq i32 %9, 32, !dbg !976
  br i1 %10, label %22, label %11, !dbg !977

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #25, !dbg !978
  call void @llvm.dbg.value(metadata i8* %12, metadata !965, metadata !DIExpression()), !dbg !979
  %13 = load i8*, i8** @file_name, align 8, !dbg !980, !tbaa !648
  %14 = icmp eq i8* %13, null, !dbg !980
  %15 = tail call i32* @__errno_location() #29, !dbg !982
  %16 = load i32, i32* %15, align 4, !dbg !982, !tbaa !792
  br i1 %14, label %19, label %17, !dbg !983

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !984
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !985
  br label %20, !dbg !985

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #25, !dbg !986
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !987, !tbaa !792
  tail call void @_exit(i32 %21) #27, !dbg !988
  unreachable, !dbg !988

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !989, !tbaa !648
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !991
  %25 = icmp eq i32 %24, 0, !dbg !992
  br i1 %25, label %28, label %26, !dbg !993

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !994, !tbaa !792
  tail call void @_exit(i32 %27) #27, !dbg !995
  unreachable, !dbg !995

28:                                               ; preds = %22
  ret void, !dbg !996
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !997 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !999, metadata !DIExpression()), !dbg !1002
  %2 = icmp eq i8* %0, null, !dbg !1003
  br i1 %2, label %3, label %6, !dbg !1005

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1006, !tbaa !648
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.51, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1008
  tail call void @abort() #27, !dbg !1009
  unreachable, !dbg !1009

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %7, metadata !1000, metadata !DIExpression()), !dbg !1002
  %8 = icmp eq i8* %7, null, !dbg !1011
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1012
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1012
  call void @llvm.dbg.value(metadata i8* %10, metadata !1001, metadata !DIExpression()), !dbg !1002
  %11 = ptrtoint i8* %10 to i64, !dbg !1013
  %12 = ptrtoint i8* %0 to i64, !dbg !1013
  %13 = sub i64 %11, %12, !dbg !1013
  %14 = icmp sgt i64 %13, 6, !dbg !1015
  br i1 %14, label %15, label %24, !dbg !1016

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1017
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.52, i64 0, i64 0), i64 7) #26, !dbg !1018
  %18 = icmp eq i32 %17, 0, !dbg !1019
  br i1 %18, label %19, label %24, !dbg !1020

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !999, metadata !DIExpression()), !dbg !1002
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.53, i64 0, i64 0), i64 3) #26, !dbg !1021
  %21 = icmp eq i32 %20, 0, !dbg !1024
  br i1 %21, label %22, label %24, !dbg !1025

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %23, metadata !999, metadata !DIExpression()), !dbg !1002
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1028, !tbaa !648
  br label %24, !dbg !1029

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !999, metadata !DIExpression()), !dbg !1002
  store i8* %25, i8** @program_name, align 8, !dbg !1030, !tbaa !648
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1031, !tbaa !648
  ret void, !dbg !1032
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1033 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1038, metadata !DIExpression()), !dbg !1041
  %2 = tail call i32* @__errno_location() #29, !dbg !1042
  %3 = load i32, i32* %2, align 4, !dbg !1042, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %3, metadata !1039, metadata !DIExpression()), !dbg !1041
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1043
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1043
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1043
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1044
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1040, metadata !DIExpression()), !dbg !1041
  store i32 %3, i32* %2, align 4, !dbg !1045, !tbaa !792
  ret %struct.quoting_options* %8, !dbg !1046
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1047 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1053, metadata !DIExpression()), !dbg !1054
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1055
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1055
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1056
  %5 = load i32, i32* %4, align 8, !dbg !1056, !tbaa !1057
  ret i32 %5, !dbg !1059
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1060 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i32 %1, metadata !1065, metadata !DIExpression()), !dbg !1066
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1067
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1067
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1068
  store i32 %1, i32* %5, align 8, !dbg !1069, !tbaa !1057
  ret void, !dbg !1070
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1071 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1075, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %1, metadata !1076, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %2, metadata !1077, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %1, metadata !1078, metadata !DIExpression()), !dbg !1084
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1085
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1085
  %6 = lshr i8 %1, 5, !dbg !1086
  %7 = zext i8 %6 to i64, !dbg !1086
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1087
  call void @llvm.dbg.value(metadata i32* %8, metadata !1080, metadata !DIExpression()), !dbg !1084
  %9 = and i8 %1, 31, !dbg !1088
  %10 = zext i8 %9 to i32, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %10, metadata !1082, metadata !DIExpression()), !dbg !1084
  %11 = load i32, i32* %8, align 4, !dbg !1089, !tbaa !792
  %12 = lshr i32 %11, %10, !dbg !1090
  %13 = and i32 %12, 1, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %13, metadata !1083, metadata !DIExpression()), !dbg !1084
  %14 = and i32 %2, 1, !dbg !1092
  %15 = xor i32 %13, %14, !dbg !1093
  %16 = shl i32 %15, %10, !dbg !1094
  %17 = xor i32 %16, %11, !dbg !1095
  store i32 %17, i32* %8, align 4, !dbg !1095, !tbaa !792
  ret i32 %13, !dbg !1096
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1097 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1101, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 %1, metadata !1102, metadata !DIExpression()), !dbg !1104
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1105
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1107
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1101, metadata !DIExpression()), !dbg !1104
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1108
  %6 = load i32, i32* %5, align 4, !dbg !1108, !tbaa !1109
  call void @llvm.dbg.value(metadata i32 %6, metadata !1103, metadata !DIExpression()), !dbg !1104
  store i32 %1, i32* %5, align 4, !dbg !1110, !tbaa !1109
  ret i32 %6, !dbg !1111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1112 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1116, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %1, metadata !1117, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %2, metadata !1118, metadata !DIExpression()), !dbg !1119
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1120
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1116, metadata !DIExpression()), !dbg !1119
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1123
  store i32 10, i32* %6, align 8, !dbg !1124, !tbaa !1057
  %7 = icmp ne i8* %1, null, !dbg !1125
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1127
  br i1 %9, label %11, label %10, !dbg !1127

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1128
  unreachable, !dbg !1128

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1129
  store i8* %1, i8** %12, align 8, !dbg !1130, !tbaa !1131
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1132
  store i8* %2, i8** %13, align 8, !dbg !1133, !tbaa !1134
  ret void, !dbg !1135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1140, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %1, metadata !1141, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i8* %2, metadata !1142, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %3, metadata !1143, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1144, metadata !DIExpression()), !dbg !1148
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1149
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1145, metadata !DIExpression()), !dbg !1148
  %8 = tail call i32* @__errno_location() #29, !dbg !1150
  %9 = load i32, i32* %8, align 4, !dbg !1150, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %9, metadata !1146, metadata !DIExpression()), !dbg !1148
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1151
  %11 = load i32, i32* %10, align 8, !dbg !1151, !tbaa !1057
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1152
  %13 = load i32, i32* %12, align 4, !dbg !1152, !tbaa !1109
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1153
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1154
  %16 = load i8*, i8** %15, align 8, !dbg !1154, !tbaa !1131
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1155
  %18 = load i8*, i8** %17, align 8, !dbg !1155, !tbaa !1134
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %19, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %9, i32* %8, align 4, !dbg !1157, !tbaa !792
  ret i64 %19, !dbg !1158
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1159 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1165, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %1, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %2, metadata !1167, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %3, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 %4, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 %5, metadata !1170, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32* %6, metadata !1171, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %7, metadata !1172, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %8, metadata !1173, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* null, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1178, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1179, metadata !DIExpression()), !dbg !1233
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1234
  %14 = icmp eq i64 %13, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i1 %14, metadata !1180, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1233
  %15 = lshr i32 %5, 1, !dbg !1236
  %16 = trunc i32 %15 to i8, !dbg !1236
  %17 = and i8 %16, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i8 %17, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1184, metadata !DIExpression()), !dbg !1233
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1237

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1238
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1239
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1240
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1241
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1233
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1242
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1243
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1244
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %38, metadata !1184, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %37, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %36, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %35, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %34, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %33, metadata !1179, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %32, metadata !1178, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %31, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %30, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %29, metadata !1173, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %28, metadata !1172, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 %27, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1227), !dbg !1245
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
  ], !dbg !1246

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 5, metadata !1169, metadata !DIExpression()), !dbg !1233
  br label %92, !dbg !1247

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 5, metadata !1169, metadata !DIExpression()), !dbg !1233
  %42 = and i8 %35, 1, !dbg !1249
  %43 = icmp eq i8 %42, 0, !dbg !1249
  br i1 %43, label %44, label %92, !dbg !1247

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1251
  br i1 %45, label %92, label %46, !dbg !1254

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1251, !tbaa !800
  br label %92, !dbg !1251

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.64, i64 0, i64 0), i32 %27), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %48, metadata !1172, metadata !DIExpression()), !dbg !1233
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), i32 %27), !dbg !1259
  call void @llvm.dbg.value(metadata i8* %49, metadata !1173, metadata !DIExpression()), !dbg !1233
  br label %50, !dbg !1260

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1173, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %51, metadata !1172, metadata !DIExpression()), !dbg !1233
  %53 = and i8 %35, 1, !dbg !1261
  %54 = icmp eq i8 %53, 0, !dbg !1261
  br i1 %54, label %55, label %70, !dbg !1263

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1233
  %56 = load i8, i8* %51, align 1, !dbg !1264, !tbaa !800
  %57 = icmp eq i8 %56, 0, !dbg !1267
  br i1 %57, label %70, label %58, !dbg !1267

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %61, metadata !1175, metadata !DIExpression()), !dbg !1233
  %62 = icmp ult i64 %61, %39, !dbg !1268
  br i1 %62, label %63, label %65, !dbg !1271

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1268
  store i8 %59, i8* %64, align 1, !dbg !1268, !tbaa !800
  br label %65, !dbg !1268

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %66, metadata !1175, metadata !DIExpression()), !dbg !1233
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %67, metadata !1177, metadata !DIExpression()), !dbg !1233
  %68 = load i8, i8* %67, align 1, !dbg !1264, !tbaa !800
  %69 = icmp eq i8 %68, 0, !dbg !1267
  br i1 %69, label %70, label %58, !dbg !1267, !llvm.loop !1273

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1275
  call void @llvm.dbg.value(metadata i64 %71, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1179, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %52, metadata !1177, metadata !DIExpression()), !dbg !1233
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %72, metadata !1178, metadata !DIExpression()), !dbg !1233
  br label %92, !dbg !1277

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1179, metadata !DIExpression()), !dbg !1233
  br label %74, !dbg !1278

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %75, metadata !1179, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1233
  br label %76, !dbg !1279

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1241
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %78, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %77, metadata !1179, metadata !DIExpression()), !dbg !1233
  %79 = and i8 %78, 1, !dbg !1280
  %80 = icmp eq i8 %79, 0, !dbg !1280
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1282
  br label %82, !dbg !1282

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1233
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1236
  call void @llvm.dbg.value(metadata i8 %84, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %83, metadata !1179, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 2, metadata !1169, metadata !DIExpression()), !dbg !1233
  %85 = and i8 %84, 1, !dbg !1283
  %86 = icmp eq i8 %85, 0, !dbg !1283
  br i1 %86, label %87, label %92, !dbg !1285

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1286
  br i1 %88, label %92, label %89, !dbg !1289

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1286, !tbaa !800
  br label %92, !dbg !1286

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1181, metadata !DIExpression()), !dbg !1233
  br label %92, !dbg !1290

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1291
  unreachable, !dbg !1291

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1275
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %40 ], !dbg !1233
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1233
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1233
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %100, metadata !1181, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %99, metadata !1179, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %98, metadata !1178, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %97, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %96, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %94, metadata !1172, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32 %93, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()), !dbg !1233
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
  br label %121, !dbg !1292

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1293
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1275
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1238
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1242
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1243
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1244
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1184, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %127, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %126, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %125, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %124, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %123, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %122, metadata !1174, metadata !DIExpression()), !dbg !1233
  %130 = icmp eq i64 %125, -1, !dbg !1294
  br i1 %130, label %131, label %135, !dbg !1295

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1296
  %133 = load i8, i8* %132, align 1, !dbg !1296, !tbaa !800
  %134 = icmp eq i8 %133, 0, !dbg !1297
  br i1 %134, label %587, label %137, !dbg !1298

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1299
  br i1 %136, label %587, label %137, !dbg !1298

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 0, metadata !1192, metadata !DIExpression()), !dbg !1300
  br i1 %106, label %138, label %153, !dbg !1301

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1303
  %140 = and i1 %107, %130, !dbg !1304
  br i1 %140, label %141, label %143, !dbg !1304

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %142, metadata !1168, metadata !DIExpression()), !dbg !1233
  br label %143, !dbg !1306

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1306
  call void @llvm.dbg.value(metadata i64 %144, metadata !1168, metadata !DIExpression()), !dbg !1233
  %145 = icmp ugt i64 %139, %144, !dbg !1307
  br i1 %145, label %153, label %146, !dbg !1308

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1309
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1310
  %149 = icmp ne i32 %148, 0, !dbg !1311
  %150 = or i1 %149, %109, !dbg !1312
  %151 = xor i1 %149, true, !dbg !1312
  %152 = zext i1 %151 to i8, !dbg !1312
  br i1 %150, label %153, label %646, !dbg !1312

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1300
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1300
  call void @llvm.dbg.value(metadata i8 %156, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i64 %154, metadata !1168, metadata !DIExpression()), !dbg !1233
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1313
  %158 = load i8, i8* %157, align 1, !dbg !1313, !tbaa !800
  call void @llvm.dbg.value(metadata i8 %158, metadata !1185, metadata !DIExpression()), !dbg !1300
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
  ], !dbg !1314

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1315

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1316

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1300
  %162 = and i8 %126, 1, !dbg !1320
  %163 = icmp eq i8 %162, 0, !dbg !1320
  %164 = and i1 %110, %163, !dbg !1320
  br i1 %164, label %165, label %181, !dbg !1320

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1322
  br i1 %166, label %167, label %169, !dbg !1326

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1322
  store i8 39, i8* %168, align 1, !dbg !1322, !tbaa !800
  br label %169, !dbg !1322

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %170, metadata !1175, metadata !DIExpression()), !dbg !1233
  %171 = icmp ult i64 %170, %129, !dbg !1327
  br i1 %171, label %172, label %174, !dbg !1330

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1327
  store i8 36, i8* %173, align 1, !dbg !1327, !tbaa !800
  br label %174, !dbg !1327

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %175, metadata !1175, metadata !DIExpression()), !dbg !1233
  %176 = icmp ult i64 %175, %129, !dbg !1331
  br i1 %176, label %177, label %179, !dbg !1334

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1331
  store i8 39, i8* %178, align 1, !dbg !1331, !tbaa !800
  br label %179, !dbg !1331

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %180, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %181, !dbg !1335

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1233
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %183, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %182, metadata !1175, metadata !DIExpression()), !dbg !1233
  %184 = icmp ult i64 %182, %129, !dbg !1336
  br i1 %184, label %185, label %187, !dbg !1339

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1336
  store i8 92, i8* %186, align 1, !dbg !1336, !tbaa !800
  br label %187, !dbg !1336

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %188, metadata !1175, metadata !DIExpression()), !dbg !1233
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1340
  br i1 %191, label %192, label %473, !dbg !1340

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1342
  %194 = load i8, i8* %193, align 1, !dbg !1342, !tbaa !800
  %195 = add i8 %194, -48, !dbg !1343
  %196 = icmp ult i8 %195, 10, !dbg !1343
  br i1 %196, label %197, label %473, !dbg !1343

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1344
  br i1 %198, label %199, label %201, !dbg !1348

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1344
  store i8 48, i8* %200, align 1, !dbg !1344, !tbaa !800
  br label %201, !dbg !1344

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %202, metadata !1175, metadata !DIExpression()), !dbg !1233
  %203 = icmp ult i64 %202, %129, !dbg !1349
  br i1 %203, label %204, label %206, !dbg !1352

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1349
  store i8 48, i8* %205, align 1, !dbg !1349, !tbaa !800
  br label %206, !dbg !1349

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %207, metadata !1175, metadata !DIExpression()), !dbg !1233
  br label %473, !dbg !1353

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1354

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1355

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1356

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1358
  br i1 %214, label %215, label %473, !dbg !1358

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1360
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1361
  %218 = load i8, i8* %217, align 1, !dbg !1361, !tbaa !800
  %219 = icmp eq i8 %218, 63, !dbg !1362
  br i1 %219, label %220, label %473, !dbg !1363

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1364
  %222 = load i8, i8* %221, align 1, !dbg !1364, !tbaa !800
  %223 = sext i8 %222 to i32, !dbg !1364
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
  ], !dbg !1365

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1366

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i64 undef, metadata !1174, metadata !DIExpression()), !dbg !1233
  %226 = icmp ult i64 %123, %129, !dbg !1368
  br i1 %226, label %227, label %229, !dbg !1371

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1368
  store i8 63, i8* %228, align 1, !dbg !1368, !tbaa !800
  br label %229, !dbg !1368

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %230, metadata !1175, metadata !DIExpression()), !dbg !1233
  %231 = icmp ult i64 %230, %129, !dbg !1372
  br i1 %231, label %232, label %234, !dbg !1375

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1372
  store i8 34, i8* %233, align 1, !dbg !1372, !tbaa !800
  br label %234, !dbg !1372

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %235, metadata !1175, metadata !DIExpression()), !dbg !1233
  %236 = icmp ult i64 %235, %129, !dbg !1376
  br i1 %236, label %237, label %239, !dbg !1379

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1376
  store i8 34, i8* %238, align 1, !dbg !1376, !tbaa !800
  br label %239, !dbg !1376

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %240, metadata !1175, metadata !DIExpression()), !dbg !1233
  %241 = icmp ult i64 %240, %129, !dbg !1380
  br i1 %241, label %242, label %244, !dbg !1383

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1380
  store i8 63, i8* %243, align 1, !dbg !1380, !tbaa !800
  br label %244, !dbg !1380

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %245, metadata !1175, metadata !DIExpression()), !dbg !1233
  br label %473, !dbg !1384

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1189, metadata !DIExpression()), !dbg !1300
  br label %256, !dbg !1385

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1189, metadata !DIExpression()), !dbg !1300
  br label %256, !dbg !1386

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1189, metadata !DIExpression()), !dbg !1300
  br label %254, !dbg !1387

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1189, metadata !DIExpression()), !dbg !1300
  br label %254, !dbg !1388

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1189, metadata !DIExpression()), !dbg !1300
  br label %256, !dbg !1389

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1189, metadata !DIExpression()), !dbg !1300
  br i1 %110, label %252, label %253, !dbg !1390

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1391

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1394

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1396
  call void @llvm.dbg.value(metadata i8 %255, metadata !1189, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.label(metadata !1228), !dbg !1397
  br i1 %111, label %256, label %631, !dbg !1398

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1396
  call void @llvm.dbg.value(metadata i8 %257, metadata !1189, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.label(metadata !1229), !dbg !1400
  br i1 %102, label %495, label %473, !dbg !1401

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1402

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1403, !tbaa !800
  %261 = icmp eq i8 %260, 0, !dbg !1405
  br i1 %261, label %262, label %473, !dbg !1406

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1407
  br i1 %263, label %264, label %473, !dbg !1409

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1300
  br label %265, !dbg !1410

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1300
  call void @llvm.dbg.value(metadata i8 %266, metadata !1192, metadata !DIExpression()), !dbg !1300
  br i1 %111, label %473, label %631, !dbg !1411

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1300
  br i1 %110, label %268, label %473, !dbg !1413

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1414

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1417
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1419
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1419
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %274, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %273, metadata !1176, metadata !DIExpression()), !dbg !1233
  %275 = icmp ult i64 %123, %274, !dbg !1420
  br i1 %275, label %276, label %278, !dbg !1423

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1420
  store i8 39, i8* %277, align 1, !dbg !1420, !tbaa !800
  br label %278, !dbg !1420

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %279, metadata !1175, metadata !DIExpression()), !dbg !1233
  %280 = icmp ult i64 %279, %274, !dbg !1424
  br i1 %280, label %281, label %283, !dbg !1427

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1424
  store i8 92, i8* %282, align 1, !dbg !1424, !tbaa !800
  br label %283, !dbg !1424

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %284, metadata !1175, metadata !DIExpression()), !dbg !1233
  %285 = icmp ult i64 %284, %274, !dbg !1428
  br i1 %285, label %286, label %288, !dbg !1431

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1428
  store i8 39, i8* %287, align 1, !dbg !1428, !tbaa !800
  br label %288, !dbg !1428

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %289, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %473, !dbg !1432

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1433

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1193, metadata !DIExpression()), !dbg !1434
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1435
  %293 = load i16*, i16** %292, align 8, !dbg !1435, !tbaa !648
  %294 = zext i8 %158 to i64, !dbg !1435
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1435
  %296 = load i16, i16* %295, align 2, !dbg !1435, !tbaa !1437
  %297 = lshr i16 %296, 14, !dbg !1438
  %298 = trunc i16 %297 to i8, !dbg !1438
  %299 = and i8 %298, 1, !dbg !1438
  call void @llvm.dbg.value(metadata i8 %354, metadata !1196, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %355, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %306, metadata !1168, metadata !DIExpression()), !dbg !1233
  %300 = icmp eq i8 %299, 0, !dbg !1439
  call void @llvm.dbg.value(metadata i1 %357, metadata !1192, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1300
  br label %359, !dbg !1440

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1441
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1197, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %23, metadata !1443, metadata !DIExpression()) #25, !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression()) #25, !dbg !1451
  call void @llvm.dbg.value(metadata i64 8, metadata !1450, metadata !DIExpression()) #25, !dbg !1451
  store i64 0, i64* %10, align 8, !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8 1, metadata !1196, metadata !DIExpression()), !dbg !1434
  %302 = icmp eq i64 %154, -1, !dbg !1454
  br i1 %302, label %303, label %305, !dbg !1456

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %304, metadata !1168, metadata !DIExpression()), !dbg !1233
  br label %305, !dbg !1458

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1300
  call void @llvm.dbg.value(metadata i64 %306, metadata !1168, metadata !DIExpression()), !dbg !1233
  br label %307, !dbg !1459

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1460
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %309, metadata !1196, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %308, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1462
  %310 = add i64 %308, %122, !dbg !1463
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1464
  %312 = sub i64 %306, %310, !dbg !1465
  call void @llvm.dbg.value(metadata i32* %12, metadata !1213, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %313, metadata !1216, metadata !DIExpression()), !dbg !1466
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1468

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1193, metadata !DIExpression()), !dbg !1434
  %315 = icmp ugt i64 %306, %310, !dbg !1469
  br i1 %315, label %316, label %341, !dbg !1471

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1472
  br label %318, !dbg !1472

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1193, metadata !DIExpression()), !dbg !1434
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1473
  %322 = load i8, i8* %321, align 1, !dbg !1473, !tbaa !800
  %323 = icmp eq i8 %322, 0, !dbg !1471
  br i1 %323, label %341, label %324, !dbg !1472

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %325, metadata !1193, metadata !DIExpression()), !dbg !1434
  %326 = add i64 %325, %122, !dbg !1475
  %327 = icmp ult i64 %326, %306, !dbg !1469
  br i1 %327, label %318, label %341, !dbg !1471, !llvm.loop !1476

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1477
  call void @llvm.dbg.value(metadata i64 1, metadata !1217, metadata !DIExpression()), !dbg !1478
  br i1 %330, label %331, label %344, !dbg !1477

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1217, metadata !DIExpression()), !dbg !1478
  %333 = add i64 %332, %310, !dbg !1479
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1482
  %335 = load i8, i8* %334, align 1, !dbg !1482, !tbaa !800
  %336 = sext i8 %335 to i32, !dbg !1482
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1483

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %338, metadata !1217, metadata !DIExpression()), !dbg !1478
  %339 = icmp eq i64 %338, %313, !dbg !1485
  br i1 %339, label %344, label %331, !dbg !1486, !llvm.loop !1487

340:                                              ; preds = %307
  br label %341, !dbg !1489

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1196, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 undef, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1489
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1490, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %345, metadata !1213, metadata !DIExpression()), !dbg !1466
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1492
  %347 = icmp eq i32 %346, 0, !dbg !1492
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1493
  call void @llvm.dbg.value(metadata i8 %348, metadata !1196, metadata !DIExpression()), !dbg !1434
  %349 = add i64 %313, %308, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %349, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1489
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1495
  %351 = icmp eq i32 %350, 0, !dbg !1496
  br i1 %351, label %307, label %353, !dbg !1497, !llvm.loop !1498

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1196, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 undef, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1500
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %354, metadata !1196, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %355, metadata !1193, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %306, metadata !1168, metadata !DIExpression()), !dbg !1233
  %356 = and i8 %354, 1, !dbg !1439
  %357 = icmp eq i8 %356, 0, !dbg !1439
  call void @llvm.dbg.value(metadata i1 %357, metadata !1192, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1300
  %358 = icmp ugt i64 %355, 1, !dbg !1501
  br i1 %358, label %367, label %359, !dbg !1440

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1502
  br i1 %364, label %367, label %365, !dbg !1502

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i8 %472, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %441, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %440, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %439, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %438, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %371, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %437, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %375, metadata !1174, metadata !DIExpression()), !dbg !1233
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %372, metadata !1224, metadata !DIExpression()), !dbg !1504
  %373 = and i1 %102, %368
  br label %374, !dbg !1505

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1293
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1233
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1242
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1300
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1300
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1506
  call void @llvm.dbg.value(metadata i8 %380, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %379, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %378, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %377, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %376, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %375, metadata !1174, metadata !DIExpression()), !dbg !1233
  br i1 %373, label %381, label %427, !dbg !1507

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1512

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1300
  %383 = and i8 %377, 1, !dbg !1515
  %384 = icmp eq i8 %383, 0, !dbg !1515
  %385 = and i1 %110, %384, !dbg !1515
  br i1 %385, label %386, label %402, !dbg !1515

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1517
  br i1 %387, label %388, label %390, !dbg !1521

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1517
  store i8 39, i8* %389, align 1, !dbg !1517, !tbaa !800
  br label %390, !dbg !1517

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %391, metadata !1175, metadata !DIExpression()), !dbg !1233
  %392 = icmp ult i64 %391, %129, !dbg !1522
  br i1 %392, label %393, label %395, !dbg !1525

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1522
  store i8 36, i8* %394, align 1, !dbg !1522, !tbaa !800
  br label %395, !dbg !1522

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %396, metadata !1175, metadata !DIExpression()), !dbg !1233
  %397 = icmp ult i64 %396, %129, !dbg !1526
  br i1 %397, label %398, label %400, !dbg !1529

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1526
  store i8 39, i8* %399, align 1, !dbg !1526, !tbaa !800
  br label %400, !dbg !1526

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %401, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %402, !dbg !1530

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1233
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %404, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %403, metadata !1175, metadata !DIExpression()), !dbg !1233
  %405 = icmp ult i64 %403, %129, !dbg !1531
  br i1 %405, label %406, label %408, !dbg !1534

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1531
  store i8 92, i8* %407, align 1, !dbg !1531, !tbaa !800
  br label %408, !dbg !1531

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %409, metadata !1175, metadata !DIExpression()), !dbg !1233
  %410 = icmp ult i64 %409, %129, !dbg !1535
  br i1 %410, label %411, label %415, !dbg !1538

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1535
  %413 = or i8 %412, 48, !dbg !1535
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1535
  store i8 %413, i8* %414, align 1, !dbg !1535, !tbaa !800
  br label %415, !dbg !1535

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %416, metadata !1175, metadata !DIExpression()), !dbg !1233
  %417 = icmp ult i64 %416, %129, !dbg !1539
  br i1 %417, label %418, label %423, !dbg !1542

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1539
  %420 = and i8 %419, 7, !dbg !1539
  %421 = or i8 %420, 48, !dbg !1539
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1539
  store i8 %421, i8* %422, align 1, !dbg !1539, !tbaa !800
  br label %423, !dbg !1539

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %424, metadata !1175, metadata !DIExpression()), !dbg !1233
  %425 = and i8 %378, 7, !dbg !1543
  %426 = or i8 %425, 48, !dbg !1544
  call void @llvm.dbg.value(metadata i8 %426, metadata !1185, metadata !DIExpression()), !dbg !1300
  br label %436, !dbg !1545

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1546
  %429 = icmp eq i8 %428, 0, !dbg !1546
  br i1 %429, label %436, label %430, !dbg !1548

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1549
  br i1 %431, label %432, label %434, !dbg !1553

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1549
  store i8 92, i8* %433, align 1, !dbg !1549, !tbaa !800
  br label %434, !dbg !1549

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %435, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1300
  br label %436, !dbg !1554

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1233
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1242
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1300
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1300
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1300
  call void @llvm.dbg.value(metadata i8 %441, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %440, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %439, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %438, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %437, metadata !1175, metadata !DIExpression()), !dbg !1233
  %442 = add i64 %375, 1, !dbg !1555
  %443 = icmp ugt i64 %372, %442, !dbg !1557
  br i1 %443, label %444, label %471, !dbg !1558

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1559
  %446 = icmp ne i8 %445, 0, !dbg !1559
  %447 = and i8 %441, 1, !dbg !1559
  %448 = icmp eq i8 %447, 0, !dbg !1559
  %449 = and i1 %446, %448, !dbg !1559
  br i1 %449, label %450, label %461, !dbg !1559

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1562
  br i1 %451, label %452, label %454, !dbg !1566

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1562
  store i8 39, i8* %453, align 1, !dbg !1562, !tbaa !800
  br label %454, !dbg !1562

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %455, metadata !1175, metadata !DIExpression()), !dbg !1233
  %456 = icmp ult i64 %455, %129, !dbg !1567
  br i1 %456, label %457, label %459, !dbg !1570

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1567
  store i8 39, i8* %458, align 1, !dbg !1567, !tbaa !800
  br label %459, !dbg !1567

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %460, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %461, !dbg !1571

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1572
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %463, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %462, metadata !1175, metadata !DIExpression()), !dbg !1233
  %464 = icmp ult i64 %462, %129, !dbg !1573
  br i1 %464, label %465, label %467, !dbg !1576

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1573
  store i8 %439, i8* %466, align 1, !dbg !1573, !tbaa !800
  br label %467, !dbg !1573

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %468, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %442, metadata !1174, metadata !DIExpression()), !dbg !1233
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1577
  %470 = load i8, i8* %469, align 1, !dbg !1577, !tbaa !800
  call void @llvm.dbg.value(metadata i8 %470, metadata !1185, metadata !DIExpression()), !dbg !1300
  br label %374, !dbg !1578, !llvm.loop !1579

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i8 %472, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %441, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %440, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %439, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %438, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %371, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %437, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %375, metadata !1174, metadata !DIExpression()), !dbg !1233
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1293
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1233
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1238
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1582
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1233
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1233
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1300
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1300
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1300
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %482, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %481, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %156, metadata !1190, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %480, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %479, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %478, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %477, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %476, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %475, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %474, metadata !1174, metadata !DIExpression()), !dbg !1233
  br i1 %116, label %494, label %484, !dbg !1583

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1585
  %486 = zext i8 %485 to i64, !dbg !1585
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1586
  %488 = load i32, i32* %487, align 4, !dbg !1586, !tbaa !792
  %489 = and i8 %480, 31, !dbg !1587
  %490 = zext i8 %489 to i32, !dbg !1587
  %491 = shl nuw i32 1, %490, !dbg !1588
  %492 = and i32 %488, %491, !dbg !1588
  %493 = icmp eq i32 %492, 0, !dbg !1588
  br i1 %493, label %494, label %495, !dbg !1589

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1590

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1591
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1233
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1238
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1582
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1242
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1243
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1300
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1300
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %503, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %502, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %501, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %500, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %499, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %498, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %497, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %496, metadata !1174, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1230), !dbg !1592
  br i1 %109, label %505, label %635, !dbg !1593

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1191, metadata !DIExpression()), !dbg !1300
  %506 = and i8 %500, 1, !dbg !1595
  %507 = icmp eq i8 %506, 0, !dbg !1595
  %508 = and i1 %110, %507, !dbg !1595
  br i1 %508, label %509, label %525, !dbg !1595

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1597
  br i1 %510, label %511, label %513, !dbg !1601

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1597
  store i8 39, i8* %512, align 1, !dbg !1597, !tbaa !800
  br label %513, !dbg !1597

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %514, metadata !1175, metadata !DIExpression()), !dbg !1233
  %515 = icmp ult i64 %514, %504, !dbg !1602
  br i1 %515, label %516, label %518, !dbg !1605

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1602
  store i8 36, i8* %517, align 1, !dbg !1602, !tbaa !800
  br label %518, !dbg !1602

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %519, metadata !1175, metadata !DIExpression()), !dbg !1233
  %520 = icmp ult i64 %519, %504, !dbg !1606
  br i1 %520, label %521, label %523, !dbg !1609

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1606
  store i8 39, i8* %522, align 1, !dbg !1606, !tbaa !800
  br label %523, !dbg !1606

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %524, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %525, !dbg !1610

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1300
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %527, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %526, metadata !1175, metadata !DIExpression()), !dbg !1233
  %528 = icmp ult i64 %526, %504, !dbg !1611
  br i1 %528, label %529, label %531, !dbg !1614

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1611
  store i8 92, i8* %530, align 1, !dbg !1611, !tbaa !800
  br label %531, !dbg !1611

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %543, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %542, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %541, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %540, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %539, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %538, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %537, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %536, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %535, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %534, metadata !1174, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1231), !dbg !1615
  br label %560, !dbg !1616

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1591
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1233
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1238
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1582
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1242
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1243
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1619
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1300
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1300
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %542, metadata !1192, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %541, metadata !1191, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %540, metadata !1185, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %539, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %538, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %537, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %536, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %535, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %534, metadata !1174, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1231), !dbg !1615
  %544 = and i8 %538, 1, !dbg !1616
  %545 = icmp ne i8 %544, 0, !dbg !1616
  %546 = and i8 %541, 1, !dbg !1616
  %547 = icmp eq i8 %546, 0, !dbg !1616
  %548 = and i1 %545, %547, !dbg !1616
  br i1 %548, label %549, label %560, !dbg !1616

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1620
  br i1 %550, label %551, label %553, !dbg !1624

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1620
  store i8 39, i8* %552, align 1, !dbg !1620, !tbaa !800
  br label %553, !dbg !1620

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %554, metadata !1175, metadata !DIExpression()), !dbg !1233
  %555 = icmp ult i64 %554, %543, !dbg !1625
  br i1 %555, label %556, label %558, !dbg !1628

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1625
  store i8 39, i8* %557, align 1, !dbg !1625, !tbaa !800
  br label %558, !dbg !1625

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %559, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1233
  br label %560, !dbg !1629

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1300
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %569, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %568, metadata !1175, metadata !DIExpression()), !dbg !1233
  %570 = icmp ult i64 %568, %561, !dbg !1630
  br i1 %570, label %571, label %573, !dbg !1633

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1630
  store i8 %563, i8* %572, align 1, !dbg !1630, !tbaa !800
  br label %573, !dbg !1630

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %574, metadata !1175, metadata !DIExpression()), !dbg !1233
  %575 = icmp eq i8 %562, 0, !dbg !1634
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1636
  call void @llvm.dbg.value(metadata i8 %576, metadata !1184, metadata !DIExpression()), !dbg !1233
  br label %577, !dbg !1637

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1591
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1233
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1238
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1582
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1242
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1233
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1244
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %584, metadata !1184, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %583, metadata !1183, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %582, metadata !1182, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %581, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %580, metadata !1176, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %579, metadata !1175, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %578, metadata !1174, metadata !DIExpression()), !dbg !1233
  %586 = add i64 %578, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %586, metadata !1174, metadata !DIExpression()), !dbg !1233
  br label %121, !dbg !1639, !llvm.loop !1640

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1642
  %590 = and i1 %110, %589, !dbg !1644
  %591 = xor i1 %590, true, !dbg !1644
  %592 = or i1 %109, %591, !dbg !1644
  br i1 %592, label %593, label %635, !dbg !1644

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1645
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1645
  br i1 %597, label %598, label %607, !dbg !1645

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1647
  %600 = icmp eq i8 %599, 0, !dbg !1647
  br i1 %600, label %603, label %601, !dbg !1650

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1651
  br label %652, !dbg !1652

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1653
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1655
  br i1 %606, label %26, label %607, !dbg !1655

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1656
  %610 = and i1 %609, %608, !dbg !1658
  br i1 %610, label %611, label %626, !dbg !1658

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %123, metadata !1175, metadata !DIExpression()), !dbg !1233
  %612 = load i8, i8* %97, align 1, !dbg !1659, !tbaa !800
  %613 = icmp eq i8 %612, 0, !dbg !1662
  br i1 %613, label %626, label %614, !dbg !1662

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1177, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %617, metadata !1175, metadata !DIExpression()), !dbg !1233
  %618 = icmp ult i64 %617, %129, !dbg !1663
  br i1 %618, label %619, label %621, !dbg !1666

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1663
  store i8 %615, i8* %620, align 1, !dbg !1663, !tbaa !800
  br label %621, !dbg !1663

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %622, metadata !1175, metadata !DIExpression()), !dbg !1233
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %623, metadata !1177, metadata !DIExpression()), !dbg !1233
  %624 = load i8, i8* %623, align 1, !dbg !1659, !tbaa !800
  %625 = icmp eq i8 %624, 0, !dbg !1662
  br i1 %625, label %626, label %614, !dbg !1662, !llvm.loop !1668

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1275
  call void @llvm.dbg.value(metadata i64 %627, metadata !1175, metadata !DIExpression()), !dbg !1233
  %628 = icmp ult i64 %627, %129, !dbg !1670
  br i1 %628, label %629, label %652, !dbg !1672

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1673
  store i8 0, i8* %630, align 1, !dbg !1674, !tbaa !800
  br label %652, !dbg !1673

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %637, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1232), !dbg !1675
  %633 = icmp eq i8 %101, 0, !dbg !1676
  %634 = select i1 %633, i32 2, i32 4, !dbg !1676
  br label %642, !dbg !1676

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1166, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %637, metadata !1168, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.label(metadata !1232), !dbg !1675
  %639 = icmp eq i32 %93, 2, !dbg !1678
  %640 = icmp eq i8 %636, 0, !dbg !1676
  %641 = select i1 %640, i32 2, i32 4, !dbg !1676
  br i1 %639, label %642, label %646, !dbg !1676

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1676

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1169, metadata !DIExpression()), !dbg !1233
  %650 = and i32 %5, -3, !dbg !1679
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1680
  br label %652, !dbg !1681

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1682
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1691
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1692
  call void @llvm.dbg.value(metadata i8* %3, metadata !1689, metadata !DIExpression()), !dbg !1691
  %4 = icmp eq i8* %3, %0, !dbg !1693
  br i1 %4, label %5, label %72, !dbg !1695

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %6, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %6, metadata !1697, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* undef, metadata !1703, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 85, metadata !1704, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 84, metadata !1705, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 70, metadata !1706, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 45, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 56, metadata !1708, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1711, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1713
  %7 = load i8, i8* %6, align 1, !dbg !1716, !tbaa !800
  %8 = and i8 %7, -33, !dbg !1716
  %9 = sext i8 %8 to i32, !dbg !1716
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1716

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* undef, metadata !1723, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 84, metadata !1724, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 70, metadata !1725, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 45, metadata !1726, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 56, metadata !1727, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1736
  %12 = load i8, i8* %11, align 1, !dbg !1736, !tbaa !800
  %13 = and i8 %12, -33, !dbg !1736
  %14 = icmp eq i8 %13, 84, !dbg !1736
  br i1 %14, label %15, label %69, !dbg !1736

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1738, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8* undef, metadata !1743, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 70, metadata !1744, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 45, metadata !1745, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 56, metadata !1746, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1751
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1755
  %17 = load i8, i8* %16, align 1, !dbg !1755, !tbaa !800
  %18 = and i8 %17, -33, !dbg !1755
  %19 = icmp eq i8 %18, 70, !dbg !1755
  br i1 %19, label %20, label %69, !dbg !1755

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1757, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* undef, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 45, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 56, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1769
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1773
  %22 = load i8, i8* %21, align 1, !dbg !1773, !tbaa !800
  %23 = icmp eq i8 %22, 45, !dbg !1773
  br i1 %23, label %24, label %69, !dbg !1775

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1776, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* undef, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 56, metadata !1782, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1787
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1791
  %26 = load i8, i8* %25, align 1, !dbg !1791, !tbaa !800
  %27 = icmp eq i8 %26, 56, !dbg !1791
  br i1 %27, label %28, label %69, !dbg !1793

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* undef, metadata !1799, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1804
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1808
  %30 = load i8, i8* %29, align 1, !dbg !1808, !tbaa !800
  %31 = icmp eq i8 %30, 0, !dbg !1808
  br i1 %31, label %32, label %69, !dbg !1810

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1811, !tbaa !800
  %34 = icmp eq i8 %33, 96, !dbg !1812
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.68, i64 0, i64 0), !dbg !1811
  br label %72, !dbg !1813

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* undef, metadata !1723, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 66, metadata !1724, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 49, metadata !1725, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 56, metadata !1726, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 48, metadata !1727, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 51, metadata !1728, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 48, metadata !1729, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1814
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1818
  %38 = load i8, i8* %37, align 1, !dbg !1818, !tbaa !800
  %39 = and i8 %38, -33, !dbg !1818
  %40 = icmp eq i8 %39, 66, !dbg !1818
  br i1 %40, label %41, label %69, !dbg !1818

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1738, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* undef, metadata !1743, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 49, metadata !1744, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 56, metadata !1745, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 48, metadata !1746, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 51, metadata !1747, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 48, metadata !1748, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1819
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1821
  %43 = load i8, i8* %42, align 1, !dbg !1821, !tbaa !800
  %44 = icmp eq i8 %43, 49, !dbg !1821
  br i1 %44, label %45, label %69, !dbg !1822

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1757, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* undef, metadata !1762, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 56, metadata !1763, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 48, metadata !1764, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 51, metadata !1765, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 48, metadata !1766, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1823
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1825
  %47 = load i8, i8* %46, align 1, !dbg !1825, !tbaa !800
  %48 = icmp eq i8 %47, 56, !dbg !1825
  br i1 %48, label %49, label %69, !dbg !1826

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1776, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* undef, metadata !1781, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 51, metadata !1783, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 48, metadata !1784, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1827
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1829
  %51 = load i8, i8* %50, align 1, !dbg !1829, !tbaa !800
  %52 = icmp eq i8 %51, 48, !dbg !1829
  br i1 %52, label %53, label %69, !dbg !1830

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8* undef, metadata !1799, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 51, metadata !1800, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 48, metadata !1801, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1831
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1833
  %55 = load i8, i8* %54, align 1, !dbg !1833, !tbaa !800
  %56 = icmp eq i8 %55, 51, !dbg !1833
  br i1 %56, label %57, label %69, !dbg !1834

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* undef, metadata !1840, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 48, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1848
  %59 = load i8, i8* %58, align 1, !dbg !1848, !tbaa !800
  %60 = icmp eq i8 %59, 48, !dbg !1848
  br i1 %60, label %61, label %69, !dbg !1850

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1851, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* undef, metadata !1856, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1857, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1859
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1863
  %63 = load i8, i8* %62, align 1, !dbg !1863, !tbaa !800
  %64 = icmp eq i8 %63, 0, !dbg !1863
  br i1 %64, label %65, label %69, !dbg !1865

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1866, !tbaa !800
  %67 = icmp eq i8 %66, 96, !dbg !1867
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.70, i64 0, i64 0), !dbg !1866
  br label %72, !dbg !1868

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1869
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), !dbg !1870
  br label %72, !dbg !1871

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1691
  ret i8* %73, !dbg !1872
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1873 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1877 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %1, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1889, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #25, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()) #25, !dbg !1904
  call void @llvm.dbg.value(metadata i64* null, metadata !1897, metadata !DIExpression()) #25, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1898, metadata !DIExpression()) #25, !dbg !1904
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1906
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1899, metadata !DIExpression()) #25, !dbg !1904
  %6 = tail call i32* @__errno_location() #29, !dbg !1907
  %7 = load i32, i32* %6, align 4, !dbg !1907, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %7, metadata !1900, metadata !DIExpression()) #25, !dbg !1904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1908
  %9 = load i32, i32* %8, align 4, !dbg !1908, !tbaa !1109
  %10 = or i32 %9, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %10, metadata !1901, metadata !DIExpression()) #25, !dbg !1904
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1910
  %12 = load i32, i32* %11, align 8, !dbg !1910, !tbaa !1057
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1911
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1912
  %15 = load i8*, i8** %14, align 8, !dbg !1912, !tbaa !1131
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1913
  %17 = load i8*, i8** %16, align 8, !dbg !1913, !tbaa !1134
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !1914
  %19 = add i64 %18, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %19, metadata !1902, metadata !DIExpression()) #25, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %19, metadata !1916, metadata !DIExpression()) #25, !dbg !1921
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %20, metadata !1903, metadata !DIExpression()) #25, !dbg !1904
  %21 = load i32, i32* %11, align 8, !dbg !1924, !tbaa !1057
  %22 = load i8*, i8** %14, align 8, !dbg !1925, !tbaa !1131
  %23 = load i8*, i8** %16, align 8, !dbg !1926, !tbaa !1134
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !1927
  store i32 %7, i32* %6, align 4, !dbg !1928, !tbaa !792
  ret i8* %20, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64* %2, metadata !1897, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1898, metadata !DIExpression()), !dbg !1930
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1931
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1899, metadata !DIExpression()), !dbg !1930
  %7 = tail call i32* @__errno_location() #29, !dbg !1932
  %8 = load i32, i32* %7, align 4, !dbg !1932, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %8, metadata !1900, metadata !DIExpression()), !dbg !1930
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1933
  %10 = load i32, i32* %9, align 4, !dbg !1933, !tbaa !1109
  %11 = icmp eq i64* %2, null, !dbg !1934
  %12 = zext i1 %11 to i32, !dbg !1934
  %13 = or i32 %10, %12, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %13, metadata !1901, metadata !DIExpression()), !dbg !1930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1936
  %15 = load i32, i32* %14, align 8, !dbg !1936, !tbaa !1057
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1937
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1938
  %18 = load i8*, i8** %17, align 8, !dbg !1938, !tbaa !1131
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1939
  %20 = load i8*, i8** %19, align 8, !dbg !1939, !tbaa !1134
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1940
  %22 = add i64 %21, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %22, metadata !1902, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %22, metadata !1916, metadata !DIExpression()) #25, !dbg !1942
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !1944
  call void @llvm.dbg.value(metadata i8* %23, metadata !1903, metadata !DIExpression()), !dbg !1930
  %24 = load i32, i32* %14, align 8, !dbg !1945, !tbaa !1057
  %25 = load i8*, i8** %17, align 8, !dbg !1946, !tbaa !1131
  %26 = load i8*, i8** %19, align 8, !dbg !1947, !tbaa !1134
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1948
  store i32 %8, i32* %7, align 4, !dbg !1949, !tbaa !792
  br i1 %11, label %29, label %28, !dbg !1950

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1951, !tbaa !839
  br label %29, !dbg !1953

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1955 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1959, !tbaa !648
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 1, metadata !1958, metadata !DIExpression()), !dbg !1960
  %2 = load i32, i32* @nslots, align 4, !dbg !1961, !tbaa !792
  %3 = icmp sgt i32 %2, 1, !dbg !1964
  br i1 %3, label %4, label %12, !dbg !1965

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1964
  br label %6, !dbg !1965

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1958, metadata !DIExpression()), !dbg !1960
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1966
  %9 = load i8*, i8** %8, align 8, !dbg !1966, !tbaa !1967
  tail call void @free(i8* %9) #25, !dbg !1969
  %10 = add nuw nsw i64 %7, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %10, metadata !1958, metadata !DIExpression()), !dbg !1960
  %11 = icmp eq i64 %10, %5, !dbg !1964
  br i1 %11, label %12, label %6, !dbg !1965, !llvm.loop !1971

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1973
  %14 = load i8*, i8** %13, align 8, !dbg !1973, !tbaa !1967
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1975
  br i1 %15, label %17, label %16, !dbg !1976

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !1977
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1979, !tbaa !1980
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1981, !tbaa !1967
  br label %17, !dbg !1982

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1983
  br i1 %18, label %21, label %19, !dbg !1985

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1986
  tail call void @free(i8* %20) #25, !dbg !1988
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1989, !tbaa !648
  br label %21, !dbg !1990

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1991, !tbaa !792
  ret void, !dbg !1992
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %1, metadata !1996, metadata !DIExpression()), !dbg !1997
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1998
  ret i8* %3, !dbg !1999
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2005, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %2, metadata !2006, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2007, metadata !DIExpression()), !dbg !2019
  %5 = tail call i32* @__errno_location() #29, !dbg !2020
  %6 = load i32, i32* %5, align 4, !dbg !2020, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %6, metadata !2008, metadata !DIExpression()), !dbg !2019
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2021, !tbaa !648
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2009, metadata !DIExpression()), !dbg !2019
  %8 = icmp slt i32 %0, 0, !dbg !2022
  br i1 %8, label %9, label %10, !dbg !2024

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2025
  unreachable, !dbg !2025

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2026, !tbaa !792
  %12 = icmp sgt i32 %11, %0, !dbg !2027
  br i1 %12, label %34, label %13, !dbg !2028

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2029
  call void @llvm.dbg.value(metadata i1 %14, metadata !2010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2030
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2013, metadata !DIExpression()), !dbg !2030
  %15 = icmp eq i32 %0, 2147483647, !dbg !2031
  br i1 %15, label %16, label %17, !dbg !2033

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2034
  unreachable, !dbg !2034

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2035
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2035
  %20 = add nuw nsw i32 %0, 1, !dbg !2036
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2037
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2038
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2038
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2009, metadata !DIExpression()), !dbg !2019
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2039, !tbaa !648
  br i1 %14, label %25, label %26, !dbg !2040

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2041, !tbaa.struct !2043
  br label %26, !dbg !2044

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2045, !tbaa !792
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2046
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2047
  %31 = sub nsw i32 %20, %27, !dbg !2048
  %32 = sext i32 %31 to i64, !dbg !2049
  %33 = shl nsw i64 %32, 4, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %30, metadata !1443, metadata !DIExpression()) #25, !dbg !2051
  call void @llvm.dbg.value(metadata i32 0, metadata !1449, metadata !DIExpression()) #25, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %33, metadata !1450, metadata !DIExpression()) #25, !dbg !2051
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2053
  store i32 %20, i32* @nslots, align 4, !dbg !2054, !tbaa !792
  br label %34, !dbg !2055

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2019
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2009, metadata !DIExpression()), !dbg !2019
  %36 = zext i32 %0 to i64, !dbg !2056
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2057
  %38 = load i64, i64* %37, align 8, !dbg !2057, !tbaa !1980
  call void @llvm.dbg.value(metadata i64 %38, metadata !2014, metadata !DIExpression()), !dbg !2058
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2059
  %40 = load i8*, i8** %39, align 8, !dbg !2059, !tbaa !1967
  call void @llvm.dbg.value(metadata i8* %40, metadata !2016, metadata !DIExpression()), !dbg !2058
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2060
  %42 = load i32, i32* %41, align 4, !dbg !2060, !tbaa !1109
  %43 = or i32 %42, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %43, metadata !2017, metadata !DIExpression()), !dbg !2058
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2062
  %45 = load i32, i32* %44, align 8, !dbg !2062, !tbaa !1057
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2063
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2064
  %48 = load i8*, i8** %47, align 8, !dbg !2064, !tbaa !1131
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2065
  %50 = load i8*, i8** %49, align 8, !dbg !2065, !tbaa !1134
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2066
  call void @llvm.dbg.value(metadata i64 %51, metadata !2018, metadata !DIExpression()), !dbg !2058
  %52 = icmp ugt i64 %38, %51, !dbg !2067
  br i1 %52, label %63, label %53, !dbg !2069

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %54, metadata !2014, metadata !DIExpression()), !dbg !2058
  store i64 %54, i64* %37, align 8, !dbg !2072, !tbaa !1980
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2073
  br i1 %55, label %57, label %56, !dbg !2075

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2076
  br label %57, !dbg !2076

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1916, metadata !DIExpression()) #25, !dbg !2077
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %58, metadata !2016, metadata !DIExpression()), !dbg !2058
  store i8* %58, i8** %39, align 8, !dbg !2080, !tbaa !1967
  %59 = load i32, i32* %44, align 8, !dbg !2081, !tbaa !1057
  %60 = load i8*, i8** %47, align 8, !dbg !2082, !tbaa !1131
  %61 = load i8*, i8** %49, align 8, !dbg !2083, !tbaa !1134
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2084
  br label %63, !dbg !2085

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2058
  call void @llvm.dbg.value(metadata i8* %64, metadata !2016, metadata !DIExpression()), !dbg !2058
  store i32 %6, i32* %5, align 4, !dbg !2086, !tbaa !792
  ret i8* %64, !dbg !2087
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %2, metadata !2094, metadata !DIExpression()), !dbg !2095
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2096
  ret i8* %4, !dbg !2097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2098 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 0, metadata !1995, metadata !DIExpression()) #25, !dbg !2102
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()) #25, !dbg !2102
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2104
  ret i8* %2, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 0, metadata !2092, metadata !DIExpression()) #25, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !2093, metadata !DIExpression()) #25, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2094, metadata !DIExpression()) #25, !dbg !2113
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2115
  ret i8* %3, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2117 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2121, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %2, metadata !2123, metadata !DIExpression()), !dbg !2125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2124, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %1, metadata !2132, metadata !DIExpression()) #25, !dbg !2138
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2137, metadata !DIExpression()) #25, !dbg !2140
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2140, !alias.scope !2128
  %6 = icmp eq i32 %1, 10, !dbg !2141
  br i1 %6, label %7, label %8, !dbg !2143

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2144, !noalias !2128
  unreachable, !dbg !2144

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2145
  store i32 %1, i32* %9, align 8, !dbg !2146, !tbaa !1057, !alias.scope !2128
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2148
  ret i8* %10, !dbg !2149
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2150 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1, metadata !2155, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %2, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %3, metadata !2157, metadata !DIExpression()), !dbg !2159
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2160
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2158, metadata !DIExpression()), !dbg !2161
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %1, metadata !2132, metadata !DIExpression()) #25, !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2137, metadata !DIExpression()) #25, !dbg !2168
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2168, !alias.scope !2162
  %7 = icmp eq i32 %1, 10, !dbg !2169
  br i1 %7, label %8, label %9, !dbg !2170

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2171, !noalias !2162
  unreachable, !dbg !2171

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2172
  store i32 %1, i32* %10, align 8, !dbg !2173, !tbaa !1057, !alias.scope !2162
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2175
  ret i8* %11, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2177 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %1, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()) #25, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()) #25, !dbg !2184
  call void @llvm.dbg.value(metadata i8* %1, metadata !2123, metadata !DIExpression()) #25, !dbg !2184
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2186
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2124, metadata !DIExpression()) #25, !dbg !2187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188) #25, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %0, metadata !2132, metadata !DIExpression()) #25, !dbg !2192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2137, metadata !DIExpression()) #25, !dbg !2194
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2194, !alias.scope !2188
  %5 = icmp eq i32 %0, 10, !dbg !2195
  br i1 %5, label %6, label %7, !dbg !2196

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2197, !noalias !2188
  unreachable, !dbg !2197

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2198
  store i32 %0, i32* %8, align 8, !dbg !2199, !tbaa !1057, !alias.scope !2188
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2201
  ret i8* %9, !dbg !2202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2203 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %1, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %2, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2154, metadata !DIExpression()) #25, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %0, metadata !2155, metadata !DIExpression()) #25, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %1, metadata !2156, metadata !DIExpression()) #25, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %2, metadata !2157, metadata !DIExpression()) #25, !dbg !2211
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2158, metadata !DIExpression()) #25, !dbg !2214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215) #25, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %0, metadata !2132, metadata !DIExpression()) #25, !dbg !2219
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2137, metadata !DIExpression()) #25, !dbg !2221
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2221, !alias.scope !2215
  %6 = icmp eq i32 %0, 10, !dbg !2222
  br i1 %6, label %7, label %8, !dbg !2223

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2224, !noalias !2215
  unreachable, !dbg !2224

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2225
  store i32 %0, i32* %9, align 8, !dbg !2226, !tbaa !1057, !alias.scope !2215
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2228
  ret i8* %10, !dbg !2229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2230 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 %1, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8 %2, metadata !2236, metadata !DIExpression()), !dbg !2238
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2239
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2239
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2241, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1075, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %2, metadata !1076, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 %2, metadata !1078, metadata !DIExpression()), !dbg !2243
  %6 = lshr i8 %2, 5, !dbg !2245
  %7 = zext i8 %6 to i64, !dbg !2245
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2246
  call void @llvm.dbg.value(metadata i32* %8, metadata !1080, metadata !DIExpression()), !dbg !2243
  %9 = and i8 %2, 31, !dbg !2247
  %10 = zext i8 %9 to i32, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %10, metadata !1082, metadata !DIExpression()), !dbg !2243
  %11 = load i32, i32* %8, align 4, !dbg !2248, !tbaa !792
  %12 = lshr i32 %11, %10, !dbg !2249
  %13 = and i32 %12, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %13, metadata !1083, metadata !DIExpression()), !dbg !2243
  %14 = xor i32 %13, 1, !dbg !2251
  %15 = shl i32 %14, %10, !dbg !2252
  %16 = xor i32 %15, %11, !dbg !2253
  store i32 %16, i32* %8, align 4, !dbg !2253, !tbaa !792
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2255
  ret i8* %17, !dbg !2256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2257 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 %1, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()) #25, !dbg !2264
  call void @llvm.dbg.value(metadata i64 -1, metadata !2235, metadata !DIExpression()) #25, !dbg !2264
  call void @llvm.dbg.value(metadata i8 %1, metadata !2236, metadata !DIExpression()) #25, !dbg !2264
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2266
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2266
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2237, metadata !DIExpression()) #25, !dbg !2267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2268, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1075, metadata !DIExpression()) #25, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %1, metadata !1076, metadata !DIExpression()) #25, !dbg !2269
  call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()) #25, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %1, metadata !1078, metadata !DIExpression()) #25, !dbg !2269
  %5 = lshr i8 %1, 5, !dbg !2271
  %6 = zext i8 %5 to i64, !dbg !2271
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2272
  call void @llvm.dbg.value(metadata i32* %7, metadata !1080, metadata !DIExpression()) #25, !dbg !2269
  %8 = and i8 %1, 31, !dbg !2273
  %9 = zext i8 %8 to i32, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %9, metadata !1082, metadata !DIExpression()) #25, !dbg !2269
  %10 = load i32, i32* %7, align 4, !dbg !2274, !tbaa !792
  %11 = lshr i32 %10, %9, !dbg !2275
  %12 = and i32 %11, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %12, metadata !1083, metadata !DIExpression()) #25, !dbg !2269
  %13 = xor i32 %12, 1, !dbg !2277
  %14 = shl i32 %13, %9, !dbg !2278
  %15 = xor i32 %14, %10, !dbg !2279
  store i32 %15, i32* %7, align 4, !dbg !2279, !tbaa !792
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2281
  ret i8* %16, !dbg !2282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2283 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #25, !dbg !2287
  call void @llvm.dbg.value(metadata i8 58, metadata !2262, metadata !DIExpression()) #25, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()) #25, !dbg !2289
  call void @llvm.dbg.value(metadata i64 -1, metadata !2235, metadata !DIExpression()) #25, !dbg !2289
  call void @llvm.dbg.value(metadata i8 58, metadata !2236, metadata !DIExpression()) #25, !dbg !2289
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2237, metadata !DIExpression()) #25, !dbg !2292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2293, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1075, metadata !DIExpression()) #25, !dbg !2294
  call void @llvm.dbg.value(metadata i8 58, metadata !1076, metadata !DIExpression()) #25, !dbg !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()) #25, !dbg !2294
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()) #25, !dbg !2294
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2296
  call void @llvm.dbg.value(metadata i32* %4, metadata !1080, metadata !DIExpression()) #25, !dbg !2294
  call void @llvm.dbg.value(metadata i32 26, metadata !1082, metadata !DIExpression()) #25, !dbg !2294
  %5 = load i32, i32* %4, align 4, !dbg !2297, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %5, metadata !1083, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2294
  %6 = or i32 %5, 67108864, !dbg !2298
  store i32 %6, i32* %4, align 4, !dbg !2298, !tbaa !792
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2300
  ret i8* %7, !dbg !2301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2302 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()) #25, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %1, metadata !2235, metadata !DIExpression()) #25, !dbg !2307
  call void @llvm.dbg.value(metadata i8 58, metadata !2236, metadata !DIExpression()) #25, !dbg !2307
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2237, metadata !DIExpression()) #25, !dbg !2310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2311, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1075, metadata !DIExpression()) #25, !dbg !2312
  call void @llvm.dbg.value(metadata i8 58, metadata !1076, metadata !DIExpression()) #25, !dbg !2312
  call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()) #25, !dbg !2312
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()) #25, !dbg !2312
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2314
  call void @llvm.dbg.value(metadata i32* %5, metadata !1080, metadata !DIExpression()) #25, !dbg !2312
  call void @llvm.dbg.value(metadata i32 26, metadata !1082, metadata !DIExpression()) #25, !dbg !2312
  %6 = load i32, i32* %5, align 4, !dbg !2315, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %6, metadata !1083, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2312
  %7 = or i32 %6, 67108864, !dbg !2316
  store i32 %7, i32* %5, align 4, !dbg !2316, !tbaa !792
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2318
  ret i8* %8, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2320 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2137, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %1, metadata !2323, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %2, metadata !2324, metadata !DIExpression()), !dbg !2328
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2325, metadata !DIExpression()), !dbg !2330
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2332), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %1, metadata !2132, metadata !DIExpression()) #25, !dbg !2335
  call void @llvm.dbg.value(metadata i32 0, metadata !2137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2335
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2326, !alias.scope !2332
  %8 = icmp eq i32 %1, 10, !dbg !2336
  br i1 %8, label %9, label %10, !dbg !2337

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2338, !noalias !2332
  unreachable, !dbg !2338

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2335
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2331
  store i32 %1, i32* %11, align 8, !dbg !2331, !tbaa.struct !2242
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2331
  %13 = bitcast i32* %12 to i8*, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2331, !tbaa.struct !2339
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1075, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 58, metadata !1076, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 58, metadata !1078, metadata !DIExpression()), !dbg !2340
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2342
  call void @llvm.dbg.value(metadata i32* %14, metadata !1080, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 26, metadata !1082, metadata !DIExpression()), !dbg !2340
  %15 = load i32, i32* %14, align 4, !dbg !2343, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %15, metadata !1083, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2340
  %16 = or i32 %15, 67108864, !dbg !2344
  store i32 %16, i32* %14, align 4, !dbg !2344, !tbaa !792
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2346
  ret i8* %17, !dbg !2347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2348 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %3, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()) #25, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2362, metadata !DIExpression()) #25, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %2, metadata !2363, metadata !DIExpression()) #25, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %3, metadata !2364, metadata !DIExpression()) #25, !dbg !2367
  call void @llvm.dbg.value(metadata i64 -1, metadata !2365, metadata !DIExpression()) #25, !dbg !2367
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2369
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #25, !dbg !2370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2371, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1116, metadata !DIExpression()) #25, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !1117, metadata !DIExpression()) #25, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %2, metadata !1118, metadata !DIExpression()) #25, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1116, metadata !DIExpression()) #25, !dbg !2372
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2374
  store i32 10, i32* %7, align 8, !dbg !2375, !tbaa !1057
  %8 = icmp ne i8* %1, null, !dbg !2376
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2377
  br i1 %10, label %12, label %11, !dbg !2377

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2378
  unreachable, !dbg !2378

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2379
  store i8* %1, i8** %13, align 8, !dbg !2380, !tbaa !1131
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2381
  store i8* %2, i8** %14, align 8, !dbg !2382, !tbaa !1134
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2384
  ret i8* %15, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2358 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %1, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %2, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %3, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %4, metadata !2365, metadata !DIExpression()), !dbg !2386
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2387
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2366, metadata !DIExpression()), !dbg !2388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2389, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1116, metadata !DIExpression()) #25, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !1117, metadata !DIExpression()) #25, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %2, metadata !1118, metadata !DIExpression()) #25, !dbg !2390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1116, metadata !DIExpression()) #25, !dbg !2390
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2392
  store i32 10, i32* %8, align 8, !dbg !2393, !tbaa !1057
  %9 = icmp ne i8* %1, null, !dbg !2394
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2395
  br i1 %11, label %13, label %12, !dbg !2395

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2396
  unreachable, !dbg !2396

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2397
  store i8* %1, i8** %14, align 8, !dbg !2398, !tbaa !1131
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2399
  store i8* %2, i8** %15, align 8, !dbg !2400, !tbaa !1134
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2402
  ret i8* %16, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2404 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %2, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()) #25, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()) #25, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %1, metadata !2354, metadata !DIExpression()) #25, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %2, metadata !2355, metadata !DIExpression()) #25, !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()) #25, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()) #25, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()) #25, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()) #25, !dbg !2414
  call void @llvm.dbg.value(metadata i64 -1, metadata !2365, metadata !DIExpression()) #25, !dbg !2414
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2416
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2366, metadata !DIExpression()) #25, !dbg !2417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2418, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1116, metadata !DIExpression()) #25, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %0, metadata !1117, metadata !DIExpression()) #25, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1118, metadata !DIExpression()) #25, !dbg !2419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1116, metadata !DIExpression()) #25, !dbg !2419
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2421
  store i32 10, i32* %6, align 8, !dbg !2422, !tbaa !1057
  %7 = icmp ne i8* %0, null, !dbg !2423
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2424
  br i1 %9, label %11, label %10, !dbg !2424

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2425
  unreachable, !dbg !2425

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2426
  store i8* %0, i8** %12, align 8, !dbg !2427, !tbaa !1131
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2428
  store i8* %1, i8** %13, align 8, !dbg !2429, !tbaa !1134
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2431
  ret i8* %14, !dbg !2432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2433 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %1, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %2, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %3, metadata !2440, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()) #25, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()) #25, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()) #25, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()) #25, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %3, metadata !2365, metadata !DIExpression()) #25, !dbg !2442
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #25, !dbg !2445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2446, !tbaa.struct !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1116, metadata !DIExpression()) #25, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %0, metadata !1117, metadata !DIExpression()) #25, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !1118, metadata !DIExpression()) #25, !dbg !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1116, metadata !DIExpression()) #25, !dbg !2447
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2449
  store i32 10, i32* %7, align 8, !dbg !2450, !tbaa !1057
  %8 = icmp ne i8* %0, null, !dbg !2451
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2452
  br i1 %10, label %12, label %11, !dbg !2452

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2453
  unreachable, !dbg !2453

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2454
  store i8* %0, i8** %13, align 8, !dbg !2455, !tbaa !1131
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2456
  store i8* %1, i8** %14, align 8, !dbg !2457, !tbaa !1134
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2459
  ret i8* %15, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %1, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %2, metadata !2467, metadata !DIExpression()), !dbg !2468
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2469
  ret i8* %4, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2471 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2465, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2467, metadata !DIExpression()) #25, !dbg !2478
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2480
  ret i8* %3, !dbg !2481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %1, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %0, metadata !2465, metadata !DIExpression()) #25, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %1, metadata !2466, metadata !DIExpression()) #25, !dbg !2489
  call void @llvm.dbg.value(metadata i64 -1, metadata !2467, metadata !DIExpression()) #25, !dbg !2489
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2491
  ret i8* %3, !dbg !2492
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %0, metadata !2487, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2465, metadata !DIExpression()) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i64 -1, metadata !2467, metadata !DIExpression()) #25, !dbg !2501
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2503
  ret i8* %2, !dbg !2504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2505 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2544, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %2, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %3, metadata !2547, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8** %4, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %5, metadata !2549, metadata !DIExpression()), !dbg !2550
  %7 = icmp eq i8* %1, null, !dbg !2551
  br i1 %7, label %10, label %8, !dbg !2553

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2554
  br label %12, !dbg !2554

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2555
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #25, !dbg !2556
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2556
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2557
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #25, !dbg !2558
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.80, i64 0, i64 0)) #25, !dbg !2558
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2559
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
  ], !dbg !2560

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #25, !dbg !2561
  %21 = load i8*, i8** %4, align 8, !dbg !2561, !tbaa !648
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2561
  br label %147, !dbg !2563

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #25, !dbg !2564
  %25 = load i8*, i8** %4, align 8, !dbg !2564, !tbaa !648
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2564
  %27 = load i8*, i8** %26, align 8, !dbg !2564, !tbaa !648
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2564
  br label %147, !dbg !2565

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #25, !dbg !2566
  %31 = load i8*, i8** %4, align 8, !dbg !2566, !tbaa !648
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2566
  %33 = load i8*, i8** %32, align 8, !dbg !2566, !tbaa !648
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2566
  %35 = load i8*, i8** %34, align 8, !dbg !2566, !tbaa !648
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2566
  br label %147, !dbg !2567

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #25, !dbg !2568
  %39 = load i8*, i8** %4, align 8, !dbg !2568, !tbaa !648
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2568
  %41 = load i8*, i8** %40, align 8, !dbg !2568, !tbaa !648
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2568
  %43 = load i8*, i8** %42, align 8, !dbg !2568, !tbaa !648
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2568
  %45 = load i8*, i8** %44, align 8, !dbg !2568, !tbaa !648
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2568
  br label %147, !dbg !2569

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #25, !dbg !2570
  %49 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !648
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2570
  %51 = load i8*, i8** %50, align 8, !dbg !2570, !tbaa !648
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2570
  %53 = load i8*, i8** %52, align 8, !dbg !2570, !tbaa !648
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2570
  %55 = load i8*, i8** %54, align 8, !dbg !2570, !tbaa !648
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2570
  %57 = load i8*, i8** %56, align 8, !dbg !2570, !tbaa !648
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2570
  br label %147, !dbg !2571

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #25, !dbg !2572
  %61 = load i8*, i8** %4, align 8, !dbg !2572, !tbaa !648
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2572
  %63 = load i8*, i8** %62, align 8, !dbg !2572, !tbaa !648
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2572
  %65 = load i8*, i8** %64, align 8, !dbg !2572, !tbaa !648
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2572
  %67 = load i8*, i8** %66, align 8, !dbg !2572, !tbaa !648
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2572
  %69 = load i8*, i8** %68, align 8, !dbg !2572, !tbaa !648
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2572
  %71 = load i8*, i8** %70, align 8, !dbg !2572, !tbaa !648
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2572
  br label %147, !dbg !2573

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #25, !dbg !2574
  %75 = load i8*, i8** %4, align 8, !dbg !2574, !tbaa !648
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2574
  %77 = load i8*, i8** %76, align 8, !dbg !2574, !tbaa !648
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2574
  %79 = load i8*, i8** %78, align 8, !dbg !2574, !tbaa !648
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2574
  %81 = load i8*, i8** %80, align 8, !dbg !2574, !tbaa !648
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2574
  %83 = load i8*, i8** %82, align 8, !dbg !2574, !tbaa !648
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2574
  %85 = load i8*, i8** %84, align 8, !dbg !2574, !tbaa !648
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2574
  %87 = load i8*, i8** %86, align 8, !dbg !2574, !tbaa !648
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2574
  br label %147, !dbg !2575

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #25, !dbg !2576
  %91 = load i8*, i8** %4, align 8, !dbg !2576, !tbaa !648
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2576
  %93 = load i8*, i8** %92, align 8, !dbg !2576, !tbaa !648
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2576
  %95 = load i8*, i8** %94, align 8, !dbg !2576, !tbaa !648
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2576
  %97 = load i8*, i8** %96, align 8, !dbg !2576, !tbaa !648
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2576
  %99 = load i8*, i8** %98, align 8, !dbg !2576, !tbaa !648
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2576
  %101 = load i8*, i8** %100, align 8, !dbg !2576, !tbaa !648
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2576
  %103 = load i8*, i8** %102, align 8, !dbg !2576, !tbaa !648
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2576
  %105 = load i8*, i8** %104, align 8, !dbg !2576, !tbaa !648
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2576
  br label %147, !dbg !2577

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #25, !dbg !2578
  %109 = load i8*, i8** %4, align 8, !dbg !2578, !tbaa !648
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2578
  %111 = load i8*, i8** %110, align 8, !dbg !2578, !tbaa !648
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2578
  %113 = load i8*, i8** %112, align 8, !dbg !2578, !tbaa !648
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2578
  %115 = load i8*, i8** %114, align 8, !dbg !2578, !tbaa !648
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2578
  %117 = load i8*, i8** %116, align 8, !dbg !2578, !tbaa !648
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2578
  %119 = load i8*, i8** %118, align 8, !dbg !2578, !tbaa !648
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2578
  %121 = load i8*, i8** %120, align 8, !dbg !2578, !tbaa !648
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2578
  %123 = load i8*, i8** %122, align 8, !dbg !2578, !tbaa !648
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2578
  %125 = load i8*, i8** %124, align 8, !dbg !2578, !tbaa !648
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2578
  br label %147, !dbg !2579

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.90, i64 0, i64 0), i32 5) #25, !dbg !2580
  %129 = load i8*, i8** %4, align 8, !dbg !2580, !tbaa !648
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2580
  %131 = load i8*, i8** %130, align 8, !dbg !2580, !tbaa !648
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2580
  %133 = load i8*, i8** %132, align 8, !dbg !2580, !tbaa !648
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2580
  %135 = load i8*, i8** %134, align 8, !dbg !2580, !tbaa !648
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2580
  %137 = load i8*, i8** %136, align 8, !dbg !2580, !tbaa !648
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2580
  %139 = load i8*, i8** %138, align 8, !dbg !2580, !tbaa !648
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2580
  %141 = load i8*, i8** %140, align 8, !dbg !2580, !tbaa !648
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2580
  %143 = load i8*, i8** %142, align 8, !dbg !2580, !tbaa !648
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2580
  %145 = load i8*, i8** %144, align 8, !dbg !2580, !tbaa !648
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2580
  br label %147, !dbg !2581

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2583 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2587, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %1, metadata !2588, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %2, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %3, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8** %4, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2593
  br label %6, !dbg !2594

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2596
  call void @llvm.dbg.value(metadata i64 %7, metadata !2592, metadata !DIExpression()), !dbg !2593
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2597
  %9 = load i8*, i8** %8, align 8, !dbg !2597, !tbaa !648
  %10 = icmp eq i8* %9, null, !dbg !2599
  %11 = add i64 %7, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %11, metadata !2592, metadata !DIExpression()), !dbg !2593
  br i1 %10, label %12, label %6, !dbg !2599, !llvm.loop !2601

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2603
  ret void, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2605 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2616, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %3, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2620, metadata !DIExpression()), !dbg !2624
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2625
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2625
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 0, metadata !2621, metadata !DIExpression()), !dbg !2624
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2621, metadata !DIExpression()), !dbg !2624
  %11 = load i32, i32* %8, align 8, !dbg !2627
  %12 = icmp ult i32 %11, 41, !dbg !2627
  br i1 %12, label %13, label %18, !dbg !2627

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2627
  %15 = zext i32 %11 to i64, !dbg !2627
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2627
  %17 = add nuw nsw i32 %11, 8, !dbg !2627
  store i32 %17, i32* %8, align 8, !dbg !2627
  br label %21, !dbg !2627

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2627
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2627
  store i8* %20, i8** %9, align 8, !dbg !2627
  br label %21, !dbg !2627

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2627
  %25 = load i8*, i8** %24, align 8, !dbg !2627
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2630
  store i8* %25, i8** %26, align 16, !dbg !2631, !tbaa !648
  %27 = icmp eq i8* %25, null, !dbg !2632
  br i1 %27, label %30, label %28, !dbg !2633

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 1, metadata !2621, metadata !DIExpression()), !dbg !2624
  %29 = icmp ult i32 %22, 41, !dbg !2627
  br i1 %29, label %35, label %32, !dbg !2627

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2634
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2636
  ret void, !dbg !2636

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2627
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2627
  store i8* %34, i8** %9, align 8, !dbg !2627
  br label %40, !dbg !2627

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2627
  %37 = zext i32 %22 to i64, !dbg !2627
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2627
  %39 = add nuw nsw i32 %22, 8, !dbg !2627
  store i32 %39, i32* %8, align 8, !dbg !2627
  br label %40, !dbg !2627

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2627
  %44 = load i8*, i8** %43, align 8, !dbg !2627
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2630
  store i8* %44, i8** %45, align 8, !dbg !2631, !tbaa !648
  %46 = icmp eq i8* %44, null, !dbg !2632
  br i1 %46, label %30, label %47, !dbg !2633

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 2, metadata !2621, metadata !DIExpression()), !dbg !2624
  %48 = icmp ult i32 %41, 41, !dbg !2627
  br i1 %48, label %52, label %49, !dbg !2627

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2627
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2627
  store i8* %51, i8** %9, align 8, !dbg !2627
  br label %57, !dbg !2627

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2627
  %54 = zext i32 %41 to i64, !dbg !2627
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2627
  %56 = add nuw nsw i32 %41, 8, !dbg !2627
  store i32 %56, i32* %8, align 8, !dbg !2627
  br label %57, !dbg !2627

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2627
  %61 = load i8*, i8** %60, align 8, !dbg !2627
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2630
  store i8* %61, i8** %62, align 16, !dbg !2631, !tbaa !648
  %63 = icmp eq i8* %61, null, !dbg !2632
  br i1 %63, label %30, label %64, !dbg !2633

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 3, metadata !2621, metadata !DIExpression()), !dbg !2624
  %65 = icmp ult i32 %58, 41, !dbg !2627
  br i1 %65, label %69, label %66, !dbg !2627

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2627
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2627
  store i8* %68, i8** %9, align 8, !dbg !2627
  br label %74, !dbg !2627

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2627
  %71 = zext i32 %58 to i64, !dbg !2627
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2627
  %73 = add nuw nsw i32 %58, 8, !dbg !2627
  store i32 %73, i32* %8, align 8, !dbg !2627
  br label %74, !dbg !2627

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2627
  %78 = load i8*, i8** %77, align 8, !dbg !2627
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2630
  store i8* %78, i8** %79, align 8, !dbg !2631, !tbaa !648
  %80 = icmp eq i8* %78, null, !dbg !2632
  br i1 %80, label %30, label %81, !dbg !2633

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 4, metadata !2621, metadata !DIExpression()), !dbg !2624
  %82 = icmp ult i32 %75, 41, !dbg !2627
  br i1 %82, label %86, label %83, !dbg !2627

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2627
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2627
  store i8* %85, i8** %9, align 8, !dbg !2627
  br label %91, !dbg !2627

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2627
  %88 = zext i32 %75 to i64, !dbg !2627
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2627
  %90 = add nuw nsw i32 %75, 8, !dbg !2627
  store i32 %90, i32* %8, align 8, !dbg !2627
  br label %91, !dbg !2627

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2627
  %95 = load i8*, i8** %94, align 8, !dbg !2627
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2630
  store i8* %95, i8** %96, align 16, !dbg !2631, !tbaa !648
  %97 = icmp eq i8* %95, null, !dbg !2632
  br i1 %97, label %30, label %98, !dbg !2633

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 5, metadata !2621, metadata !DIExpression()), !dbg !2624
  %99 = icmp ult i32 %92, 41, !dbg !2627
  br i1 %99, label %103, label %100, !dbg !2627

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2627
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2627
  store i8* %102, i8** %9, align 8, !dbg !2627
  br label %108, !dbg !2627

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2627
  %105 = zext i32 %92 to i64, !dbg !2627
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2627
  %107 = add nuw nsw i32 %92, 8, !dbg !2627
  store i32 %107, i32* %8, align 8, !dbg !2627
  br label %108, !dbg !2627

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2627
  %111 = load i8*, i8** %110, align 8, !dbg !2627
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2630
  store i8* %111, i8** %112, align 8, !dbg !2631, !tbaa !648
  %113 = icmp eq i8* %111, null, !dbg !2632
  br i1 %113, label %30, label %114, !dbg !2633

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2621, metadata !DIExpression()), !dbg !2624
  %115 = load i8*, i8** %9, align 8, !dbg !2627
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2627
  store i8* %116, i8** %9, align 8, !dbg !2627
  %117 = bitcast i8* %115 to i8**, !dbg !2627
  %118 = load i8*, i8** %117, align 8, !dbg !2627
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2630
  store i8* %118, i8** %119, align 16, !dbg !2631, !tbaa !648
  %120 = icmp eq i8* %118, null, !dbg !2632
  br i1 %120, label %30, label %121, !dbg !2633

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2621, metadata !DIExpression()), !dbg !2624
  %122 = load i8*, i8** %9, align 8, !dbg !2627
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2627
  store i8* %123, i8** %9, align 8, !dbg !2627
  %124 = bitcast i8* %122 to i8**, !dbg !2627
  %125 = load i8*, i8** %124, align 8, !dbg !2627
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2630
  store i8* %125, i8** %126, align 8, !dbg !2631, !tbaa !648
  %127 = icmp eq i8* %125, null, !dbg !2632
  br i1 %127, label %30, label %128, !dbg !2633

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2621, metadata !DIExpression()), !dbg !2624
  %129 = load i8*, i8** %9, align 8, !dbg !2627
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2627
  store i8* %130, i8** %9, align 8, !dbg !2627
  %131 = bitcast i8* %129 to i8**, !dbg !2627
  %132 = load i8*, i8** %131, align 8, !dbg !2627
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2630
  store i8* %132, i8** %133, align 16, !dbg !2631, !tbaa !648
  %134 = icmp eq i8* %132, null, !dbg !2632
  br i1 %134, label %30, label %135, !dbg !2633

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2621, metadata !DIExpression()), !dbg !2624
  %136 = load i8*, i8** %9, align 8, !dbg !2627
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2627
  store i8* %137, i8** %9, align 8, !dbg !2627
  %138 = bitcast i8* %136 to i8**, !dbg !2627
  %139 = load i8*, i8** %138, align 8, !dbg !2627
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2630
  store i8* %139, i8** %140, align 8, !dbg !2631, !tbaa !648
  %141 = icmp eq i8* %139, null, !dbg !2632
  %142 = select i1 %141, i64 9, i64 10, !dbg !2633
  br label %30, !dbg !2633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2637 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2641, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %2, metadata !2643, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %3, metadata !2644, metadata !DIExpression()), !dbg !2651
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2652
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2652
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2645, metadata !DIExpression()), !dbg !2653
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2654
  call void @llvm.va_start(i8* nonnull %6), !dbg !2654
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2655
  call void @llvm.va_end(i8* nonnull %6), !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2657
  ret void, !dbg !2657
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2658 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2659, !tbaa !648
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2659
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #25, !dbg !2660
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.94, i64 0, i64 0)) #25, !dbg !2660
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.95, i64 0, i64 0), i32 5) #25, !dbg !2661
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.96, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.97, i64 0, i64 0)) #25, !dbg !2661
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.98, i64 0, i64 0), i32 5) #25, !dbg !2662
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.99, i64 0, i64 0)) #25, !dbg !2662
  ret void, !dbg !2663
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2664 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 %1, metadata !2669, metadata !DIExpression()), !dbg !2670
  %3 = udiv i64 9223372036854775807, %1, !dbg !2671
  %4 = icmp ult i64 %3, %0, !dbg !2671
  br i1 %4, label %5, label %6, !dbg !2673

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2674
  unreachable, !dbg !2674

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %7, metadata !2676, metadata !DIExpression()) #25, !dbg !2682
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %8, metadata !2681, metadata !DIExpression()) #25, !dbg !2682
  %9 = icmp eq i8* %8, null, !dbg !2685
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2687
  br i1 %11, label %12, label %13, !dbg !2687

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2688
  unreachable, !dbg !2688

13:                                               ; preds = %6
  ret i8* %8, !dbg !2689
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2677 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2676, metadata !DIExpression()), !dbg !2690
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()), !dbg !2690
  %3 = icmp eq i8* %2, null, !dbg !2692
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2693
  br i1 %5, label %6, label %7, !dbg !2693

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2694
  unreachable, !dbg !2694

7:                                                ; preds = %1
  ret i8* %2, !dbg !2695
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %2, metadata !2702, metadata !DIExpression()), !dbg !2703
  %4 = udiv i64 9223372036854775807, %2, !dbg !2704
  %5 = icmp ult i64 %4, %1, !dbg !2704
  br i1 %5, label %6, label %7, !dbg !2706

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2707
  unreachable, !dbg !2707

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()) #25, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %8, metadata !2714, metadata !DIExpression()) #25, !dbg !2715
  %9 = icmp eq i64 %8, 0, !dbg !2717
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2719
  br i1 %11, label %12, label %13, !dbg !2719

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2720
  br label %19, !dbg !2722

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %14, metadata !2709, metadata !DIExpression()) #25, !dbg !2715
  %15 = icmp eq i8* %14, null, !dbg !2724
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2726
  br i1 %17, label %18, label %19, !dbg !2726

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2727
  unreachable, !dbg !2727

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2715
  ret i8* %20, !dbg !2728
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2710 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2714, metadata !DIExpression()), !dbg !2729
  %3 = icmp eq i64 %1, 0, !dbg !2730
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2731
  br i1 %5, label %6, label %7, !dbg !2731

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2732
  br label %13, !dbg !2733

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %8, metadata !2709, metadata !DIExpression()), !dbg !2729
  %9 = icmp eq i8* %8, null, !dbg !2735
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2736
  br i1 %11, label %12, label %13, !dbg !2736

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2737
  unreachable, !dbg !2737

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2729
  ret i8* %14, !dbg !2738
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !213, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %2, metadata !215, metadata !DIExpression()), !dbg !2739
  %4 = load i64, i64* %1, align 8, !dbg !2740, !tbaa !839
  call void @llvm.dbg.value(metadata i64 %4, metadata !216, metadata !DIExpression()), !dbg !2739
  %5 = icmp eq i8* %0, null, !dbg !2741
  br i1 %5, label %6, label %20, !dbg !2743

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2744
  br i1 %7, label %8, label %13, !dbg !2747

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %9, metadata !216, metadata !DIExpression()), !dbg !2739
  %10 = icmp ugt i64 %2, 128, !dbg !2750
  %11 = zext i1 %10 to i64, !dbg !2750
  %12 = add nuw nsw i64 %9, %11, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %12, metadata !216, metadata !DIExpression()), !dbg !2739
  br label %13, !dbg !2752

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %14, metadata !216, metadata !DIExpression()), !dbg !2739
  %15 = udiv i64 9223372036854775807, %2, !dbg !2753
  %16 = icmp ult i64 %15, %14, !dbg !2753
  br i1 %16, label %19, label %17, !dbg !2755

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !216, metadata !DIExpression()), !dbg !2739
  store i64 %14, i64* %1, align 8, !dbg !2756, !tbaa !839
  %18 = mul i64 %14, %2, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()) #25, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %28, metadata !2714, metadata !DIExpression()) #25, !dbg !2758
  br label %31, !dbg !2760

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2761
  unreachable, !dbg !2761

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2762
  %22 = icmp ugt i64 %21, %4, !dbg !2765
  br i1 %22, label %24, label %23, !dbg !2766

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2767
  unreachable, !dbg !2767

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2768
  %26 = add nuw i64 %4, 1, !dbg !2769
  %27 = add i64 %26, %25, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %27, metadata !216, metadata !DIExpression()), !dbg !2739
  store i64 %27, i64* %1, align 8, !dbg !2756, !tbaa !839
  %28 = mul i64 %27, %2, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()) #25, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %28, metadata !2714, metadata !DIExpression()) #25, !dbg !2758
  %29 = icmp eq i64 %28, 0, !dbg !2771
  br i1 %29, label %30, label %31, !dbg !2760

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !2772
  br label %38, !dbg !2773

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %33, metadata !2709, metadata !DIExpression()) #25, !dbg !2758
  %34 = icmp eq i8* %33, null, !dbg !2775
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2776
  br i1 %36, label %37, label %38, !dbg !2776

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !2777
  unreachable, !dbg !2777

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2758
  ret i8* %39, !dbg !2778
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2779 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %0, metadata !2676, metadata !DIExpression()) #25, !dbg !2783
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()) #25, !dbg !2783
  %3 = icmp eq i8* %2, null, !dbg !2786
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2787
  br i1 %5, label %6, label %7, !dbg !2787

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2788
  unreachable, !dbg !2788

7:                                                ; preds = %1
  ret i8* %2, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64* %1, metadata !2795, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %0, metadata !213, metadata !DIExpression()) #25, !dbg !2797
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()) #25, !dbg !2797
  call void @llvm.dbg.value(metadata i64 1, metadata !215, metadata !DIExpression()) #25, !dbg !2797
  %3 = load i64, i64* %1, align 8, !dbg !2799, !tbaa !839
  call void @llvm.dbg.value(metadata i64 %3, metadata !216, metadata !DIExpression()) #25, !dbg !2797
  %4 = icmp eq i8* %0, null, !dbg !2800
  br i1 %4, label %5, label %10, !dbg !2801

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2802
  br i1 %6, label %17, label %7, !dbg !2803

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !216, metadata !DIExpression()) #25, !dbg !2797
  %8 = icmp slt i64 %3, 0, !dbg !2804
  br i1 %8, label %9, label %17, !dbg !2805

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2806
  unreachable, !dbg !2806

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2807
  br i1 %11, label %13, label %12, !dbg !2808

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !2809
  unreachable, !dbg !2809

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2810
  %15 = add nuw nsw i64 %3, 1, !dbg !2811
  %16 = add nuw nsw i64 %15, %14, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %16, metadata !216, metadata !DIExpression()) #25, !dbg !2797
  call void @llvm.dbg.value(metadata i8* %0, metadata !2709, metadata !DIExpression()) #25, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %16, metadata !2714, metadata !DIExpression()) #25, !dbg !2813
  br label %17, !dbg !2815

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2816
  store i64 %18, i64* %1, align 8, !dbg !2816, !tbaa !839
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %19, metadata !2709, metadata !DIExpression()) #25, !dbg !2813
  %20 = icmp eq i8* %19, null, !dbg !2818
  br i1 %20, label %21, label %22, !dbg !2819

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !2820
  unreachable, !dbg !2820

22:                                               ; preds = %17
  ret i8* %19, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2822 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %0, metadata !2826, metadata !DIExpression()) #25, !dbg !2831
  call void @llvm.dbg.value(metadata i64 1, metadata !2829, metadata !DIExpression()) #25, !dbg !2831
  %2 = icmp slt i64 %0, 0, !dbg !2833
  br i1 %2, label %6, label %3, !dbg !2835

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %4, metadata !2830, metadata !DIExpression()) #25, !dbg !2831
  %5 = icmp eq i8* %4, null, !dbg !2837
  br i1 %5, label %6, label %7, !dbg !2838

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !2839
  unreachable, !dbg !2839

7:                                                ; preds = %3
  ret i8* %4, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2827 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2826, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2841
  %3 = udiv i64 9223372036854775807, %1, !dbg !2842
  %4 = icmp ult i64 %3, %0, !dbg !2842
  br i1 %4, label %8, label %5, !dbg !2843

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %6, metadata !2830, metadata !DIExpression()), !dbg !2841
  %7 = icmp eq i8* %6, null, !dbg !2845
  br i1 %7, label %8, label %9, !dbg !2846

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !2847
  unreachable, !dbg !2847

9:                                                ; preds = %5
  ret i8* %6, !dbg !2848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2849 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2676, metadata !DIExpression()) #25, !dbg !2858
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !2860
  call void @llvm.dbg.value(metadata i8* %3, metadata !2681, metadata !DIExpression()) #25, !dbg !2858
  %4 = icmp eq i8* %3, null, !dbg !2861
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2862
  br i1 %6, label %7, label %8, !dbg !2862

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2863
  unreachable, !dbg !2863

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2864, metadata !DIExpression()) #25, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #25, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()) #25, !dbg !2873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !2875
  ret i8* %3, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()), !dbg !2880
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !2881
  %3 = add i64 %2, 1, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #25, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %3, metadata !2856, metadata !DIExpression()) #25, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %3, metadata !2676, metadata !DIExpression()) #25, !dbg !2885
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %4, metadata !2681, metadata !DIExpression()) #25, !dbg !2885
  %5 = icmp eq i8* %4, null, !dbg !2888
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2889
  br i1 %7, label %8, label %9, !dbg !2889

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2890
  unreachable, !dbg !2890

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2864, metadata !DIExpression()) #25, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #25, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %3, metadata !2872, metadata !DIExpression()) #25, !dbg !2891
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !2893
  ret i8* %4, !dbg !2894
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2895 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2896, !tbaa !792
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #25, !dbg !2897
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #25, !dbg !2898
  tail call void @abort() #27, !dbg !2899
  unreachable, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtol(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !2900 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8** %1, metadata !2907, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 %2, metadata !2908, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64* %3, metadata !2909, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* %4, metadata !2910, metadata !DIExpression()), !dbg !2920
  %7 = bitcast i8** %6 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2920
  %8 = icmp ult i32 %2, 37, !dbg !2922
  br i1 %8, label %10, label %9, !dbg !2922

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.115, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #27, !dbg !2922
  unreachable, !dbg !2922

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !2925
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !2925
  call void @llvm.dbg.value(metadata i8** %12, metadata !2912, metadata !DIExpression()), !dbg !2920
  %13 = tail call i32* @__errno_location() #29, !dbg !2926
  store i32 0, i32* %13, align 4, !dbg !2927, !tbaa !792
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #25, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %14, metadata !2913, metadata !DIExpression()), !dbg !2920
  %15 = load i8*, i8** %12, align 8, !dbg !2929, !tbaa !648
  %16 = icmp eq i8* %15, %0, !dbg !2931
  br i1 %16, label %17, label %26, !dbg !2932

17:                                               ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !2933
  br i1 %18, label %204, label %19, !dbg !2936

19:                                               ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !2937, !tbaa !800
  %21 = icmp eq i8 %20, 0, !dbg !2937
  br i1 %21, label %204, label %22, !dbg !2938

22:                                               ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !2937
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #26, !dbg !2939
  %25 = icmp eq i8* %24, null, !dbg !2939
  br i1 %25, label %204, label %33, !dbg !2940

26:                                               ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !2941, !tbaa !792
  switch i32 %27, label %204 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !2943

28:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !2914, metadata !DIExpression()), !dbg !2920
  br label %29, !dbg !2944

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !2920
  call void @llvm.dbg.value(metadata i32 %30, metadata !2914, metadata !DIExpression()), !dbg !2920
  %31 = icmp eq i8* %4, null, !dbg !2946
  br i1 %31, label %32, label %33, !dbg !2948

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !2913, metadata !DIExpression()), !dbg !2920
  store i64 %14, i64* %3, align 8, !dbg !2949, !tbaa !839
  br label %204, !dbg !2951

33:                                               ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !2952, !tbaa !800
  %37 = sext i8 %36 to i32, !dbg !2952
  %38 = icmp eq i8 %36, 0, !dbg !2953
  br i1 %38, label %201, label %39, !dbg !2954

39:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !2915, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 1, metadata !2918, metadata !DIExpression()), !dbg !2955
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #26, !dbg !2956
  %41 = icmp eq i8* %40, null, !dbg !2956
  br i1 %41, label %42, label %44, !dbg !2958

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !2913, metadata !DIExpression()), !dbg !2920
  store i64 %35, i64* %3, align 8, !dbg !2959, !tbaa !839
  %43 = or i32 %34, 2, !dbg !2961
  br label %204, !dbg !2962

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
  ], !dbg !2963

45:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #26, !dbg !2964
  %47 = icmp eq i8* %46, null, !dbg !2964
  br i1 %47, label %58, label %48, !dbg !2967

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2968
  %50 = load i8, i8* %49, align 1, !dbg !2968, !tbaa !800
  %51 = sext i8 %50 to i32, !dbg !2968
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !2969

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !2970
  %54 = load i8, i8* %53, align 1, !dbg !2970, !tbaa !800
  %55 = icmp eq i8 %54, 66, !dbg !2973
  %56 = select i1 %55, i64 3, i64 1, !dbg !2974
  br label %58, !dbg !2974

57:                                               ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !2915, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 2, metadata !2918, metadata !DIExpression()), !dbg !2955
  br label %58, !dbg !2975

58:                                               ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2918, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 undef, metadata !2915, metadata !DIExpression()), !dbg !2955
  switch i32 %37, label %190 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %192
    i32 69, label %75
    i32 71, label %89
    i32 103, label %89
    i32 107, label %103
    i32 75, label %103
    i32 77, label %113
    i32 109, label %113
    i32 80, label %127
    i32 84, label %141
    i32 116, label %141
    i32 119, label %155
    i32 89, label %162
    i32 90, label %176
  ], !dbg !2976

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 512, metadata !2982, metadata !DIExpression()), !dbg !2983
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !2986
  br i1 %62, label %192, label %63, !dbg !2988

63:                                               ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !2989
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !2991
  %67 = zext i1 %64 to i32, !dbg !2991
  br label %192, !dbg !2991

68:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 1024, metadata !2982, metadata !DIExpression()), !dbg !2992
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !2994
  br i1 %69, label %192, label %70, !dbg !2995

70:                                               ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !2996
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !2997
  %74 = zext i1 %71 to i32, !dbg !2997
  br label %192, !dbg !2997

75:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 6, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3006
  %76 = udiv i64 -9223372036854775808, %59
  %77 = sub i64 0, %76
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 6, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %78 = icmp slt i64 %35, %77, !dbg !3010
  br i1 %78, label %85, label %79, !dbg !3011

79:                                               ; preds = %75
  %80 = udiv i64 9223372036854775807, %59, !dbg !3012
  %81 = icmp slt i64 %80, %35, !dbg !3013
  %82 = mul nsw i64 %35, %59
  %83 = select i1 %81, i64 9223372036854775807, i64 %82, !dbg !3014
  %84 = zext i1 %81 to i32, !dbg !3014
  br label %85, !dbg !3014

85:                                               ; preds = %79, %75
  %86 = phi i64 [ -9223372036854775808, %75 ], [ %83, %79 ], !dbg !3008
  %87 = phi i32 [ 1, %75 ], [ %84, %79 ], !dbg !3008
  call void @llvm.dbg.value(metadata i32 %87, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %87, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 4, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %88 = icmp slt i64 %86, %77, !dbg !3010
  br i1 %88, label %212, label %206, !dbg !3011

89:                                               ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3015
  %90 = udiv i64 -9223372036854775808, %59
  %91 = sub i64 0, %90
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3017
  %92 = icmp slt i64 %35, %91, !dbg !3019
  br i1 %92, label %99, label %93, !dbg !3020

93:                                               ; preds = %89
  %94 = udiv i64 9223372036854775807, %59, !dbg !3021
  %95 = icmp slt i64 %94, %35, !dbg !3022
  %96 = mul nsw i64 %35, %59
  %97 = select i1 %95, i64 9223372036854775807, i64 %96, !dbg !3023
  %98 = zext i1 %95 to i32, !dbg !3023
  br label %99, !dbg !3023

99:                                               ; preds = %93, %89
  %100 = phi i64 [ -9223372036854775808, %89 ], [ %97, %93 ], !dbg !3017
  %101 = phi i32 [ 1, %89 ], [ %98, %93 ], !dbg !3017
  call void @llvm.dbg.value(metadata i32 %101, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %101, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3017
  %102 = icmp slt i64 %100, %91, !dbg !3019
  br i1 %102, label %266, label %260, !dbg !3020

103:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3024
  %104 = udiv i64 -9223372036854775808, %59
  %105 = sub i64 0, %104
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 undef, metadata !3004, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 undef, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3024
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3026
  %106 = icmp slt i64 %35, %105, !dbg !3028
  br i1 %106, label %192, label %107, !dbg !3029

107:                                              ; preds = %103
  %108 = udiv i64 9223372036854775807, %59, !dbg !3030
  %109 = icmp slt i64 %108, %35, !dbg !3031
  %110 = mul nsw i64 %35, %59
  %111 = select i1 %109, i64 9223372036854775807, i64 %110, !dbg !3032
  %112 = zext i1 %109 to i32, !dbg !3032
  br label %192, !dbg !3032

113:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3033
  %114 = udiv i64 -9223372036854775808, %59
  %115 = sub i64 0, %114
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3035
  %116 = icmp slt i64 %35, %115, !dbg !3037
  br i1 %116, label %123, label %117, !dbg !3038

117:                                              ; preds = %113
  %118 = udiv i64 9223372036854775807, %59, !dbg !3039
  %119 = icmp slt i64 %118, %35, !dbg !3040
  %120 = mul nsw i64 %35, %59
  %121 = select i1 %119, i64 9223372036854775807, i64 %120, !dbg !3041
  %122 = zext i1 %119 to i32, !dbg !3041
  br label %123, !dbg !3041

123:                                              ; preds = %117, %113
  %124 = phi i64 [ -9223372036854775808, %113 ], [ %121, %117 ], !dbg !3035
  %125 = phi i32 [ 1, %113 ], [ %122, %117 ], !dbg !3035
  call void @llvm.dbg.value(metadata i32 %125, metadata !3005, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3035
  %126 = icmp slt i64 %124, %115, !dbg !3037
  br i1 %126, label %287, label %281, !dbg !3038

127:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3042
  %128 = udiv i64 -9223372036854775808, %59
  %129 = sub i64 0, %128
  call void @llvm.dbg.value(metadata i32 4, metadata !3004, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3044
  %130 = icmp slt i64 %35, %129, !dbg !3046
  br i1 %130, label %137, label %131, !dbg !3047

131:                                              ; preds = %127
  %132 = udiv i64 9223372036854775807, %59, !dbg !3048
  %133 = icmp slt i64 %132, %35, !dbg !3049
  %134 = mul nsw i64 %35, %59
  %135 = select i1 %133, i64 9223372036854775807, i64 %134, !dbg !3050
  %136 = zext i1 %133 to i32, !dbg !3050
  br label %137, !dbg !3050

137:                                              ; preds = %131, %127
  %138 = phi i64 [ -9223372036854775808, %127 ], [ %135, %131 ], !dbg !3044
  %139 = phi i32 [ 1, %127 ], [ %136, %131 ], !dbg !3044
  call void @llvm.dbg.value(metadata i32 %139, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3044
  %140 = icmp slt i64 %138, %129, !dbg !3046
  br i1 %140, label %297, label %291, !dbg !3047

141:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 4, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3051
  %142 = udiv i64 -9223372036854775808, %59
  %143 = sub i64 0, %142
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3053
  %144 = icmp slt i64 %35, %143, !dbg !3055
  br i1 %144, label %151, label %145, !dbg !3056

145:                                              ; preds = %141
  %146 = udiv i64 9223372036854775807, %59, !dbg !3057
  %147 = icmp slt i64 %146, %35, !dbg !3058
  %148 = mul nsw i64 %35, %59
  %149 = select i1 %147, i64 9223372036854775807, i64 %148, !dbg !3059
  %150 = zext i1 %147 to i32, !dbg !3059
  br label %151, !dbg !3059

151:                                              ; preds = %145, %141
  %152 = phi i64 [ -9223372036854775808, %141 ], [ %149, %145 ], !dbg !3053
  %153 = phi i32 [ 1, %141 ], [ %150, %145 ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %153, metadata !3005, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3053
  %154 = icmp slt i64 %152, %143, !dbg !3055
  br i1 %154, label %340, label %334, !dbg !3056

155:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 2, metadata !2982, metadata !DIExpression()), !dbg !3060
  %156 = icmp slt i64 %35, -4611686018427387904, !dbg !3062
  br i1 %156, label %192, label %157, !dbg !3063

157:                                              ; preds = %155
  %158 = icmp sgt i64 %35, 4611686018427387903, !dbg !3064
  %159 = shl nsw i64 %35, 1
  %160 = select i1 %158, i64 9223372036854775807, i64 %159, !dbg !3065
  %161 = zext i1 %158 to i32, !dbg !3065
  br label %192, !dbg !3065

162:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 8, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3066
  %163 = udiv i64 -9223372036854775808, %59
  %164 = sub i64 0, %163
  call void @llvm.dbg.value(metadata i32 7, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %165 = icmp slt i64 %35, %164, !dbg !3070
  br i1 %165, label %172, label %166, !dbg !3071

166:                                              ; preds = %162
  %167 = udiv i64 9223372036854775807, %59, !dbg !3072
  %168 = icmp slt i64 %167, %35, !dbg !3073
  %169 = mul nsw i64 %35, %59
  %170 = select i1 %168, i64 9223372036854775807, i64 %169, !dbg !3074
  %171 = zext i1 %168 to i32, !dbg !3074
  br label %172, !dbg !3074

172:                                              ; preds = %166, %162
  %173 = phi i64 [ -9223372036854775808, %162 ], [ %170, %166 ], !dbg !3068
  %174 = phi i32 [ 1, %162 ], [ %171, %166 ], !dbg !3068
  call void @llvm.dbg.value(metadata i32 %174, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 6, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %175 = icmp slt i64 %173, %164, !dbg !3070
  br i1 %175, label %372, label %366, !dbg !3071

176:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !2998, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 undef, metadata !3003, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 7, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3075
  %177 = udiv i64 -9223372036854775808, %59
  %178 = sub i64 0, %177
  call void @llvm.dbg.value(metadata i32 6, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %179 = icmp slt i64 %35, %178, !dbg !3079
  br i1 %179, label %186, label %180, !dbg !3080

180:                                              ; preds = %176
  %181 = udiv i64 9223372036854775807, %59, !dbg !3081
  %182 = icmp slt i64 %181, %35, !dbg !3082
  %183 = mul nsw i64 %35, %59
  %184 = select i1 %182, i64 9223372036854775807, i64 %183, !dbg !3083
  %185 = zext i1 %182 to i32, !dbg !3083
  br label %186, !dbg !3083

186:                                              ; preds = %180, %176
  %187 = phi i64 [ -9223372036854775808, %176 ], [ %184, %180 ], !dbg !3077
  %188 = phi i32 [ 1, %176 ], [ %185, %180 ], !dbg !3077
  call void @llvm.dbg.value(metadata i32 %188, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %189 = icmp slt i64 %187, %178, !dbg !3079
  br i1 %189, label %448, label %442, !dbg !3080

190:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !2913, metadata !DIExpression()), !dbg !2920
  store i64 %35, i64* %3, align 8, !dbg !3084, !tbaa !839
  %191 = or i32 %34, 2, !dbg !3085
  br label %204, !dbg !3086

192:                                              ; preds = %107, %103, %503, %438, %362, %330, %287, %277, %256, %157, %70, %63, %58, %61, %68, %155
  %193 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %155 ], [ %66, %63 ], [ %73, %70 ], [ %160, %157 ], [ %257, %256 ], [ %278, %277 ], [ %288, %287 ], [ %331, %330 ], [ %363, %362 ], [ %439, %438 ], [ %504, %503 ], [ -9223372036854775808, %103 ], [ %111, %107 ], !dbg !2920
  %194 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %155 ], [ %67, %63 ], [ %74, %70 ], [ %161, %157 ], [ %259, %256 ], [ %280, %277 ], [ %290, %287 ], [ %333, %330 ], [ %365, %362 ], [ %441, %438 ], [ %506, %503 ], [ 1, %103 ], [ %112, %107 ], !dbg !3087
  call void @llvm.dbg.value(metadata i32 %194, metadata !2919, metadata !DIExpression()), !dbg !2955
  %195 = or i32 %194, %34, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %195, metadata !2914, metadata !DIExpression()), !dbg !2920
  %196 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3089
  store i8* %196, i8** %12, align 8, !dbg !3089, !tbaa !648
  %197 = load i8, i8* %196, align 1, !dbg !3090, !tbaa !800
  %198 = icmp eq i8 %197, 0, !dbg !3090
  %199 = or i32 %195, 2
  %200 = select i1 %198, i32 %195, i32 %199, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %200, metadata !2914, metadata !DIExpression()), !dbg !2920
  br label %201

201:                                              ; preds = %192, %33
  %202 = phi i64 [ %35, %33 ], [ %193, %192 ], !dbg !3093
  %203 = phi i32 [ %34, %33 ], [ %200, %192 ], !dbg !3094
  call void @llvm.dbg.value(metadata i32 %203, metadata !2914, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %202, metadata !2913, metadata !DIExpression()), !dbg !2920
  store i64 %202, i64* %3, align 8, !dbg !3095, !tbaa !839
  br label %204, !dbg !3096

204:                                              ; preds = %42, %190, %26, %17, %19, %22, %201, %32
  %205 = phi i32 [ %203, %201 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %191, %190 ], !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25, !dbg !3097
  ret i32 %205, !dbg !3097

206:                                              ; preds = %85
  %207 = udiv i64 9223372036854775807, %59, !dbg !3012
  %208 = icmp slt i64 %207, %86, !dbg !3013
  %209 = mul nsw i64 %86, %59
  %210 = select i1 %208, i64 9223372036854775807, i64 %209, !dbg !3014
  %211 = zext i1 %208 to i32, !dbg !3014
  br label %212, !dbg !3014

212:                                              ; preds = %206, %85
  %213 = phi i64 [ -9223372036854775808, %85 ], [ %210, %206 ], !dbg !3008
  %214 = phi i32 [ 1, %85 ], [ %211, %206 ], !dbg !3008
  %215 = or i32 %214, %87, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %215, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %216 = icmp slt i64 %213, %77, !dbg !3010
  br i1 %216, label %223, label %217, !dbg !3011

217:                                              ; preds = %212
  %218 = udiv i64 9223372036854775807, %59, !dbg !3012
  %219 = icmp slt i64 %218, %213, !dbg !3013
  %220 = mul nsw i64 %213, %59
  %221 = select i1 %219, i64 9223372036854775807, i64 %220, !dbg !3014
  %222 = zext i1 %219 to i32, !dbg !3014
  br label %223, !dbg !3014

223:                                              ; preds = %217, %212
  %224 = phi i64 [ -9223372036854775808, %212 ], [ %221, %217 ], !dbg !3008
  %225 = phi i32 [ 1, %212 ], [ %222, %217 ], !dbg !3008
  %226 = or i32 %225, %215, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %226, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %227 = icmp slt i64 %224, %77, !dbg !3010
  br i1 %227, label %234, label %228, !dbg !3011

228:                                              ; preds = %223
  %229 = udiv i64 9223372036854775807, %59, !dbg !3012
  %230 = icmp slt i64 %229, %224, !dbg !3013
  %231 = mul nsw i64 %224, %59
  %232 = select i1 %230, i64 9223372036854775807, i64 %231, !dbg !3014
  %233 = zext i1 %230 to i32, !dbg !3014
  br label %234, !dbg !3014

234:                                              ; preds = %228, %223
  %235 = phi i64 [ -9223372036854775808, %223 ], [ %232, %228 ], !dbg !3008
  %236 = phi i32 [ 1, %223 ], [ %233, %228 ], !dbg !3008
  %237 = or i32 %236, %226, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %237, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %238 = icmp slt i64 %235, %77, !dbg !3010
  br i1 %238, label %245, label %239, !dbg !3011

239:                                              ; preds = %234
  %240 = udiv i64 9223372036854775807, %59, !dbg !3012
  %241 = icmp slt i64 %240, %235, !dbg !3013
  %242 = mul nsw i64 %235, %59
  %243 = select i1 %241, i64 9223372036854775807, i64 %242, !dbg !3014
  %244 = zext i1 %241 to i32, !dbg !3014
  br label %245, !dbg !3014

245:                                              ; preds = %239, %234
  %246 = phi i64 [ -9223372036854775808, %234 ], [ %243, %239 ], !dbg !3008
  %247 = phi i32 [ 1, %234 ], [ %244, %239 ], !dbg !3008
  %248 = or i32 %247, %237, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %248, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3008
  %249 = icmp slt i64 %246, %77, !dbg !3010
  br i1 %249, label %256, label %250, !dbg !3011

250:                                              ; preds = %245
  %251 = udiv i64 9223372036854775807, %59, !dbg !3012
  %252 = icmp slt i64 %251, %246, !dbg !3013
  %253 = mul nsw i64 %246, %59
  %254 = select i1 %252, i64 9223372036854775807, i64 %253, !dbg !3014
  %255 = zext i1 %252 to i32, !dbg !3014
  br label %256, !dbg !3014

256:                                              ; preds = %250, %245
  %257 = phi i64 [ -9223372036854775808, %245 ], [ %254, %250 ], !dbg !3008
  %258 = phi i32 [ 1, %245 ], [ %255, %250 ], !dbg !3008
  %259 = or i32 %258, %248, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %259, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3006
  br label %192, !dbg !3088

260:                                              ; preds = %99
  %261 = udiv i64 9223372036854775807, %59, !dbg !3021
  %262 = icmp slt i64 %261, %100, !dbg !3022
  %263 = mul nsw i64 %100, %59
  %264 = select i1 %262, i64 9223372036854775807, i64 %263, !dbg !3023
  %265 = zext i1 %262 to i32, !dbg !3023
  br label %266, !dbg !3023

266:                                              ; preds = %260, %99
  %267 = phi i64 [ -9223372036854775808, %99 ], [ %264, %260 ], !dbg !3017
  %268 = phi i32 [ 1, %99 ], [ %265, %260 ], !dbg !3017
  %269 = or i32 %268, %101, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %269, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3017
  %270 = icmp slt i64 %267, %91, !dbg !3019
  br i1 %270, label %277, label %271, !dbg !3020

271:                                              ; preds = %266
  %272 = udiv i64 9223372036854775807, %59, !dbg !3021
  %273 = icmp slt i64 %272, %267, !dbg !3022
  %274 = mul nsw i64 %267, %59
  %275 = select i1 %273, i64 9223372036854775807, i64 %274, !dbg !3023
  %276 = zext i1 %273 to i32, !dbg !3023
  br label %277, !dbg !3023

277:                                              ; preds = %271, %266
  %278 = phi i64 [ -9223372036854775808, %266 ], [ %275, %271 ], !dbg !3017
  %279 = phi i32 [ 1, %266 ], [ %276, %271 ], !dbg !3017
  %280 = or i32 %279, %269, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %280, metadata !3005, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3015
  br label %192, !dbg !3088

281:                                              ; preds = %123
  %282 = udiv i64 9223372036854775807, %59, !dbg !3039
  %283 = icmp slt i64 %282, %124, !dbg !3040
  %284 = mul nsw i64 %124, %59
  %285 = select i1 %283, i64 9223372036854775807, i64 %284, !dbg !3041
  %286 = zext i1 %283 to i32, !dbg !3041
  br label %287, !dbg !3041

287:                                              ; preds = %281, %123
  %288 = phi i64 [ -9223372036854775808, %123 ], [ %285, %281 ], !dbg !3035
  %289 = phi i32 [ 1, %123 ], [ %286, %281 ], !dbg !3035
  %290 = or i32 %289, %125, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %290, metadata !3005, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3033
  br label %192, !dbg !3088

291:                                              ; preds = %137
  %292 = udiv i64 9223372036854775807, %59, !dbg !3048
  %293 = icmp slt i64 %292, %138, !dbg !3049
  %294 = mul nsw i64 %138, %59
  %295 = select i1 %293, i64 9223372036854775807, i64 %294, !dbg !3050
  %296 = zext i1 %293 to i32, !dbg !3050
  br label %297, !dbg !3050

297:                                              ; preds = %291, %137
  %298 = phi i64 [ -9223372036854775808, %137 ], [ %295, %291 ], !dbg !3044
  %299 = phi i32 [ 1, %137 ], [ %296, %291 ], !dbg !3044
  %300 = or i32 %299, %139, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %300, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3044
  %301 = icmp slt i64 %298, %129, !dbg !3046
  br i1 %301, label %308, label %302, !dbg !3047

302:                                              ; preds = %297
  %303 = udiv i64 9223372036854775807, %59, !dbg !3048
  %304 = icmp slt i64 %303, %298, !dbg !3049
  %305 = mul nsw i64 %298, %59
  %306 = select i1 %304, i64 9223372036854775807, i64 %305, !dbg !3050
  %307 = zext i1 %304 to i32, !dbg !3050
  br label %308, !dbg !3050

308:                                              ; preds = %302, %297
  %309 = phi i64 [ -9223372036854775808, %297 ], [ %306, %302 ], !dbg !3044
  %310 = phi i32 [ 1, %297 ], [ %307, %302 ], !dbg !3044
  %311 = or i32 %310, %300, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %311, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3044
  %312 = icmp slt i64 %309, %129, !dbg !3046
  br i1 %312, label %319, label %313, !dbg !3047

313:                                              ; preds = %308
  %314 = udiv i64 9223372036854775807, %59, !dbg !3048
  %315 = icmp slt i64 %314, %309, !dbg !3049
  %316 = mul nsw i64 %309, %59
  %317 = select i1 %315, i64 9223372036854775807, i64 %316, !dbg !3050
  %318 = zext i1 %315 to i32, !dbg !3050
  br label %319, !dbg !3050

319:                                              ; preds = %313, %308
  %320 = phi i64 [ -9223372036854775808, %308 ], [ %317, %313 ], !dbg !3044
  %321 = phi i32 [ 1, %308 ], [ %318, %313 ], !dbg !3044
  %322 = or i32 %321, %311, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %322, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3044
  %323 = icmp slt i64 %320, %129, !dbg !3046
  br i1 %323, label %330, label %324, !dbg !3047

324:                                              ; preds = %319
  %325 = udiv i64 9223372036854775807, %59, !dbg !3048
  %326 = icmp slt i64 %325, %320, !dbg !3049
  %327 = mul nsw i64 %320, %59
  %328 = select i1 %326, i64 9223372036854775807, i64 %327, !dbg !3050
  %329 = zext i1 %326 to i32, !dbg !3050
  br label %330, !dbg !3050

330:                                              ; preds = %324, %319
  %331 = phi i64 [ -9223372036854775808, %319 ], [ %328, %324 ], !dbg !3044
  %332 = phi i32 [ 1, %319 ], [ %329, %324 ], !dbg !3044
  %333 = or i32 %332, %322, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %333, metadata !3005, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3042
  br label %192, !dbg !3088

334:                                              ; preds = %151
  %335 = udiv i64 9223372036854775807, %59, !dbg !3057
  %336 = icmp slt i64 %335, %152, !dbg !3058
  %337 = mul nsw i64 %152, %59
  %338 = select i1 %336, i64 9223372036854775807, i64 %337, !dbg !3059
  %339 = zext i1 %336 to i32, !dbg !3059
  br label %340, !dbg !3059

340:                                              ; preds = %334, %151
  %341 = phi i64 [ -9223372036854775808, %151 ], [ %338, %334 ], !dbg !3053
  %342 = phi i32 [ 1, %151 ], [ %339, %334 ], !dbg !3053
  %343 = or i32 %342, %153, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %343, metadata !3005, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3053
  %344 = icmp slt i64 %341, %143, !dbg !3055
  br i1 %344, label %351, label %345, !dbg !3056

345:                                              ; preds = %340
  %346 = udiv i64 9223372036854775807, %59, !dbg !3057
  %347 = icmp slt i64 %346, %341, !dbg !3058
  %348 = mul nsw i64 %341, %59
  %349 = select i1 %347, i64 9223372036854775807, i64 %348, !dbg !3059
  %350 = zext i1 %347 to i32, !dbg !3059
  br label %351, !dbg !3059

351:                                              ; preds = %345, %340
  %352 = phi i64 [ -9223372036854775808, %340 ], [ %349, %345 ], !dbg !3053
  %353 = phi i32 [ 1, %340 ], [ %350, %345 ], !dbg !3053
  %354 = or i32 %353, %343, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %354, metadata !3005, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3053
  %355 = icmp slt i64 %352, %143, !dbg !3055
  br i1 %355, label %362, label %356, !dbg !3056

356:                                              ; preds = %351
  %357 = udiv i64 9223372036854775807, %59, !dbg !3057
  %358 = icmp slt i64 %357, %352, !dbg !3058
  %359 = mul nsw i64 %352, %59
  %360 = select i1 %358, i64 9223372036854775807, i64 %359, !dbg !3059
  %361 = zext i1 %358 to i32, !dbg !3059
  br label %362, !dbg !3059

362:                                              ; preds = %356, %351
  %363 = phi i64 [ -9223372036854775808, %351 ], [ %360, %356 ], !dbg !3053
  %364 = phi i32 [ 1, %351 ], [ %361, %356 ], !dbg !3053
  %365 = or i32 %364, %354, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %365, metadata !3005, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3051
  br label %192, !dbg !3088

366:                                              ; preds = %172
  %367 = udiv i64 9223372036854775807, %59, !dbg !3072
  %368 = icmp slt i64 %367, %173, !dbg !3073
  %369 = mul nsw i64 %173, %59
  %370 = select i1 %368, i64 9223372036854775807, i64 %369, !dbg !3074
  %371 = zext i1 %368 to i32, !dbg !3074
  br label %372, !dbg !3074

372:                                              ; preds = %366, %172
  %373 = phi i64 [ -9223372036854775808, %172 ], [ %370, %366 ], !dbg !3068
  %374 = phi i32 [ 1, %172 ], [ %371, %366 ], !dbg !3068
  %375 = or i32 %374, %174, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %375, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 5, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %376 = icmp slt i64 %373, %164, !dbg !3070
  br i1 %376, label %383, label %377, !dbg !3071

377:                                              ; preds = %372
  %378 = udiv i64 9223372036854775807, %59, !dbg !3072
  %379 = icmp slt i64 %378, %373, !dbg !3073
  %380 = mul nsw i64 %373, %59
  %381 = select i1 %379, i64 9223372036854775807, i64 %380, !dbg !3074
  %382 = zext i1 %379 to i32, !dbg !3074
  br label %383, !dbg !3074

383:                                              ; preds = %377, %372
  %384 = phi i64 [ -9223372036854775808, %372 ], [ %381, %377 ], !dbg !3068
  %385 = phi i32 [ 1, %372 ], [ %382, %377 ], !dbg !3068
  %386 = or i32 %385, %375, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %386, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 4, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %387 = icmp slt i64 %384, %164, !dbg !3070
  br i1 %387, label %394, label %388, !dbg !3071

388:                                              ; preds = %383
  %389 = udiv i64 9223372036854775807, %59, !dbg !3072
  %390 = icmp slt i64 %389, %384, !dbg !3073
  %391 = mul nsw i64 %384, %59
  %392 = select i1 %390, i64 9223372036854775807, i64 %391, !dbg !3074
  %393 = zext i1 %390 to i32, !dbg !3074
  br label %394, !dbg !3074

394:                                              ; preds = %388, %383
  %395 = phi i64 [ -9223372036854775808, %383 ], [ %392, %388 ], !dbg !3068
  %396 = phi i32 [ 1, %383 ], [ %393, %388 ], !dbg !3068
  %397 = or i32 %396, %386, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %397, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %398 = icmp slt i64 %395, %164, !dbg !3070
  br i1 %398, label %405, label %399, !dbg !3071

399:                                              ; preds = %394
  %400 = udiv i64 9223372036854775807, %59, !dbg !3072
  %401 = icmp slt i64 %400, %395, !dbg !3073
  %402 = mul nsw i64 %395, %59
  %403 = select i1 %401, i64 9223372036854775807, i64 %402, !dbg !3074
  %404 = zext i1 %401 to i32, !dbg !3074
  br label %405, !dbg !3074

405:                                              ; preds = %399, %394
  %406 = phi i64 [ -9223372036854775808, %394 ], [ %403, %399 ], !dbg !3068
  %407 = phi i32 [ 1, %394 ], [ %404, %399 ], !dbg !3068
  %408 = or i32 %407, %397, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %408, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %409 = icmp slt i64 %406, %164, !dbg !3070
  br i1 %409, label %416, label %410, !dbg !3071

410:                                              ; preds = %405
  %411 = udiv i64 9223372036854775807, %59, !dbg !3072
  %412 = icmp slt i64 %411, %406, !dbg !3073
  %413 = mul nsw i64 %406, %59
  %414 = select i1 %412, i64 9223372036854775807, i64 %413, !dbg !3074
  %415 = zext i1 %412 to i32, !dbg !3074
  br label %416, !dbg !3074

416:                                              ; preds = %410, %405
  %417 = phi i64 [ -9223372036854775808, %405 ], [ %414, %410 ], !dbg !3068
  %418 = phi i32 [ 1, %405 ], [ %415, %410 ], !dbg !3068
  %419 = or i32 %418, %408, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %419, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %420 = icmp slt i64 %417, %164, !dbg !3070
  br i1 %420, label %427, label %421, !dbg !3071

421:                                              ; preds = %416
  %422 = udiv i64 9223372036854775807, %59, !dbg !3072
  %423 = icmp slt i64 %422, %417, !dbg !3073
  %424 = mul nsw i64 %417, %59
  %425 = select i1 %423, i64 9223372036854775807, i64 %424, !dbg !3074
  %426 = zext i1 %423 to i32, !dbg !3074
  br label %427, !dbg !3074

427:                                              ; preds = %421, %416
  %428 = phi i64 [ -9223372036854775808, %416 ], [ %425, %421 ], !dbg !3068
  %429 = phi i32 [ 1, %416 ], [ %426, %421 ], !dbg !3068
  %430 = or i32 %429, %419, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %430, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3068
  %431 = icmp slt i64 %428, %164, !dbg !3070
  br i1 %431, label %438, label %432, !dbg !3071

432:                                              ; preds = %427
  %433 = udiv i64 9223372036854775807, %59, !dbg !3072
  %434 = icmp slt i64 %433, %428, !dbg !3073
  %435 = mul nsw i64 %428, %59
  %436 = select i1 %434, i64 9223372036854775807, i64 %435, !dbg !3074
  %437 = zext i1 %434 to i32, !dbg !3074
  br label %438, !dbg !3074

438:                                              ; preds = %432, %427
  %439 = phi i64 [ -9223372036854775808, %427 ], [ %436, %432 ], !dbg !3068
  %440 = phi i32 [ 1, %427 ], [ %437, %432 ], !dbg !3068
  %441 = or i32 %440, %430, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %441, metadata !3005, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3066
  br label %192, !dbg !3088

442:                                              ; preds = %186
  %443 = udiv i64 9223372036854775807, %59, !dbg !3081
  %444 = icmp slt i64 %443, %187, !dbg !3082
  %445 = mul nsw i64 %187, %59
  %446 = select i1 %444, i64 9223372036854775807, i64 %445, !dbg !3083
  %447 = zext i1 %444 to i32, !dbg !3083
  br label %448, !dbg !3083

448:                                              ; preds = %442, %186
  %449 = phi i64 [ -9223372036854775808, %186 ], [ %446, %442 ], !dbg !3077
  %450 = phi i32 [ 1, %186 ], [ %447, %442 ], !dbg !3077
  %451 = or i32 %450, %188, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %451, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 4, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %452 = icmp slt i64 %449, %178, !dbg !3079
  br i1 %452, label %459, label %453, !dbg !3080

453:                                              ; preds = %448
  %454 = udiv i64 9223372036854775807, %59, !dbg !3081
  %455 = icmp slt i64 %454, %449, !dbg !3082
  %456 = mul nsw i64 %449, %59
  %457 = select i1 %455, i64 9223372036854775807, i64 %456, !dbg !3083
  %458 = zext i1 %455 to i32, !dbg !3083
  br label %459, !dbg !3083

459:                                              ; preds = %453, %448
  %460 = phi i64 [ -9223372036854775808, %448 ], [ %457, %453 ], !dbg !3077
  %461 = phi i32 [ 1, %448 ], [ %458, %453 ], !dbg !3077
  %462 = or i32 %461, %451, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %462, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 3, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %463 = icmp slt i64 %460, %178, !dbg !3079
  br i1 %463, label %470, label %464, !dbg !3080

464:                                              ; preds = %459
  %465 = udiv i64 9223372036854775807, %59, !dbg !3081
  %466 = icmp slt i64 %465, %460, !dbg !3082
  %467 = mul nsw i64 %460, %59
  %468 = select i1 %466, i64 9223372036854775807, i64 %467, !dbg !3083
  %469 = zext i1 %466 to i32, !dbg !3083
  br label %470, !dbg !3083

470:                                              ; preds = %464, %459
  %471 = phi i64 [ -9223372036854775808, %459 ], [ %468, %464 ], !dbg !3077
  %472 = phi i32 [ 1, %459 ], [ %469, %464 ], !dbg !3077
  %473 = or i32 %472, %462, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %473, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 2, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %474 = icmp slt i64 %471, %178, !dbg !3079
  br i1 %474, label %481, label %475, !dbg !3080

475:                                              ; preds = %470
  %476 = udiv i64 9223372036854775807, %59, !dbg !3081
  %477 = icmp slt i64 %476, %471, !dbg !3082
  %478 = mul nsw i64 %471, %59
  %479 = select i1 %477, i64 9223372036854775807, i64 %478, !dbg !3083
  %480 = zext i1 %477 to i32, !dbg !3083
  br label %481, !dbg !3083

481:                                              ; preds = %475, %470
  %482 = phi i64 [ -9223372036854775808, %470 ], [ %479, %475 ], !dbg !3077
  %483 = phi i32 [ 1, %470 ], [ %480, %475 ], !dbg !3077
  %484 = or i32 %483, %473, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %484, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %485 = icmp slt i64 %482, %178, !dbg !3079
  br i1 %485, label %492, label %486, !dbg !3080

486:                                              ; preds = %481
  %487 = udiv i64 9223372036854775807, %59, !dbg !3081
  %488 = icmp slt i64 %487, %482, !dbg !3082
  %489 = mul nsw i64 %482, %59
  %490 = select i1 %488, i64 9223372036854775807, i64 %489, !dbg !3083
  %491 = zext i1 %488 to i32, !dbg !3083
  br label %492, !dbg !3083

492:                                              ; preds = %486, %481
  %493 = phi i64 [ -9223372036854775808, %481 ], [ %490, %486 ], !dbg !3077
  %494 = phi i32 [ 1, %481 ], [ %491, %486 ], !dbg !3077
  %495 = or i32 %494, %484, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %495, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64* undef, metadata !2977, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 undef, metadata !2982, metadata !DIExpression()), !dbg !3077
  %496 = icmp slt i64 %493, %178, !dbg !3079
  br i1 %496, label %503, label %497, !dbg !3080

497:                                              ; preds = %492
  %498 = udiv i64 9223372036854775807, %59, !dbg !3081
  %499 = icmp slt i64 %498, %493, !dbg !3082
  %500 = mul nsw i64 %493, %59
  %501 = select i1 %499, i64 9223372036854775807, i64 %500, !dbg !3083
  %502 = zext i1 %499 to i32, !dbg !3083
  br label %503, !dbg !3083

503:                                              ; preds = %497, %492
  %504 = phi i64 [ -9223372036854775808, %492 ], [ %501, %497 ], !dbg !3077
  %505 = phi i32 [ 1, %492 ], [ %502, %497 ], !dbg !3077
  %506 = or i32 %505, %495, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %506, metadata !3005, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3075
  br label %192, !dbg !3088
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #23

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3105 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3113
  %3 = icmp eq i64 %0, 0, !dbg !3114
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3115
  br i1 %5, label %11, label %6, !dbg !3115

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3110, metadata !DIExpression()), !dbg !3116
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3117
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3117
  br i1 %8, label %9, label %11, !dbg !3119

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3120
  store i32 12, i32* %10, align 4, !dbg !3122, !tbaa !792
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %12, metadata !3108, metadata !DIExpression()), !dbg !3113
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3123
  call void @llvm.dbg.value(metadata i8* %14, metadata !3109, metadata !DIExpression()), !dbg !3113
  br label %15, !dbg !3124

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3113
  ret i8* %16, !dbg !3125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3126 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3142, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8* %1, metadata !3143, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !3144, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3145, metadata !DIExpression()), !dbg !3151
  %6 = bitcast i32* %5 to i8*, !dbg !3152
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3152
  %7 = icmp eq i32* %0, null, !dbg !3153
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3155
  call void @llvm.dbg.value(metadata i32* %8, metadata !3142, metadata !DIExpression()), !dbg !3151
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %9, metadata !3146, metadata !DIExpression()), !dbg !3151
  %10 = icmp ugt i64 %9, -3, !dbg !3157
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3158
  br i1 %12, label %13, label %18, !dbg !3158

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3159
  br i1 %14, label %18, label %15, !dbg !3160

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3161, !tbaa !800
  call void @llvm.dbg.value(metadata i8 %16, metadata !3148, metadata !DIExpression()), !dbg !3162
  %17 = zext i8 %16 to i32, !dbg !3163
  store i32 %17, i32* %8, align 4, !dbg !3164, !tbaa !792
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3165
  ret i64 %19, !dbg !3165
}

; Function Attrs: nounwind
declare !dbg !3166 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3170 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3208, metadata !DIExpression()), !dbg !3213
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3214
  call void @llvm.dbg.value(metadata i1 undef, metadata !3209, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3215, metadata !DIExpression()), !dbg !3218
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3220
  %4 = load i32, i32* %3, align 8, !dbg !3220, !tbaa !903
  %5 = and i32 %4, 32, !dbg !3221
  %6 = icmp eq i32 %5, 0, !dbg !3221
  call void @llvm.dbg.value(metadata i1 %6, metadata !3211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3213
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3222
  %8 = icmp eq i32 %7, 0, !dbg !3223
  call void @llvm.dbg.value(metadata i1 %8, metadata !3212, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3213
  br i1 %6, label %9, label %19, !dbg !3224

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3226
  call void @llvm.dbg.value(metadata i1 %10, metadata !3209, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3213
  %11 = or i1 %10, %8, !dbg !3227
  %12 = xor i1 %8, true, !dbg !3227
  %13 = sext i1 %12 to i32, !dbg !3227
  br i1 %11, label %22, label %14, !dbg !3227

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3228
  %16 = load i32, i32* %15, align 4, !dbg !3228, !tbaa !792
  %17 = icmp ne i32 %16, 9, !dbg !3229
  %18 = sext i1 %17 to i32, !dbg !3230
  br label %22, !dbg !3230

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3231

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3233
  store i32 0, i32* %21, align 4, !dbg !3235, !tbaa !792
  br label %22, !dbg !3233

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3213
  ret i32 %23, !dbg !3236
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3237 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()), !dbg !3244
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3245
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3245
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3240, metadata !DIExpression()), !dbg !3246
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3247
  %5 = icmp eq i32 %4, 0, !dbg !3247
  br i1 %5, label %6, label %13, !dbg !3249

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3250
  %8 = load i16, i16* %7, align 16, !dbg !3250
  %9 = icmp eq i16 %8, 67, !dbg !3250
  br i1 %9, label %13, label %10, !dbg !3251

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0), i64 6), !dbg !3252
  %12 = icmp ne i32 %11, 0, !dbg !3253
  br label %13, !dbg !3251

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3254
  ret i1 %14, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3255 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3261
  %2 = icmp eq i8* %1, null, !dbg !3262
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()), !dbg !3261
  %4 = load i8, i8* %3, align 1, !dbg !3265, !tbaa !800
  %5 = icmp eq i8 %4, 0, !dbg !3269
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %3, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %6, metadata !3259, metadata !DIExpression()), !dbg !3261
  ret i8* %6, !dbg !3271
}

; Function Attrs: nounwind
declare !dbg !3272 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %2, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()) #25, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()) #25, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3287, metadata !DIExpression()) #25, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %0, metadata !3294, metadata !DIExpression()) #25, !dbg !3300
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %4, metadata !3299, metadata !DIExpression()) #25, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %4, metadata !3288, metadata !DIExpression()) #25, !dbg !3292
  %5 = icmp eq i8* %4, null, !dbg !3303
  br i1 %5, label %6, label %9, !dbg !3304

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3305
  br i1 %7, label %19, label %8, !dbg !3308

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3309, !tbaa !800
  br label %19, !dbg !3310

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %10, metadata !3289, metadata !DIExpression()) #25, !dbg !3312
  %11 = icmp ult i64 %10, %2, !dbg !3313
  br i1 %11, label %12, label %14, !dbg !3315

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()) #25, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %4, metadata !3321, metadata !DIExpression()) #25, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %13, metadata !3322, metadata !DIExpression()) #25, !dbg !3323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3325
  br label %19, !dbg !3326

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3327
  br i1 %15, label %19, label %16, !dbg !3330

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %4, metadata !3321, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %17, metadata !3322, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3335
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3336
  store i8 0, i8* %18, align 1, !dbg !3337, !tbaa !800
  br label %19, !dbg !3338

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3339
  ret i32 %20, !dbg !3340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3341 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %0, metadata !3294, metadata !DIExpression()) #25, !dbg !3345
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %2, metadata !3299, metadata !DIExpression()) #25, !dbg !3345
  ret i8* %2, !dbg !3348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3349 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 0, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 0, metadata !3390, metadata !DIExpression()), !dbg !3391
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3392
  call void @llvm.dbg.value(metadata i32 %2, metadata !3389, metadata !DIExpression()), !dbg !3391
  %3 = icmp slt i32 %2, 0, !dbg !3393
  br i1 %3, label %4, label %6, !dbg !3395

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3396
  br label %24, !dbg !3397

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3398
  %8 = icmp eq i32 %7, 0, !dbg !3398
  br i1 %8, label %13, label %9, !dbg !3400

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3401
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3402
  %12 = icmp eq i64 %11, -1, !dbg !3403
  br i1 %12, label %16, label %13, !dbg !3404

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3405
  %15 = icmp eq i32 %14, 0, !dbg !3405
  br i1 %15, label %16, label %18, !dbg !3406

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3388, metadata !DIExpression()), !dbg !3391
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %21, metadata !3390, metadata !DIExpression()), !dbg !3391
  br label %24, !dbg !3408

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3409
  %20 = load i32, i32* %19, align 4, !dbg !3409, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %20, metadata !3388, metadata !DIExpression()), !dbg !3391
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %21, metadata !3390, metadata !DIExpression()), !dbg !3391
  %22 = icmp eq i32 %20, 0, !dbg !3410
  br i1 %22, label %24, label %23, !dbg !3408

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3412, !tbaa !792
  call void @llvm.dbg.value(metadata i32 -1, metadata !3390, metadata !DIExpression()), !dbg !3391
  br label %24, !dbg !3414

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3391
  ret i32 %25, !dbg !3415
}

; Function Attrs: nofree nounwind
declare !dbg !3416 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3419 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3420 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3423 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3461, metadata !DIExpression()), !dbg !3462
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3463
  br i1 %2, label %6, label %3, !dbg !3465

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3466
  %5 = icmp eq i32 %4, 0, !dbg !3466
  br i1 %5, label %6, label %8, !dbg !3467

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3468
  br label %17, !dbg !3469

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3470, metadata !DIExpression()) #25, !dbg !3475
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3477
  %10 = load i32, i32* %9, align 8, !dbg !3477, !tbaa !903
  %11 = and i32 %10, 256, !dbg !3479
  %12 = icmp eq i32 %11, 0, !dbg !3479
  br i1 %12, label %15, label %13, !dbg !3480

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3481
  br label %15, !dbg !3481

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3482
  br label %17, !dbg !3483

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3462
  ret i32 %18, !dbg !3484
}

; Function Attrs: nofree nounwind
declare !dbg !3485 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3488 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3527, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %2, metadata !3529, metadata !DIExpression()), !dbg !3533
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3534
  %5 = load i8*, i8** %4, align 8, !dbg !3534, !tbaa !3535
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3536
  %7 = load i8*, i8** %6, align 8, !dbg !3536, !tbaa !3537
  %8 = icmp eq i8* %5, %7, !dbg !3538
  br i1 %8, label %9, label %28, !dbg !3539

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3540
  %11 = load i8*, i8** %10, align 8, !dbg !3540, !tbaa !3541
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3542
  %13 = load i8*, i8** %12, align 8, !dbg !3542, !tbaa !3543
  %14 = icmp eq i8* %11, %13, !dbg !3544
  br i1 %14, label %15, label %28, !dbg !3545

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3546
  %17 = load i8*, i8** %16, align 8, !dbg !3546, !tbaa !3547
  %18 = icmp eq i8* %17, null, !dbg !3548
  br i1 %18, label %19, label %28, !dbg !3549

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3550
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %21, metadata !3530, metadata !DIExpression()), !dbg !3552
  %22 = icmp eq i64 %21, -1, !dbg !3553
  br i1 %22, label %30, label %23, !dbg !3555

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3556
  %25 = load i32, i32* %24, align 8, !dbg !3557, !tbaa !903
  %26 = and i32 %25, -17, !dbg !3557
  store i32 %26, i32* %24, align 8, !dbg !3557, !tbaa !903
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3558
  store i64 %21, i64* %27, align 8, !dbg !3559, !tbaa !3560
  br label %30, !dbg !3561

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3562
  br label %30, !dbg !3563

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3533
  ret i32 %31, !dbg !3564
}

; Function Attrs: nofree nounwind
declare !dbg !3565 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #23 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !80, !86, !93, !99, !105, !196, !190, !203, !220, !222, !225, !227, !230, !232, !234, !623, !625, !627, !629}
!llvm.ident = !{!631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631, !631}
!llvm.module.flags = !{!632, !633, !634, !635, !636}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !65, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nice.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13, !21, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 25, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!63 = !{!7, !27, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{!0}
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !76)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !69, line: 50, size: 256, elements: !70)
!69 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!70 = !{!71, !72, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 52, baseType: !35, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !68, file: !69, line: 55, baseType: !25, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !68, file: !69, line: 56, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !69, line: 57, baseType: !25, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "Version", scope: !80, file: !81, line: 2, type: !35, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !83, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!82 = !{}
!83 = !{!78}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "file_name", scope: !86, file: !87, line: 46, type: !35, isLocal: true, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !88, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!88 = !{!84, !89}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !86, file: !87, line: 56, type: !38, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "exit_failure", scope: !93, file: !94, line: 24, type: !96, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !95, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!95 = !{!91}
!96 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "program_name", scope: !99, file: !100, line: 33, type: !35, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !101, globals: !102, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!101 = !{!64, !27}
!102 = !{!97}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !105, file: !106, line: 85, type: !184, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !142, globals: !147, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!107 = !{!108, !122, !127}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !109, line: 32, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!111 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!114 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!115 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!116 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!117 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!118 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!119 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!120 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!121 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !109, line: 242, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 46, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!130 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!142 = !{!25, !143, !144, !27}
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 46, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!146 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!147 = !{!103, !148, !154, !166, !168, !173, !180, !182}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !105, file: !106, line: 101, type: !150, isLocal: false, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !105, file: !106, line: 1052, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !106, line: 65, size: 448, elements: !157)
!157 = !{!158, !159, !160, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !106, line: 68, baseType: !108, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !106, line: 71, baseType: !25, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !106, line: 75, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !106, line: 78, baseType: !35, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !106, line: 81, baseType: !35, size: 64, offset: 384)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !105, file: !106, line: 116, type: !156, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "slot0", scope: !105, file: !106, line: 842, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slotvec", scope: !105, file: !106, line: 845, type: !175, isLocal: true, isDefinition: true)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !106, line: 834, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !106, line: 836, baseType: !144, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !176, file: !106, line: 837, baseType: !27, size: 64, offset: 64)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "nslots", scope: !105, file: !106, line: 843, type: !25, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "slotvec0", scope: !105, file: !106, line: 844, type: !176, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 704, elements: !186)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!186 = !{!187}
!187 = !DISubrange(count: 11)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !190, file: !191, line: 26, type: !193, isLocal: false, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !192, splitDebugInlining: false, nameTableKind: None)
!191 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!192 = !{!188}
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 47)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !198, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = !{!199}
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 40, baseType: !7, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!202 = !{!64}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !219, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!206}
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !208, file: !207, line: 186, baseType: !7, size: 32, elements: !217)
!207 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = distinct !DISubprogram(name: "x2nrealloc", scope: !207, file: !207, line: 174, type: !209, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!64, !64, !211, !144}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!212 = !{!213, !214, !215, !216}
!213 = !DILocalVariable(name: "p", arg: 1, scope: !208, file: !207, line: 174, type: !64)
!214 = !DILocalVariable(name: "pn", arg: 2, scope: !208, file: !207, line: 174, type: !211)
!215 = !DILocalVariable(name: "s", arg: 3, scope: !208, file: !207, line: 174, type: !144)
!216 = !DILocalVariable(name: "n", scope: !208, file: !207, line: 176, type: !144)
!217 = !{!218}
!218 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!219 = !{!144, !27, !64}
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = !{!13}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!144}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !236, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!236 = !{!237}
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 41, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!240 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!241 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!242 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!243 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!247 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!278 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!279 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!280 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!281 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!282 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!283 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!284 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!285 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!286 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!287 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!288 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!289 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!348 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!435 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!509 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!510 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!511 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!512 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!513 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!514 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!516 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!517 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!518 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!519 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!520 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!521 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!522 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!524 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!526 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!555 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!556 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!557 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!558 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!559 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!564 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!565 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!566 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!567 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, splitDebugInlining: false, nameTableKind: None)
!626 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!628 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !202, splitDebugInlining: false, nameTableKind: None)
!630 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!631 = !{!"clang version 12.0.1"}
!632 = !{i32 7, !"Dwarf Version", i32 4}
!633 = !{i32 2, !"Debug Info Version", i32 3}
!634 = !{i32 1, !"wchar_size", i32 4}
!635 = !{i32 7, !"PIC Level", i32 2}
!636 = !{i32 7, !"PIE Level", i32 2}
!637 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !638, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !25}
!640 = !{!641}
!641 = !DILocalVariable(name: "status", arg: 1, scope: !637, file: !3, line: 67, type: !25)
!642 = !DILocation(line: 0, scope: !637)
!643 = !DILocation(line: 69, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !637, file: !3, line: 69, column: 7)
!645 = !DILocation(line: 69, column: 7, scope: !637)
!646 = !DILocation(line: 70, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 70, column: 5)
!648 = !{!649, !649, i64 0}
!649 = !{!"any pointer", !650, i64 0}
!650 = !{!"omnipotent char", !651, i64 0}
!651 = !{!"Simple C/C++ TBAA"}
!652 = !DILocation(line: 73, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !644, file: !3, line: 72, column: 5)
!654 = !DILocation(line: 74, column: 7, scope: !653)
!655 = !DILocation(line: 590, column: 3, scope: !656, inlinedAt: !659)
!656 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !657, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!657 = !DISubroutineType(types: !658)
!658 = !{null}
!659 = distinct !DILocation(line: 81, column: 7, scope: !653)
!660 = !DILocation(line: 83, column: 7, scope: !653)
!661 = !DILocation(line: 86, column: 7, scope: !653)
!662 = !DILocation(line: 87, column: 7, scope: !653)
!663 = !DILocation(line: 88, column: 7, scope: !653)
!664 = !DILocalVariable(name: "program", arg: 1, scope: !665, file: !6, line: 634, type: !35)
!665 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !666, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !35}
!668 = !{!664, !669, !678, !679, !681}
!669 = !DILocalVariable(name: "infomap", scope: !665, file: !6, line: 636, type: !670)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 896, elements: !676)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !665, file: !6, line: 636, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !672, file: !6, line: 636, baseType: !35, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !6, line: 636, baseType: !35, size: 64, offset: 64)
!676 = !{!677}
!677 = !DISubrange(count: 7)
!678 = !DILocalVariable(name: "node", scope: !665, file: !6, line: 646, type: !35)
!679 = !DILocalVariable(name: "map_prog", scope: !665, file: !6, line: 647, type: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!681 = !DILocalVariable(name: "lc_messages", scope: !665, file: !6, line: 659, type: !35)
!682 = !DILocation(line: 0, scope: !665, inlinedAt: !683)
!683 = distinct !DILocation(line: 89, column: 7, scope: !653)
!684 = !DILocation(line: 636, column: 3, scope: !665, inlinedAt: !683)
!685 = !DILocation(line: 636, column: 67, scope: !665, inlinedAt: !683)
!686 = !DILocation(line: 647, column: 36, scope: !665, inlinedAt: !683)
!687 = !DILocation(line: 649, column: 3, scope: !665, inlinedAt: !683)
!688 = !DILocation(line: 649, column: 33, scope: !665, inlinedAt: !683)
!689 = !DILocation(line: 650, column: 13, scope: !665, inlinedAt: !683)
!690 = !DILocation(line: 649, column: 20, scope: !665, inlinedAt: !683)
!691 = !{!692, !649, i64 0}
!692 = !{!"infomap", !649, i64 0, !649, i64 8}
!693 = !DILocation(line: 649, column: 10, scope: !665, inlinedAt: !683)
!694 = !DILocation(line: 649, column: 28, scope: !665, inlinedAt: !683)
!695 = distinct !{!695, !687, !689, !696}
!696 = !{!"llvm.loop.mustprogress"}
!697 = !DILocation(line: 652, column: 17, scope: !698, inlinedAt: !683)
!698 = distinct !DILexicalBlock(scope: !665, file: !6, line: 652, column: 7)
!699 = !{!692, !649, i64 8}
!700 = !DILocation(line: 652, column: 7, scope: !698, inlinedAt: !683)
!701 = !DILocation(line: 652, column: 7, scope: !665, inlinedAt: !683)
!702 = !DILocation(line: 655, column: 3, scope: !665, inlinedAt: !683)
!703 = !DILocation(line: 659, column: 29, scope: !665, inlinedAt: !683)
!704 = !DILocation(line: 660, column: 7, scope: !705, inlinedAt: !683)
!705 = distinct !DILexicalBlock(scope: !665, file: !6, line: 660, column: 7)
!706 = !DILocation(line: 660, column: 19, scope: !705, inlinedAt: !683)
!707 = !DILocation(line: 660, column: 22, scope: !705, inlinedAt: !683)
!708 = !DILocation(line: 660, column: 7, scope: !665, inlinedAt: !683)
!709 = !DILocation(line: 666, column: 7, scope: !710, inlinedAt: !683)
!710 = distinct !DILexicalBlock(scope: !705, file: !6, line: 661, column: 5)
!711 = !DILocation(line: 668, column: 5, scope: !710, inlinedAt: !683)
!712 = !DILocation(line: 669, column: 3, scope: !665, inlinedAt: !683)
!713 = !DILocation(line: 671, column: 3, scope: !665, inlinedAt: !683)
!714 = !DILocation(line: 673, column: 1, scope: !665, inlinedAt: !683)
!715 = !DILocation(line: 91, column: 3, scope: !637)
!716 = !DISubprogram(name: "dcgettext", scope: !717, file: !717, line: 51, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!717 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!718 = !DISubroutineType(types: !719)
!719 = !{!27, !35, !35, !25}
!720 = !DISubprogram(name: "fputs_unlocked", scope: !721, file: !721, line: 667, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!721 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!722 = !DISubroutineType(types: !723)
!723 = !{!25, !35, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !727)
!726 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !743, !744, !745, !746, !749, !750, !752, !756, !759, !761, !764, !767, !768, !769, !770, !771}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !725, file: !726, line: 51, baseType: !25, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !725, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !725, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !725, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !725, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !725, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !725, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !725, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !725, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !725, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !725, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !725, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !725, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !726, line: 36, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !725, file: !726, line: 70, baseType: !724, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !725, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !725, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !725, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !748, line: 152, baseType: !52)
!748 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !725, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !725, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!751 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !725, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 1)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !725, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !726, line: 43, baseType: null)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !725, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !748, line: 153, baseType: !52)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !725, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !726, line: 37, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !725, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !726, line: 38, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !725, file: !726, line: 93, baseType: !724, size: 64, offset: 1344)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !725, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !725, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !725, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !725, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 20)
!775 = !DISubprogram(name: "setlocale", scope: !776, file: !776, line: 122, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!776 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!777 = !DISubroutineType(types: !778)
!778 = !{!27, !25, !35}
!779 = !DILocation(line: 0, scope: !22)
!780 = !DILocation(line: 110, column: 21, scope: !22)
!781 = !DILocation(line: 110, column: 3, scope: !22)
!782 = !DILocation(line: 111, column: 3, scope: !22)
!783 = !DILocation(line: 112, column: 3, scope: !22)
!784 = !DILocation(line: 113, column: 3, scope: !22)
!785 = !DILocalVariable(name: "status", arg: 1, scope: !786, file: !6, line: 99, type: !25)
!786 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !638, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!785}
!788 = !DILocation(line: 0, scope: !786, inlinedAt: !789)
!789 = distinct !DILocation(line: 115, column: 3, scope: !22)
!790 = !DILocation(line: 102, column: 18, scope: !791, inlinedAt: !789)
!791 = distinct !DILexicalBlock(scope: !786, file: !6, line: 101, column: 7)
!792 = !{!793, !793, i64 0}
!793 = !{!"int", !650, i64 0}
!794 = !DILocation(line: 116, column: 3, scope: !22)
!795 = !DILocation(line: 118, column: 17, scope: !42)
!796 = !DILocation(line: 118, column: 3, scope: !43)
!797 = !DILocation(line: 120, column: 23, scope: !41)
!798 = !DILocation(line: 0, scope: !41)
!799 = !DILocation(line: 122, column: 11, scope: !46)
!800 = !{!650, !650, i64 0}
!801 = !DILocation(line: 122, column: 16, scope: !46)
!802 = !DILocation(line: 122, column: 23, scope: !46)
!803 = !DILocation(line: 122, column: 26, scope: !46)
!804 = !DILocation(line: 122, column: 11, scope: !41)
!805 = !DILocation(line: 125, column: 11, scope: !806)
!806 = distinct !DILexicalBlock(scope: !46, file: !3, line: 123, column: 9)
!807 = !DILocation(line: 126, column: 9, scope: !806)
!808 = !DILocation(line: 130, column: 37, scope: !45)
!809 = !DILocation(line: 130, column: 32, scope: !45)
!810 = !DILocation(line: 0, scope: !45)
!811 = !DILocation(line: 131, column: 35, scope: !45)
!812 = !DILocation(line: 134, column: 26, scope: !45)
!813 = !DILocation(line: 134, column: 24, scope: !45)
!814 = !DILocation(line: 137, column: 18, scope: !45)
!815 = !DILocation(line: 139, column: 15, scope: !45)
!816 = !DILocation(line: 140, column: 16, scope: !45)
!817 = !DILocation(line: 140, column: 13, scope: !45)
!818 = !DILocation(line: 142, column: 11, scope: !45)
!819 = !DILocation(line: 151, column: 13, scope: !820)
!820 = distinct !DILexicalBlock(scope: !45, file: !3, line: 143, column: 13)
!821 = !DILocation(line: 153, column: 13, scope: !820)
!822 = !DILocation(line: 156, column: 15, scope: !820)
!823 = !DILocation(line: 145, column: 34, scope: !820)
!824 = !DILocation(line: 0, scope: !46)
!825 = !DILocation(line: 0, scope: !43)
!826 = !DILocation(line: 165, column: 7, scope: !51)
!827 = !DILocation(line: 165, column: 7, scope: !22)
!828 = !DILocation(line: 171, column: 7, scope: !50)
!829 = !DILocation(line: 0, scope: !50)
!830 = !DILocation(line: 172, column: 30, scope: !831)
!831 = distinct !DILexicalBlock(scope: !50, file: !3, line: 172, column: 11)
!832 = !DILocation(line: 172, column: 28, scope: !831)
!833 = !DILocation(line: 172, column: 11, scope: !50)
!834 = !DILocation(line: 173, column: 9, scope: !831)
!835 = !DILocation(line: 178, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !22, file: !3, line: 178, column: 7)
!837 = !DILocation(line: 178, column: 7, scope: !22)
!838 = !DILocation(line: 175, column: 20, scope: !50)
!839 = !{!840, !840, i64 0}
!840 = !{!"long", !650, i64 0}
!841 = !DILocation(line: 176, column: 5, scope: !51)
!842 = !DILocation(line: 182, column: 24, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 181, column: 9)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 180, column: 11)
!845 = distinct !DILexicalBlock(scope: !836, file: !3, line: 179, column: 5)
!846 = !DILocation(line: 182, column: 11, scope: !843)
!847 = !DILocation(line: 183, column: 11, scope: !843)
!848 = !DILocation(line: 186, column: 7, scope: !845)
!849 = !DILocation(line: 186, column: 13, scope: !845)
!850 = !DILocation(line: 187, column: 26, scope: !845)
!851 = !DILocation(line: 188, column: 28, scope: !852)
!852 = distinct !DILexicalBlock(scope: !845, file: !3, line: 188, column: 11)
!853 = !DILocation(line: 188, column: 34, scope: !852)
!854 = !DILocation(line: 188, column: 37, scope: !852)
!855 = !DILocation(line: 188, column: 43, scope: !852)
!856 = !DILocation(line: 188, column: 11, scope: !845)
!857 = !DILocation(line: 189, column: 9, scope: !852)
!858 = !DILocation(line: 190, column: 7, scope: !845)
!859 = !DILocation(line: 191, column: 7, scope: !845)
!860 = !DILocation(line: 194, column: 3, scope: !22)
!861 = !DILocation(line: 194, column: 9, scope: !22)
!862 = !DILocation(line: 198, column: 22, scope: !22)
!863 = !DILocation(line: 199, column: 24, scope: !864)
!864 = distinct !DILexicalBlock(scope: !22, file: !3, line: 199, column: 7)
!865 = !DILocation(line: 199, column: 30, scope: !864)
!866 = !DILocation(line: 199, column: 33, scope: !864)
!867 = !DILocation(line: 199, column: 39, scope: !864)
!868 = !DILocation(line: 199, column: 7, scope: !22)
!869 = !DILocation(line: 200, column: 5, scope: !864)
!870 = !DILocation(line: 201, column: 56, scope: !22)
!871 = !DILocation(line: 201, column: 9, scope: !22)
!872 = !DILocation(line: 201, column: 70, scope: !22)
!873 = !DILocation(line: 203, column: 7, scope: !22)
!874 = !DILocation(line: 205, column: 34, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 204, column: 5)
!876 = distinct !DILexicalBlock(scope: !22, file: !3, line: 203, column: 7)
!877 = !DILocalVariable(name: "err", arg: 1, scope: !878, file: !3, line: 95, type: !25)
!878 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 95, type: !879, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!38, !25}
!881 = !{!877}
!882 = !DILocation(line: 0, scope: !878, inlinedAt: !883)
!883 = distinct !DILocation(line: 205, column: 14, scope: !875)
!884 = !DILocation(line: 97, column: 14, scope: !878, inlinedAt: !883)
!885 = !DILocation(line: 97, column: 24, scope: !878, inlinedAt: !883)
!886 = !DILocation(line: 205, column: 14, scope: !875)
!887 = !DILocation(line: 206, column: 38, scope: !875)
!888 = !DILocation(line: 205, column: 7, scope: !875)
!889 = !DILocation(line: 212, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !875, file: !3, line: 212, column: 11)
!891 = !DILocalVariable(name: "__stream", arg: 1, scope: !892, file: !893, line: 135, type: !896)
!892 = distinct !DISubprogram(name: "ferror_unlocked", scope: !893, file: !893, line: 135, type: !894, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!893 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!894 = !DISubroutineType(types: !895)
!895 = !{!25, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !725)
!898 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!899 = !{!891}
!900 = !DILocation(line: 0, scope: !892, inlinedAt: !901)
!901 = distinct !DILocation(line: 212, column: 11, scope: !890)
!902 = !DILocation(line: 137, column: 10, scope: !892, inlinedAt: !901)
!903 = !{!904, !793, i64 0}
!904 = !{!"_IO_FILE", !793, i64 0, !649, i64 8, !649, i64 16, !649, i64 24, !649, i64 32, !649, i64 40, !649, i64 48, !649, i64 56, !649, i64 64, !649, i64 72, !649, i64 80, !649, i64 88, !649, i64 96, !649, i64 104, !793, i64 112, !793, i64 116, !840, i64 120, !905, i64 128, !650, i64 130, !650, i64 131, !649, i64 136, !840, i64 144, !649, i64 152, !649, i64 160, !649, i64 168, !649, i64 176, !840, i64 184, !793, i64 192, !650, i64 196}
!905 = !{!"short", !650, i64 0}
!906 = !DILocation(line: 212, column: 11, scope: !875)
!907 = !DILocation(line: 216, column: 11, scope: !22)
!908 = !DILocation(line: 216, column: 3, scope: !22)
!909 = !DILocation(line: 218, column: 21, scope: !22)
!910 = !DILocation(line: 218, column: 27, scope: !22)
!911 = !DILocation(line: 219, column: 33, scope: !22)
!912 = !DILocation(line: 219, column: 26, scope: !22)
!913 = !DILocation(line: 219, column: 3, scope: !22)
!914 = !DILocation(line: 221, column: 1, scope: !22)
!915 = !DISubprogram(name: "bindtextdomain", scope: !717, file: !717, line: 86, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!916 = !DISubroutineType(types: !917)
!917 = !{!27, !35, !35}
!918 = !DISubprogram(name: "textdomain", scope: !717, file: !717, line: 82, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!919 = !DISubroutineType(types: !920)
!920 = !{!27, !35}
!921 = !DISubprogram(name: "atexit", scope: !922, file: !922, line: 595, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!922 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!923 = !DISubroutineType(types: !924)
!924 = !{!25, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!926 = !DISubprogram(name: "getopt_long", scope: !69, file: !69, line: 66, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!927 = !DISubroutineType(types: !928)
!928 = !{!25, !25, !929, !35, !931, !74}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!932 = !DISubprogram(name: "error", scope: !933, file: !933, line: 52, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!933 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!934 = !DISubroutineType(types: !935)
!935 = !{null, !25, !25, !35, null}
!936 = !DISubprogram(name: "getpriority", scope: !937, file: !937, line: 93, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!937 = !DIFile(filename: "/usr/include/sys/resource.h", directory: "")
!938 = !DISubroutineType(types: !939)
!939 = !{!25, !57, !7}
!940 = !DISubprogram(name: "setpriority", scope: !937, file: !937, line: 97, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!941 = !DISubroutineType(types: !942)
!942 = !{!25, !57, !7, !25}
!943 = !DISubprogram(name: "execvp", scope: !944, file: !944, line: 589, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!944 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!945 = !DISubroutineType(types: !946)
!946 = !{!25, !35, !929}
!947 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !87, file: !87, line: 51, type: !666, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !948)
!948 = !{!949}
!949 = !DILocalVariable(name: "file", arg: 1, scope: !947, file: !87, line: 51, type: !35)
!950 = !DILocation(line: 0, scope: !947)
!951 = !DILocation(line: 53, column: 13, scope: !947)
!952 = !DILocation(line: 54, column: 1, scope: !947)
!953 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !87, file: !87, line: 88, type: !954, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !38}
!956 = !{!957}
!957 = !DILocalVariable(name: "ignore", arg: 1, scope: !953, file: !87, line: 88, type: !38)
!958 = !DILocation(line: 0, scope: !953)
!959 = !DILocation(line: 90, column: 16, scope: !953)
!960 = !{!961, !961, i64 0}
!961 = !{!"_Bool", !650, i64 0}
!962 = !DILocation(line: 91, column: 1, scope: !953)
!963 = distinct !DISubprogram(name: "close_stdout", scope: !87, file: !87, line: 117, type: !657, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !964)
!964 = !{!965}
!965 = !DILocalVariable(name: "write_error", scope: !966, file: !87, line: 122, type: !35)
!966 = distinct !DILexicalBlock(scope: !967, file: !87, line: 121, column: 5)
!967 = distinct !DILexicalBlock(scope: !963, file: !87, line: 119, column: 7)
!968 = !DILocation(line: 119, column: 21, scope: !967)
!969 = !DILocation(line: 119, column: 7, scope: !967)
!970 = !DILocation(line: 119, column: 29, scope: !967)
!971 = !DILocation(line: 120, column: 7, scope: !967)
!972 = !DILocation(line: 120, column: 12, scope: !967)
!973 = !{i8 0, i8 2}
!974 = !DILocation(line: 120, column: 25, scope: !967)
!975 = !DILocation(line: 120, column: 28, scope: !967)
!976 = !DILocation(line: 120, column: 34, scope: !967)
!977 = !DILocation(line: 119, column: 7, scope: !963)
!978 = !DILocation(line: 122, column: 33, scope: !966)
!979 = !DILocation(line: 0, scope: !966)
!980 = !DILocation(line: 123, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !966, file: !87, line: 123, column: 11)
!982 = !DILocation(line: 0, scope: !981)
!983 = !DILocation(line: 123, column: 11, scope: !966)
!984 = !DILocation(line: 124, column: 36, scope: !981)
!985 = !DILocation(line: 124, column: 9, scope: !981)
!986 = !DILocation(line: 127, column: 9, scope: !981)
!987 = !DILocation(line: 129, column: 14, scope: !966)
!988 = !DILocation(line: 129, column: 7, scope: !966)
!989 = !DILocation(line: 134, column: 42, scope: !990)
!990 = distinct !DILexicalBlock(scope: !963, file: !87, line: 134, column: 7)
!991 = !DILocation(line: 134, column: 28, scope: !990)
!992 = !DILocation(line: 134, column: 50, scope: !990)
!993 = !DILocation(line: 134, column: 7, scope: !963)
!994 = !DILocation(line: 135, column: 12, scope: !990)
!995 = !DILocation(line: 135, column: 5, scope: !990)
!996 = !DILocation(line: 136, column: 1, scope: !963)
!997 = distinct !DISubprogram(name: "set_program_name", scope: !100, file: !100, line: 39, type: !666, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !998)
!998 = !{!999, !1000, !1001}
!999 = !DILocalVariable(name: "argv0", arg: 1, scope: !997, file: !100, line: 39, type: !35)
!1000 = !DILocalVariable(name: "slash", scope: !997, file: !100, line: 46, type: !35)
!1001 = !DILocalVariable(name: "base", scope: !997, file: !100, line: 47, type: !35)
!1002 = !DILocation(line: 0, scope: !997)
!1003 = !DILocation(line: 51, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !997, file: !100, line: 51, column: 7)
!1005 = !DILocation(line: 51, column: 7, scope: !997)
!1006 = !DILocation(line: 55, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 52, column: 5)
!1008 = !DILocation(line: 54, column: 7, scope: !1007)
!1009 = !DILocation(line: 56, column: 7, scope: !1007)
!1010 = !DILocation(line: 59, column: 11, scope: !997)
!1011 = !DILocation(line: 60, column: 17, scope: !997)
!1012 = !DILocation(line: 60, column: 11, scope: !997)
!1013 = !DILocation(line: 61, column: 12, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !997, file: !100, line: 61, column: 7)
!1015 = !DILocation(line: 61, column: 20, scope: !1014)
!1016 = !DILocation(line: 61, column: 25, scope: !1014)
!1017 = !DILocation(line: 61, column: 42, scope: !1014)
!1018 = !DILocation(line: 61, column: 28, scope: !1014)
!1019 = !DILocation(line: 61, column: 61, scope: !1014)
!1020 = !DILocation(line: 61, column: 7, scope: !997)
!1021 = !DILocation(line: 64, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !100, line: 64, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !100, line: 62, column: 5)
!1024 = !DILocation(line: 64, column: 36, scope: !1022)
!1025 = !DILocation(line: 64, column: 11, scope: !1023)
!1026 = !DILocation(line: 66, column: 24, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !100, line: 65, column: 9)
!1028 = !DILocation(line: 70, column: 41, scope: !1027)
!1029 = !DILocation(line: 72, column: 9, scope: !1027)
!1030 = !DILocation(line: 84, column: 16, scope: !997)
!1031 = !DILocation(line: 90, column: 27, scope: !997)
!1032 = !DILocation(line: 92, column: 1, scope: !997)
!1033 = distinct !DISubprogram(name: "clone_quoting_options", scope: !106, file: !106, line: 122, type: !1034, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1037)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1037 = !{!1038, !1039, !1040}
!1038 = !DILocalVariable(name: "o", arg: 1, scope: !1033, file: !106, line: 122, type: !1036)
!1039 = !DILocalVariable(name: "e", scope: !1033, file: !106, line: 124, type: !25)
!1040 = !DILocalVariable(name: "p", scope: !1033, file: !106, line: 125, type: !1036)
!1041 = !DILocation(line: 0, scope: !1033)
!1042 = !DILocation(line: 124, column: 11, scope: !1033)
!1043 = !DILocation(line: 125, column: 40, scope: !1033)
!1044 = !DILocation(line: 125, column: 31, scope: !1033)
!1045 = !DILocation(line: 127, column: 9, scope: !1033)
!1046 = !DILocation(line: 128, column: 3, scope: !1033)
!1047 = distinct !DISubprogram(name: "get_quoting_style", scope: !106, file: !106, line: 133, type: !1048, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1052)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!108, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1052 = !{!1053}
!1053 = !DILocalVariable(name: "o", arg: 1, scope: !1047, file: !106, line: 133, type: !1050)
!1054 = !DILocation(line: 0, scope: !1047)
!1055 = !DILocation(line: 135, column: 11, scope: !1047)
!1056 = !DILocation(line: 135, column: 46, scope: !1047)
!1057 = !{!1058, !650, i64 0}
!1058 = !{!"quoting_options", !650, i64 0, !793, i64 4, !650, i64 8, !649, i64 40, !649, i64 48}
!1059 = !DILocation(line: 135, column: 3, scope: !1047)
!1060 = distinct !DISubprogram(name: "set_quoting_style", scope: !106, file: !106, line: 141, type: !1061, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1036, !108}
!1063 = !{!1064, !1065}
!1064 = !DILocalVariable(name: "o", arg: 1, scope: !1060, file: !106, line: 141, type: !1036)
!1065 = !DILocalVariable(name: "s", arg: 2, scope: !1060, file: !106, line: 141, type: !108)
!1066 = !DILocation(line: 0, scope: !1060)
!1067 = !DILocation(line: 143, column: 4, scope: !1060)
!1068 = !DILocation(line: 143, column: 39, scope: !1060)
!1069 = !DILocation(line: 143, column: 45, scope: !1060)
!1070 = !DILocation(line: 144, column: 1, scope: !1060)
!1071 = distinct !DISubprogram(name: "set_char_quoting", scope: !106, file: !106, line: 152, type: !1072, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!25, !1036, !28, !25}
!1074 = !{!1075, !1076, !1077, !1078, !1080, !1082, !1083}
!1075 = !DILocalVariable(name: "o", arg: 1, scope: !1071, file: !106, line: 152, type: !1036)
!1076 = !DILocalVariable(name: "c", arg: 2, scope: !1071, file: !106, line: 152, type: !28)
!1077 = !DILocalVariable(name: "i", arg: 3, scope: !1071, file: !106, line: 152, type: !25)
!1078 = !DILocalVariable(name: "uc", scope: !1071, file: !106, line: 154, type: !1079)
!1079 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1080 = !DILocalVariable(name: "p", scope: !1071, file: !106, line: 155, type: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1082 = !DILocalVariable(name: "shift", scope: !1071, file: !106, line: 157, type: !25)
!1083 = !DILocalVariable(name: "r", scope: !1071, file: !106, line: 158, type: !25)
!1084 = !DILocation(line: 0, scope: !1071)
!1085 = !DILocation(line: 156, column: 6, scope: !1071)
!1086 = !DILocation(line: 156, column: 62, scope: !1071)
!1087 = !DILocation(line: 156, column: 57, scope: !1071)
!1088 = !DILocation(line: 157, column: 15, scope: !1071)
!1089 = !DILocation(line: 158, column: 12, scope: !1071)
!1090 = !DILocation(line: 158, column: 15, scope: !1071)
!1091 = !DILocation(line: 158, column: 25, scope: !1071)
!1092 = !DILocation(line: 159, column: 13, scope: !1071)
!1093 = !DILocation(line: 159, column: 18, scope: !1071)
!1094 = !DILocation(line: 159, column: 23, scope: !1071)
!1095 = !DILocation(line: 159, column: 6, scope: !1071)
!1096 = !DILocation(line: 160, column: 3, scope: !1071)
!1097 = distinct !DISubprogram(name: "set_quoting_flags", scope: !106, file: !106, line: 168, type: !1098, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!25, !1036, !25}
!1100 = !{!1101, !1102, !1103}
!1101 = !DILocalVariable(name: "o", arg: 1, scope: !1097, file: !106, line: 168, type: !1036)
!1102 = !DILocalVariable(name: "i", arg: 2, scope: !1097, file: !106, line: 168, type: !25)
!1103 = !DILocalVariable(name: "r", scope: !1097, file: !106, line: 170, type: !25)
!1104 = !DILocation(line: 0, scope: !1097)
!1105 = !DILocation(line: 171, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !106, line: 171, column: 7)
!1107 = !DILocation(line: 171, column: 7, scope: !1097)
!1108 = !DILocation(line: 173, column: 10, scope: !1097)
!1109 = !{!1058, !793, i64 4}
!1110 = !DILocation(line: 174, column: 12, scope: !1097)
!1111 = !DILocation(line: 175, column: 3, scope: !1097)
!1112 = distinct !DISubprogram(name: "set_custom_quoting", scope: !106, file: !106, line: 179, type: !1113, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1036, !35, !35}
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "o", arg: 1, scope: !1112, file: !106, line: 179, type: !1036)
!1117 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1112, file: !106, line: 180, type: !35)
!1118 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1112, file: !106, line: 180, type: !35)
!1119 = !DILocation(line: 0, scope: !1112)
!1120 = !DILocation(line: 182, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !106, line: 182, column: 7)
!1122 = !DILocation(line: 182, column: 7, scope: !1112)
!1123 = !DILocation(line: 184, column: 6, scope: !1112)
!1124 = !DILocation(line: 184, column: 12, scope: !1112)
!1125 = !DILocation(line: 185, column: 8, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1112, file: !106, line: 185, column: 7)
!1127 = !DILocation(line: 185, column: 19, scope: !1126)
!1128 = !DILocation(line: 186, column: 5, scope: !1126)
!1129 = !DILocation(line: 187, column: 6, scope: !1112)
!1130 = !DILocation(line: 187, column: 17, scope: !1112)
!1131 = !{!1058, !649, i64 40}
!1132 = !DILocation(line: 188, column: 6, scope: !1112)
!1133 = !DILocation(line: 188, column: 18, scope: !1112)
!1134 = !{!1058, !649, i64 48}
!1135 = !DILocation(line: 189, column: 1, scope: !1112)
!1136 = distinct !DISubprogram(name: "quotearg_buffer", scope: !106, file: !106, line: 784, type: !1137, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!144, !27, !144, !35, !144, !1050}
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1140 = !DILocalVariable(name: "buffer", arg: 1, scope: !1136, file: !106, line: 784, type: !27)
!1141 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1136, file: !106, line: 784, type: !144)
!1142 = !DILocalVariable(name: "arg", arg: 3, scope: !1136, file: !106, line: 785, type: !35)
!1143 = !DILocalVariable(name: "argsize", arg: 4, scope: !1136, file: !106, line: 785, type: !144)
!1144 = !DILocalVariable(name: "o", arg: 5, scope: !1136, file: !106, line: 786, type: !1050)
!1145 = !DILocalVariable(name: "p", scope: !1136, file: !106, line: 788, type: !1050)
!1146 = !DILocalVariable(name: "e", scope: !1136, file: !106, line: 789, type: !25)
!1147 = !DILocalVariable(name: "r", scope: !1136, file: !106, line: 790, type: !144)
!1148 = !DILocation(line: 0, scope: !1136)
!1149 = !DILocation(line: 788, column: 37, scope: !1136)
!1150 = !DILocation(line: 789, column: 11, scope: !1136)
!1151 = !DILocation(line: 791, column: 43, scope: !1136)
!1152 = !DILocation(line: 791, column: 53, scope: !1136)
!1153 = !DILocation(line: 791, column: 60, scope: !1136)
!1154 = !DILocation(line: 792, column: 43, scope: !1136)
!1155 = !DILocation(line: 792, column: 58, scope: !1136)
!1156 = !DILocation(line: 790, column: 14, scope: !1136)
!1157 = !DILocation(line: 793, column: 9, scope: !1136)
!1158 = !DILocation(line: 794, column: 3, scope: !1136)
!1159 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !106, file: !106, line: 256, type: !1160, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1164)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!144, !27, !144, !35, !144, !108, !25, !1162, !35, !35}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1189, !1190, !1191, !1192, !1193, !1196, !1197, !1213, !1216, !1217, !1224, !1227, !1228, !1229, !1230, !1231, !1232}
!1165 = !DILocalVariable(name: "buffer", arg: 1, scope: !1159, file: !106, line: 256, type: !27)
!1166 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1159, file: !106, line: 256, type: !144)
!1167 = !DILocalVariable(name: "arg", arg: 3, scope: !1159, file: !106, line: 257, type: !35)
!1168 = !DILocalVariable(name: "argsize", arg: 4, scope: !1159, file: !106, line: 257, type: !144)
!1169 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1159, file: !106, line: 258, type: !108)
!1170 = !DILocalVariable(name: "flags", arg: 6, scope: !1159, file: !106, line: 258, type: !25)
!1171 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1159, file: !106, line: 259, type: !1162)
!1172 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1159, file: !106, line: 260, type: !35)
!1173 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1159, file: !106, line: 261, type: !35)
!1174 = !DILocalVariable(name: "i", scope: !1159, file: !106, line: 263, type: !144)
!1175 = !DILocalVariable(name: "len", scope: !1159, file: !106, line: 264, type: !144)
!1176 = !DILocalVariable(name: "orig_buffersize", scope: !1159, file: !106, line: 265, type: !144)
!1177 = !DILocalVariable(name: "quote_string", scope: !1159, file: !106, line: 266, type: !35)
!1178 = !DILocalVariable(name: "quote_string_len", scope: !1159, file: !106, line: 267, type: !144)
!1179 = !DILocalVariable(name: "backslash_escapes", scope: !1159, file: !106, line: 268, type: !38)
!1180 = !DILocalVariable(name: "unibyte_locale", scope: !1159, file: !106, line: 269, type: !38)
!1181 = !DILocalVariable(name: "elide_outer_quotes", scope: !1159, file: !106, line: 270, type: !38)
!1182 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1159, file: !106, line: 271, type: !38)
!1183 = !DILocalVariable(name: "encountered_single_quote", scope: !1159, file: !106, line: 272, type: !38)
!1184 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1159, file: !106, line: 273, type: !38)
!1185 = !DILocalVariable(name: "c", scope: !1186, file: !106, line: 402, type: !1079)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !106, line: 401, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !106, line: 400, column: 3)
!1188 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 400, column: 3)
!1189 = !DILocalVariable(name: "esc", scope: !1186, file: !106, line: 403, type: !1079)
!1190 = !DILocalVariable(name: "is_right_quote", scope: !1186, file: !106, line: 404, type: !38)
!1191 = !DILocalVariable(name: "escaping", scope: !1186, file: !106, line: 405, type: !38)
!1192 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1186, file: !106, line: 406, type: !38)
!1193 = !DILocalVariable(name: "m", scope: !1194, file: !106, line: 610, type: !144)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 608, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 426, column: 9)
!1196 = !DILocalVariable(name: "printable", scope: !1194, file: !106, line: 612, type: !38)
!1197 = !DILocalVariable(name: "mbstate", scope: !1198, file: !106, line: 621, type: !1200)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !106, line: 620, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !106, line: 614, column: 17)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1201, line: 6, baseType: !1202)
!1201 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1203, line: 21, baseType: !1204)
!1203 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1203, line: 13, size: 64, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1204, file: !1203, line: 15, baseType: !25, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1204, file: !1203, line: 20, baseType: !1208, size: 32, offset: 32)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !1203, line: 16, size: 32, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1208, file: !1203, line: 18, baseType: !7, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1208, file: !1203, line: 19, baseType: !1212, size: 32)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !76)
!1213 = !DILocalVariable(name: "w", scope: !1214, file: !106, line: 631, type: !1215)
!1214 = distinct !DILexicalBlock(scope: !1198, file: !106, line: 630, column: 19)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !145, line: 74, baseType: !25)
!1216 = !DILocalVariable(name: "bytes", scope: !1214, file: !106, line: 632, type: !144)
!1217 = !DILocalVariable(name: "j", scope: !1218, file: !106, line: 657, type: !144)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !106, line: 656, column: 27)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !106, line: 654, column: 29)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !106, line: 649, column: 23)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !106, line: 641, column: 30)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !106, line: 636, column: 30)
!1223 = distinct !DILexicalBlock(scope: !1214, file: !106, line: 634, column: 25)
!1224 = !DILocalVariable(name: "ilim", scope: !1225, file: !106, line: 684, type: !144)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !106, line: 681, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1194, file: !106, line: 680, column: 17)
!1227 = !DILabel(scope: !1159, name: "process_input", file: !106, line: 314)
!1228 = !DILabel(scope: !1195, name: "c_and_shell_escape", file: !106, line: 512)
!1229 = !DILabel(scope: !1195, name: "c_escape", file: !106, line: 517)
!1230 = !DILabel(scope: !1186, name: "store_escape", file: !106, line: 719)
!1231 = !DILabel(scope: !1186, name: "store_c", file: !106, line: 722)
!1232 = !DILabel(scope: !1159, name: "force_outer_quoting_style", file: !106, line: 763)
!1233 = !DILocation(line: 0, scope: !1159)
!1234 = !DILocation(line: 269, column: 25, scope: !1159)
!1235 = !DILocation(line: 269, column: 36, scope: !1159)
!1236 = !DILocation(line: 270, column: 8, scope: !1159)
!1237 = !DILocation(line: 273, column: 3, scope: !1159)
!1238 = !DILocation(line: 265, column: 10, scope: !1159)
!1239 = !DILocation(line: 266, column: 15, scope: !1159)
!1240 = !DILocation(line: 267, column: 10, scope: !1159)
!1241 = !DILocation(line: 268, column: 8, scope: !1159)
!1242 = !DILocation(line: 271, column: 8, scope: !1159)
!1243 = !DILocation(line: 272, column: 8, scope: !1159)
!1244 = !DILocation(line: 273, column: 8, scope: !1159)
!1245 = !DILocation(line: 314, column: 2, scope: !1159)
!1246 = !DILocation(line: 316, column: 3, scope: !1159)
!1247 = !DILocation(line: 323, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 317, column: 5)
!1249 = !DILocation(line: 323, column: 12, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !106, line: 323, column: 11)
!1251 = !DILocation(line: 324, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !106, line: 324, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !106, line: 324, column: 9)
!1254 = !DILocation(line: 324, column: 9, scope: !1253)
!1255 = !DILocation(line: 362, column: 26, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !106, line: 340, column: 11)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !106, line: 339, column: 13)
!1258 = distinct !DILexicalBlock(scope: !1248, file: !106, line: 338, column: 7)
!1259 = !DILocation(line: 363, column: 27, scope: !1256)
!1260 = !DILocation(line: 364, column: 11, scope: !1256)
!1261 = !DILocation(line: 365, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !106, line: 365, column: 13)
!1263 = !DILocation(line: 365, column: 13, scope: !1258)
!1264 = !DILocation(line: 366, column: 43, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !106, line: 366, column: 11)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !106, line: 366, column: 11)
!1267 = !DILocation(line: 366, column: 11, scope: !1266)
!1268 = !DILocation(line: 367, column: 13, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !106, line: 367, column: 13)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !106, line: 367, column: 13)
!1271 = !DILocation(line: 367, column: 13, scope: !1270)
!1272 = !DILocation(line: 366, column: 70, scope: !1265)
!1273 = distinct !{!1273, !1267, !1274, !696}
!1274 = !DILocation(line: 367, column: 13, scope: !1266)
!1275 = !DILocation(line: 264, column: 10, scope: !1159)
!1276 = !DILocation(line: 370, column: 28, scope: !1258)
!1277 = !DILocation(line: 372, column: 7, scope: !1248)
!1278 = !DILocation(line: 376, column: 7, scope: !1248)
!1279 = !DILocation(line: 379, column: 7, scope: !1248)
!1280 = !DILocation(line: 381, column: 12, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1248, file: !106, line: 381, column: 11)
!1282 = !DILocation(line: 381, column: 11, scope: !1248)
!1283 = !DILocation(line: 386, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1248, file: !106, line: 386, column: 11)
!1285 = !DILocation(line: 386, column: 11, scope: !1248)
!1286 = !DILocation(line: 387, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !106, line: 387, column: 9)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !106, line: 387, column: 9)
!1289 = !DILocation(line: 387, column: 9, scope: !1288)
!1290 = !DILocation(line: 394, column: 7, scope: !1248)
!1291 = !DILocation(line: 397, column: 7, scope: !1248)
!1292 = !DILocation(line: 400, column: 8, scope: !1188)
!1293 = !DILocation(line: 0, scope: !1188)
!1294 = !DILocation(line: 400, column: 27, scope: !1187)
!1295 = !DILocation(line: 400, column: 19, scope: !1187)
!1296 = !DILocation(line: 400, column: 41, scope: !1187)
!1297 = !DILocation(line: 400, column: 48, scope: !1187)
!1298 = !DILocation(line: 400, column: 3, scope: !1188)
!1299 = !DILocation(line: 400, column: 60, scope: !1187)
!1300 = !DILocation(line: 0, scope: !1186)
!1301 = !DILocation(line: 409, column: 11, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 408, column: 11)
!1303 = !DILocation(line: 411, column: 17, scope: !1302)
!1304 = !DILocation(line: 412, column: 39, scope: !1302)
!1305 = !DILocation(line: 416, column: 32, scope: !1302)
!1306 = !DILocation(line: 412, column: 19, scope: !1302)
!1307 = !DILocation(line: 412, column: 15, scope: !1302)
!1308 = !DILocation(line: 417, column: 11, scope: !1302)
!1309 = !DILocation(line: 417, column: 26, scope: !1302)
!1310 = !DILocation(line: 417, column: 14, scope: !1302)
!1311 = !DILocation(line: 417, column: 63, scope: !1302)
!1312 = !DILocation(line: 408, column: 11, scope: !1186)
!1313 = !DILocation(line: 424, column: 11, scope: !1186)
!1314 = !DILocation(line: 425, column: 7, scope: !1186)
!1315 = !DILocation(line: 428, column: 15, scope: !1195)
!1316 = !DILocation(line: 430, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !106, line: 430, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !106, line: 429, column: 13)
!1319 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 428, column: 15)
!1320 = !DILocation(line: 430, column: 15, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !106, line: 430, column: 15)
!1322 = !DILocation(line: 430, column: 15, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !106, line: 430, column: 15)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !106, line: 430, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !106, line: 430, column: 15)
!1326 = !DILocation(line: 430, column: 15, scope: !1324)
!1327 = !DILocation(line: 430, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !106, line: 430, column: 15)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !106, line: 430, column: 15)
!1330 = !DILocation(line: 430, column: 15, scope: !1329)
!1331 = !DILocation(line: 430, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !106, line: 430, column: 15)
!1333 = distinct !DILexicalBlock(scope: !1325, file: !106, line: 430, column: 15)
!1334 = !DILocation(line: 430, column: 15, scope: !1333)
!1335 = !DILocation(line: 430, column: 15, scope: !1325)
!1336 = !DILocation(line: 430, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !106, line: 430, column: 15)
!1338 = distinct !DILexicalBlock(scope: !1317, file: !106, line: 430, column: 15)
!1339 = !DILocation(line: 430, column: 15, scope: !1338)
!1340 = !DILocation(line: 438, column: 19, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1318, file: !106, line: 437, column: 19)
!1342 = !DILocation(line: 438, column: 48, scope: !1341)
!1343 = !DILocation(line: 438, column: 59, scope: !1341)
!1344 = !DILocation(line: 440, column: 19, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !106, line: 440, column: 19)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !106, line: 440, column: 19)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !106, line: 439, column: 17)
!1348 = !DILocation(line: 440, column: 19, scope: !1346)
!1349 = !DILocation(line: 441, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !106, line: 441, column: 19)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !106, line: 441, column: 19)
!1352 = !DILocation(line: 441, column: 19, scope: !1351)
!1353 = !DILocation(line: 442, column: 17, scope: !1347)
!1354 = !DILocation(line: 449, column: 20, scope: !1319)
!1355 = !DILocation(line: 454, column: 11, scope: !1195)
!1356 = !DILocation(line: 457, column: 19, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 455, column: 13)
!1358 = !DILocation(line: 463, column: 19, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !106, line: 462, column: 19)
!1360 = !DILocation(line: 463, column: 47, scope: !1359)
!1361 = !DILocation(line: 463, column: 41, scope: !1359)
!1362 = !DILocation(line: 463, column: 52, scope: !1359)
!1363 = !DILocation(line: 462, column: 19, scope: !1357)
!1364 = !DILocation(line: 464, column: 25, scope: !1359)
!1365 = !DILocation(line: 464, column: 17, scope: !1359)
!1366 = !DILocation(line: 471, column: 25, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1359, file: !106, line: 465, column: 19)
!1368 = !DILocation(line: 475, column: 21, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !106, line: 475, column: 21)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !106, line: 475, column: 21)
!1371 = !DILocation(line: 475, column: 21, scope: !1370)
!1372 = !DILocation(line: 476, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !106, line: 476, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !106, line: 476, column: 21)
!1375 = !DILocation(line: 476, column: 21, scope: !1374)
!1376 = !DILocation(line: 477, column: 21, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !106, line: 477, column: 21)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !106, line: 477, column: 21)
!1379 = !DILocation(line: 477, column: 21, scope: !1378)
!1380 = !DILocation(line: 478, column: 21, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !106, line: 478, column: 21)
!1382 = distinct !DILexicalBlock(scope: !1367, file: !106, line: 478, column: 21)
!1383 = !DILocation(line: 478, column: 21, scope: !1382)
!1384 = !DILocation(line: 479, column: 21, scope: !1367)
!1385 = !DILocation(line: 492, column: 31, scope: !1195)
!1386 = !DILocation(line: 493, column: 31, scope: !1195)
!1387 = !DILocation(line: 495, column: 31, scope: !1195)
!1388 = !DILocation(line: 496, column: 31, scope: !1195)
!1389 = !DILocation(line: 497, column: 31, scope: !1195)
!1390 = !DILocation(line: 500, column: 15, scope: !1195)
!1391 = !DILocation(line: 502, column: 19, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !106, line: 501, column: 13)
!1393 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 500, column: 15)
!1394 = !DILocation(line: 509, column: 33, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 509, column: 15)
!1396 = !DILocation(line: 0, scope: !1195)
!1397 = !DILocation(line: 512, column: 9, scope: !1195)
!1398 = !DILocation(line: 514, column: 15, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 513, column: 15)
!1400 = !DILocation(line: 517, column: 9, scope: !1195)
!1401 = !DILocation(line: 518, column: 15, scope: !1195)
!1402 = !DILocation(line: 526, column: 15, scope: !1195)
!1403 = !DILocation(line: 526, column: 40, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 526, column: 15)
!1405 = !DILocation(line: 526, column: 47, scope: !1404)
!1406 = !DILocation(line: 526, column: 18, scope: !1404)
!1407 = !DILocation(line: 530, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 530, column: 15)
!1409 = !DILocation(line: 530, column: 15, scope: !1195)
!1410 = !DILocation(line: 535, column: 11, scope: !1195)
!1411 = !DILocation(line: 549, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 548, column: 15)
!1413 = !DILocation(line: 556, column: 15, scope: !1195)
!1414 = !DILocation(line: 558, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !106, line: 557, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1195, file: !106, line: 556, column: 15)
!1417 = !DILocation(line: 561, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !106, line: 561, column: 19)
!1419 = !DILocation(line: 561, column: 30, scope: !1418)
!1420 = !DILocation(line: 570, column: 15, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !106, line: 570, column: 15)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !106, line: 570, column: 15)
!1423 = !DILocation(line: 570, column: 15, scope: !1422)
!1424 = !DILocation(line: 571, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !106, line: 571, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1415, file: !106, line: 571, column: 15)
!1427 = !DILocation(line: 571, column: 15, scope: !1426)
!1428 = !DILocation(line: 572, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !106, line: 572, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1415, file: !106, line: 572, column: 15)
!1431 = !DILocation(line: 572, column: 15, scope: !1430)
!1432 = !DILocation(line: 574, column: 13, scope: !1415)
!1433 = !DILocation(line: 614, column: 17, scope: !1194)
!1434 = !DILocation(line: 0, scope: !1194)
!1435 = !DILocation(line: 617, column: 29, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1199, file: !106, line: 615, column: 15)
!1437 = !{!905, !905, i64 0}
!1438 = !DILocation(line: 617, column: 27, scope: !1436)
!1439 = !DILocation(line: 678, column: 40, scope: !1194)
!1440 = !DILocation(line: 680, column: 23, scope: !1226)
!1441 = !DILocation(line: 621, column: 17, scope: !1198)
!1442 = !DILocation(line: 621, column: 27, scope: !1198)
!1443 = !DILocalVariable(name: "__dest", arg: 1, scope: !1444, file: !1445, line: 57, type: !64)
!1444 = distinct !DISubprogram(name: "memset", scope: !1445, file: !1445, line: 57, type: !1446, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1448)
!1445 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!64, !64, !25, !144}
!1448 = !{!1443, !1449, !1450}
!1449 = !DILocalVariable(name: "__ch", arg: 2, scope: !1444, file: !1445, line: 57, type: !25)
!1450 = !DILocalVariable(name: "__len", arg: 3, scope: !1444, file: !1445, line: 57, type: !144)
!1451 = !DILocation(line: 0, scope: !1444, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 622, column: 17, scope: !1198)
!1453 = !DILocation(line: 59, column: 10, scope: !1444, inlinedAt: !1452)
!1454 = !DILocation(line: 626, column: 29, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1198, file: !106, line: 626, column: 21)
!1456 = !DILocation(line: 626, column: 21, scope: !1198)
!1457 = !DILocation(line: 627, column: 29, scope: !1455)
!1458 = !DILocation(line: 627, column: 19, scope: !1455)
!1459 = !DILocation(line: 629, column: 17, scope: !1198)
!1460 = !DILocation(line: 624, column: 19, scope: !1198)
!1461 = !DILocation(line: 625, column: 27, scope: !1198)
!1462 = !DILocation(line: 631, column: 21, scope: !1214)
!1463 = !DILocation(line: 632, column: 56, scope: !1214)
!1464 = !DILocation(line: 632, column: 50, scope: !1214)
!1465 = !DILocation(line: 633, column: 53, scope: !1214)
!1466 = !DILocation(line: 0, scope: !1214)
!1467 = !DILocation(line: 632, column: 36, scope: !1214)
!1468 = !DILocation(line: 634, column: 25, scope: !1214)
!1469 = !DILocation(line: 644, column: 38, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1221, file: !106, line: 642, column: 23)
!1471 = !DILocation(line: 644, column: 48, scope: !1470)
!1472 = !DILocation(line: 644, column: 25, scope: !1470)
!1473 = !DILocation(line: 644, column: 51, scope: !1470)
!1474 = !DILocation(line: 645, column: 28, scope: !1470)
!1475 = !DILocation(line: 644, column: 34, scope: !1470)
!1476 = distinct !{!1476, !1472, !1474, !696}
!1477 = !DILocation(line: 655, column: 29, scope: !1219)
!1478 = !DILocation(line: 0, scope: !1218)
!1479 = !DILocation(line: 659, column: 49, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !106, line: 658, column: 29)
!1481 = distinct !DILexicalBlock(scope: !1218, file: !106, line: 658, column: 29)
!1482 = !DILocation(line: 659, column: 39, scope: !1480)
!1483 = !DILocation(line: 659, column: 31, scope: !1480)
!1484 = !DILocation(line: 658, column: 53, scope: !1480)
!1485 = !DILocation(line: 658, column: 43, scope: !1480)
!1486 = !DILocation(line: 658, column: 29, scope: !1481)
!1487 = distinct !{!1487, !1486, !1488, !696}
!1488 = !DILocation(line: 667, column: 33, scope: !1481)
!1489 = !DILocation(line: 674, column: 19, scope: !1198)
!1490 = !DILocation(line: 670, column: 41, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1220, file: !106, line: 670, column: 29)
!1492 = !DILocation(line: 670, column: 31, scope: !1491)
!1493 = !DILocation(line: 670, column: 29, scope: !1220)
!1494 = !DILocation(line: 672, column: 27, scope: !1220)
!1495 = !DILocation(line: 675, column: 26, scope: !1198)
!1496 = !DILocation(line: 675, column: 24, scope: !1198)
!1497 = !DILocation(line: 674, column: 19, scope: !1214)
!1498 = distinct !{!1498, !1459, !1499, !696}
!1499 = !DILocation(line: 675, column: 44, scope: !1198)
!1500 = !DILocation(line: 676, column: 15, scope: !1199)
!1501 = !DILocation(line: 680, column: 19, scope: !1226)
!1502 = !DILocation(line: 680, column: 45, scope: !1226)
!1503 = !DILocation(line: 684, column: 33, scope: !1225)
!1504 = !DILocation(line: 0, scope: !1225)
!1505 = !DILocation(line: 686, column: 17, scope: !1225)
!1506 = !DILocation(line: 405, column: 12, scope: !1186)
!1507 = !DILocation(line: 688, column: 43, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !106, line: 688, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !106, line: 687, column: 19)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !106, line: 686, column: 17)
!1511 = distinct !DILexicalBlock(scope: !1225, file: !106, line: 686, column: 17)
!1512 = !DILocation(line: 690, column: 25, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !106, line: 690, column: 25)
!1514 = distinct !DILexicalBlock(scope: !1508, file: !106, line: 689, column: 23)
!1515 = !DILocation(line: 690, column: 25, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !106, line: 690, column: 25)
!1517 = !DILocation(line: 690, column: 25, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !106, line: 690, column: 25)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !106, line: 690, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !106, line: 690, column: 25)
!1521 = !DILocation(line: 690, column: 25, scope: !1519)
!1522 = !DILocation(line: 690, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !106, line: 690, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !106, line: 690, column: 25)
!1525 = !DILocation(line: 690, column: 25, scope: !1524)
!1526 = !DILocation(line: 690, column: 25, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !106, line: 690, column: 25)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !106, line: 690, column: 25)
!1529 = !DILocation(line: 690, column: 25, scope: !1528)
!1530 = !DILocation(line: 690, column: 25, scope: !1520)
!1531 = !DILocation(line: 690, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !106, line: 690, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1513, file: !106, line: 690, column: 25)
!1534 = !DILocation(line: 690, column: 25, scope: !1533)
!1535 = !DILocation(line: 691, column: 25, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !106, line: 691, column: 25)
!1537 = distinct !DILexicalBlock(scope: !1514, file: !106, line: 691, column: 25)
!1538 = !DILocation(line: 691, column: 25, scope: !1537)
!1539 = !DILocation(line: 692, column: 25, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !106, line: 692, column: 25)
!1541 = distinct !DILexicalBlock(scope: !1514, file: !106, line: 692, column: 25)
!1542 = !DILocation(line: 692, column: 25, scope: !1541)
!1543 = !DILocation(line: 693, column: 38, scope: !1514)
!1544 = !DILocation(line: 693, column: 33, scope: !1514)
!1545 = !DILocation(line: 694, column: 23, scope: !1514)
!1546 = !DILocation(line: 695, column: 30, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1508, file: !106, line: 695, column: 30)
!1548 = !DILocation(line: 695, column: 30, scope: !1508)
!1549 = !DILocation(line: 697, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !106, line: 697, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !106, line: 697, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !106, line: 696, column: 23)
!1553 = !DILocation(line: 697, column: 25, scope: !1551)
!1554 = !DILocation(line: 699, column: 23, scope: !1552)
!1555 = !DILocation(line: 700, column: 35, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1509, file: !106, line: 700, column: 25)
!1557 = !DILocation(line: 700, column: 30, scope: !1556)
!1558 = !DILocation(line: 700, column: 25, scope: !1509)
!1559 = !DILocation(line: 702, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !106, line: 702, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1509, file: !106, line: 702, column: 21)
!1562 = !DILocation(line: 702, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !106, line: 702, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !106, line: 702, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !106, line: 702, column: 21)
!1566 = !DILocation(line: 702, column: 21, scope: !1564)
!1567 = !DILocation(line: 702, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !106, line: 702, column: 21)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !106, line: 702, column: 21)
!1570 = !DILocation(line: 702, column: 21, scope: !1569)
!1571 = !DILocation(line: 702, column: 21, scope: !1565)
!1572 = !DILocation(line: 0, scope: !1509)
!1573 = !DILocation(line: 703, column: 21, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !106, line: 703, column: 21)
!1575 = distinct !DILexicalBlock(scope: !1509, file: !106, line: 703, column: 21)
!1576 = !DILocation(line: 703, column: 21, scope: !1575)
!1577 = !DILocation(line: 704, column: 25, scope: !1509)
!1578 = !DILocation(line: 686, column: 17, scope: !1510)
!1579 = distinct !{!1579, !1580, !1581}
!1580 = !DILocation(line: 686, column: 17, scope: !1511)
!1581 = !DILocation(line: 705, column: 19, scope: !1511)
!1582 = !DILocation(line: 416, column: 30, scope: !1302)
!1583 = !DILocation(line: 712, column: 34, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 712, column: 11)
!1585 = !DILocation(line: 715, column: 35, scope: !1584)
!1586 = !DILocation(line: 715, column: 17, scope: !1584)
!1587 = !DILocation(line: 715, column: 47, scope: !1584)
!1588 = !DILocation(line: 715, column: 65, scope: !1584)
!1589 = !DILocation(line: 716, column: 11, scope: !1584)
!1590 = !DILocation(line: 712, column: 11, scope: !1186)
!1591 = !DILocation(line: 400, column: 10, scope: !1188)
!1592 = !DILocation(line: 719, column: 5, scope: !1186)
!1593 = !DILocation(line: 720, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 720, column: 7)
!1595 = !DILocation(line: 720, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !106, line: 720, column: 7)
!1597 = !DILocation(line: 720, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !106, line: 720, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !106, line: 720, column: 7)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !106, line: 720, column: 7)
!1601 = !DILocation(line: 720, column: 7, scope: !1599)
!1602 = !DILocation(line: 720, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !106, line: 720, column: 7)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !106, line: 720, column: 7)
!1605 = !DILocation(line: 720, column: 7, scope: !1604)
!1606 = !DILocation(line: 720, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !106, line: 720, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1600, file: !106, line: 720, column: 7)
!1609 = !DILocation(line: 720, column: 7, scope: !1608)
!1610 = !DILocation(line: 720, column: 7, scope: !1600)
!1611 = !DILocation(line: 720, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !106, line: 720, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1594, file: !106, line: 720, column: 7)
!1614 = !DILocation(line: 720, column: 7, scope: !1613)
!1615 = !DILocation(line: 722, column: 5, scope: !1186)
!1616 = !DILocation(line: 723, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 723, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 723, column: 7)
!1619 = !DILocation(line: 424, column: 9, scope: !1186)
!1620 = !DILocation(line: 723, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !106, line: 723, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !106, line: 723, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !106, line: 723, column: 7)
!1624 = !DILocation(line: 723, column: 7, scope: !1622)
!1625 = !DILocation(line: 723, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !106, line: 723, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !106, line: 723, column: 7)
!1628 = !DILocation(line: 723, column: 7, scope: !1627)
!1629 = !DILocation(line: 723, column: 7, scope: !1623)
!1630 = !DILocation(line: 724, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !106, line: 724, column: 7)
!1632 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 724, column: 7)
!1633 = !DILocation(line: 724, column: 7, scope: !1632)
!1634 = !DILocation(line: 726, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1186, file: !106, line: 726, column: 11)
!1636 = !DILocation(line: 726, column: 11, scope: !1186)
!1637 = !DILocation(line: 728, column: 5, scope: !1187)
!1638 = !DILocation(line: 400, column: 75, scope: !1187)
!1639 = !DILocation(line: 400, column: 3, scope: !1187)
!1640 = distinct !{!1640, !1298, !1641, !696}
!1641 = !DILocation(line: 728, column: 5, scope: !1188)
!1642 = !DILocation(line: 730, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 730, column: 7)
!1644 = !DILocation(line: 730, column: 16, scope: !1643)
!1645 = !DILocation(line: 738, column: 51, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 738, column: 7)
!1647 = !DILocation(line: 741, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !106, line: 741, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !106, line: 740, column: 5)
!1650 = !DILocation(line: 741, column: 11, scope: !1649)
!1651 = !DILocation(line: 742, column: 16, scope: !1648)
!1652 = !DILocation(line: 742, column: 9, scope: !1648)
!1653 = !DILocation(line: 746, column: 18, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !106, line: 746, column: 16)
!1655 = !DILocation(line: 746, column: 29, scope: !1654)
!1656 = !DILocation(line: 755, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 755, column: 7)
!1658 = !DILocation(line: 755, column: 20, scope: !1657)
!1659 = !DILocation(line: 756, column: 12, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !106, line: 756, column: 5)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !106, line: 756, column: 5)
!1662 = !DILocation(line: 756, column: 5, scope: !1661)
!1663 = !DILocation(line: 757, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !106, line: 757, column: 7)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !106, line: 757, column: 7)
!1666 = !DILocation(line: 757, column: 7, scope: !1665)
!1667 = !DILocation(line: 756, column: 39, scope: !1660)
!1668 = distinct !{!1668, !1662, !1669, !696}
!1669 = !DILocation(line: 757, column: 7, scope: !1661)
!1670 = !DILocation(line: 759, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 759, column: 7)
!1672 = !DILocation(line: 759, column: 7, scope: !1159)
!1673 = !DILocation(line: 760, column: 5, scope: !1671)
!1674 = !DILocation(line: 760, column: 17, scope: !1671)
!1675 = !DILocation(line: 763, column: 2, scope: !1159)
!1676 = !DILocation(line: 766, column: 51, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1159, file: !106, line: 766, column: 7)
!1678 = !DILocation(line: 766, column: 21, scope: !1677)
!1679 = !DILocation(line: 770, column: 42, scope: !1159)
!1680 = !DILocation(line: 768, column: 10, scope: !1159)
!1681 = !DILocation(line: 768, column: 3, scope: !1159)
!1682 = !DILocation(line: 772, column: 1, scope: !1159)
!1683 = distinct !DISubprogram(name: "gettext_quote", scope: !106, file: !106, line: 207, type: !1684, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!35, !35, !108}
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "msgid", arg: 1, scope: !1683, file: !106, line: 207, type: !35)
!1688 = !DILocalVariable(name: "s", arg: 2, scope: !1683, file: !106, line: 207, type: !108)
!1689 = !DILocalVariable(name: "translation", scope: !1683, file: !106, line: 209, type: !35)
!1690 = !DILocalVariable(name: "locale_code", scope: !1683, file: !106, line: 210, type: !35)
!1691 = !DILocation(line: 0, scope: !1683)
!1692 = !DILocation(line: 209, column: 29, scope: !1683)
!1693 = !DILocation(line: 212, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !106, line: 212, column: 7)
!1695 = !DILocation(line: 212, column: 7, scope: !1683)
!1696 = !DILocation(line: 233, column: 17, scope: !1683)
!1697 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !1699, line: 160, type: !35)
!1698 = distinct !DISubprogram(name: "strcaseeq0", scope: !1699, file: !1699, line: 160, type: !1700, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1702)
!1699 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!1702 = !{!1697, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1703 = !DILocalVariable(name: "s2", arg: 2, scope: !1698, file: !1699, line: 160, type: !35)
!1704 = !DILocalVariable(name: "s20", arg: 3, scope: !1698, file: !1699, line: 160, type: !28)
!1705 = !DILocalVariable(name: "s21", arg: 4, scope: !1698, file: !1699, line: 160, type: !28)
!1706 = !DILocalVariable(name: "s22", arg: 5, scope: !1698, file: !1699, line: 160, type: !28)
!1707 = !DILocalVariable(name: "s23", arg: 6, scope: !1698, file: !1699, line: 160, type: !28)
!1708 = !DILocalVariable(name: "s24", arg: 7, scope: !1698, file: !1699, line: 160, type: !28)
!1709 = !DILocalVariable(name: "s25", arg: 8, scope: !1698, file: !1699, line: 160, type: !28)
!1710 = !DILocalVariable(name: "s26", arg: 9, scope: !1698, file: !1699, line: 160, type: !28)
!1711 = !DILocalVariable(name: "s27", arg: 10, scope: !1698, file: !1699, line: 160, type: !28)
!1712 = !DILocalVariable(name: "s28", arg: 11, scope: !1698, file: !1699, line: 160, type: !28)
!1713 = !DILocation(line: 0, scope: !1698, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 234, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1683, file: !106, line: 234, column: 7)
!1716 = !DILocation(line: 162, column: 7, scope: !1717, inlinedAt: !1714)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !1699, line: 162, column: 7)
!1718 = !DILocalVariable(name: "s1", arg: 1, scope: !1719, file: !1699, line: 146, type: !35)
!1719 = distinct !DISubprogram(name: "strcaseeq1", scope: !1699, file: !1699, line: 146, type: !1720, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28}
!1722 = !{!1718, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1723 = !DILocalVariable(name: "s2", arg: 2, scope: !1719, file: !1699, line: 146, type: !35)
!1724 = !DILocalVariable(name: "s21", arg: 3, scope: !1719, file: !1699, line: 146, type: !28)
!1725 = !DILocalVariable(name: "s22", arg: 4, scope: !1719, file: !1699, line: 146, type: !28)
!1726 = !DILocalVariable(name: "s23", arg: 5, scope: !1719, file: !1699, line: 146, type: !28)
!1727 = !DILocalVariable(name: "s24", arg: 6, scope: !1719, file: !1699, line: 146, type: !28)
!1728 = !DILocalVariable(name: "s25", arg: 7, scope: !1719, file: !1699, line: 146, type: !28)
!1729 = !DILocalVariable(name: "s26", arg: 8, scope: !1719, file: !1699, line: 146, type: !28)
!1730 = !DILocalVariable(name: "s27", arg: 9, scope: !1719, file: !1699, line: 146, type: !28)
!1731 = !DILocalVariable(name: "s28", arg: 10, scope: !1719, file: !1699, line: 146, type: !28)
!1732 = !DILocation(line: 0, scope: !1719, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 167, column: 16, scope: !1734, inlinedAt: !1714)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1699, line: 164, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !1699, line: 163, column: 5)
!1736 = !DILocation(line: 148, column: 7, scope: !1737, inlinedAt: !1733)
!1737 = distinct !DILexicalBlock(scope: !1719, file: !1699, line: 148, column: 7)
!1738 = !DILocalVariable(name: "s1", arg: 1, scope: !1739, file: !1699, line: 132, type: !35)
!1739 = distinct !DISubprogram(name: "strcaseeq2", scope: !1699, file: !1699, line: 132, type: !1740, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28}
!1742 = !{!1738, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1743 = !DILocalVariable(name: "s2", arg: 2, scope: !1739, file: !1699, line: 132, type: !35)
!1744 = !DILocalVariable(name: "s22", arg: 3, scope: !1739, file: !1699, line: 132, type: !28)
!1745 = !DILocalVariable(name: "s23", arg: 4, scope: !1739, file: !1699, line: 132, type: !28)
!1746 = !DILocalVariable(name: "s24", arg: 5, scope: !1739, file: !1699, line: 132, type: !28)
!1747 = !DILocalVariable(name: "s25", arg: 6, scope: !1739, file: !1699, line: 132, type: !28)
!1748 = !DILocalVariable(name: "s26", arg: 7, scope: !1739, file: !1699, line: 132, type: !28)
!1749 = !DILocalVariable(name: "s27", arg: 8, scope: !1739, file: !1699, line: 132, type: !28)
!1750 = !DILocalVariable(name: "s28", arg: 9, scope: !1739, file: !1699, line: 132, type: !28)
!1751 = !DILocation(line: 0, scope: !1739, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 153, column: 16, scope: !1753, inlinedAt: !1733)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !1699, line: 150, column: 11)
!1754 = distinct !DILexicalBlock(scope: !1737, file: !1699, line: 149, column: 5)
!1755 = !DILocation(line: 134, column: 7, scope: !1756, inlinedAt: !1752)
!1756 = distinct !DILexicalBlock(scope: !1739, file: !1699, line: 134, column: 7)
!1757 = !DILocalVariable(name: "s1", arg: 1, scope: !1758, file: !1699, line: 118, type: !35)
!1758 = distinct !DISubprogram(name: "strcaseeq3", scope: !1699, file: !1699, line: 118, type: !1759, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28}
!1761 = !{!1757, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1762 = !DILocalVariable(name: "s2", arg: 2, scope: !1758, file: !1699, line: 118, type: !35)
!1763 = !DILocalVariable(name: "s23", arg: 3, scope: !1758, file: !1699, line: 118, type: !28)
!1764 = !DILocalVariable(name: "s24", arg: 4, scope: !1758, file: !1699, line: 118, type: !28)
!1765 = !DILocalVariable(name: "s25", arg: 5, scope: !1758, file: !1699, line: 118, type: !28)
!1766 = !DILocalVariable(name: "s26", arg: 6, scope: !1758, file: !1699, line: 118, type: !28)
!1767 = !DILocalVariable(name: "s27", arg: 7, scope: !1758, file: !1699, line: 118, type: !28)
!1768 = !DILocalVariable(name: "s28", arg: 8, scope: !1758, file: !1699, line: 118, type: !28)
!1769 = !DILocation(line: 0, scope: !1758, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 139, column: 16, scope: !1771, inlinedAt: !1752)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !1699, line: 136, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1756, file: !1699, line: 135, column: 5)
!1773 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1770)
!1774 = distinct !DILexicalBlock(scope: !1758, file: !1699, line: 120, column: 7)
!1775 = !DILocation(line: 120, column: 7, scope: !1758, inlinedAt: !1770)
!1776 = !DILocalVariable(name: "s1", arg: 1, scope: !1777, file: !1699, line: 104, type: !35)
!1777 = distinct !DISubprogram(name: "strcaseeq4", scope: !1699, file: !1699, line: 104, type: !1778, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1780)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!25, !35, !35, !28, !28, !28, !28, !28}
!1780 = !{!1776, !1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DILocalVariable(name: "s2", arg: 2, scope: !1777, file: !1699, line: 104, type: !35)
!1782 = !DILocalVariable(name: "s24", arg: 3, scope: !1777, file: !1699, line: 104, type: !28)
!1783 = !DILocalVariable(name: "s25", arg: 4, scope: !1777, file: !1699, line: 104, type: !28)
!1784 = !DILocalVariable(name: "s26", arg: 5, scope: !1777, file: !1699, line: 104, type: !28)
!1785 = !DILocalVariable(name: "s27", arg: 6, scope: !1777, file: !1699, line: 104, type: !28)
!1786 = !DILocalVariable(name: "s28", arg: 7, scope: !1777, file: !1699, line: 104, type: !28)
!1787 = !DILocation(line: 0, scope: !1777, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 125, column: 16, scope: !1789, inlinedAt: !1770)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1699, line: 122, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1774, file: !1699, line: 121, column: 5)
!1791 = !DILocation(line: 106, column: 7, scope: !1792, inlinedAt: !1788)
!1792 = distinct !DILexicalBlock(scope: !1777, file: !1699, line: 106, column: 7)
!1793 = !DILocation(line: 106, column: 7, scope: !1777, inlinedAt: !1788)
!1794 = !DILocalVariable(name: "s1", arg: 1, scope: !1795, file: !1699, line: 90, type: !35)
!1795 = distinct !DISubprogram(name: "strcaseeq5", scope: !1699, file: !1699, line: 90, type: !1796, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!25, !35, !35, !28, !28, !28, !28}
!1798 = !{!1794, !1799, !1800, !1801, !1802, !1803}
!1799 = !DILocalVariable(name: "s2", arg: 2, scope: !1795, file: !1699, line: 90, type: !35)
!1800 = !DILocalVariable(name: "s25", arg: 3, scope: !1795, file: !1699, line: 90, type: !28)
!1801 = !DILocalVariable(name: "s26", arg: 4, scope: !1795, file: !1699, line: 90, type: !28)
!1802 = !DILocalVariable(name: "s27", arg: 5, scope: !1795, file: !1699, line: 90, type: !28)
!1803 = !DILocalVariable(name: "s28", arg: 6, scope: !1795, file: !1699, line: 90, type: !28)
!1804 = !DILocation(line: 0, scope: !1795, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 111, column: 16, scope: !1806, inlinedAt: !1788)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !1699, line: 108, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !1699, line: 107, column: 5)
!1808 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1805)
!1809 = distinct !DILexicalBlock(scope: !1795, file: !1699, line: 92, column: 7)
!1810 = !DILocation(line: 92, column: 7, scope: !1795, inlinedAt: !1805)
!1811 = !DILocation(line: 235, column: 12, scope: !1715)
!1812 = !DILocation(line: 235, column: 21, scope: !1715)
!1813 = !DILocation(line: 235, column: 5, scope: !1715)
!1814 = !DILocation(line: 0, scope: !1719, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 167, column: 16, scope: !1734, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 236, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1683, file: !106, line: 236, column: 7)
!1818 = !DILocation(line: 148, column: 7, scope: !1737, inlinedAt: !1815)
!1819 = !DILocation(line: 0, scope: !1739, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 153, column: 16, scope: !1753, inlinedAt: !1815)
!1821 = !DILocation(line: 134, column: 7, scope: !1756, inlinedAt: !1820)
!1822 = !DILocation(line: 134, column: 7, scope: !1739, inlinedAt: !1820)
!1823 = !DILocation(line: 0, scope: !1758, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 139, column: 16, scope: !1771, inlinedAt: !1820)
!1825 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1824)
!1826 = !DILocation(line: 120, column: 7, scope: !1758, inlinedAt: !1824)
!1827 = !DILocation(line: 0, scope: !1777, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 125, column: 16, scope: !1789, inlinedAt: !1824)
!1829 = !DILocation(line: 106, column: 7, scope: !1792, inlinedAt: !1828)
!1830 = !DILocation(line: 106, column: 7, scope: !1777, inlinedAt: !1828)
!1831 = !DILocation(line: 0, scope: !1795, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 111, column: 16, scope: !1806, inlinedAt: !1828)
!1833 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1832)
!1834 = !DILocation(line: 92, column: 7, scope: !1795, inlinedAt: !1832)
!1835 = !DILocalVariable(name: "s1", arg: 1, scope: !1836, file: !1699, line: 76, type: !35)
!1836 = distinct !DISubprogram(name: "strcaseeq6", scope: !1699, file: !1699, line: 76, type: !1837, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!25, !35, !35, !28, !28, !28}
!1839 = !{!1835, !1840, !1841, !1842, !1843}
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1836, file: !1699, line: 76, type: !35)
!1841 = !DILocalVariable(name: "s26", arg: 3, scope: !1836, file: !1699, line: 76, type: !28)
!1842 = !DILocalVariable(name: "s27", arg: 4, scope: !1836, file: !1699, line: 76, type: !28)
!1843 = !DILocalVariable(name: "s28", arg: 5, scope: !1836, file: !1699, line: 76, type: !28)
!1844 = !DILocation(line: 0, scope: !1836, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 97, column: 16, scope: !1846, inlinedAt: !1832)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !1699, line: 94, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1809, file: !1699, line: 93, column: 5)
!1848 = !DILocation(line: 78, column: 7, scope: !1849, inlinedAt: !1845)
!1849 = distinct !DILexicalBlock(scope: !1836, file: !1699, line: 78, column: 7)
!1850 = !DILocation(line: 78, column: 7, scope: !1836, inlinedAt: !1845)
!1851 = !DILocalVariable(name: "s1", arg: 1, scope: !1852, file: !1699, line: 62, type: !35)
!1852 = distinct !DISubprogram(name: "strcaseeq7", scope: !1699, file: !1699, line: 62, type: !1853, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!25, !35, !35, !28, !28}
!1855 = !{!1851, !1856, !1857, !1858}
!1856 = !DILocalVariable(name: "s2", arg: 2, scope: !1852, file: !1699, line: 62, type: !35)
!1857 = !DILocalVariable(name: "s27", arg: 3, scope: !1852, file: !1699, line: 62, type: !28)
!1858 = !DILocalVariable(name: "s28", arg: 4, scope: !1852, file: !1699, line: 62, type: !28)
!1859 = !DILocation(line: 0, scope: !1852, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 83, column: 16, scope: !1861, inlinedAt: !1845)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1699, line: 80, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1849, file: !1699, line: 79, column: 5)
!1863 = !DILocation(line: 64, column: 7, scope: !1864, inlinedAt: !1860)
!1864 = distinct !DILexicalBlock(scope: !1852, file: !1699, line: 64, column: 7)
!1865 = !DILocation(line: 236, column: 7, scope: !1683)
!1866 = !DILocation(line: 237, column: 12, scope: !1817)
!1867 = !DILocation(line: 237, column: 21, scope: !1817)
!1868 = !DILocation(line: 237, column: 5, scope: !1817)
!1869 = !DILocation(line: 239, column: 13, scope: !1683)
!1870 = !DILocation(line: 239, column: 11, scope: !1683)
!1871 = !DILocation(line: 239, column: 3, scope: !1683)
!1872 = !DILocation(line: 240, column: 1, scope: !1683)
!1873 = !DISubprogram(name: "iswprint", scope: !1874, file: !1874, line: 120, type: !1875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!1874 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!25, !7}
!1877 = !DISubprogram(name: "mbsinit", scope: !1878, file: !1878, line: 292, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!1878 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!25, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1883 = distinct !DISubprogram(name: "quotearg_alloc", scope: !106, file: !106, line: 799, type: !1884, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!27, !35, !144, !1050}
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "arg", arg: 1, scope: !1883, file: !106, line: 799, type: !35)
!1888 = !DILocalVariable(name: "argsize", arg: 2, scope: !1883, file: !106, line: 799, type: !144)
!1889 = !DILocalVariable(name: "o", arg: 3, scope: !1883, file: !106, line: 800, type: !1050)
!1890 = !DILocation(line: 0, scope: !1883)
!1891 = !DILocalVariable(name: "arg", arg: 1, scope: !1892, file: !106, line: 812, type: !35)
!1892 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !106, file: !106, line: 812, type: !1893, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!27, !35, !144, !211, !1050}
!1895 = !{!1891, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1896 = !DILocalVariable(name: "argsize", arg: 2, scope: !1892, file: !106, line: 812, type: !144)
!1897 = !DILocalVariable(name: "size", arg: 3, scope: !1892, file: !106, line: 812, type: !211)
!1898 = !DILocalVariable(name: "o", arg: 4, scope: !1892, file: !106, line: 813, type: !1050)
!1899 = !DILocalVariable(name: "p", scope: !1892, file: !106, line: 815, type: !1050)
!1900 = !DILocalVariable(name: "e", scope: !1892, file: !106, line: 816, type: !25)
!1901 = !DILocalVariable(name: "flags", scope: !1892, file: !106, line: 818, type: !25)
!1902 = !DILocalVariable(name: "bufsize", scope: !1892, file: !106, line: 819, type: !144)
!1903 = !DILocalVariable(name: "buf", scope: !1892, file: !106, line: 823, type: !27)
!1904 = !DILocation(line: 0, scope: !1892, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 802, column: 10, scope: !1883)
!1906 = !DILocation(line: 815, column: 37, scope: !1892, inlinedAt: !1905)
!1907 = !DILocation(line: 816, column: 11, scope: !1892, inlinedAt: !1905)
!1908 = !DILocation(line: 818, column: 18, scope: !1892, inlinedAt: !1905)
!1909 = !DILocation(line: 818, column: 24, scope: !1892, inlinedAt: !1905)
!1910 = !DILocation(line: 819, column: 69, scope: !1892, inlinedAt: !1905)
!1911 = !DILocation(line: 820, column: 53, scope: !1892, inlinedAt: !1905)
!1912 = !DILocation(line: 821, column: 49, scope: !1892, inlinedAt: !1905)
!1913 = !DILocation(line: 822, column: 49, scope: !1892, inlinedAt: !1905)
!1914 = !DILocation(line: 819, column: 20, scope: !1892, inlinedAt: !1905)
!1915 = !DILocation(line: 822, column: 62, scope: !1892, inlinedAt: !1905)
!1916 = !DILocalVariable(name: "n", arg: 1, scope: !1917, file: !207, line: 216, type: !144)
!1917 = distinct !DISubprogram(name: "xcharalloc", scope: !207, file: !207, line: 216, type: !1918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!27, !144}
!1920 = !{!1916}
!1921 = !DILocation(line: 0, scope: !1917, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 823, column: 15, scope: !1892, inlinedAt: !1905)
!1923 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !1922)
!1924 = !DILocation(line: 824, column: 60, scope: !1892, inlinedAt: !1905)
!1925 = !DILocation(line: 826, column: 32, scope: !1892, inlinedAt: !1905)
!1926 = !DILocation(line: 826, column: 47, scope: !1892, inlinedAt: !1905)
!1927 = !DILocation(line: 824, column: 3, scope: !1892, inlinedAt: !1905)
!1928 = !DILocation(line: 827, column: 9, scope: !1892, inlinedAt: !1905)
!1929 = !DILocation(line: 802, column: 3, scope: !1883)
!1930 = !DILocation(line: 0, scope: !1892)
!1931 = !DILocation(line: 815, column: 37, scope: !1892)
!1932 = !DILocation(line: 816, column: 11, scope: !1892)
!1933 = !DILocation(line: 818, column: 18, scope: !1892)
!1934 = !DILocation(line: 818, column: 27, scope: !1892)
!1935 = !DILocation(line: 818, column: 24, scope: !1892)
!1936 = !DILocation(line: 819, column: 69, scope: !1892)
!1937 = !DILocation(line: 820, column: 53, scope: !1892)
!1938 = !DILocation(line: 821, column: 49, scope: !1892)
!1939 = !DILocation(line: 822, column: 49, scope: !1892)
!1940 = !DILocation(line: 819, column: 20, scope: !1892)
!1941 = !DILocation(line: 822, column: 62, scope: !1892)
!1942 = !DILocation(line: 0, scope: !1917, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 823, column: 15, scope: !1892)
!1944 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !1943)
!1945 = !DILocation(line: 824, column: 60, scope: !1892)
!1946 = !DILocation(line: 826, column: 32, scope: !1892)
!1947 = !DILocation(line: 826, column: 47, scope: !1892)
!1948 = !DILocation(line: 824, column: 3, scope: !1892)
!1949 = !DILocation(line: 827, column: 9, scope: !1892)
!1950 = !DILocation(line: 828, column: 7, scope: !1892)
!1951 = !DILocation(line: 829, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1892, file: !106, line: 828, column: 7)
!1953 = !DILocation(line: 829, column: 5, scope: !1952)
!1954 = !DILocation(line: 830, column: 3, scope: !1892)
!1955 = distinct !DISubprogram(name: "quotearg_free", scope: !106, file: !106, line: 848, type: !657, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1956)
!1956 = !{!1957, !1958}
!1957 = !DILocalVariable(name: "sv", scope: !1955, file: !106, line: 850, type: !175)
!1958 = !DILocalVariable(name: "i", scope: !1955, file: !106, line: 851, type: !25)
!1959 = !DILocation(line: 850, column: 24, scope: !1955)
!1960 = !DILocation(line: 0, scope: !1955)
!1961 = !DILocation(line: 852, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !106, line: 852, column: 3)
!1963 = distinct !DILexicalBlock(scope: !1955, file: !106, line: 852, column: 3)
!1964 = !DILocation(line: 852, column: 17, scope: !1962)
!1965 = !DILocation(line: 852, column: 3, scope: !1963)
!1966 = !DILocation(line: 853, column: 17, scope: !1962)
!1967 = !{!1968, !649, i64 8}
!1968 = !{!"slotvec", !840, i64 0, !649, i64 8}
!1969 = !DILocation(line: 853, column: 5, scope: !1962)
!1970 = !DILocation(line: 852, column: 28, scope: !1962)
!1971 = distinct !{!1971, !1965, !1972, !696}
!1972 = !DILocation(line: 853, column: 20, scope: !1963)
!1973 = !DILocation(line: 854, column: 13, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1955, file: !106, line: 854, column: 7)
!1975 = !DILocation(line: 854, column: 17, scope: !1974)
!1976 = !DILocation(line: 854, column: 7, scope: !1955)
!1977 = !DILocation(line: 856, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !106, line: 855, column: 5)
!1979 = !DILocation(line: 857, column: 21, scope: !1978)
!1980 = !{!1968, !840, i64 0}
!1981 = !DILocation(line: 858, column: 20, scope: !1978)
!1982 = !DILocation(line: 859, column: 5, scope: !1978)
!1983 = !DILocation(line: 860, column: 10, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1955, file: !106, line: 860, column: 7)
!1985 = !DILocation(line: 860, column: 7, scope: !1955)
!1986 = !DILocation(line: 862, column: 13, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !106, line: 861, column: 5)
!1988 = !DILocation(line: 862, column: 7, scope: !1987)
!1989 = !DILocation(line: 863, column: 15, scope: !1987)
!1990 = !DILocation(line: 864, column: 5, scope: !1987)
!1991 = !DILocation(line: 865, column: 10, scope: !1955)
!1992 = !DILocation(line: 866, column: 1, scope: !1955)
!1993 = distinct !DISubprogram(name: "quotearg_n", scope: !106, file: !106, line: 931, type: !777, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1994)
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "n", arg: 1, scope: !1993, file: !106, line: 931, type: !25)
!1996 = !DILocalVariable(name: "arg", arg: 2, scope: !1993, file: !106, line: 931, type: !35)
!1997 = !DILocation(line: 0, scope: !1993)
!1998 = !DILocation(line: 933, column: 10, scope: !1993)
!1999 = !DILocation(line: 933, column: 3, scope: !1993)
!2000 = distinct !DISubprogram(name: "quotearg_n_options", scope: !106, file: !106, line: 877, type: !2001, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!27, !25, !35, !144, !1050}
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2013, !2014, !2016, !2017, !2018}
!2004 = !DILocalVariable(name: "n", arg: 1, scope: !2000, file: !106, line: 877, type: !25)
!2005 = !DILocalVariable(name: "arg", arg: 2, scope: !2000, file: !106, line: 877, type: !35)
!2006 = !DILocalVariable(name: "argsize", arg: 3, scope: !2000, file: !106, line: 877, type: !144)
!2007 = !DILocalVariable(name: "options", arg: 4, scope: !2000, file: !106, line: 878, type: !1050)
!2008 = !DILocalVariable(name: "e", scope: !2000, file: !106, line: 880, type: !25)
!2009 = !DILocalVariable(name: "sv", scope: !2000, file: !106, line: 882, type: !175)
!2010 = !DILocalVariable(name: "preallocated", scope: !2011, file: !106, line: 889, type: !38)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !106, line: 888, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2000, file: !106, line: 887, column: 7)
!2013 = !DILocalVariable(name: "nmax", scope: !2011, file: !106, line: 890, type: !25)
!2014 = !DILocalVariable(name: "size", scope: !2015, file: !106, line: 903, type: !144)
!2015 = distinct !DILexicalBlock(scope: !2000, file: !106, line: 902, column: 3)
!2016 = !DILocalVariable(name: "val", scope: !2015, file: !106, line: 904, type: !27)
!2017 = !DILocalVariable(name: "flags", scope: !2015, file: !106, line: 906, type: !25)
!2018 = !DILocalVariable(name: "qsize", scope: !2015, file: !106, line: 907, type: !144)
!2019 = !DILocation(line: 0, scope: !2000)
!2020 = !DILocation(line: 880, column: 11, scope: !2000)
!2021 = !DILocation(line: 882, column: 24, scope: !2000)
!2022 = !DILocation(line: 884, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2000, file: !106, line: 884, column: 7)
!2024 = !DILocation(line: 884, column: 7, scope: !2000)
!2025 = !DILocation(line: 885, column: 5, scope: !2023)
!2026 = !DILocation(line: 887, column: 7, scope: !2012)
!2027 = !DILocation(line: 887, column: 14, scope: !2012)
!2028 = !DILocation(line: 887, column: 7, scope: !2000)
!2029 = !DILocation(line: 889, column: 31, scope: !2011)
!2030 = !DILocation(line: 0, scope: !2011)
!2031 = !DILocation(line: 892, column: 16, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2011, file: !106, line: 892, column: 11)
!2033 = !DILocation(line: 892, column: 11, scope: !2011)
!2034 = !DILocation(line: 893, column: 9, scope: !2032)
!2035 = !DILocation(line: 895, column: 32, scope: !2011)
!2036 = !DILocation(line: 895, column: 61, scope: !2011)
!2037 = !DILocation(line: 895, column: 66, scope: !2011)
!2038 = !DILocation(line: 895, column: 22, scope: !2011)
!2039 = !DILocation(line: 895, column: 15, scope: !2011)
!2040 = !DILocation(line: 896, column: 11, scope: !2011)
!2041 = !DILocation(line: 897, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2011, file: !106, line: 896, column: 11)
!2043 = !{i64 0, i64 8, !839, i64 8, i64 8, !648}
!2044 = !DILocation(line: 897, column: 9, scope: !2042)
!2045 = !DILocation(line: 898, column: 20, scope: !2011)
!2046 = !DILocation(line: 898, column: 18, scope: !2011)
!2047 = !DILocation(line: 898, column: 15, scope: !2011)
!2048 = !DILocation(line: 898, column: 38, scope: !2011)
!2049 = !DILocation(line: 898, column: 31, scope: !2011)
!2050 = !DILocation(line: 898, column: 48, scope: !2011)
!2051 = !DILocation(line: 0, scope: !1444, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 898, column: 7, scope: !2011)
!2053 = !DILocation(line: 59, column: 10, scope: !1444, inlinedAt: !2052)
!2054 = !DILocation(line: 899, column: 14, scope: !2011)
!2055 = !DILocation(line: 900, column: 5, scope: !2011)
!2056 = !DILocation(line: 903, column: 19, scope: !2015)
!2057 = !DILocation(line: 903, column: 25, scope: !2015)
!2058 = !DILocation(line: 0, scope: !2015)
!2059 = !DILocation(line: 904, column: 23, scope: !2015)
!2060 = !DILocation(line: 906, column: 26, scope: !2015)
!2061 = !DILocation(line: 906, column: 32, scope: !2015)
!2062 = !DILocation(line: 908, column: 55, scope: !2015)
!2063 = !DILocation(line: 909, column: 46, scope: !2015)
!2064 = !DILocation(line: 910, column: 55, scope: !2015)
!2065 = !DILocation(line: 911, column: 55, scope: !2015)
!2066 = !DILocation(line: 907, column: 20, scope: !2015)
!2067 = !DILocation(line: 913, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2015, file: !106, line: 913, column: 9)
!2069 = !DILocation(line: 913, column: 9, scope: !2015)
!2070 = !DILocation(line: 915, column: 35, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !106, line: 914, column: 7)
!2072 = !DILocation(line: 915, column: 20, scope: !2071)
!2073 = !DILocation(line: 916, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !106, line: 916, column: 13)
!2075 = !DILocation(line: 916, column: 13, scope: !2071)
!2076 = !DILocation(line: 917, column: 11, scope: !2074)
!2077 = !DILocation(line: 0, scope: !1917, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 918, column: 27, scope: !2071)
!2079 = !DILocation(line: 218, column: 10, scope: !1917, inlinedAt: !2078)
!2080 = !DILocation(line: 918, column: 19, scope: !2071)
!2081 = !DILocation(line: 919, column: 69, scope: !2071)
!2082 = !DILocation(line: 921, column: 44, scope: !2071)
!2083 = !DILocation(line: 922, column: 44, scope: !2071)
!2084 = !DILocation(line: 919, column: 9, scope: !2071)
!2085 = !DILocation(line: 923, column: 7, scope: !2071)
!2086 = !DILocation(line: 925, column: 11, scope: !2015)
!2087 = !DILocation(line: 926, column: 5, scope: !2015)
!2088 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !106, file: !106, line: 937, type: !2089, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!27, !25, !35, !144}
!2091 = !{!2092, !2093, !2094}
!2092 = !DILocalVariable(name: "n", arg: 1, scope: !2088, file: !106, line: 937, type: !25)
!2093 = !DILocalVariable(name: "arg", arg: 2, scope: !2088, file: !106, line: 937, type: !35)
!2094 = !DILocalVariable(name: "argsize", arg: 3, scope: !2088, file: !106, line: 937, type: !144)
!2095 = !DILocation(line: 0, scope: !2088)
!2096 = !DILocation(line: 939, column: 10, scope: !2088)
!2097 = !DILocation(line: 939, column: 3, scope: !2088)
!2098 = distinct !DISubprogram(name: "quotearg", scope: !106, file: !106, line: 943, type: !919, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "arg", arg: 1, scope: !2098, file: !106, line: 943, type: !35)
!2101 = !DILocation(line: 0, scope: !2098)
!2102 = !DILocation(line: 0, scope: !1993, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 945, column: 10, scope: !2098)
!2104 = !DILocation(line: 933, column: 10, scope: !1993, inlinedAt: !2103)
!2105 = !DILocation(line: 945, column: 3, scope: !2098)
!2106 = distinct !DISubprogram(name: "quotearg_mem", scope: !106, file: !106, line: 949, type: !2107, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!27, !35, !144}
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2106, file: !106, line: 949, type: !35)
!2111 = !DILocalVariable(name: "argsize", arg: 2, scope: !2106, file: !106, line: 949, type: !144)
!2112 = !DILocation(line: 0, scope: !2106)
!2113 = !DILocation(line: 0, scope: !2088, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 951, column: 10, scope: !2106)
!2115 = !DILocation(line: 939, column: 10, scope: !2088, inlinedAt: !2114)
!2116 = !DILocation(line: 951, column: 3, scope: !2106)
!2117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !106, file: !106, line: 955, type: !2118, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!27, !25, !108, !35}
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2117, file: !106, line: 955, type: !25)
!2122 = !DILocalVariable(name: "s", arg: 2, scope: !2117, file: !106, line: 955, type: !108)
!2123 = !DILocalVariable(name: "arg", arg: 3, scope: !2117, file: !106, line: 955, type: !35)
!2124 = !DILocalVariable(name: "o", scope: !2117, file: !106, line: 957, type: !1051)
!2125 = !DILocation(line: 0, scope: !2117)
!2126 = !DILocation(line: 957, column: 3, scope: !2117)
!2127 = !DILocation(line: 957, column: 32, scope: !2117)
!2128 = !{!2129}
!2129 = distinct !{!2129, !2130, !"quoting_options_from_style: argument 0"}
!2130 = distinct !{!2130, !"quoting_options_from_style"}
!2131 = !DILocation(line: 957, column: 36, scope: !2117)
!2132 = !DILocalVariable(name: "style", arg: 1, scope: !2133, file: !106, line: 193, type: !108)
!2133 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !106, file: !106, line: 193, type: !2134, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!156, !108}
!2136 = !{!2132, !2137}
!2137 = !DILocalVariable(name: "o", scope: !2133, file: !106, line: 195, type: !156)
!2138 = !DILocation(line: 0, scope: !2133, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 957, column: 36, scope: !2117)
!2140 = !DILocation(line: 195, column: 26, scope: !2133, inlinedAt: !2139)
!2141 = !DILocation(line: 196, column: 13, scope: !2142, inlinedAt: !2139)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !106, line: 196, column: 7)
!2143 = !DILocation(line: 196, column: 7, scope: !2133, inlinedAt: !2139)
!2144 = !DILocation(line: 197, column: 5, scope: !2142, inlinedAt: !2139)
!2145 = !DILocation(line: 198, column: 5, scope: !2133, inlinedAt: !2139)
!2146 = !DILocation(line: 198, column: 11, scope: !2133, inlinedAt: !2139)
!2147 = !DILocation(line: 958, column: 10, scope: !2117)
!2148 = !DILocation(line: 959, column: 1, scope: !2117)
!2149 = !DILocation(line: 958, column: 3, scope: !2117)
!2150 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !106, file: !106, line: 962, type: !2151, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!27, !25, !108, !35, !144}
!2153 = !{!2154, !2155, !2156, !2157, !2158}
!2154 = !DILocalVariable(name: "n", arg: 1, scope: !2150, file: !106, line: 962, type: !25)
!2155 = !DILocalVariable(name: "s", arg: 2, scope: !2150, file: !106, line: 962, type: !108)
!2156 = !DILocalVariable(name: "arg", arg: 3, scope: !2150, file: !106, line: 963, type: !35)
!2157 = !DILocalVariable(name: "argsize", arg: 4, scope: !2150, file: !106, line: 963, type: !144)
!2158 = !DILocalVariable(name: "o", scope: !2150, file: !106, line: 965, type: !1051)
!2159 = !DILocation(line: 0, scope: !2150)
!2160 = !DILocation(line: 965, column: 3, scope: !2150)
!2161 = !DILocation(line: 965, column: 32, scope: !2150)
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"quoting_options_from_style: argument 0"}
!2164 = distinct !{!2164, !"quoting_options_from_style"}
!2165 = !DILocation(line: 965, column: 36, scope: !2150)
!2166 = !DILocation(line: 0, scope: !2133, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 965, column: 36, scope: !2150)
!2168 = !DILocation(line: 195, column: 26, scope: !2133, inlinedAt: !2167)
!2169 = !DILocation(line: 196, column: 13, scope: !2142, inlinedAt: !2167)
!2170 = !DILocation(line: 196, column: 7, scope: !2133, inlinedAt: !2167)
!2171 = !DILocation(line: 197, column: 5, scope: !2142, inlinedAt: !2167)
!2172 = !DILocation(line: 198, column: 5, scope: !2133, inlinedAt: !2167)
!2173 = !DILocation(line: 198, column: 11, scope: !2133, inlinedAt: !2167)
!2174 = !DILocation(line: 966, column: 10, scope: !2150)
!2175 = !DILocation(line: 967, column: 1, scope: !2150)
!2176 = !DILocation(line: 966, column: 3, scope: !2150)
!2177 = distinct !DISubprogram(name: "quotearg_style", scope: !106, file: !106, line: 970, type: !2178, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!27, !108, !35}
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "s", arg: 1, scope: !2177, file: !106, line: 970, type: !108)
!2182 = !DILocalVariable(name: "arg", arg: 2, scope: !2177, file: !106, line: 970, type: !35)
!2183 = !DILocation(line: 0, scope: !2177)
!2184 = !DILocation(line: 0, scope: !2117, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 972, column: 10, scope: !2177)
!2186 = !DILocation(line: 957, column: 3, scope: !2117, inlinedAt: !2185)
!2187 = !DILocation(line: 957, column: 32, scope: !2117, inlinedAt: !2185)
!2188 = !{!2189}
!2189 = distinct !{!2189, !2190, !"quoting_options_from_style: argument 0"}
!2190 = distinct !{!2190, !"quoting_options_from_style"}
!2191 = !DILocation(line: 957, column: 36, scope: !2117, inlinedAt: !2185)
!2192 = !DILocation(line: 0, scope: !2133, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 957, column: 36, scope: !2117, inlinedAt: !2185)
!2194 = !DILocation(line: 195, column: 26, scope: !2133, inlinedAt: !2193)
!2195 = !DILocation(line: 196, column: 13, scope: !2142, inlinedAt: !2193)
!2196 = !DILocation(line: 196, column: 7, scope: !2133, inlinedAt: !2193)
!2197 = !DILocation(line: 197, column: 5, scope: !2142, inlinedAt: !2193)
!2198 = !DILocation(line: 198, column: 5, scope: !2133, inlinedAt: !2193)
!2199 = !DILocation(line: 198, column: 11, scope: !2133, inlinedAt: !2193)
!2200 = !DILocation(line: 958, column: 10, scope: !2117, inlinedAt: !2185)
!2201 = !DILocation(line: 959, column: 1, scope: !2117, inlinedAt: !2185)
!2202 = !DILocation(line: 972, column: 3, scope: !2177)
!2203 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !106, file: !106, line: 976, type: !2204, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!27, !108, !35, !144}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "s", arg: 1, scope: !2203, file: !106, line: 976, type: !108)
!2208 = !DILocalVariable(name: "arg", arg: 2, scope: !2203, file: !106, line: 976, type: !35)
!2209 = !DILocalVariable(name: "argsize", arg: 3, scope: !2203, file: !106, line: 976, type: !144)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocation(line: 0, scope: !2150, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 978, column: 10, scope: !2203)
!2213 = !DILocation(line: 965, column: 3, scope: !2150, inlinedAt: !2212)
!2214 = !DILocation(line: 965, column: 32, scope: !2150, inlinedAt: !2212)
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"quoting_options_from_style: argument 0"}
!2217 = distinct !{!2217, !"quoting_options_from_style"}
!2218 = !DILocation(line: 965, column: 36, scope: !2150, inlinedAt: !2212)
!2219 = !DILocation(line: 0, scope: !2133, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 965, column: 36, scope: !2150, inlinedAt: !2212)
!2221 = !DILocation(line: 195, column: 26, scope: !2133, inlinedAt: !2220)
!2222 = !DILocation(line: 196, column: 13, scope: !2142, inlinedAt: !2220)
!2223 = !DILocation(line: 196, column: 7, scope: !2133, inlinedAt: !2220)
!2224 = !DILocation(line: 197, column: 5, scope: !2142, inlinedAt: !2220)
!2225 = !DILocation(line: 198, column: 5, scope: !2133, inlinedAt: !2220)
!2226 = !DILocation(line: 198, column: 11, scope: !2133, inlinedAt: !2220)
!2227 = !DILocation(line: 966, column: 10, scope: !2150, inlinedAt: !2212)
!2228 = !DILocation(line: 967, column: 1, scope: !2150, inlinedAt: !2212)
!2229 = !DILocation(line: 978, column: 3, scope: !2203)
!2230 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !106, file: !106, line: 982, type: !2231, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!27, !35, !144, !28}
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DILocalVariable(name: "arg", arg: 1, scope: !2230, file: !106, line: 982, type: !35)
!2235 = !DILocalVariable(name: "argsize", arg: 2, scope: !2230, file: !106, line: 982, type: !144)
!2236 = !DILocalVariable(name: "ch", arg: 3, scope: !2230, file: !106, line: 982, type: !28)
!2237 = !DILocalVariable(name: "options", scope: !2230, file: !106, line: 984, type: !156)
!2238 = !DILocation(line: 0, scope: !2230)
!2239 = !DILocation(line: 984, column: 3, scope: !2230)
!2240 = !DILocation(line: 984, column: 26, scope: !2230)
!2241 = !DILocation(line: 985, column: 13, scope: !2230)
!2242 = !{i64 0, i64 4, !800, i64 4, i64 4, !792, i64 8, i64 32, !800, i64 40, i64 8, !648, i64 48, i64 8, !648}
!2243 = !DILocation(line: 0, scope: !1071, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 986, column: 3, scope: !2230)
!2245 = !DILocation(line: 156, column: 62, scope: !1071, inlinedAt: !2244)
!2246 = !DILocation(line: 156, column: 57, scope: !1071, inlinedAt: !2244)
!2247 = !DILocation(line: 157, column: 15, scope: !1071, inlinedAt: !2244)
!2248 = !DILocation(line: 158, column: 12, scope: !1071, inlinedAt: !2244)
!2249 = !DILocation(line: 158, column: 15, scope: !1071, inlinedAt: !2244)
!2250 = !DILocation(line: 158, column: 25, scope: !1071, inlinedAt: !2244)
!2251 = !DILocation(line: 159, column: 18, scope: !1071, inlinedAt: !2244)
!2252 = !DILocation(line: 159, column: 23, scope: !1071, inlinedAt: !2244)
!2253 = !DILocation(line: 159, column: 6, scope: !1071, inlinedAt: !2244)
!2254 = !DILocation(line: 987, column: 10, scope: !2230)
!2255 = !DILocation(line: 988, column: 1, scope: !2230)
!2256 = !DILocation(line: 987, column: 3, scope: !2230)
!2257 = distinct !DISubprogram(name: "quotearg_char", scope: !106, file: !106, line: 991, type: !2258, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!27, !35, !28}
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "arg", arg: 1, scope: !2257, file: !106, line: 991, type: !35)
!2262 = !DILocalVariable(name: "ch", arg: 2, scope: !2257, file: !106, line: 991, type: !28)
!2263 = !DILocation(line: 0, scope: !2257)
!2264 = !DILocation(line: 0, scope: !2230, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 993, column: 10, scope: !2257)
!2266 = !DILocation(line: 984, column: 3, scope: !2230, inlinedAt: !2265)
!2267 = !DILocation(line: 984, column: 26, scope: !2230, inlinedAt: !2265)
!2268 = !DILocation(line: 985, column: 13, scope: !2230, inlinedAt: !2265)
!2269 = !DILocation(line: 0, scope: !1071, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 986, column: 3, scope: !2230, inlinedAt: !2265)
!2271 = !DILocation(line: 156, column: 62, scope: !1071, inlinedAt: !2270)
!2272 = !DILocation(line: 156, column: 57, scope: !1071, inlinedAt: !2270)
!2273 = !DILocation(line: 157, column: 15, scope: !1071, inlinedAt: !2270)
!2274 = !DILocation(line: 158, column: 12, scope: !1071, inlinedAt: !2270)
!2275 = !DILocation(line: 158, column: 15, scope: !1071, inlinedAt: !2270)
!2276 = !DILocation(line: 158, column: 25, scope: !1071, inlinedAt: !2270)
!2277 = !DILocation(line: 159, column: 18, scope: !1071, inlinedAt: !2270)
!2278 = !DILocation(line: 159, column: 23, scope: !1071, inlinedAt: !2270)
!2279 = !DILocation(line: 159, column: 6, scope: !1071, inlinedAt: !2270)
!2280 = !DILocation(line: 987, column: 10, scope: !2230, inlinedAt: !2265)
!2281 = !DILocation(line: 988, column: 1, scope: !2230, inlinedAt: !2265)
!2282 = !DILocation(line: 993, column: 3, scope: !2257)
!2283 = distinct !DISubprogram(name: "quotearg_colon", scope: !106, file: !106, line: 997, type: !919, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2284)
!2284 = !{!2285}
!2285 = !DILocalVariable(name: "arg", arg: 1, scope: !2283, file: !106, line: 997, type: !35)
!2286 = !DILocation(line: 0, scope: !2283)
!2287 = !DILocation(line: 0, scope: !2257, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 999, column: 10, scope: !2283)
!2289 = !DILocation(line: 0, scope: !2230, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 993, column: 10, scope: !2257, inlinedAt: !2288)
!2291 = !DILocation(line: 984, column: 3, scope: !2230, inlinedAt: !2290)
!2292 = !DILocation(line: 984, column: 26, scope: !2230, inlinedAt: !2290)
!2293 = !DILocation(line: 985, column: 13, scope: !2230, inlinedAt: !2290)
!2294 = !DILocation(line: 0, scope: !1071, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 986, column: 3, scope: !2230, inlinedAt: !2290)
!2296 = !DILocation(line: 156, column: 57, scope: !1071, inlinedAt: !2295)
!2297 = !DILocation(line: 158, column: 12, scope: !1071, inlinedAt: !2295)
!2298 = !DILocation(line: 159, column: 6, scope: !1071, inlinedAt: !2295)
!2299 = !DILocation(line: 987, column: 10, scope: !2230, inlinedAt: !2290)
!2300 = !DILocation(line: 988, column: 1, scope: !2230, inlinedAt: !2290)
!2301 = !DILocation(line: 999, column: 3, scope: !2283)
!2302 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !106, file: !106, line: 1003, type: !2107, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2303)
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2302, file: !106, line: 1003, type: !35)
!2305 = !DILocalVariable(name: "argsize", arg: 2, scope: !2302, file: !106, line: 1003, type: !144)
!2306 = !DILocation(line: 0, scope: !2302)
!2307 = !DILocation(line: 0, scope: !2230, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1005, column: 10, scope: !2302)
!2309 = !DILocation(line: 984, column: 3, scope: !2230, inlinedAt: !2308)
!2310 = !DILocation(line: 984, column: 26, scope: !2230, inlinedAt: !2308)
!2311 = !DILocation(line: 985, column: 13, scope: !2230, inlinedAt: !2308)
!2312 = !DILocation(line: 0, scope: !1071, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 986, column: 3, scope: !2230, inlinedAt: !2308)
!2314 = !DILocation(line: 156, column: 57, scope: !1071, inlinedAt: !2313)
!2315 = !DILocation(line: 158, column: 12, scope: !1071, inlinedAt: !2313)
!2316 = !DILocation(line: 159, column: 6, scope: !1071, inlinedAt: !2313)
!2317 = !DILocation(line: 987, column: 10, scope: !2230, inlinedAt: !2308)
!2318 = !DILocation(line: 988, column: 1, scope: !2230, inlinedAt: !2308)
!2319 = !DILocation(line: 1005, column: 3, scope: !2302)
!2320 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !106, file: !106, line: 1009, type: !2118, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2321)
!2321 = !{!2322, !2323, !2324, !2325}
!2322 = !DILocalVariable(name: "n", arg: 1, scope: !2320, file: !106, line: 1009, type: !25)
!2323 = !DILocalVariable(name: "s", arg: 2, scope: !2320, file: !106, line: 1009, type: !108)
!2324 = !DILocalVariable(name: "arg", arg: 3, scope: !2320, file: !106, line: 1009, type: !35)
!2325 = !DILocalVariable(name: "options", scope: !2320, file: !106, line: 1011, type: !156)
!2326 = !DILocation(line: 195, column: 26, scope: !2133, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1012, column: 13, scope: !2320)
!2328 = !DILocation(line: 0, scope: !2320)
!2329 = !DILocation(line: 1011, column: 3, scope: !2320)
!2330 = !DILocation(line: 1011, column: 26, scope: !2320)
!2331 = !DILocation(line: 1012, column: 13, scope: !2320)
!2332 = !{!2333}
!2333 = distinct !{!2333, !2334, !"quoting_options_from_style: argument 0"}
!2334 = distinct !{!2334, !"quoting_options_from_style"}
!2335 = !DILocation(line: 0, scope: !2133, inlinedAt: !2327)
!2336 = !DILocation(line: 196, column: 13, scope: !2142, inlinedAt: !2327)
!2337 = !DILocation(line: 196, column: 7, scope: !2133, inlinedAt: !2327)
!2338 = !DILocation(line: 197, column: 5, scope: !2142, inlinedAt: !2327)
!2339 = !{i64 0, i64 4, !792, i64 4, i64 32, !800, i64 36, i64 8, !648, i64 44, i64 8, !648}
!2340 = !DILocation(line: 0, scope: !1071, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1013, column: 3, scope: !2320)
!2342 = !DILocation(line: 156, column: 57, scope: !1071, inlinedAt: !2341)
!2343 = !DILocation(line: 158, column: 12, scope: !1071, inlinedAt: !2341)
!2344 = !DILocation(line: 159, column: 6, scope: !1071, inlinedAt: !2341)
!2345 = !DILocation(line: 1014, column: 10, scope: !2320)
!2346 = !DILocation(line: 1015, column: 1, scope: !2320)
!2347 = !DILocation(line: 1014, column: 3, scope: !2320)
!2348 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !106, file: !106, line: 1018, type: !2349, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!27, !25, !35, !35, !35}
!2351 = !{!2352, !2353, !2354, !2355}
!2352 = !DILocalVariable(name: "n", arg: 1, scope: !2348, file: !106, line: 1018, type: !25)
!2353 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2348, file: !106, line: 1018, type: !35)
!2354 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2348, file: !106, line: 1019, type: !35)
!2355 = !DILocalVariable(name: "arg", arg: 4, scope: !2348, file: !106, line: 1019, type: !35)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !106, line: 1026, type: !25)
!2358 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !106, file: !106, line: 1026, type: !2359, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!27, !25, !35, !35, !35, !144}
!2361 = !{!2357, !2362, !2363, !2364, !2365, !2366}
!2362 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2358, file: !106, line: 1026, type: !35)
!2363 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2358, file: !106, line: 1027, type: !35)
!2364 = !DILocalVariable(name: "arg", arg: 4, scope: !2358, file: !106, line: 1028, type: !35)
!2365 = !DILocalVariable(name: "argsize", arg: 5, scope: !2358, file: !106, line: 1028, type: !144)
!2366 = !DILocalVariable(name: "o", scope: !2358, file: !106, line: 1030, type: !156)
!2367 = !DILocation(line: 0, scope: !2358, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1021, column: 10, scope: !2348)
!2369 = !DILocation(line: 1030, column: 3, scope: !2358, inlinedAt: !2368)
!2370 = !DILocation(line: 1030, column: 26, scope: !2358, inlinedAt: !2368)
!2371 = !DILocation(line: 1030, column: 30, scope: !2358, inlinedAt: !2368)
!2372 = !DILocation(line: 0, scope: !1112, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 1031, column: 3, scope: !2358, inlinedAt: !2368)
!2374 = !DILocation(line: 184, column: 6, scope: !1112, inlinedAt: !2373)
!2375 = !DILocation(line: 184, column: 12, scope: !1112, inlinedAt: !2373)
!2376 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2373)
!2377 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2373)
!2378 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2373)
!2379 = !DILocation(line: 187, column: 6, scope: !1112, inlinedAt: !2373)
!2380 = !DILocation(line: 187, column: 17, scope: !1112, inlinedAt: !2373)
!2381 = !DILocation(line: 188, column: 6, scope: !1112, inlinedAt: !2373)
!2382 = !DILocation(line: 188, column: 18, scope: !1112, inlinedAt: !2373)
!2383 = !DILocation(line: 1032, column: 10, scope: !2358, inlinedAt: !2368)
!2384 = !DILocation(line: 1033, column: 1, scope: !2358, inlinedAt: !2368)
!2385 = !DILocation(line: 1021, column: 3, scope: !2348)
!2386 = !DILocation(line: 0, scope: !2358)
!2387 = !DILocation(line: 1030, column: 3, scope: !2358)
!2388 = !DILocation(line: 1030, column: 26, scope: !2358)
!2389 = !DILocation(line: 1030, column: 30, scope: !2358)
!2390 = !DILocation(line: 0, scope: !1112, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 1031, column: 3, scope: !2358)
!2392 = !DILocation(line: 184, column: 6, scope: !1112, inlinedAt: !2391)
!2393 = !DILocation(line: 184, column: 12, scope: !1112, inlinedAt: !2391)
!2394 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2391)
!2395 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2391)
!2396 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2391)
!2397 = !DILocation(line: 187, column: 6, scope: !1112, inlinedAt: !2391)
!2398 = !DILocation(line: 187, column: 17, scope: !1112, inlinedAt: !2391)
!2399 = !DILocation(line: 188, column: 6, scope: !1112, inlinedAt: !2391)
!2400 = !DILocation(line: 188, column: 18, scope: !1112, inlinedAt: !2391)
!2401 = !DILocation(line: 1032, column: 10, scope: !2358)
!2402 = !DILocation(line: 1033, column: 1, scope: !2358)
!2403 = !DILocation(line: 1032, column: 3, scope: !2358)
!2404 = distinct !DISubprogram(name: "quotearg_custom", scope: !106, file: !106, line: 1036, type: !2405, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!27, !35, !35, !35}
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2404, file: !106, line: 1036, type: !35)
!2409 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2404, file: !106, line: 1036, type: !35)
!2410 = !DILocalVariable(name: "arg", arg: 3, scope: !2404, file: !106, line: 1037, type: !35)
!2411 = !DILocation(line: 0, scope: !2404)
!2412 = !DILocation(line: 0, scope: !2348, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 1039, column: 10, scope: !2404)
!2414 = !DILocation(line: 0, scope: !2358, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1021, column: 10, scope: !2348, inlinedAt: !2413)
!2416 = !DILocation(line: 1030, column: 3, scope: !2358, inlinedAt: !2415)
!2417 = !DILocation(line: 1030, column: 26, scope: !2358, inlinedAt: !2415)
!2418 = !DILocation(line: 1030, column: 30, scope: !2358, inlinedAt: !2415)
!2419 = !DILocation(line: 0, scope: !1112, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1031, column: 3, scope: !2358, inlinedAt: !2415)
!2421 = !DILocation(line: 184, column: 6, scope: !1112, inlinedAt: !2420)
!2422 = !DILocation(line: 184, column: 12, scope: !1112, inlinedAt: !2420)
!2423 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2420)
!2424 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2420)
!2425 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2420)
!2426 = !DILocation(line: 187, column: 6, scope: !1112, inlinedAt: !2420)
!2427 = !DILocation(line: 187, column: 17, scope: !1112, inlinedAt: !2420)
!2428 = !DILocation(line: 188, column: 6, scope: !1112, inlinedAt: !2420)
!2429 = !DILocation(line: 188, column: 18, scope: !1112, inlinedAt: !2420)
!2430 = !DILocation(line: 1032, column: 10, scope: !2358, inlinedAt: !2415)
!2431 = !DILocation(line: 1033, column: 1, scope: !2358, inlinedAt: !2415)
!2432 = !DILocation(line: 1039, column: 3, scope: !2404)
!2433 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !106, file: !106, line: 1043, type: !2434, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!27, !35, !35, !35, !144}
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2433, file: !106, line: 1043, type: !35)
!2438 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2433, file: !106, line: 1043, type: !35)
!2439 = !DILocalVariable(name: "arg", arg: 3, scope: !2433, file: !106, line: 1044, type: !35)
!2440 = !DILocalVariable(name: "argsize", arg: 4, scope: !2433, file: !106, line: 1044, type: !144)
!2441 = !DILocation(line: 0, scope: !2433)
!2442 = !DILocation(line: 0, scope: !2358, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1046, column: 10, scope: !2433)
!2444 = !DILocation(line: 1030, column: 3, scope: !2358, inlinedAt: !2443)
!2445 = !DILocation(line: 1030, column: 26, scope: !2358, inlinedAt: !2443)
!2446 = !DILocation(line: 1030, column: 30, scope: !2358, inlinedAt: !2443)
!2447 = !DILocation(line: 0, scope: !1112, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 1031, column: 3, scope: !2358, inlinedAt: !2443)
!2449 = !DILocation(line: 184, column: 6, scope: !1112, inlinedAt: !2448)
!2450 = !DILocation(line: 184, column: 12, scope: !1112, inlinedAt: !2448)
!2451 = !DILocation(line: 185, column: 8, scope: !1126, inlinedAt: !2448)
!2452 = !DILocation(line: 185, column: 19, scope: !1126, inlinedAt: !2448)
!2453 = !DILocation(line: 186, column: 5, scope: !1126, inlinedAt: !2448)
!2454 = !DILocation(line: 187, column: 6, scope: !1112, inlinedAt: !2448)
!2455 = !DILocation(line: 187, column: 17, scope: !1112, inlinedAt: !2448)
!2456 = !DILocation(line: 188, column: 6, scope: !1112, inlinedAt: !2448)
!2457 = !DILocation(line: 188, column: 18, scope: !1112, inlinedAt: !2448)
!2458 = !DILocation(line: 1032, column: 10, scope: !2358, inlinedAt: !2443)
!2459 = !DILocation(line: 1033, column: 1, scope: !2358, inlinedAt: !2443)
!2460 = !DILocation(line: 1046, column: 3, scope: !2433)
!2461 = distinct !DISubprogram(name: "quote_n_mem", scope: !106, file: !106, line: 1061, type: !2462, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!35, !25, !35, !144}
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "n", arg: 1, scope: !2461, file: !106, line: 1061, type: !25)
!2466 = !DILocalVariable(name: "arg", arg: 2, scope: !2461, file: !106, line: 1061, type: !35)
!2467 = !DILocalVariable(name: "argsize", arg: 3, scope: !2461, file: !106, line: 1061, type: !144)
!2468 = !DILocation(line: 0, scope: !2461)
!2469 = !DILocation(line: 1063, column: 10, scope: !2461)
!2470 = !DILocation(line: 1063, column: 3, scope: !2461)
!2471 = distinct !DISubprogram(name: "quote_mem", scope: !106, file: !106, line: 1067, type: !2472, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!35, !35, !144}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2471, file: !106, line: 1067, type: !35)
!2476 = !DILocalVariable(name: "argsize", arg: 2, scope: !2471, file: !106, line: 1067, type: !144)
!2477 = !DILocation(line: 0, scope: !2471)
!2478 = !DILocation(line: 0, scope: !2461, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1069, column: 10, scope: !2471)
!2480 = !DILocation(line: 1063, column: 10, scope: !2461, inlinedAt: !2479)
!2481 = !DILocation(line: 1069, column: 3, scope: !2471)
!2482 = distinct !DISubprogram(name: "quote_n", scope: !106, file: !106, line: 1073, type: !2483, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!35, !25, !35}
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "n", arg: 1, scope: !2482, file: !106, line: 1073, type: !25)
!2487 = !DILocalVariable(name: "arg", arg: 2, scope: !2482, file: !106, line: 1073, type: !35)
!2488 = !DILocation(line: 0, scope: !2482)
!2489 = !DILocation(line: 0, scope: !2461, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 1075, column: 10, scope: !2482)
!2491 = !DILocation(line: 1063, column: 10, scope: !2461, inlinedAt: !2490)
!2492 = !DILocation(line: 1075, column: 3, scope: !2482)
!2493 = distinct !DISubprogram(name: "quote", scope: !106, file: !106, line: 1079, type: !2494, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!35, !35}
!2496 = !{!2497}
!2497 = !DILocalVariable(name: "arg", arg: 1, scope: !2493, file: !106, line: 1079, type: !35)
!2498 = !DILocation(line: 0, scope: !2493)
!2499 = !DILocation(line: 0, scope: !2482, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 1081, column: 10, scope: !2493)
!2501 = !DILocation(line: 0, scope: !2461, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 1075, column: 10, scope: !2482, inlinedAt: !2500)
!2503 = !DILocation(line: 1063, column: 10, scope: !2461, inlinedAt: !2502)
!2504 = !DILocation(line: 1081, column: 3, scope: !2493)
!2505 = distinct !DISubprogram(name: "version_etc_arn", scope: !197, file: !197, line: 61, type: !2506, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !2543)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !2508, !35, !35, !35, !2542, !144}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2510, file: !726, line: 51, baseType: !25, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2510, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2510, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2510, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2510, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2510, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2510, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2510, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2510, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2510, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2510, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2510, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2510, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2510, file: !726, line: 70, baseType: !2526, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2510, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2510, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2510, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2510, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2510, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2510, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2510, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2510, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2510, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2510, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2510, file: !726, line: 93, baseType: !2526, size: 64, offset: 1344)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2510, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2510, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2510, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2510, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549}
!2544 = !DILocalVariable(name: "stream", arg: 1, scope: !2505, file: !197, line: 61, type: !2508)
!2545 = !DILocalVariable(name: "command_name", arg: 2, scope: !2505, file: !197, line: 62, type: !35)
!2546 = !DILocalVariable(name: "package", arg: 3, scope: !2505, file: !197, line: 62, type: !35)
!2547 = !DILocalVariable(name: "version", arg: 4, scope: !2505, file: !197, line: 63, type: !35)
!2548 = !DILocalVariable(name: "authors", arg: 5, scope: !2505, file: !197, line: 64, type: !2542)
!2549 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2505, file: !197, line: 64, type: !144)
!2550 = !DILocation(line: 0, scope: !2505)
!2551 = !DILocation(line: 66, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2505, file: !197, line: 66, column: 7)
!2553 = !DILocation(line: 66, column: 7, scope: !2505)
!2554 = !DILocation(line: 67, column: 5, scope: !2552)
!2555 = !DILocation(line: 69, column: 5, scope: !2552)
!2556 = !DILocation(line: 83, column: 3, scope: !2505)
!2557 = !DILocation(line: 85, column: 3, scope: !2505)
!2558 = !DILocation(line: 88, column: 3, scope: !2505)
!2559 = !DILocation(line: 95, column: 3, scope: !2505)
!2560 = !DILocation(line: 97, column: 3, scope: !2505)
!2561 = !DILocation(line: 105, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2505, file: !197, line: 98, column: 5)
!2563 = !DILocation(line: 106, column: 7, scope: !2562)
!2564 = !DILocation(line: 109, column: 7, scope: !2562)
!2565 = !DILocation(line: 110, column: 7, scope: !2562)
!2566 = !DILocation(line: 113, column: 7, scope: !2562)
!2567 = !DILocation(line: 115, column: 7, scope: !2562)
!2568 = !DILocation(line: 120, column: 7, scope: !2562)
!2569 = !DILocation(line: 122, column: 7, scope: !2562)
!2570 = !DILocation(line: 127, column: 7, scope: !2562)
!2571 = !DILocation(line: 129, column: 7, scope: !2562)
!2572 = !DILocation(line: 134, column: 7, scope: !2562)
!2573 = !DILocation(line: 137, column: 7, scope: !2562)
!2574 = !DILocation(line: 142, column: 7, scope: !2562)
!2575 = !DILocation(line: 145, column: 7, scope: !2562)
!2576 = !DILocation(line: 150, column: 7, scope: !2562)
!2577 = !DILocation(line: 154, column: 7, scope: !2562)
!2578 = !DILocation(line: 159, column: 7, scope: !2562)
!2579 = !DILocation(line: 163, column: 7, scope: !2562)
!2580 = !DILocation(line: 170, column: 7, scope: !2562)
!2581 = !DILocation(line: 174, column: 7, scope: !2562)
!2582 = !DILocation(line: 176, column: 1, scope: !2505)
!2583 = distinct !DISubprogram(name: "version_etc_ar", scope: !197, file: !197, line: 183, type: !2584, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2508, !35, !35, !35, !2542}
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592}
!2587 = !DILocalVariable(name: "stream", arg: 1, scope: !2583, file: !197, line: 183, type: !2508)
!2588 = !DILocalVariable(name: "command_name", arg: 2, scope: !2583, file: !197, line: 184, type: !35)
!2589 = !DILocalVariable(name: "package", arg: 3, scope: !2583, file: !197, line: 184, type: !35)
!2590 = !DILocalVariable(name: "version", arg: 4, scope: !2583, file: !197, line: 185, type: !35)
!2591 = !DILocalVariable(name: "authors", arg: 5, scope: !2583, file: !197, line: 185, type: !2542)
!2592 = !DILocalVariable(name: "n_authors", scope: !2583, file: !197, line: 187, type: !144)
!2593 = !DILocation(line: 0, scope: !2583)
!2594 = !DILocation(line: 189, column: 8, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2583, file: !197, line: 189, column: 3)
!2596 = !DILocation(line: 0, scope: !2595)
!2597 = !DILocation(line: 189, column: 23, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !197, line: 189, column: 3)
!2599 = !DILocation(line: 189, column: 3, scope: !2595)
!2600 = !DILocation(line: 189, column: 52, scope: !2598)
!2601 = distinct !{!2601, !2599, !2602, !696}
!2602 = !DILocation(line: 190, column: 5, scope: !2595)
!2603 = !DILocation(line: 191, column: 3, scope: !2583)
!2604 = !DILocation(line: 192, column: 1, scope: !2583)
!2605 = distinct !DISubprogram(name: "version_etc_va", scope: !197, file: !197, line: 199, type: !2606, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !2615)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2508, !35, !35, !35, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2614}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2609, file: !197, line: 192, baseType: !7, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2609, file: !197, line: 192, baseType: !7, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2609, file: !197, line: 192, baseType: !64, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2609, file: !197, line: 192, baseType: !64, size: 64, offset: 128)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2616 = !DILocalVariable(name: "stream", arg: 1, scope: !2605, file: !197, line: 199, type: !2508)
!2617 = !DILocalVariable(name: "command_name", arg: 2, scope: !2605, file: !197, line: 200, type: !35)
!2618 = !DILocalVariable(name: "package", arg: 3, scope: !2605, file: !197, line: 200, type: !35)
!2619 = !DILocalVariable(name: "version", arg: 4, scope: !2605, file: !197, line: 201, type: !35)
!2620 = !DILocalVariable(name: "authors", arg: 5, scope: !2605, file: !197, line: 201, type: !2608)
!2621 = !DILocalVariable(name: "n_authors", scope: !2605, file: !197, line: 203, type: !144)
!2622 = !DILocalVariable(name: "authtab", scope: !2605, file: !197, line: 204, type: !2623)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !152)
!2624 = !DILocation(line: 0, scope: !2605)
!2625 = !DILocation(line: 204, column: 3, scope: !2605)
!2626 = !DILocation(line: 204, column: 15, scope: !2605)
!2627 = !DILocation(line: 208, column: 35, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !197, line: 206, column: 3)
!2629 = distinct !DILexicalBlock(scope: !2605, file: !197, line: 206, column: 3)
!2630 = !DILocation(line: 208, column: 14, scope: !2628)
!2631 = !DILocation(line: 208, column: 33, scope: !2628)
!2632 = !DILocation(line: 208, column: 67, scope: !2628)
!2633 = !DILocation(line: 206, column: 3, scope: !2629)
!2634 = !DILocation(line: 0, scope: !2629)
!2635 = !DILocation(line: 211, column: 3, scope: !2605)
!2636 = !DILocation(line: 213, column: 1, scope: !2605)
!2637 = distinct !DISubprogram(name: "version_etc", scope: !197, file: !197, line: 230, type: !2638, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2508, !35, !35, !35, null}
!2640 = !{!2641, !2642, !2643, !2644, !2645}
!2641 = !DILocalVariable(name: "stream", arg: 1, scope: !2637, file: !197, line: 230, type: !2508)
!2642 = !DILocalVariable(name: "command_name", arg: 2, scope: !2637, file: !197, line: 231, type: !35)
!2643 = !DILocalVariable(name: "package", arg: 3, scope: !2637, file: !197, line: 231, type: !35)
!2644 = !DILocalVariable(name: "version", arg: 4, scope: !2637, file: !197, line: 232, type: !35)
!2645 = !DILocalVariable(name: "authors", scope: !2637, file: !197, line: 234, type: !2646)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !721, line: 52, baseType: !2647)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2648, line: 32, baseType: !2649)
!2648 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !197, baseType: !2650)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2609, size: 192, elements: !754)
!2651 = !DILocation(line: 0, scope: !2637)
!2652 = !DILocation(line: 234, column: 3, scope: !2637)
!2653 = !DILocation(line: 234, column: 11, scope: !2637)
!2654 = !DILocation(line: 236, column: 3, scope: !2637)
!2655 = !DILocation(line: 237, column: 3, scope: !2637)
!2656 = !DILocation(line: 238, column: 3, scope: !2637)
!2657 = !DILocation(line: 239, column: 1, scope: !2637)
!2658 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !197, file: !197, line: 242, type: !657, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !82)
!2659 = !DILocation(line: 244, column: 3, scope: !2658)
!2660 = !DILocation(line: 249, column: 3, scope: !2658)
!2661 = !DILocation(line: 255, column: 3, scope: !2658)
!2662 = !DILocation(line: 260, column: 3, scope: !2658)
!2663 = !DILocation(line: 262, column: 1, scope: !2658)
!2664 = distinct !DISubprogram(name: "xnmalloc", scope: !207, file: !207, line: 99, type: !2665, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!64, !144, !144}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !207, line: 99, type: !144)
!2669 = !DILocalVariable(name: "s", arg: 2, scope: !2664, file: !207, line: 99, type: !144)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 101, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !207, line: 101, column: 7)
!2673 = !DILocation(line: 101, column: 7, scope: !2664)
!2674 = !DILocation(line: 102, column: 5, scope: !2672)
!2675 = !DILocation(line: 103, column: 21, scope: !2664)
!2676 = !DILocalVariable(name: "n", arg: 1, scope: !2677, file: !204, line: 39, type: !144)
!2677 = distinct !DISubprogram(name: "xmalloc", scope: !204, file: !204, line: 39, type: !2678, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!64, !144}
!2680 = !{!2676, !2681}
!2681 = !DILocalVariable(name: "p", scope: !2677, file: !204, line: 41, type: !64)
!2682 = !DILocation(line: 0, scope: !2677, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 103, column: 10, scope: !2664)
!2684 = !DILocation(line: 41, column: 13, scope: !2677, inlinedAt: !2683)
!2685 = !DILocation(line: 42, column: 8, scope: !2686, inlinedAt: !2683)
!2686 = distinct !DILexicalBlock(scope: !2677, file: !204, line: 42, column: 7)
!2687 = !DILocation(line: 42, column: 10, scope: !2686, inlinedAt: !2683)
!2688 = !DILocation(line: 43, column: 5, scope: !2686, inlinedAt: !2683)
!2689 = !DILocation(line: 103, column: 3, scope: !2664)
!2690 = !DILocation(line: 0, scope: !2677)
!2691 = !DILocation(line: 41, column: 13, scope: !2677)
!2692 = !DILocation(line: 42, column: 8, scope: !2686)
!2693 = !DILocation(line: 42, column: 10, scope: !2686)
!2694 = !DILocation(line: 43, column: 5, scope: !2686)
!2695 = !DILocation(line: 44, column: 3, scope: !2677)
!2696 = distinct !DISubprogram(name: "xnrealloc", scope: !207, file: !207, line: 112, type: !2697, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!64, !64, !144, !144}
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "p", arg: 1, scope: !2696, file: !207, line: 112, type: !64)
!2701 = !DILocalVariable(name: "n", arg: 2, scope: !2696, file: !207, line: 112, type: !144)
!2702 = !DILocalVariable(name: "s", arg: 3, scope: !2696, file: !207, line: 112, type: !144)
!2703 = !DILocation(line: 0, scope: !2696)
!2704 = !DILocation(line: 114, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2696, file: !207, line: 114, column: 7)
!2706 = !DILocation(line: 114, column: 7, scope: !2696)
!2707 = !DILocation(line: 115, column: 5, scope: !2705)
!2708 = !DILocation(line: 116, column: 25, scope: !2696)
!2709 = !DILocalVariable(name: "p", arg: 1, scope: !2710, file: !204, line: 51, type: !64)
!2710 = distinct !DISubprogram(name: "xrealloc", scope: !204, file: !204, line: 51, type: !2711, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!64, !64, !144}
!2713 = !{!2709, !2714}
!2714 = !DILocalVariable(name: "n", arg: 2, scope: !2710, file: !204, line: 51, type: !144)
!2715 = !DILocation(line: 0, scope: !2710, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 116, column: 10, scope: !2696)
!2717 = !DILocation(line: 53, column: 8, scope: !2718, inlinedAt: !2716)
!2718 = distinct !DILexicalBlock(scope: !2710, file: !204, line: 53, column: 7)
!2719 = !DILocation(line: 53, column: 10, scope: !2718, inlinedAt: !2716)
!2720 = !DILocation(line: 57, column: 7, scope: !2721, inlinedAt: !2716)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !204, line: 54, column: 5)
!2722 = !DILocation(line: 58, column: 7, scope: !2721, inlinedAt: !2716)
!2723 = !DILocation(line: 61, column: 7, scope: !2710, inlinedAt: !2716)
!2724 = !DILocation(line: 62, column: 8, scope: !2725, inlinedAt: !2716)
!2725 = distinct !DILexicalBlock(scope: !2710, file: !204, line: 62, column: 7)
!2726 = !DILocation(line: 62, column: 10, scope: !2725, inlinedAt: !2716)
!2727 = !DILocation(line: 63, column: 5, scope: !2725, inlinedAt: !2716)
!2728 = !DILocation(line: 116, column: 3, scope: !2696)
!2729 = !DILocation(line: 0, scope: !2710)
!2730 = !DILocation(line: 53, column: 8, scope: !2718)
!2731 = !DILocation(line: 53, column: 10, scope: !2718)
!2732 = !DILocation(line: 57, column: 7, scope: !2721)
!2733 = !DILocation(line: 58, column: 7, scope: !2721)
!2734 = !DILocation(line: 61, column: 7, scope: !2710)
!2735 = !DILocation(line: 62, column: 8, scope: !2725)
!2736 = !DILocation(line: 62, column: 10, scope: !2725)
!2737 = !DILocation(line: 63, column: 5, scope: !2725)
!2738 = !DILocation(line: 65, column: 1, scope: !2710)
!2739 = !DILocation(line: 0, scope: !208)
!2740 = !DILocation(line: 176, column: 14, scope: !208)
!2741 = !DILocation(line: 178, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !208, file: !207, line: 178, column: 7)
!2743 = !DILocation(line: 178, column: 7, scope: !208)
!2744 = !DILocation(line: 180, column: 13, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !207, line: 180, column: 11)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !207, line: 179, column: 5)
!2747 = !DILocation(line: 180, column: 11, scope: !2746)
!2748 = !DILocation(line: 188, column: 30, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !207, line: 181, column: 9)
!2750 = !DILocation(line: 189, column: 16, scope: !2749)
!2751 = !DILocation(line: 189, column: 13, scope: !2749)
!2752 = !DILocation(line: 190, column: 9, scope: !2749)
!2753 = !DILocation(line: 191, column: 11, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !207, line: 191, column: 11)
!2755 = !DILocation(line: 191, column: 11, scope: !2746)
!2756 = !DILocation(line: 206, column: 7, scope: !208)
!2757 = !DILocation(line: 207, column: 25, scope: !208)
!2758 = !DILocation(line: 0, scope: !2710, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 207, column: 10, scope: !208)
!2760 = !DILocation(line: 53, column: 10, scope: !2718, inlinedAt: !2759)
!2761 = !DILocation(line: 192, column: 9, scope: !2754)
!2762 = !DILocation(line: 200, column: 69, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !207, line: 200, column: 11)
!2764 = distinct !DILexicalBlock(scope: !2742, file: !207, line: 195, column: 5)
!2765 = !DILocation(line: 201, column: 11, scope: !2763)
!2766 = !DILocation(line: 200, column: 11, scope: !2764)
!2767 = !DILocation(line: 202, column: 9, scope: !2763)
!2768 = !DILocation(line: 203, column: 14, scope: !2764)
!2769 = !DILocation(line: 203, column: 18, scope: !2764)
!2770 = !DILocation(line: 203, column: 9, scope: !2764)
!2771 = !DILocation(line: 53, column: 8, scope: !2718, inlinedAt: !2759)
!2772 = !DILocation(line: 57, column: 7, scope: !2721, inlinedAt: !2759)
!2773 = !DILocation(line: 58, column: 7, scope: !2721, inlinedAt: !2759)
!2774 = !DILocation(line: 61, column: 7, scope: !2710, inlinedAt: !2759)
!2775 = !DILocation(line: 62, column: 8, scope: !2725, inlinedAt: !2759)
!2776 = !DILocation(line: 62, column: 10, scope: !2725, inlinedAt: !2759)
!2777 = !DILocation(line: 63, column: 5, scope: !2725, inlinedAt: !2759)
!2778 = !DILocation(line: 207, column: 3, scope: !208)
!2779 = distinct !DISubprogram(name: "xcharalloc", scope: !207, file: !207, line: 216, type: !1918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2780)
!2780 = !{!2781}
!2781 = !DILocalVariable(name: "n", arg: 1, scope: !2779, file: !207, line: 216, type: !144)
!2782 = !DILocation(line: 0, scope: !2779)
!2783 = !DILocation(line: 0, scope: !2677, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 218, column: 10, scope: !2779)
!2785 = !DILocation(line: 41, column: 13, scope: !2677, inlinedAt: !2784)
!2786 = !DILocation(line: 42, column: 8, scope: !2686, inlinedAt: !2784)
!2787 = !DILocation(line: 42, column: 10, scope: !2686, inlinedAt: !2784)
!2788 = !DILocation(line: 43, column: 5, scope: !2686, inlinedAt: !2784)
!2789 = !DILocation(line: 218, column: 3, scope: !2779)
!2790 = distinct !DISubprogram(name: "x2realloc", scope: !204, file: !204, line: 74, type: !2791, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!64, !64, !211}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "p", arg: 1, scope: !2790, file: !204, line: 74, type: !64)
!2795 = !DILocalVariable(name: "pn", arg: 2, scope: !2790, file: !204, line: 74, type: !211)
!2796 = !DILocation(line: 0, scope: !2790)
!2797 = !DILocation(line: 0, scope: !208, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 76, column: 10, scope: !2790)
!2799 = !DILocation(line: 176, column: 14, scope: !208, inlinedAt: !2798)
!2800 = !DILocation(line: 178, column: 9, scope: !2742, inlinedAt: !2798)
!2801 = !DILocation(line: 178, column: 7, scope: !208, inlinedAt: !2798)
!2802 = !DILocation(line: 180, column: 13, scope: !2745, inlinedAt: !2798)
!2803 = !DILocation(line: 180, column: 11, scope: !2746, inlinedAt: !2798)
!2804 = !DILocation(line: 191, column: 11, scope: !2754, inlinedAt: !2798)
!2805 = !DILocation(line: 191, column: 11, scope: !2746, inlinedAt: !2798)
!2806 = !DILocation(line: 192, column: 9, scope: !2754, inlinedAt: !2798)
!2807 = !DILocation(line: 201, column: 11, scope: !2763, inlinedAt: !2798)
!2808 = !DILocation(line: 200, column: 11, scope: !2764, inlinedAt: !2798)
!2809 = !DILocation(line: 202, column: 9, scope: !2763, inlinedAt: !2798)
!2810 = !DILocation(line: 203, column: 14, scope: !2764, inlinedAt: !2798)
!2811 = !DILocation(line: 203, column: 18, scope: !2764, inlinedAt: !2798)
!2812 = !DILocation(line: 203, column: 9, scope: !2764, inlinedAt: !2798)
!2813 = !DILocation(line: 0, scope: !2710, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 207, column: 10, scope: !208, inlinedAt: !2798)
!2815 = !DILocation(line: 53, column: 10, scope: !2718, inlinedAt: !2814)
!2816 = !DILocation(line: 206, column: 7, scope: !208, inlinedAt: !2798)
!2817 = !DILocation(line: 61, column: 7, scope: !2710, inlinedAt: !2814)
!2818 = !DILocation(line: 62, column: 8, scope: !2725, inlinedAt: !2814)
!2819 = !DILocation(line: 62, column: 10, scope: !2725, inlinedAt: !2814)
!2820 = !DILocation(line: 63, column: 5, scope: !2725, inlinedAt: !2814)
!2821 = !DILocation(line: 76, column: 3, scope: !2790)
!2822 = distinct !DISubprogram(name: "xzalloc", scope: !204, file: !204, line: 84, type: !2678, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2823)
!2823 = !{!2824}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !204, line: 84, type: !144)
!2825 = !DILocation(line: 0, scope: !2822)
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2827, file: !204, line: 93, type: !144)
!2827 = distinct !DISubprogram(name: "xcalloc", scope: !204, file: !204, line: 93, type: !2665, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2828)
!2828 = !{!2826, !2829, !2830}
!2829 = !DILocalVariable(name: "s", arg: 2, scope: !2827, file: !204, line: 93, type: !144)
!2830 = !DILocalVariable(name: "p", scope: !2827, file: !204, line: 95, type: !64)
!2831 = !DILocation(line: 0, scope: !2827, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 86, column: 10, scope: !2822)
!2833 = !DILocation(line: 100, column: 7, scope: !2834, inlinedAt: !2832)
!2834 = distinct !DILexicalBlock(scope: !2827, file: !204, line: 100, column: 7)
!2835 = !DILocation(line: 101, column: 7, scope: !2834, inlinedAt: !2832)
!2836 = !DILocation(line: 101, column: 18, scope: !2834, inlinedAt: !2832)
!2837 = !DILocation(line: 101, column: 16, scope: !2834, inlinedAt: !2832)
!2838 = !DILocation(line: 100, column: 7, scope: !2827, inlinedAt: !2832)
!2839 = !DILocation(line: 102, column: 5, scope: !2834, inlinedAt: !2832)
!2840 = !DILocation(line: 86, column: 3, scope: !2822)
!2841 = !DILocation(line: 0, scope: !2827)
!2842 = !DILocation(line: 100, column: 7, scope: !2834)
!2843 = !DILocation(line: 101, column: 7, scope: !2834)
!2844 = !DILocation(line: 101, column: 18, scope: !2834)
!2845 = !DILocation(line: 101, column: 16, scope: !2834)
!2846 = !DILocation(line: 100, column: 7, scope: !2827)
!2847 = !DILocation(line: 102, column: 5, scope: !2834)
!2848 = !DILocation(line: 103, column: 3, scope: !2827)
!2849 = distinct !DISubprogram(name: "xmemdup", scope: !204, file: !204, line: 111, type: !2850, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2854)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!64, !2852, !144}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2854 = !{!2855, !2856}
!2855 = !DILocalVariable(name: "p", arg: 1, scope: !2849, file: !204, line: 111, type: !2852)
!2856 = !DILocalVariable(name: "s", arg: 2, scope: !2849, file: !204, line: 111, type: !144)
!2857 = !DILocation(line: 0, scope: !2849)
!2858 = !DILocation(line: 0, scope: !2677, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 113, column: 18, scope: !2849)
!2860 = !DILocation(line: 41, column: 13, scope: !2677, inlinedAt: !2859)
!2861 = !DILocation(line: 42, column: 8, scope: !2686, inlinedAt: !2859)
!2862 = !DILocation(line: 42, column: 10, scope: !2686, inlinedAt: !2859)
!2863 = !DILocation(line: 43, column: 5, scope: !2686, inlinedAt: !2859)
!2864 = !DILocalVariable(name: "__dest", arg: 1, scope: !2865, file: !1445, line: 26, type: !2868)
!2865 = distinct !DISubprogram(name: "memcpy", scope: !1445, file: !1445, line: 26, type: !2866, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2870)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!64, !2868, !2869, !144}
!2868 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!2869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2852)
!2870 = !{!2864, !2871, !2872}
!2871 = !DILocalVariable(name: "__src", arg: 2, scope: !2865, file: !1445, line: 26, type: !2869)
!2872 = !DILocalVariable(name: "__len", arg: 3, scope: !2865, file: !1445, line: 26, type: !144)
!2873 = !DILocation(line: 0, scope: !2865, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 113, column: 10, scope: !2849)
!2875 = !DILocation(line: 29, column: 10, scope: !2865, inlinedAt: !2874)
!2876 = !DILocation(line: 113, column: 3, scope: !2849)
!2877 = distinct !DISubprogram(name: "xstrdup", scope: !204, file: !204, line: 119, type: !919, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !2878)
!2878 = !{!2879}
!2879 = !DILocalVariable(name: "string", arg: 1, scope: !2877, file: !204, line: 119, type: !35)
!2880 = !DILocation(line: 0, scope: !2877)
!2881 = !DILocation(line: 121, column: 27, scope: !2877)
!2882 = !DILocation(line: 121, column: 43, scope: !2877)
!2883 = !DILocation(line: 0, scope: !2849, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 121, column: 10, scope: !2877)
!2885 = !DILocation(line: 0, scope: !2677, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 113, column: 18, scope: !2849, inlinedAt: !2884)
!2887 = !DILocation(line: 41, column: 13, scope: !2677, inlinedAt: !2886)
!2888 = !DILocation(line: 42, column: 8, scope: !2686, inlinedAt: !2886)
!2889 = !DILocation(line: 42, column: 10, scope: !2686, inlinedAt: !2886)
!2890 = !DILocation(line: 43, column: 5, scope: !2686, inlinedAt: !2886)
!2891 = !DILocation(line: 0, scope: !2865, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 113, column: 10, scope: !2849, inlinedAt: !2884)
!2893 = !DILocation(line: 29, column: 10, scope: !2865, inlinedAt: !2892)
!2894 = !DILocation(line: 121, column: 3, scope: !2877)
!2895 = distinct !DISubprogram(name: "xalloc_die", scope: !221, file: !221, line: 32, type: !657, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !82)
!2896 = !DILocation(line: 34, column: 10, scope: !2895)
!2897 = !DILocation(line: 34, column: 33, scope: !2895)
!2898 = !DILocation(line: 34, column: 3, scope: !2895)
!2899 = !DILocation(line: 40, column: 3, scope: !2895)
!2900 = distinct !DISubprogram(name: "xstrtol", scope: !223, file: !223, line: 76, type: !2901, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !2905)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2903, !35, !26, !25, !2904, !35}
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 38, baseType: !13)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2918, !2919}
!2906 = !DILocalVariable(name: "s", arg: 1, scope: !2900, file: !223, line: 76, type: !35)
!2907 = !DILocalVariable(name: "ptr", arg: 2, scope: !2900, file: !223, line: 76, type: !26)
!2908 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !2900, file: !223, line: 76, type: !25)
!2909 = !DILocalVariable(name: "val", arg: 4, scope: !2900, file: !223, line: 77, type: !2904)
!2910 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !2900, file: !223, line: 77, type: !35)
!2911 = !DILocalVariable(name: "t_ptr", scope: !2900, file: !223, line: 79, type: !27)
!2912 = !DILocalVariable(name: "p", scope: !2900, file: !223, line: 80, type: !26)
!2913 = !DILocalVariable(name: "tmp", scope: !2900, file: !223, line: 81, type: !52)
!2914 = !DILocalVariable(name: "err", scope: !2900, file: !223, line: 82, type: !2903)
!2915 = !DILocalVariable(name: "base", scope: !2916, file: !223, line: 129, type: !25)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !223, line: 128, column: 5)
!2917 = distinct !DILexicalBlock(scope: !2900, file: !223, line: 127, column: 7)
!2918 = !DILocalVariable(name: "suffixes", scope: !2916, file: !223, line: 130, type: !25)
!2919 = !DILocalVariable(name: "overflow", scope: !2916, file: !223, line: 131, type: !2903)
!2920 = !DILocation(line: 0, scope: !2900)
!2921 = !DILocation(line: 79, column: 3, scope: !2900)
!2922 = !DILocation(line: 84, column: 3, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !223, line: 84, column: 3)
!2924 = distinct !DILexicalBlock(scope: !2900, file: !223, line: 84, column: 3)
!2925 = !DILocation(line: 86, column: 8, scope: !2900)
!2926 = !DILocation(line: 88, column: 3, scope: !2900)
!2927 = !DILocation(line: 88, column: 9, scope: !2900)
!2928 = !DILocation(line: 100, column: 9, scope: !2900)
!2929 = !DILocation(line: 102, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2900, file: !223, line: 102, column: 7)
!2931 = !DILocation(line: 102, column: 10, scope: !2930)
!2932 = !DILocation(line: 102, column: 7, scope: !2900)
!2933 = !DILocation(line: 106, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !223, line: 106, column: 11)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !223, line: 103, column: 5)
!2936 = !DILocation(line: 106, column: 26, scope: !2934)
!2937 = !DILocation(line: 106, column: 29, scope: !2934)
!2938 = !DILocation(line: 106, column: 33, scope: !2934)
!2939 = !DILocation(line: 106, column: 36, scope: !2934)
!2940 = !DILocation(line: 106, column: 11, scope: !2935)
!2941 = !DILocation(line: 111, column: 12, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2930, file: !223, line: 111, column: 12)
!2943 = !DILocation(line: 111, column: 12, scope: !2930)
!2944 = !DILocation(line: 116, column: 5, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2942, file: !223, line: 112, column: 5)
!2946 = !DILocation(line: 121, column: 8, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2900, file: !223, line: 121, column: 7)
!2948 = !DILocation(line: 121, column: 7, scope: !2900)
!2949 = !DILocation(line: 123, column: 12, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !223, line: 122, column: 5)
!2951 = !DILocation(line: 124, column: 7, scope: !2950)
!2952 = !DILocation(line: 127, column: 7, scope: !2917)
!2953 = !DILocation(line: 127, column: 11, scope: !2917)
!2954 = !DILocation(line: 127, column: 7, scope: !2900)
!2955 = !DILocation(line: 0, scope: !2916)
!2956 = !DILocation(line: 133, column: 12, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2916, file: !223, line: 133, column: 11)
!2958 = !DILocation(line: 133, column: 11, scope: !2916)
!2959 = !DILocation(line: 135, column: 16, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !223, line: 134, column: 9)
!2961 = !DILocation(line: 136, column: 22, scope: !2960)
!2962 = !DILocation(line: 136, column: 11, scope: !2960)
!2963 = !DILocation(line: 139, column: 7, scope: !2916)
!2964 = !DILocation(line: 151, column: 15, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !223, line: 151, column: 15)
!2966 = distinct !DILexicalBlock(scope: !2916, file: !223, line: 140, column: 9)
!2967 = !DILocation(line: 151, column: 15, scope: !2966)
!2968 = !DILocation(line: 152, column: 21, scope: !2965)
!2969 = !DILocation(line: 152, column: 13, scope: !2965)
!2970 = !DILocation(line: 155, column: 21, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !223, line: 155, column: 21)
!2972 = distinct !DILexicalBlock(scope: !2965, file: !223, line: 153, column: 15)
!2973 = !DILocation(line: 155, column: 29, scope: !2971)
!2974 = !DILocation(line: 155, column: 21, scope: !2972)
!2975 = !DILocation(line: 163, column: 17, scope: !2972)
!2976 = !DILocation(line: 167, column: 7, scope: !2916)
!2977 = !DILocalVariable(name: "x", arg: 1, scope: !2978, file: !223, line: 48, type: !2904)
!2978 = distinct !DISubprogram(name: "bkm_scale", scope: !223, file: !223, line: 48, type: !2979, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2903, !2904, !25}
!2981 = !{!2977, !2982}
!2982 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !2978, file: !223, line: 48, type: !25)
!2983 = !DILocation(line: 0, scope: !2978, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 170, column: 22, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2916, file: !223, line: 168, column: 9)
!2986 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !2984)
!2987 = distinct !DILexicalBlock(scope: !2978, file: !223, line: 50, column: 7)
!2988 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !2984)
!2989 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !2984)
!2990 = distinct !DILexicalBlock(scope: !2978, file: !223, line: 55, column: 7)
!2991 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !2984)
!2992 = !DILocation(line: 0, scope: !2978, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 177, column: 22, scope: !2985)
!2994 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !2993)
!2995 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !2993)
!2996 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !2993)
!2997 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !2993)
!2998 = !DILocalVariable(name: "x", arg: 1, scope: !2999, file: !223, line: 65, type: !2904)
!2999 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !223, file: !223, line: 65, type: !3000, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!2903, !2904, !25, !25}
!3002 = !{!2998, !3003, !3004, !3005}
!3003 = !DILocalVariable(name: "base", arg: 2, scope: !2999, file: !223, line: 65, type: !25)
!3004 = !DILocalVariable(name: "power", arg: 3, scope: !2999, file: !223, line: 65, type: !25)
!3005 = !DILocalVariable(name: "err", scope: !2999, file: !223, line: 67, type: !2903)
!3006 = !DILocation(line: 0, scope: !2999, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 185, column: 22, scope: !2985)
!3008 = !DILocation(line: 0, scope: !2978, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3007)
!3010 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3009)
!3011 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3009)
!3012 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3009)
!3013 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3009)
!3014 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3009)
!3015 = !DILocation(line: 0, scope: !2999, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 190, column: 22, scope: !2985)
!3017 = !DILocation(line: 0, scope: !2978, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3016)
!3019 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3018)
!3020 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3018)
!3021 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3018)
!3022 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3018)
!3023 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3018)
!3024 = !DILocation(line: 0, scope: !2999, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 195, column: 22, scope: !2985)
!3026 = !DILocation(line: 0, scope: !2978, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3025)
!3028 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3027)
!3029 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3027)
!3030 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3027)
!3031 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3027)
!3032 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3027)
!3033 = !DILocation(line: 0, scope: !2999, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 200, column: 22, scope: !2985)
!3035 = !DILocation(line: 0, scope: !2978, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3034)
!3037 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3036)
!3038 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3036)
!3039 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3036)
!3040 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3036)
!3041 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3036)
!3042 = !DILocation(line: 0, scope: !2999, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 204, column: 22, scope: !2985)
!3044 = !DILocation(line: 0, scope: !2978, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3043)
!3046 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3045)
!3047 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3045)
!3048 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3045)
!3049 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3045)
!3050 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3045)
!3051 = !DILocation(line: 0, scope: !2999, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 209, column: 22, scope: !2985)
!3053 = !DILocation(line: 0, scope: !2978, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3052)
!3055 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3054)
!3056 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3054)
!3057 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3054)
!3058 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3054)
!3059 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3054)
!3060 = !DILocation(line: 0, scope: !2978, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 213, column: 22, scope: !2985)
!3062 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3061)
!3063 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3061)
!3064 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3061)
!3065 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3061)
!3066 = !DILocation(line: 0, scope: !2999, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 217, column: 22, scope: !2985)
!3068 = !DILocation(line: 0, scope: !2978, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3067)
!3070 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3069)
!3071 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3069)
!3072 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3069)
!3073 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3069)
!3074 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3069)
!3075 = !DILocation(line: 0, scope: !2999, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 221, column: 22, scope: !2985)
!3077 = !DILocation(line: 0, scope: !2978, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 69, column: 12, scope: !2999, inlinedAt: !3076)
!3079 = !DILocation(line: 50, column: 38, scope: !2987, inlinedAt: !3078)
!3080 = !DILocation(line: 50, column: 7, scope: !2978, inlinedAt: !3078)
!3081 = !DILocation(line: 55, column: 24, scope: !2990, inlinedAt: !3078)
!3082 = !DILocation(line: 55, column: 39, scope: !2990, inlinedAt: !3078)
!3083 = !DILocation(line: 55, column: 7, scope: !2978, inlinedAt: !3078)
!3084 = !DILocation(line: 225, column: 16, scope: !2985)
!3085 = !DILocation(line: 226, column: 22, scope: !2985)
!3086 = !DILocation(line: 226, column: 11, scope: !2985)
!3087 = !DILocation(line: 0, scope: !2985)
!3088 = !DILocation(line: 229, column: 11, scope: !2916)
!3089 = !DILocation(line: 230, column: 10, scope: !2916)
!3090 = !DILocation(line: 231, column: 11, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2916, file: !223, line: 231, column: 11)
!3092 = !DILocation(line: 231, column: 11, scope: !2916)
!3093 = !DILocation(line: 107, column: 13, scope: !2934)
!3094 = !DILocation(line: 82, column: 16, scope: !2900)
!3095 = !DILocation(line: 235, column: 8, scope: !2900)
!3096 = !DILocation(line: 236, column: 3, scope: !2900)
!3097 = !DILocation(line: 237, column: 1, scope: !2900)
!3098 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3007)
!3099 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3016)
!3100 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3034)
!3101 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3043)
!3102 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3052)
!3103 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3067)
!3104 = !DILocation(line: 69, column: 9, scope: !2999, inlinedAt: !3076)
!3105 = distinct !DISubprogram(name: "rpl_calloc", scope: !226, file: !226, line: 42, type: !2665, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !226, line: 42, type: !144)
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !226, line: 42, type: !144)
!3109 = !DILocalVariable(name: "result", scope: !3105, file: !226, line: 44, type: !64)
!3110 = !DILocalVariable(name: "bytes", scope: !3111, file: !226, line: 56, type: !144)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !226, line: 53, column: 5)
!3112 = distinct !DILexicalBlock(scope: !3105, file: !226, line: 47, column: 7)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocation(line: 47, column: 9, scope: !3112)
!3115 = !DILocation(line: 47, column: 14, scope: !3112)
!3116 = !DILocation(line: 0, scope: !3111)
!3117 = !DILocation(line: 57, column: 21, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3111, file: !226, line: 57, column: 11)
!3119 = !DILocation(line: 57, column: 11, scope: !3111)
!3120 = !DILocation(line: 59, column: 11, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !226, line: 58, column: 9)
!3122 = !DILocation(line: 59, column: 17, scope: !3121)
!3123 = !DILocation(line: 65, column: 12, scope: !3105)
!3124 = !DILocation(line: 72, column: 3, scope: !3105)
!3125 = !DILocation(line: 73, column: 1, scope: !3105)
!3126 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !228, file: !228, line: 86, type: !3127, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3141)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!144, !3129, !35, !144, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1201, line: 6, baseType: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1203, line: 21, baseType: !3133)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1203, line: 13, size: 64, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3133, file: !1203, line: 15, baseType: !25, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3133, file: !1203, line: 20, baseType: !3137, size: 32, offset: 32)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3133, file: !1203, line: 16, size: 32, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3137, file: !1203, line: 18, baseType: !7, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3137, file: !1203, line: 19, baseType: !1212, size: 32)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3142 = !DILocalVariable(name: "pwc", arg: 1, scope: !3126, file: !228, line: 86, type: !3129)
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3126, file: !228, line: 86, type: !35)
!3144 = !DILocalVariable(name: "n", arg: 3, scope: !3126, file: !228, line: 86, type: !144)
!3145 = !DILocalVariable(name: "ps", arg: 4, scope: !3126, file: !228, line: 86, type: !3130)
!3146 = !DILocalVariable(name: "ret", scope: !3126, file: !228, line: 88, type: !144)
!3147 = !DILocalVariable(name: "wc", scope: !3126, file: !228, line: 89, type: !1215)
!3148 = !DILocalVariable(name: "uc", scope: !3149, file: !228, line: 156, type: !1079)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !228, line: 155, column: 5)
!3150 = distinct !DILexicalBlock(scope: !3126, file: !228, line: 154, column: 7)
!3151 = !DILocation(line: 0, scope: !3126)
!3152 = !DILocation(line: 89, column: 3, scope: !3126)
!3153 = !DILocation(line: 105, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3126, file: !228, line: 105, column: 7)
!3155 = !DILocation(line: 105, column: 7, scope: !3126)
!3156 = !DILocation(line: 145, column: 9, scope: !3126)
!3157 = !DILocation(line: 154, column: 19, scope: !3150)
!3158 = !DILocation(line: 154, column: 26, scope: !3150)
!3159 = !DILocation(line: 154, column: 41, scope: !3150)
!3160 = !DILocation(line: 154, column: 7, scope: !3126)
!3161 = !DILocation(line: 156, column: 26, scope: !3149)
!3162 = !DILocation(line: 0, scope: !3149)
!3163 = !DILocation(line: 157, column: 14, scope: !3149)
!3164 = !DILocation(line: 157, column: 12, scope: !3149)
!3165 = !DILocation(line: 163, column: 1, scope: !3126)
!3166 = !DISubprogram(name: "mbrtowc", scope: !1878, file: !1878, line: 296, type: !3167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!146, !74, !35, !146, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3170 = distinct !DISubprogram(name: "close_stream", scope: !231, file: !231, line: 56, type: !3171, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3207)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!25, !3173}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3175, file: !726, line: 51, baseType: !25, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3175, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3175, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3175, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3175, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3175, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3175, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3175, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3175, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3175, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3175, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3175, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3175, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3175, file: !726, line: 70, baseType: !3191, size: 64, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3175, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3175, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3175, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3175, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3175, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3175, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3175, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3175, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3175, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3175, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3175, file: !726, line: 93, baseType: !3191, size: 64, offset: 1344)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3175, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3175, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3175, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3175, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!3207 = !{!3208, !3209, !3211, !3212}
!3208 = !DILocalVariable(name: "stream", arg: 1, scope: !3170, file: !231, line: 56, type: !3173)
!3209 = !DILocalVariable(name: "some_pending", scope: !3170, file: !231, line: 58, type: !3210)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3211 = !DILocalVariable(name: "prev_fail", scope: !3170, file: !231, line: 59, type: !3210)
!3212 = !DILocalVariable(name: "fclose_fail", scope: !3170, file: !231, line: 60, type: !3210)
!3213 = !DILocation(line: 0, scope: !3170)
!3214 = !DILocation(line: 58, column: 30, scope: !3170)
!3215 = !DILocalVariable(name: "__stream", arg: 1, scope: !3216, file: !893, line: 135, type: !3173)
!3216 = distinct !DISubprogram(name: "ferror_unlocked", scope: !893, file: !893, line: 135, type: !3171, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3217)
!3217 = !{!3215}
!3218 = !DILocation(line: 0, scope: !3216, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 59, column: 27, scope: !3170)
!3220 = !DILocation(line: 137, column: 10, scope: !3216, inlinedAt: !3219)
!3221 = !DILocation(line: 59, column: 43, scope: !3170)
!3222 = !DILocation(line: 60, column: 29, scope: !3170)
!3223 = !DILocation(line: 60, column: 45, scope: !3170)
!3224 = !DILocation(line: 70, column: 17, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3170, file: !231, line: 70, column: 7)
!3226 = !DILocation(line: 58, column: 50, scope: !3170)
!3227 = !DILocation(line: 70, column: 33, scope: !3225)
!3228 = !DILocation(line: 70, column: 53, scope: !3225)
!3229 = !DILocation(line: 70, column: 59, scope: !3225)
!3230 = !DILocation(line: 70, column: 7, scope: !3170)
!3231 = !DILocation(line: 72, column: 11, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3225, file: !231, line: 71, column: 5)
!3233 = !DILocation(line: 73, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3232, file: !231, line: 72, column: 11)
!3235 = !DILocation(line: 73, column: 15, scope: !3234)
!3236 = !DILocation(line: 78, column: 1, scope: !3170)
!3237 = distinct !DISubprogram(name: "hard_locale", scope: !233, file: !233, line: 27, type: !879, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3238)
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "category", arg: 1, scope: !3237, file: !233, line: 27, type: !25)
!3240 = !DILocalVariable(name: "locale", scope: !3237, file: !233, line: 29, type: !3241)
!3241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2056, elements: !3242)
!3242 = !{!3243}
!3243 = !DISubrange(count: 257)
!3244 = !DILocation(line: 0, scope: !3237)
!3245 = !DILocation(line: 29, column: 3, scope: !3237)
!3246 = !DILocation(line: 29, column: 8, scope: !3237)
!3247 = !DILocation(line: 31, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3237, file: !233, line: 31, column: 7)
!3249 = !DILocation(line: 31, column: 7, scope: !3237)
!3250 = !DILocation(line: 34, column: 12, scope: !3237)
!3251 = !DILocation(line: 34, column: 38, scope: !3237)
!3252 = !DILocation(line: 34, column: 41, scope: !3237)
!3253 = !DILocation(line: 34, column: 66, scope: !3237)
!3254 = !DILocation(line: 35, column: 1, scope: !3237)
!3255 = distinct !DISubprogram(name: "locale_charset", scope: !235, file: !235, line: 831, type: !3256, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!35}
!3258 = !{!3259}
!3259 = !DILocalVariable(name: "codeset", scope: !3255, file: !235, line: 833, type: !35)
!3260 = !DILocation(line: 847, column: 13, scope: !3255)
!3261 = !DILocation(line: 0, scope: !3255)
!3262 = !DILocation(line: 911, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !235, line: 911, column: 7)
!3264 = !DILocation(line: 911, column: 7, scope: !3255)
!3265 = !DILocation(line: 1070, column: 13, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !235, line: 1070, column: 13)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !235, line: 1060, column: 7)
!3268 = distinct !DILexicalBlock(scope: !3255, file: !235, line: 1019, column: 3)
!3269 = !DILocation(line: 1070, column: 24, scope: !3266)
!3270 = !DILocation(line: 1070, column: 13, scope: !3267)
!3271 = !DILocation(line: 1158, column: 3, scope: !3255)
!3272 = !DISubprogram(name: "nl_langinfo", scope: !238, file: !238, line: 661, type: !3273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!27, !25}
!3275 = distinct !DISubprogram(name: "setlocale_null_r", scope: !624, file: !624, line: 269, type: !3276, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!25, !25, !27, !144}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "category", arg: 1, scope: !3275, file: !624, line: 269, type: !25)
!3280 = !DILocalVariable(name: "buf", arg: 2, scope: !3275, file: !624, line: 269, type: !27)
!3281 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3275, file: !624, line: 269, type: !144)
!3282 = !DILocation(line: 0, scope: !3275)
!3283 = !DILocalVariable(name: "category", arg: 1, scope: !3284, file: !624, line: 91, type: !25)
!3284 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !624, file: !624, line: 91, type: !3276, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3285)
!3285 = !{!3283, !3286, !3287, !3288, !3289}
!3286 = !DILocalVariable(name: "buf", arg: 2, scope: !3284, file: !624, line: 91, type: !27)
!3287 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3284, file: !624, line: 91, type: !144)
!3288 = !DILocalVariable(name: "result", scope: !3284, file: !624, line: 140, type: !35)
!3289 = !DILocalVariable(name: "length", scope: !3290, file: !624, line: 154, type: !144)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !624, line: 153, column: 5)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !624, line: 142, column: 7)
!3292 = !DILocation(line: 0, scope: !3284, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 274, column: 10, scope: !3275)
!3294 = !DILocalVariable(name: "category", arg: 1, scope: !3295, file: !624, line: 60, type: !25)
!3295 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !624, file: !624, line: 60, type: !3296, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!35, !25}
!3298 = !{!3294, !3299}
!3299 = !DILocalVariable(name: "result", scope: !3295, file: !624, line: 62, type: !35)
!3300 = !DILocation(line: 0, scope: !3295, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 140, column: 24, scope: !3284, inlinedAt: !3293)
!3302 = !DILocation(line: 62, column: 24, scope: !3295, inlinedAt: !3301)
!3303 = !DILocation(line: 142, column: 14, scope: !3291, inlinedAt: !3293)
!3304 = !DILocation(line: 142, column: 7, scope: !3284, inlinedAt: !3293)
!3305 = !DILocation(line: 145, column: 19, scope: !3306, inlinedAt: !3293)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !624, line: 145, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3291, file: !624, line: 143, column: 5)
!3308 = !DILocation(line: 145, column: 11, scope: !3307, inlinedAt: !3293)
!3309 = !DILocation(line: 149, column: 16, scope: !3306, inlinedAt: !3293)
!3310 = !DILocation(line: 149, column: 9, scope: !3306, inlinedAt: !3293)
!3311 = !DILocation(line: 154, column: 23, scope: !3290, inlinedAt: !3293)
!3312 = !DILocation(line: 0, scope: !3290, inlinedAt: !3293)
!3313 = !DILocation(line: 155, column: 18, scope: !3314, inlinedAt: !3293)
!3314 = distinct !DILexicalBlock(scope: !3290, file: !624, line: 155, column: 11)
!3315 = !DILocation(line: 155, column: 11, scope: !3290, inlinedAt: !3293)
!3316 = !DILocation(line: 157, column: 39, scope: !3317, inlinedAt: !3293)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !624, line: 156, column: 9)
!3318 = !DILocalVariable(name: "__dest", arg: 1, scope: !3319, file: !1445, line: 26, type: !2868)
!3319 = distinct !DISubprogram(name: "memcpy", scope: !1445, file: !1445, line: 26, type: !2866, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3320)
!3320 = !{!3318, !3321, !3322}
!3321 = !DILocalVariable(name: "__src", arg: 2, scope: !3319, file: !1445, line: 26, type: !2869)
!3322 = !DILocalVariable(name: "__len", arg: 3, scope: !3319, file: !1445, line: 26, type: !144)
!3323 = !DILocation(line: 0, scope: !3319, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 157, column: 11, scope: !3317, inlinedAt: !3293)
!3325 = !DILocation(line: 29, column: 10, scope: !3319, inlinedAt: !3324)
!3326 = !DILocation(line: 158, column: 11, scope: !3317, inlinedAt: !3293)
!3327 = !DILocation(line: 162, column: 23, scope: !3328, inlinedAt: !3293)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !624, line: 162, column: 15)
!3329 = distinct !DILexicalBlock(scope: !3314, file: !624, line: 161, column: 9)
!3330 = !DILocation(line: 162, column: 15, scope: !3329, inlinedAt: !3293)
!3331 = !DILocation(line: 167, column: 44, scope: !3332, inlinedAt: !3293)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !624, line: 163, column: 13)
!3333 = !DILocation(line: 0, scope: !3319, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 167, column: 15, scope: !3332, inlinedAt: !3293)
!3335 = !DILocation(line: 29, column: 10, scope: !3319, inlinedAt: !3334)
!3336 = !DILocation(line: 168, column: 15, scope: !3332, inlinedAt: !3293)
!3337 = !DILocation(line: 168, column: 32, scope: !3332, inlinedAt: !3293)
!3338 = !DILocation(line: 169, column: 13, scope: !3332, inlinedAt: !3293)
!3339 = !DILocation(line: 0, scope: !3291, inlinedAt: !3293)
!3340 = !DILocation(line: 274, column: 3, scope: !3275)
!3341 = distinct !DISubprogram(name: "setlocale_null", scope: !624, file: !624, line: 301, type: !3296, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "category", arg: 1, scope: !3341, file: !624, line: 301, type: !25)
!3344 = !DILocation(line: 0, scope: !3341)
!3345 = !DILocation(line: 0, scope: !3295, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 304, column: 10, scope: !3341)
!3347 = !DILocation(line: 62, column: 24, scope: !3295, inlinedAt: !3346)
!3348 = !DILocation(line: 304, column: 3, scope: !3341)
!3349 = distinct !DISubprogram(name: "rpl_fclose", scope: !626, file: !626, line: 58, type: !3350, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3386)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!25, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3354, file: !726, line: 51, baseType: !25, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3354, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3354, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3354, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3354, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3354, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3354, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3354, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3354, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3354, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3354, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3354, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3354, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3354, file: !726, line: 70, baseType: !3370, size: 64, offset: 832)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3354, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3354, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3354, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3354, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3354, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3354, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3354, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3354, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3354, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3354, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3354, file: !726, line: 93, baseType: !3370, size: 64, offset: 1344)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3354, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3354, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3354, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3354, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DILocalVariable(name: "fp", arg: 1, scope: !3349, file: !626, line: 58, type: !3352)
!3388 = !DILocalVariable(name: "saved_errno", scope: !3349, file: !626, line: 60, type: !25)
!3389 = !DILocalVariable(name: "fd", scope: !3349, file: !626, line: 61, type: !25)
!3390 = !DILocalVariable(name: "result", scope: !3349, file: !626, line: 62, type: !25)
!3391 = !DILocation(line: 0, scope: !3349)
!3392 = !DILocation(line: 65, column: 8, scope: !3349)
!3393 = !DILocation(line: 66, column: 10, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3349, file: !626, line: 66, column: 7)
!3395 = !DILocation(line: 66, column: 7, scope: !3349)
!3396 = !DILocation(line: 67, column: 12, scope: !3394)
!3397 = !DILocation(line: 67, column: 5, scope: !3394)
!3398 = !DILocation(line: 72, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3349, file: !626, line: 72, column: 7)
!3400 = !DILocation(line: 72, column: 23, scope: !3399)
!3401 = !DILocation(line: 72, column: 33, scope: !3399)
!3402 = !DILocation(line: 72, column: 26, scope: !3399)
!3403 = !DILocation(line: 72, column: 59, scope: !3399)
!3404 = !DILocation(line: 73, column: 7, scope: !3399)
!3405 = !DILocation(line: 73, column: 10, scope: !3399)
!3406 = !DILocation(line: 72, column: 7, scope: !3349)
!3407 = !DILocation(line: 100, column: 12, scope: !3349)
!3408 = !DILocation(line: 105, column: 7, scope: !3349)
!3409 = !DILocation(line: 74, column: 19, scope: !3399)
!3410 = !DILocation(line: 105, column: 19, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3349, file: !626, line: 105, column: 7)
!3412 = !DILocation(line: 107, column: 13, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3411, file: !626, line: 106, column: 5)
!3414 = !DILocation(line: 109, column: 5, scope: !3413)
!3415 = !DILocation(line: 112, column: 1, scope: !3349)
!3416 = !DISubprogram(name: "fileno", scope: !721, file: !721, line: 785, type: !3417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!25, !3370}
!3419 = !DISubprogram(name: "fclose", scope: !721, file: !721, line: 213, type: !3417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3420 = !DISubprogram(name: "lseek", scope: !944, file: !944, line: 334, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!52, !25, !52, !25}
!3423 = distinct !DISubprogram(name: "rpl_fflush", scope: !628, file: !628, line: 129, type: !3424, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3460)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!25, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3428, file: !726, line: 51, baseType: !25, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3428, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3428, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3428, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3428, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3428, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3428, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3428, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3428, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3428, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3428, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3428, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3428, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3428, file: !726, line: 70, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3428, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3428, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3428, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3428, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3428, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3428, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3428, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3428, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3428, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3428, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3428, file: !726, line: 93, baseType: !3444, size: 64, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3428, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3428, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3428, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3428, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!3460 = !{!3461}
!3461 = !DILocalVariable(name: "stream", arg: 1, scope: !3423, file: !628, line: 129, type: !3426)
!3462 = !DILocation(line: 0, scope: !3423)
!3463 = !DILocation(line: 150, column: 14, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3423, file: !628, line: 150, column: 7)
!3465 = !DILocation(line: 150, column: 22, scope: !3464)
!3466 = !DILocation(line: 150, column: 27, scope: !3464)
!3467 = !DILocation(line: 150, column: 7, scope: !3423)
!3468 = !DILocation(line: 151, column: 12, scope: !3464)
!3469 = !DILocation(line: 151, column: 5, scope: !3464)
!3470 = !DILocalVariable(name: "fp", arg: 1, scope: !3471, file: !628, line: 41, type: !3426)
!3471 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !628, file: !628, line: 41, type: !3472, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !3426}
!3474 = !{!3470}
!3475 = !DILocation(line: 0, scope: !3471, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 156, column: 3, scope: !3423)
!3477 = !DILocation(line: 43, column: 11, scope: !3478, inlinedAt: !3476)
!3478 = distinct !DILexicalBlock(scope: !3471, file: !628, line: 43, column: 7)
!3479 = !DILocation(line: 43, column: 18, scope: !3478, inlinedAt: !3476)
!3480 = !DILocation(line: 43, column: 7, scope: !3471, inlinedAt: !3476)
!3481 = !DILocation(line: 45, column: 5, scope: !3478, inlinedAt: !3476)
!3482 = !DILocation(line: 158, column: 10, scope: !3423)
!3483 = !DILocation(line: 158, column: 3, scope: !3423)
!3484 = !DILocation(line: 235, column: 1, scope: !3423)
!3485 = !DISubprogram(name: "fflush", scope: !721, file: !721, line: 218, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!25, !3444}
!3488 = distinct !DISubprogram(name: "rpl_fseeko", scope: !630, file: !630, line: 28, type: !3489, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3526)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!25, !3491, !3525, !25}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !898, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !726, line: 49, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !726, line: 51, baseType: !25, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !726, line: 54, baseType: !27, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !726, line: 55, baseType: !27, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !726, line: 56, baseType: !27, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !726, line: 57, baseType: !27, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !726, line: 58, baseType: !27, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !726, line: 59, baseType: !27, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !726, line: 60, baseType: !27, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !726, line: 61, baseType: !27, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !726, line: 64, baseType: !27, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !726, line: 65, baseType: !27, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !726, line: 66, baseType: !27, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !726, line: 68, baseType: !741, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !726, line: 70, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !726, line: 72, baseType: !25, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !726, line: 73, baseType: !25, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !726, line: 74, baseType: !747, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !726, line: 77, baseType: !143, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !726, line: 78, baseType: !751, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !726, line: 79, baseType: !753, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !726, line: 81, baseType: !757, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !726, line: 89, baseType: !760, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3493, file: !726, line: 91, baseType: !762, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3493, file: !726, line: 92, baseType: !765, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3493, file: !726, line: 93, baseType: !3509, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3493, file: !726, line: 94, baseType: !64, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !726, line: 95, baseType: !144, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !726, line: 96, baseType: !25, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !726, line: 98, baseType: !772, size: 160, offset: 1568)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !721, line: 63, baseType: !747)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "fp", arg: 1, scope: !3488, file: !630, line: 28, type: !3491)
!3528 = !DILocalVariable(name: "offset", arg: 2, scope: !3488, file: !630, line: 28, type: !3525)
!3529 = !DILocalVariable(name: "whence", arg: 3, scope: !3488, file: !630, line: 28, type: !25)
!3530 = !DILocalVariable(name: "pos", scope: !3531, file: !630, line: 117, type: !3525)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !630, line: 113, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3488, file: !630, line: 52, column: 7)
!3533 = !DILocation(line: 0, scope: !3488)
!3534 = !DILocation(line: 52, column: 11, scope: !3532)
!3535 = !{!904, !649, i64 16}
!3536 = !DILocation(line: 52, column: 31, scope: !3532)
!3537 = !{!904, !649, i64 8}
!3538 = !DILocation(line: 52, column: 24, scope: !3532)
!3539 = !DILocation(line: 53, column: 7, scope: !3532)
!3540 = !DILocation(line: 53, column: 14, scope: !3532)
!3541 = !{!904, !649, i64 40}
!3542 = !DILocation(line: 53, column: 35, scope: !3532)
!3543 = !{!904, !649, i64 32}
!3544 = !DILocation(line: 53, column: 28, scope: !3532)
!3545 = !DILocation(line: 54, column: 7, scope: !3532)
!3546 = !DILocation(line: 54, column: 14, scope: !3532)
!3547 = !{!904, !649, i64 72}
!3548 = !DILocation(line: 54, column: 28, scope: !3532)
!3549 = !DILocation(line: 52, column: 7, scope: !3488)
!3550 = !DILocation(line: 117, column: 26, scope: !3531)
!3551 = !DILocation(line: 117, column: 19, scope: !3531)
!3552 = !DILocation(line: 0, scope: !3531)
!3553 = !DILocation(line: 118, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3531, file: !630, line: 118, column: 11)
!3555 = !DILocation(line: 118, column: 11, scope: !3531)
!3556 = !DILocation(line: 129, column: 11, scope: !3531)
!3557 = !DILocation(line: 129, column: 18, scope: !3531)
!3558 = !DILocation(line: 130, column: 11, scope: !3531)
!3559 = !DILocation(line: 130, column: 19, scope: !3531)
!3560 = !{!904, !840, i64 144}
!3561 = !DILocation(line: 161, column: 7, scope: !3531)
!3562 = !DILocation(line: 163, column: 10, scope: !3488)
!3563 = !DILocation(line: 163, column: 3, scope: !3488)
!3564 = !DILocation(line: 164, column: 1, scope: !3488)
!3565 = !DISubprogram(name: "fseeko", scope: !721, file: !721, line: 712, type: !3566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!25, !3509, !52, !25}
