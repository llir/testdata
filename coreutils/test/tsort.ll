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
@.str.38 = private unnamed_addr constant [21 x i8] c"!STREQ (str, s->str)\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"!STREQ (str, p->str)\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !0
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !38
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !56
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !58
@.str.36 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !60
@.str.37 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !66
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !71
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !74
@.str.49 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.50 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.51, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.52, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !80
@.str.2.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !97
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !104
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !132
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !138
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !150
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !157
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !164
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !152
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !166
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.94 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.95 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.108 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.113 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.114 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !172
@.str.1.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.146 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !639 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !643, metadata !DIExpression()), !dbg !644
  %3 = icmp eq i32 %0, 0, !dbg !645
  br i1 %3, label %9, label %4, !dbg !647

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !648, !tbaa !650
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !648
  %7 = load i8*, i8** @program_name, align 8, !dbg !648, !tbaa !650
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !648
  br label %61, !dbg !648

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !654
  %11 = load i8*, i8** @program_name, align 8, !dbg !654, !tbaa !650
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !654
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 5) #25, !dbg !656
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !650
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #25, !dbg !656
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !662
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !650
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !662
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !663
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !650
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !663
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !664
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !650
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !665, metadata !DIExpression()) #25, !dbg !683
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !685
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #25, !dbg !685
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !670, metadata !DIExpression()) #25, !dbg !686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !679, metadata !DIExpression()) #25, !dbg !683
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !680, metadata !DIExpression()) #25, !dbg !683
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !687
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !680, metadata !DIExpression()) #25, !dbg !683
  br label %27, !dbg !688

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !680, metadata !DIExpression()) #25, !dbg !683
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %28) #26, !dbg !689
  %31 = icmp eq i32 %30, 0, !dbg !689
  br i1 %31, label %37, label %32, !dbg !688

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !690
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !680, metadata !DIExpression()) #25, !dbg !683
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !691
  %35 = load i8*, i8** %34, align 8, !dbg !691, !tbaa !692
  %36 = icmp eq i8* %35, null, !dbg !694
  br i1 %36, label %37, label %27, !dbg !695, !llvm.loop !696

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !698
  %40 = load i8*, i8** %39, align 8, !dbg !698, !tbaa !700
  %41 = icmp eq i8* %40, null, !dbg !701
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %40, !dbg !702
  call void @llvm.dbg.value(metadata i8* %42, metadata !679, metadata !DIExpression()) #25, !dbg !683
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #25, !dbg !703
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #25, !dbg !703
  %45 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !704
  call void @llvm.dbg.value(metadata i8* %45, metadata !682, metadata !DIExpression()) #25, !dbg !683
  %46 = icmp eq i8* %45, null, !dbg !705
  br i1 %46, label %54, label %47, !dbg !707

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #26, !dbg !708
  %49 = icmp eq i32 %48, 0, !dbg !708
  br i1 %49, label %54, label %50, !dbg !709

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !710
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !650
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #25, !dbg !710
  br label %54, !dbg !712

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #25, !dbg !713
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #25, !dbg !713
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !714
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !714
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !714
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #25, !dbg !714
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #25, !dbg !715
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #27, !dbg !716
  unreachable, !dbg !716
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !717 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !721 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !777 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !781 {
  %3 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !786, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8** %1, metadata !787, metadata !DIExpression()), !dbg !789
  %4 = load i8*, i8** %1, align 8, !dbg !790, !tbaa !650
  tail call void @set_program_name(i8* %4) #25, !dbg !791
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #25, !dbg !792
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !793
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !794
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !795
  %9 = load i8*, i8** @Version, align 8, !dbg !796, !tbaa !650
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %9, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #25, !dbg !797
  %10 = load i32, i32* @optind, align 4, !dbg !798, !tbaa !800
  %11 = sub nsw i32 %0, %10, !dbg !802
  %12 = icmp sgt i32 %11, 1, !dbg !803
  br i1 %12, label %13, label %21, !dbg !804

13:                                               ; preds = %2
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #25, !dbg !805
  %15 = load i32, i32* @optind, align 4, !dbg !807, !tbaa !800
  %16 = add nsw i32 %15, 1, !dbg !808
  %17 = sext i32 %16 to i64, !dbg !809
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !809
  %19 = load i8*, i8** %18, align 8, !dbg !809, !tbaa !650
  %20 = tail call i8* @quote(i8* %19) #25, !dbg !810
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %20) #25, !dbg !811
  tail call void @usage(i32 1) #28, !dbg !812
  unreachable, !dbg !812

21:                                               ; preds = %2
  %22 = icmp eq i32 %10, %0, !dbg !813
  br i1 %22, label %27, label %23, !dbg !814

23:                                               ; preds = %21
  %24 = sext i32 %10 to i64, !dbg !815
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !815
  %26 = load i8*, i8** %25, align 8, !dbg !815, !tbaa !650
  br label %27, !dbg !814

27:                                               ; preds = %21, %23
  %28 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %21 ], !dbg !814
  call void @llvm.dbg.value(metadata i8* %28, metadata !816, metadata !DIExpression()) #25, !dbg !838
  call void @llvm.dbg.value(metadata i8 1, metadata !821, metadata !DIExpression()) #25, !dbg !838
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !823, metadata !DIExpression()) #25, !dbg !838
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !824, metadata !DIExpression()) #25, !dbg !838
  %29 = bitcast %struct.tokenbuffer* %3 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #25, !dbg !840
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %3, metadata !825, metadata !DIExpression()) #25, !dbg !841
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #26, !dbg !842
  %31 = icmp eq i32 %30, 0, !dbg !842
  call void @llvm.dbg.value(metadata i1 %31, metadata !832, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !838
  call void @llvm.dbg.value(metadata i8* null, metadata !843, metadata !DIExpression()) #25, !dbg !849
  %32 = tail call noalias i8* @xmalloc(i64 56) #25, !dbg !851
  call void @llvm.dbg.value(metadata i8* %32, metadata !848, metadata !DIExpression()) #25, !dbg !849
  %33 = bitcast i8* %32 to %struct.item*, !dbg !851
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !848, metadata !DIExpression()) #25, !dbg !849
  %34 = getelementptr inbounds i8, i8* %32, i64 32, !dbg !852
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false) #25, !dbg !853
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !822, metadata !DIExpression()) #25, !dbg !838
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(28) %32, i8 0, i64 28, i1 false) #25, !dbg !854
  br i1 %31, label %43, label %35, !dbg !855

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !857, !tbaa !650
  %37 = tail call %struct._IO_FILE* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %36) #25, !dbg !858
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !858
  br i1 %38, label %39, label %43, !dbg !859

39:                                               ; preds = %35
  %40 = tail call i32* @__errno_location() #29, !dbg !860
  %41 = load i32, i32* %40, align 4, !dbg !860, !tbaa !800
  %42 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #25, !dbg !860
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %42) #25, !dbg !860
  unreachable, !dbg !860

43:                                               ; preds = %35, %27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !861, !tbaa !650
  tail call void @fadvise(%struct._IO_FILE* %44, i32 2) #25, !dbg !862
  call void @init_tokenbuffer(%struct.tokenbuffer* nonnull %3) #25, !dbg !863
  %45 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1
  %46 = getelementptr inbounds i8, i8* %32, i64 16
  %47 = bitcast i8* %46 to %struct.item**
  %48 = bitcast i8* %46 to i8**
  br label %49, !dbg !864

49:                                               ; preds = %212, %43
  %50 = phi %struct.item* [ null, %43 ], [ %213, %212 ], !dbg !865
  call void @llvm.dbg.value(metadata %struct.item* %50, metadata !823, metadata !DIExpression()) #25, !dbg !838
  call void @llvm.dbg.value(metadata %struct.item* %50, metadata !824, metadata !DIExpression()) #25, !dbg !838
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !866, !tbaa !650
  %52 = call i64 @readtoken(%struct._IO_FILE* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, %struct.tokenbuffer* nonnull %3) #25, !dbg !867
  call void @llvm.dbg.value(metadata i64 %52, metadata !833, metadata !DIExpression()) #25, !dbg !868
  switch i64 %52, label %54 [
    i64 -1, label %214
    i64 0, label %53
  ], !dbg !869

53:                                               ; preds = %49
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 461, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #27, !dbg !870
  unreachable, !dbg !870

54:                                               ; preds = %49
  %55 = load i8*, i8** %45, align 8, !dbg !873, !tbaa !874
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !877, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata i8* %55, metadata !882, metadata !DIExpression()) #25, !dbg !889
  %56 = load %struct.item*, %struct.item** %47, align 8, !dbg !891, !tbaa !893
  %57 = icmp eq %struct.item* %56, null, !dbg !895
  br i1 %57, label %63, label %58, !dbg !896

58:                                               ; preds = %54
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !887, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %56, metadata !886, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %56, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %59 = getelementptr inbounds %struct.item, %struct.item* %56, i64 0, i32 0, !dbg !897
  %60 = load i8*, i8** %59, align 8, !dbg !897, !tbaa !899
  %61 = call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(1) %60) #26, !dbg !900
  call void @llvm.dbg.value(metadata i32 %61, metadata !888, metadata !DIExpression()) #25, !dbg !889
  %62 = icmp eq i32 %61, 0, !dbg !901
  br i1 %62, label %191, label %74, !dbg !903

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !843, metadata !DIExpression()) #25, !dbg !904
  %64 = call noalias i8* @xmalloc(i64 56) #25, !dbg !906
  call void @llvm.dbg.value(metadata i8* %64, metadata !848, metadata !DIExpression()) #25, !dbg !904
  %65 = icmp eq i8* %55, null, !dbg !907
  br i1 %65, label %68, label %66, !dbg !907

66:                                               ; preds = %63
  %67 = call noalias i8* @xstrdup(i8* nonnull %55) #25, !dbg !908
  br label %68, !dbg !907

68:                                               ; preds = %66, %63
  %69 = phi i8* [ %67, %66 ], [ null, %63 ], !dbg !907
  %70 = bitcast i8* %64 to %struct.item*, !dbg !906
  call void @llvm.dbg.value(metadata %struct.item* %70, metadata !848, metadata !DIExpression()) #25, !dbg !904
  %71 = bitcast i8* %64 to i8**, !dbg !909
  store i8* %69, i8** %71, align 8, !dbg !910, !tbaa !899
  %72 = getelementptr inbounds i8, i8* %64, i64 8, !dbg !911
  %73 = getelementptr inbounds i8, i8* %64, i64 32, !dbg !912
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %72, i8 0, i64 20, i1 false) #25, !dbg !913
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false) #25, !dbg !914
  store i8* %64, i8** %48, align 8, !dbg !915, !tbaa !893
  br label %191, !dbg !916

74:                                               ; preds = %58, %181
  %75 = phi i32 [ %189, %181 ], [ %61, %58 ]
  %76 = phi %struct.item* [ %186, %181 ], [ %33, %58 ]
  %77 = phi %struct.item* [ %185, %181 ], [ %56, %58 ]
  %78 = phi %struct.item* [ %83, %181 ], [ %56, %58 ]
  call void @llvm.dbg.value(metadata %struct.item* %76, metadata !887, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %77, metadata !886, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %78, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %79 = icmp slt i32 %75, 0, !dbg !917
  %80 = getelementptr inbounds %struct.item, %struct.item* %78, i64 0, i32 1, !dbg !919
  %81 = getelementptr inbounds %struct.item, %struct.item* %78, i64 0, i32 2, !dbg !919
  %82 = select i1 %79, %struct.item** %80, %struct.item** %81, !dbg !919
  %83 = load %struct.item*, %struct.item** %82, align 8, !dbg !920, !tbaa !650
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !884, metadata !DIExpression()) #25, !dbg !889
  %84 = icmp eq %struct.item* %83, null, !dbg !921
  br i1 %84, label %85, label %181, !dbg !923

85:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %55, metadata !843, metadata !DIExpression()) #25, !dbg !924
  %86 = call noalias i8* @xmalloc(i64 56) #25, !dbg !927
  call void @llvm.dbg.value(metadata i8* %86, metadata !848, metadata !DIExpression()) #25, !dbg !924
  %87 = icmp eq i8* %55, null, !dbg !928
  br i1 %87, label %90, label %88, !dbg !928

88:                                               ; preds = %85
  %89 = call noalias i8* @xstrdup(i8* nonnull %55) #25, !dbg !929
  br label %90, !dbg !928

90:                                               ; preds = %88, %85
  %91 = phi i8* [ %89, %88 ], [ null, %85 ], !dbg !928
  %92 = bitcast i8* %86 to %struct.item*, !dbg !927
  call void @llvm.dbg.value(metadata %struct.item* %92, metadata !848, metadata !DIExpression()) #25, !dbg !924
  %93 = bitcast i8* %86 to i8**, !dbg !930
  store i8* %91, i8** %93, align 8, !dbg !931, !tbaa !899
  %94 = getelementptr inbounds i8, i8* %86, i64 8, !dbg !932
  %95 = getelementptr inbounds i8, i8* %86, i64 32, !dbg !933
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %94, i8 0, i64 20, i1 false) #25, !dbg !934
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %95, i8 0, i64 24, i1 false) #25, !dbg !935
  call void @llvm.dbg.value(metadata %struct.item* %92, metadata !884, metadata !DIExpression()) #25, !dbg !889
  %96 = select i1 %79, %struct.item** %80, %struct.item** %81, !dbg !936
  %97 = bitcast %struct.item** %96 to i8**, !dbg !937
  store i8* %86, i8** %97, align 8, !dbg !937, !tbaa !650
  %98 = getelementptr inbounds %struct.item, %struct.item* %77, i64 0, i32 0, !dbg !939
  %99 = load i8*, i8** %98, align 8, !dbg !939, !tbaa !899
  %100 = call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(1) %99) #26, !dbg !939
  %101 = icmp eq i32 %100, 0, !dbg !939
  br i1 %101, label %102, label %103, !dbg !942

102:                                              ; preds = %90
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 168, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #27, !dbg !939
  unreachable, !dbg !939

103:                                              ; preds = %90
  %104 = icmp slt i32 %100, 0, !dbg !943
  %105 = getelementptr inbounds %struct.item, %struct.item* %77, i64 0, i32 1, !dbg !945
  %106 = getelementptr inbounds %struct.item, %struct.item* %77, i64 0, i32 2, !dbg !945
  %107 = select i1 %104, %struct.item** %105, %struct.item** %106, !dbg !945
  %108 = select i1 %104, i32 -1, i32 1, !dbg !945
  %109 = load %struct.item*, %struct.item** %107, align 8, !dbg !946, !tbaa !650
  call void @llvm.dbg.value(metadata i32 %108, metadata !888, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %109, metadata !885, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %109, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %110 = icmp eq %struct.item* %109, %92, !dbg !947
  br i1 %110, label %127, label %111, !dbg !948

111:                                              ; preds = %103, %118
  %112 = phi %struct.item* [ %125, %118 ], [ %109, %103 ]
  call void @llvm.dbg.value(metadata %struct.item* %112, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %113 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 0, !dbg !949
  %114 = load i8*, i8** %113, align 8, !dbg !949, !tbaa !899
  %115 = call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(1) %114) #26, !dbg !949
  %116 = icmp eq i32 %115, 0, !dbg !949
  br i1 %116, label %117, label %118, !dbg !953

117:                                              ; preds = %111
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #27, !dbg !949
  unreachable, !dbg !949

118:                                              ; preds = %111
  %119 = icmp slt i32 %115, 0, !dbg !954
  %120 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 1, !dbg !956
  %121 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 2, !dbg !956
  %122 = select i1 %119, i32 -1, i32 1, !dbg !956
  %123 = select i1 %119, %struct.item** %120, %struct.item** %121, !dbg !956
  %124 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 3, !dbg !957
  store i32 %122, i32* %124, align 8, !dbg !959
  %125 = load %struct.item*, %struct.item** %123, align 8, !dbg !960, !tbaa !650
  call void @llvm.dbg.value(metadata %struct.item* %125, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %126 = icmp eq %struct.item* %125, %92, !dbg !947
  br i1 %126, label %127, label %111, !dbg !948, !llvm.loop !961

127:                                              ; preds = %118, %103
  %128 = getelementptr inbounds %struct.item, %struct.item* %77, i64 0, i32 3, !dbg !963
  %129 = load i32, i32* %128, align 8, !dbg !963, !tbaa !965
  %130 = icmp eq i32 %129, 0, !dbg !966
  %131 = sub nsw i32 0, %108
  %132 = icmp eq i32 %129, %131
  %133 = or i1 %130, %132, !dbg !967
  br i1 %133, label %134, label %136, !dbg !967

134:                                              ; preds = %127
  %135 = add nsw i32 %129, %108, !dbg !968
  store i32 %135, i32* %128, align 8, !dbg !968, !tbaa !965
  br label %191, !dbg !970

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.item, %struct.item* %109, i64 0, i32 3, !dbg !971
  %138 = load i32, i32* %137, align 8, !dbg !971, !tbaa !965
  %139 = icmp eq i32 %138, %108, !dbg !973
  br i1 %139, label %140, label %147, !dbg !974

140:                                              ; preds = %136
  call void @llvm.dbg.value(metadata %struct.item* %109, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %141 = getelementptr inbounds %struct.item, %struct.item* %109, i64 0, i32 1, !dbg !975
  %142 = getelementptr inbounds %struct.item, %struct.item* %109, i64 0, i32 2, !dbg !975
  %143 = select i1 %104, %struct.item** %142, %struct.item** %141, !dbg !975
  %144 = select i1 %104, %struct.item** %105, %struct.item** %106, !dbg !975
  %145 = select i1 %104, %struct.item** %142, %struct.item** %141, !dbg !975
  %146 = load %struct.item*, %struct.item** %143, align 8, !dbg !977, !tbaa !650
  store %struct.item* %146, %struct.item** %144, align 8, !dbg !977, !tbaa !650
  store %struct.item* %77, %struct.item** %145, align 8, !dbg !977, !tbaa !650
  store i32 0, i32* %137, align 8, !dbg !979, !tbaa !965
  br label %172, !dbg !980

147:                                              ; preds = %136
  br i1 %104, label %148, label %154, !dbg !981

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.item, %struct.item* %109, i64 0, i32 2, !dbg !983
  %150 = load %struct.item*, %struct.item** %149, align 8, !dbg !983, !tbaa !893
  call void @llvm.dbg.value(metadata %struct.item* %150, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %151 = getelementptr inbounds %struct.item, %struct.item* %150, i64 0, i32 1, !dbg !986
  %152 = load %struct.item*, %struct.item** %151, align 8, !dbg !986, !tbaa !987
  store %struct.item* %152, %struct.item** %149, align 8, !dbg !988, !tbaa !893
  store %struct.item* %109, %struct.item** %151, align 8, !dbg !989, !tbaa !987
  %153 = getelementptr inbounds %struct.item, %struct.item* %150, i64 0, i32 2, !dbg !990
  br label %160, !dbg !991

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.item, %struct.item* %109, i64 0, i32 1, !dbg !992
  %156 = load %struct.item*, %struct.item** %155, align 8, !dbg !992, !tbaa !987
  call void @llvm.dbg.value(metadata %struct.item* %156, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %157 = getelementptr inbounds %struct.item, %struct.item* %156, i64 0, i32 2, !dbg !994
  %158 = load %struct.item*, %struct.item** %157, align 8, !dbg !994, !tbaa !893
  store %struct.item* %158, %struct.item** %155, align 8, !dbg !995, !tbaa !987
  store %struct.item* %109, %struct.item** %157, align 8, !dbg !996, !tbaa !893
  %159 = getelementptr inbounds %struct.item, %struct.item* %156, i64 0, i32 1, !dbg !997
  br label %160

160:                                              ; preds = %154, %148
  %161 = phi %struct.item** [ %159, %154 ], [ %153, %148 ]
  %162 = phi %struct.item** [ %106, %154 ], [ %105, %148 ]
  %163 = phi %struct.item* [ %156, %154 ], [ %150, %148 ], !dbg !998
  %164 = load %struct.item*, %struct.item** %161, align 8, !dbg !998, !tbaa !650
  store %struct.item* %164, %struct.item** %162, align 8, !dbg !998, !tbaa !650
  store %struct.item* %77, %struct.item** %161, align 8, !dbg !998, !tbaa !650
  call void @llvm.dbg.value(metadata %struct.item* %163, metadata !883, metadata !DIExpression()) #25, !dbg !889
  store i32 0, i32* %128, align 8, !dbg !999, !tbaa !965
  store i32 0, i32* %137, align 8, !dbg !1000, !tbaa !965
  %165 = getelementptr inbounds %struct.item, %struct.item* %163, i64 0, i32 3, !dbg !1001
  %166 = load i32, i32* %165, align 8, !dbg !1001, !tbaa !965
  %167 = icmp eq i32 %166, %108, !dbg !1003
  br i1 %167, label %168, label %169, !dbg !1004

168:                                              ; preds = %160
  store i32 %131, i32* %128, align 8, !dbg !1005, !tbaa !965
  br label %172, !dbg !1006

169:                                              ; preds = %160
  %170 = icmp eq i32 %166, %131, !dbg !1007
  br i1 %170, label %171, label %172, !dbg !1009

171:                                              ; preds = %169
  store i32 %108, i32* %137, align 8, !dbg !1010, !tbaa !965
  br label %172, !dbg !1011

172:                                              ; preds = %168, %169, %171, %140
  %173 = phi i32* [ %128, %140 ], [ %165, %171 ], [ %165, %169 ], [ %165, %168 ]
  %174 = phi %struct.item* [ %109, %140 ], [ %163, %171 ], [ %163, %169 ], [ %163, %168 ], !dbg !1012
  store i32 0, i32* %173, align 8, !dbg !1012, !tbaa !965
  call void @llvm.dbg.value(metadata %struct.item* %174, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %175 = getelementptr inbounds %struct.item, %struct.item* %76, i64 0, i32 2, !dbg !1013
  %176 = load %struct.item*, %struct.item** %175, align 8, !dbg !1013, !tbaa !893
  %177 = icmp eq %struct.item* %77, %176, !dbg !1015
  br i1 %177, label %178, label %179, !dbg !1016

178:                                              ; preds = %172
  store %struct.item* %174, %struct.item** %175, align 8, !dbg !1017, !tbaa !893
  br label %191, !dbg !1018

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.item, %struct.item* %76, i64 0, i32 1, !dbg !1019
  store %struct.item* %174, %struct.item** %180, align 8, !dbg !1020, !tbaa !987
  br label %191

181:                                              ; preds = %74
  %182 = getelementptr inbounds %struct.item, %struct.item* %83, i64 0, i32 3, !dbg !1021
  %183 = load i32, i32* %182, align 8, !dbg !1021, !tbaa !965
  %184 = icmp eq i32 %183, 0, !dbg !1023
  %185 = select i1 %184, %struct.item* %77, %struct.item* %83, !dbg !1024
  %186 = select i1 %184, %struct.item* %76, %struct.item* %78, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.item* %186, metadata !887, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %185, metadata !886, metadata !DIExpression()) #25, !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !883, metadata !DIExpression()) #25, !dbg !889
  %187 = getelementptr inbounds %struct.item, %struct.item* %83, i64 0, i32 0, !dbg !897
  %188 = load i8*, i8** %187, align 8, !dbg !897, !tbaa !899
  %189 = call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(1) %188) #26, !dbg !900
  call void @llvm.dbg.value(metadata i32 %189, metadata !888, metadata !DIExpression()) #25, !dbg !889
  %190 = icmp eq i32 %189, 0, !dbg !901
  br i1 %190, label %191, label %74, !dbg !903, !llvm.loop !1025

191:                                              ; preds = %181, %179, %178, %134, %68, %58
  %192 = phi %struct.item* [ %70, %68 ], [ %92, %134 ], [ %92, %179 ], [ %92, %178 ], [ %56, %58 ], [ %83, %181 ], !dbg !889
  call void @llvm.dbg.value(metadata %struct.item* %192, metadata !824, metadata !DIExpression()) #25, !dbg !838
  %193 = icmp eq %struct.item* %50, null, !dbg !1028
  br i1 %193, label %212, label %194, !dbg !1030

194:                                              ; preds = %191
  call void @llvm.dbg.value(metadata %struct.item* %50, metadata !1031, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata %struct.item* %192, metadata !1036, metadata !DIExpression()) #25, !dbg !1038
  %195 = getelementptr inbounds %struct.item, %struct.item* %50, i64 0, i32 0, !dbg !1041
  %196 = load i8*, i8** %195, align 8, !dbg !1041, !tbaa !899
  %197 = getelementptr inbounds %struct.item, %struct.item* %192, i64 0, i32 0, !dbg !1041
  %198 = load i8*, i8** %197, align 8, !dbg !1041, !tbaa !899
  %199 = call i32 @strcmp(i8* nonnull dereferenceable(1) %196, i8* nonnull dereferenceable(1) %198) #26, !dbg !1041
  %200 = icmp eq i32 %199, 0, !dbg !1041
  br i1 %200, label %212, label %201, !dbg !1043

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.item, %struct.item* %192, i64 0, i32 4, !dbg !1044
  %203 = load i64, i64* %202, align 8, !dbg !1046, !tbaa !1047
  %204 = add i64 %203, 1, !dbg !1046
  store i64 %204, i64* %202, align 8, !dbg !1046, !tbaa !1047
  %205 = call noalias i8* @xmalloc(i64 16) #25, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %205, metadata !1037, metadata !DIExpression()) #25, !dbg !1038
  %206 = bitcast i8* %205 to %struct.item**, !dbg !1049
  store %struct.item* %192, %struct.item** %206, align 8, !dbg !1050, !tbaa !1051
  %207 = getelementptr inbounds %struct.item, %struct.item* %50, i64 0, i32 6, !dbg !1053
  %208 = load %struct.successor*, %struct.successor** %207, align 8, !dbg !1053, !tbaa !1054
  %209 = getelementptr inbounds i8, i8* %205, i64 8, !dbg !1055
  %210 = bitcast i8* %209 to %struct.successor**, !dbg !1055
  store %struct.successor* %208, %struct.successor** %210, align 8, !dbg !1056, !tbaa !1057
  %211 = bitcast %struct.successor** %207 to i8**, !dbg !1058
  store i8* %205, i8** %211, align 8, !dbg !1058, !tbaa !1054
  br label %212, !dbg !1059

212:                                              ; preds = %201, %194, %191
  %213 = phi %struct.item* [ %192, %191 ], [ null, %194 ], [ null, %201 ]
  br label %49, !dbg !838

214:                                              ; preds = %49
  %215 = icmp eq %struct.item* %50, null, !dbg !1060
  br i1 %215, label %219, label %216, !dbg !1062

216:                                              ; preds = %214
  %217 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 5) #25, !dbg !1063
  %218 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #25, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %217, i8* %218) #25, !dbg !1063
  unreachable, !dbg !1063

219:                                              ; preds = %214
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1064, metadata !DIExpression()) #25, !dbg !1073
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, metadata !1072, metadata !DIExpression()) #25, !dbg !1073
  %220 = load %struct.item*, %struct.item** %47, align 8, !dbg !1075, !tbaa !893
  %221 = icmp eq %struct.item* %220, null, !dbg !1077
  br i1 %221, label %224, label %222, !dbg !1078

222:                                              ; preds = %219
  %223 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %220, i1 (%struct.item*)* nonnull @count_items) #25, !dbg !1079
  br label %224, !dbg !1079

224:                                              ; preds = %222, %219
  call void @llvm.dbg.value(metadata i8 1, metadata !821, metadata !DIExpression()) #25, !dbg !838
  %225 = load i64, i64* @n_strings, align 8, !dbg !1080, !tbaa !1081
  %226 = icmp eq i64 %225, 0, !dbg !1082
  br i1 %226, label %282, label %227, !dbg !1083

227:                                              ; preds = %224, %279
  %228 = phi i32 [ 0, %279 ], [ 1, %224 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !821, metadata !DIExpression()) #25, !dbg !838
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1064, metadata !DIExpression()) #25, !dbg !1084
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, metadata !1072, metadata !DIExpression()) #25, !dbg !1084
  br i1 %221, label %231, label %229, !dbg !1086

229:                                              ; preds = %227
  %230 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %220, i1 (%struct.item*)* nonnull @scan_zeros) #25, !dbg !1087
  br label %231, !dbg !1087

231:                                              ; preds = %229, %227
  %232 = load %struct.item*, %struct.item** @head, align 8, !dbg !1088, !tbaa !650
  %233 = icmp eq %struct.item* %232, null, !dbg !1089
  br i1 %233, label %234, label %236, !dbg !1089

234:                                              ; preds = %231
  %235 = load i64, i64* @n_strings, align 8, !dbg !1090, !tbaa !1081
  br label %267, !dbg !1089

236:                                              ; preds = %231, %263
  %237 = phi %struct.item* [ %265, %263 ], [ %232, %231 ]
  %238 = getelementptr inbounds %struct.item, %struct.item* %237, i64 0, i32 6, !dbg !1092
  %239 = load %struct.successor*, %struct.successor** %238, align 8, !dbg !1092, !tbaa !1054
  call void @llvm.dbg.value(metadata %struct.successor* %239, metadata !835, metadata !DIExpression()) #25, !dbg !1093
  %240 = getelementptr inbounds %struct.item, %struct.item* %237, i64 0, i32 0, !dbg !1094
  %241 = load i8*, i8** %240, align 8, !dbg !1094, !tbaa !899
  %242 = call i32 @puts(i8* nonnull dereferenceable(1) %241) #25, !dbg !1095
  %243 = load %struct.item*, %struct.item** @head, align 8, !dbg !1096, !tbaa !650
  %244 = getelementptr inbounds %struct.item, %struct.item* %243, i64 0, i32 0, !dbg !1097
  store i8* null, i8** %244, align 8, !dbg !1098, !tbaa !899
  %245 = load i64, i64* @n_strings, align 8, !dbg !1099, !tbaa !1081
  %246 = add i64 %245, -1, !dbg !1099
  store i64 %246, i64* @n_strings, align 8, !dbg !1099, !tbaa !1081
  %247 = icmp eq %struct.successor* %239, null, !dbg !1100
  br i1 %247, label %263, label %248, !dbg !1100

248:                                              ; preds = %236, %259
  %249 = phi %struct.successor* [ %261, %259 ], [ %239, %236 ]
  call void @llvm.dbg.value(metadata %struct.successor* %249, metadata !835, metadata !DIExpression()) #25, !dbg !1093
  %250 = getelementptr inbounds %struct.successor, %struct.successor* %249, i64 0, i32 0, !dbg !1101
  %251 = load %struct.item*, %struct.item** %250, align 8, !dbg !1101, !tbaa !1051
  %252 = getelementptr inbounds %struct.item, %struct.item* %251, i64 0, i32 4, !dbg !1103
  %253 = load i64, i64* %252, align 8, !dbg !1104, !tbaa !1047
  %254 = add i64 %253, -1, !dbg !1104
  store i64 %254, i64* %252, align 8, !dbg !1104, !tbaa !1047
  %255 = icmp eq i64 %254, 0, !dbg !1105
  br i1 %255, label %256, label %259, !dbg !1107

256:                                              ; preds = %248
  %257 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1108, !tbaa !650
  %258 = getelementptr inbounds %struct.item, %struct.item* %257, i64 0, i32 5, !dbg !1110
  store %struct.item* %251, %struct.item** %258, align 8, !dbg !1111, !tbaa !1112
  store %struct.item* %251, %struct.item** @zeros, align 8, !dbg !1113, !tbaa !650
  br label %259, !dbg !1114

259:                                              ; preds = %256, %248
  %260 = getelementptr inbounds %struct.successor, %struct.successor* %249, i64 0, i32 1, !dbg !1115
  %261 = load %struct.successor*, %struct.successor** %260, align 8, !dbg !1115, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct.successor* %261, metadata !835, metadata !DIExpression()) #25, !dbg !1093
  %262 = icmp eq %struct.successor* %261, null, !dbg !1100
  br i1 %262, label %263, label %248, !dbg !1100, !llvm.loop !1116

263:                                              ; preds = %259, %236
  %264 = getelementptr inbounds %struct.item, %struct.item* %243, i64 0, i32 5, !dbg !1118
  %265 = load %struct.item*, %struct.item** %264, align 8, !dbg !1118, !tbaa !1112
  store %struct.item* %265, %struct.item** @head, align 8, !dbg !1119, !tbaa !650
  %266 = icmp eq %struct.item* %265, null, !dbg !1089
  br i1 %266, label %267, label %236, !dbg !1089, !llvm.loop !1120

267:                                              ; preds = %263, %234
  %268 = phi i64 [ %235, %234 ], [ %246, %263 ], !dbg !1090
  %269 = icmp eq i64 %268, 0, !dbg !1122
  br i1 %269, label %282, label %270, !dbg !1123

270:                                              ; preds = %267
  %271 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !1124
  %272 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #25, !dbg !1126
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %271, i8* %272) #25, !dbg !1127
  call void @llvm.dbg.value(metadata i8 0, metadata !821, metadata !DIExpression()) #25, !dbg !838
  br label %273, !dbg !1128

273:                                              ; preds = %276, %270
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1064, metadata !DIExpression()) #25, !dbg !1129
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, metadata !1072, metadata !DIExpression()) #25, !dbg !1129
  br i1 %221, label %276, label %274, !dbg !1131

274:                                              ; preds = %273
  %275 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %220, i1 (%struct.item*)* nonnull @detect_loop) #25, !dbg !1132
  br label %276, !dbg !1132

276:                                              ; preds = %274, %273
  %277 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1133, !tbaa !650
  %278 = icmp eq %struct.item* %277, null, !dbg !1134
  br i1 %278, label %279, label %273, !dbg !1134, !llvm.loop !1135

279:                                              ; preds = %276
  %280 = load i64, i64* @n_strings, align 8, !dbg !1080, !tbaa !1081
  call void @llvm.dbg.value(metadata i8 0, metadata !821, metadata !DIExpression()) #25, !dbg !838
  %281 = icmp eq i64 %280, 0, !dbg !1082
  br i1 %281, label %282, label %227, !dbg !1083, !llvm.loop !1137

282:                                              ; preds = %279, %267, %224
  %283 = phi i32 [ 1, %224 ], [ 0, %279 ], [ %228, %267 ], !dbg !838
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1139, !tbaa !650
  %285 = call i32 @rpl_fclose(%struct._IO_FILE* %284) #25, !dbg !1141
  %286 = icmp eq i32 %285, 0, !dbg !1142
  br i1 %286, label %296, label %287, !dbg !1143

287:                                              ; preds = %282
  %288 = tail call i32* @__errno_location() #29, !dbg !1144
  %289 = load i32, i32* %288, align 4, !dbg !1144, !tbaa !800
  br i1 %31, label %290, label %292, !dbg !1144

290:                                              ; preds = %287
  %291 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 5) #25, !dbg !1144
  br label %294, !dbg !1144

292:                                              ; preds = %287
  %293 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #25, !dbg !1144
  br label %294, !dbg !1144

294:                                              ; preds = %292, %290
  %295 = phi i8* [ %291, %290 ], [ %293, %292 ], !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %295) #25, !dbg !1144
  unreachable, !dbg !1144

296:                                              ; preds = %282
  %297 = and i32 %283, 1, !dbg !1145
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #25, !dbg !1146
  call void @llvm.dbg.value(metadata i1 undef, metadata !788, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !789
  %298 = xor i32 %297, 1, !dbg !1147
  ret i32 %298, !dbg !1148
}

; Function Attrs: nounwind
declare !dbg !1149 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1152 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1155 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !1160 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define internal zeroext i1 @count_items(%struct.item* nocapture readnone %0) #11 !dbg !1164 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1166, metadata !DIExpression()), !dbg !1167
  %2 = load i64, i64* @n_strings, align 8, !dbg !1168, !tbaa !1081
  %3 = add i64 %2, 1, !dbg !1168
  store i64 %3, i64* @n_strings, align 8, !dbg !1168, !tbaa !1081
  ret i1 false, !dbg !1169
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @recurse_tree(%struct.item* %0, i1 (%struct.item*)* %1) unnamed_addr #8 !dbg !1170 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, metadata !1175, metadata !DIExpression()), !dbg !1176
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1177
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1177, !tbaa !987
  %5 = icmp eq %struct.item* %4, null, !dbg !1179
  br i1 %5, label %6, label %12, !dbg !1180

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1181
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1181, !tbaa !893
  %9 = icmp eq %struct.item* %8, null, !dbg !1182
  br i1 %9, label %10, label %14, !dbg !1183

10:                                               ; preds = %6
  %11 = tail call zeroext i1 %1(%struct.item* nonnull %0) #25, !dbg !1184, !callees !1185
  br label %23, !dbg !1186

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %4, i1 (%struct.item*)* %1), !dbg !1187
  br i1 %13, label %23, label %14, !dbg !1191

14:                                               ; preds = %6, %12
  %15 = tail call zeroext i1 %1(%struct.item* nonnull %0) #25, !dbg !1192, !callees !1185
  br i1 %15, label %23, label %16, !dbg !1194

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1195
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1195, !tbaa !893
  %19 = icmp eq %struct.item* %18, null, !dbg !1197
  br i1 %19, label %22, label %20, !dbg !1198

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %18, i1 (%struct.item*)* %1), !dbg !1199
  br i1 %21, label %23, label %22, !dbg !1201

22:                                               ; preds = %16, %20
  br label %23, !dbg !1202

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1176
  ret i1 %24, !dbg !1203
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define internal zeroext i1 @scan_zeros(%struct.item* %0) #11 !dbg !1204 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1206, metadata !DIExpression()), !dbg !1207
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1208
  %3 = load i64, i64* %2, align 8, !dbg !1208, !tbaa !1047
  %4 = icmp eq i64 %3, 0, !dbg !1210
  br i1 %4, label %5, label %15, !dbg !1211

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 0, !dbg !1212
  %7 = load i8*, i8** %6, align 8, !dbg !1212, !tbaa !899
  %8 = icmp eq i8* %7, null, !dbg !1213
  br i1 %8, label %15, label %9, !dbg !1214

9:                                                ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1215, !tbaa !650
  %11 = icmp eq %struct.item* %10, null, !dbg !1218
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1219
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 5, !dbg !1219
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1219
  store %struct.item* %0, %struct.item** %14, align 8, !dbg !1220, !tbaa !650
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1221, !tbaa !650
  br label %15, !dbg !1222

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1223
}

; Function Attrs: nofree nounwind
declare !dbg !1224 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @detect_loop(%struct.item* %0) #8 !dbg !1227 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1229, metadata !DIExpression()), !dbg !1245
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1246
  %3 = load i64, i64* %2, align 8, !dbg !1246, !tbaa !1047
  %4 = icmp eq i64 %3, 0, !dbg !1247
  br i1 %4, label %61, label %5, !dbg !1248

5:                                                ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1249, !tbaa !650
  %7 = icmp eq %struct.item* %6, null, !dbg !1250
  br i1 %7, label %8, label %9, !dbg !1251

8:                                                ; preds = %5
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1252, !tbaa !650
  br label %61, !dbg !1253

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1230, metadata !DIExpression()), !dbg !1255
  %11 = load %struct.successor*, %struct.successor** %10, align 8, !dbg !1256, !tbaa !650
  %12 = icmp eq %struct.successor* %11, null, !dbg !1257
  br i1 %12, label %61, label %13, !dbg !1257

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1230, metadata !DIExpression()), !dbg !1255
  %14 = getelementptr inbounds %struct.successor, %struct.successor* %11, i64 0, i32 0, !dbg !1258
  %15 = load %struct.item*, %struct.item** %14, align 8, !dbg !1258, !tbaa !1051
  %16 = icmp eq %struct.item* %15, %6, !dbg !1259
  call void @llvm.dbg.value(metadata %struct.successor* %11, metadata !1230, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1255
  br i1 %16, label %28, label %17, !dbg !1260

17:                                               ; preds = %13, %22
  %18 = phi %struct.successor* [ %20, %22 ], [ %11, %13 ]
  %19 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1230, metadata !DIExpression()), !dbg !1255
  %20 = load %struct.successor*, %struct.successor** %19, align 8, !dbg !1256, !tbaa !650
  %21 = icmp eq %struct.successor* %20, null, !dbg !1257
  br i1 %21, label %61, label %22, !dbg !1257, !llvm.loop !1262

22:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1230, metadata !DIExpression()), !dbg !1255
  %23 = getelementptr inbounds %struct.successor, %struct.successor* %20, i64 0, i32 0, !dbg !1258
  %24 = load %struct.item*, %struct.item** %23, align 8, !dbg !1258, !tbaa !1051
  %25 = icmp eq %struct.item* %24, %6, !dbg !1259
  call void @llvm.dbg.value(metadata %struct.successor* %20, metadata !1230, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1255
  br i1 %25, label %26, label %17, !dbg !1260, !llvm.loop !1262

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1261
  br label %28, !dbg !1264

28:                                               ; preds = %26, %13
  %29 = phi %struct.successor** [ %10, %13 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1264
  %31 = load %struct.item*, %struct.item** %30, align 8, !dbg !1264, !tbaa !1112
  %32 = icmp eq %struct.item* %31, null, !dbg !1265
  br i1 %32, label %59, label %33, !dbg !1266

33:                                               ; preds = %28, %41
  %34 = phi %struct.item* [ %36, %41 ], [ %6, %28 ]
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 5, !dbg !1267
  %36 = load %struct.item*, %struct.item** %35, align 8, !dbg !1267, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.item* %36, metadata !1236, metadata !DIExpression()), !dbg !1268
  %37 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 0, !dbg !1269
  %38 = load i8*, i8** %37, align 8, !dbg !1269, !tbaa !899
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %38) #25, !dbg !1270
  %39 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1271, !tbaa !650
  %40 = icmp eq %struct.item* %39, %0, !dbg !1273
  br i1 %40, label %44, label %41, !dbg !1274

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.item, %struct.item* %39, i64 0, i32 5, !dbg !1275
  store %struct.item* null, %struct.item** %42, align 8, !dbg !1276, !tbaa !1112
  store %struct.item* %36, %struct.item** @loop, align 8, !dbg !1277, !tbaa !650
  %43 = icmp eq %struct.item* %36, null, !dbg !1278
  br i1 %43, label %61, label %33, !dbg !1278

44:                                               ; preds = %33
  %45 = load %struct.successor*, %struct.successor** %29, align 8, !dbg !1279, !tbaa !650
  %46 = getelementptr inbounds %struct.successor, %struct.successor* %45, i64 0, i32 0, !dbg !1281
  %47 = load %struct.item*, %struct.item** %46, align 8, !dbg !1281, !tbaa !1051
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i64 0, i32 4, !dbg !1282
  %49 = load i64, i64* %48, align 8, !dbg !1283, !tbaa !1047
  %50 = add i64 %49, -1, !dbg !1283
  store i64 %50, i64* %48, align 8, !dbg !1283, !tbaa !1047
  %51 = getelementptr inbounds %struct.successor, %struct.successor* %45, i64 0, i32 1, !dbg !1284
  %52 = load %struct.successor*, %struct.successor** %51, align 8, !dbg !1284, !tbaa !1057
  store %struct.successor* %52, %struct.successor** %29, align 8, !dbg !1285, !tbaa !650
  %53 = icmp eq %struct.item* %0, null, !dbg !1286
  br i1 %53, label %61, label %54, !dbg !1286

54:                                               ; preds = %44, %54
  %55 = phi %struct.item* [ %57, %54 ], [ %0, %44 ]
  %56 = getelementptr inbounds %struct.item, %struct.item* %55, i64 0, i32 5, !dbg !1287
  %57 = load %struct.item*, %struct.item** %56, align 8, !dbg !1287, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.item* %57, metadata !1243, metadata !DIExpression()), !dbg !1288
  store %struct.item* null, %struct.item** %56, align 8, !dbg !1289, !tbaa !1112
  %58 = icmp eq %struct.item* %57, null, !dbg !1286
  br i1 %58, label %60, label %54, !dbg !1286, !llvm.loop !1290

59:                                               ; preds = %28
  store %struct.item* %6, %struct.item** %30, align 8, !dbg !1292, !tbaa !1112
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1294, !tbaa !650
  br label %61, !dbg !1295

60:                                               ; preds = %54
  store %struct.item* null, %struct.item** @loop, align 8, !dbg !1296, !tbaa !650
  br label %61, !dbg !1286

61:                                               ; preds = %17, %41, %9, %44, %60, %1, %8, %59
  %62 = phi i1 [ false, %59 ], [ false, %8 ], [ false, %1 ], [ true, %60 ], [ true, %44 ], [ false, %9 ], [ true, %41 ], [ false, %17 ], !dbg !1245
  ret i1 %62, !dbg !1297
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i8* %0, i8** @file_name, align 8, !dbg !1302, !tbaa !650
  ret void, !dbg !1303
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1304 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1310, !tbaa !1311
  ret void, !dbg !1313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1314 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1319, !tbaa !650
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1320
  %3 = icmp eq i32 %2, 0, !dbg !1321
  br i1 %3, label %22, label %4, !dbg !1322

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1323, !tbaa !1311, !range !1324
  %6 = icmp eq i8 %5, 0, !dbg !1323
  br i1 %6, label %11, label %7, !dbg !1325

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1326
  %9 = load i32, i32* %8, align 4, !dbg !1326, !tbaa !800
  %10 = icmp eq i32 %9, 32, !dbg !1327
  br i1 %10, label %22, label %11, !dbg !1328

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #25, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %12, metadata !1316, metadata !DIExpression()), !dbg !1330
  %13 = load i8*, i8** @file_name, align 8, !dbg !1331, !tbaa !650
  %14 = icmp eq i8* %13, null, !dbg !1331
  %15 = tail call i32* @__errno_location() #29, !dbg !1333
  %16 = load i32, i32* %15, align 4, !dbg !1333, !tbaa !800
  br i1 %14, label %19, label %17, !dbg !1334

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1335
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1336
  br label %20, !dbg !1336

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #25, !dbg !1337
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1338, !tbaa !800
  tail call void @_exit(i32 %21) #27, !dbg !1339
  unreachable, !dbg !1339

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340, !tbaa !650
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1342
  %25 = icmp eq i32 %24, 0, !dbg !1343
  br i1 %25, label %28, label %26, !dbg !1344

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1345, !tbaa !800
  tail call void @_exit(i32 %27) #27, !dbg !1346
  unreachable, !dbg !1346

28:                                               ; preds = %22
  ret void, !dbg !1347
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1354, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %1, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %2, metadata !1356, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %3, metadata !1357, metadata !DIExpression()), !dbg !1360
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #25, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %5, metadata !1358, metadata !DIExpression()), !dbg !1362
  ret void, !dbg !1363
}

; Function Attrs: nounwind
declare !dbg !1364 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1368 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1407, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %1, metadata !1408, metadata !DIExpression()), !dbg !1409
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1410
  br i1 %3, label %7, label %4, !dbg !1412

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %5, metadata !1354, metadata !DIExpression()) #25, !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1355, metadata !DIExpression()) #25, !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()) #25, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %1, metadata !1357, metadata !DIExpression()) #25, !dbg !1414
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #25, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %6, metadata !1358, metadata !DIExpression()) #25, !dbg !1417
  br label %7, !dbg !1418

7:                                                ; preds = %4, %2
  ret void, !dbg !1419
}

; Function Attrs: nofree nounwind
declare !dbg !1420 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !1423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1461, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8* %1, metadata !1462, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1463, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 0, metadata !1464, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 0, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 0, metadata !1466, metadata !DIExpression()), !dbg !1468
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #25, !dbg !1469
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %54
  ], !dbg !1470

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #25, !dbg !1471
  %7 = icmp ne i32 %6, 2, !dbg !1474
  %8 = zext i1 %7 to i8, !dbg !1475
  br label %9, !dbg !1475

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1468
  call void @llvm.dbg.value(metadata i8 %10, metadata !1466, metadata !DIExpression()), !dbg !1468
  %11 = tail call i32 @dup2(i32 1, i32 1) #25, !dbg !1476
  %12 = icmp ne i32 %11, 1, !dbg !1478
  %13 = zext i1 %12 to i8, !dbg !1479
  br label %14, !dbg !1479

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1468
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1468
  call void @llvm.dbg.value(metadata i8 %16, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %15, metadata !1465, metadata !DIExpression()), !dbg !1468
  %17 = tail call i32 @dup2(i32 0, i32 0) #25, !dbg !1480
  %18 = icmp eq i32 %17, 0, !dbg !1482
  call void @llvm.dbg.value(metadata i8 undef, metadata !1464, metadata !DIExpression()), !dbg !1468
  br i1 %18, label %27, label %19, !dbg !1483

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()) #25, !dbg !1491
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 0) #25, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %20, metadata !1490, metadata !DIExpression()) #25, !dbg !1491
  %21 = icmp eq i32 %20, 0, !dbg !1494
  %22 = icmp slt i32 %20, 1, !dbg !1496
  br i1 %22, label %26, label %23, !dbg !1496

23:                                               ; preds = %19
  %24 = tail call i32 @close(i32 %20) #25, !dbg !1497
  %25 = tail call i32* @__errno_location() #29, !dbg !1501
  store i32 9, i32* %25, align 4, !dbg !1502, !tbaa !800
  br label %26, !dbg !1503

26:                                               ; preds = %19, %23
  br i1 %21, label %27, label %59, !dbg !1504

27:                                               ; preds = %26, %14
  %28 = xor i1 %18, true, !dbg !1505
  %29 = icmp eq i8 %15, 0, !dbg !1505
  br i1 %29, label %39, label %30, !dbg !1507

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()) #25, !dbg !1508
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 0) #25, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %31, metadata !1490, metadata !DIExpression()) #25, !dbg !1508
  %32 = icmp eq i32 %31, 1, !dbg !1511
  %33 = icmp slt i32 %31, 0
  %34 = or i1 %32, %33, !dbg !1512
  br i1 %34, label %38, label %35, !dbg !1512

35:                                               ; preds = %30
  %36 = tail call i32 @close(i32 %31) #25, !dbg !1513
  %37 = tail call i32* @__errno_location() #29, !dbg !1514
  store i32 9, i32* %37, align 4, !dbg !1515, !tbaa !800
  br label %38, !dbg !1516

38:                                               ; preds = %30, %35
  br i1 %32, label %39, label %59, !dbg !1517

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 1, %38 ], [ 0, %27 ]
  %41 = icmp eq i8 %16, 0, !dbg !1518
  br i1 %41, label %54, label %42, !dbg !1520

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()) #25, !dbg !1521
  %43 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 0) #25, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %43, metadata !1490, metadata !DIExpression()) #25, !dbg !1521
  %44 = icmp eq i32 %43, 2, !dbg !1524
  %45 = icmp slt i32 %43, 0
  %46 = or i1 %44, %45, !dbg !1525
  br i1 %46, label %50, label %47, !dbg !1525

47:                                               ; preds = %42
  %48 = tail call i32 @close(i32 %43) #25, !dbg !1526
  %49 = tail call i32* @__errno_location() #29, !dbg !1527
  store i32 9, i32* %49, align 4, !dbg !1528, !tbaa !800
  br label %50, !dbg !1529

50:                                               ; preds = %42, %47
  br i1 %44, label %54, label %51, !dbg !1530

51:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1463, metadata !DIExpression()), !dbg !1468
  %52 = tail call i32* @__errno_location() #29, !dbg !1531
  %53 = load i32, i32* %52, align 4, !dbg !1531, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %65, metadata !1467, metadata !DIExpression()), !dbg !1468
  br label %67, !dbg !1532

54:                                               ; preds = %3, %50, %39
  %55 = phi i8 [ 1, %50 ], [ 0, %39 ], [ 0, %3 ]
  %56 = phi i8 [ %40, %50 ], [ %40, %39 ], [ 0, %3 ]
  %57 = phi i1 [ %28, %50 ], [ %28, %39 ], [ false, %3 ]
  %58 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #25, !dbg !1533
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1463, metadata !DIExpression()), !dbg !1468
  br label %59

59:                                               ; preds = %38, %26, %54
  %60 = phi i8 [ %55, %54 ], [ %16, %26 ], [ %16, %38 ]
  %61 = phi i8 [ %56, %54 ], [ %15, %26 ], [ 1, %38 ]
  %62 = phi i1 [ %57, %54 ], [ true, %26 ], [ %28, %38 ]
  %63 = phi %struct._IO_FILE* [ %58, %54 ], [ null, %26 ], [ null, %38 ], !dbg !1534
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1463, metadata !DIExpression()), !dbg !1468
  %64 = tail call i32* @__errno_location() #29, !dbg !1531
  %65 = load i32, i32* %64, align 4, !dbg !1531, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %65, metadata !1467, metadata !DIExpression()), !dbg !1468
  %66 = icmp eq i8 %60, 0, !dbg !1535
  br i1 %66, label %74, label %67, !dbg !1532

67:                                               ; preds = %51, %59
  %68 = phi i32 [ %53, %51 ], [ %65, %59 ]
  %69 = phi i32* [ %52, %51 ], [ %64, %59 ]
  %70 = phi %struct._IO_FILE* [ null, %51 ], [ %63, %59 ]
  %71 = phi i1 [ %28, %51 ], [ %62, %59 ]
  %72 = phi i8 [ %40, %51 ], [ %61, %59 ]
  %73 = tail call i32 @close(i32 2) #25, !dbg !1537
  br label %74, !dbg !1537

74:                                               ; preds = %67, %59
  %75 = phi i32 [ %68, %67 ], [ %65, %59 ]
  %76 = phi i32* [ %69, %67 ], [ %64, %59 ]
  %77 = phi %struct._IO_FILE* [ %70, %67 ], [ %63, %59 ]
  %78 = phi i1 [ %71, %67 ], [ %62, %59 ]
  %79 = phi i8 [ %72, %67 ], [ %61, %59 ]
  %80 = icmp eq i8 %79, 0, !dbg !1538
  br i1 %80, label %83, label %81, !dbg !1540

81:                                               ; preds = %74
  %82 = tail call i32 @close(i32 1) #25, !dbg !1541
  br label %83, !dbg !1541

83:                                               ; preds = %81, %74
  br i1 %78, label %84, label %86, !dbg !1542

84:                                               ; preds = %83
  %85 = tail call i32 @close(i32 0) #25, !dbg !1543
  br label %86, !dbg !1543

86:                                               ; preds = %84, %83
  %87 = icmp eq %struct._IO_FILE* %77, null, !dbg !1545
  br i1 %87, label %88, label %89, !dbg !1547

88:                                               ; preds = %86
  store i32 %75, i32* %76, align 4, !dbg !1548, !tbaa !800
  br label %89, !dbg !1549

89:                                               ; preds = %88, %86
  ret %struct._IO_FILE* %77, !dbg !1550
}

; Function Attrs: nounwind
declare !dbg !1551 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1555 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

declare !dbg !1558 i32 @close(i32) local_unnamed_addr #3

declare !dbg !1561 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1564 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1569, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8** %1, metadata !1570, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %2, metadata !1571, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %3, metadata !1572, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %4, metadata !1573, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1574, metadata !DIExpression()), !dbg !1593
  %8 = load i32, i32* @opterr, align 4, !dbg !1594, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %8, metadata !1576, metadata !DIExpression()), !dbg !1593
  store i32 0, i32* @opterr, align 4, !dbg !1595, !tbaa !800
  %9 = icmp eq i32 %0, 2, !dbg !1596
  br i1 %9, label %10, label %17, !dbg !1597

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %11, metadata !1575, metadata !DIExpression()), !dbg !1593
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1599

12:                                               ; preds = %10
  tail call void %5(i32 0) #25, !dbg !1600
  br label %17, !dbg !1601

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1602
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #25, !dbg !1602
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1577, metadata !DIExpression()), !dbg !1603
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1604
  call void @llvm.va_start(i8* nonnull %14), !dbg !1604
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1605, !tbaa !650
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #25, !dbg !1606
  call void @exit(i32 0) #27, !dbg !1607
  unreachable, !dbg !1607

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1608, !tbaa !800
  store i32 0, i32* @optind, align 4, !dbg !1609, !tbaa !800
  ret void, !dbg !1610
}

; Function Attrs: nounwind
declare !dbg !1611 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1617 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1621, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8** %1, metadata !1622, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %2, metadata !1623, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %3, metadata !1624, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %4, metadata !1625, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i1 %5, metadata !1626, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1636
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1627, metadata !DIExpression()), !dbg !1636
  %9 = load i32, i32* @opterr, align 4, !dbg !1637, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %9, metadata !1629, metadata !DIExpression()), !dbg !1636
  store i32 1, i32* @opterr, align 4, !dbg !1638, !tbaa !800
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), !dbg !1639
  call void @llvm.dbg.value(metadata i8* %10, metadata !1630, metadata !DIExpression()), !dbg !1636
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %11, metadata !1628, metadata !DIExpression()), !dbg !1636
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1641

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1642
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #25, !dbg !1642
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1631, metadata !DIExpression()), !dbg !1643
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1644
  call void @llvm.va_start(i8* nonnull %13), !dbg !1644
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1645, !tbaa !650
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #25, !dbg !1646
  call void @exit(i32 0) #27, !dbg !1647
  unreachable, !dbg !1647

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1648, !tbaa !800
  br label %18, !dbg !1649

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #25, !dbg !1650
  br label %20, !dbg !1651

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1651, !tbaa !800
  ret void, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1655, metadata !DIExpression()), !dbg !1658
  %2 = icmp eq i8* %0, null, !dbg !1659
  br i1 %2, label %3, label %6, !dbg !1661

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1662, !tbaa !650
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1664
  tail call void @abort() #27, !dbg !1665
  unreachable, !dbg !1665

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %7, metadata !1656, metadata !DIExpression()), !dbg !1658
  %8 = icmp eq i8* %7, null, !dbg !1667
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1668
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %10, metadata !1657, metadata !DIExpression()), !dbg !1658
  %11 = ptrtoint i8* %10 to i64, !dbg !1669
  %12 = ptrtoint i8* %0 to i64, !dbg !1669
  %13 = sub i64 %11, %12, !dbg !1669
  %14 = icmp sgt i64 %13, 6, !dbg !1671
  br i1 %14, label %15, label %24, !dbg !1672

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1673
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #26, !dbg !1674
  %18 = icmp eq i32 %17, 0, !dbg !1675
  br i1 %18, label %19, label %24, !dbg !1676

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1655, metadata !DIExpression()), !dbg !1658
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #26, !dbg !1677
  %21 = icmp eq i32 %20, 0, !dbg !1680
  br i1 %21, label %22, label %24, !dbg !1681

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %23, metadata !1655, metadata !DIExpression()), !dbg !1658
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1684, !tbaa !650
  br label %24, !dbg !1685

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1655, metadata !DIExpression()), !dbg !1658
  store i8* %25, i8** @program_name, align 8, !dbg !1686, !tbaa !650
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1687, !tbaa !650
  ret void, !dbg !1688
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1689 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1694, metadata !DIExpression()), !dbg !1697
  %2 = tail call i32* @__errno_location() #29, !dbg !1698
  %3 = load i32, i32* %2, align 4, !dbg !1698, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %3, metadata !1695, metadata !DIExpression()), !dbg !1697
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1699
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1699
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1699
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1700
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i32 %3, i32* %2, align 4, !dbg !1701, !tbaa !800
  ret %struct.quoting_options* %8, !dbg !1702
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !1703 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1709, metadata !DIExpression()), !dbg !1710
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1711
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1711
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1712
  %5 = load i32, i32* %4, align 8, !dbg !1712, !tbaa !1713
  ret i32 %5, !dbg !1715
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1716 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1720, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %1, metadata !1721, metadata !DIExpression()), !dbg !1722
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1723
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1723
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1724
  store i32 %1, i32* %5, align 8, !dbg !1725, !tbaa !1713
  ret void, !dbg !1726
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #11 !dbg !1727 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1731, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %1, metadata !1732, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32 %2, metadata !1733, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %1, metadata !1734, metadata !DIExpression()), !dbg !1739
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1740
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1740
  %6 = lshr i8 %1, 5, !dbg !1741
  %7 = zext i8 %6 to i64, !dbg !1741
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1742
  call void @llvm.dbg.value(metadata i32* %8, metadata !1735, metadata !DIExpression()), !dbg !1739
  %9 = and i8 %1, 31, !dbg !1743
  %10 = zext i8 %9 to i32, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %10, metadata !1737, metadata !DIExpression()), !dbg !1739
  %11 = load i32, i32* %8, align 4, !dbg !1744, !tbaa !800
  %12 = lshr i32 %11, %10, !dbg !1745
  %13 = and i32 %12, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %13, metadata !1738, metadata !DIExpression()), !dbg !1739
  %14 = and i32 %2, 1, !dbg !1747
  %15 = xor i32 %13, %14, !dbg !1748
  %16 = shl i32 %15, %10, !dbg !1749
  %17 = xor i32 %16, %11, !dbg !1750
  store i32 %17, i32* %8, align 4, !dbg !1750, !tbaa !800
  ret i32 %13, !dbg !1751
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1752 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 %1, metadata !1757, metadata !DIExpression()), !dbg !1759
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1760
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1762
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1756, metadata !DIExpression()), !dbg !1759
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1763
  %6 = load i32, i32* %5, align 4, !dbg !1763, !tbaa !1764
  call void @llvm.dbg.value(metadata i32 %6, metadata !1758, metadata !DIExpression()), !dbg !1759
  store i32 %1, i32* %5, align 4, !dbg !1765, !tbaa !1764
  ret i32 %6, !dbg !1766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1767 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %1, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %2, metadata !1773, metadata !DIExpression()), !dbg !1774
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1775
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1771, metadata !DIExpression()), !dbg !1774
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1778
  store i32 10, i32* %6, align 8, !dbg !1779, !tbaa !1713
  %7 = icmp ne i8* %1, null, !dbg !1780
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1782
  br i1 %9, label %11, label %10, !dbg !1782

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1783
  unreachable, !dbg !1783

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1784
  store i8* %1, i8** %12, align 8, !dbg !1785, !tbaa !1786
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1787
  store i8* %2, i8** %13, align 8, !dbg !1788, !tbaa !1789
  ret void, !dbg !1790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1795, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %1, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %2, metadata !1797, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %3, metadata !1798, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1799, metadata !DIExpression()), !dbg !1803
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1804
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1800, metadata !DIExpression()), !dbg !1803
  %8 = tail call i32* @__errno_location() #29, !dbg !1805
  %9 = load i32, i32* %8, align 4, !dbg !1805, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %9, metadata !1801, metadata !DIExpression()), !dbg !1803
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1806
  %11 = load i32, i32* %10, align 8, !dbg !1806, !tbaa !1713
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1807
  %13 = load i32, i32* %12, align 4, !dbg !1807, !tbaa !1764
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1808
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1809
  %16 = load i8*, i8** %15, align 8, !dbg !1809, !tbaa !1786
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1810
  %18 = load i8*, i8** %17, align 8, !dbg !1810, !tbaa !1789
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %19, metadata !1802, metadata !DIExpression()), !dbg !1803
  store i32 %9, i32* %8, align 4, !dbg !1812, !tbaa !800
  ret i64 %19, !dbg !1813
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1814 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1820, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %1, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %2, metadata !1822, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %3, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %4, metadata !1824, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %5, metadata !1825, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32* %6, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %7, metadata !1827, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %8, metadata !1828, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* null, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1833, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1834, metadata !DIExpression()), !dbg !1890
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1891
  %14 = icmp eq i64 %13, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i1 %14, metadata !1835, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1890
  %15 = lshr i32 %5, 1, !dbg !1893
  %16 = trunc i32 %15 to i8, !dbg !1893
  %17 = and i8 %16, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i8 %17, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1890
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1894

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1895
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1896
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1897
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1898
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1890
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1899
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1900
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1901
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %38, metadata !1839, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %37, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %36, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %35, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %34, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %33, metadata !1834, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %32, metadata !1833, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %31, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %30, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %29, metadata !1828, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %28, metadata !1827, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %27, metadata !1824, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1884), !dbg !1902
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
  ], !dbg !1903

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 5, metadata !1824, metadata !DIExpression()), !dbg !1890
  br label %92, !dbg !1904

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 5, metadata !1824, metadata !DIExpression()), !dbg !1890
  %42 = and i8 %35, 1, !dbg !1906
  %43 = icmp eq i8 %42, 0, !dbg !1906
  br i1 %43, label %44, label %92, !dbg !1904

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1908
  br i1 %45, label %92, label %46, !dbg !1911

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1908, !tbaa !1912
  br label %92, !dbg !1908

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %27), !dbg !1913
  call void @llvm.dbg.value(metadata i8* %48, metadata !1827, metadata !DIExpression()), !dbg !1890
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %27), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %49, metadata !1828, metadata !DIExpression()), !dbg !1890
  br label %50, !dbg !1918

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1828, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %51, metadata !1827, metadata !DIExpression()), !dbg !1890
  %53 = and i8 %35, 1, !dbg !1919
  %54 = icmp eq i8 %53, 0, !dbg !1919
  br i1 %54, label %55, label %70, !dbg !1921

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1830, metadata !DIExpression()), !dbg !1890
  %56 = load i8, i8* %51, align 1, !dbg !1922, !tbaa !1912
  %57 = icmp eq i8 %56, 0, !dbg !1925
  br i1 %57, label %70, label %58, !dbg !1925

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %61, metadata !1830, metadata !DIExpression()), !dbg !1890
  %62 = icmp ult i64 %61, %39, !dbg !1926
  br i1 %62, label %63, label %65, !dbg !1929

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1926
  store i8 %59, i8* %64, align 1, !dbg !1926, !tbaa !1912
  br label %65, !dbg !1926

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %66, metadata !1830, metadata !DIExpression()), !dbg !1890
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %67, metadata !1832, metadata !DIExpression()), !dbg !1890
  %68 = load i8, i8* %67, align 1, !dbg !1922, !tbaa !1912
  %69 = icmp eq i8 %68, 0, !dbg !1925
  br i1 %69, label %70, label %58, !dbg !1925, !llvm.loop !1931

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1933
  call void @llvm.dbg.value(metadata i64 %71, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1834, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %52, metadata !1832, metadata !DIExpression()), !dbg !1890
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %72, metadata !1833, metadata !DIExpression()), !dbg !1890
  br label %92, !dbg !1935

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1834, metadata !DIExpression()), !dbg !1890
  br label %74, !dbg !1936

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %75, metadata !1834, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1836, metadata !DIExpression()), !dbg !1890
  br label %76, !dbg !1937

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1898
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %78, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %77, metadata !1834, metadata !DIExpression()), !dbg !1890
  %79 = and i8 %78, 1, !dbg !1938
  %80 = icmp eq i8 %79, 0, !dbg !1938
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1940
  br label %82, !dbg !1940

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1890
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1893
  call void @llvm.dbg.value(metadata i8 %84, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %83, metadata !1834, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 2, metadata !1824, metadata !DIExpression()), !dbg !1890
  %85 = and i8 %84, 1, !dbg !1941
  %86 = icmp eq i8 %85, 0, !dbg !1941
  br i1 %86, label %87, label %92, !dbg !1943

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1944
  br i1 %88, label %92, label %89, !dbg !1947

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1944, !tbaa !1912
  br label %92, !dbg !1944

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1890
  br label %92, !dbg !1948

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1949
  unreachable, !dbg !1949

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1933
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %40 ], !dbg !1890
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1890
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1890
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %100, metadata !1836, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %99, metadata !1834, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %98, metadata !1833, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %97, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %96, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %95, metadata !1828, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %94, metadata !1827, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %93, metadata !1824, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1829, metadata !DIExpression()), !dbg !1890
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
  br label %121, !dbg !1950

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1951
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1933
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1895
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1899
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1900
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1901
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %128, metadata !1839, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %127, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %126, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %125, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %124, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %122, metadata !1829, metadata !DIExpression()), !dbg !1890
  %130 = icmp eq i64 %125, -1, !dbg !1952
  br i1 %130, label %131, label %135, !dbg !1953

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1954
  %133 = load i8, i8* %132, align 1, !dbg !1954, !tbaa !1912
  %134 = icmp eq i8 %133, 0, !dbg !1955
  br i1 %134, label %587, label %137, !dbg !1956

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1957
  br i1 %136, label %587, label %137, !dbg !1956

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 0, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1958
  br i1 %106, label %138, label %153, !dbg !1959

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1961
  %140 = and i1 %107, %130, !dbg !1962
  br i1 %140, label %141, label %143, !dbg !1962

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %142, metadata !1823, metadata !DIExpression()), !dbg !1890
  br label %143, !dbg !1964

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1964
  call void @llvm.dbg.value(metadata i64 %144, metadata !1823, metadata !DIExpression()), !dbg !1890
  %145 = icmp ugt i64 %139, %144, !dbg !1965
  br i1 %145, label %153, label %146, !dbg !1966

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1967
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1968
  %149 = icmp ne i32 %148, 0, !dbg !1969
  %150 = or i1 %149, %109, !dbg !1970
  %151 = xor i1 %149, true, !dbg !1970
  %152 = zext i1 %151 to i8, !dbg !1970
  br i1 %150, label %153, label %646, !dbg !1970

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1958
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1958
  call void @llvm.dbg.value(metadata i8 %156, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %154, metadata !1823, metadata !DIExpression()), !dbg !1890
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1971
  %158 = load i8, i8* %157, align 1, !dbg !1971, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %158, metadata !1840, metadata !DIExpression()), !dbg !1958
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
  ], !dbg !1972

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1973

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1974

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1846, metadata !DIExpression()), !dbg !1958
  %162 = and i8 %126, 1, !dbg !1978
  %163 = icmp eq i8 %162, 0, !dbg !1978
  %164 = and i1 %110, %163, !dbg !1978
  br i1 %164, label %165, label %181, !dbg !1978

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1980
  br i1 %166, label %167, label %169, !dbg !1984

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1980
  store i8 39, i8* %168, align 1, !dbg !1980, !tbaa !1912
  br label %169, !dbg !1980

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %170, metadata !1830, metadata !DIExpression()), !dbg !1890
  %171 = icmp ult i64 %170, %129, !dbg !1985
  br i1 %171, label %172, label %174, !dbg !1988

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1985
  store i8 36, i8* %173, align 1, !dbg !1985, !tbaa !1912
  br label %174, !dbg !1985

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %175, metadata !1830, metadata !DIExpression()), !dbg !1890
  %176 = icmp ult i64 %175, %129, !dbg !1989
  br i1 %176, label %177, label %179, !dbg !1992

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1989
  store i8 39, i8* %178, align 1, !dbg !1989, !tbaa !1912
  br label %179, !dbg !1989

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %180, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %181, !dbg !1993

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1890
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %183, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %182, metadata !1830, metadata !DIExpression()), !dbg !1890
  %184 = icmp ult i64 %182, %129, !dbg !1994
  br i1 %184, label %185, label %187, !dbg !1997

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1994
  store i8 92, i8* %186, align 1, !dbg !1994, !tbaa !1912
  br label %187, !dbg !1994

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %188, metadata !1830, metadata !DIExpression()), !dbg !1890
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1998
  br i1 %191, label %192, label %473, !dbg !1998

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2000
  %194 = load i8, i8* %193, align 1, !dbg !2000, !tbaa !1912
  %195 = add i8 %194, -48, !dbg !2001
  %196 = icmp ult i8 %195, 10, !dbg !2001
  br i1 %196, label %197, label %473, !dbg !2001

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2002
  br i1 %198, label %199, label %201, !dbg !2006

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2002
  store i8 48, i8* %200, align 1, !dbg !2002, !tbaa !1912
  br label %201, !dbg !2002

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %202, metadata !1830, metadata !DIExpression()), !dbg !1890
  %203 = icmp ult i64 %202, %129, !dbg !2007
  br i1 %203, label %204, label %206, !dbg !2010

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2007
  store i8 48, i8* %205, align 1, !dbg !2007, !tbaa !1912
  br label %206, !dbg !2007

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %207, metadata !1830, metadata !DIExpression()), !dbg !1890
  br label %473, !dbg !2011

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2012

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2013

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2014

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2016
  br i1 %214, label %215, label %473, !dbg !2016

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2018
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2019
  %218 = load i8, i8* %217, align 1, !dbg !2019, !tbaa !1912
  %219 = icmp eq i8 %218, 63, !dbg !2020
  br i1 %219, label %220, label %473, !dbg !2021

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2022
  %222 = load i8, i8* %221, align 1, !dbg !2022, !tbaa !1912
  %223 = sext i8 %222 to i32, !dbg !2022
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
  ], !dbg !2023

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2024

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 undef, metadata !1829, metadata !DIExpression()), !dbg !1890
  %226 = icmp ult i64 %123, %129, !dbg !2026
  br i1 %226, label %227, label %229, !dbg !2029

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2026
  store i8 63, i8* %228, align 1, !dbg !2026, !tbaa !1912
  br label %229, !dbg !2026

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %230, metadata !1830, metadata !DIExpression()), !dbg !1890
  %231 = icmp ult i64 %230, %129, !dbg !2030
  br i1 %231, label %232, label %234, !dbg !2033

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2030
  store i8 34, i8* %233, align 1, !dbg !2030, !tbaa !1912
  br label %234, !dbg !2030

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %235, metadata !1830, metadata !DIExpression()), !dbg !1890
  %236 = icmp ult i64 %235, %129, !dbg !2034
  br i1 %236, label %237, label %239, !dbg !2037

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2034
  store i8 34, i8* %238, align 1, !dbg !2034, !tbaa !1912
  br label %239, !dbg !2034

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %240, metadata !1830, metadata !DIExpression()), !dbg !1890
  %241 = icmp ult i64 %240, %129, !dbg !2038
  br i1 %241, label %242, label %244, !dbg !2041

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2038
  store i8 63, i8* %243, align 1, !dbg !2038, !tbaa !1912
  br label %244, !dbg !2038

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %245, metadata !1830, metadata !DIExpression()), !dbg !1890
  br label %473, !dbg !2042

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1844, metadata !DIExpression()), !dbg !1958
  br label %256, !dbg !2043

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1844, metadata !DIExpression()), !dbg !1958
  br label %256, !dbg !2044

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1844, metadata !DIExpression()), !dbg !1958
  br label %254, !dbg !2045

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1844, metadata !DIExpression()), !dbg !1958
  br label %254, !dbg !2046

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1844, metadata !DIExpression()), !dbg !1958
  br label %256, !dbg !2047

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1844, metadata !DIExpression()), !dbg !1958
  br i1 %110, label %252, label %253, !dbg !2048

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2049

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2052

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2054
  call void @llvm.dbg.value(metadata i8 %255, metadata !1844, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.label(metadata !1885), !dbg !2055
  br i1 %111, label %256, label %631, !dbg !2056

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2054
  call void @llvm.dbg.value(metadata i8 %257, metadata !1844, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.label(metadata !1886), !dbg !2058
  br i1 %102, label %495, label %473, !dbg !2059

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2060

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2061, !tbaa !1912
  %261 = icmp eq i8 %260, 0, !dbg !2063
  br i1 %261, label %262, label %473, !dbg !2064

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2065
  br i1 %263, label %264, label %473, !dbg !2067

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1958
  br label %265, !dbg !2068

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1958
  call void @llvm.dbg.value(metadata i8 %266, metadata !1847, metadata !DIExpression()), !dbg !1958
  br i1 %111, label %473, label %631, !dbg !2069

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1958
  br i1 %110, label %268, label %473, !dbg !2071

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2072

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2075
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2077
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2077
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %274, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %273, metadata !1831, metadata !DIExpression()), !dbg !1890
  %275 = icmp ult i64 %123, %274, !dbg !2078
  br i1 %275, label %276, label %278, !dbg !2081

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2078
  store i8 39, i8* %277, align 1, !dbg !2078, !tbaa !1912
  br label %278, !dbg !2078

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %279, metadata !1830, metadata !DIExpression()), !dbg !1890
  %280 = icmp ult i64 %279, %274, !dbg !2082
  br i1 %280, label %281, label %283, !dbg !2085

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2082
  store i8 92, i8* %282, align 1, !dbg !2082, !tbaa !1912
  br label %283, !dbg !2082

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %284, metadata !1830, metadata !DIExpression()), !dbg !1890
  %285 = icmp ult i64 %284, %274, !dbg !2086
  br i1 %285, label %286, label %288, !dbg !2089

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2086
  store i8 39, i8* %287, align 1, !dbg !2086, !tbaa !1912
  br label %288, !dbg !2086

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %289, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %473, !dbg !2090

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2091

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1848, metadata !DIExpression()), !dbg !2092
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !2093
  %293 = load i16*, i16** %292, align 8, !dbg !2093, !tbaa !650
  %294 = zext i8 %158 to i64, !dbg !2093
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2093
  %296 = load i16, i16* %295, align 2, !dbg !2093, !tbaa !2095
  %297 = lshr i16 %296, 14, !dbg !2097
  %298 = trunc i16 %297 to i8, !dbg !2097
  %299 = and i8 %298, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i8 %354, metadata !1851, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %355, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %306, metadata !1823, metadata !DIExpression()), !dbg !1890
  %300 = icmp eq i8 %299, 0, !dbg !2098
  call void @llvm.dbg.value(metadata i1 %357, metadata !1847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  br label %359, !dbg !2099

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2100
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1852, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %23, metadata !2102, metadata !DIExpression()) #25, !dbg !2110
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()) #25, !dbg !2110
  call void @llvm.dbg.value(metadata i64 8, metadata !2109, metadata !DIExpression()) #25, !dbg !2110
  store i64 0, i64* %10, align 8, !dbg !2112
  call void @llvm.dbg.value(metadata i64 0, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !2092
  %302 = icmp eq i64 %154, -1, !dbg !2113
  br i1 %302, label %303, label %305, !dbg !2115

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %304, metadata !1823, metadata !DIExpression()), !dbg !1890
  br label %305, !dbg !2117

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1958
  call void @llvm.dbg.value(metadata i64 %306, metadata !1823, metadata !DIExpression()), !dbg !1890
  br label %307, !dbg !2118

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2119
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %309, metadata !1851, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %308, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2121
  %310 = add i64 %308, %122, !dbg !2122
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2123
  %312 = sub i64 %306, %310, !dbg !2124
  call void @llvm.dbg.value(metadata i32* %12, metadata !1870, metadata !DIExpression(DW_OP_deref)), !dbg !2125
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %313, metadata !1873, metadata !DIExpression()), !dbg !2125
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2127

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1848, metadata !DIExpression()), !dbg !2092
  %315 = icmp ugt i64 %306, %310, !dbg !2128
  br i1 %315, label %316, label %341, !dbg !2130

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2131
  br label %318, !dbg !2131

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1848, metadata !DIExpression()), !dbg !2092
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2132
  %322 = load i8, i8* %321, align 1, !dbg !2132, !tbaa !1912
  %323 = icmp eq i8 %322, 0, !dbg !2130
  br i1 %323, label %341, label %324, !dbg !2131

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %325, metadata !1848, metadata !DIExpression()), !dbg !2092
  %326 = add i64 %325, %122, !dbg !2134
  %327 = icmp ult i64 %326, %306, !dbg !2128
  br i1 %327, label %318, label %341, !dbg !2130, !llvm.loop !2135

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2136
  call void @llvm.dbg.value(metadata i64 1, metadata !1874, metadata !DIExpression()), !dbg !2137
  br i1 %330, label %331, label %344, !dbg !2136

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1874, metadata !DIExpression()), !dbg !2137
  %333 = add i64 %332, %310, !dbg !2138
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2141
  %335 = load i8, i8* %334, align 1, !dbg !2141, !tbaa !1912
  %336 = sext i8 %335 to i32, !dbg !2141
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2142

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %338, metadata !1874, metadata !DIExpression()), !dbg !2137
  %339 = icmp eq i64 %338, %313, !dbg !2144
  br i1 %339, label %344, label %331, !dbg !2145, !llvm.loop !2146

340:                                              ; preds = %307
  br label %341, !dbg !2148

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1851, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 undef, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2148
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2149, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %345, metadata !1870, metadata !DIExpression()), !dbg !2125
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !2151
  %347 = icmp eq i32 %346, 0, !dbg !2151
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2152
  call void @llvm.dbg.value(metadata i8 %348, metadata !1851, metadata !DIExpression()), !dbg !2092
  %349 = add i64 %313, %308, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %349, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2148
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !2154
  %351 = icmp eq i32 %350, 0, !dbg !2155
  br i1 %351, label %307, label %353, !dbg !2156, !llvm.loop !2157

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1851, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 undef, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2148
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2159
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2159
  call void @llvm.dbg.value(metadata i8 %354, metadata !1851, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %355, metadata !1848, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %306, metadata !1823, metadata !DIExpression()), !dbg !1890
  %356 = and i8 %354, 1, !dbg !2098
  %357 = icmp eq i8 %356, 0, !dbg !2098
  call void @llvm.dbg.value(metadata i1 %357, metadata !1847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1958
  %358 = icmp ugt i64 %355, 1, !dbg !2160
  br i1 %358, label %367, label %359, !dbg !2099

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2161
  br i1 %364, label %367, label %365, !dbg !2161

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %472, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %441, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %440, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %439, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %438, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %371, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %437, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %375, metadata !1829, metadata !DIExpression()), !dbg !1890
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %372, metadata !1881, metadata !DIExpression()), !dbg !2163
  %373 = and i1 %102, %368
  br label %374, !dbg !2164

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1951
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1890
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1899
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1958
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1958
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2165
  call void @llvm.dbg.value(metadata i8 %380, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %379, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %378, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %377, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %376, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %375, metadata !1829, metadata !DIExpression()), !dbg !1890
  br i1 %373, label %381, label %427, !dbg !2166

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2171

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1846, metadata !DIExpression()), !dbg !1958
  %383 = and i8 %377, 1, !dbg !2174
  %384 = icmp eq i8 %383, 0, !dbg !2174
  %385 = and i1 %110, %384, !dbg !2174
  br i1 %385, label %386, label %402, !dbg !2174

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2176
  br i1 %387, label %388, label %390, !dbg !2180

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2176
  store i8 39, i8* %389, align 1, !dbg !2176, !tbaa !1912
  br label %390, !dbg !2176

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %391, metadata !1830, metadata !DIExpression()), !dbg !1890
  %392 = icmp ult i64 %391, %129, !dbg !2181
  br i1 %392, label %393, label %395, !dbg !2184

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2181
  store i8 36, i8* %394, align 1, !dbg !2181, !tbaa !1912
  br label %395, !dbg !2181

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %396, metadata !1830, metadata !DIExpression()), !dbg !1890
  %397 = icmp ult i64 %396, %129, !dbg !2185
  br i1 %397, label %398, label %400, !dbg !2188

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2185
  store i8 39, i8* %399, align 1, !dbg !2185, !tbaa !1912
  br label %400, !dbg !2185

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %401, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %402, !dbg !2189

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1890
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %404, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %403, metadata !1830, metadata !DIExpression()), !dbg !1890
  %405 = icmp ult i64 %403, %129, !dbg !2190
  br i1 %405, label %406, label %408, !dbg !2193

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2190
  store i8 92, i8* %407, align 1, !dbg !2190, !tbaa !1912
  br label %408, !dbg !2190

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %409, metadata !1830, metadata !DIExpression()), !dbg !1890
  %410 = icmp ult i64 %409, %129, !dbg !2194
  br i1 %410, label %411, label %415, !dbg !2197

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2194
  %413 = or i8 %412, 48, !dbg !2194
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2194
  store i8 %413, i8* %414, align 1, !dbg !2194, !tbaa !1912
  br label %415, !dbg !2194

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %416, metadata !1830, metadata !DIExpression()), !dbg !1890
  %417 = icmp ult i64 %416, %129, !dbg !2198
  br i1 %417, label %418, label %423, !dbg !2201

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2198
  %420 = and i8 %419, 7, !dbg !2198
  %421 = or i8 %420, 48, !dbg !2198
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2198
  store i8 %421, i8* %422, align 1, !dbg !2198, !tbaa !1912
  br label %423, !dbg !2198

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %424, metadata !1830, metadata !DIExpression()), !dbg !1890
  %425 = and i8 %378, 7, !dbg !2202
  %426 = or i8 %425, 48, !dbg !2203
  call void @llvm.dbg.value(metadata i8 %426, metadata !1840, metadata !DIExpression()), !dbg !1958
  br label %436, !dbg !2204

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2205
  %429 = icmp eq i8 %428, 0, !dbg !2205
  br i1 %429, label %436, label %430, !dbg !2207

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2208
  br i1 %431, label %432, label %434, !dbg !2212

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2208
  store i8 92, i8* %433, align 1, !dbg !2208, !tbaa !1912
  br label %434, !dbg !2208

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %435, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1845, metadata !DIExpression()), !dbg !1958
  br label %436, !dbg !2213

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1890
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1899
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1958
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1958
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1958
  call void @llvm.dbg.value(metadata i8 %441, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %440, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %439, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %438, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %437, metadata !1830, metadata !DIExpression()), !dbg !1890
  %442 = add i64 %375, 1, !dbg !2214
  %443 = icmp ugt i64 %372, %442, !dbg !2216
  br i1 %443, label %444, label %471, !dbg !2217

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2218
  %446 = icmp ne i8 %445, 0, !dbg !2218
  %447 = and i8 %441, 1, !dbg !2218
  %448 = icmp eq i8 %447, 0, !dbg !2218
  %449 = and i1 %446, %448, !dbg !2218
  br i1 %449, label %450, label %461, !dbg !2218

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2221
  br i1 %451, label %452, label %454, !dbg !2225

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2221
  store i8 39, i8* %453, align 1, !dbg !2221, !tbaa !1912
  br label %454, !dbg !2221

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %455, metadata !1830, metadata !DIExpression()), !dbg !1890
  %456 = icmp ult i64 %455, %129, !dbg !2226
  br i1 %456, label %457, label %459, !dbg !2229

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2226
  store i8 39, i8* %458, align 1, !dbg !2226, !tbaa !1912
  br label %459, !dbg !2226

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %460, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %461, !dbg !2230

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2231
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %463, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %462, metadata !1830, metadata !DIExpression()), !dbg !1890
  %464 = icmp ult i64 %462, %129, !dbg !2232
  br i1 %464, label %465, label %467, !dbg !2235

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2232
  store i8 %439, i8* %466, align 1, !dbg !2232, !tbaa !1912
  br label %467, !dbg !2232

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %468, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %442, metadata !1829, metadata !DIExpression()), !dbg !1890
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2236
  %470 = load i8, i8* %469, align 1, !dbg !2236, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %470, metadata !1840, metadata !DIExpression()), !dbg !1958
  br label %374, !dbg !2237, !llvm.loop !2238

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %472, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %441, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %440, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %439, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %438, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %371, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %437, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %375, metadata !1829, metadata !DIExpression()), !dbg !1890
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1951
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1890
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1895
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2241
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1890
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1890
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1958
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1958
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1958
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %482, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %481, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %156, metadata !1845, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %480, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %479, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %478, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %477, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %476, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %475, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %474, metadata !1829, metadata !DIExpression()), !dbg !1890
  br i1 %116, label %494, label %484, !dbg !2242

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2244
  %486 = zext i8 %485 to i64, !dbg !2244
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2245
  %488 = load i32, i32* %487, align 4, !dbg !2245, !tbaa !800
  %489 = and i8 %480, 31, !dbg !2246
  %490 = zext i8 %489 to i32, !dbg !2246
  %491 = shl nuw i32 1, %490, !dbg !2247
  %492 = and i32 %488, %491, !dbg !2247
  %493 = icmp eq i32 %492, 0, !dbg !2247
  br i1 %493, label %494, label %495, !dbg !2248

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2249

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2250
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1890
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1895
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2241
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1899
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1900
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1958
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1958
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %503, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %502, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %501, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %500, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %499, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %498, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %497, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %496, metadata !1829, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1887), !dbg !2251
  br i1 %109, label %505, label %635, !dbg !2252

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1846, metadata !DIExpression()), !dbg !1958
  %506 = and i8 %500, 1, !dbg !2254
  %507 = icmp eq i8 %506, 0, !dbg !2254
  %508 = and i1 %110, %507, !dbg !2254
  br i1 %508, label %509, label %525, !dbg !2254

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2256
  br i1 %510, label %511, label %513, !dbg !2260

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2256
  store i8 39, i8* %512, align 1, !dbg !2256, !tbaa !1912
  br label %513, !dbg !2256

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %514, metadata !1830, metadata !DIExpression()), !dbg !1890
  %515 = icmp ult i64 %514, %504, !dbg !2261
  br i1 %515, label %516, label %518, !dbg !2264

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2261
  store i8 36, i8* %517, align 1, !dbg !2261, !tbaa !1912
  br label %518, !dbg !2261

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %519, metadata !1830, metadata !DIExpression()), !dbg !1890
  %520 = icmp ult i64 %519, %504, !dbg !2265
  br i1 %520, label %521, label %523, !dbg !2268

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2265
  store i8 39, i8* %522, align 1, !dbg !2265, !tbaa !1912
  br label %523, !dbg !2265

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %524, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %525, !dbg !2269

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1958
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %527, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %526, metadata !1830, metadata !DIExpression()), !dbg !1890
  %528 = icmp ult i64 %526, %504, !dbg !2270
  br i1 %528, label %529, label %531, !dbg !2273

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2270
  store i8 92, i8* %530, align 1, !dbg !2270, !tbaa !1912
  br label %531, !dbg !2270

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %543, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %542, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %541, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %540, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %539, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %538, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %537, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %536, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %535, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %534, metadata !1829, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1888), !dbg !2274
  br label %560, !dbg !2275

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2250
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1890
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1895
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2241
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1899
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1900
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2278
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1958
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1958
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %542, metadata !1847, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %541, metadata !1846, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %540, metadata !1840, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %539, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %538, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %537, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %536, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %535, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %534, metadata !1829, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1888), !dbg !2274
  %544 = and i8 %538, 1, !dbg !2275
  %545 = icmp ne i8 %544, 0, !dbg !2275
  %546 = and i8 %541, 1, !dbg !2275
  %547 = icmp eq i8 %546, 0, !dbg !2275
  %548 = and i1 %545, %547, !dbg !2275
  br i1 %548, label %549, label %560, !dbg !2275

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2279
  br i1 %550, label %551, label %553, !dbg !2283

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2279
  store i8 39, i8* %552, align 1, !dbg !2279, !tbaa !1912
  br label %553, !dbg !2279

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %554, metadata !1830, metadata !DIExpression()), !dbg !1890
  %555 = icmp ult i64 %554, %543, !dbg !2284
  br i1 %555, label %556, label %558, !dbg !2287

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2284
  store i8 39, i8* %557, align 1, !dbg !2284, !tbaa !1912
  br label %558, !dbg !2284

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %559, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1890
  br label %560, !dbg !2288

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1958
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %569, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %568, metadata !1830, metadata !DIExpression()), !dbg !1890
  %570 = icmp ult i64 %568, %561, !dbg !2289
  br i1 %570, label %571, label %573, !dbg !2292

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2289
  store i8 %563, i8* %572, align 1, !dbg !2289, !tbaa !1912
  br label %573, !dbg !2289

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %574, metadata !1830, metadata !DIExpression()), !dbg !1890
  %575 = icmp eq i8 %562, 0, !dbg !2293
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2295
  call void @llvm.dbg.value(metadata i8 %576, metadata !1839, metadata !DIExpression()), !dbg !1890
  br label %577, !dbg !2296

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2250
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1890
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1895
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2241
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1899
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1890
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1901
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %584, metadata !1839, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %583, metadata !1838, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %582, metadata !1837, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %581, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %580, metadata !1831, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %579, metadata !1830, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %578, metadata !1829, metadata !DIExpression()), !dbg !1890
  %586 = add i64 %578, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %586, metadata !1829, metadata !DIExpression()), !dbg !1890
  br label %121, !dbg !2298, !llvm.loop !2299

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2301
  %590 = and i1 %110, %589, !dbg !2303
  %591 = xor i1 %590, true, !dbg !2303
  %592 = or i1 %109, %591, !dbg !2303
  br i1 %592, label %593, label %635, !dbg !2303

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2304
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2304
  br i1 %597, label %598, label %607, !dbg !2304

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2306
  %600 = icmp eq i8 %599, 0, !dbg !2306
  br i1 %600, label %603, label %601, !dbg !2309

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2310
  br label %652, !dbg !2311

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2312
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2314
  br i1 %606, label %26, label %607, !dbg !2314

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2315
  %610 = and i1 %609, %608, !dbg !2317
  br i1 %610, label %611, label %626, !dbg !2317

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %123, metadata !1830, metadata !DIExpression()), !dbg !1890
  %612 = load i8, i8* %97, align 1, !dbg !2318, !tbaa !1912
  %613 = icmp eq i8 %612, 0, !dbg !2321
  br i1 %613, label %626, label %614, !dbg !2321

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1832, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %617, metadata !1830, metadata !DIExpression()), !dbg !1890
  %618 = icmp ult i64 %617, %129, !dbg !2322
  br i1 %618, label %619, label %621, !dbg !2325

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2322
  store i8 %615, i8* %620, align 1, !dbg !2322, !tbaa !1912
  br label %621, !dbg !2322

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %622, metadata !1830, metadata !DIExpression()), !dbg !1890
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %623, metadata !1832, metadata !DIExpression()), !dbg !1890
  %624 = load i8, i8* %623, align 1, !dbg !2318, !tbaa !1912
  %625 = icmp eq i8 %624, 0, !dbg !2321
  br i1 %625, label %626, label %614, !dbg !2321, !llvm.loop !2327

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1933
  call void @llvm.dbg.value(metadata i64 %627, metadata !1830, metadata !DIExpression()), !dbg !1890
  %628 = icmp ult i64 %627, %129, !dbg !2329
  br i1 %628, label %629, label %652, !dbg !2331

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2332
  store i8 0, i8* %630, align 1, !dbg !2333, !tbaa !1912
  br label %652, !dbg !2332

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %637, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1889), !dbg !2334
  %633 = icmp eq i8 %101, 0, !dbg !2335
  %634 = select i1 %633, i32 2, i32 4, !dbg !2335
  br label %642, !dbg !2335

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1821, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %637, metadata !1823, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1889), !dbg !2334
  %639 = icmp eq i32 %93, 2, !dbg !2337
  %640 = icmp eq i8 %636, 0, !dbg !2335
  %641 = select i1 %640, i32 2, i32 4, !dbg !2335
  br i1 %639, label %642, label %646, !dbg !2335

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2335

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1824, metadata !DIExpression()), !dbg !1890
  %650 = and i32 %5, -3, !dbg !2338
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2339
  br label %652, !dbg !2340

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2341
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2346, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 %1, metadata !2347, metadata !DIExpression()), !dbg !2350
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %3, metadata !2348, metadata !DIExpression()), !dbg !2350
  %4 = icmp eq i8* %3, %0, !dbg !2352
  br i1 %4, label %5, label %72, !dbg !2354

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %6, metadata !2349, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %6, metadata !2356, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* undef, metadata !2362, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 85, metadata !2363, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 84, metadata !2364, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 70, metadata !2365, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 45, metadata !2366, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 56, metadata !2367, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2371, metadata !DIExpression()), !dbg !2372
  %7 = load i8, i8* %6, align 1, !dbg !2375, !tbaa !1912
  %8 = and i8 %7, -33, !dbg !2375
  %9 = sext i8 %8 to i32, !dbg !2375
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2375

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2377, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* undef, metadata !2382, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 84, metadata !2383, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 70, metadata !2384, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 45, metadata !2385, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 56, metadata !2386, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2391
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2395
  %12 = load i8, i8* %11, align 1, !dbg !2395, !tbaa !1912
  %13 = and i8 %12, -33, !dbg !2395
  %14 = icmp eq i8 %13, 84, !dbg !2395
  br i1 %14, label %15, label %69, !dbg !2395

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* undef, metadata !2402, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 70, metadata !2403, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 45, metadata !2404, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 56, metadata !2405, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2410
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2414
  %17 = load i8, i8* %16, align 1, !dbg !2414, !tbaa !1912
  %18 = and i8 %17, -33, !dbg !2414
  %19 = icmp eq i8 %18, 70, !dbg !2414
  br i1 %19, label %20, label %69, !dbg !2414

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 45, metadata !2422, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 56, metadata !2423, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 0, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2428
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2432
  %22 = load i8, i8* %21, align 1, !dbg !2432, !tbaa !1912
  %23 = icmp eq i8 %22, 45, !dbg !2432
  br i1 %23, label %24, label %69, !dbg !2434

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2435, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* undef, metadata !2440, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 56, metadata !2441, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2446
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2450
  %26 = load i8, i8* %25, align 1, !dbg !2450, !tbaa !1912
  %27 = icmp eq i8 %26, 56, !dbg !2450
  br i1 %27, label %28, label %69, !dbg !2452

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2453, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* undef, metadata !2458, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2462, metadata !DIExpression()), !dbg !2463
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2467
  %30 = load i8, i8* %29, align 1, !dbg !2467, !tbaa !1912
  %31 = icmp eq i8 %30, 0, !dbg !2467
  br i1 %31, label %32, label %69, !dbg !2469

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2470, !tbaa !1912
  %34 = icmp eq i8 %33, 96, !dbg !2471
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2470
  br label %72, !dbg !2472

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2377, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* undef, metadata !2382, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 66, metadata !2383, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 49, metadata !2384, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 56, metadata !2385, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 48, metadata !2386, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 51, metadata !2387, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 48, metadata !2388, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, metadata !2389, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2473
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2477
  %38 = load i8, i8* %37, align 1, !dbg !2477, !tbaa !1912
  %39 = and i8 %38, -33, !dbg !2477
  %40 = icmp eq i8 %39, 66, !dbg !2477
  br i1 %40, label %41, label %69, !dbg !2477

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8* undef, metadata !2402, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 49, metadata !2403, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 56, metadata !2404, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 48, metadata !2405, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 51, metadata !2406, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 48, metadata !2407, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2478
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2480
  %43 = load i8, i8* %42, align 1, !dbg !2480, !tbaa !1912
  %44 = icmp eq i8 %43, 49, !dbg !2480
  br i1 %44, label %45, label %69, !dbg !2481

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 56, metadata !2422, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 48, metadata !2423, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 51, metadata !2424, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 48, metadata !2425, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2482
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2484
  %47 = load i8, i8* %46, align 1, !dbg !2484, !tbaa !1912
  %48 = icmp eq i8 %47, 56, !dbg !2484
  br i1 %48, label %49, label %69, !dbg !2485

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2435, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* undef, metadata !2440, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 48, metadata !2441, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 51, metadata !2442, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 48, metadata !2443, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2444, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2486
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2488
  %51 = load i8, i8* %50, align 1, !dbg !2488, !tbaa !1912
  %52 = icmp eq i8 %51, 48, !dbg !2488
  br i1 %52, label %53, label %69, !dbg !2489

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2453, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* undef, metadata !2458, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 51, metadata !2459, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 48, metadata !2460, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2462, metadata !DIExpression()), !dbg !2490
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2492
  %55 = load i8, i8* %54, align 1, !dbg !2492, !tbaa !1912
  %56 = icmp eq i8 %55, 51, !dbg !2492
  br i1 %56, label %57, label %69, !dbg !2493

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2494, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8* undef, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 48, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2503
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2507
  %59 = load i8, i8* %58, align 1, !dbg !2507, !tbaa !1912
  %60 = icmp eq i8 %59, 48, !dbg !2507
  br i1 %60, label %61, label %69, !dbg !2509

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2510, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* undef, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2517, metadata !DIExpression()), !dbg !2518
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2522
  %63 = load i8, i8* %62, align 1, !dbg !2522, !tbaa !1912
  %64 = icmp eq i8 %63, 0, !dbg !2522
  br i1 %64, label %65, label %69, !dbg !2524

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2525, !tbaa !1912
  %67 = icmp eq i8 %66, 96, !dbg !2526
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2525
  br label %72, !dbg !2527

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2528
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2529
  br label %72, !dbg !2530

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2350
  ret i8* %73, !dbg !2531
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2532 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2536 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2542 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %1, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %0, metadata !2550, metadata !DIExpression()) #25, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %1, metadata !2555, metadata !DIExpression()) #25, !dbg !2563
  call void @llvm.dbg.value(metadata i64* null, metadata !2556, metadata !DIExpression()) #25, !dbg !2563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2557, metadata !DIExpression()) #25, !dbg !2563
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2565
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2565
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2558, metadata !DIExpression()) #25, !dbg !2563
  %6 = tail call i32* @__errno_location() #29, !dbg !2566
  %7 = load i32, i32* %6, align 4, !dbg !2566, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %7, metadata !2559, metadata !DIExpression()) #25, !dbg !2563
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2567
  %9 = load i32, i32* %8, align 4, !dbg !2567, !tbaa !1764
  %10 = or i32 %9, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %10, metadata !2560, metadata !DIExpression()) #25, !dbg !2563
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2569
  %12 = load i32, i32* %11, align 8, !dbg !2569, !tbaa !1713
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2570
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2571
  %15 = load i8*, i8** %14, align 8, !dbg !2571, !tbaa !1786
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2572
  %17 = load i8*, i8** %16, align 8, !dbg !2572, !tbaa !1789
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2573
  %19 = add i64 %18, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %19, metadata !2561, metadata !DIExpression()) #25, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %19, metadata !2575, metadata !DIExpression()) #25, !dbg !2580
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %20, metadata !2562, metadata !DIExpression()) #25, !dbg !2563
  %21 = load i32, i32* %11, align 8, !dbg !2583, !tbaa !1713
  %22 = load i8*, i8** %14, align 8, !dbg !2584, !tbaa !1786
  %23 = load i8*, i8** %16, align 8, !dbg !2585, !tbaa !1789
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2586
  store i32 %7, i32* %6, align 4, !dbg !2587, !tbaa !800
  ret i8* %20, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2550, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %1, metadata !2555, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64* %2, metadata !2556, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2589
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2590
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2558, metadata !DIExpression()), !dbg !2589
  %7 = tail call i32* @__errno_location() #29, !dbg !2591
  %8 = load i32, i32* %7, align 4, !dbg !2591, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %8, metadata !2559, metadata !DIExpression()), !dbg !2589
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2592
  %10 = load i32, i32* %9, align 4, !dbg !2592, !tbaa !1764
  %11 = icmp eq i64* %2, null, !dbg !2593
  %12 = zext i1 %11 to i32, !dbg !2593
  %13 = or i32 %10, %12, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %13, metadata !2560, metadata !DIExpression()), !dbg !2589
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2595
  %15 = load i32, i32* %14, align 8, !dbg !2595, !tbaa !1713
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2596
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2597
  %18 = load i8*, i8** %17, align 8, !dbg !2597, !tbaa !1786
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2598
  %20 = load i8*, i8** %19, align 8, !dbg !2598, !tbaa !1789
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2599
  %22 = add i64 %21, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %22, metadata !2561, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %22, metadata !2575, metadata !DIExpression()) #25, !dbg !2601
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2603
  call void @llvm.dbg.value(metadata i8* %23, metadata !2562, metadata !DIExpression()), !dbg !2589
  %24 = load i32, i32* %14, align 8, !dbg !2604, !tbaa !1713
  %25 = load i8*, i8** %17, align 8, !dbg !2605, !tbaa !1786
  %26 = load i8*, i8** %19, align 8, !dbg !2606, !tbaa !1789
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2607
  store i32 %8, i32* %7, align 4, !dbg !2608, !tbaa !800
  br i1 %11, label %29, label %28, !dbg !2609

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2610, !tbaa !1081
  br label %29, !dbg !2612

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2614 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2618, !tbaa !650
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 1, metadata !2617, metadata !DIExpression()), !dbg !2619
  %2 = load i32, i32* @nslots, align 4, !dbg !2620, !tbaa !800
  %3 = icmp sgt i32 %2, 1, !dbg !2623
  br i1 %3, label %4, label %12, !dbg !2624

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2623
  br label %6, !dbg !2624

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2617, metadata !DIExpression()), !dbg !2619
  %8 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %7, i32 1, !dbg !2625
  %9 = load i8*, i8** %8, align 8, !dbg !2625, !tbaa !2626
  tail call void @free(i8* %9) #25, !dbg !2628
  %10 = add nuw nsw i64 %7, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %10, metadata !2617, metadata !DIExpression()), !dbg !2619
  %11 = icmp eq i64 %10, %5, !dbg !2623
  br i1 %11, label %12, label %6, !dbg !2624, !llvm.loop !2630

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !2632
  %14 = load i8*, i8** %13, align 8, !dbg !2632, !tbaa !2626
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2634
  br i1 %15, label %17, label %16, !dbg !2635

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2636
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !2638, !tbaa !2639
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !2640, !tbaa !2626
  br label %17, !dbg !2641

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !2642
  br i1 %18, label %21, label %19, !dbg !2644

19:                                               ; preds = %17
  %20 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !2645
  tail call void @free(i8* %20) #25, !dbg !2647
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !2648, !tbaa !650
  br label %21, !dbg !2649

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2650, !tbaa !800
  ret void, !dbg !2651
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()), !dbg !2656
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2657
  ret i8* %3, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %2, metadata !2665, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2666, metadata !DIExpression()), !dbg !2678
  %5 = tail call i32* @__errno_location() #29, !dbg !2679
  %6 = load i32, i32* %5, align 4, !dbg !2679, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %6, metadata !2667, metadata !DIExpression()), !dbg !2678
  %7 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2680, !tbaa !650
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !2668, metadata !DIExpression()), !dbg !2678
  %8 = icmp slt i32 %0, 0, !dbg !2681
  br i1 %8, label %9, label %10, !dbg !2683

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2684
  unreachable, !dbg !2684

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2685, !tbaa !800
  %12 = icmp sgt i32 %11, %0, !dbg !2686
  br i1 %12, label %34, label %13, !dbg !2687

13:                                               ; preds = %10
  %14 = icmp eq %struct.tokenbuffer* %7, @slotvec0, !dbg !2688
  call void @llvm.dbg.value(metadata i1 %14, metadata !2669, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2689
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2672, metadata !DIExpression()), !dbg !2689
  %15 = icmp eq i32 %0, 2147483647, !dbg !2690
  br i1 %15, label %16, label %17, !dbg !2692

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2693
  unreachable, !dbg !2693

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.tokenbuffer* null, %struct.tokenbuffer* %7, !dbg !2694
  %19 = bitcast %struct.tokenbuffer* %18 to i8*, !dbg !2694
  %20 = add nuw nsw i32 %0, 1, !dbg !2695
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2696
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2697
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !2697
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, metadata !2668, metadata !DIExpression()), !dbg !2678
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !2698, !tbaa !650
  br i1 %14, label %25, label %26, !dbg !2699

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i1 false), !dbg !2700, !tbaa.struct !2702
  br label %26, !dbg !2703

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2704, !tbaa !800
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !2705
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !2706
  %31 = sub nsw i32 %20, %27, !dbg !2707
  %32 = sext i32 %31 to i64, !dbg !2708
  %33 = shl nsw i64 %32, 4, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %30, metadata !2102, metadata !DIExpression()) #25, !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()) #25, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %33, metadata !2109, metadata !DIExpression()) #25, !dbg !2710
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2712
  store i32 %20, i32* @nslots, align 4, !dbg !2713, !tbaa !800
  br label %34, !dbg !2714

34:                                               ; preds = %26, %10
  %35 = phi %struct.tokenbuffer* [ %24, %26 ], [ %7, %10 ], !dbg !2678
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %35, metadata !2668, metadata !DIExpression()), !dbg !2678
  %36 = zext i32 %0 to i64, !dbg !2715
  %37 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 0, !dbg !2716
  %38 = load i64, i64* %37, align 8, !dbg !2716, !tbaa !2639
  call void @llvm.dbg.value(metadata i64 %38, metadata !2673, metadata !DIExpression()), !dbg !2717
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 1, !dbg !2718
  %40 = load i8*, i8** %39, align 8, !dbg !2718, !tbaa !2626
  call void @llvm.dbg.value(metadata i8* %40, metadata !2675, metadata !DIExpression()), !dbg !2717
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2719
  %42 = load i32, i32* %41, align 4, !dbg !2719, !tbaa !1764
  %43 = or i32 %42, 1, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %43, metadata !2676, metadata !DIExpression()), !dbg !2717
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2721
  %45 = load i32, i32* %44, align 8, !dbg !2721, !tbaa !1713
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2722
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2723
  %48 = load i8*, i8** %47, align 8, !dbg !2723, !tbaa !1786
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2724
  %50 = load i8*, i8** %49, align 8, !dbg !2724, !tbaa !1789
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %51, metadata !2677, metadata !DIExpression()), !dbg !2717
  %52 = icmp ugt i64 %38, %51, !dbg !2726
  br i1 %52, label %63, label %53, !dbg !2728

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %54, metadata !2673, metadata !DIExpression()), !dbg !2717
  store i64 %54, i64* %37, align 8, !dbg !2731, !tbaa !2639
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2732
  br i1 %55, label %57, label %56, !dbg !2734

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2735
  br label %57, !dbg !2735

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2575, metadata !DIExpression()) #25, !dbg !2736
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %58, metadata !2675, metadata !DIExpression()), !dbg !2717
  store i8* %58, i8** %39, align 8, !dbg !2739, !tbaa !2626
  %59 = load i32, i32* %44, align 8, !dbg !2740, !tbaa !1713
  %60 = load i8*, i8** %47, align 8, !dbg !2741, !tbaa !1786
  %61 = load i8*, i8** %49, align 8, !dbg !2742, !tbaa !1789
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2743
  br label %63, !dbg !2744

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2717
  call void @llvm.dbg.value(metadata i8* %64, metadata !2675, metadata !DIExpression()), !dbg !2717
  store i32 %6, i32* %5, align 4, !dbg !2745, !tbaa !800
  ret i8* %64, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %2, metadata !2753, metadata !DIExpression()), !dbg !2754
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2755
  ret i8* %4, !dbg !2756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2654, metadata !DIExpression()) #25, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #25, !dbg !2761
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2763
  ret i8* %2, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2751, metadata !DIExpression()) #25, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %0, metadata !2752, metadata !DIExpression()) #25, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2753, metadata !DIExpression()) #25, !dbg !2772
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2774
  ret i8* %3, !dbg !2775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2776 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %1, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()), !dbg !2784
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2785
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2783, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %1, metadata !2791, metadata !DIExpression()) #25, !dbg !2797
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2796, metadata !DIExpression()) #25, !dbg !2799
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2799, !alias.scope !2787
  %6 = icmp eq i32 %1, 10, !dbg !2800
  br i1 %6, label %7, label %8, !dbg !2802

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2803, !noalias !2787
  unreachable, !dbg !2803

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2804
  store i32 %1, i32* %9, align 8, !dbg !2805, !tbaa !1713, !alias.scope !2787
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2807
  ret i8* %10, !dbg !2808
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2809 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %1, metadata !2814, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %2, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %3, metadata !2816, metadata !DIExpression()), !dbg !2818
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2819
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2817, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821), !dbg !2824
  call void @llvm.dbg.value(metadata i32 %1, metadata !2791, metadata !DIExpression()) #25, !dbg !2825
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2796, metadata !DIExpression()) #25, !dbg !2827
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2827, !alias.scope !2821
  %7 = icmp eq i32 %1, 10, !dbg !2828
  br i1 %7, label %8, label %9, !dbg !2829

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2830, !noalias !2821
  unreachable, !dbg !2830

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2831
  store i32 %1, i32* %10, align 8, !dbg !2832, !tbaa !1713, !alias.scope !2821
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2834
  ret i8* %11, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2836 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()) #25, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %0, metadata !2781, metadata !DIExpression()) #25, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #25, !dbg !2843
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2783, metadata !DIExpression()) #25, !dbg !2846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847) #25, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %0, metadata !2791, metadata !DIExpression()) #25, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2796, metadata !DIExpression()) #25, !dbg !2853
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2853, !alias.scope !2847
  %5 = icmp eq i32 %0, 10, !dbg !2854
  br i1 %5, label %6, label %7, !dbg !2855

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2856, !noalias !2847
  unreachable, !dbg !2856

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2857
  store i32 %0, i32* %8, align 8, !dbg !2858, !tbaa !1713, !alias.scope !2847
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2859
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2860
  ret i8* %9, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2862 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %2, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()) #25, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %0, metadata !2814, metadata !DIExpression()) #25, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !2815, metadata !DIExpression()) #25, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %2, metadata !2816, metadata !DIExpression()) #25, !dbg !2870
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2872
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2872
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2817, metadata !DIExpression()) #25, !dbg !2873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2874) #25, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %0, metadata !2791, metadata !DIExpression()) #25, !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2796, metadata !DIExpression()) #25, !dbg !2880
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2880, !alias.scope !2874
  %6 = icmp eq i32 %0, 10, !dbg !2881
  br i1 %6, label %7, label %8, !dbg !2882

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2883, !noalias !2874
  unreachable, !dbg !2883

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2884
  store i32 %0, i32* %9, align 8, !dbg !2885, !tbaa !1713, !alias.scope !2874
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2886
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2887
  ret i8* %10, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2889 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8 %2, metadata !2895, metadata !DIExpression()), !dbg !2897
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2898
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2900, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1731, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %2, metadata !1732, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 1, metadata !1733, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %2, metadata !1734, metadata !DIExpression()), !dbg !2902
  %6 = lshr i8 %2, 5, !dbg !2904
  %7 = zext i8 %6 to i64, !dbg !2904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2905
  call void @llvm.dbg.value(metadata i32* %8, metadata !1735, metadata !DIExpression()), !dbg !2902
  %9 = and i8 %2, 31, !dbg !2906
  %10 = zext i8 %9 to i32, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %10, metadata !1737, metadata !DIExpression()), !dbg !2902
  %11 = load i32, i32* %8, align 4, !dbg !2907, !tbaa !800
  %12 = lshr i32 %11, %10, !dbg !2908
  %13 = and i32 %12, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %13, metadata !1738, metadata !DIExpression()), !dbg !2902
  %14 = xor i32 %13, 1, !dbg !2910
  %15 = shl i32 %14, %10, !dbg !2911
  %16 = xor i32 %15, %11, !dbg !2912
  store i32 %16, i32* %8, align 4, !dbg !2912, !tbaa !800
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2914
  ret i8* %17, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2916 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 %1, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i8 %1, metadata !2895, metadata !DIExpression()) #25, !dbg !2923
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2925
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2896, metadata !DIExpression()) #25, !dbg !2926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2927, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1731, metadata !DIExpression()) #25, !dbg !2928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1732, metadata !DIExpression()) #25, !dbg !2928
  call void @llvm.dbg.value(metadata i32 1, metadata !1733, metadata !DIExpression()) #25, !dbg !2928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1734, metadata !DIExpression()) #25, !dbg !2928
  %5 = lshr i8 %1, 5, !dbg !2930
  %6 = zext i8 %5 to i64, !dbg !2930
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2931
  call void @llvm.dbg.value(metadata i32* %7, metadata !1735, metadata !DIExpression()) #25, !dbg !2928
  %8 = and i8 %1, 31, !dbg !2932
  %9 = zext i8 %8 to i32, !dbg !2932
  call void @llvm.dbg.value(metadata i32 %9, metadata !1737, metadata !DIExpression()) #25, !dbg !2928
  %10 = load i32, i32* %7, align 4, !dbg !2933, !tbaa !800
  %11 = lshr i32 %10, %9, !dbg !2934
  %12 = and i32 %11, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %12, metadata !1738, metadata !DIExpression()) #25, !dbg !2928
  %13 = xor i32 %12, 1, !dbg !2936
  %14 = shl i32 %13, %9, !dbg !2937
  %15 = xor i32 %14, %10, !dbg !2938
  store i32 %15, i32* %7, align 4, !dbg !2938, !tbaa !800
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2939
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2940
  ret i8* %16, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2942 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %0, metadata !2920, metadata !DIExpression()) #25, !dbg !2946
  call void @llvm.dbg.value(metadata i8 58, metadata !2921, metadata !DIExpression()) #25, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()) #25, !dbg !2948
  call void @llvm.dbg.value(metadata i64 -1, metadata !2894, metadata !DIExpression()) #25, !dbg !2948
  call void @llvm.dbg.value(metadata i8 58, metadata !2895, metadata !DIExpression()) #25, !dbg !2948
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2950
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2896, metadata !DIExpression()) #25, !dbg !2951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2952, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1731, metadata !DIExpression()) #25, !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()) #25, !dbg !2953
  call void @llvm.dbg.value(metadata i32 1, metadata !1733, metadata !DIExpression()) #25, !dbg !2953
  call void @llvm.dbg.value(metadata i8 58, metadata !1734, metadata !DIExpression()) #25, !dbg !2953
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2955
  call void @llvm.dbg.value(metadata i32* %4, metadata !1735, metadata !DIExpression()) #25, !dbg !2953
  call void @llvm.dbg.value(metadata i32 26, metadata !1737, metadata !DIExpression()) #25, !dbg !2953
  %5 = load i32, i32* %4, align 4, !dbg !2956, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %5, metadata !1738, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2953
  %6 = or i32 %5, 67108864, !dbg !2957
  store i32 %6, i32* %4, align 4, !dbg !2957, !tbaa !800
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2959
  ret i8* %7, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2961 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()) #25, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()) #25, !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !2895, metadata !DIExpression()) #25, !dbg !2966
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2968
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2896, metadata !DIExpression()) #25, !dbg !2969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2970, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1731, metadata !DIExpression()) #25, !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()) #25, !dbg !2971
  call void @llvm.dbg.value(metadata i32 1, metadata !1733, metadata !DIExpression()) #25, !dbg !2971
  call void @llvm.dbg.value(metadata i8 58, metadata !1734, metadata !DIExpression()) #25, !dbg !2971
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2973
  call void @llvm.dbg.value(metadata i32* %5, metadata !1735, metadata !DIExpression()) #25, !dbg !2971
  call void @llvm.dbg.value(metadata i32 26, metadata !1737, metadata !DIExpression()) #25, !dbg !2971
  %6 = load i32, i32* %5, align 4, !dbg !2974, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %6, metadata !1738, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2971
  %7 = or i32 %6, 67108864, !dbg !2975
  store i32 %7, i32* %5, align 4, !dbg !2975, !tbaa !800
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2976
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2977
  ret i8* %8, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2979 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2796, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2985
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 %1, metadata !2982, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()), !dbg !2987
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2988
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2984, metadata !DIExpression()), !dbg !2989
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2990
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991), !dbg !2990
  call void @llvm.dbg.value(metadata i32 %1, metadata !2791, metadata !DIExpression()) #25, !dbg !2994
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2994
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2985, !alias.scope !2991
  %8 = icmp eq i32 %1, 10, !dbg !2995
  br i1 %8, label %9, label %10, !dbg !2996

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2997, !noalias !2991
  unreachable, !dbg !2997

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2796, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2994
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2990
  store i32 %1, i32* %11, align 8, !dbg !2990, !tbaa.struct !2901
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2990
  %13 = bitcast i32* %12 to i8*, !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2990, !tbaa.struct !2998
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2990
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1731, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8 58, metadata !1732, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 1, metadata !1733, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8 58, metadata !1734, metadata !DIExpression()), !dbg !2999
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3001
  call void @llvm.dbg.value(metadata i32* %14, metadata !1735, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 26, metadata !1737, metadata !DIExpression()), !dbg !2999
  %15 = load i32, i32* %14, align 4, !dbg !3002, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %15, metadata !1738, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2999
  %16 = or i32 %15, 67108864, !dbg !3003
  store i32 %16, i32* %14, align 4, !dbg !3003, !tbaa !800
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3005
  ret i8* %17, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3007 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3011, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %1, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %3, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()) #25, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %1, metadata !3021, metadata !DIExpression()) #25, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %2, metadata !3022, metadata !DIExpression()) #25, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %3, metadata !3023, metadata !DIExpression()) #25, !dbg !3026
  call void @llvm.dbg.value(metadata i64 -1, metadata !3024, metadata !DIExpression()) #25, !dbg !3026
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3028
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3028
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3025, metadata !DIExpression()) #25, !dbg !3029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3030, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1771, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %1, metadata !1772, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %2, metadata !1773, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1771, metadata !DIExpression()) #25, !dbg !3031
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3033
  store i32 10, i32* %7, align 8, !dbg !3034, !tbaa !1713
  %8 = icmp ne i8* %1, null, !dbg !3035
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3036
  br i1 %10, label %12, label %11, !dbg !3036

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3037
  unreachable, !dbg !3037

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3038
  store i8* %1, i8** %13, align 8, !dbg !3039, !tbaa !1786
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3040
  store i8* %2, i8** %14, align 8, !dbg !3041, !tbaa !1789
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !3042
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3043
  ret i8* %15, !dbg !3044
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3017 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %1, metadata !3021, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3022, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %3, metadata !3023, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %4, metadata !3024, metadata !DIExpression()), !dbg !3045
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3025, metadata !DIExpression()), !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3048, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1771, metadata !DIExpression()) #25, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %1, metadata !1772, metadata !DIExpression()) #25, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %2, metadata !1773, metadata !DIExpression()) #25, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1771, metadata !DIExpression()) #25, !dbg !3049
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3051
  store i32 10, i32* %8, align 8, !dbg !3052, !tbaa !1713
  %9 = icmp ne i8* %1, null, !dbg !3053
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3054
  br i1 %11, label %13, label %12, !dbg !3054

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !3055
  unreachable, !dbg !3055

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3056
  store i8* %1, i8** %14, align 8, !dbg !3057, !tbaa !1786
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3058
  store i8* %2, i8** %15, align 8, !dbg !3059, !tbaa !1789
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3061
  ret i8* %16, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3063 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %1, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %2, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression()) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %2, metadata !3014, metadata !DIExpression()) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()) #25, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()) #25, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %2, metadata !3023, metadata !DIExpression()) #25, !dbg !3073
  call void @llvm.dbg.value(metadata i64 -1, metadata !3024, metadata !DIExpression()) #25, !dbg !3073
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3075
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3025, metadata !DIExpression()) #25, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3077, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1771, metadata !DIExpression()) #25, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !1772, metadata !DIExpression()) #25, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %1, metadata !1773, metadata !DIExpression()) #25, !dbg !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1771, metadata !DIExpression()) #25, !dbg !3078
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3080
  store i32 10, i32* %6, align 8, !dbg !3081, !tbaa !1713
  %7 = icmp ne i8* %0, null, !dbg !3082
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3083
  br i1 %9, label %11, label %10, !dbg !3083

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !3084
  unreachable, !dbg !3084

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3085
  store i8* %0, i8** %12, align 8, !dbg !3086, !tbaa !1786
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3087
  store i8* %1, i8** %13, align 8, !dbg !3088, !tbaa !1789
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3090
  ret i8* %14, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3092 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %3, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()) #25, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()) #25, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3023, metadata !DIExpression()) #25, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %3, metadata !3024, metadata !DIExpression()) #25, !dbg !3101
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3025, metadata !DIExpression()) #25, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3105, !tbaa.struct !2901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1771, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !1772, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !1773, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1771, metadata !DIExpression()) #25, !dbg !3106
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3108
  store i32 10, i32* %7, align 8, !dbg !3109, !tbaa !1713
  %8 = icmp ne i8* %0, null, !dbg !3110
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3111
  br i1 %10, label %12, label %11, !dbg !3111

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3112
  unreachable, !dbg !3112

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3113
  store i8* %0, i8** %13, align 8, !dbg !3114, !tbaa !1786
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3115
  store i8* %1, i8** %14, align 8, !dbg !3116, !tbaa !1789
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !3117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3118
  ret i8* %15, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %2, metadata !3126, metadata !DIExpression()), !dbg !3127
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3128
  ret i8* %4, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()) #25, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()) #25, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()) #25, !dbg !3137
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3139
  ret i8* %3, !dbg !3140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()) #25, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()) #25, !dbg !3148
  call void @llvm.dbg.value(metadata i64 -1, metadata !3126, metadata !DIExpression()) #25, !dbg !3148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3150
  ret i8* %3, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !3145, metadata !DIExpression()) #25, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !3146, metadata !DIExpression()) #25, !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()) #25, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()) #25, !dbg !3160
  call void @llvm.dbg.value(metadata i64 -1, metadata !3126, metadata !DIExpression()) #25, !dbg !3160
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3162
  ret i8* %2, !dbg !3163
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @init_tokenbuffer(%struct.tokenbuffer* nocapture %0) local_unnamed_addr #12 !dbg !3164 {
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, metadata !3174, metadata !DIExpression()), !dbg !3175
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3176
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !3177
  ret void, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtoken(%struct._IO_FILE* %0, i8* nocapture readonly %1, i64 %2, %struct.tokenbuffer* nocapture %3) local_unnamed_addr #8 !dbg !3178 {
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3216, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %1, metadata !3217, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %2, metadata !3218, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !3219, metadata !DIExpression()), !dbg !3231
  %6 = bitcast [4 x i64]* %5 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #25, !dbg !3232
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3224, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8* %6, metadata !3234, metadata !DIExpression()) #25, !dbg !3239
  call void @llvm.dbg.value(metadata i32 0, metadata !3237, metadata !DIExpression()) #25, !dbg !3239
  call void @llvm.dbg.value(metadata i64 32, metadata !3238, metadata !DIExpression()) #25, !dbg !3239
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false) #25, !dbg !3241
  call void @llvm.dbg.value(metadata i64 0, metadata !3222, metadata !DIExpression()), !dbg !3231
  %7 = icmp eq i64 %2, 0, !dbg !3242
  br i1 %7, label %51, label %8, !dbg !3243

8:                                                ; preds = %4
  %9 = and i64 %2, 1, !dbg !3243
  %10 = icmp eq i64 %2, 1, !dbg !3243
  br i1 %10, label %38, label %11, !dbg !3243

11:                                               ; preds = %8
  %12 = and i64 %2, -2, !dbg !3243
  br label %13, !dbg !3243

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %35, %13 ]
  %15 = phi i64 [ %12, %11 ], [ %36, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3222, metadata !DIExpression()), !dbg !3231
  %16 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !3244
  %17 = load i8, i8* %16, align 1, !dbg !3244, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %17, metadata !3227, metadata !DIExpression()), !dbg !3245
  %18 = zext i8 %17 to i64, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %18, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3255
  %19 = and i64 %18, 63, !dbg !3257
  %20 = shl nuw i64 1, %19, !dbg !3258
  %21 = lshr i64 %18, 6, !dbg !3259
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %21, !dbg !3260
  %23 = load i64, i64* %22, align 8, !dbg !3261, !tbaa !1081
  %24 = or i64 %20, %23, !dbg !3261
  store i64 %24, i64* %22, align 8, !dbg !3261, !tbaa !1081
  %25 = or i64 %14, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %25, metadata !3222, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %25, metadata !3222, metadata !DIExpression()), !dbg !3231
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !3244
  %27 = load i8, i8* %26, align 1, !dbg !3244, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %27, metadata !3227, metadata !DIExpression()), !dbg !3245
  %28 = zext i8 %27 to i64, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %28, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3255
  %29 = and i64 %28, 63, !dbg !3257
  %30 = shl nuw i64 1, %29, !dbg !3258
  %31 = lshr i64 %28, 6, !dbg !3259
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %31, !dbg !3260
  %33 = load i64, i64* %32, align 8, !dbg !3261, !tbaa !1081
  %34 = or i64 %30, %33, !dbg !3261
  store i64 %34, i64* %32, align 8, !dbg !3261, !tbaa !1081
  %35 = add nuw i64 %14, 2, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %35, metadata !3222, metadata !DIExpression()), !dbg !3231
  %36 = add i64 %15, -2, !dbg !3243
  %37 = icmp eq i64 %36, 0, !dbg !3243
  br i1 %37, label %38, label %13, !dbg !3243, !llvm.loop !3263

38:                                               ; preds = %13, %8
  %39 = phi i64 [ 0, %8 ], [ %35, %13 ]
  %40 = icmp eq i64 %9, 0, !dbg !3243
  br i1 %40, label %51, label %41, !dbg !3243

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %39, metadata !3222, metadata !DIExpression()), !dbg !3231
  %42 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !3244
  %43 = load i8, i8* %42, align 1, !dbg !3244, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %43, metadata !3227, metadata !DIExpression()), !dbg !3245
  %44 = zext i8 %43 to i64, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %44, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3255
  %45 = and i64 %44, 63, !dbg !3257
  %46 = shl nuw i64 1, %45, !dbg !3258
  %47 = lshr i64 %44, 6, !dbg !3259
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47, !dbg !3260
  %49 = load i64, i64* %48, align 8, !dbg !3261, !tbaa !1081
  %50 = or i64 %46, %49, !dbg !3261
  store i64 %50, i64* %48, align 8, !dbg !3261, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %39, metadata !3222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3231
  br label %51, !dbg !3265

51:                                               ; preds = %41, %38, %4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3271, metadata !DIExpression()) #25, !dbg !3274
  %52 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3265
  %53 = load i8*, i8** %52, align 8, !dbg !3265, !tbaa !3275
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3265
  %55 = load i8*, i8** %54, align 8, !dbg !3265, !tbaa !3277
  %56 = icmp ult i8* %53, %55, !dbg !3265
  br i1 %56, label %57, label %61, !dbg !3265, !prof !3278

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3265
  store i8* %58, i8** %52, align 8, !dbg !3265, !tbaa !3275
  %59 = load i8, i8* %53, align 1, !dbg !3265, !tbaa !1912
  %60 = zext i8 %59 to i32, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %62, metadata !3221, metadata !DIExpression()), !dbg !3231
  br label %64, !dbg !3279

61:                                               ; preds = %51
  %62 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %62, metadata !3221, metadata !DIExpression()), !dbg !3231
  %63 = icmp sgt i32 %62, -1, !dbg !3281
  br i1 %63, label %64, label %150, !dbg !3279

64:                                               ; preds = %57, %61
  %65 = phi i32 [ %62, %61 ], [ %60, %57 ]
  br label %66, !dbg !3282

66:                                               ; preds = %64, %86
  %67 = phi i32 [ %87, %86 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !3221, metadata !DIExpression()), !dbg !3231
  %68 = zext i32 %67 to i64, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %68, metadata !3284, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3291, metadata !DIExpression()), !dbg !3292
  %69 = lshr i64 %68, 6, !dbg !3294
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %69, !dbg !3295
  %71 = load i64, i64* %70, align 8, !dbg !3295, !tbaa !1081
  %72 = and i64 %68, 63, !dbg !3296
  %73 = shl nuw i64 1, %72, !dbg !3295
  %74 = and i64 %71, %73, !dbg !3295
  %75 = icmp eq i64 %74, 0, !dbg !3295
  br i1 %75, label %89, label %76, !dbg !3282

76:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3271, metadata !DIExpression()) #25, !dbg !3297
  %77 = load i8*, i8** %52, align 8, !dbg !3299, !tbaa !3275
  %78 = load i8*, i8** %54, align 8, !dbg !3299, !tbaa !3277
  %79 = icmp ult i8* %77, %78, !dbg !3299
  br i1 %79, label %82, label %80, !dbg !3299, !prof !3278

80:                                               ; preds = %76
  %81 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !3299
  br label %86, !dbg !3299

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !3299
  store i8* %83, i8** %52, align 8, !dbg !3299, !tbaa !3275
  %84 = load i8, i8* %77, align 1, !dbg !3299, !tbaa !1912
  %85 = zext i8 %84 to i32, !dbg !3299
  br label %86, !dbg !3299

86:                                               ; preds = %80, %82
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !3299
  call void @llvm.dbg.value(metadata i32 %87, metadata !3221, metadata !DIExpression()), !dbg !3231
  %88 = icmp sgt i32 %87, -1, !dbg !3281
  br i1 %88, label %66, label %150, !dbg !3279, !llvm.loop !3300

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3302
  call void @llvm.dbg.value(metadata i8* undef, metadata !3220, metadata !DIExpression()), !dbg !3231
  %91 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3303
  call void @llvm.dbg.value(metadata i64 undef, metadata !3223, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 0, metadata !3222, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %67, metadata !3221, metadata !DIExpression()), !dbg !3231
  %92 = load i64, i64* %91, align 8, !dbg !3303, !tbaa !3304
  call void @llvm.dbg.value(metadata i64 %92, metadata !3223, metadata !DIExpression()), !dbg !3231
  %93 = load i8*, i8** %90, align 8, !dbg !3302, !tbaa !874
  call void @llvm.dbg.value(metadata i8* %93, metadata !3220, metadata !DIExpression()), !dbg !3231
  br label %94, !dbg !3305

94:                                               ; preds = %89, %143
  %95 = phi i1 [ %145, %143 ], [ false, %89 ]
  %96 = phi i64 [ %132, %143 ], [ 0, %89 ]
  %97 = phi i32 [ %144, %143 ], [ %67, %89 ]
  %98 = phi i8* [ %120, %143 ], [ %93, %89 ]
  %99 = phi i64 [ %119, %143 ], [ %92, %89 ]
  call void @llvm.dbg.value(metadata i64 %96, metadata !3222, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %97, metadata !3221, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %98, metadata !3220, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %99, metadata !3223, metadata !DIExpression()), !dbg !3231
  %100 = icmp eq i64 %96, %99, !dbg !3307
  br i1 %100, label %101, label %118, !dbg !3311

101:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %98, metadata !198, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i64* undef, metadata !199, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i64 1, metadata !200, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %99, metadata !201, metadata !DIExpression()) #25, !dbg !3312
  %102 = icmp eq i8* %98, null, !dbg !3314
  br i1 %102, label %103, label %108, !dbg !3316

103:                                              ; preds = %101
  %104 = icmp eq i64 %96, 0, !dbg !3317
  br i1 %104, label %115, label %105, !dbg !3320

105:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %99, metadata !201, metadata !DIExpression()) #25, !dbg !3312
  %106 = icmp slt i64 %96, 0, !dbg !3321
  br i1 %106, label %107, label %115, !dbg !3323

107:                                              ; preds = %105
  tail call void @xalloc_die() #27, !dbg !3324
  unreachable, !dbg !3324

108:                                              ; preds = %101
  %109 = icmp ult i64 %96, 6148914691236517204, !dbg !3325
  br i1 %109, label %111, label %110, !dbg !3328

110:                                              ; preds = %108
  tail call void @xalloc_die() #27, !dbg !3329
  unreachable, !dbg !3329

111:                                              ; preds = %108
  %112 = lshr i64 %96, 1, !dbg !3330
  %113 = add nuw nsw i64 %96, 1, !dbg !3331
  %114 = add nuw nsw i64 %113, %112, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %114, metadata !201, metadata !DIExpression()) #25, !dbg !3312
  br label %115

115:                                              ; preds = %103, %105, %111
  %116 = phi i64 [ %114, %111 ], [ %96, %105 ], [ 128, %103 ], !dbg !3312
  call void @llvm.dbg.value(metadata i64 %116, metadata !201, metadata !DIExpression()) #25, !dbg !3312
  %117 = tail call i8* @xrealloc(i8* %98, i64 %116) #25, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %117, metadata !3220, metadata !DIExpression()), !dbg !3231
  br label %118, !dbg !3334

118:                                              ; preds = %115, %94
  %119 = phi i64 [ %116, %115 ], [ %99, %94 ], !dbg !3231
  %120 = phi i8* [ %117, %115 ], [ %98, %94 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8* %120, metadata !3220, metadata !DIExpression()), !dbg !3231
  br i1 %95, label %148, label %121, !dbg !3335

121:                                              ; preds = %118
  %122 = zext i32 %97 to i64, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %122, metadata !3284, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3291, metadata !DIExpression()), !dbg !3338
  %123 = lshr i64 %122, 6, !dbg !3340
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %123, !dbg !3341
  %125 = load i64, i64* %124, align 8, !dbg !3341, !tbaa !1081
  %126 = and i64 %122, 63, !dbg !3342
  %127 = shl nuw i64 1, %126, !dbg !3341
  %128 = and i64 %125, %127, !dbg !3341
  %129 = icmp eq i64 %128, 0, !dbg !3341
  br i1 %129, label %130, label %148, !dbg !3343

130:                                              ; preds = %121
  %131 = trunc i32 %97 to i8, !dbg !3344
  %132 = add i64 %96, 1, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %132, metadata !3222, metadata !DIExpression()), !dbg !3231
  %133 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3346
  store i8 %131, i8* %133, align 1, !dbg !3347, !tbaa !1912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3271, metadata !DIExpression()) #25, !dbg !3348
  %134 = load i8*, i8** %52, align 8, !dbg !3350, !tbaa !3275
  %135 = load i8*, i8** %54, align 8, !dbg !3350, !tbaa !3277
  %136 = icmp ult i8* %134, %135, !dbg !3350
  br i1 %136, label %139, label %137, !dbg !3350, !prof !3278

137:                                              ; preds = %130
  %138 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !3350
  br label %143, !dbg !3350

139:                                              ; preds = %130
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3350
  store i8* %140, i8** %52, align 8, !dbg !3350, !tbaa !3275
  %141 = load i8, i8* %134, align 1, !dbg !3350, !tbaa !1912
  %142 = zext i8 %141 to i32, !dbg !3350
  br label %143, !dbg !3350

143:                                              ; preds = %137, %139
  %144 = phi i32 [ %138, %137 ], [ %142, %139 ], !dbg !3350
  call void @llvm.dbg.value(metadata i64 %132, metadata !3222, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %144, metadata !3221, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %120, metadata !3220, metadata !DIExpression()), !dbg !3231
  %145 = icmp slt i32 %144, 0, !dbg !3351
  %146 = icmp eq i64 %132, 0
  %147 = and i1 %145, %146, !dbg !3353
  br i1 %147, label %150, label %94, !dbg !3353, !llvm.loop !3354

148:                                              ; preds = %121, %118
  %149 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3356
  store i8 0, i8* %149, align 1, !dbg !3356, !tbaa !1912
  store i8* %120, i8** %90, align 8, !dbg !3357, !tbaa !874
  call void @llvm.dbg.value(metadata i64 %119, metadata !3223, metadata !DIExpression()), !dbg !3231
  store i64 %119, i64* %91, align 8, !dbg !3358, !tbaa !3304
  br label %150, !dbg !3359

150:                                              ; preds = %86, %143, %61, %148
  %151 = phi i64 [ %96, %148 ], [ -1, %61 ], [ -1, %143 ], [ -1, %86 ], !dbg !3231
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #25, !dbg !3360
  ret i64 %151, !dbg !3360
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtokens(%struct._IO_FILE* %0, i64 %1, i8* nocapture readonly %2, i64 %3, i8*** nocapture %4, i64** %5) local_unnamed_addr #8 !dbg !3361 {
  %7 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3367, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %2, metadata !3369, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %3, metadata !3370, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8*** %4, metadata !3371, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64** %5, metadata !3372, metadata !DIExpression()), !dbg !3384
  %8 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3385
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #25, !dbg !3385
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %7, metadata !3373, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3374, metadata !DIExpression()), !dbg !3384
  %9 = icmp eq i64 %1, 0, !dbg !3387
  %10 = add i64 %1, 1, !dbg !3389
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %11, metadata !3368, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %11, metadata !3377, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %11, metadata !3390, metadata !DIExpression()) #25, !dbg !3396
  call void @llvm.dbg.value(metadata i64 8, metadata !3395, metadata !DIExpression()) #25, !dbg !3396
  %12 = icmp ugt i64 %11, 1152921504606846975, !dbg !3398
  br i1 %12, label %13, label %14, !dbg !3400

13:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3401
  unreachable, !dbg !3401

14:                                               ; preds = %6
  %15 = shl nuw nsw i64 %11, 3, !dbg !3402
  %16 = tail call noalias i8* @xmalloc(i64 %15) #25, !dbg !3403
  %17 = bitcast i8* %16 to i8**, !dbg !3404
  call void @llvm.dbg.value(metadata i8** %17, metadata !3375, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %11, metadata !3377, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %11, metadata !3390, metadata !DIExpression()) #25, !dbg !3405
  call void @llvm.dbg.value(metadata i64 8, metadata !3395, metadata !DIExpression()) #25, !dbg !3405
  %18 = tail call noalias i8* @xmalloc(i64 %15) #25, !dbg !3407
  %19 = bitcast i8* %18 to i64*, !dbg !3408
  call void @llvm.dbg.value(metadata i64* %19, metadata !3376, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 0, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3174, metadata !DIExpression()) #25, !dbg !3409
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false) #25, !dbg !3411
  %20 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %7, i64 0, i32 1
  br label %21, !dbg !3412

21:                                               ; preds = %63, %14
  %22 = phi i64 [ %11, %14 ], [ %55, %63 ], !dbg !3413
  %23 = phi i64* [ %19, %14 ], [ %56, %63 ], !dbg !3384
  %24 = phi i64 [ 0, %14 ], [ %68, %63 ], !dbg !3414
  %25 = phi i8** [ %17, %14 ], [ %57, %63 ], !dbg !3384
  call void @llvm.dbg.value(metadata i8** %25, metadata !3375, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %24, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64* %23, metadata !3376, metadata !DIExpression()), !dbg !3384
  %26 = call i64 @readtoken(%struct._IO_FILE* %0, i8* %2, i64 %3, %struct.tokenbuffer* nonnull %7), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %26, metadata !3383, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %22, metadata !3377, metadata !DIExpression()), !dbg !3384
  %27 = icmp ult i64 %24, %22, !dbg !3417
  br i1 %27, label %54, label %28, !dbg !3419

28:                                               ; preds = %21
  %29 = bitcast i8** %25 to i8*, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %29, metadata !198, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i64* undef, metadata !199, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i64 8, metadata !200, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %22, metadata !201, metadata !DIExpression()) #25, !dbg !3422
  %30 = icmp eq i8** %25, null, !dbg !3424
  br i1 %30, label %31, label %36, !dbg !3425

31:                                               ; preds = %28
  %32 = icmp eq i64 %22, 0, !dbg !3426
  br i1 %32, label %46, label %33, !dbg !3427

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %22, metadata !201, metadata !DIExpression()) #25, !dbg !3422
  %34 = icmp ugt i64 %22, 1152921504606846975, !dbg !3428
  br i1 %34, label %35, label %43, !dbg !3429

35:                                               ; preds = %33
  tail call void @xalloc_die() #27, !dbg !3430
  unreachable, !dbg !3430

36:                                               ; preds = %28
  %37 = icmp ult i64 %22, 768614336404564650, !dbg !3431
  br i1 %37, label %39, label %38, !dbg !3432

38:                                               ; preds = %36
  tail call void @xalloc_die() #27, !dbg !3433
  unreachable, !dbg !3433

39:                                               ; preds = %36
  %40 = lshr i64 %22, 1, !dbg !3434
  %41 = add nuw nsw i64 %22, 1, !dbg !3435
  %42 = add nuw nsw i64 %41, %40, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %42, metadata !201, metadata !DIExpression()) #25, !dbg !3422
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i64 [ %42, %39 ], [ %22, %33 ], !dbg !3422
  call void @llvm.dbg.value(metadata i64 %44, metadata !201, metadata !DIExpression()) #25, !dbg !3422
  %45 = shl nuw nsw i64 %44, 3, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %49, metadata !3375, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %44, metadata !3377, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64* %23, metadata !3438, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %44, metadata !3443, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i64 8, metadata !3444, metadata !DIExpression()) #25, !dbg !3445
  br label %46, !dbg !3447

46:                                               ; preds = %31, %43
  %47 = phi i64 [ %45, %43 ], [ 128, %31 ]
  %48 = phi i64 [ %44, %43 ], [ 16, %31 ]
  %49 = tail call i8* @xrealloc(i8* %29, i64 %47) #25, !dbg !3448
  %50 = bitcast i8* %49 to i8**, !dbg !3449
  %51 = bitcast i64* %23 to i8*, !dbg !3450
  %52 = tail call i8* @xrealloc(i8* %51, i64 %47) #25, !dbg !3451
  %53 = bitcast i8* %52 to i64*, !dbg !3452
  call void @llvm.dbg.value(metadata i64* %53, metadata !3376, metadata !DIExpression()), !dbg !3384
  br label %54, !dbg !3453

54:                                               ; preds = %46, %21
  %55 = phi i64 [ %22, %21 ], [ %48, %46 ], !dbg !3384
  %56 = phi i64* [ %23, %21 ], [ %53, %46 ], !dbg !3384
  %57 = phi i8** [ %25, %21 ], [ %50, %46 ], !dbg !3384
  call void @llvm.dbg.value(metadata i8** %57, metadata !3375, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64* %56, metadata !3376, metadata !DIExpression()), !dbg !3384
  %58 = icmp eq i64 %26, -1, !dbg !3454
  br i1 %58, label %69, label %59, !dbg !3456

59:                                               ; preds = %54
  %60 = add nuw i64 %26, 1, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %60, metadata !3390, metadata !DIExpression()) #25, !dbg !3458
  call void @llvm.dbg.value(metadata i64 1, metadata !3395, metadata !DIExpression()) #25, !dbg !3458
  %61 = icmp ugt i64 %26, 9223372036854775806, !dbg !3460
  br i1 %61, label %62, label %63, !dbg !3461

62:                                               ; preds = %59
  tail call void @xalloc_die() #27, !dbg !3462
  unreachable, !dbg !3462

63:                                               ; preds = %59
  %64 = tail call noalias i8* @xmalloc(i64 %60) #25, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %64, metadata !3379, metadata !DIExpression()), !dbg !3416
  %65 = getelementptr inbounds i64, i64* %56, i64 %24, !dbg !3464
  store i64 %26, i64* %65, align 8, !dbg !3465, !tbaa !1081
  %66 = load i8*, i8** %20, align 8, !dbg !3466, !tbaa !874
  call void @llvm.dbg.value(metadata i8* %64, metadata !3467, metadata !DIExpression()) #25, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %66, metadata !3476, metadata !DIExpression()) #25, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %60, metadata !3477, metadata !DIExpression()) #25, !dbg !3478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %64, i8* nonnull align 1 %66, i64 %60, i1 false) #25, !dbg !3480
  %67 = getelementptr inbounds i8*, i8** %57, i64 %24, !dbg !3481
  store i8* %64, i8** %67, align 8, !dbg !3482, !tbaa !650
  %68 = add i64 %24, 1, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %68, metadata !3378, metadata !DIExpression()), !dbg !3384
  br label %21

69:                                               ; preds = %54
  %70 = getelementptr inbounds i8*, i8** %57, i64 %24, !dbg !3484
  store i8* null, i8** %70, align 8, !dbg !3486, !tbaa !650
  %71 = getelementptr inbounds i64, i64* %56, i64 %24, !dbg !3487
  store i64 0, i64* %71, align 8, !dbg !3488, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %68, metadata !3378, metadata !DIExpression()), !dbg !3384
  %72 = load i8*, i8** %20, align 8, !dbg !3489, !tbaa !874
  tail call void @free(i8* %72) #25, !dbg !3490
  store i8** %57, i8*** %4, align 8, !dbg !3491, !tbaa !650
  %73 = icmp eq i64** %5, null, !dbg !3492
  br i1 %73, label %75, label %74, !dbg !3494

74:                                               ; preds = %69
  store i64* %56, i64** %5, align 8, !dbg !3495, !tbaa !650
  br label %77, !dbg !3496

75:                                               ; preds = %69
  %76 = bitcast i64* %56 to i8*, !dbg !3497
  tail call void @free(i8* %76) #25, !dbg !3498
  br label %77

77:                                               ; preds = %75, %74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #25, !dbg !3499
  ret i64 %24, !dbg !3500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3501 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3540, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %1, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %2, metadata !3542, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %3, metadata !3543, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8** %4, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %5, metadata !3545, metadata !DIExpression()), !dbg !3546
  %7 = icmp eq i8* %1, null, !dbg !3547
  br i1 %7, label %10, label %8, !dbg !3549

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !3550
  br label %12, !dbg !3550

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !3551
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #25, !dbg !3552
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !3552
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3553
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #25, !dbg !3554
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.95, i64 0, i64 0)) #25, !dbg !3554
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3555
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
  ], !dbg !3556

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #25, !dbg !3557
  %21 = load i8*, i8** %4, align 8, !dbg !3557, !tbaa !650
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !3557
  br label %147, !dbg !3559

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #25, !dbg !3560
  %25 = load i8*, i8** %4, align 8, !dbg !3560, !tbaa !650
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3560
  %27 = load i8*, i8** %26, align 8, !dbg !3560, !tbaa !650
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !3560
  br label %147, !dbg !3561

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #25, !dbg !3562
  %31 = load i8*, i8** %4, align 8, !dbg !3562, !tbaa !650
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3562
  %33 = load i8*, i8** %32, align 8, !dbg !3562, !tbaa !650
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3562
  %35 = load i8*, i8** %34, align 8, !dbg !3562, !tbaa !650
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !3562
  br label %147, !dbg !3563

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #25, !dbg !3564
  %39 = load i8*, i8** %4, align 8, !dbg !3564, !tbaa !650
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3564
  %41 = load i8*, i8** %40, align 8, !dbg !3564, !tbaa !650
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3564
  %43 = load i8*, i8** %42, align 8, !dbg !3564, !tbaa !650
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3564
  %45 = load i8*, i8** %44, align 8, !dbg !3564, !tbaa !650
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !3564
  br label %147, !dbg !3565

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #25, !dbg !3566
  %49 = load i8*, i8** %4, align 8, !dbg !3566, !tbaa !650
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3566
  %51 = load i8*, i8** %50, align 8, !dbg !3566, !tbaa !650
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3566
  %53 = load i8*, i8** %52, align 8, !dbg !3566, !tbaa !650
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3566
  %55 = load i8*, i8** %54, align 8, !dbg !3566, !tbaa !650
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3566
  %57 = load i8*, i8** %56, align 8, !dbg !3566, !tbaa !650
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !3566
  br label %147, !dbg !3567

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #25, !dbg !3568
  %61 = load i8*, i8** %4, align 8, !dbg !3568, !tbaa !650
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3568
  %63 = load i8*, i8** %62, align 8, !dbg !3568, !tbaa !650
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3568
  %65 = load i8*, i8** %64, align 8, !dbg !3568, !tbaa !650
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3568
  %67 = load i8*, i8** %66, align 8, !dbg !3568, !tbaa !650
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3568
  %69 = load i8*, i8** %68, align 8, !dbg !3568, !tbaa !650
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3568
  %71 = load i8*, i8** %70, align 8, !dbg !3568, !tbaa !650
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !3568
  br label %147, !dbg !3569

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #25, !dbg !3570
  %75 = load i8*, i8** %4, align 8, !dbg !3570, !tbaa !650
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3570
  %77 = load i8*, i8** %76, align 8, !dbg !3570, !tbaa !650
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3570
  %79 = load i8*, i8** %78, align 8, !dbg !3570, !tbaa !650
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3570
  %81 = load i8*, i8** %80, align 8, !dbg !3570, !tbaa !650
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3570
  %83 = load i8*, i8** %82, align 8, !dbg !3570, !tbaa !650
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3570
  %85 = load i8*, i8** %84, align 8, !dbg !3570, !tbaa !650
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3570
  %87 = load i8*, i8** %86, align 8, !dbg !3570, !tbaa !650
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !3570
  br label %147, !dbg !3571

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #25, !dbg !3572
  %91 = load i8*, i8** %4, align 8, !dbg !3572, !tbaa !650
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3572
  %93 = load i8*, i8** %92, align 8, !dbg !3572, !tbaa !650
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3572
  %95 = load i8*, i8** %94, align 8, !dbg !3572, !tbaa !650
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3572
  %97 = load i8*, i8** %96, align 8, !dbg !3572, !tbaa !650
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3572
  %99 = load i8*, i8** %98, align 8, !dbg !3572, !tbaa !650
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3572
  %101 = load i8*, i8** %100, align 8, !dbg !3572, !tbaa !650
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3572
  %103 = load i8*, i8** %102, align 8, !dbg !3572, !tbaa !650
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3572
  %105 = load i8*, i8** %104, align 8, !dbg !3572, !tbaa !650
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !3572
  br label %147, !dbg !3573

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #25, !dbg !3574
  %109 = load i8*, i8** %4, align 8, !dbg !3574, !tbaa !650
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3574
  %111 = load i8*, i8** %110, align 8, !dbg !3574, !tbaa !650
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3574
  %113 = load i8*, i8** %112, align 8, !dbg !3574, !tbaa !650
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3574
  %115 = load i8*, i8** %114, align 8, !dbg !3574, !tbaa !650
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3574
  %117 = load i8*, i8** %116, align 8, !dbg !3574, !tbaa !650
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3574
  %119 = load i8*, i8** %118, align 8, !dbg !3574, !tbaa !650
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3574
  %121 = load i8*, i8** %120, align 8, !dbg !3574, !tbaa !650
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3574
  %123 = load i8*, i8** %122, align 8, !dbg !3574, !tbaa !650
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3574
  %125 = load i8*, i8** %124, align 8, !dbg !3574, !tbaa !650
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !3574
  br label %147, !dbg !3575

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.105, i64 0, i64 0), i32 5) #25, !dbg !3576
  %129 = load i8*, i8** %4, align 8, !dbg !3576, !tbaa !650
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3576
  %131 = load i8*, i8** %130, align 8, !dbg !3576, !tbaa !650
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3576
  %133 = load i8*, i8** %132, align 8, !dbg !3576, !tbaa !650
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3576
  %135 = load i8*, i8** %134, align 8, !dbg !3576, !tbaa !650
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3576
  %137 = load i8*, i8** %136, align 8, !dbg !3576, !tbaa !650
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3576
  %139 = load i8*, i8** %138, align 8, !dbg !3576, !tbaa !650
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3576
  %141 = load i8*, i8** %140, align 8, !dbg !3576, !tbaa !650
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3576
  %143 = load i8*, i8** %142, align 8, !dbg !3576, !tbaa !650
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3576
  %145 = load i8*, i8** %144, align 8, !dbg !3576, !tbaa !650
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !3576
  br label %147, !dbg !3577

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3579 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3583, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* %3, metadata !3586, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8** %4, metadata !3587, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 0, metadata !3588, metadata !DIExpression()), !dbg !3589
  br label %6, !dbg !3590

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3592
  call void @llvm.dbg.value(metadata i64 %7, metadata !3588, metadata !DIExpression()), !dbg !3589
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3593
  %9 = load i8*, i8** %8, align 8, !dbg !3593, !tbaa !650
  %10 = icmp eq i8* %9, null, !dbg !3595
  %11 = add i64 %7, 1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %11, metadata !3588, metadata !DIExpression()), !dbg !3589
  br i1 %10, label %12, label %6, !dbg !3595, !llvm.loop !3597

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3599
  ret void, !dbg !3600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3601 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3612, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %1, metadata !3613, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %2, metadata !3614, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %3, metadata !3615, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3616, metadata !DIExpression()), !dbg !3620
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3621
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 0, metadata !3617, metadata !DIExpression()), !dbg !3620
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3617, metadata !DIExpression()), !dbg !3620
  %11 = load i32, i32* %8, align 8, !dbg !3623
  %12 = icmp ult i32 %11, 41, !dbg !3623
  br i1 %12, label %13, label %18, !dbg !3623

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3623
  %15 = zext i32 %11 to i64, !dbg !3623
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3623
  %17 = add nuw nsw i32 %11, 8, !dbg !3623
  store i32 %17, i32* %8, align 8, !dbg !3623
  br label %21, !dbg !3623

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3623
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3623
  store i8* %20, i8** %9, align 8, !dbg !3623
  br label %21, !dbg !3623

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3623
  %25 = load i8*, i8** %24, align 8, !dbg !3623
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3626
  store i8* %25, i8** %26, align 16, !dbg !3627, !tbaa !650
  %27 = icmp eq i8* %25, null, !dbg !3628
  br i1 %27, label %30, label %28, !dbg !3629

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 1, metadata !3617, metadata !DIExpression()), !dbg !3620
  %29 = icmp ult i32 %22, 41, !dbg !3623
  br i1 %29, label %35, label %32, !dbg !3623

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3630
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3632
  ret void, !dbg !3632

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3623
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3623
  store i8* %34, i8** %9, align 8, !dbg !3623
  br label %40, !dbg !3623

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3623
  %37 = zext i32 %22 to i64, !dbg !3623
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3623
  %39 = add nuw nsw i32 %22, 8, !dbg !3623
  store i32 %39, i32* %8, align 8, !dbg !3623
  br label %40, !dbg !3623

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3623
  %44 = load i8*, i8** %43, align 8, !dbg !3623
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3626
  store i8* %44, i8** %45, align 8, !dbg !3627, !tbaa !650
  %46 = icmp eq i8* %44, null, !dbg !3628
  br i1 %46, label %30, label %47, !dbg !3629

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 2, metadata !3617, metadata !DIExpression()), !dbg !3620
  %48 = icmp ult i32 %41, 41, !dbg !3623
  br i1 %48, label %52, label %49, !dbg !3623

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3623
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3623
  store i8* %51, i8** %9, align 8, !dbg !3623
  br label %57, !dbg !3623

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3623
  %54 = zext i32 %41 to i64, !dbg !3623
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3623
  %56 = add nuw nsw i32 %41, 8, !dbg !3623
  store i32 %56, i32* %8, align 8, !dbg !3623
  br label %57, !dbg !3623

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3623
  %61 = load i8*, i8** %60, align 8, !dbg !3623
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3626
  store i8* %61, i8** %62, align 16, !dbg !3627, !tbaa !650
  %63 = icmp eq i8* %61, null, !dbg !3628
  br i1 %63, label %30, label %64, !dbg !3629

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 3, metadata !3617, metadata !DIExpression()), !dbg !3620
  %65 = icmp ult i32 %58, 41, !dbg !3623
  br i1 %65, label %69, label %66, !dbg !3623

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3623
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3623
  store i8* %68, i8** %9, align 8, !dbg !3623
  br label %74, !dbg !3623

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3623
  %71 = zext i32 %58 to i64, !dbg !3623
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3623
  %73 = add nuw nsw i32 %58, 8, !dbg !3623
  store i32 %73, i32* %8, align 8, !dbg !3623
  br label %74, !dbg !3623

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3623
  %78 = load i8*, i8** %77, align 8, !dbg !3623
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3626
  store i8* %78, i8** %79, align 8, !dbg !3627, !tbaa !650
  %80 = icmp eq i8* %78, null, !dbg !3628
  br i1 %80, label %30, label %81, !dbg !3629

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 4, metadata !3617, metadata !DIExpression()), !dbg !3620
  %82 = icmp ult i32 %75, 41, !dbg !3623
  br i1 %82, label %86, label %83, !dbg !3623

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3623
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3623
  store i8* %85, i8** %9, align 8, !dbg !3623
  br label %91, !dbg !3623

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3623
  %88 = zext i32 %75 to i64, !dbg !3623
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3623
  %90 = add nuw nsw i32 %75, 8, !dbg !3623
  store i32 %90, i32* %8, align 8, !dbg !3623
  br label %91, !dbg !3623

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3623
  %95 = load i8*, i8** %94, align 8, !dbg !3623
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3626
  store i8* %95, i8** %96, align 16, !dbg !3627, !tbaa !650
  %97 = icmp eq i8* %95, null, !dbg !3628
  br i1 %97, label %30, label %98, !dbg !3629

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 5, metadata !3617, metadata !DIExpression()), !dbg !3620
  %99 = icmp ult i32 %92, 41, !dbg !3623
  br i1 %99, label %103, label %100, !dbg !3623

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3623
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3623
  store i8* %102, i8** %9, align 8, !dbg !3623
  br label %108, !dbg !3623

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3623
  %105 = zext i32 %92 to i64, !dbg !3623
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3623
  %107 = add nuw nsw i32 %92, 8, !dbg !3623
  store i32 %107, i32* %8, align 8, !dbg !3623
  br label %108, !dbg !3623

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3623
  %111 = load i8*, i8** %110, align 8, !dbg !3623
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3626
  store i8* %111, i8** %112, align 8, !dbg !3627, !tbaa !650
  %113 = icmp eq i8* %111, null, !dbg !3628
  br i1 %113, label %30, label %114, !dbg !3629

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3617, metadata !DIExpression()), !dbg !3620
  %115 = load i8*, i8** %9, align 8, !dbg !3623
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3623
  store i8* %116, i8** %9, align 8, !dbg !3623
  %117 = bitcast i8* %115 to i8**, !dbg !3623
  %118 = load i8*, i8** %117, align 8, !dbg !3623
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3626
  store i8* %118, i8** %119, align 16, !dbg !3627, !tbaa !650
  %120 = icmp eq i8* %118, null, !dbg !3628
  br i1 %120, label %30, label %121, !dbg !3629

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3617, metadata !DIExpression()), !dbg !3620
  %122 = load i8*, i8** %9, align 8, !dbg !3623
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3623
  store i8* %123, i8** %9, align 8, !dbg !3623
  %124 = bitcast i8* %122 to i8**, !dbg !3623
  %125 = load i8*, i8** %124, align 8, !dbg !3623
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3626
  store i8* %125, i8** %126, align 8, !dbg !3627, !tbaa !650
  %127 = icmp eq i8* %125, null, !dbg !3628
  br i1 %127, label %30, label %128, !dbg !3629

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3617, metadata !DIExpression()), !dbg !3620
  %129 = load i8*, i8** %9, align 8, !dbg !3623
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3623
  store i8* %130, i8** %9, align 8, !dbg !3623
  %131 = bitcast i8* %129 to i8**, !dbg !3623
  %132 = load i8*, i8** %131, align 8, !dbg !3623
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3626
  store i8* %132, i8** %133, align 16, !dbg !3627, !tbaa !650
  %134 = icmp eq i8* %132, null, !dbg !3628
  br i1 %134, label %30, label %135, !dbg !3629

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3617, metadata !DIExpression()), !dbg !3620
  %136 = load i8*, i8** %9, align 8, !dbg !3623
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3623
  store i8* %137, i8** %9, align 8, !dbg !3623
  %138 = bitcast i8* %136 to i8**, !dbg !3623
  %139 = load i8*, i8** %138, align 8, !dbg !3623
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3626
  store i8* %139, i8** %140, align 8, !dbg !3627, !tbaa !650
  %141 = icmp eq i8* %139, null, !dbg !3628
  %142 = select i1 %141, i64 9, i64 10, !dbg !3629
  br label %30, !dbg !3629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3633 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3637, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %1, metadata !3638, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %2, metadata !3639, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %3, metadata !3640, metadata !DIExpression()), !dbg !3646
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3647
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3647
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3641, metadata !DIExpression()), !dbg !3648
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3649
  call void @llvm.va_start(i8* nonnull %6), !dbg !3649
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3650
  call void @llvm.va_end(i8* nonnull %6), !dbg !3651
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3652
  ret void, !dbg !3652
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3653 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3654, !tbaa !650
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3654
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #25, !dbg !3655
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.109, i64 0, i64 0)) #25, !dbg !3655
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.110, i64 0, i64 0), i32 5) #25, !dbg !3656
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.112, i64 0, i64 0)) #25, !dbg !3656
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.113, i64 0, i64 0), i32 5) #25, !dbg !3657
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.114, i64 0, i64 0)) #25, !dbg !3657
  ret void, !dbg !3658
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3659 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3663
  %3 = udiv i64 9223372036854775807, %1, !dbg !3664
  %4 = icmp ult i64 %3, %0, !dbg !3664
  br i1 %4, label %5, label %6, !dbg !3666

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3667
  unreachable, !dbg !3667

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %7, metadata !3669, metadata !DIExpression()) #25, !dbg !3675
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %8, metadata !3674, metadata !DIExpression()) #25, !dbg !3675
  %9 = icmp eq i8* %8, null, !dbg !3678
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3680
  br i1 %11, label %12, label %13, !dbg !3680

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3681
  unreachable, !dbg !3681

13:                                               ; preds = %6
  ret i8* %8, !dbg !3682
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3670 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3669, metadata !DIExpression()), !dbg !3683
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %2, metadata !3674, metadata !DIExpression()), !dbg !3683
  %3 = icmp eq i8* %2, null, !dbg !3685
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3686

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3687
  unreachable, !dbg !3687

7:                                                ; preds = %1
  ret i8* %2, !dbg !3688
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %2, metadata !3693, metadata !DIExpression()), !dbg !3694
  %4 = udiv i64 9223372036854775807, %2, !dbg !3695
  %5 = icmp ult i64 %4, %1, !dbg !3695
  br i1 %5, label %6, label %7, !dbg !3697

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !3698
  unreachable, !dbg !3698

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()) #25, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %8, metadata !3705, metadata !DIExpression()) #25, !dbg !3706
  %9 = icmp eq i64 %8, 0, !dbg !3708
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3710
  br i1 %11, label %12, label %13, !dbg !3710

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !3711
  br label %19, !dbg !3713

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %14, metadata !3700, metadata !DIExpression()) #25, !dbg !3706
  %15 = icmp eq i8* %14, null, !dbg !3715
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3717
  br i1 %17, label %18, label %19, !dbg !3717

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3718
  unreachable, !dbg !3718

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3706
  ret i8* %20, !dbg !3719
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3701 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3720
  %3 = icmp eq i64 %1, 0, !dbg !3721
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3722

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !3723
  br label %13, !dbg !3724

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %8, metadata !3700, metadata !DIExpression()), !dbg !3720
  %9 = icmp eq i8* %8, null, !dbg !3726
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3727
  br i1 %11, label %12, label %13, !dbg !3727

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3728
  unreachable, !dbg !3728

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3720
  ret i8* %14, !dbg !3729
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !220, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64* %1, metadata !221, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %2, metadata !222, metadata !DIExpression()), !dbg !3730
  %4 = load i64, i64* %1, align 8, !dbg !3731, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %4, metadata !223, metadata !DIExpression()), !dbg !3730
  %5 = icmp eq i8* %0, null, !dbg !3732
  br i1 %5, label %6, label %20, !dbg !3734

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3735
  br i1 %7, label %8, label %13, !dbg !3738

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %9, metadata !223, metadata !DIExpression()), !dbg !3730
  %10 = icmp ugt i64 %2, 128, !dbg !3741
  %11 = zext i1 %10 to i64, !dbg !3741
  %12 = add nuw nsw i64 %9, %11, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %12, metadata !223, metadata !DIExpression()), !dbg !3730
  br label %13, !dbg !3743

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3730
  call void @llvm.dbg.value(metadata i64 %14, metadata !223, metadata !DIExpression()), !dbg !3730
  %15 = udiv i64 9223372036854775807, %2, !dbg !3744
  %16 = icmp ult i64 %15, %14, !dbg !3744
  br i1 %16, label %19, label %17, !dbg !3746

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !223, metadata !DIExpression()), !dbg !3730
  store i64 %14, i64* %1, align 8, !dbg !3747, !tbaa !1081
  %18 = mul i64 %14, %2, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()) #25, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %28, metadata !3705, metadata !DIExpression()) #25, !dbg !3749
  br label %31, !dbg !3751

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3752
  unreachable, !dbg !3752

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3753
  %22 = icmp ugt i64 %21, %4, !dbg !3756
  br i1 %22, label %24, label %23, !dbg !3757

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !3758
  unreachable, !dbg !3758

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3759
  %26 = add nuw i64 %4, 1, !dbg !3760
  %27 = add i64 %26, %25, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %27, metadata !223, metadata !DIExpression()), !dbg !3730
  store i64 %27, i64* %1, align 8, !dbg !3747, !tbaa !1081
  %28 = mul i64 %27, %2, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()) #25, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %28, metadata !3705, metadata !DIExpression()) #25, !dbg !3749
  %29 = icmp eq i64 %28, 0, !dbg !3762
  br i1 %29, label %30, label %31, !dbg !3751

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !3763
  br label %38, !dbg !3764

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !3765
  call void @llvm.dbg.value(metadata i8* %33, metadata !3700, metadata !DIExpression()) #25, !dbg !3749
  %34 = icmp eq i8* %33, null, !dbg !3766
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3767
  br i1 %36, label %37, label %38, !dbg !3767

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !3768
  unreachable, !dbg !3768

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3749
  ret i8* %39, !dbg !3769
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3770 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %0, metadata !3669, metadata !DIExpression()) #25, !dbg !3774
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %2, metadata !3674, metadata !DIExpression()) #25, !dbg !3774
  %3 = icmp eq i8* %2, null, !dbg !3777
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3778
  br i1 %5, label %6, label %7, !dbg !3778

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3779
  unreachable, !dbg !3779

7:                                                ; preds = %1
  ret i8* %2, !dbg !3780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64* %1, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i8* %0, metadata !220, metadata !DIExpression()) #25, !dbg !3788
  call void @llvm.dbg.value(metadata i64* %1, metadata !221, metadata !DIExpression()) #25, !dbg !3788
  call void @llvm.dbg.value(metadata i64 1, metadata !222, metadata !DIExpression()) #25, !dbg !3788
  %3 = load i64, i64* %1, align 8, !dbg !3790, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %3, metadata !223, metadata !DIExpression()) #25, !dbg !3788
  %4 = icmp eq i8* %0, null, !dbg !3791
  br i1 %4, label %5, label %10, !dbg !3792

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3793
  br i1 %6, label %17, label %7, !dbg !3794

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !223, metadata !DIExpression()) #25, !dbg !3788
  %8 = icmp slt i64 %3, 0, !dbg !3795
  br i1 %8, label %9, label %17, !dbg !3796

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3797
  unreachable, !dbg !3797

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3798
  br i1 %11, label %13, label %12, !dbg !3799

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3800
  unreachable, !dbg !3800

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3801
  %15 = add nuw nsw i64 %3, 1, !dbg !3802
  %16 = add nuw nsw i64 %15, %14, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %16, metadata !223, metadata !DIExpression()) #25, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()) #25, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %16, metadata !3705, metadata !DIExpression()) #25, !dbg !3804
  br label %17, !dbg !3806

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3807
  store i64 %18, i64* %1, align 8, !dbg !3807, !tbaa !1081
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3808
  call void @llvm.dbg.value(metadata i8* %19, metadata !3700, metadata !DIExpression()) #25, !dbg !3804
  %20 = icmp eq i8* %19, null, !dbg !3809
  br i1 %20, label %21, label %22, !dbg !3810

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3811
  unreachable, !dbg !3811

22:                                               ; preds = %17
  ret i8* %19, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3813 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 %0, metadata !3817, metadata !DIExpression()) #25, !dbg !3822
  call void @llvm.dbg.value(metadata i64 1, metadata !3820, metadata !DIExpression()) #25, !dbg !3822
  %2 = icmp slt i64 %0, 0, !dbg !3824
  br i1 %2, label %6, label %3, !dbg !3826

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3827
  call void @llvm.dbg.value(metadata i8* %4, metadata !3821, metadata !DIExpression()) #25, !dbg !3822
  %5 = icmp eq i8* %4, null, !dbg !3828
  br i1 %5, label %6, label %7, !dbg !3829

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3830
  unreachable, !dbg !3830

7:                                                ; preds = %3
  ret i8* %4, !dbg !3831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3818 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3817, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i64 %1, metadata !3820, metadata !DIExpression()), !dbg !3832
  %3 = udiv i64 9223372036854775807, %1, !dbg !3833
  %4 = icmp ult i64 %3, %0, !dbg !3833
  br i1 %4, label %8, label %5, !dbg !3834

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %6, metadata !3821, metadata !DIExpression()), !dbg !3832
  %7 = icmp eq i8* %6, null, !dbg !3836
  br i1 %7, label %8, label %9, !dbg !3837

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3838
  unreachable, !dbg !3838

9:                                                ; preds = %5
  ret i8* %6, !dbg !3839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3840 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3844, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3669, metadata !DIExpression()) #25, !dbg !3847
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %3, metadata !3674, metadata !DIExpression()) #25, !dbg !3847
  %4 = icmp eq i8* %3, null, !dbg !3850
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3851
  br i1 %6, label %7, label %8, !dbg !3851

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3852
  unreachable, !dbg !3852

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3853, metadata !DIExpression()) #25, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %0, metadata !3856, metadata !DIExpression()) #25, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()) #25, !dbg !3858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3860
  ret i8* %3, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3864, metadata !DIExpression()), !dbg !3865
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3866
  %3 = add i64 %2, 1, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %0, metadata !3844, metadata !DIExpression()) #25, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %3, metadata !3845, metadata !DIExpression()) #25, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %3, metadata !3669, metadata !DIExpression()) #25, !dbg !3870
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %4, metadata !3674, metadata !DIExpression()) #25, !dbg !3870
  %5 = icmp eq i8* %4, null, !dbg !3873
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3874
  br i1 %7, label %8, label %9, !dbg !3874

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3875
  unreachable, !dbg !3875

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3853, metadata !DIExpression()) #25, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %0, metadata !3856, metadata !DIExpression()) #25, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %3, metadata !3857, metadata !DIExpression()) #25, !dbg !3876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3878
  ret i8* %4, !dbg !3879
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3880 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3881, !tbaa !800
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.127, i64 0, i64 0), i32 5) #25, !dbg !3882
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* %2) #25, !dbg !3883
  tail call void @abort() #27, !dbg !3884
  unreachable, !dbg !3884
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3885 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3887, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3893
  %3 = icmp eq i64 %0, 0, !dbg !3894
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3895
  br i1 %5, label %11, label %6, !dbg !3895

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3890, metadata !DIExpression()), !dbg !3896
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3897
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3897
  br i1 %8, label %9, label %11, !dbg !3899

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3900
  store i32 12, i32* %10, align 4, !dbg !3902, !tbaa !800
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3887, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %12, metadata !3888, metadata !DIExpression()), !dbg !3893
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %14, metadata !3889, metadata !DIExpression()), !dbg !3893
  br label %15, !dbg !3904

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3893
  ret i8* %16, !dbg !3905
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3906 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3944, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3947, metadata !DIExpression()), !dbg !3948
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %2, metadata !3946, metadata !DIExpression()), !dbg !3948
  %3 = icmp slt i32 %2, 0, !dbg !3950
  br i1 %3, label %4, label %6, !dbg !3952

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3953
  br label %24, !dbg !3954

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3955
  %8 = icmp eq i32 %7, 0, !dbg !3955
  br i1 %8, label %13, label %9, !dbg !3957

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3958
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3959
  %12 = icmp eq i64 %11, -1, !dbg !3960
  br i1 %12, label %16, label %13, !dbg !3961

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3962
  %15 = icmp eq i32 %14, 0, !dbg !3962
  br i1 %15, label %16, label %18, !dbg !3963

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3945, metadata !DIExpression()), !dbg !3948
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3964
  call void @llvm.dbg.value(metadata i32 %21, metadata !3947, metadata !DIExpression()), !dbg !3948
  br label %24, !dbg !3965

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3966
  %20 = load i32, i32* %19, align 4, !dbg !3966, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %20, metadata !3945, metadata !DIExpression()), !dbg !3948
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3964
  call void @llvm.dbg.value(metadata i32 %21, metadata !3947, metadata !DIExpression()), !dbg !3948
  %22 = icmp eq i32 %20, 0, !dbg !3967
  br i1 %22, label %24, label %23, !dbg !3965

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3969, !tbaa !800
  call void @llvm.dbg.value(metadata i32 -1, metadata !3947, metadata !DIExpression()), !dbg !3948
  br label %24, !dbg !3971

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3948
  ret i32 %25, !dbg !3972
}

; Function Attrs: nofree nounwind
declare !dbg !3973 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3976 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3979 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4017, metadata !DIExpression()), !dbg !4018
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4019
  br i1 %2, label %6, label %3, !dbg !4021

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4022
  %5 = icmp eq i32 %4, 0, !dbg !4022
  br i1 %5, label %6, label %8, !dbg !4023

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4024
  br label %17, !dbg !4025

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4026, metadata !DIExpression()) #25, !dbg !4031
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4033
  %10 = load i32, i32* %9, align 8, !dbg !4033, !tbaa !4035
  %11 = and i32 %10, 256, !dbg !4036
  %12 = icmp eq i32 %11, 0, !dbg !4036
  br i1 %12, label %15, label %13, !dbg !4037

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !4038
  br label %15, !dbg !4038

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4039
  br label %17, !dbg !4040

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4018
  ret i32 %18, !dbg !4041
}

; Function Attrs: nofree nounwind
declare !dbg !4042 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4045 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4083, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %1, metadata !4084, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %2, metadata !4085, metadata !DIExpression()), !dbg !4089
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4090
  %5 = load i8*, i8** %4, align 8, !dbg !4090, !tbaa !3277
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4091
  %7 = load i8*, i8** %6, align 8, !dbg !4091, !tbaa !3275
  %8 = icmp eq i8* %5, %7, !dbg !4092
  br i1 %8, label %9, label %28, !dbg !4093

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4094
  %11 = load i8*, i8** %10, align 8, !dbg !4094, !tbaa !4095
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4096
  %13 = load i8*, i8** %12, align 8, !dbg !4096, !tbaa !4097
  %14 = icmp eq i8* %11, %13, !dbg !4098
  br i1 %14, label %15, label %28, !dbg !4099

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4100
  %17 = load i8*, i8** %16, align 8, !dbg !4100, !tbaa !4101
  %18 = icmp eq i8* %17, null, !dbg !4102
  br i1 %18, label %19, label %28, !dbg !4103

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4104
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %21, metadata !4086, metadata !DIExpression()), !dbg !4106
  %22 = icmp eq i64 %21, -1, !dbg !4107
  br i1 %22, label %30, label %23, !dbg !4109

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4110
  %25 = load i32, i32* %24, align 8, !dbg !4111, !tbaa !4035
  %26 = and i32 %25, -17, !dbg !4111
  store i32 %26, i32* %24, align 8, !dbg !4111, !tbaa !4035
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4112
  store i64 %21, i64* %27, align 8, !dbg !4113, !tbaa !4114
  br label %30, !dbg !4115

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4116
  br label %30, !dbg !4117

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4089
  ret i32 %31, !dbg !4118
}

; Function Attrs: nofree nounwind
declare !dbg !4119 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4122 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4138, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i8* %1, metadata !4139, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %2, metadata !4140, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4141, metadata !DIExpression()), !dbg !4147
  %6 = bitcast i32* %5 to i8*, !dbg !4148
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4148
  %7 = icmp eq i32* %0, null, !dbg !4149
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4151
  call void @llvm.dbg.value(metadata i32* %8, metadata !4138, metadata !DIExpression()), !dbg !4147
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %9, metadata !4142, metadata !DIExpression()), !dbg !4147
  %10 = icmp ugt i64 %9, -3, !dbg !4153
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4154
  br i1 %12, label %13, label %18, !dbg !4154

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !4155
  br i1 %14, label %18, label %15, !dbg !4156

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4157, !tbaa !1912
  call void @llvm.dbg.value(metadata i8 %16, metadata !4144, metadata !DIExpression()), !dbg !4158
  %17 = zext i8 %16 to i32, !dbg !4159
  store i32 %17, i32* %8, align 4, !dbg !4160, !tbaa !800
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4161
  ret i64 %19, !dbg !4161
}

; Function Attrs: nounwind
declare !dbg !4162 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4166 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4204, metadata !DIExpression()), !dbg !4209
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !4210
  call void @llvm.dbg.value(metadata i1 undef, metadata !4205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4211, metadata !DIExpression()), !dbg !4214
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4216
  %4 = load i32, i32* %3, align 8, !dbg !4216, !tbaa !4035
  %5 = and i32 %4, 32, !dbg !4217
  %6 = icmp eq i32 %5, 0, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %6, metadata !4207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !4218
  %8 = icmp eq i32 %7, 0, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %8, metadata !4208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  br i1 %6, label %9, label %19, !dbg !4220

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4222
  call void @llvm.dbg.value(metadata i1 %10, metadata !4205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %11 = or i1 %10, %8, !dbg !4223
  %12 = xor i1 %8, true, !dbg !4223
  %13 = sext i1 %12 to i32, !dbg !4223
  br i1 %11, label %22, label %14, !dbg !4223

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !4224
  %16 = load i32, i32* %15, align 4, !dbg !4224, !tbaa !800
  %17 = icmp ne i32 %16, 9, !dbg !4225
  %18 = sext i1 %17 to i32, !dbg !4226
  br label %22, !dbg !4226

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4227

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !4229
  store i32 0, i32* %21, align 4, !dbg !4231, !tbaa !800
  br label %22, !dbg !4229

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4209
  ret i32 %23, !dbg !4232
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4233 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4240
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4241
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4241
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4236, metadata !DIExpression()), !dbg !4242
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !4243
  %5 = icmp eq i32 %4, 0, !dbg !4243
  br i1 %5, label %6, label %13, !dbg !4245

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4246
  %8 = load i16, i16* %7, align 16, !dbg !4246
  %9 = icmp eq i16 %8, 67, !dbg !4246
  br i1 %9, label %13, label %10, !dbg !4247

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !4248
  %12 = icmp ne i32 %11, 0, !dbg !4249
  br label %13, !dbg !4247

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4240
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4250
  ret i1 %14, !dbg !4250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4251 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %1, metadata !4255, metadata !DIExpression()), !dbg !4257
  %2 = icmp eq i8* %1, null, !dbg !4258
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), i8* %1, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %3, metadata !4255, metadata !DIExpression()), !dbg !4257
  %4 = load i8, i8* %3, align 1, !dbg !4261, !tbaa !1912
  %5 = icmp eq i8 %4, 0, !dbg !4265
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i8* %3, !dbg !4266
  call void @llvm.dbg.value(metadata i8* %6, metadata !4255, metadata !DIExpression()), !dbg !4257
  ret i8* %6, !dbg !4267
}

; Function Attrs: nounwind
declare !dbg !4268 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4275, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i8* %1, metadata !4276, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %2, metadata !4277, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i32 %0, metadata !4279, metadata !DIExpression()) #25, !dbg !4288
  call void @llvm.dbg.value(metadata i8* %1, metadata !4282, metadata !DIExpression()) #25, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %2, metadata !4283, metadata !DIExpression()) #25, !dbg !4288
  call void @llvm.dbg.value(metadata i32 %0, metadata !4290, metadata !DIExpression()) #25, !dbg !4296
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4298
  call void @llvm.dbg.value(metadata i8* %4, metadata !4295, metadata !DIExpression()) #25, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %4, metadata !4284, metadata !DIExpression()) #25, !dbg !4288
  %5 = icmp eq i8* %4, null, !dbg !4299
  br i1 %5, label %6, label %9, !dbg !4300

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4301
  br i1 %7, label %19, label %8, !dbg !4304

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4305, !tbaa !1912
  br label %19, !dbg !4306

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %10, metadata !4285, metadata !DIExpression()) #25, !dbg !4308
  %11 = icmp ult i64 %10, %2, !dbg !4309
  br i1 %11, label %12, label %14, !dbg !4311

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %1, metadata !4314, metadata !DIExpression()) #25, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %4, metadata !4317, metadata !DIExpression()) #25, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %13, metadata !4318, metadata !DIExpression()) #25, !dbg !4319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !4321
  br label %19, !dbg !4322

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4323
  br i1 %15, label %19, label %16, !dbg !4326

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %1, metadata !4314, metadata !DIExpression()) #25, !dbg !4329
  call void @llvm.dbg.value(metadata i8* %4, metadata !4317, metadata !DIExpression()) #25, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %17, metadata !4318, metadata !DIExpression()) #25, !dbg !4329
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !4331
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4332
  store i8 0, i8* %18, align 1, !dbg !4333, !tbaa !1912
  br label %19, !dbg !4334

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4335
  ret i32 %20, !dbg !4336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %0, metadata !4290, metadata !DIExpression()) #25, !dbg !4341
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4343
  call void @llvm.dbg.value(metadata i8* %2, metadata !4295, metadata !DIExpression()) #25, !dbg !4341
  ret i8* %2, !dbg !4344
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
attributes #9 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !62, !68, !76, !180, !183, !82, !99, !106, !185, !207, !174, !214, !225, !227, !229, !231, !233, !235, !238, !240, !242, !631}
!llvm.ident = !{!633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633, !633}
!llvm.module.flags = !{!634, !635, !636, !637, !638}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n_strings", scope: !2, file: !3, line: 73, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tsort.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
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
!29 = !{!30, !33, !34}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!0, !38, !56, !58}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 64, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 53, size: 448, elements: !42)
!42 = !{!43, !44, !45, !46, !48, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !41, file: !3, line: 55, baseType: !30, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !41, file: !3, line: 56, baseType: !40, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !41, file: !3, line: 56, baseType: !40, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !41, file: !3, line: 57, baseType: !47, size: 32, offset: 192)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !41, file: !3, line: 58, baseType: !34, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !41, file: !3, line: 59, baseType: !40, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !41, file: !3, line: 60, baseType: !51, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 46, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !52, file: !3, line: 48, baseType: !40, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !3, line: 49, baseType: !51, size: 64, offset: 64)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "zeros", scope: !2, file: !3, line: 67, type: !40, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "loop", scope: !2, file: !3, line: 70, type: !40, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "Version", scope: !62, file: !63, line: 2, type: !30, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !65, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!64 = !{}
!65 = !{!60}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "file_name", scope: !68, file: !69, line: 46, type: !30, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !70, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!66, !71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !68, file: !69, line: 56, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "exit_failure", scope: !76, file: !77, line: 24, type: !79, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !78, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !{!74}
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "long_options", scope: !82, file: !83, line: 34, type: !85, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!84 = !{!80}
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 768, elements: !95)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !88, line: 50, size: 256, elements: !89)
!88 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!89 = !{!90, !91, !92, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 52, baseType: !30, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !87, file: !88, line: 55, baseType: !47, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !87, file: !88, line: 56, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !88, line: 57, baseType: !47, size: 32, offset: 192)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "program_name", scope: !99, file: !100, line: 33, type: !30, isLocal: false, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !101, globals: !103, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!101 = !{!33, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!103 = !{!97}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !106, file: !107, line: 85, type: !168, isLocal: false, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !129, globals: !131, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!108 = !{!5, !109, !114}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 46, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!117 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!125 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!128 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!129 = !{!47, !130, !34, !102}
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !{!104, !132, !138, !150, !152, !157, !164, !166}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !106, file: !107, line: 101, type: !134, isLocal: false, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!136 = !{!137}
!137 = !DISubrange(count: 10)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !106, file: !107, line: 1052, type: !140, isLocal: false, isDefinition: true)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !107, line: 65, size: 448, elements: !141)
!141 = !{!142, !143, !144, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !140, file: !107, line: 68, baseType: !5, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !107, line: 71, baseType: !47, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !140, file: !107, line: 75, baseType: !145, size: 256, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !140, file: !107, line: 78, baseType: !30, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !140, file: !107, line: 81, baseType: !30, size: 64, offset: 384)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !106, file: !107, line: 116, type: !140, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slot0", scope: !106, file: !107, line: 842, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slotvec", scope: !106, file: !107, line: 845, type: !159, isLocal: true, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !107, line: 834, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !160, file: !107, line: 836, baseType: !34, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !107, line: 837, baseType: !102, size: 64, offset: 64)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nslots", scope: !106, file: !107, line: 843, type: !47, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "slotvec0", scope: !106, file: !107, line: 844, type: !160, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 704, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!170 = !{!171}
!171 = !DISubrange(count: 11)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !174, file: !175, line: 26, type: !177, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, globals: !176, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !{!172}
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 47)
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !182, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = !{!20}
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !204, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/readtokens.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!188, !191}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 51, baseType: !7, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIEnumerator(name: "bits_per_word", value: 64, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !193, file: !192, line: 186, baseType: !7, size: 32, elements: !202)
!192 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = distinct !DISubprogram(name: "x2nrealloc", scope: !192, file: !192, line: 174, type: !194, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !197)
!194 = !DISubroutineType(types: !195)
!195 = !{!33, !33, !196, !34}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(name: "p", arg: 1, scope: !193, file: !192, line: 174, type: !33)
!199 = !DILocalVariable(name: "pn", arg: 2, scope: !193, file: !192, line: 174, type: !196)
!200 = !DILocalVariable(name: "s", arg: 3, scope: !193, file: !192, line: 174, type: !34)
!201 = !DILocalVariable(name: "n", scope: !193, file: !192, line: 176, type: !34)
!202 = !{!203}
!203 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!204 = !{!34, !33, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!210}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 40, baseType: !7, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!213 = !{!33}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216, retainedTypes: !224, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = !{!217}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !218, file: !192, line: 186, baseType: !7, size: 32, elements: !202)
!218 = distinct !DISubprogram(name: "x2nrealloc", scope: !192, file: !192, line: 174, type: !194, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !219)
!219 = !{!220, !221, !222, !223}
!220 = !DILocalVariable(name: "p", arg: 1, scope: !218, file: !192, line: 174, type: !33)
!221 = !DILocalVariable(name: "pn", arg: 2, scope: !218, file: !192, line: 174, type: !196)
!222 = !DILocalVariable(name: "s", arg: 3, scope: !218, file: !192, line: 174, type: !34)
!223 = !DILocalVariable(name: "n", scope: !218, file: !192, line: 176, type: !34)
!224 = !{!34, !102, !33}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !237, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = !{!34}
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !244, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!244 = !{!245}
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 41, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!248 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!249 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!250 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!251 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!252 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!253 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!254 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!255 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!256 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!257 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!258 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!259 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!260 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!261 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!268 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!269 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!270 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!271 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!272 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!273 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!280 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!281 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!282 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!283 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!284 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!285 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!286 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!287 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!288 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!289 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!290 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!291 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!292 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!293 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!294 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!295 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!296 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!297 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!356 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!365 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!366 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!367 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!368 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!369 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!370 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!443 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!517 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!518 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!519 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!520 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!521 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!522 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!523 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!524 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!525 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!526 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!527 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!528 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!529 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!530 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!532 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!533 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!534 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!535 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!536 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!537 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!563 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!564 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!565 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!566 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!567 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!572 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!573 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!574 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!575 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!633 = !{!"clang version 12.0.1"}
!634 = !{i32 7, !"Dwarf Version", i32 4}
!635 = !{i32 2, !"Debug Info Version", i32 3}
!636 = !{i32 1, !"wchar_size", i32 4}
!637 = !{i32 7, !"PIC Level", i32 2}
!638 = !{i32 7, !"PIE Level", i32 2}
!639 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 76, type: !640, scopeLine: 77, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !47}
!642 = !{!643}
!643 = !DILocalVariable(name: "status", arg: 1, scope: !639, file: !3, line: 76, type: !47)
!644 = !DILocation(line: 0, scope: !639)
!645 = !DILocation(line: 78, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !639, file: !3, line: 78, column: 7)
!647 = !DILocation(line: 78, column: 7, scope: !639)
!648 = !DILocation(line: 79, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 79, column: 5)
!650 = !{!651, !651, i64 0}
!651 = !{!"any pointer", !652, i64 0}
!652 = !{!"omnipotent char", !653, i64 0}
!653 = !{!"Simple C/C++ TBAA"}
!654 = !DILocation(line: 82, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !646, file: !3, line: 81, column: 5)
!656 = !DILocation(line: 583, column: 3, scope: !657, inlinedAt: !661)
!657 = distinct !DISubprogram(name: "emit_stdin_note", scope: !658, file: !658, line: 581, type: !659, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!658 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!659 = !DISubroutineType(types: !660)
!660 = !{null}
!661 = distinct !DILocation(line: 87, column: 7, scope: !655)
!662 = !DILocation(line: 89, column: 7, scope: !655)
!663 = !DILocation(line: 92, column: 7, scope: !655)
!664 = !DILocation(line: 93, column: 7, scope: !655)
!665 = !DILocalVariable(name: "program", arg: 1, scope: !666, file: !658, line: 634, type: !30)
!666 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !658, file: !658, line: 634, type: !667, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !30}
!669 = !{!665, !670, !679, !680, !682}
!670 = !DILocalVariable(name: "infomap", scope: !666, file: !658, line: 636, type: !671)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 896, elements: !677)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !666, file: !658, line: 636, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !673, file: !658, line: 636, baseType: !30, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !658, line: 636, baseType: !30, size: 64, offset: 64)
!677 = !{!678}
!678 = !DISubrange(count: 7)
!679 = !DILocalVariable(name: "node", scope: !666, file: !658, line: 646, type: !30)
!680 = !DILocalVariable(name: "map_prog", scope: !666, file: !658, line: 647, type: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!682 = !DILocalVariable(name: "lc_messages", scope: !666, file: !658, line: 659, type: !30)
!683 = !DILocation(line: 0, scope: !666, inlinedAt: !684)
!684 = distinct !DILocation(line: 94, column: 7, scope: !655)
!685 = !DILocation(line: 636, column: 3, scope: !666, inlinedAt: !684)
!686 = !DILocation(line: 636, column: 67, scope: !666, inlinedAt: !684)
!687 = !DILocation(line: 647, column: 36, scope: !666, inlinedAt: !684)
!688 = !DILocation(line: 649, column: 3, scope: !666, inlinedAt: !684)
!689 = !DILocation(line: 649, column: 33, scope: !666, inlinedAt: !684)
!690 = !DILocation(line: 650, column: 13, scope: !666, inlinedAt: !684)
!691 = !DILocation(line: 649, column: 20, scope: !666, inlinedAt: !684)
!692 = !{!693, !651, i64 0}
!693 = !{!"infomap", !651, i64 0, !651, i64 8}
!694 = !DILocation(line: 649, column: 10, scope: !666, inlinedAt: !684)
!695 = !DILocation(line: 649, column: 28, scope: !666, inlinedAt: !684)
!696 = distinct !{!696, !688, !690, !697}
!697 = !{!"llvm.loop.mustprogress"}
!698 = !DILocation(line: 652, column: 17, scope: !699, inlinedAt: !684)
!699 = distinct !DILexicalBlock(scope: !666, file: !658, line: 652, column: 7)
!700 = !{!693, !651, i64 8}
!701 = !DILocation(line: 652, column: 7, scope: !699, inlinedAt: !684)
!702 = !DILocation(line: 652, column: 7, scope: !666, inlinedAt: !684)
!703 = !DILocation(line: 655, column: 3, scope: !666, inlinedAt: !684)
!704 = !DILocation(line: 659, column: 29, scope: !666, inlinedAt: !684)
!705 = !DILocation(line: 660, column: 7, scope: !706, inlinedAt: !684)
!706 = distinct !DILexicalBlock(scope: !666, file: !658, line: 660, column: 7)
!707 = !DILocation(line: 660, column: 19, scope: !706, inlinedAt: !684)
!708 = !DILocation(line: 660, column: 22, scope: !706, inlinedAt: !684)
!709 = !DILocation(line: 660, column: 7, scope: !666, inlinedAt: !684)
!710 = !DILocation(line: 666, column: 7, scope: !711, inlinedAt: !684)
!711 = distinct !DILexicalBlock(scope: !706, file: !658, line: 661, column: 5)
!712 = !DILocation(line: 668, column: 5, scope: !711, inlinedAt: !684)
!713 = !DILocation(line: 669, column: 3, scope: !666, inlinedAt: !684)
!714 = !DILocation(line: 671, column: 3, scope: !666, inlinedAt: !684)
!715 = !DILocation(line: 673, column: 1, scope: !666, inlinedAt: !684)
!716 = !DILocation(line: 97, column: 3, scope: !639)
!717 = !DISubprogram(name: "dcgettext", scope: !718, file: !718, line: 51, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!718 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!719 = !DISubroutineType(types: !720)
!720 = !{!102, !30, !30, !47}
!721 = !DISubprogram(name: "fputs_unlocked", scope: !722, file: !722, line: 667, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!722 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!723 = !DISubroutineType(types: !724)
!724 = !{!47, !30, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !728)
!727 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !744, !745, !746, !747, !751, !752, !754, !758, !761, !763, !766, !769, !770, !771, !772, !773}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !726, file: !727, line: 51, baseType: !47, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !726, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !726, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !726, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !726, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !726, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !726, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !726, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !726, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !726, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !726, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !726, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !726, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !727, line: 36, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !726, file: !727, line: 70, baseType: !725, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !726, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !726, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !726, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !749, line: 152, baseType: !750)
!749 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!750 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !726, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !726, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!753 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !726, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 1)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !726, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !727, line: 43, baseType: null)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !726, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !749, line: 153, baseType: !750)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !726, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !727, line: 37, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !726, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !727, line: 38, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !726, file: !727, line: 93, baseType: !725, size: 64, offset: 1344)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !726, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !726, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !726, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !726, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 20)
!777 = !DISubprogram(name: "setlocale", scope: !778, file: !778, line: 122, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!778 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!779 = !DISubroutineType(types: !780)
!780 = !{!102, !47, !30}
!781 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 541, type: !782, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!782 = !DISubroutineType(types: !783)
!783 = !{!47, !47, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "argc", arg: 1, scope: !781, file: !3, line: 541, type: !47)
!787 = !DILocalVariable(name: "argv", arg: 2, scope: !781, file: !3, line: 541, type: !784)
!788 = !DILocalVariable(name: "ok", scope: !781, file: !3, line: 543, type: !73)
!789 = !DILocation(line: 0, scope: !781)
!790 = !DILocation(line: 546, column: 21, scope: !781)
!791 = !DILocation(line: 546, column: 3, scope: !781)
!792 = !DILocation(line: 547, column: 3, scope: !781)
!793 = !DILocation(line: 548, column: 3, scope: !781)
!794 = !DILocation(line: 549, column: 3, scope: !781)
!795 = !DILocation(line: 551, column: 3, scope: !781)
!796 = !DILocation(line: 554, column: 36, scope: !781)
!797 = !DILocation(line: 553, column: 3, scope: !781)
!798 = !DILocation(line: 557, column: 18, scope: !799)
!799 = distinct !DILexicalBlock(scope: !781, file: !3, line: 557, column: 7)
!800 = !{!801, !801, i64 0}
!801 = !{!"int", !652, i64 0}
!802 = !DILocation(line: 557, column: 16, scope: !799)
!803 = !DILocation(line: 557, column: 9, scope: !799)
!804 = !DILocation(line: 557, column: 7, scope: !781)
!805 = !DILocation(line: 559, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !799, file: !3, line: 558, column: 5)
!807 = !DILocation(line: 559, column: 55, scope: !806)
!808 = !DILocation(line: 559, column: 62, scope: !806)
!809 = !DILocation(line: 559, column: 50, scope: !806)
!810 = !DILocation(line: 559, column: 43, scope: !806)
!811 = !DILocation(line: 559, column: 7, scope: !806)
!812 = !DILocation(line: 560, column: 7, scope: !806)
!813 = !DILocation(line: 563, column: 22, scope: !781)
!814 = !DILocation(line: 563, column: 15, scope: !781)
!815 = !DILocation(line: 563, column: 38, scope: !781)
!816 = !DILocalVariable(name: "file", arg: 1, scope: !817, file: !3, line: 435, type: !30)
!817 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 435, type: !818, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!73, !30}
!820 = !{!816, !821, !822, !823, !824, !825, !832, !833, !835}
!821 = !DILocalVariable(name: "ok", scope: !817, file: !3, line: 437, type: !73)
!822 = !DILocalVariable(name: "root", scope: !817, file: !3, line: 438, type: !40)
!823 = !DILocalVariable(name: "j", scope: !817, file: !3, line: 439, type: !40)
!824 = !DILocalVariable(name: "k", scope: !817, file: !3, line: 440, type: !40)
!825 = !DILocalVariable(name: "tokenbuffer", scope: !817, file: !3, line: 441, type: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !827, line: 31, baseType: !828)
!827 = !DIFile(filename: "./lib/readtokens.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !827, line: 26, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !828, file: !827, line: 28, baseType: !34, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !828, file: !827, line: 29, baseType: !102, size: 64, offset: 64)
!832 = !DILocalVariable(name: "is_stdin", scope: !817, file: !3, line: 442, type: !73)
!833 = !DILocalVariable(name: "len", scope: !834, file: !3, line: 457, type: !34)
!834 = distinct !DILexicalBlock(scope: !817, file: !3, line: 455, column: 5)
!835 = !DILocalVariable(name: "p", scope: !836, file: !3, line: 488, type: !51)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 487, column: 9)
!837 = distinct !DILexicalBlock(scope: !817, file: !3, line: 482, column: 5)
!838 = !DILocation(line: 0, scope: !817, inlinedAt: !839)
!839 = distinct !DILocation(line: 563, column: 8, scope: !781)
!840 = !DILocation(line: 441, column: 3, scope: !817, inlinedAt: !839)
!841 = !DILocation(line: 441, column: 16, scope: !817, inlinedAt: !839)
!842 = !DILocation(line: 442, column: 19, scope: !817, inlinedAt: !839)
!843 = !DILocalVariable(name: "str", arg: 1, scope: !844, file: !3, line: 102, type: !30)
!844 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 102, type: !845, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{!40, !30}
!847 = !{!843, !848}
!848 = !DILocalVariable(name: "k", scope: !844, file: !3, line: 104, type: !40)
!849 = !DILocation(line: 0, scope: !844, inlinedAt: !850)
!850 = distinct !DILocation(line: 445, column: 10, scope: !817, inlinedAt: !839)
!851 = !DILocation(line: 104, column: 20, scope: !844, inlinedAt: !850)
!852 = !DILocation(line: 111, column: 6, scope: !844, inlinedAt: !850)
!853 = !DILocation(line: 111, column: 12, scope: !844, inlinedAt: !850)
!854 = !DILocation(line: 107, column: 11, scope: !844, inlinedAt: !850)
!855 = !DILocation(line: 447, column: 17, scope: !856, inlinedAt: !839)
!856 = distinct !DILexicalBlock(scope: !817, file: !3, line: 447, column: 7)
!857 = !DILocation(line: 447, column: 42, scope: !856, inlinedAt: !839)
!858 = !DILocation(line: 447, column: 22, scope: !856, inlinedAt: !839)
!859 = !DILocation(line: 447, column: 7, scope: !817, inlinedAt: !839)
!860 = !DILocation(line: 448, column: 5, scope: !856, inlinedAt: !839)
!861 = !DILocation(line: 450, column: 12, scope: !817, inlinedAt: !839)
!862 = !DILocation(line: 450, column: 3, scope: !817, inlinedAt: !839)
!863 = !DILocation(line: 452, column: 3, scope: !817, inlinedAt: !839)
!864 = !DILocation(line: 454, column: 3, scope: !817, inlinedAt: !839)
!865 = !DILocation(line: 440, column: 16, scope: !817, inlinedAt: !839)
!866 = !DILocation(line: 457, column: 31, scope: !834, inlinedAt: !839)
!867 = !DILocation(line: 457, column: 20, scope: !834, inlinedAt: !839)
!868 = !DILocation(line: 0, scope: !834, inlinedAt: !839)
!869 = !DILocation(line: 458, column: 11, scope: !834, inlinedAt: !839)
!870 = !DILocation(line: 461, column: 7, scope: !871, inlinedAt: !839)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 461, column: 7)
!872 = distinct !DILexicalBlock(scope: !834, file: !3, line: 461, column: 7)
!873 = !DILocation(line: 463, column: 42, scope: !834, inlinedAt: !839)
!874 = !{!875, !651, i64 8}
!875 = !{!"tokenbuffer", !876, i64 0, !651, i64 8}
!876 = !{!"long", !652, i64 0}
!877 = !DILocalVariable(name: "root", arg: 1, scope: !878, file: !3, line: 127, type: !40)
!878 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 127, type: !879, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!40, !40, !30}
!881 = !{!877, !882, !883, !884, !885, !886, !887, !888}
!882 = !DILocalVariable(name: "str", arg: 2, scope: !878, file: !3, line: 127, type: !30)
!883 = !DILocalVariable(name: "p", scope: !878, file: !3, line: 129, type: !40)
!884 = !DILocalVariable(name: "q", scope: !878, file: !3, line: 129, type: !40)
!885 = !DILocalVariable(name: "r", scope: !878, file: !3, line: 129, type: !40)
!886 = !DILocalVariable(name: "s", scope: !878, file: !3, line: 129, type: !40)
!887 = !DILocalVariable(name: "t", scope: !878, file: !3, line: 129, type: !40)
!888 = !DILocalVariable(name: "a", scope: !878, file: !3, line: 130, type: !47)
!889 = !DILocation(line: 0, scope: !878, inlinedAt: !890)
!890 = distinct !DILocation(line: 463, column: 11, scope: !834, inlinedAt: !839)
!891 = !DILocation(line: 136, column: 13, scope: !892, inlinedAt: !890)
!892 = distinct !DILexicalBlock(scope: !878, file: !3, line: 136, column: 7)
!893 = !{!894, !651, i64 16}
!894 = !{!"item", !651, i64 0, !651, i64 8, !651, i64 16, !801, i64 24, !876, i64 32, !651, i64 40, !651, i64 48}
!895 = !DILocation(line: 136, column: 19, scope: !892, inlinedAt: !890)
!896 = !DILocation(line: 136, column: 7, scope: !878, inlinedAt: !890)
!897 = !DILocation(line: 146, column: 27, scope: !898, inlinedAt: !890)
!898 = distinct !DILexicalBlock(scope: !878, file: !3, line: 144, column: 5)
!899 = !{!894, !651, i64 0}
!900 = !DILocation(line: 146, column: 11, scope: !898, inlinedAt: !890)
!901 = !DILocation(line: 147, column: 13, scope: !902, inlinedAt: !890)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 147, column: 11)
!903 = !DILocation(line: 147, column: 11, scope: !898, inlinedAt: !890)
!904 = !DILocation(line: 0, scope: !844, inlinedAt: !905)
!905 = distinct !DILocation(line: 137, column: 27, scope: !892, inlinedAt: !890)
!906 = !DILocation(line: 104, column: 20, scope: !844, inlinedAt: !905)
!907 = !DILocation(line: 106, column: 13, scope: !844, inlinedAt: !905)
!908 = !DILocation(line: 106, column: 19, scope: !844, inlinedAt: !905)
!909 = !DILocation(line: 106, column: 6, scope: !844, inlinedAt: !905)
!910 = !DILocation(line: 106, column: 10, scope: !844, inlinedAt: !905)
!911 = !DILocation(line: 107, column: 6, scope: !844, inlinedAt: !905)
!912 = !DILocation(line: 111, column: 6, scope: !844, inlinedAt: !905)
!913 = !DILocation(line: 107, column: 11, scope: !844, inlinedAt: !905)
!914 = !DILocation(line: 111, column: 12, scope: !844, inlinedAt: !905)
!915 = !DILocation(line: 137, column: 25, scope: !892, inlinedAt: !890)
!916 = !DILocation(line: 137, column: 5, scope: !892, inlinedAt: !890)
!917 = !DILocation(line: 151, column: 13, scope: !918, inlinedAt: !890)
!918 = distinct !DILexicalBlock(scope: !898, file: !3, line: 151, column: 11)
!919 = !DILocation(line: 151, column: 11, scope: !898, inlinedAt: !890)
!920 = !DILocation(line: 0, scope: !918, inlinedAt: !890)
!921 = !DILocation(line: 156, column: 13, scope: !922, inlinedAt: !890)
!922 = distinct !DILexicalBlock(scope: !898, file: !3, line: 156, column: 11)
!923 = !DILocation(line: 156, column: 11, scope: !898, inlinedAt: !890)
!924 = !DILocation(line: 0, scope: !844, inlinedAt: !925)
!925 = distinct !DILocation(line: 159, column: 15, scope: !926, inlinedAt: !890)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 157, column: 9)
!927 = !DILocation(line: 104, column: 20, scope: !844, inlinedAt: !925)
!928 = !DILocation(line: 106, column: 13, scope: !844, inlinedAt: !925)
!929 = !DILocation(line: 106, column: 19, scope: !844, inlinedAt: !925)
!930 = !DILocation(line: 106, column: 6, scope: !844, inlinedAt: !925)
!931 = !DILocation(line: 106, column: 10, scope: !844, inlinedAt: !925)
!932 = !DILocation(line: 107, column: 6, scope: !844, inlinedAt: !925)
!933 = !DILocation(line: 111, column: 6, scope: !844, inlinedAt: !925)
!934 = !DILocation(line: 107, column: 11, scope: !844, inlinedAt: !925)
!935 = !DILocation(line: 111, column: 12, scope: !844, inlinedAt: !925)
!936 = !DILocation(line: 162, column: 15, scope: !926, inlinedAt: !890)
!937 = !DILocation(line: 0, scope: !938, inlinedAt: !890)
!938 = distinct !DILexicalBlock(scope: !926, file: !3, line: 162, column: 15)
!939 = !DILocation(line: 168, column: 11, scope: !940, inlinedAt: !890)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 168, column: 11)
!941 = distinct !DILexicalBlock(scope: !926, file: !3, line: 168, column: 11)
!942 = !DILocation(line: 168, column: 11, scope: !941, inlinedAt: !890)
!943 = !DILocation(line: 169, column: 36, scope: !944, inlinedAt: !890)
!944 = distinct !DILexicalBlock(scope: !926, file: !3, line: 169, column: 15)
!945 = !DILocation(line: 169, column: 15, scope: !926, inlinedAt: !890)
!946 = !DILocation(line: 0, scope: !944, inlinedAt: !890)
!947 = !DILocation(line: 180, column: 20, scope: !926, inlinedAt: !890)
!948 = !DILocation(line: 180, column: 11, scope: !926, inlinedAt: !890)
!949 = !DILocation(line: 182, column: 15, scope: !950, inlinedAt: !890)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 182, column: 15)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 182, column: 15)
!952 = distinct !DILexicalBlock(scope: !926, file: !3, line: 181, column: 13)
!953 = !DILocation(line: 182, column: 15, scope: !951, inlinedAt: !890)
!954 = !DILocation(line: 183, column: 40, scope: !955, inlinedAt: !890)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 183, column: 19)
!956 = !DILocation(line: 183, column: 19, scope: !952, inlinedAt: !890)
!957 = !DILocation(line: 185, column: 22, scope: !958, inlinedAt: !890)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 184, column: 17)
!959 = !DILocation(line: 185, column: 30, scope: !958, inlinedAt: !890)
!960 = !DILocation(line: 0, scope: !955, inlinedAt: !890)
!961 = distinct !{!961, !948, !962, !697}
!962 = !DILocation(line: 193, column: 13, scope: !926, inlinedAt: !890)
!963 = !DILocation(line: 196, column: 18, scope: !964, inlinedAt: !890)
!964 = distinct !DILexicalBlock(scope: !926, file: !3, line: 196, column: 15)
!965 = !{!894, !801, i64 24}
!966 = !DILocation(line: 196, column: 26, scope: !964, inlinedAt: !890)
!967 = !DILocation(line: 196, column: 31, scope: !964, inlinedAt: !890)
!968 = !DILocation(line: 198, column: 26, scope: !969, inlinedAt: !890)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 197, column: 13)
!970 = !DILocation(line: 199, column: 15, scope: !969, inlinedAt: !890)
!971 = !DILocation(line: 202, column: 18, scope: !972, inlinedAt: !890)
!972 = distinct !DILexicalBlock(scope: !926, file: !3, line: 202, column: 15)
!973 = !DILocation(line: 202, column: 26, scope: !972, inlinedAt: !890)
!974 = !DILocation(line: 202, column: 15, scope: !926, inlinedAt: !890)
!975 = !DILocation(line: 206, column: 19, scope: !976, inlinedAt: !890)
!976 = distinct !DILexicalBlock(scope: !972, file: !3, line: 203, column: 13)
!977 = !DILocation(line: 0, scope: !978, inlinedAt: !890)
!978 = distinct !DILexicalBlock(scope: !976, file: !3, line: 206, column: 19)
!979 = !DILocation(line: 216, column: 39, scope: !976, inlinedAt: !890)
!980 = !DILocation(line: 217, column: 13, scope: !976, inlinedAt: !890)
!981 = !DILocation(line: 221, column: 19, scope: !982, inlinedAt: !890)
!982 = distinct !DILexicalBlock(scope: !972, file: !3, line: 219, column: 13)
!983 = !DILocation(line: 223, column: 26, scope: !984, inlinedAt: !890)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 222, column: 17)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 221, column: 19)
!986 = !DILocation(line: 224, column: 33, scope: !984, inlinedAt: !890)
!987 = !{!894, !651, i64 8}
!988 = !DILocation(line: 224, column: 28, scope: !984, inlinedAt: !890)
!989 = !DILocation(line: 225, column: 27, scope: !984, inlinedAt: !890)
!990 = !DILocation(line: 226, column: 32, scope: !984, inlinedAt: !890)
!991 = !DILocation(line: 228, column: 17, scope: !984, inlinedAt: !890)
!992 = !DILocation(line: 231, column: 26, scope: !993, inlinedAt: !890)
!993 = distinct !DILexicalBlock(scope: !985, file: !3, line: 230, column: 17)
!994 = !DILocation(line: 232, column: 32, scope: !993, inlinedAt: !890)
!995 = !DILocation(line: 232, column: 27, scope: !993, inlinedAt: !890)
!996 = !DILocation(line: 233, column: 28, scope: !993, inlinedAt: !890)
!997 = !DILocation(line: 234, column: 33, scope: !993, inlinedAt: !890)
!998 = !DILocation(line: 0, scope: !985, inlinedAt: !890)
!999 = !DILocation(line: 238, column: 26, scope: !982, inlinedAt: !890)
!1000 = !DILocation(line: 239, column: 26, scope: !982, inlinedAt: !890)
!1001 = !DILocation(line: 240, column: 22, scope: !1002, inlinedAt: !890)
!1002 = distinct !DILexicalBlock(scope: !982, file: !3, line: 240, column: 19)
!1003 = !DILocation(line: 240, column: 30, scope: !1002, inlinedAt: !890)
!1004 = !DILocation(line: 240, column: 19, scope: !982, inlinedAt: !890)
!1005 = !DILocation(line: 241, column: 28, scope: !1002, inlinedAt: !890)
!1006 = !DILocation(line: 241, column: 17, scope: !1002, inlinedAt: !890)
!1007 = !DILocation(line: 242, column: 35, scope: !1008, inlinedAt: !890)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 242, column: 24)
!1009 = !DILocation(line: 242, column: 24, scope: !1002, inlinedAt: !890)
!1010 = !DILocation(line: 243, column: 28, scope: !1008, inlinedAt: !890)
!1011 = !DILocation(line: 243, column: 17, scope: !1008, inlinedAt: !890)
!1012 = !DILocation(line: 0, scope: !972, inlinedAt: !890)
!1013 = !DILocation(line: 248, column: 23, scope: !1014, inlinedAt: !890)
!1014 = distinct !DILexicalBlock(scope: !926, file: !3, line: 248, column: 15)
!1015 = !DILocation(line: 248, column: 17, scope: !1014, inlinedAt: !890)
!1016 = !DILocation(line: 248, column: 15, scope: !926, inlinedAt: !890)
!1017 = !DILocation(line: 249, column: 22, scope: !1014, inlinedAt: !890)
!1018 = !DILocation(line: 249, column: 13, scope: !1014, inlinedAt: !890)
!1019 = !DILocation(line: 251, column: 16, scope: !1014, inlinedAt: !890)
!1020 = !DILocation(line: 251, column: 21, scope: !1014, inlinedAt: !890)
!1021 = !DILocation(line: 257, column: 14, scope: !1022, inlinedAt: !890)
!1022 = distinct !DILexicalBlock(scope: !898, file: !3, line: 257, column: 11)
!1023 = !DILocation(line: 257, column: 11, scope: !1022, inlinedAt: !890)
!1024 = !DILocation(line: 257, column: 11, scope: !898, inlinedAt: !890)
!1025 = distinct !{!1025, !1026, !1027}
!1026 = !DILocation(line: 143, column: 3, scope: !878, inlinedAt: !890)
!1027 = !DILocation(line: 264, column: 5, scope: !878, inlinedAt: !890)
!1028 = !DILocation(line: 464, column: 11, scope: !1029, inlinedAt: !839)
!1029 = distinct !DILexicalBlock(scope: !834, file: !3, line: 464, column: 11)
!1030 = !DILocation(line: 464, column: 11, scope: !834, inlinedAt: !839)
!1031 = !DILocalVariable(name: "j", arg: 1, scope: !1032, file: !3, line: 272, type: !40)
!1032 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 272, type: !1033, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !40, !40}
!1035 = !{!1031, !1036, !1037}
!1036 = !DILocalVariable(name: "k", arg: 2, scope: !1032, file: !3, line: 272, type: !40)
!1037 = !DILocalVariable(name: "p", scope: !1032, file: !3, line: 274, type: !51)
!1038 = !DILocation(line: 0, scope: !1032, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 467, column: 11, scope: !1040, inlinedAt: !839)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 465, column: 9)
!1041 = !DILocation(line: 276, column: 8, scope: !1042, inlinedAt: !1039)
!1042 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 276, column: 7)
!1043 = !DILocation(line: 276, column: 7, scope: !1032, inlinedAt: !1039)
!1044 = !DILocation(line: 278, column: 10, scope: !1045, inlinedAt: !1039)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 277, column: 5)
!1046 = !DILocation(line: 278, column: 15, scope: !1045, inlinedAt: !1039)
!1047 = !{!894, !876, i64 32}
!1048 = !DILocation(line: 279, column: 11, scope: !1045, inlinedAt: !1039)
!1049 = !DILocation(line: 280, column: 10, scope: !1045, inlinedAt: !1039)
!1050 = !DILocation(line: 280, column: 14, scope: !1045, inlinedAt: !1039)
!1051 = !{!1052, !651, i64 0}
!1052 = !{!"successor", !651, i64 0, !651, i64 8}
!1053 = !DILocation(line: 281, column: 20, scope: !1045, inlinedAt: !1039)
!1054 = !{!894, !651, i64 48}
!1055 = !DILocation(line: 281, column: 10, scope: !1045, inlinedAt: !1039)
!1056 = !DILocation(line: 281, column: 15, scope: !1045, inlinedAt: !1039)
!1057 = !{!1052, !651, i64 8}
!1058 = !DILocation(line: 282, column: 14, scope: !1045, inlinedAt: !1039)
!1059 = !DILocation(line: 283, column: 5, scope: !1045, inlinedAt: !1039)
!1060 = !DILocation(line: 474, column: 9, scope: !1061, inlinedAt: !839)
!1061 = distinct !DILexicalBlock(scope: !817, file: !3, line: 474, column: 7)
!1062 = !DILocation(line: 474, column: 7, scope: !817, inlinedAt: !839)
!1063 = !DILocation(line: 475, column: 5, scope: !1061, inlinedAt: !839)
!1064 = !DILocalVariable(name: "root", arg: 1, scope: !1065, file: !3, line: 426, type: !40)
!1065 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 426, type: !1066, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !40, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!73, !40}
!1071 = !{!1064, !1072}
!1072 = !DILocalVariable(name: "action", arg: 2, scope: !1065, file: !3, line: 426, type: !1068)
!1073 = !DILocation(line: 0, scope: !1065, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 479, column: 3, scope: !817, inlinedAt: !839)
!1075 = !DILocation(line: 428, column: 13, scope: !1076, inlinedAt: !1074)
!1076 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 428, column: 7)
!1077 = !DILocation(line: 428, column: 7, scope: !1076, inlinedAt: !1074)
!1078 = !DILocation(line: 428, column: 7, scope: !1065, inlinedAt: !1074)
!1079 = !DILocation(line: 429, column: 5, scope: !1076, inlinedAt: !1074)
!1080 = !DILocation(line: 481, column: 10, scope: !817, inlinedAt: !839)
!1081 = !{!876, !876, i64 0}
!1082 = !DILocation(line: 481, column: 20, scope: !817, inlinedAt: !839)
!1083 = !DILocation(line: 481, column: 3, scope: !817, inlinedAt: !839)
!1084 = !DILocation(line: 0, scope: !1065, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 484, column: 7, scope: !837, inlinedAt: !839)
!1086 = !DILocation(line: 428, column: 7, scope: !1065, inlinedAt: !1085)
!1087 = !DILocation(line: 429, column: 5, scope: !1076, inlinedAt: !1085)
!1088 = !DILocation(line: 486, column: 14, scope: !837, inlinedAt: !839)
!1089 = !DILocation(line: 486, column: 7, scope: !837, inlinedAt: !839)
!1090 = !DILocation(line: 518, column: 11, scope: !1091, inlinedAt: !839)
!1091 = distinct !DILexicalBlock(scope: !837, file: !3, line: 518, column: 11)
!1092 = !DILocation(line: 488, column: 39, scope: !836, inlinedAt: !839)
!1093 = !DILocation(line: 0, scope: !836, inlinedAt: !839)
!1094 = !DILocation(line: 491, column: 23, scope: !836, inlinedAt: !839)
!1095 = !DILocation(line: 491, column: 11, scope: !836, inlinedAt: !839)
!1096 = !DILocation(line: 497, column: 11, scope: !836, inlinedAt: !839)
!1097 = !DILocation(line: 497, column: 17, scope: !836, inlinedAt: !839)
!1098 = !DILocation(line: 497, column: 21, scope: !836, inlinedAt: !839)
!1099 = !DILocation(line: 498, column: 20, scope: !836, inlinedAt: !839)
!1100 = !DILocation(line: 501, column: 11, scope: !836, inlinedAt: !839)
!1101 = !DILocation(line: 503, column: 18, scope: !1102, inlinedAt: !839)
!1102 = distinct !DILexicalBlock(scope: !836, file: !3, line: 502, column: 13)
!1103 = !DILocation(line: 503, column: 23, scope: !1102, inlinedAt: !839)
!1104 = !DILocation(line: 503, column: 28, scope: !1102, inlinedAt: !839)
!1105 = !DILocation(line: 504, column: 33, scope: !1106, inlinedAt: !839)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 504, column: 19)
!1107 = !DILocation(line: 504, column: 19, scope: !1102, inlinedAt: !839)
!1108 = !DILocation(line: 506, column: 19, scope: !1109, inlinedAt: !839)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 505, column: 17)
!1110 = !DILocation(line: 506, column: 26, scope: !1109, inlinedAt: !839)
!1111 = !DILocation(line: 506, column: 32, scope: !1109, inlinedAt: !839)
!1112 = !{!894, !651, i64 40}
!1113 = !DILocation(line: 507, column: 25, scope: !1109, inlinedAt: !839)
!1114 = !DILocation(line: 508, column: 17, scope: !1109, inlinedAt: !839)
!1115 = !DILocation(line: 510, column: 22, scope: !1102, inlinedAt: !839)
!1116 = distinct !{!1116, !1100, !1117, !697}
!1117 = !DILocation(line: 511, column: 13, scope: !836, inlinedAt: !839)
!1118 = !DILocation(line: 514, column: 24, scope: !836, inlinedAt: !839)
!1119 = !DILocation(line: 514, column: 16, scope: !836, inlinedAt: !839)
!1120 = distinct !{!1120, !1089, !1121, !697}
!1121 = !DILocation(line: 515, column: 9, scope: !837, inlinedAt: !839)
!1122 = !DILocation(line: 518, column: 21, scope: !1091, inlinedAt: !839)
!1123 = !DILocation(line: 518, column: 11, scope: !837, inlinedAt: !839)
!1124 = !DILocation(line: 521, column: 24, scope: !1125, inlinedAt: !839)
!1125 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 519, column: 9)
!1126 = !DILocation(line: 521, column: 57, scope: !1125, inlinedAt: !839)
!1127 = !DILocation(line: 521, column: 11, scope: !1125, inlinedAt: !839)
!1128 = !DILocation(line: 525, column: 11, scope: !1125, inlinedAt: !839)
!1129 = !DILocation(line: 0, scope: !1065, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 526, column: 13, scope: !1125, inlinedAt: !839)
!1131 = !DILocation(line: 428, column: 7, scope: !1065, inlinedAt: !1130)
!1132 = !DILocation(line: 429, column: 5, scope: !1076, inlinedAt: !1130)
!1133 = !DILocation(line: 527, column: 18, scope: !1125, inlinedAt: !839)
!1134 = !DILocation(line: 526, column: 13, scope: !1125, inlinedAt: !839)
!1135 = distinct !{!1135, !1128, !1136, !697}
!1136 = !DILocation(line: 527, column: 22, scope: !1125, inlinedAt: !839)
!1137 = distinct !{!1137, !1083, !1138, !697}
!1138 = !DILocation(line: 529, column: 5, scope: !817, inlinedAt: !839)
!1139 = !DILocation(line: 533, column: 15, scope: !1140, inlinedAt: !839)
!1140 = distinct !DILexicalBlock(scope: !817, file: !3, line: 533, column: 7)
!1141 = !DILocation(line: 533, column: 7, scope: !1140, inlinedAt: !839)
!1142 = !DILocation(line: 533, column: 22, scope: !1140, inlinedAt: !839)
!1143 = !DILocation(line: 533, column: 7, scope: !817, inlinedAt: !839)
!1144 = !DILocation(line: 534, column: 5, scope: !1140, inlinedAt: !839)
!1145 = !DILocation(line: 537, column: 10, scope: !817, inlinedAt: !839)
!1146 = !DILocation(line: 538, column: 1, scope: !817, inlinedAt: !839)
!1147 = !DILocation(line: 565, column: 10, scope: !781)
!1148 = !DILocation(line: 565, column: 3, scope: !781)
!1149 = !DISubprogram(name: "bindtextdomain", scope: !718, file: !718, line: 86, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!102, !30, !30}
!1152 = !DISubprogram(name: "textdomain", scope: !718, file: !718, line: 82, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!102, !30}
!1155 = !DISubprogram(name: "atexit", scope: !1156, file: !1156, line: 595, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1156 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!47, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!1160 = !DISubprogram(name: "error", scope: !1161, file: !1161, line: 52, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1161 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !47, !47, !30, null}
!1164 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 287, type: !1069, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1165 = !{!1166}
!1166 = !DILocalVariable(name: "unused", arg: 1, scope: !1164, file: !3, line: 287, type: !40)
!1167 = !DILocation(line: 0, scope: !1164)
!1168 = !DILocation(line: 289, column: 12, scope: !1164)
!1169 = !DILocation(line: 290, column: 3, scope: !1164)
!1170 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 403, type: !1171, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!73, !40, !1068}
!1173 = !{!1174, !1175}
!1174 = !DILocalVariable(name: "root", arg: 1, scope: !1170, file: !3, line: 403, type: !40)
!1175 = !DILocalVariable(name: "action", arg: 2, scope: !1170, file: !3, line: 403, type: !1068)
!1176 = !DILocation(line: 0, scope: !1170)
!1177 = !DILocation(line: 405, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 405, column: 7)
!1179 = !DILocation(line: 405, column: 18, scope: !1178)
!1180 = !DILocation(line: 405, column: 26, scope: !1178)
!1181 = !DILocation(line: 405, column: 35, scope: !1178)
!1182 = !DILocation(line: 405, column: 41, scope: !1178)
!1183 = !DILocation(line: 405, column: 7, scope: !1170)
!1184 = !DILocation(line: 406, column: 12, scope: !1178)
!1185 = !{i1 (%struct.item*)* @count_items, i1 (%struct.item*)* @detect_loop, i1 (%struct.item*)* @scan_zeros}
!1186 = !DILocation(line: 406, column: 5, scope: !1178)
!1187 = !DILocation(line: 410, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 410, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 409, column: 11)
!1190 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 408, column: 5)
!1191 = !DILocation(line: 410, column: 13, scope: !1189)
!1192 = !DILocation(line: 412, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 412, column: 11)
!1194 = !DILocation(line: 412, column: 11, scope: !1190)
!1195 = !DILocation(line: 414, column: 17, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 414, column: 11)
!1197 = !DILocation(line: 414, column: 23, scope: !1196)
!1198 = !DILocation(line: 414, column: 11, scope: !1190)
!1199 = !DILocation(line: 415, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 415, column: 13)
!1201 = !DILocation(line: 415, column: 13, scope: !1196)
!1202 = !DILocation(line: 419, column: 3, scope: !1170)
!1203 = !DILocation(line: 420, column: 1, scope: !1170)
!1204 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 294, type: !1069, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "k", arg: 1, scope: !1204, file: !3, line: 294, type: !40)
!1207 = !DILocation(line: 0, scope: !1204)
!1208 = !DILocation(line: 297, column: 10, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 297, column: 7)
!1210 = !DILocation(line: 297, column: 16, scope: !1209)
!1211 = !DILocation(line: 297, column: 21, scope: !1209)
!1212 = !DILocation(line: 297, column: 27, scope: !1209)
!1213 = !DILocation(line: 297, column: 24, scope: !1209)
!1214 = !DILocation(line: 297, column: 7, scope: !1204)
!1215 = !DILocation(line: 299, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 299, column: 11)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 298, column: 5)
!1218 = !DILocation(line: 299, column: 16, scope: !1216)
!1219 = !DILocation(line: 299, column: 11, scope: !1217)
!1220 = !DILocation(line: 0, scope: !1216)
!1221 = !DILocation(line: 304, column: 13, scope: !1217)
!1222 = !DILocation(line: 305, column: 5, scope: !1217)
!1223 = !DILocation(line: 307, column: 3, scope: !1204)
!1224 = !DISubprogram(name: "puts", scope: !722, file: !722, line: 637, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!47, !30}
!1227 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 329, type: !1069, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1228 = !{!1229, !1230, !1236, !1243}
!1229 = !DILocalVariable(name: "k", arg: 1, scope: !1227, file: !3, line: 329, type: !40)
!1230 = !DILocalVariable(name: "p", scope: !1231, file: !3, line: 341, type: !1235)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 340, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 336, column: 11)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 332, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 331, column: 7)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1236 = !DILocalVariable(name: "tmp", scope: !1237, file: !3, line: 352, type: !40)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 351, column: 25)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 348, column: 21)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 347, column: 23)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 346, column: 17)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 345, column: 19)
!1242 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 344, column: 13)
!1243 = !DILocalVariable(name: "tmp", scope: !1244, file: !3, line: 373, type: !40)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 372, column: 25)
!1245 = !DILocation(line: 0, scope: !1227)
!1246 = !DILocation(line: 331, column: 10, scope: !1234)
!1247 = !DILocation(line: 331, column: 16, scope: !1234)
!1248 = !DILocation(line: 331, column: 7, scope: !1227)
!1249 = !DILocation(line: 336, column: 11, scope: !1232)
!1250 = !DILocation(line: 336, column: 16, scope: !1232)
!1251 = !DILocation(line: 336, column: 11, scope: !1233)
!1252 = !DILocation(line: 338, column: 14, scope: !1232)
!1253 = !DILocation(line: 338, column: 9, scope: !1232)
!1254 = !DILocation(line: 341, column: 38, scope: !1231)
!1255 = !DILocation(line: 0, scope: !1231)
!1256 = !DILocation(line: 343, column: 18, scope: !1231)
!1257 = !DILocation(line: 343, column: 11, scope: !1231)
!1258 = !DILocation(line: 345, column: 25, scope: !1241)
!1259 = !DILocation(line: 345, column: 29, scope: !1241)
!1260 = !DILocation(line: 345, column: 19, scope: !1242)
!1261 = !DILocation(line: 391, column: 26, scope: !1242)
!1262 = distinct !{!1262, !1257, !1263, !697}
!1263 = !DILocation(line: 392, column: 13, scope: !1231)
!1264 = !DILocation(line: 347, column: 26, scope: !1239)
!1265 = !DILocation(line: 347, column: 23, scope: !1239)
!1266 = !DILocation(line: 347, column: 23, scope: !1240)
!1267 = !DILocation(line: 352, column: 52, scope: !1237)
!1268 = !DILocation(line: 0, scope: !1237)
!1269 = !DILocation(line: 354, column: 53, scope: !1237)
!1270 = !DILocation(line: 354, column: 27, scope: !1237)
!1271 = !DILocation(line: 357, column: 31, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 357, column: 31)
!1273 = !DILocation(line: 357, column: 36, scope: !1272)
!1274 = !DILocation(line: 357, column: 31, scope: !1237)
!1275 = !DILocation(line: 367, column: 33, scope: !1237)
!1276 = !DILocation(line: 367, column: 39, scope: !1237)
!1277 = !DILocation(line: 368, column: 32, scope: !1237)
!1278 = !DILocation(line: 350, column: 23, scope: !1238)
!1279 = !DILocation(line: 360, column: 32, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 358, column: 29)
!1281 = !DILocation(line: 360, column: 37, scope: !1280)
!1282 = !DILocation(line: 360, column: 42, scope: !1280)
!1283 = !DILocation(line: 360, column: 47, scope: !1280)
!1284 = !DILocation(line: 361, column: 42, scope: !1280)
!1285 = !DILocation(line: 361, column: 34, scope: !1280)
!1286 = !DILocation(line: 371, column: 23, scope: !1238)
!1287 = !DILocation(line: 373, column: 52, scope: !1244)
!1288 = !DILocation(line: 0, scope: !1244)
!1289 = !DILocation(line: 375, column: 39, scope: !1244)
!1290 = distinct !{!1290, !1286, !1291, !697}
!1291 = !DILocation(line: 377, column: 25, scope: !1238)
!1292 = !DILocation(line: 385, column: 32, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 384, column: 21)
!1294 = !DILocation(line: 386, column: 28, scope: !1293)
!1295 = !DILocation(line: 387, column: 23, scope: !1293)
!1296 = !DILocation(line: 376, column: 32, scope: !1244)
!1297 = !DILocation(line: 397, column: 1, scope: !1227)
!1298 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !69, file: !69, line: 51, type: !667, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1299)
!1299 = !{!1300}
!1300 = !DILocalVariable(name: "file", arg: 1, scope: !1298, file: !69, line: 51, type: !30)
!1301 = !DILocation(line: 0, scope: !1298)
!1302 = !DILocation(line: 53, column: 13, scope: !1298)
!1303 = !DILocation(line: 54, column: 1, scope: !1298)
!1304 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !69, file: !69, line: 88, type: !1305, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !73}
!1307 = !{!1308}
!1308 = !DILocalVariable(name: "ignore", arg: 1, scope: !1304, file: !69, line: 88, type: !73)
!1309 = !DILocation(line: 0, scope: !1304)
!1310 = !DILocation(line: 90, column: 16, scope: !1304)
!1311 = !{!1312, !1312, i64 0}
!1312 = !{!"_Bool", !652, i64 0}
!1313 = !DILocation(line: 91, column: 1, scope: !1304)
!1314 = distinct !DISubprogram(name: "close_stdout", scope: !69, file: !69, line: 117, type: !659, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1315)
!1315 = !{!1316}
!1316 = !DILocalVariable(name: "write_error", scope: !1317, file: !69, line: 122, type: !30)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !69, line: 121, column: 5)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !69, line: 119, column: 7)
!1319 = !DILocation(line: 119, column: 21, scope: !1318)
!1320 = !DILocation(line: 119, column: 7, scope: !1318)
!1321 = !DILocation(line: 119, column: 29, scope: !1318)
!1322 = !DILocation(line: 120, column: 7, scope: !1318)
!1323 = !DILocation(line: 120, column: 12, scope: !1318)
!1324 = !{i8 0, i8 2}
!1325 = !DILocation(line: 120, column: 25, scope: !1318)
!1326 = !DILocation(line: 120, column: 28, scope: !1318)
!1327 = !DILocation(line: 120, column: 34, scope: !1318)
!1328 = !DILocation(line: 119, column: 7, scope: !1314)
!1329 = !DILocation(line: 122, column: 33, scope: !1317)
!1330 = !DILocation(line: 0, scope: !1317)
!1331 = !DILocation(line: 123, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1317, file: !69, line: 123, column: 11)
!1333 = !DILocation(line: 0, scope: !1332)
!1334 = !DILocation(line: 123, column: 11, scope: !1317)
!1335 = !DILocation(line: 124, column: 36, scope: !1332)
!1336 = !DILocation(line: 124, column: 9, scope: !1332)
!1337 = !DILocation(line: 127, column: 9, scope: !1332)
!1338 = !DILocation(line: 129, column: 14, scope: !1317)
!1339 = !DILocation(line: 129, column: 7, scope: !1317)
!1340 = !DILocation(line: 134, column: 42, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1314, file: !69, line: 134, column: 7)
!1342 = !DILocation(line: 134, column: 28, scope: !1341)
!1343 = !DILocation(line: 134, column: 50, scope: !1341)
!1344 = !DILocation(line: 134, column: 7, scope: !1314)
!1345 = !DILocation(line: 135, column: 12, scope: !1341)
!1346 = !DILocation(line: 135, column: 5, scope: !1341)
!1347 = !DILocation(line: 136, column: 1, scope: !1314)
!1348 = distinct !DISubprogram(name: "fdadvise", scope: !181, file: !181, line: 31, type: !1349, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !1353)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !47, !1351, !1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !722, line: 63, baseType: !748)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1353 = !{!1354, !1355, !1356, !1357, !1358}
!1354 = !DILocalVariable(name: "fd", arg: 1, scope: !1348, file: !181, line: 31, type: !47)
!1355 = !DILocalVariable(name: "offset", arg: 2, scope: !1348, file: !181, line: 31, type: !1351)
!1356 = !DILocalVariable(name: "len", arg: 3, scope: !1348, file: !181, line: 31, type: !1351)
!1357 = !DILocalVariable(name: "advice", arg: 4, scope: !1348, file: !181, line: 31, type: !1352)
!1358 = !DILocalVariable(name: "__x", scope: !1359, file: !181, line: 34, type: !47)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !181, line: 34, column: 3)
!1360 = !DILocation(line: 0, scope: !1348)
!1361 = !DILocation(line: 34, column: 3, scope: !1359)
!1362 = !DILocation(line: 0, scope: !1359)
!1363 = !DILocation(line: 36, column: 1, scope: !1348)
!1364 = !DISubprogram(name: "posix_fadvise", scope: !1365, file: !1365, line: 288, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1365 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!47, !47, !750, !750, !47}
!1368 = distinct !DISubprogram(name: "fadvise", scope: !181, file: !181, line: 39, type: !1369, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !1406)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371, !1352}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !1374)
!1373 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1374, file: !727, line: 51, baseType: !47, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1374, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1374, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1374, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1374, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1374, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1374, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1374, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1374, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1374, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1374, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1374, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1374, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1374, file: !727, line: 70, baseType: !1390, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1374, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1374, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1374, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1374, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1374, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1374, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1374, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1374, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1374, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1374, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1374, file: !727, line: 93, baseType: !1390, size: 64, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1374, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1374, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1374, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1374, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!1406 = !{!1407, !1408}
!1407 = !DILocalVariable(name: "fp", arg: 1, scope: !1368, file: !181, line: 39, type: !1371)
!1408 = !DILocalVariable(name: "advice", arg: 2, scope: !1368, file: !181, line: 39, type: !1352)
!1409 = !DILocation(line: 0, scope: !1368)
!1410 = !DILocation(line: 41, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1368, file: !181, line: 41, column: 7)
!1412 = !DILocation(line: 41, column: 7, scope: !1368)
!1413 = !DILocation(line: 42, column: 15, scope: !1411)
!1414 = !DILocation(line: 0, scope: !1348, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 42, column: 5, scope: !1411)
!1416 = !DILocation(line: 34, column: 3, scope: !1359, inlinedAt: !1415)
!1417 = !DILocation(line: 0, scope: !1359, inlinedAt: !1415)
!1418 = !DILocation(line: 42, column: 5, scope: !1411)
!1419 = !DILocation(line: 43, column: 1, scope: !1368)
!1420 = !DISubprogram(name: "fileno", scope: !722, file: !722, line: 785, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!47, !1390}
!1423 = distinct !DISubprogram(name: "freopen_safer", scope: !184, file: !184, line: 62, type: !1424, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1460)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1426, !30, !30, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1428, file: !727, line: 51, baseType: !47, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1428, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1428, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1428, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1428, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1428, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1428, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1428, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1428, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1428, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1428, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1428, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1428, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1428, file: !727, line: 70, baseType: !1444, size: 64, offset: 832)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1428, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1428, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1428, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1428, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1428, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1428, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1428, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1428, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1428, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1428, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1428, file: !727, line: 93, baseType: !1444, size: 64, offset: 1344)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1428, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1428, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1428, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1428, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1461 = !DILocalVariable(name: "name", arg: 1, scope: !1423, file: !184, line: 62, type: !30)
!1462 = !DILocalVariable(name: "mode", arg: 2, scope: !1423, file: !184, line: 62, type: !30)
!1463 = !DILocalVariable(name: "f", arg: 3, scope: !1423, file: !184, line: 62, type: !1426)
!1464 = !DILocalVariable(name: "protect_in", scope: !1423, file: !184, line: 70, type: !73)
!1465 = !DILocalVariable(name: "protect_out", scope: !1423, file: !184, line: 71, type: !73)
!1466 = !DILocalVariable(name: "protect_err", scope: !1423, file: !184, line: 72, type: !73)
!1467 = !DILocalVariable(name: "saved_errno", scope: !1423, file: !184, line: 73, type: !47)
!1468 = !DILocation(line: 0, scope: !1423)
!1469 = !DILocation(line: 75, column: 11, scope: !1423)
!1470 = !DILocation(line: 75, column: 3, scope: !1423)
!1471 = !DILocation(line: 78, column: 11, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !184, line: 78, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 76, column: 5)
!1474 = !DILocation(line: 78, column: 47, scope: !1472)
!1475 = !DILocation(line: 78, column: 11, scope: !1473)
!1476 = !DILocation(line: 82, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !184, line: 82, column: 11)
!1478 = !DILocation(line: 82, column: 47, scope: !1477)
!1479 = !DILocation(line: 82, column: 11, scope: !1473)
!1480 = !DILocation(line: 86, column: 11, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1473, file: !184, line: 86, column: 11)
!1482 = !DILocation(line: 86, column: 45, scope: !1481)
!1483 = !DILocation(line: 93, column: 18, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 93, column: 7)
!1485 = !DILocalVariable(name: "fd", arg: 1, scope: !1486, file: !184, line: 40, type: !47)
!1486 = distinct !DISubprogram(name: "protect_fd", scope: !184, file: !184, line: 40, type: !1487, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!73, !47}
!1489 = !{!1485, !1490}
!1490 = !DILocalVariable(name: "value", scope: !1486, file: !184, line: 42, type: !47)
!1491 = !DILocation(line: 0, scope: !1486, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 93, column: 22, scope: !1484)
!1493 = !DILocation(line: 42, column: 15, scope: !1486, inlinedAt: !1492)
!1494 = !DILocation(line: 43, column: 13, scope: !1495, inlinedAt: !1492)
!1495 = distinct !DILexicalBlock(scope: !1486, file: !184, line: 43, column: 7)
!1496 = !DILocation(line: 43, column: 7, scope: !1486, inlinedAt: !1492)
!1497 = !DILocation(line: 47, column: 11, scope: !1498, inlinedAt: !1492)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !184, line: 46, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !184, line: 45, column: 11)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !184, line: 44, column: 5)
!1501 = !DILocation(line: 48, column: 11, scope: !1498, inlinedAt: !1492)
!1502 = !DILocation(line: 48, column: 17, scope: !1498, inlinedAt: !1492)
!1503 = !DILocation(line: 49, column: 9, scope: !1498, inlinedAt: !1492)
!1504 = !DILocation(line: 93, column: 7, scope: !1423)
!1505 = !DILocation(line: 95, column: 12, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1484, file: !184, line: 95, column: 12)
!1507 = !DILocation(line: 95, column: 24, scope: !1506)
!1508 = !DILocation(line: 0, scope: !1486, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 95, column: 28, scope: !1506)
!1510 = !DILocation(line: 42, column: 15, scope: !1486, inlinedAt: !1509)
!1511 = !DILocation(line: 43, column: 13, scope: !1495, inlinedAt: !1509)
!1512 = !DILocation(line: 43, column: 7, scope: !1486, inlinedAt: !1509)
!1513 = !DILocation(line: 47, column: 11, scope: !1498, inlinedAt: !1509)
!1514 = !DILocation(line: 48, column: 11, scope: !1498, inlinedAt: !1509)
!1515 = !DILocation(line: 48, column: 17, scope: !1498, inlinedAt: !1509)
!1516 = !DILocation(line: 49, column: 9, scope: !1498, inlinedAt: !1509)
!1517 = !DILocation(line: 95, column: 12, scope: !1484)
!1518 = !DILocation(line: 97, column: 12, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1506, file: !184, line: 97, column: 12)
!1520 = !DILocation(line: 97, column: 24, scope: !1519)
!1521 = !DILocation(line: 0, scope: !1486, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 97, column: 28, scope: !1519)
!1523 = !DILocation(line: 42, column: 15, scope: !1486, inlinedAt: !1522)
!1524 = !DILocation(line: 43, column: 13, scope: !1495, inlinedAt: !1522)
!1525 = !DILocation(line: 43, column: 7, scope: !1486, inlinedAt: !1522)
!1526 = !DILocation(line: 47, column: 11, scope: !1498, inlinedAt: !1522)
!1527 = !DILocation(line: 48, column: 11, scope: !1498, inlinedAt: !1522)
!1528 = !DILocation(line: 48, column: 17, scope: !1498, inlinedAt: !1522)
!1529 = !DILocation(line: 49, column: 9, scope: !1498, inlinedAt: !1522)
!1530 = !DILocation(line: 97, column: 12, scope: !1506)
!1531 = !DILocation(line: 101, column: 17, scope: !1423)
!1532 = !DILocation(line: 102, column: 7, scope: !1423)
!1533 = !DILocation(line: 100, column: 9, scope: !1519)
!1534 = !DILocation(line: 0, scope: !1484)
!1535 = !DILocation(line: 102, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 102, column: 7)
!1537 = !DILocation(line: 103, column: 5, scope: !1536)
!1538 = !DILocation(line: 104, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 104, column: 7)
!1540 = !DILocation(line: 104, column: 7, scope: !1423)
!1541 = !DILocation(line: 105, column: 5, scope: !1539)
!1542 = !DILocation(line: 106, column: 7, scope: !1423)
!1543 = !DILocation(line: 107, column: 5, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 106, column: 7)
!1545 = !DILocation(line: 108, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1423, file: !184, line: 108, column: 7)
!1547 = !DILocation(line: 108, column: 7, scope: !1423)
!1548 = !DILocation(line: 109, column: 11, scope: !1546)
!1549 = !DILocation(line: 109, column: 5, scope: !1546)
!1550 = !DILocation(line: 110, column: 3, scope: !1423)
!1551 = !DISubprogram(name: "dup2", scope: !1552, file: !1552, line: 545, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1552 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!47, !47, !47}
!1555 = !DISubprogram(name: "open", scope: !1365, file: !1365, line: 196, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!47, !30, !47, null}
!1558 = !DISubprogram(name: "close", scope: !1552, file: !1552, line: 353, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!47, !47}
!1561 = !DISubprogram(name: "freopen", scope: !722, file: !722, line: 252, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1444, !30, !30, !1444}
!1564 = distinct !DISubprogram(name: "parse_long_options", scope: !83, file: !83, line: 45, type: !1565, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !1568)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !47, !784, !30, !30, !30, !1567, null}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1569 = !DILocalVariable(name: "argc", arg: 1, scope: !1564, file: !83, line: 45, type: !47)
!1570 = !DILocalVariable(name: "argv", arg: 2, scope: !1564, file: !83, line: 46, type: !784)
!1571 = !DILocalVariable(name: "command_name", arg: 3, scope: !1564, file: !83, line: 47, type: !30)
!1572 = !DILocalVariable(name: "package", arg: 4, scope: !1564, file: !83, line: 48, type: !30)
!1573 = !DILocalVariable(name: "version", arg: 5, scope: !1564, file: !83, line: 49, type: !30)
!1574 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1564, file: !83, line: 50, type: !1567)
!1575 = !DILocalVariable(name: "c", scope: !1564, file: !83, line: 53, type: !47)
!1576 = !DILocalVariable(name: "saved_opterr", scope: !1564, file: !83, line: 54, type: !47)
!1577 = !DILocalVariable(name: "authors", scope: !1578, file: !83, line: 72, type: !1582)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !83, line: 71, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !83, line: 65, column: 9)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !83, line: 63, column: 5)
!1581 = distinct !DILexicalBlock(scope: !1564, file: !83, line: 61, column: 7)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 52, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1584, line: 32, baseType: !1585)
!1584 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !83, baseType: !1586)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1587, size: 192, elements: !756)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1587, file: !83, line: 72, baseType: !7, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1587, file: !83, line: 72, baseType: !7, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1587, file: !83, line: 72, baseType: !33, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1587, file: !83, line: 72, baseType: !33, size: 64, offset: 128)
!1593 = !DILocation(line: 0, scope: !1564)
!1594 = !DILocation(line: 56, column: 18, scope: !1564)
!1595 = !DILocation(line: 59, column: 10, scope: !1564)
!1596 = !DILocation(line: 61, column: 12, scope: !1581)
!1597 = !DILocation(line: 62, column: 7, scope: !1581)
!1598 = !DILocation(line: 62, column: 15, scope: !1581)
!1599 = !DILocation(line: 61, column: 7, scope: !1564)
!1600 = !DILocation(line: 67, column: 11, scope: !1579)
!1601 = !DILocation(line: 68, column: 11, scope: !1579)
!1602 = !DILocation(line: 72, column: 13, scope: !1578)
!1603 = !DILocation(line: 72, column: 21, scope: !1578)
!1604 = !DILocation(line: 73, column: 13, scope: !1578)
!1605 = !DILocation(line: 74, column: 29, scope: !1578)
!1606 = !DILocation(line: 74, column: 13, scope: !1578)
!1607 = !DILocation(line: 75, column: 13, scope: !1578)
!1608 = !DILocation(line: 85, column: 10, scope: !1564)
!1609 = !DILocation(line: 89, column: 10, scope: !1564)
!1610 = !DILocation(line: 90, column: 1, scope: !1564)
!1611 = !DISubprogram(name: "getopt_long", scope: !88, file: !88, line: 66, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!47, !47, !1614, !30, !1616, !93}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1617 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !83, file: !83, line: 98, type: !1618, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !47, !784, !30, !30, !30, !73, !1567, null}
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1621 = !DILocalVariable(name: "argc", arg: 1, scope: !1617, file: !83, line: 98, type: !47)
!1622 = !DILocalVariable(name: "argv", arg: 2, scope: !1617, file: !83, line: 99, type: !784)
!1623 = !DILocalVariable(name: "command_name", arg: 3, scope: !1617, file: !83, line: 100, type: !30)
!1624 = !DILocalVariable(name: "package", arg: 4, scope: !1617, file: !83, line: 101, type: !30)
!1625 = !DILocalVariable(name: "version", arg: 5, scope: !1617, file: !83, line: 102, type: !30)
!1626 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1617, file: !83, line: 103, type: !73)
!1627 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1617, file: !83, line: 104, type: !1567)
!1628 = !DILocalVariable(name: "c", scope: !1617, file: !83, line: 107, type: !47)
!1629 = !DILocalVariable(name: "saved_opterr", scope: !1617, file: !83, line: 108, type: !47)
!1630 = !DILocalVariable(name: "optstring", scope: !1617, file: !83, line: 113, type: !30)
!1631 = !DILocalVariable(name: "authors", scope: !1632, file: !83, line: 125, type: !1582)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !83, line: 124, column: 11)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !83, line: 118, column: 9)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !83, line: 116, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !83, line: 115, column: 7)
!1636 = !DILocation(line: 0, scope: !1617)
!1637 = !DILocation(line: 108, column: 22, scope: !1617)
!1638 = !DILocation(line: 111, column: 10, scope: !1617)
!1639 = !DILocation(line: 113, column: 27, scope: !1617)
!1640 = !DILocation(line: 115, column: 12, scope: !1635)
!1641 = !DILocation(line: 115, column: 7, scope: !1617)
!1642 = !DILocation(line: 125, column: 13, scope: !1632)
!1643 = !DILocation(line: 125, column: 21, scope: !1632)
!1644 = !DILocation(line: 126, column: 13, scope: !1632)
!1645 = !DILocation(line: 127, column: 29, scope: !1632)
!1646 = !DILocation(line: 127, column: 13, scope: !1632)
!1647 = !DILocation(line: 128, column: 13, scope: !1632)
!1648 = !DILocation(line: 132, column: 26, scope: !1633)
!1649 = !DILocation(line: 133, column: 11, scope: !1633)
!1650 = !DILocation(line: 0, scope: !1633)
!1651 = !DILocation(line: 138, column: 10, scope: !1617)
!1652 = !DILocation(line: 139, column: 1, scope: !1617)
!1653 = distinct !DISubprogram(name: "set_program_name", scope: !100, file: !100, line: 39, type: !667, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DILocalVariable(name: "argv0", arg: 1, scope: !1653, file: !100, line: 39, type: !30)
!1656 = !DILocalVariable(name: "slash", scope: !1653, file: !100, line: 46, type: !30)
!1657 = !DILocalVariable(name: "base", scope: !1653, file: !100, line: 47, type: !30)
!1658 = !DILocation(line: 0, scope: !1653)
!1659 = !DILocation(line: 51, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !100, line: 51, column: 7)
!1661 = !DILocation(line: 51, column: 7, scope: !1653)
!1662 = !DILocation(line: 55, column: 14, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 52, column: 5)
!1664 = !DILocation(line: 54, column: 7, scope: !1663)
!1665 = !DILocation(line: 56, column: 7, scope: !1663)
!1666 = !DILocation(line: 59, column: 11, scope: !1653)
!1667 = !DILocation(line: 60, column: 17, scope: !1653)
!1668 = !DILocation(line: 60, column: 11, scope: !1653)
!1669 = !DILocation(line: 61, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1653, file: !100, line: 61, column: 7)
!1671 = !DILocation(line: 61, column: 20, scope: !1670)
!1672 = !DILocation(line: 61, column: 25, scope: !1670)
!1673 = !DILocation(line: 61, column: 42, scope: !1670)
!1674 = !DILocation(line: 61, column: 28, scope: !1670)
!1675 = !DILocation(line: 61, column: 61, scope: !1670)
!1676 = !DILocation(line: 61, column: 7, scope: !1653)
!1677 = !DILocation(line: 64, column: 11, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !100, line: 64, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1670, file: !100, line: 62, column: 5)
!1680 = !DILocation(line: 64, column: 36, scope: !1678)
!1681 = !DILocation(line: 64, column: 11, scope: !1679)
!1682 = !DILocation(line: 66, column: 24, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !100, line: 65, column: 9)
!1684 = !DILocation(line: 70, column: 41, scope: !1683)
!1685 = !DILocation(line: 72, column: 9, scope: !1683)
!1686 = !DILocation(line: 84, column: 16, scope: !1653)
!1687 = !DILocation(line: 90, column: 27, scope: !1653)
!1688 = !DILocation(line: 92, column: 1, scope: !1653)
!1689 = distinct !DISubprogram(name: "clone_quoting_options", scope: !107, file: !107, line: 122, type: !1690, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1693)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1692, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1689, file: !107, line: 122, type: !1692)
!1695 = !DILocalVariable(name: "e", scope: !1689, file: !107, line: 124, type: !47)
!1696 = !DILocalVariable(name: "p", scope: !1689, file: !107, line: 125, type: !1692)
!1697 = !DILocation(line: 0, scope: !1689)
!1698 = !DILocation(line: 124, column: 11, scope: !1689)
!1699 = !DILocation(line: 125, column: 40, scope: !1689)
!1700 = !DILocation(line: 125, column: 31, scope: !1689)
!1701 = !DILocation(line: 127, column: 9, scope: !1689)
!1702 = !DILocation(line: 128, column: 3, scope: !1689)
!1703 = distinct !DISubprogram(name: "get_quoting_style", scope: !107, file: !107, line: 133, type: !1704, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1708)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!5, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "o", arg: 1, scope: !1703, file: !107, line: 133, type: !1706)
!1710 = !DILocation(line: 0, scope: !1703)
!1711 = !DILocation(line: 135, column: 11, scope: !1703)
!1712 = !DILocation(line: 135, column: 46, scope: !1703)
!1713 = !{!1714, !652, i64 0}
!1714 = !{!"quoting_options", !652, i64 0, !801, i64 4, !652, i64 8, !651, i64 40, !651, i64 48}
!1715 = !DILocation(line: 135, column: 3, scope: !1703)
!1716 = distinct !DISubprogram(name: "set_quoting_style", scope: !107, file: !107, line: 141, type: !1717, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1692, !5}
!1719 = !{!1720, !1721}
!1720 = !DILocalVariable(name: "o", arg: 1, scope: !1716, file: !107, line: 141, type: !1692)
!1721 = !DILocalVariable(name: "s", arg: 2, scope: !1716, file: !107, line: 141, type: !5)
!1722 = !DILocation(line: 0, scope: !1716)
!1723 = !DILocation(line: 143, column: 4, scope: !1716)
!1724 = !DILocation(line: 143, column: 39, scope: !1716)
!1725 = !DILocation(line: 143, column: 45, scope: !1716)
!1726 = !DILocation(line: 144, column: 1, scope: !1716)
!1727 = distinct !DISubprogram(name: "set_char_quoting", scope: !107, file: !107, line: 152, type: !1728, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!47, !1692, !32, !47}
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1737, !1738}
!1731 = !DILocalVariable(name: "o", arg: 1, scope: !1727, file: !107, line: 152, type: !1692)
!1732 = !DILocalVariable(name: "c", arg: 2, scope: !1727, file: !107, line: 152, type: !32)
!1733 = !DILocalVariable(name: "i", arg: 3, scope: !1727, file: !107, line: 152, type: !47)
!1734 = !DILocalVariable(name: "uc", scope: !1727, file: !107, line: 154, type: !206)
!1735 = !DILocalVariable(name: "p", scope: !1727, file: !107, line: 155, type: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1737 = !DILocalVariable(name: "shift", scope: !1727, file: !107, line: 157, type: !47)
!1738 = !DILocalVariable(name: "r", scope: !1727, file: !107, line: 158, type: !47)
!1739 = !DILocation(line: 0, scope: !1727)
!1740 = !DILocation(line: 156, column: 6, scope: !1727)
!1741 = !DILocation(line: 156, column: 62, scope: !1727)
!1742 = !DILocation(line: 156, column: 57, scope: !1727)
!1743 = !DILocation(line: 157, column: 15, scope: !1727)
!1744 = !DILocation(line: 158, column: 12, scope: !1727)
!1745 = !DILocation(line: 158, column: 15, scope: !1727)
!1746 = !DILocation(line: 158, column: 25, scope: !1727)
!1747 = !DILocation(line: 159, column: 13, scope: !1727)
!1748 = !DILocation(line: 159, column: 18, scope: !1727)
!1749 = !DILocation(line: 159, column: 23, scope: !1727)
!1750 = !DILocation(line: 159, column: 6, scope: !1727)
!1751 = !DILocation(line: 160, column: 3, scope: !1727)
!1752 = distinct !DISubprogram(name: "set_quoting_flags", scope: !107, file: !107, line: 168, type: !1753, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!47, !1692, !47}
!1755 = !{!1756, !1757, !1758}
!1756 = !DILocalVariable(name: "o", arg: 1, scope: !1752, file: !107, line: 168, type: !1692)
!1757 = !DILocalVariable(name: "i", arg: 2, scope: !1752, file: !107, line: 168, type: !47)
!1758 = !DILocalVariable(name: "r", scope: !1752, file: !107, line: 170, type: !47)
!1759 = !DILocation(line: 0, scope: !1752)
!1760 = !DILocation(line: 171, column: 8, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1752, file: !107, line: 171, column: 7)
!1762 = !DILocation(line: 171, column: 7, scope: !1752)
!1763 = !DILocation(line: 173, column: 10, scope: !1752)
!1764 = !{!1714, !801, i64 4}
!1765 = !DILocation(line: 174, column: 12, scope: !1752)
!1766 = !DILocation(line: 175, column: 3, scope: !1752)
!1767 = distinct !DISubprogram(name: "set_custom_quoting", scope: !107, file: !107, line: 179, type: !1768, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1692, !30, !30}
!1770 = !{!1771, !1772, !1773}
!1771 = !DILocalVariable(name: "o", arg: 1, scope: !1767, file: !107, line: 179, type: !1692)
!1772 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1767, file: !107, line: 180, type: !30)
!1773 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1767, file: !107, line: 180, type: !30)
!1774 = !DILocation(line: 0, scope: !1767)
!1775 = !DILocation(line: 182, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1767, file: !107, line: 182, column: 7)
!1777 = !DILocation(line: 182, column: 7, scope: !1767)
!1778 = !DILocation(line: 184, column: 6, scope: !1767)
!1779 = !DILocation(line: 184, column: 12, scope: !1767)
!1780 = !DILocation(line: 185, column: 8, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1767, file: !107, line: 185, column: 7)
!1782 = !DILocation(line: 185, column: 19, scope: !1781)
!1783 = !DILocation(line: 186, column: 5, scope: !1781)
!1784 = !DILocation(line: 187, column: 6, scope: !1767)
!1785 = !DILocation(line: 187, column: 17, scope: !1767)
!1786 = !{!1714, !651, i64 40}
!1787 = !DILocation(line: 188, column: 6, scope: !1767)
!1788 = !DILocation(line: 188, column: 18, scope: !1767)
!1789 = !{!1714, !651, i64 48}
!1790 = !DILocation(line: 189, column: 1, scope: !1767)
!1791 = distinct !DISubprogram(name: "quotearg_buffer", scope: !107, file: !107, line: 784, type: !1792, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!34, !102, !34, !30, !34, !1706}
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1795 = !DILocalVariable(name: "buffer", arg: 1, scope: !1791, file: !107, line: 784, type: !102)
!1796 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1791, file: !107, line: 784, type: !34)
!1797 = !DILocalVariable(name: "arg", arg: 3, scope: !1791, file: !107, line: 785, type: !30)
!1798 = !DILocalVariable(name: "argsize", arg: 4, scope: !1791, file: !107, line: 785, type: !34)
!1799 = !DILocalVariable(name: "o", arg: 5, scope: !1791, file: !107, line: 786, type: !1706)
!1800 = !DILocalVariable(name: "p", scope: !1791, file: !107, line: 788, type: !1706)
!1801 = !DILocalVariable(name: "e", scope: !1791, file: !107, line: 789, type: !47)
!1802 = !DILocalVariable(name: "r", scope: !1791, file: !107, line: 790, type: !34)
!1803 = !DILocation(line: 0, scope: !1791)
!1804 = !DILocation(line: 788, column: 37, scope: !1791)
!1805 = !DILocation(line: 789, column: 11, scope: !1791)
!1806 = !DILocation(line: 791, column: 43, scope: !1791)
!1807 = !DILocation(line: 791, column: 53, scope: !1791)
!1808 = !DILocation(line: 791, column: 60, scope: !1791)
!1809 = !DILocation(line: 792, column: 43, scope: !1791)
!1810 = !DILocation(line: 792, column: 58, scope: !1791)
!1811 = !DILocation(line: 790, column: 14, scope: !1791)
!1812 = !DILocation(line: 793, column: 9, scope: !1791)
!1813 = !DILocation(line: 794, column: 3, scope: !1791)
!1814 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !107, file: !107, line: 256, type: !1815, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1819)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!34, !102, !34, !30, !34, !5, !47, !1817, !30, !30}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1844, !1845, !1846, !1847, !1848, !1851, !1852, !1870, !1873, !1874, !1881, !1884, !1885, !1886, !1887, !1888, !1889}
!1820 = !DILocalVariable(name: "buffer", arg: 1, scope: !1814, file: !107, line: 256, type: !102)
!1821 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1814, file: !107, line: 256, type: !34)
!1822 = !DILocalVariable(name: "arg", arg: 3, scope: !1814, file: !107, line: 257, type: !30)
!1823 = !DILocalVariable(name: "argsize", arg: 4, scope: !1814, file: !107, line: 257, type: !34)
!1824 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1814, file: !107, line: 258, type: !5)
!1825 = !DILocalVariable(name: "flags", arg: 6, scope: !1814, file: !107, line: 258, type: !47)
!1826 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1814, file: !107, line: 259, type: !1817)
!1827 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1814, file: !107, line: 260, type: !30)
!1828 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1814, file: !107, line: 261, type: !30)
!1829 = !DILocalVariable(name: "i", scope: !1814, file: !107, line: 263, type: !34)
!1830 = !DILocalVariable(name: "len", scope: !1814, file: !107, line: 264, type: !34)
!1831 = !DILocalVariable(name: "orig_buffersize", scope: !1814, file: !107, line: 265, type: !34)
!1832 = !DILocalVariable(name: "quote_string", scope: !1814, file: !107, line: 266, type: !30)
!1833 = !DILocalVariable(name: "quote_string_len", scope: !1814, file: !107, line: 267, type: !34)
!1834 = !DILocalVariable(name: "backslash_escapes", scope: !1814, file: !107, line: 268, type: !73)
!1835 = !DILocalVariable(name: "unibyte_locale", scope: !1814, file: !107, line: 269, type: !73)
!1836 = !DILocalVariable(name: "elide_outer_quotes", scope: !1814, file: !107, line: 270, type: !73)
!1837 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1814, file: !107, line: 271, type: !73)
!1838 = !DILocalVariable(name: "encountered_single_quote", scope: !1814, file: !107, line: 272, type: !73)
!1839 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1814, file: !107, line: 273, type: !73)
!1840 = !DILocalVariable(name: "c", scope: !1841, file: !107, line: 402, type: !206)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !107, line: 401, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !107, line: 400, column: 3)
!1843 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 400, column: 3)
!1844 = !DILocalVariable(name: "esc", scope: !1841, file: !107, line: 403, type: !206)
!1845 = !DILocalVariable(name: "is_right_quote", scope: !1841, file: !107, line: 404, type: !73)
!1846 = !DILocalVariable(name: "escaping", scope: !1841, file: !107, line: 405, type: !73)
!1847 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1841, file: !107, line: 406, type: !73)
!1848 = !DILocalVariable(name: "m", scope: !1849, file: !107, line: 610, type: !34)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 608, column: 11)
!1850 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 426, column: 9)
!1851 = !DILocalVariable(name: "printable", scope: !1849, file: !107, line: 612, type: !73)
!1852 = !DILocalVariable(name: "mbstate", scope: !1853, file: !107, line: 621, type: !1855)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !107, line: 620, column: 15)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !107, line: 614, column: 17)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1856, line: 6, baseType: !1857)
!1856 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1858, line: 21, baseType: !1859)
!1858 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1858, line: 13, size: 64, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1859, file: !1858, line: 15, baseType: !47, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1859, file: !1858, line: 20, baseType: !1863, size: 32, offset: 32)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1858, line: 16, size: 32, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1863, file: !1858, line: 18, baseType: !7, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1863, file: !1858, line: 19, baseType: !1867, size: 32)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 4)
!1870 = !DILocalVariable(name: "w", scope: !1871, file: !107, line: 631, type: !1872)
!1871 = distinct !DILexicalBlock(scope: !1853, file: !107, line: 630, column: 19)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !35, line: 74, baseType: !47)
!1873 = !DILocalVariable(name: "bytes", scope: !1871, file: !107, line: 632, type: !34)
!1874 = !DILocalVariable(name: "j", scope: !1875, file: !107, line: 657, type: !34)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !107, line: 656, column: 27)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !107, line: 654, column: 29)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !107, line: 649, column: 23)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !107, line: 641, column: 30)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !107, line: 636, column: 30)
!1880 = distinct !DILexicalBlock(scope: !1871, file: !107, line: 634, column: 25)
!1881 = !DILocalVariable(name: "ilim", scope: !1882, file: !107, line: 684, type: !34)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !107, line: 681, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1849, file: !107, line: 680, column: 17)
!1884 = !DILabel(scope: !1814, name: "process_input", file: !107, line: 314)
!1885 = !DILabel(scope: !1850, name: "c_and_shell_escape", file: !107, line: 512)
!1886 = !DILabel(scope: !1850, name: "c_escape", file: !107, line: 517)
!1887 = !DILabel(scope: !1841, name: "store_escape", file: !107, line: 719)
!1888 = !DILabel(scope: !1841, name: "store_c", file: !107, line: 722)
!1889 = !DILabel(scope: !1814, name: "force_outer_quoting_style", file: !107, line: 763)
!1890 = !DILocation(line: 0, scope: !1814)
!1891 = !DILocation(line: 269, column: 25, scope: !1814)
!1892 = !DILocation(line: 269, column: 36, scope: !1814)
!1893 = !DILocation(line: 270, column: 8, scope: !1814)
!1894 = !DILocation(line: 273, column: 3, scope: !1814)
!1895 = !DILocation(line: 265, column: 10, scope: !1814)
!1896 = !DILocation(line: 266, column: 15, scope: !1814)
!1897 = !DILocation(line: 267, column: 10, scope: !1814)
!1898 = !DILocation(line: 268, column: 8, scope: !1814)
!1899 = !DILocation(line: 271, column: 8, scope: !1814)
!1900 = !DILocation(line: 272, column: 8, scope: !1814)
!1901 = !DILocation(line: 273, column: 8, scope: !1814)
!1902 = !DILocation(line: 314, column: 2, scope: !1814)
!1903 = !DILocation(line: 316, column: 3, scope: !1814)
!1904 = !DILocation(line: 323, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 317, column: 5)
!1906 = !DILocation(line: 323, column: 12, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !107, line: 323, column: 11)
!1908 = !DILocation(line: 324, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !107, line: 324, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !107, line: 324, column: 9)
!1911 = !DILocation(line: 324, column: 9, scope: !1910)
!1912 = !{!652, !652, i64 0}
!1913 = !DILocation(line: 362, column: 26, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !107, line: 340, column: 11)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !107, line: 339, column: 13)
!1916 = distinct !DILexicalBlock(scope: !1905, file: !107, line: 338, column: 7)
!1917 = !DILocation(line: 363, column: 27, scope: !1914)
!1918 = !DILocation(line: 364, column: 11, scope: !1914)
!1919 = !DILocation(line: 365, column: 14, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !107, line: 365, column: 13)
!1921 = !DILocation(line: 365, column: 13, scope: !1916)
!1922 = !DILocation(line: 366, column: 43, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !107, line: 366, column: 11)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !107, line: 366, column: 11)
!1925 = !DILocation(line: 366, column: 11, scope: !1924)
!1926 = !DILocation(line: 367, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !107, line: 367, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !107, line: 367, column: 13)
!1929 = !DILocation(line: 367, column: 13, scope: !1928)
!1930 = !DILocation(line: 366, column: 70, scope: !1923)
!1931 = distinct !{!1931, !1925, !1932, !697}
!1932 = !DILocation(line: 367, column: 13, scope: !1924)
!1933 = !DILocation(line: 264, column: 10, scope: !1814)
!1934 = !DILocation(line: 370, column: 28, scope: !1916)
!1935 = !DILocation(line: 372, column: 7, scope: !1905)
!1936 = !DILocation(line: 376, column: 7, scope: !1905)
!1937 = !DILocation(line: 379, column: 7, scope: !1905)
!1938 = !DILocation(line: 381, column: 12, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1905, file: !107, line: 381, column: 11)
!1940 = !DILocation(line: 381, column: 11, scope: !1905)
!1941 = !DILocation(line: 386, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1905, file: !107, line: 386, column: 11)
!1943 = !DILocation(line: 386, column: 11, scope: !1905)
!1944 = !DILocation(line: 387, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !107, line: 387, column: 9)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !107, line: 387, column: 9)
!1947 = !DILocation(line: 387, column: 9, scope: !1946)
!1948 = !DILocation(line: 394, column: 7, scope: !1905)
!1949 = !DILocation(line: 397, column: 7, scope: !1905)
!1950 = !DILocation(line: 400, column: 8, scope: !1843)
!1951 = !DILocation(line: 0, scope: !1843)
!1952 = !DILocation(line: 400, column: 27, scope: !1842)
!1953 = !DILocation(line: 400, column: 19, scope: !1842)
!1954 = !DILocation(line: 400, column: 41, scope: !1842)
!1955 = !DILocation(line: 400, column: 48, scope: !1842)
!1956 = !DILocation(line: 400, column: 3, scope: !1843)
!1957 = !DILocation(line: 400, column: 60, scope: !1842)
!1958 = !DILocation(line: 0, scope: !1841)
!1959 = !DILocation(line: 409, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 408, column: 11)
!1961 = !DILocation(line: 411, column: 17, scope: !1960)
!1962 = !DILocation(line: 412, column: 39, scope: !1960)
!1963 = !DILocation(line: 416, column: 32, scope: !1960)
!1964 = !DILocation(line: 412, column: 19, scope: !1960)
!1965 = !DILocation(line: 412, column: 15, scope: !1960)
!1966 = !DILocation(line: 417, column: 11, scope: !1960)
!1967 = !DILocation(line: 417, column: 26, scope: !1960)
!1968 = !DILocation(line: 417, column: 14, scope: !1960)
!1969 = !DILocation(line: 417, column: 63, scope: !1960)
!1970 = !DILocation(line: 408, column: 11, scope: !1841)
!1971 = !DILocation(line: 424, column: 11, scope: !1841)
!1972 = !DILocation(line: 425, column: 7, scope: !1841)
!1973 = !DILocation(line: 428, column: 15, scope: !1850)
!1974 = !DILocation(line: 430, column: 15, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !107, line: 430, column: 15)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !107, line: 429, column: 13)
!1977 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 428, column: 15)
!1978 = !DILocation(line: 430, column: 15, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !107, line: 430, column: 15)
!1980 = !DILocation(line: 430, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !107, line: 430, column: 15)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !107, line: 430, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !107, line: 430, column: 15)
!1984 = !DILocation(line: 430, column: 15, scope: !1982)
!1985 = !DILocation(line: 430, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !107, line: 430, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !107, line: 430, column: 15)
!1988 = !DILocation(line: 430, column: 15, scope: !1987)
!1989 = !DILocation(line: 430, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 430, column: 15)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !107, line: 430, column: 15)
!1992 = !DILocation(line: 430, column: 15, scope: !1991)
!1993 = !DILocation(line: 430, column: 15, scope: !1983)
!1994 = !DILocation(line: 430, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !107, line: 430, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1975, file: !107, line: 430, column: 15)
!1997 = !DILocation(line: 430, column: 15, scope: !1996)
!1998 = !DILocation(line: 438, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1976, file: !107, line: 437, column: 19)
!2000 = !DILocation(line: 438, column: 48, scope: !1999)
!2001 = !DILocation(line: 438, column: 59, scope: !1999)
!2002 = !DILocation(line: 440, column: 19, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !107, line: 440, column: 19)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !107, line: 440, column: 19)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !107, line: 439, column: 17)
!2006 = !DILocation(line: 440, column: 19, scope: !2004)
!2007 = !DILocation(line: 441, column: 19, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !107, line: 441, column: 19)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !107, line: 441, column: 19)
!2010 = !DILocation(line: 441, column: 19, scope: !2009)
!2011 = !DILocation(line: 442, column: 17, scope: !2005)
!2012 = !DILocation(line: 449, column: 20, scope: !1977)
!2013 = !DILocation(line: 454, column: 11, scope: !1850)
!2014 = !DILocation(line: 457, column: 19, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 455, column: 13)
!2016 = !DILocation(line: 463, column: 19, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2015, file: !107, line: 462, column: 19)
!2018 = !DILocation(line: 463, column: 47, scope: !2017)
!2019 = !DILocation(line: 463, column: 41, scope: !2017)
!2020 = !DILocation(line: 463, column: 52, scope: !2017)
!2021 = !DILocation(line: 462, column: 19, scope: !2015)
!2022 = !DILocation(line: 464, column: 25, scope: !2017)
!2023 = !DILocation(line: 464, column: 17, scope: !2017)
!2024 = !DILocation(line: 471, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !107, line: 465, column: 19)
!2026 = !DILocation(line: 475, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !107, line: 475, column: 21)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !107, line: 475, column: 21)
!2029 = !DILocation(line: 475, column: 21, scope: !2028)
!2030 = !DILocation(line: 476, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !107, line: 476, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2025, file: !107, line: 476, column: 21)
!2033 = !DILocation(line: 476, column: 21, scope: !2032)
!2034 = !DILocation(line: 477, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !107, line: 477, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2025, file: !107, line: 477, column: 21)
!2037 = !DILocation(line: 477, column: 21, scope: !2036)
!2038 = !DILocation(line: 478, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !107, line: 478, column: 21)
!2040 = distinct !DILexicalBlock(scope: !2025, file: !107, line: 478, column: 21)
!2041 = !DILocation(line: 478, column: 21, scope: !2040)
!2042 = !DILocation(line: 479, column: 21, scope: !2025)
!2043 = !DILocation(line: 492, column: 31, scope: !1850)
!2044 = !DILocation(line: 493, column: 31, scope: !1850)
!2045 = !DILocation(line: 495, column: 31, scope: !1850)
!2046 = !DILocation(line: 496, column: 31, scope: !1850)
!2047 = !DILocation(line: 497, column: 31, scope: !1850)
!2048 = !DILocation(line: 500, column: 15, scope: !1850)
!2049 = !DILocation(line: 502, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !107, line: 501, column: 13)
!2051 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 500, column: 15)
!2052 = !DILocation(line: 509, column: 33, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 509, column: 15)
!2054 = !DILocation(line: 0, scope: !1850)
!2055 = !DILocation(line: 512, column: 9, scope: !1850)
!2056 = !DILocation(line: 514, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 513, column: 15)
!2058 = !DILocation(line: 517, column: 9, scope: !1850)
!2059 = !DILocation(line: 518, column: 15, scope: !1850)
!2060 = !DILocation(line: 526, column: 15, scope: !1850)
!2061 = !DILocation(line: 526, column: 40, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 526, column: 15)
!2063 = !DILocation(line: 526, column: 47, scope: !2062)
!2064 = !DILocation(line: 526, column: 18, scope: !2062)
!2065 = !DILocation(line: 530, column: 17, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 530, column: 15)
!2067 = !DILocation(line: 530, column: 15, scope: !1850)
!2068 = !DILocation(line: 535, column: 11, scope: !1850)
!2069 = !DILocation(line: 549, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 548, column: 15)
!2071 = !DILocation(line: 556, column: 15, scope: !1850)
!2072 = !DILocation(line: 558, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !107, line: 557, column: 13)
!2074 = distinct !DILexicalBlock(scope: !1850, file: !107, line: 556, column: 15)
!2075 = !DILocation(line: 561, column: 19, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !107, line: 561, column: 19)
!2077 = !DILocation(line: 561, column: 30, scope: !2076)
!2078 = !DILocation(line: 570, column: 15, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !107, line: 570, column: 15)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !107, line: 570, column: 15)
!2081 = !DILocation(line: 570, column: 15, scope: !2080)
!2082 = !DILocation(line: 571, column: 15, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !107, line: 571, column: 15)
!2084 = distinct !DILexicalBlock(scope: !2073, file: !107, line: 571, column: 15)
!2085 = !DILocation(line: 571, column: 15, scope: !2084)
!2086 = !DILocation(line: 572, column: 15, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !107, line: 572, column: 15)
!2088 = distinct !DILexicalBlock(scope: !2073, file: !107, line: 572, column: 15)
!2089 = !DILocation(line: 572, column: 15, scope: !2088)
!2090 = !DILocation(line: 574, column: 13, scope: !2073)
!2091 = !DILocation(line: 614, column: 17, scope: !1849)
!2092 = !DILocation(line: 0, scope: !1849)
!2093 = !DILocation(line: 617, column: 29, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1854, file: !107, line: 615, column: 15)
!2095 = !{!2096, !2096, i64 0}
!2096 = !{!"short", !652, i64 0}
!2097 = !DILocation(line: 617, column: 27, scope: !2094)
!2098 = !DILocation(line: 678, column: 40, scope: !1849)
!2099 = !DILocation(line: 680, column: 23, scope: !1883)
!2100 = !DILocation(line: 621, column: 17, scope: !1853)
!2101 = !DILocation(line: 621, column: 27, scope: !1853)
!2102 = !DILocalVariable(name: "__dest", arg: 1, scope: !2103, file: !2104, line: 57, type: !33)
!2103 = distinct !DISubprogram(name: "memset", scope: !2104, file: !2104, line: 57, type: !2105, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2107)
!2104 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!33, !33, !47, !34}
!2107 = !{!2102, !2108, !2109}
!2108 = !DILocalVariable(name: "__ch", arg: 2, scope: !2103, file: !2104, line: 57, type: !47)
!2109 = !DILocalVariable(name: "__len", arg: 3, scope: !2103, file: !2104, line: 57, type: !34)
!2110 = !DILocation(line: 0, scope: !2103, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 622, column: 17, scope: !1853)
!2112 = !DILocation(line: 59, column: 10, scope: !2103, inlinedAt: !2111)
!2113 = !DILocation(line: 626, column: 29, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1853, file: !107, line: 626, column: 21)
!2115 = !DILocation(line: 626, column: 21, scope: !1853)
!2116 = !DILocation(line: 627, column: 29, scope: !2114)
!2117 = !DILocation(line: 627, column: 19, scope: !2114)
!2118 = !DILocation(line: 629, column: 17, scope: !1853)
!2119 = !DILocation(line: 624, column: 19, scope: !1853)
!2120 = !DILocation(line: 625, column: 27, scope: !1853)
!2121 = !DILocation(line: 631, column: 21, scope: !1871)
!2122 = !DILocation(line: 632, column: 56, scope: !1871)
!2123 = !DILocation(line: 632, column: 50, scope: !1871)
!2124 = !DILocation(line: 633, column: 53, scope: !1871)
!2125 = !DILocation(line: 0, scope: !1871)
!2126 = !DILocation(line: 632, column: 36, scope: !1871)
!2127 = !DILocation(line: 634, column: 25, scope: !1871)
!2128 = !DILocation(line: 644, column: 38, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1878, file: !107, line: 642, column: 23)
!2130 = !DILocation(line: 644, column: 48, scope: !2129)
!2131 = !DILocation(line: 644, column: 25, scope: !2129)
!2132 = !DILocation(line: 644, column: 51, scope: !2129)
!2133 = !DILocation(line: 645, column: 28, scope: !2129)
!2134 = !DILocation(line: 644, column: 34, scope: !2129)
!2135 = distinct !{!2135, !2131, !2133, !697}
!2136 = !DILocation(line: 655, column: 29, scope: !1876)
!2137 = !DILocation(line: 0, scope: !1875)
!2138 = !DILocation(line: 659, column: 49, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !107, line: 658, column: 29)
!2140 = distinct !DILexicalBlock(scope: !1875, file: !107, line: 658, column: 29)
!2141 = !DILocation(line: 659, column: 39, scope: !2139)
!2142 = !DILocation(line: 659, column: 31, scope: !2139)
!2143 = !DILocation(line: 658, column: 53, scope: !2139)
!2144 = !DILocation(line: 658, column: 43, scope: !2139)
!2145 = !DILocation(line: 658, column: 29, scope: !2140)
!2146 = distinct !{!2146, !2145, !2147, !697}
!2147 = !DILocation(line: 667, column: 33, scope: !2140)
!2148 = !DILocation(line: 674, column: 19, scope: !1853)
!2149 = !DILocation(line: 670, column: 41, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1877, file: !107, line: 670, column: 29)
!2151 = !DILocation(line: 670, column: 31, scope: !2150)
!2152 = !DILocation(line: 670, column: 29, scope: !1877)
!2153 = !DILocation(line: 672, column: 27, scope: !1877)
!2154 = !DILocation(line: 675, column: 26, scope: !1853)
!2155 = !DILocation(line: 675, column: 24, scope: !1853)
!2156 = !DILocation(line: 674, column: 19, scope: !1871)
!2157 = distinct !{!2157, !2118, !2158, !697}
!2158 = !DILocation(line: 675, column: 44, scope: !1853)
!2159 = !DILocation(line: 676, column: 15, scope: !1854)
!2160 = !DILocation(line: 680, column: 19, scope: !1883)
!2161 = !DILocation(line: 680, column: 45, scope: !1883)
!2162 = !DILocation(line: 684, column: 33, scope: !1882)
!2163 = !DILocation(line: 0, scope: !1882)
!2164 = !DILocation(line: 686, column: 17, scope: !1882)
!2165 = !DILocation(line: 405, column: 12, scope: !1841)
!2166 = !DILocation(line: 688, column: 43, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !107, line: 688, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !107, line: 687, column: 19)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !107, line: 686, column: 17)
!2170 = distinct !DILexicalBlock(scope: !1882, file: !107, line: 686, column: 17)
!2171 = !DILocation(line: 690, column: 25, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !107, line: 690, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2167, file: !107, line: 689, column: 23)
!2174 = !DILocation(line: 690, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !107, line: 690, column: 25)
!2176 = !DILocation(line: 690, column: 25, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !107, line: 690, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !107, line: 690, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !107, line: 690, column: 25)
!2180 = !DILocation(line: 690, column: 25, scope: !2178)
!2181 = !DILocation(line: 690, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !107, line: 690, column: 25)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !107, line: 690, column: 25)
!2184 = !DILocation(line: 690, column: 25, scope: !2183)
!2185 = !DILocation(line: 690, column: 25, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !107, line: 690, column: 25)
!2187 = distinct !DILexicalBlock(scope: !2179, file: !107, line: 690, column: 25)
!2188 = !DILocation(line: 690, column: 25, scope: !2187)
!2189 = !DILocation(line: 690, column: 25, scope: !2179)
!2190 = !DILocation(line: 690, column: 25, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !107, line: 690, column: 25)
!2192 = distinct !DILexicalBlock(scope: !2172, file: !107, line: 690, column: 25)
!2193 = !DILocation(line: 690, column: 25, scope: !2192)
!2194 = !DILocation(line: 691, column: 25, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !107, line: 691, column: 25)
!2196 = distinct !DILexicalBlock(scope: !2173, file: !107, line: 691, column: 25)
!2197 = !DILocation(line: 691, column: 25, scope: !2196)
!2198 = !DILocation(line: 692, column: 25, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !107, line: 692, column: 25)
!2200 = distinct !DILexicalBlock(scope: !2173, file: !107, line: 692, column: 25)
!2201 = !DILocation(line: 692, column: 25, scope: !2200)
!2202 = !DILocation(line: 693, column: 38, scope: !2173)
!2203 = !DILocation(line: 693, column: 33, scope: !2173)
!2204 = !DILocation(line: 694, column: 23, scope: !2173)
!2205 = !DILocation(line: 695, column: 30, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2167, file: !107, line: 695, column: 30)
!2207 = !DILocation(line: 695, column: 30, scope: !2167)
!2208 = !DILocation(line: 697, column: 25, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !107, line: 697, column: 25)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !107, line: 697, column: 25)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !107, line: 696, column: 23)
!2212 = !DILocation(line: 697, column: 25, scope: !2210)
!2213 = !DILocation(line: 699, column: 23, scope: !2211)
!2214 = !DILocation(line: 700, column: 35, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2168, file: !107, line: 700, column: 25)
!2216 = !DILocation(line: 700, column: 30, scope: !2215)
!2217 = !DILocation(line: 700, column: 25, scope: !2168)
!2218 = !DILocation(line: 702, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !107, line: 702, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2168, file: !107, line: 702, column: 21)
!2221 = !DILocation(line: 702, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !107, line: 702, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !107, line: 702, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !107, line: 702, column: 21)
!2225 = !DILocation(line: 702, column: 21, scope: !2223)
!2226 = !DILocation(line: 702, column: 21, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !107, line: 702, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !107, line: 702, column: 21)
!2229 = !DILocation(line: 702, column: 21, scope: !2228)
!2230 = !DILocation(line: 702, column: 21, scope: !2224)
!2231 = !DILocation(line: 0, scope: !2168)
!2232 = !DILocation(line: 703, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !107, line: 703, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2168, file: !107, line: 703, column: 21)
!2235 = !DILocation(line: 703, column: 21, scope: !2234)
!2236 = !DILocation(line: 704, column: 25, scope: !2168)
!2237 = !DILocation(line: 686, column: 17, scope: !2169)
!2238 = distinct !{!2238, !2239, !2240}
!2239 = !DILocation(line: 686, column: 17, scope: !2170)
!2240 = !DILocation(line: 705, column: 19, scope: !2170)
!2241 = !DILocation(line: 416, column: 30, scope: !1960)
!2242 = !DILocation(line: 712, column: 34, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 712, column: 11)
!2244 = !DILocation(line: 715, column: 35, scope: !2243)
!2245 = !DILocation(line: 715, column: 17, scope: !2243)
!2246 = !DILocation(line: 715, column: 47, scope: !2243)
!2247 = !DILocation(line: 715, column: 65, scope: !2243)
!2248 = !DILocation(line: 716, column: 11, scope: !2243)
!2249 = !DILocation(line: 712, column: 11, scope: !1841)
!2250 = !DILocation(line: 400, column: 10, scope: !1843)
!2251 = !DILocation(line: 719, column: 5, scope: !1841)
!2252 = !DILocation(line: 720, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 720, column: 7)
!2254 = !DILocation(line: 720, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !107, line: 720, column: 7)
!2256 = !DILocation(line: 720, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !107, line: 720, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !107, line: 720, column: 7)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !107, line: 720, column: 7)
!2260 = !DILocation(line: 720, column: 7, scope: !2258)
!2261 = !DILocation(line: 720, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !107, line: 720, column: 7)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !107, line: 720, column: 7)
!2264 = !DILocation(line: 720, column: 7, scope: !2263)
!2265 = !DILocation(line: 720, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !107, line: 720, column: 7)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !107, line: 720, column: 7)
!2268 = !DILocation(line: 720, column: 7, scope: !2267)
!2269 = !DILocation(line: 720, column: 7, scope: !2259)
!2270 = !DILocation(line: 720, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !107, line: 720, column: 7)
!2272 = distinct !DILexicalBlock(scope: !2253, file: !107, line: 720, column: 7)
!2273 = !DILocation(line: 720, column: 7, scope: !2272)
!2274 = !DILocation(line: 722, column: 5, scope: !1841)
!2275 = !DILocation(line: 723, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !107, line: 723, column: 7)
!2277 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 723, column: 7)
!2278 = !DILocation(line: 424, column: 9, scope: !1841)
!2279 = !DILocation(line: 723, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !107, line: 723, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !107, line: 723, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2276, file: !107, line: 723, column: 7)
!2283 = !DILocation(line: 723, column: 7, scope: !2281)
!2284 = !DILocation(line: 723, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !107, line: 723, column: 7)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !107, line: 723, column: 7)
!2287 = !DILocation(line: 723, column: 7, scope: !2286)
!2288 = !DILocation(line: 723, column: 7, scope: !2282)
!2289 = !DILocation(line: 724, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !107, line: 724, column: 7)
!2291 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 724, column: 7)
!2292 = !DILocation(line: 724, column: 7, scope: !2291)
!2293 = !DILocation(line: 726, column: 13, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1841, file: !107, line: 726, column: 11)
!2295 = !DILocation(line: 726, column: 11, scope: !1841)
!2296 = !DILocation(line: 728, column: 5, scope: !1842)
!2297 = !DILocation(line: 400, column: 75, scope: !1842)
!2298 = !DILocation(line: 400, column: 3, scope: !1842)
!2299 = distinct !{!2299, !1956, !2300, !697}
!2300 = !DILocation(line: 728, column: 5, scope: !1843)
!2301 = !DILocation(line: 730, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 730, column: 7)
!2303 = !DILocation(line: 730, column: 16, scope: !2302)
!2304 = !DILocation(line: 738, column: 51, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 738, column: 7)
!2306 = !DILocation(line: 741, column: 11, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !107, line: 741, column: 11)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !107, line: 740, column: 5)
!2309 = !DILocation(line: 741, column: 11, scope: !2308)
!2310 = !DILocation(line: 742, column: 16, scope: !2307)
!2311 = !DILocation(line: 742, column: 9, scope: !2307)
!2312 = !DILocation(line: 746, column: 18, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !107, line: 746, column: 16)
!2314 = !DILocation(line: 746, column: 29, scope: !2313)
!2315 = !DILocation(line: 755, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 755, column: 7)
!2317 = !DILocation(line: 755, column: 20, scope: !2316)
!2318 = !DILocation(line: 756, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !107, line: 756, column: 5)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !107, line: 756, column: 5)
!2321 = !DILocation(line: 756, column: 5, scope: !2320)
!2322 = !DILocation(line: 757, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !107, line: 757, column: 7)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !107, line: 757, column: 7)
!2325 = !DILocation(line: 757, column: 7, scope: !2324)
!2326 = !DILocation(line: 756, column: 39, scope: !2319)
!2327 = distinct !{!2327, !2321, !2328, !697}
!2328 = !DILocation(line: 757, column: 7, scope: !2320)
!2329 = !DILocation(line: 759, column: 11, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 759, column: 7)
!2331 = !DILocation(line: 759, column: 7, scope: !1814)
!2332 = !DILocation(line: 760, column: 5, scope: !2330)
!2333 = !DILocation(line: 760, column: 17, scope: !2330)
!2334 = !DILocation(line: 763, column: 2, scope: !1814)
!2335 = !DILocation(line: 766, column: 51, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1814, file: !107, line: 766, column: 7)
!2337 = !DILocation(line: 766, column: 21, scope: !2336)
!2338 = !DILocation(line: 770, column: 42, scope: !1814)
!2339 = !DILocation(line: 768, column: 10, scope: !1814)
!2340 = !DILocation(line: 768, column: 3, scope: !1814)
!2341 = !DILocation(line: 772, column: 1, scope: !1814)
!2342 = distinct !DISubprogram(name: "gettext_quote", scope: !107, file: !107, line: 207, type: !2343, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!30, !30, !5}
!2345 = !{!2346, !2347, !2348, !2349}
!2346 = !DILocalVariable(name: "msgid", arg: 1, scope: !2342, file: !107, line: 207, type: !30)
!2347 = !DILocalVariable(name: "s", arg: 2, scope: !2342, file: !107, line: 207, type: !5)
!2348 = !DILocalVariable(name: "translation", scope: !2342, file: !107, line: 209, type: !30)
!2349 = !DILocalVariable(name: "locale_code", scope: !2342, file: !107, line: 210, type: !30)
!2350 = !DILocation(line: 0, scope: !2342)
!2351 = !DILocation(line: 209, column: 29, scope: !2342)
!2352 = !DILocation(line: 212, column: 19, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 212, column: 7)
!2354 = !DILocation(line: 212, column: 7, scope: !2342)
!2355 = !DILocation(line: 233, column: 17, scope: !2342)
!2356 = !DILocalVariable(name: "s1", arg: 1, scope: !2357, file: !2358, line: 160, type: !30)
!2357 = distinct !DISubprogram(name: "strcaseeq0", scope: !2358, file: !2358, line: 160, type: !2359, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2361)
!2358 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!47, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2361 = !{!2356, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2362 = !DILocalVariable(name: "s2", arg: 2, scope: !2357, file: !2358, line: 160, type: !30)
!2363 = !DILocalVariable(name: "s20", arg: 3, scope: !2357, file: !2358, line: 160, type: !32)
!2364 = !DILocalVariable(name: "s21", arg: 4, scope: !2357, file: !2358, line: 160, type: !32)
!2365 = !DILocalVariable(name: "s22", arg: 5, scope: !2357, file: !2358, line: 160, type: !32)
!2366 = !DILocalVariable(name: "s23", arg: 6, scope: !2357, file: !2358, line: 160, type: !32)
!2367 = !DILocalVariable(name: "s24", arg: 7, scope: !2357, file: !2358, line: 160, type: !32)
!2368 = !DILocalVariable(name: "s25", arg: 8, scope: !2357, file: !2358, line: 160, type: !32)
!2369 = !DILocalVariable(name: "s26", arg: 9, scope: !2357, file: !2358, line: 160, type: !32)
!2370 = !DILocalVariable(name: "s27", arg: 10, scope: !2357, file: !2358, line: 160, type: !32)
!2371 = !DILocalVariable(name: "s28", arg: 11, scope: !2357, file: !2358, line: 160, type: !32)
!2372 = !DILocation(line: 0, scope: !2357, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 234, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 234, column: 7)
!2375 = !DILocation(line: 162, column: 7, scope: !2376, inlinedAt: !2373)
!2376 = distinct !DILexicalBlock(scope: !2357, file: !2358, line: 162, column: 7)
!2377 = !DILocalVariable(name: "s1", arg: 1, scope: !2378, file: !2358, line: 146, type: !30)
!2378 = distinct !DISubprogram(name: "strcaseeq1", scope: !2358, file: !2358, line: 146, type: !2379, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!47, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32}
!2381 = !{!2377, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2382 = !DILocalVariable(name: "s2", arg: 2, scope: !2378, file: !2358, line: 146, type: !30)
!2383 = !DILocalVariable(name: "s21", arg: 3, scope: !2378, file: !2358, line: 146, type: !32)
!2384 = !DILocalVariable(name: "s22", arg: 4, scope: !2378, file: !2358, line: 146, type: !32)
!2385 = !DILocalVariable(name: "s23", arg: 5, scope: !2378, file: !2358, line: 146, type: !32)
!2386 = !DILocalVariable(name: "s24", arg: 6, scope: !2378, file: !2358, line: 146, type: !32)
!2387 = !DILocalVariable(name: "s25", arg: 7, scope: !2378, file: !2358, line: 146, type: !32)
!2388 = !DILocalVariable(name: "s26", arg: 8, scope: !2378, file: !2358, line: 146, type: !32)
!2389 = !DILocalVariable(name: "s27", arg: 9, scope: !2378, file: !2358, line: 146, type: !32)
!2390 = !DILocalVariable(name: "s28", arg: 10, scope: !2378, file: !2358, line: 146, type: !32)
!2391 = !DILocation(line: 0, scope: !2378, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 167, column: 16, scope: !2393, inlinedAt: !2373)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !2358, line: 164, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2376, file: !2358, line: 163, column: 5)
!2395 = !DILocation(line: 148, column: 7, scope: !2396, inlinedAt: !2392)
!2396 = distinct !DILexicalBlock(scope: !2378, file: !2358, line: 148, column: 7)
!2397 = !DILocalVariable(name: "s1", arg: 1, scope: !2398, file: !2358, line: 132, type: !30)
!2398 = distinct !DISubprogram(name: "strcaseeq2", scope: !2358, file: !2358, line: 132, type: !2399, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!47, !30, !30, !32, !32, !32, !32, !32, !32, !32}
!2401 = !{!2397, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2402 = !DILocalVariable(name: "s2", arg: 2, scope: !2398, file: !2358, line: 132, type: !30)
!2403 = !DILocalVariable(name: "s22", arg: 3, scope: !2398, file: !2358, line: 132, type: !32)
!2404 = !DILocalVariable(name: "s23", arg: 4, scope: !2398, file: !2358, line: 132, type: !32)
!2405 = !DILocalVariable(name: "s24", arg: 5, scope: !2398, file: !2358, line: 132, type: !32)
!2406 = !DILocalVariable(name: "s25", arg: 6, scope: !2398, file: !2358, line: 132, type: !32)
!2407 = !DILocalVariable(name: "s26", arg: 7, scope: !2398, file: !2358, line: 132, type: !32)
!2408 = !DILocalVariable(name: "s27", arg: 8, scope: !2398, file: !2358, line: 132, type: !32)
!2409 = !DILocalVariable(name: "s28", arg: 9, scope: !2398, file: !2358, line: 132, type: !32)
!2410 = !DILocation(line: 0, scope: !2398, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 153, column: 16, scope: !2412, inlinedAt: !2392)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !2358, line: 150, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2396, file: !2358, line: 149, column: 5)
!2414 = !DILocation(line: 134, column: 7, scope: !2415, inlinedAt: !2411)
!2415 = distinct !DILexicalBlock(scope: !2398, file: !2358, line: 134, column: 7)
!2416 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2358, line: 118, type: !30)
!2417 = distinct !DISubprogram(name: "strcaseeq3", scope: !2358, file: !2358, line: 118, type: !2418, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!47, !30, !30, !32, !32, !32, !32, !32, !32}
!2420 = !{!2416, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!2421 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2358, line: 118, type: !30)
!2422 = !DILocalVariable(name: "s23", arg: 3, scope: !2417, file: !2358, line: 118, type: !32)
!2423 = !DILocalVariable(name: "s24", arg: 4, scope: !2417, file: !2358, line: 118, type: !32)
!2424 = !DILocalVariable(name: "s25", arg: 5, scope: !2417, file: !2358, line: 118, type: !32)
!2425 = !DILocalVariable(name: "s26", arg: 6, scope: !2417, file: !2358, line: 118, type: !32)
!2426 = !DILocalVariable(name: "s27", arg: 7, scope: !2417, file: !2358, line: 118, type: !32)
!2427 = !DILocalVariable(name: "s28", arg: 8, scope: !2417, file: !2358, line: 118, type: !32)
!2428 = !DILocation(line: 0, scope: !2417, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 139, column: 16, scope: !2430, inlinedAt: !2411)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !2358, line: 136, column: 11)
!2431 = distinct !DILexicalBlock(scope: !2415, file: !2358, line: 135, column: 5)
!2432 = !DILocation(line: 120, column: 7, scope: !2433, inlinedAt: !2429)
!2433 = distinct !DILexicalBlock(scope: !2417, file: !2358, line: 120, column: 7)
!2434 = !DILocation(line: 120, column: 7, scope: !2417, inlinedAt: !2429)
!2435 = !DILocalVariable(name: "s1", arg: 1, scope: !2436, file: !2358, line: 104, type: !30)
!2436 = distinct !DISubprogram(name: "strcaseeq4", scope: !2358, file: !2358, line: 104, type: !2437, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!47, !30, !30, !32, !32, !32, !32, !32}
!2439 = !{!2435, !2440, !2441, !2442, !2443, !2444, !2445}
!2440 = !DILocalVariable(name: "s2", arg: 2, scope: !2436, file: !2358, line: 104, type: !30)
!2441 = !DILocalVariable(name: "s24", arg: 3, scope: !2436, file: !2358, line: 104, type: !32)
!2442 = !DILocalVariable(name: "s25", arg: 4, scope: !2436, file: !2358, line: 104, type: !32)
!2443 = !DILocalVariable(name: "s26", arg: 5, scope: !2436, file: !2358, line: 104, type: !32)
!2444 = !DILocalVariable(name: "s27", arg: 6, scope: !2436, file: !2358, line: 104, type: !32)
!2445 = !DILocalVariable(name: "s28", arg: 7, scope: !2436, file: !2358, line: 104, type: !32)
!2446 = !DILocation(line: 0, scope: !2436, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 125, column: 16, scope: !2448, inlinedAt: !2429)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2358, line: 122, column: 11)
!2449 = distinct !DILexicalBlock(scope: !2433, file: !2358, line: 121, column: 5)
!2450 = !DILocation(line: 106, column: 7, scope: !2451, inlinedAt: !2447)
!2451 = distinct !DILexicalBlock(scope: !2436, file: !2358, line: 106, column: 7)
!2452 = !DILocation(line: 106, column: 7, scope: !2436, inlinedAt: !2447)
!2453 = !DILocalVariable(name: "s1", arg: 1, scope: !2454, file: !2358, line: 90, type: !30)
!2454 = distinct !DISubprogram(name: "strcaseeq5", scope: !2358, file: !2358, line: 90, type: !2455, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!47, !30, !30, !32, !32, !32, !32}
!2457 = !{!2453, !2458, !2459, !2460, !2461, !2462}
!2458 = !DILocalVariable(name: "s2", arg: 2, scope: !2454, file: !2358, line: 90, type: !30)
!2459 = !DILocalVariable(name: "s25", arg: 3, scope: !2454, file: !2358, line: 90, type: !32)
!2460 = !DILocalVariable(name: "s26", arg: 4, scope: !2454, file: !2358, line: 90, type: !32)
!2461 = !DILocalVariable(name: "s27", arg: 5, scope: !2454, file: !2358, line: 90, type: !32)
!2462 = !DILocalVariable(name: "s28", arg: 6, scope: !2454, file: !2358, line: 90, type: !32)
!2463 = !DILocation(line: 0, scope: !2454, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 111, column: 16, scope: !2465, inlinedAt: !2447)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !2358, line: 108, column: 11)
!2466 = distinct !DILexicalBlock(scope: !2451, file: !2358, line: 107, column: 5)
!2467 = !DILocation(line: 92, column: 7, scope: !2468, inlinedAt: !2464)
!2468 = distinct !DILexicalBlock(scope: !2454, file: !2358, line: 92, column: 7)
!2469 = !DILocation(line: 92, column: 7, scope: !2454, inlinedAt: !2464)
!2470 = !DILocation(line: 235, column: 12, scope: !2374)
!2471 = !DILocation(line: 235, column: 21, scope: !2374)
!2472 = !DILocation(line: 235, column: 5, scope: !2374)
!2473 = !DILocation(line: 0, scope: !2378, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 167, column: 16, scope: !2393, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 236, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 236, column: 7)
!2477 = !DILocation(line: 148, column: 7, scope: !2396, inlinedAt: !2474)
!2478 = !DILocation(line: 0, scope: !2398, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 153, column: 16, scope: !2412, inlinedAt: !2474)
!2480 = !DILocation(line: 134, column: 7, scope: !2415, inlinedAt: !2479)
!2481 = !DILocation(line: 134, column: 7, scope: !2398, inlinedAt: !2479)
!2482 = !DILocation(line: 0, scope: !2417, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 139, column: 16, scope: !2430, inlinedAt: !2479)
!2484 = !DILocation(line: 120, column: 7, scope: !2433, inlinedAt: !2483)
!2485 = !DILocation(line: 120, column: 7, scope: !2417, inlinedAt: !2483)
!2486 = !DILocation(line: 0, scope: !2436, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 125, column: 16, scope: !2448, inlinedAt: !2483)
!2488 = !DILocation(line: 106, column: 7, scope: !2451, inlinedAt: !2487)
!2489 = !DILocation(line: 106, column: 7, scope: !2436, inlinedAt: !2487)
!2490 = !DILocation(line: 0, scope: !2454, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 111, column: 16, scope: !2465, inlinedAt: !2487)
!2492 = !DILocation(line: 92, column: 7, scope: !2468, inlinedAt: !2491)
!2493 = !DILocation(line: 92, column: 7, scope: !2454, inlinedAt: !2491)
!2494 = !DILocalVariable(name: "s1", arg: 1, scope: !2495, file: !2358, line: 76, type: !30)
!2495 = distinct !DISubprogram(name: "strcaseeq6", scope: !2358, file: !2358, line: 76, type: !2496, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!47, !30, !30, !32, !32, !32}
!2498 = !{!2494, !2499, !2500, !2501, !2502}
!2499 = !DILocalVariable(name: "s2", arg: 2, scope: !2495, file: !2358, line: 76, type: !30)
!2500 = !DILocalVariable(name: "s26", arg: 3, scope: !2495, file: !2358, line: 76, type: !32)
!2501 = !DILocalVariable(name: "s27", arg: 4, scope: !2495, file: !2358, line: 76, type: !32)
!2502 = !DILocalVariable(name: "s28", arg: 5, scope: !2495, file: !2358, line: 76, type: !32)
!2503 = !DILocation(line: 0, scope: !2495, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 97, column: 16, scope: !2505, inlinedAt: !2491)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !2358, line: 94, column: 11)
!2506 = distinct !DILexicalBlock(scope: !2468, file: !2358, line: 93, column: 5)
!2507 = !DILocation(line: 78, column: 7, scope: !2508, inlinedAt: !2504)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !2358, line: 78, column: 7)
!2509 = !DILocation(line: 78, column: 7, scope: !2495, inlinedAt: !2504)
!2510 = !DILocalVariable(name: "s1", arg: 1, scope: !2511, file: !2358, line: 62, type: !30)
!2511 = distinct !DISubprogram(name: "strcaseeq7", scope: !2358, file: !2358, line: 62, type: !2512, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!47, !30, !30, !32, !32}
!2514 = !{!2510, !2515, !2516, !2517}
!2515 = !DILocalVariable(name: "s2", arg: 2, scope: !2511, file: !2358, line: 62, type: !30)
!2516 = !DILocalVariable(name: "s27", arg: 3, scope: !2511, file: !2358, line: 62, type: !32)
!2517 = !DILocalVariable(name: "s28", arg: 4, scope: !2511, file: !2358, line: 62, type: !32)
!2518 = !DILocation(line: 0, scope: !2511, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 83, column: 16, scope: !2520, inlinedAt: !2504)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !2358, line: 80, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2508, file: !2358, line: 79, column: 5)
!2522 = !DILocation(line: 64, column: 7, scope: !2523, inlinedAt: !2519)
!2523 = distinct !DILexicalBlock(scope: !2511, file: !2358, line: 64, column: 7)
!2524 = !DILocation(line: 236, column: 7, scope: !2342)
!2525 = !DILocation(line: 237, column: 12, scope: !2476)
!2526 = !DILocation(line: 237, column: 21, scope: !2476)
!2527 = !DILocation(line: 237, column: 5, scope: !2476)
!2528 = !DILocation(line: 239, column: 13, scope: !2342)
!2529 = !DILocation(line: 239, column: 11, scope: !2342)
!2530 = !DILocation(line: 239, column: 3, scope: !2342)
!2531 = !DILocation(line: 240, column: 1, scope: !2342)
!2532 = !DISubprogram(name: "iswprint", scope: !2533, file: !2533, line: 120, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!2533 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!47, !7}
!2536 = !DISubprogram(name: "mbsinit", scope: !2537, file: !2537, line: 292, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!2537 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!47, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!2542 = distinct !DISubprogram(name: "quotearg_alloc", scope: !107, file: !107, line: 799, type: !2543, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!102, !30, !34, !1706}
!2545 = !{!2546, !2547, !2548}
!2546 = !DILocalVariable(name: "arg", arg: 1, scope: !2542, file: !107, line: 799, type: !30)
!2547 = !DILocalVariable(name: "argsize", arg: 2, scope: !2542, file: !107, line: 799, type: !34)
!2548 = !DILocalVariable(name: "o", arg: 3, scope: !2542, file: !107, line: 800, type: !1706)
!2549 = !DILocation(line: 0, scope: !2542)
!2550 = !DILocalVariable(name: "arg", arg: 1, scope: !2551, file: !107, line: 812, type: !30)
!2551 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !107, file: !107, line: 812, type: !2552, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!102, !30, !34, !196, !1706}
!2554 = !{!2550, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2555 = !DILocalVariable(name: "argsize", arg: 2, scope: !2551, file: !107, line: 812, type: !34)
!2556 = !DILocalVariable(name: "size", arg: 3, scope: !2551, file: !107, line: 812, type: !196)
!2557 = !DILocalVariable(name: "o", arg: 4, scope: !2551, file: !107, line: 813, type: !1706)
!2558 = !DILocalVariable(name: "p", scope: !2551, file: !107, line: 815, type: !1706)
!2559 = !DILocalVariable(name: "e", scope: !2551, file: !107, line: 816, type: !47)
!2560 = !DILocalVariable(name: "flags", scope: !2551, file: !107, line: 818, type: !47)
!2561 = !DILocalVariable(name: "bufsize", scope: !2551, file: !107, line: 819, type: !34)
!2562 = !DILocalVariable(name: "buf", scope: !2551, file: !107, line: 823, type: !102)
!2563 = !DILocation(line: 0, scope: !2551, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 802, column: 10, scope: !2542)
!2565 = !DILocation(line: 815, column: 37, scope: !2551, inlinedAt: !2564)
!2566 = !DILocation(line: 816, column: 11, scope: !2551, inlinedAt: !2564)
!2567 = !DILocation(line: 818, column: 18, scope: !2551, inlinedAt: !2564)
!2568 = !DILocation(line: 818, column: 24, scope: !2551, inlinedAt: !2564)
!2569 = !DILocation(line: 819, column: 69, scope: !2551, inlinedAt: !2564)
!2570 = !DILocation(line: 820, column: 53, scope: !2551, inlinedAt: !2564)
!2571 = !DILocation(line: 821, column: 49, scope: !2551, inlinedAt: !2564)
!2572 = !DILocation(line: 822, column: 49, scope: !2551, inlinedAt: !2564)
!2573 = !DILocation(line: 819, column: 20, scope: !2551, inlinedAt: !2564)
!2574 = !DILocation(line: 822, column: 62, scope: !2551, inlinedAt: !2564)
!2575 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !192, line: 216, type: !34)
!2576 = distinct !DISubprogram(name: "xcharalloc", scope: !192, file: !192, line: 216, type: !2577, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!102, !34}
!2579 = !{!2575}
!2580 = !DILocation(line: 0, scope: !2576, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 823, column: 15, scope: !2551, inlinedAt: !2564)
!2582 = !DILocation(line: 218, column: 10, scope: !2576, inlinedAt: !2581)
!2583 = !DILocation(line: 824, column: 60, scope: !2551, inlinedAt: !2564)
!2584 = !DILocation(line: 826, column: 32, scope: !2551, inlinedAt: !2564)
!2585 = !DILocation(line: 826, column: 47, scope: !2551, inlinedAt: !2564)
!2586 = !DILocation(line: 824, column: 3, scope: !2551, inlinedAt: !2564)
!2587 = !DILocation(line: 827, column: 9, scope: !2551, inlinedAt: !2564)
!2588 = !DILocation(line: 802, column: 3, scope: !2542)
!2589 = !DILocation(line: 0, scope: !2551)
!2590 = !DILocation(line: 815, column: 37, scope: !2551)
!2591 = !DILocation(line: 816, column: 11, scope: !2551)
!2592 = !DILocation(line: 818, column: 18, scope: !2551)
!2593 = !DILocation(line: 818, column: 27, scope: !2551)
!2594 = !DILocation(line: 818, column: 24, scope: !2551)
!2595 = !DILocation(line: 819, column: 69, scope: !2551)
!2596 = !DILocation(line: 820, column: 53, scope: !2551)
!2597 = !DILocation(line: 821, column: 49, scope: !2551)
!2598 = !DILocation(line: 822, column: 49, scope: !2551)
!2599 = !DILocation(line: 819, column: 20, scope: !2551)
!2600 = !DILocation(line: 822, column: 62, scope: !2551)
!2601 = !DILocation(line: 0, scope: !2576, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 823, column: 15, scope: !2551)
!2603 = !DILocation(line: 218, column: 10, scope: !2576, inlinedAt: !2602)
!2604 = !DILocation(line: 824, column: 60, scope: !2551)
!2605 = !DILocation(line: 826, column: 32, scope: !2551)
!2606 = !DILocation(line: 826, column: 47, scope: !2551)
!2607 = !DILocation(line: 824, column: 3, scope: !2551)
!2608 = !DILocation(line: 827, column: 9, scope: !2551)
!2609 = !DILocation(line: 828, column: 7, scope: !2551)
!2610 = !DILocation(line: 829, column: 11, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2551, file: !107, line: 828, column: 7)
!2612 = !DILocation(line: 829, column: 5, scope: !2611)
!2613 = !DILocation(line: 830, column: 3, scope: !2551)
!2614 = distinct !DISubprogram(name: "quotearg_free", scope: !107, file: !107, line: 848, type: !659, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2615)
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "sv", scope: !2614, file: !107, line: 850, type: !159)
!2617 = !DILocalVariable(name: "i", scope: !2614, file: !107, line: 851, type: !47)
!2618 = !DILocation(line: 850, column: 24, scope: !2614)
!2619 = !DILocation(line: 0, scope: !2614)
!2620 = !DILocation(line: 852, column: 19, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !107, line: 852, column: 3)
!2622 = distinct !DILexicalBlock(scope: !2614, file: !107, line: 852, column: 3)
!2623 = !DILocation(line: 852, column: 17, scope: !2621)
!2624 = !DILocation(line: 852, column: 3, scope: !2622)
!2625 = !DILocation(line: 853, column: 17, scope: !2621)
!2626 = !{!2627, !651, i64 8}
!2627 = !{!"slotvec", !876, i64 0, !651, i64 8}
!2628 = !DILocation(line: 853, column: 5, scope: !2621)
!2629 = !DILocation(line: 852, column: 28, scope: !2621)
!2630 = distinct !{!2630, !2624, !2631, !697}
!2631 = !DILocation(line: 853, column: 20, scope: !2622)
!2632 = !DILocation(line: 854, column: 13, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2614, file: !107, line: 854, column: 7)
!2634 = !DILocation(line: 854, column: 17, scope: !2633)
!2635 = !DILocation(line: 854, column: 7, scope: !2614)
!2636 = !DILocation(line: 856, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !107, line: 855, column: 5)
!2638 = !DILocation(line: 857, column: 21, scope: !2637)
!2639 = !{!2627, !876, i64 0}
!2640 = !DILocation(line: 858, column: 20, scope: !2637)
!2641 = !DILocation(line: 859, column: 5, scope: !2637)
!2642 = !DILocation(line: 860, column: 10, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2614, file: !107, line: 860, column: 7)
!2644 = !DILocation(line: 860, column: 7, scope: !2614)
!2645 = !DILocation(line: 862, column: 13, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !107, line: 861, column: 5)
!2647 = !DILocation(line: 862, column: 7, scope: !2646)
!2648 = !DILocation(line: 863, column: 15, scope: !2646)
!2649 = !DILocation(line: 864, column: 5, scope: !2646)
!2650 = !DILocation(line: 865, column: 10, scope: !2614)
!2651 = !DILocation(line: 866, column: 1, scope: !2614)
!2652 = distinct !DISubprogram(name: "quotearg_n", scope: !107, file: !107, line: 931, type: !779, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2653)
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !107, line: 931, type: !47)
!2655 = !DILocalVariable(name: "arg", arg: 2, scope: !2652, file: !107, line: 931, type: !30)
!2656 = !DILocation(line: 0, scope: !2652)
!2657 = !DILocation(line: 933, column: 10, scope: !2652)
!2658 = !DILocation(line: 933, column: 3, scope: !2652)
!2659 = distinct !DISubprogram(name: "quotearg_n_options", scope: !107, file: !107, line: 877, type: !2660, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!102, !47, !30, !34, !1706}
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2672, !2673, !2675, !2676, !2677}
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !107, line: 877, type: !47)
!2664 = !DILocalVariable(name: "arg", arg: 2, scope: !2659, file: !107, line: 877, type: !30)
!2665 = !DILocalVariable(name: "argsize", arg: 3, scope: !2659, file: !107, line: 877, type: !34)
!2666 = !DILocalVariable(name: "options", arg: 4, scope: !2659, file: !107, line: 878, type: !1706)
!2667 = !DILocalVariable(name: "e", scope: !2659, file: !107, line: 880, type: !47)
!2668 = !DILocalVariable(name: "sv", scope: !2659, file: !107, line: 882, type: !159)
!2669 = !DILocalVariable(name: "preallocated", scope: !2670, file: !107, line: 889, type: !73)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !107, line: 888, column: 5)
!2671 = distinct !DILexicalBlock(scope: !2659, file: !107, line: 887, column: 7)
!2672 = !DILocalVariable(name: "nmax", scope: !2670, file: !107, line: 890, type: !47)
!2673 = !DILocalVariable(name: "size", scope: !2674, file: !107, line: 903, type: !34)
!2674 = distinct !DILexicalBlock(scope: !2659, file: !107, line: 902, column: 3)
!2675 = !DILocalVariable(name: "val", scope: !2674, file: !107, line: 904, type: !102)
!2676 = !DILocalVariable(name: "flags", scope: !2674, file: !107, line: 906, type: !47)
!2677 = !DILocalVariable(name: "qsize", scope: !2674, file: !107, line: 907, type: !34)
!2678 = !DILocation(line: 0, scope: !2659)
!2679 = !DILocation(line: 880, column: 11, scope: !2659)
!2680 = !DILocation(line: 882, column: 24, scope: !2659)
!2681 = !DILocation(line: 884, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2659, file: !107, line: 884, column: 7)
!2683 = !DILocation(line: 884, column: 7, scope: !2659)
!2684 = !DILocation(line: 885, column: 5, scope: !2682)
!2685 = !DILocation(line: 887, column: 7, scope: !2671)
!2686 = !DILocation(line: 887, column: 14, scope: !2671)
!2687 = !DILocation(line: 887, column: 7, scope: !2659)
!2688 = !DILocation(line: 889, column: 31, scope: !2670)
!2689 = !DILocation(line: 0, scope: !2670)
!2690 = !DILocation(line: 892, column: 16, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2670, file: !107, line: 892, column: 11)
!2692 = !DILocation(line: 892, column: 11, scope: !2670)
!2693 = !DILocation(line: 893, column: 9, scope: !2691)
!2694 = !DILocation(line: 895, column: 32, scope: !2670)
!2695 = !DILocation(line: 895, column: 61, scope: !2670)
!2696 = !DILocation(line: 895, column: 66, scope: !2670)
!2697 = !DILocation(line: 895, column: 22, scope: !2670)
!2698 = !DILocation(line: 895, column: 15, scope: !2670)
!2699 = !DILocation(line: 896, column: 11, scope: !2670)
!2700 = !DILocation(line: 897, column: 15, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2670, file: !107, line: 896, column: 11)
!2702 = !{i64 0, i64 8, !1081, i64 8, i64 8, !650}
!2703 = !DILocation(line: 897, column: 9, scope: !2701)
!2704 = !DILocation(line: 898, column: 20, scope: !2670)
!2705 = !DILocation(line: 898, column: 18, scope: !2670)
!2706 = !DILocation(line: 898, column: 15, scope: !2670)
!2707 = !DILocation(line: 898, column: 38, scope: !2670)
!2708 = !DILocation(line: 898, column: 31, scope: !2670)
!2709 = !DILocation(line: 898, column: 48, scope: !2670)
!2710 = !DILocation(line: 0, scope: !2103, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 898, column: 7, scope: !2670)
!2712 = !DILocation(line: 59, column: 10, scope: !2103, inlinedAt: !2711)
!2713 = !DILocation(line: 899, column: 14, scope: !2670)
!2714 = !DILocation(line: 900, column: 5, scope: !2670)
!2715 = !DILocation(line: 903, column: 19, scope: !2674)
!2716 = !DILocation(line: 903, column: 25, scope: !2674)
!2717 = !DILocation(line: 0, scope: !2674)
!2718 = !DILocation(line: 904, column: 23, scope: !2674)
!2719 = !DILocation(line: 906, column: 26, scope: !2674)
!2720 = !DILocation(line: 906, column: 32, scope: !2674)
!2721 = !DILocation(line: 908, column: 55, scope: !2674)
!2722 = !DILocation(line: 909, column: 46, scope: !2674)
!2723 = !DILocation(line: 910, column: 55, scope: !2674)
!2724 = !DILocation(line: 911, column: 55, scope: !2674)
!2725 = !DILocation(line: 907, column: 20, scope: !2674)
!2726 = !DILocation(line: 913, column: 14, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2674, file: !107, line: 913, column: 9)
!2728 = !DILocation(line: 913, column: 9, scope: !2674)
!2729 = !DILocation(line: 915, column: 35, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !107, line: 914, column: 7)
!2731 = !DILocation(line: 915, column: 20, scope: !2730)
!2732 = !DILocation(line: 916, column: 17, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !107, line: 916, column: 13)
!2734 = !DILocation(line: 916, column: 13, scope: !2730)
!2735 = !DILocation(line: 917, column: 11, scope: !2733)
!2736 = !DILocation(line: 0, scope: !2576, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 918, column: 27, scope: !2730)
!2738 = !DILocation(line: 218, column: 10, scope: !2576, inlinedAt: !2737)
!2739 = !DILocation(line: 918, column: 19, scope: !2730)
!2740 = !DILocation(line: 919, column: 69, scope: !2730)
!2741 = !DILocation(line: 921, column: 44, scope: !2730)
!2742 = !DILocation(line: 922, column: 44, scope: !2730)
!2743 = !DILocation(line: 919, column: 9, scope: !2730)
!2744 = !DILocation(line: 923, column: 7, scope: !2730)
!2745 = !DILocation(line: 925, column: 11, scope: !2674)
!2746 = !DILocation(line: 926, column: 5, scope: !2674)
!2747 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !107, file: !107, line: 937, type: !2748, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!102, !47, !30, !34}
!2750 = !{!2751, !2752, !2753}
!2751 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !107, line: 937, type: !47)
!2752 = !DILocalVariable(name: "arg", arg: 2, scope: !2747, file: !107, line: 937, type: !30)
!2753 = !DILocalVariable(name: "argsize", arg: 3, scope: !2747, file: !107, line: 937, type: !34)
!2754 = !DILocation(line: 0, scope: !2747)
!2755 = !DILocation(line: 939, column: 10, scope: !2747)
!2756 = !DILocation(line: 939, column: 3, scope: !2747)
!2757 = distinct !DISubprogram(name: "quotearg", scope: !107, file: !107, line: 943, type: !1153, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2758)
!2758 = !{!2759}
!2759 = !DILocalVariable(name: "arg", arg: 1, scope: !2757, file: !107, line: 943, type: !30)
!2760 = !DILocation(line: 0, scope: !2757)
!2761 = !DILocation(line: 0, scope: !2652, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 945, column: 10, scope: !2757)
!2763 = !DILocation(line: 933, column: 10, scope: !2652, inlinedAt: !2762)
!2764 = !DILocation(line: 945, column: 3, scope: !2757)
!2765 = distinct !DISubprogram(name: "quotearg_mem", scope: !107, file: !107, line: 949, type: !2766, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!102, !30, !34}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !107, line: 949, type: !30)
!2770 = !DILocalVariable(name: "argsize", arg: 2, scope: !2765, file: !107, line: 949, type: !34)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocation(line: 0, scope: !2747, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 951, column: 10, scope: !2765)
!2774 = !DILocation(line: 939, column: 10, scope: !2747, inlinedAt: !2773)
!2775 = !DILocation(line: 951, column: 3, scope: !2765)
!2776 = distinct !DISubprogram(name: "quotearg_n_style", scope: !107, file: !107, line: 955, type: !2777, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!102, !47, !5, !30}
!2779 = !{!2780, !2781, !2782, !2783}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !107, line: 955, type: !47)
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2776, file: !107, line: 955, type: !5)
!2782 = !DILocalVariable(name: "arg", arg: 3, scope: !2776, file: !107, line: 955, type: !30)
!2783 = !DILocalVariable(name: "o", scope: !2776, file: !107, line: 957, type: !1707)
!2784 = !DILocation(line: 0, scope: !2776)
!2785 = !DILocation(line: 957, column: 3, scope: !2776)
!2786 = !DILocation(line: 957, column: 32, scope: !2776)
!2787 = !{!2788}
!2788 = distinct !{!2788, !2789, !"quoting_options_from_style: argument 0"}
!2789 = distinct !{!2789, !"quoting_options_from_style"}
!2790 = !DILocation(line: 957, column: 36, scope: !2776)
!2791 = !DILocalVariable(name: "style", arg: 1, scope: !2792, file: !107, line: 193, type: !5)
!2792 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !107, file: !107, line: 193, type: !2793, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!140, !5}
!2795 = !{!2791, !2796}
!2796 = !DILocalVariable(name: "o", scope: !2792, file: !107, line: 195, type: !140)
!2797 = !DILocation(line: 0, scope: !2792, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 957, column: 36, scope: !2776)
!2799 = !DILocation(line: 195, column: 26, scope: !2792, inlinedAt: !2798)
!2800 = !DILocation(line: 196, column: 13, scope: !2801, inlinedAt: !2798)
!2801 = distinct !DILexicalBlock(scope: !2792, file: !107, line: 196, column: 7)
!2802 = !DILocation(line: 196, column: 7, scope: !2792, inlinedAt: !2798)
!2803 = !DILocation(line: 197, column: 5, scope: !2801, inlinedAt: !2798)
!2804 = !DILocation(line: 198, column: 5, scope: !2792, inlinedAt: !2798)
!2805 = !DILocation(line: 198, column: 11, scope: !2792, inlinedAt: !2798)
!2806 = !DILocation(line: 958, column: 10, scope: !2776)
!2807 = !DILocation(line: 959, column: 1, scope: !2776)
!2808 = !DILocation(line: 958, column: 3, scope: !2776)
!2809 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !107, file: !107, line: 962, type: !2810, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!102, !47, !5, !30, !34}
!2812 = !{!2813, !2814, !2815, !2816, !2817}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !107, line: 962, type: !47)
!2814 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !107, line: 962, type: !5)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2809, file: !107, line: 963, type: !30)
!2816 = !DILocalVariable(name: "argsize", arg: 4, scope: !2809, file: !107, line: 963, type: !34)
!2817 = !DILocalVariable(name: "o", scope: !2809, file: !107, line: 965, type: !1707)
!2818 = !DILocation(line: 0, scope: !2809)
!2819 = !DILocation(line: 965, column: 3, scope: !2809)
!2820 = !DILocation(line: 965, column: 32, scope: !2809)
!2821 = !{!2822}
!2822 = distinct !{!2822, !2823, !"quoting_options_from_style: argument 0"}
!2823 = distinct !{!2823, !"quoting_options_from_style"}
!2824 = !DILocation(line: 965, column: 36, scope: !2809)
!2825 = !DILocation(line: 0, scope: !2792, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 965, column: 36, scope: !2809)
!2827 = !DILocation(line: 195, column: 26, scope: !2792, inlinedAt: !2826)
!2828 = !DILocation(line: 196, column: 13, scope: !2801, inlinedAt: !2826)
!2829 = !DILocation(line: 196, column: 7, scope: !2792, inlinedAt: !2826)
!2830 = !DILocation(line: 197, column: 5, scope: !2801, inlinedAt: !2826)
!2831 = !DILocation(line: 198, column: 5, scope: !2792, inlinedAt: !2826)
!2832 = !DILocation(line: 198, column: 11, scope: !2792, inlinedAt: !2826)
!2833 = !DILocation(line: 966, column: 10, scope: !2809)
!2834 = !DILocation(line: 967, column: 1, scope: !2809)
!2835 = !DILocation(line: 966, column: 3, scope: !2809)
!2836 = distinct !DISubprogram(name: "quotearg_style", scope: !107, file: !107, line: 970, type: !2837, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!102, !5, !30}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "s", arg: 1, scope: !2836, file: !107, line: 970, type: !5)
!2841 = !DILocalVariable(name: "arg", arg: 2, scope: !2836, file: !107, line: 970, type: !30)
!2842 = !DILocation(line: 0, scope: !2836)
!2843 = !DILocation(line: 0, scope: !2776, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 972, column: 10, scope: !2836)
!2845 = !DILocation(line: 957, column: 3, scope: !2776, inlinedAt: !2844)
!2846 = !DILocation(line: 957, column: 32, scope: !2776, inlinedAt: !2844)
!2847 = !{!2848}
!2848 = distinct !{!2848, !2849, !"quoting_options_from_style: argument 0"}
!2849 = distinct !{!2849, !"quoting_options_from_style"}
!2850 = !DILocation(line: 957, column: 36, scope: !2776, inlinedAt: !2844)
!2851 = !DILocation(line: 0, scope: !2792, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 957, column: 36, scope: !2776, inlinedAt: !2844)
!2853 = !DILocation(line: 195, column: 26, scope: !2792, inlinedAt: !2852)
!2854 = !DILocation(line: 196, column: 13, scope: !2801, inlinedAt: !2852)
!2855 = !DILocation(line: 196, column: 7, scope: !2792, inlinedAt: !2852)
!2856 = !DILocation(line: 197, column: 5, scope: !2801, inlinedAt: !2852)
!2857 = !DILocation(line: 198, column: 5, scope: !2792, inlinedAt: !2852)
!2858 = !DILocation(line: 198, column: 11, scope: !2792, inlinedAt: !2852)
!2859 = !DILocation(line: 958, column: 10, scope: !2776, inlinedAt: !2844)
!2860 = !DILocation(line: 959, column: 1, scope: !2776, inlinedAt: !2844)
!2861 = !DILocation(line: 972, column: 3, scope: !2836)
!2862 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !107, file: !107, line: 976, type: !2863, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!102, !5, !30, !34}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "s", arg: 1, scope: !2862, file: !107, line: 976, type: !5)
!2867 = !DILocalVariable(name: "arg", arg: 2, scope: !2862, file: !107, line: 976, type: !30)
!2868 = !DILocalVariable(name: "argsize", arg: 3, scope: !2862, file: !107, line: 976, type: !34)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 0, scope: !2809, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 978, column: 10, scope: !2862)
!2872 = !DILocation(line: 965, column: 3, scope: !2809, inlinedAt: !2871)
!2873 = !DILocation(line: 965, column: 32, scope: !2809, inlinedAt: !2871)
!2874 = !{!2875}
!2875 = distinct !{!2875, !2876, !"quoting_options_from_style: argument 0"}
!2876 = distinct !{!2876, !"quoting_options_from_style"}
!2877 = !DILocation(line: 965, column: 36, scope: !2809, inlinedAt: !2871)
!2878 = !DILocation(line: 0, scope: !2792, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 965, column: 36, scope: !2809, inlinedAt: !2871)
!2880 = !DILocation(line: 195, column: 26, scope: !2792, inlinedAt: !2879)
!2881 = !DILocation(line: 196, column: 13, scope: !2801, inlinedAt: !2879)
!2882 = !DILocation(line: 196, column: 7, scope: !2792, inlinedAt: !2879)
!2883 = !DILocation(line: 197, column: 5, scope: !2801, inlinedAt: !2879)
!2884 = !DILocation(line: 198, column: 5, scope: !2792, inlinedAt: !2879)
!2885 = !DILocation(line: 198, column: 11, scope: !2792, inlinedAt: !2879)
!2886 = !DILocation(line: 966, column: 10, scope: !2809, inlinedAt: !2871)
!2887 = !DILocation(line: 967, column: 1, scope: !2809, inlinedAt: !2871)
!2888 = !DILocation(line: 978, column: 3, scope: !2862)
!2889 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !107, file: !107, line: 982, type: !2890, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!102, !30, !34, !32}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !107, line: 982, type: !30)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2889, file: !107, line: 982, type: !34)
!2895 = !DILocalVariable(name: "ch", arg: 3, scope: !2889, file: !107, line: 982, type: !32)
!2896 = !DILocalVariable(name: "options", scope: !2889, file: !107, line: 984, type: !140)
!2897 = !DILocation(line: 0, scope: !2889)
!2898 = !DILocation(line: 984, column: 3, scope: !2889)
!2899 = !DILocation(line: 984, column: 26, scope: !2889)
!2900 = !DILocation(line: 985, column: 13, scope: !2889)
!2901 = !{i64 0, i64 4, !1912, i64 4, i64 4, !800, i64 8, i64 32, !1912, i64 40, i64 8, !650, i64 48, i64 8, !650}
!2902 = !DILocation(line: 0, scope: !1727, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 986, column: 3, scope: !2889)
!2904 = !DILocation(line: 156, column: 62, scope: !1727, inlinedAt: !2903)
!2905 = !DILocation(line: 156, column: 57, scope: !1727, inlinedAt: !2903)
!2906 = !DILocation(line: 157, column: 15, scope: !1727, inlinedAt: !2903)
!2907 = !DILocation(line: 158, column: 12, scope: !1727, inlinedAt: !2903)
!2908 = !DILocation(line: 158, column: 15, scope: !1727, inlinedAt: !2903)
!2909 = !DILocation(line: 158, column: 25, scope: !1727, inlinedAt: !2903)
!2910 = !DILocation(line: 159, column: 18, scope: !1727, inlinedAt: !2903)
!2911 = !DILocation(line: 159, column: 23, scope: !1727, inlinedAt: !2903)
!2912 = !DILocation(line: 159, column: 6, scope: !1727, inlinedAt: !2903)
!2913 = !DILocation(line: 987, column: 10, scope: !2889)
!2914 = !DILocation(line: 988, column: 1, scope: !2889)
!2915 = !DILocation(line: 987, column: 3, scope: !2889)
!2916 = distinct !DISubprogram(name: "quotearg_char", scope: !107, file: !107, line: 991, type: !2917, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!102, !30, !32}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !107, line: 991, type: !30)
!2921 = !DILocalVariable(name: "ch", arg: 2, scope: !2916, file: !107, line: 991, type: !32)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 0, scope: !2889, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 993, column: 10, scope: !2916)
!2925 = !DILocation(line: 984, column: 3, scope: !2889, inlinedAt: !2924)
!2926 = !DILocation(line: 984, column: 26, scope: !2889, inlinedAt: !2924)
!2927 = !DILocation(line: 985, column: 13, scope: !2889, inlinedAt: !2924)
!2928 = !DILocation(line: 0, scope: !1727, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 986, column: 3, scope: !2889, inlinedAt: !2924)
!2930 = !DILocation(line: 156, column: 62, scope: !1727, inlinedAt: !2929)
!2931 = !DILocation(line: 156, column: 57, scope: !1727, inlinedAt: !2929)
!2932 = !DILocation(line: 157, column: 15, scope: !1727, inlinedAt: !2929)
!2933 = !DILocation(line: 158, column: 12, scope: !1727, inlinedAt: !2929)
!2934 = !DILocation(line: 158, column: 15, scope: !1727, inlinedAt: !2929)
!2935 = !DILocation(line: 158, column: 25, scope: !1727, inlinedAt: !2929)
!2936 = !DILocation(line: 159, column: 18, scope: !1727, inlinedAt: !2929)
!2937 = !DILocation(line: 159, column: 23, scope: !1727, inlinedAt: !2929)
!2938 = !DILocation(line: 159, column: 6, scope: !1727, inlinedAt: !2929)
!2939 = !DILocation(line: 987, column: 10, scope: !2889, inlinedAt: !2924)
!2940 = !DILocation(line: 988, column: 1, scope: !2889, inlinedAt: !2924)
!2941 = !DILocation(line: 993, column: 3, scope: !2916)
!2942 = distinct !DISubprogram(name: "quotearg_colon", scope: !107, file: !107, line: 997, type: !1153, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !107, line: 997, type: !30)
!2945 = !DILocation(line: 0, scope: !2942)
!2946 = !DILocation(line: 0, scope: !2916, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 999, column: 10, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2889, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 993, column: 10, scope: !2916, inlinedAt: !2947)
!2950 = !DILocation(line: 984, column: 3, scope: !2889, inlinedAt: !2949)
!2951 = !DILocation(line: 984, column: 26, scope: !2889, inlinedAt: !2949)
!2952 = !DILocation(line: 985, column: 13, scope: !2889, inlinedAt: !2949)
!2953 = !DILocation(line: 0, scope: !1727, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 986, column: 3, scope: !2889, inlinedAt: !2949)
!2955 = !DILocation(line: 156, column: 57, scope: !1727, inlinedAt: !2954)
!2956 = !DILocation(line: 158, column: 12, scope: !1727, inlinedAt: !2954)
!2957 = !DILocation(line: 159, column: 6, scope: !1727, inlinedAt: !2954)
!2958 = !DILocation(line: 987, column: 10, scope: !2889, inlinedAt: !2949)
!2959 = !DILocation(line: 988, column: 1, scope: !2889, inlinedAt: !2949)
!2960 = !DILocation(line: 999, column: 3, scope: !2942)
!2961 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !107, file: !107, line: 1003, type: !2766, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2962)
!2962 = !{!2963, !2964}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !107, line: 1003, type: !30)
!2964 = !DILocalVariable(name: "argsize", arg: 2, scope: !2961, file: !107, line: 1003, type: !34)
!2965 = !DILocation(line: 0, scope: !2961)
!2966 = !DILocation(line: 0, scope: !2889, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1005, column: 10, scope: !2961)
!2968 = !DILocation(line: 984, column: 3, scope: !2889, inlinedAt: !2967)
!2969 = !DILocation(line: 984, column: 26, scope: !2889, inlinedAt: !2967)
!2970 = !DILocation(line: 985, column: 13, scope: !2889, inlinedAt: !2967)
!2971 = !DILocation(line: 0, scope: !1727, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 986, column: 3, scope: !2889, inlinedAt: !2967)
!2973 = !DILocation(line: 156, column: 57, scope: !1727, inlinedAt: !2972)
!2974 = !DILocation(line: 158, column: 12, scope: !1727, inlinedAt: !2972)
!2975 = !DILocation(line: 159, column: 6, scope: !1727, inlinedAt: !2972)
!2976 = !DILocation(line: 987, column: 10, scope: !2889, inlinedAt: !2967)
!2977 = !DILocation(line: 988, column: 1, scope: !2889, inlinedAt: !2967)
!2978 = !DILocation(line: 1005, column: 3, scope: !2961)
!2979 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !107, file: !107, line: 1009, type: !2777, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !107, line: 1009, type: !47)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2979, file: !107, line: 1009, type: !5)
!2983 = !DILocalVariable(name: "arg", arg: 3, scope: !2979, file: !107, line: 1009, type: !30)
!2984 = !DILocalVariable(name: "options", scope: !2979, file: !107, line: 1011, type: !140)
!2985 = !DILocation(line: 195, column: 26, scope: !2792, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1012, column: 13, scope: !2979)
!2987 = !DILocation(line: 0, scope: !2979)
!2988 = !DILocation(line: 1011, column: 3, scope: !2979)
!2989 = !DILocation(line: 1011, column: 26, scope: !2979)
!2990 = !DILocation(line: 1012, column: 13, scope: !2979)
!2991 = !{!2992}
!2992 = distinct !{!2992, !2993, !"quoting_options_from_style: argument 0"}
!2993 = distinct !{!2993, !"quoting_options_from_style"}
!2994 = !DILocation(line: 0, scope: !2792, inlinedAt: !2986)
!2995 = !DILocation(line: 196, column: 13, scope: !2801, inlinedAt: !2986)
!2996 = !DILocation(line: 196, column: 7, scope: !2792, inlinedAt: !2986)
!2997 = !DILocation(line: 197, column: 5, scope: !2801, inlinedAt: !2986)
!2998 = !{i64 0, i64 4, !800, i64 4, i64 32, !1912, i64 36, i64 8, !650, i64 44, i64 8, !650}
!2999 = !DILocation(line: 0, scope: !1727, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 1013, column: 3, scope: !2979)
!3001 = !DILocation(line: 156, column: 57, scope: !1727, inlinedAt: !3000)
!3002 = !DILocation(line: 158, column: 12, scope: !1727, inlinedAt: !3000)
!3003 = !DILocation(line: 159, column: 6, scope: !1727, inlinedAt: !3000)
!3004 = !DILocation(line: 1014, column: 10, scope: !2979)
!3005 = !DILocation(line: 1015, column: 1, scope: !2979)
!3006 = !DILocation(line: 1014, column: 3, scope: !2979)
!3007 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !107, file: !107, line: 1018, type: !3008, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!102, !47, !30, !30, !30}
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3007, file: !107, line: 1018, type: !47)
!3012 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3007, file: !107, line: 1018, type: !30)
!3013 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3007, file: !107, line: 1019, type: !30)
!3014 = !DILocalVariable(name: "arg", arg: 4, scope: !3007, file: !107, line: 1019, type: !30)
!3015 = !DILocation(line: 0, scope: !3007)
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !107, line: 1026, type: !47)
!3017 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !107, file: !107, line: 1026, type: !3018, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!102, !47, !30, !30, !30, !34}
!3020 = !{!3016, !3021, !3022, !3023, !3024, !3025}
!3021 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3017, file: !107, line: 1026, type: !30)
!3022 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3017, file: !107, line: 1027, type: !30)
!3023 = !DILocalVariable(name: "arg", arg: 4, scope: !3017, file: !107, line: 1028, type: !30)
!3024 = !DILocalVariable(name: "argsize", arg: 5, scope: !3017, file: !107, line: 1028, type: !34)
!3025 = !DILocalVariable(name: "o", scope: !3017, file: !107, line: 1030, type: !140)
!3026 = !DILocation(line: 0, scope: !3017, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1021, column: 10, scope: !3007)
!3028 = !DILocation(line: 1030, column: 3, scope: !3017, inlinedAt: !3027)
!3029 = !DILocation(line: 1030, column: 26, scope: !3017, inlinedAt: !3027)
!3030 = !DILocation(line: 1030, column: 30, scope: !3017, inlinedAt: !3027)
!3031 = !DILocation(line: 0, scope: !1767, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1031, column: 3, scope: !3017, inlinedAt: !3027)
!3033 = !DILocation(line: 184, column: 6, scope: !1767, inlinedAt: !3032)
!3034 = !DILocation(line: 184, column: 12, scope: !1767, inlinedAt: !3032)
!3035 = !DILocation(line: 185, column: 8, scope: !1781, inlinedAt: !3032)
!3036 = !DILocation(line: 185, column: 19, scope: !1781, inlinedAt: !3032)
!3037 = !DILocation(line: 186, column: 5, scope: !1781, inlinedAt: !3032)
!3038 = !DILocation(line: 187, column: 6, scope: !1767, inlinedAt: !3032)
!3039 = !DILocation(line: 187, column: 17, scope: !1767, inlinedAt: !3032)
!3040 = !DILocation(line: 188, column: 6, scope: !1767, inlinedAt: !3032)
!3041 = !DILocation(line: 188, column: 18, scope: !1767, inlinedAt: !3032)
!3042 = !DILocation(line: 1032, column: 10, scope: !3017, inlinedAt: !3027)
!3043 = !DILocation(line: 1033, column: 1, scope: !3017, inlinedAt: !3027)
!3044 = !DILocation(line: 1021, column: 3, scope: !3007)
!3045 = !DILocation(line: 0, scope: !3017)
!3046 = !DILocation(line: 1030, column: 3, scope: !3017)
!3047 = !DILocation(line: 1030, column: 26, scope: !3017)
!3048 = !DILocation(line: 1030, column: 30, scope: !3017)
!3049 = !DILocation(line: 0, scope: !1767, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1031, column: 3, scope: !3017)
!3051 = !DILocation(line: 184, column: 6, scope: !1767, inlinedAt: !3050)
!3052 = !DILocation(line: 184, column: 12, scope: !1767, inlinedAt: !3050)
!3053 = !DILocation(line: 185, column: 8, scope: !1781, inlinedAt: !3050)
!3054 = !DILocation(line: 185, column: 19, scope: !1781, inlinedAt: !3050)
!3055 = !DILocation(line: 186, column: 5, scope: !1781, inlinedAt: !3050)
!3056 = !DILocation(line: 187, column: 6, scope: !1767, inlinedAt: !3050)
!3057 = !DILocation(line: 187, column: 17, scope: !1767, inlinedAt: !3050)
!3058 = !DILocation(line: 188, column: 6, scope: !1767, inlinedAt: !3050)
!3059 = !DILocation(line: 188, column: 18, scope: !1767, inlinedAt: !3050)
!3060 = !DILocation(line: 1032, column: 10, scope: !3017)
!3061 = !DILocation(line: 1033, column: 1, scope: !3017)
!3062 = !DILocation(line: 1032, column: 3, scope: !3017)
!3063 = distinct !DISubprogram(name: "quotearg_custom", scope: !107, file: !107, line: 1036, type: !3064, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!102, !30, !30, !30}
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3063, file: !107, line: 1036, type: !30)
!3068 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3063, file: !107, line: 1036, type: !30)
!3069 = !DILocalVariable(name: "arg", arg: 3, scope: !3063, file: !107, line: 1037, type: !30)
!3070 = !DILocation(line: 0, scope: !3063)
!3071 = !DILocation(line: 0, scope: !3007, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 1039, column: 10, scope: !3063)
!3073 = !DILocation(line: 0, scope: !3017, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1021, column: 10, scope: !3007, inlinedAt: !3072)
!3075 = !DILocation(line: 1030, column: 3, scope: !3017, inlinedAt: !3074)
!3076 = !DILocation(line: 1030, column: 26, scope: !3017, inlinedAt: !3074)
!3077 = !DILocation(line: 1030, column: 30, scope: !3017, inlinedAt: !3074)
!3078 = !DILocation(line: 0, scope: !1767, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1031, column: 3, scope: !3017, inlinedAt: !3074)
!3080 = !DILocation(line: 184, column: 6, scope: !1767, inlinedAt: !3079)
!3081 = !DILocation(line: 184, column: 12, scope: !1767, inlinedAt: !3079)
!3082 = !DILocation(line: 185, column: 8, scope: !1781, inlinedAt: !3079)
!3083 = !DILocation(line: 185, column: 19, scope: !1781, inlinedAt: !3079)
!3084 = !DILocation(line: 186, column: 5, scope: !1781, inlinedAt: !3079)
!3085 = !DILocation(line: 187, column: 6, scope: !1767, inlinedAt: !3079)
!3086 = !DILocation(line: 187, column: 17, scope: !1767, inlinedAt: !3079)
!3087 = !DILocation(line: 188, column: 6, scope: !1767, inlinedAt: !3079)
!3088 = !DILocation(line: 188, column: 18, scope: !1767, inlinedAt: !3079)
!3089 = !DILocation(line: 1032, column: 10, scope: !3017, inlinedAt: !3074)
!3090 = !DILocation(line: 1033, column: 1, scope: !3017, inlinedAt: !3074)
!3091 = !DILocation(line: 1039, column: 3, scope: !3063)
!3092 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !107, file: !107, line: 1043, type: !3093, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!102, !30, !30, !30, !34}
!3095 = !{!3096, !3097, !3098, !3099}
!3096 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3092, file: !107, line: 1043, type: !30)
!3097 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3092, file: !107, line: 1043, type: !30)
!3098 = !DILocalVariable(name: "arg", arg: 3, scope: !3092, file: !107, line: 1044, type: !30)
!3099 = !DILocalVariable(name: "argsize", arg: 4, scope: !3092, file: !107, line: 1044, type: !34)
!3100 = !DILocation(line: 0, scope: !3092)
!3101 = !DILocation(line: 0, scope: !3017, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1046, column: 10, scope: !3092)
!3103 = !DILocation(line: 1030, column: 3, scope: !3017, inlinedAt: !3102)
!3104 = !DILocation(line: 1030, column: 26, scope: !3017, inlinedAt: !3102)
!3105 = !DILocation(line: 1030, column: 30, scope: !3017, inlinedAt: !3102)
!3106 = !DILocation(line: 0, scope: !1767, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 1031, column: 3, scope: !3017, inlinedAt: !3102)
!3108 = !DILocation(line: 184, column: 6, scope: !1767, inlinedAt: !3107)
!3109 = !DILocation(line: 184, column: 12, scope: !1767, inlinedAt: !3107)
!3110 = !DILocation(line: 185, column: 8, scope: !1781, inlinedAt: !3107)
!3111 = !DILocation(line: 185, column: 19, scope: !1781, inlinedAt: !3107)
!3112 = !DILocation(line: 186, column: 5, scope: !1781, inlinedAt: !3107)
!3113 = !DILocation(line: 187, column: 6, scope: !1767, inlinedAt: !3107)
!3114 = !DILocation(line: 187, column: 17, scope: !1767, inlinedAt: !3107)
!3115 = !DILocation(line: 188, column: 6, scope: !1767, inlinedAt: !3107)
!3116 = !DILocation(line: 188, column: 18, scope: !1767, inlinedAt: !3107)
!3117 = !DILocation(line: 1032, column: 10, scope: !3017, inlinedAt: !3102)
!3118 = !DILocation(line: 1033, column: 1, scope: !3017, inlinedAt: !3102)
!3119 = !DILocation(line: 1046, column: 3, scope: !3092)
!3120 = distinct !DISubprogram(name: "quote_n_mem", scope: !107, file: !107, line: 1061, type: !3121, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!30, !47, !30, !34}
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3120, file: !107, line: 1061, type: !47)
!3125 = !DILocalVariable(name: "arg", arg: 2, scope: !3120, file: !107, line: 1061, type: !30)
!3126 = !DILocalVariable(name: "argsize", arg: 3, scope: !3120, file: !107, line: 1061, type: !34)
!3127 = !DILocation(line: 0, scope: !3120)
!3128 = !DILocation(line: 1063, column: 10, scope: !3120)
!3129 = !DILocation(line: 1063, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "quote_mem", scope: !107, file: !107, line: 1067, type: !3131, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!30, !30, !34}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !107, line: 1067, type: !30)
!3135 = !DILocalVariable(name: "argsize", arg: 2, scope: !3130, file: !107, line: 1067, type: !34)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 0, scope: !3120, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1069, column: 10, scope: !3130)
!3139 = !DILocation(line: 1063, column: 10, scope: !3120, inlinedAt: !3138)
!3140 = !DILocation(line: 1069, column: 3, scope: !3130)
!3141 = distinct !DISubprogram(name: "quote_n", scope: !107, file: !107, line: 1073, type: !3142, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!30, !47, !30}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !107, line: 1073, type: !47)
!3146 = !DILocalVariable(name: "arg", arg: 2, scope: !3141, file: !107, line: 1073, type: !30)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3120, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1075, column: 10, scope: !3141)
!3150 = !DILocation(line: 1063, column: 10, scope: !3120, inlinedAt: !3149)
!3151 = !DILocation(line: 1075, column: 3, scope: !3141)
!3152 = distinct !DISubprogram(name: "quote", scope: !107, file: !107, line: 1079, type: !3153, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!30, !30}
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "arg", arg: 1, scope: !3152, file: !107, line: 1079, type: !30)
!3157 = !DILocation(line: 0, scope: !3152)
!3158 = !DILocation(line: 0, scope: !3141, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 1081, column: 10, scope: !3152)
!3160 = !DILocation(line: 0, scope: !3120, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1075, column: 10, scope: !3141, inlinedAt: !3159)
!3162 = !DILocation(line: 1063, column: 10, scope: !3120, inlinedAt: !3161)
!3163 = !DILocation(line: 1081, column: 3, scope: !3152)
!3164 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !186, file: !186, line: 44, type: !3165, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3173)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !827, line: 31, baseType: !3169)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !827, line: 26, size: 128, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3169, file: !827, line: 28, baseType: !34, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3169, file: !827, line: 29, baseType: !102, size: 64, offset: 64)
!3173 = !{!3174}
!3174 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3164, file: !186, line: 44, type: !3167)
!3175 = !DILocation(line: 0, scope: !3164)
!3176 = !DILocation(line: 48, column: 1, scope: !3164)
!3177 = !DILocation(line: 47, column: 23, scope: !3164)
!3178 = distinct !DISubprogram(name: "readtoken", scope: !186, file: !186, line: 80, type: !3179, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3215)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!34, !3181, !30, !34, !3167}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3183, file: !727, line: 51, baseType: !47, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3183, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3183, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3183, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3183, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3183, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3183, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3183, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3183, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3183, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3183, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3183, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3183, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3183, file: !727, line: 70, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3183, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3183, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3183, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3183, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3183, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3183, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3183, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3183, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3183, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3183, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3183, file: !727, line: 93, baseType: !3199, size: 64, offset: 1344)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3183, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3183, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3183, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3183, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3227}
!3216 = !DILocalVariable(name: "stream", arg: 1, scope: !3178, file: !186, line: 80, type: !3181)
!3217 = !DILocalVariable(name: "delim", arg: 2, scope: !3178, file: !186, line: 81, type: !30)
!3218 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3178, file: !186, line: 82, type: !34)
!3219 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3178, file: !186, line: 83, type: !3167)
!3220 = !DILocalVariable(name: "p", scope: !3178, file: !186, line: 85, type: !102)
!3221 = !DILocalVariable(name: "c", scope: !3178, file: !186, line: 86, type: !47)
!3222 = !DILocalVariable(name: "i", scope: !3178, file: !186, line: 87, type: !34)
!3223 = !DILocalVariable(name: "n", scope: !3178, file: !186, line: 87, type: !34)
!3224 = !DILocalVariable(name: "isdelim", scope: !3178, file: !186, line: 88, type: !3225)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3226, size: 256, elements: !1868)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !186, line: 50, baseType: !34)
!3227 = !DILocalVariable(name: "ch", scope: !3228, file: !186, line: 93, type: !206)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !186, line: 92, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !186, line: 91, column: 3)
!3230 = distinct !DILexicalBlock(scope: !3178, file: !186, line: 91, column: 3)
!3231 = !DILocation(line: 0, scope: !3178)
!3232 = !DILocation(line: 88, column: 3, scope: !3178)
!3233 = !DILocation(line: 88, column: 8, scope: !3178)
!3234 = !DILocalVariable(name: "__dest", arg: 1, scope: !3235, file: !2104, line: 57, type: !33)
!3235 = distinct !DISubprogram(name: "memset", scope: !2104, file: !2104, line: 57, type: !2105, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3236)
!3236 = !{!3234, !3237, !3238}
!3237 = !DILocalVariable(name: "__ch", arg: 2, scope: !3235, file: !2104, line: 57, type: !47)
!3238 = !DILocalVariable(name: "__len", arg: 3, scope: !3235, file: !2104, line: 57, type: !34)
!3239 = !DILocation(line: 0, scope: !3235, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 90, column: 3, scope: !3178)
!3241 = !DILocation(line: 59, column: 10, scope: !3235, inlinedAt: !3240)
!3242 = !DILocation(line: 91, column: 17, scope: !3229)
!3243 = !DILocation(line: 91, column: 3, scope: !3230)
!3244 = !DILocation(line: 93, column: 26, scope: !3228)
!3245 = !DILocation(line: 0, scope: !3228)
!3246 = !DILocation(line: 94, column: 20, scope: !3228)
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !186, line: 60, type: !34)
!3248 = distinct !DISubprogram(name: "set_nth_bit", scope: !186, file: !186, line: 60, type: !3249, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3252)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !34, !3251}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3252 = !{!3247, !3253, !3254}
!3253 = !DILocalVariable(name: "bitset", arg: 2, scope: !3248, file: !186, line: 60, type: !3251)
!3254 = !DILocalVariable(name: "one", scope: !3248, file: !186, line: 62, type: !34)
!3255 = !DILocation(line: 0, scope: !3248, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 94, column: 7, scope: !3228)
!3257 = !DILocation(line: 63, column: 41, scope: !3248, inlinedAt: !3256)
!3258 = !DILocation(line: 63, column: 36, scope: !3248, inlinedAt: !3256)
!3259 = !DILocation(line: 63, column: 12, scope: !3248, inlinedAt: !3256)
!3260 = !DILocation(line: 63, column: 3, scope: !3248, inlinedAt: !3256)
!3261 = !DILocation(line: 63, column: 29, scope: !3248, inlinedAt: !3256)
!3262 = !DILocation(line: 91, column: 29, scope: !3229)
!3263 = distinct !{!3263, !3243, !3264, !697}
!3264 = !DILocation(line: 95, column: 5, scope: !3230)
!3265 = !DILocation(line: 68, column: 10, scope: !3266, inlinedAt: !3272)
!3266 = distinct !DISubprogram(name: "getc_unlocked", scope: !3267, file: !3267, line: 66, type: !3268, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3270)
!3267 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!47, !3181}
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "__fp", arg: 1, scope: !3266, file: !3267, line: 66, type: !3181)
!3272 = distinct !DILocation(line: 98, column: 12, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3178, file: !186, line: 98, column: 3)
!3274 = !DILocation(line: 0, scope: !3266, inlinedAt: !3272)
!3275 = !{!3276, !651, i64 8}
!3276 = !{!"_IO_FILE", !801, i64 0, !651, i64 8, !651, i64 16, !651, i64 24, !651, i64 32, !651, i64 40, !651, i64 48, !651, i64 56, !651, i64 64, !651, i64 72, !651, i64 80, !651, i64 88, !651, i64 96, !651, i64 104, !801, i64 112, !801, i64 116, !876, i64 120, !2096, i64 128, !652, i64 130, !652, i64 131, !651, i64 136, !876, i64 144, !651, i64 152, !651, i64 160, !651, i64 168, !651, i64 176, !876, i64 184, !801, i64 192, !652, i64 196}
!3277 = !{!3276, !651, i64 16}
!3278 = !{!"branch_weights", i32 2000, i32 1}
!3279 = !DILocation(line: 98, column: 34, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3273, file: !186, line: 98, column: 3)
!3281 = !DILocation(line: 98, column: 29, scope: !3280)
!3282 = !DILocation(line: 98, column: 3, scope: !3273)
!3283 = !DILocation(line: 98, column: 50, scope: !3280)
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !186, line: 54, type: !34)
!3285 = distinct !DISubprogram(name: "get_nth_bit", scope: !186, file: !186, line: 54, type: !3286, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3290)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!73, !34, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3226)
!3290 = !{!3284, !3291}
!3291 = !DILocalVariable(name: "bitset", arg: 2, scope: !3285, file: !186, line: 54, type: !3288)
!3292 = !DILocation(line: 0, scope: !3285, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 98, column: 37, scope: !3280)
!3294 = !DILocation(line: 56, column: 19, scope: !3285, inlinedAt: !3293)
!3295 = !DILocation(line: 56, column: 10, scope: !3285, inlinedAt: !3293)
!3296 = !DILocation(line: 56, column: 41, scope: !3285, inlinedAt: !3293)
!3297 = !DILocation(line: 0, scope: !3266, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 98, column: 67, scope: !3280)
!3299 = !DILocation(line: 68, column: 10, scope: !3266, inlinedAt: !3298)
!3300 = distinct !{!3300, !3282, !3301, !697}
!3301 = !DILocation(line: 101, column: 5, scope: !3273)
!3302 = !DILocation(line: 103, column: 20, scope: !3178)
!3303 = !DILocation(line: 104, column: 20, scope: !3178)
!3304 = !{!875, !876, i64 0}
!3305 = !DILocation(line: 106, column: 3, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3178, file: !186, line: 106, column: 3)
!3307 = !DILocation(line: 111, column: 13, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !186, line: 111, column: 11)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !186, line: 107, column: 5)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !186, line: 106, column: 3)
!3311 = !DILocation(line: 111, column: 11, scope: !3309)
!3312 = !DILocation(line: 0, scope: !193, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 112, column: 13, scope: !3308)
!3314 = !DILocation(line: 178, column: 9, scope: !3315, inlinedAt: !3313)
!3315 = distinct !DILexicalBlock(scope: !193, file: !192, line: 178, column: 7)
!3316 = !DILocation(line: 178, column: 7, scope: !193, inlinedAt: !3313)
!3317 = !DILocation(line: 180, column: 13, scope: !3318, inlinedAt: !3313)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !192, line: 180, column: 11)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !192, line: 179, column: 5)
!3320 = !DILocation(line: 180, column: 11, scope: !3319, inlinedAt: !3313)
!3321 = !DILocation(line: 191, column: 11, scope: !3322, inlinedAt: !3313)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !192, line: 191, column: 11)
!3323 = !DILocation(line: 191, column: 11, scope: !3319, inlinedAt: !3313)
!3324 = !DILocation(line: 192, column: 9, scope: !3322, inlinedAt: !3313)
!3325 = !DILocation(line: 201, column: 11, scope: !3326, inlinedAt: !3313)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !192, line: 200, column: 11)
!3327 = distinct !DILexicalBlock(scope: !3315, file: !192, line: 195, column: 5)
!3328 = !DILocation(line: 200, column: 11, scope: !3327, inlinedAt: !3313)
!3329 = !DILocation(line: 202, column: 9, scope: !3326, inlinedAt: !3313)
!3330 = !DILocation(line: 203, column: 14, scope: !3327, inlinedAt: !3313)
!3331 = !DILocation(line: 203, column: 18, scope: !3327, inlinedAt: !3313)
!3332 = !DILocation(line: 203, column: 9, scope: !3327, inlinedAt: !3313)
!3333 = !DILocation(line: 207, column: 10, scope: !193, inlinedAt: !3313)
!3334 = !DILocation(line: 112, column: 9, scope: !3308)
!3335 = !DILocation(line: 114, column: 11, scope: !3309)
!3336 = !DILocation(line: 119, column: 24, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3309, file: !186, line: 119, column: 11)
!3338 = !DILocation(line: 0, scope: !3285, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 119, column: 11, scope: !3337)
!3340 = !DILocation(line: 56, column: 19, scope: !3285, inlinedAt: !3339)
!3341 = !DILocation(line: 56, column: 10, scope: !3285, inlinedAt: !3339)
!3342 = !DILocation(line: 56, column: 41, scope: !3285, inlinedAt: !3339)
!3343 = !DILocation(line: 119, column: 11, scope: !3309)
!3344 = !DILocation(line: 124, column: 16, scope: !3309)
!3345 = !DILocation(line: 124, column: 10, scope: !3309)
!3346 = !DILocation(line: 124, column: 7, scope: !3309)
!3347 = !DILocation(line: 124, column: 14, scope: !3309)
!3348 = !DILocation(line: 0, scope: !3266, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 125, column: 11, scope: !3309)
!3350 = !DILocation(line: 68, column: 10, scope: !3266, inlinedAt: !3349)
!3351 = !DILocation(line: 108, column: 13, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3309, file: !186, line: 108, column: 11)
!3353 = !DILocation(line: 108, column: 17, scope: !3352)
!3354 = distinct !{!3354, !3305, !3355}
!3355 = !DILocation(line: 126, column: 5, scope: !3306)
!3356 = !DILocation(line: 0, scope: !3309)
!3357 = !DILocation(line: 128, column: 23, scope: !3178)
!3358 = !DILocation(line: 129, column: 21, scope: !3178)
!3359 = !DILocation(line: 130, column: 3, scope: !3178)
!3360 = !DILocation(line: 131, column: 1, scope: !3178)
!3361 = distinct !DISubprogram(name: "readtokens", scope: !186, file: !186, line: 141, type: !3362, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3366)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!34, !3181, !34, !30, !34, !3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3383}
!3367 = !DILocalVariable(name: "stream", arg: 1, scope: !3361, file: !186, line: 141, type: !3181)
!3368 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3361, file: !186, line: 142, type: !34)
!3369 = !DILocalVariable(name: "delim", arg: 3, scope: !3361, file: !186, line: 143, type: !30)
!3370 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3361, file: !186, line: 144, type: !34)
!3371 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3361, file: !186, line: 145, type: !3364)
!3372 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3361, file: !186, line: 146, type: !3365)
!3373 = !DILocalVariable(name: "tb", scope: !3361, file: !186, line: 148, type: !3168)
!3374 = !DILocalVariable(name: "token", scope: !3361, file: !186, line: 148, type: !3167)
!3375 = !DILocalVariable(name: "tokens", scope: !3361, file: !186, line: 149, type: !784)
!3376 = !DILocalVariable(name: "lengths", scope: !3361, file: !186, line: 150, type: !196)
!3377 = !DILocalVariable(name: "sz", scope: !3361, file: !186, line: 151, type: !34)
!3378 = !DILocalVariable(name: "n_tokens", scope: !3361, file: !186, line: 152, type: !34)
!3379 = !DILocalVariable(name: "tmp", scope: !3380, file: !186, line: 167, type: !102)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !186, line: 166, column: 5)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !186, line: 165, column: 3)
!3382 = distinct !DILexicalBlock(scope: !3361, file: !186, line: 165, column: 3)
!3383 = !DILocalVariable(name: "token_length", scope: !3380, file: !186, line: 168, type: !34)
!3384 = !DILocation(line: 0, scope: !3361)
!3385 = !DILocation(line: 148, column: 3, scope: !3361)
!3386 = !DILocation(line: 148, column: 16, scope: !3361)
!3387 = !DILocation(line: 154, column: 26, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3361, file: !186, line: 154, column: 7)
!3389 = !DILocation(line: 154, column: 7, scope: !3361)
!3390 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !192, line: 99, type: !34)
!3391 = distinct !DISubprogram(name: "xnmalloc", scope: !192, file: !192, line: 99, type: !3392, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!33, !34, !34}
!3394 = !{!3390, !3395}
!3395 = !DILocalVariable(name: "s", arg: 2, scope: !3391, file: !192, line: 99, type: !34)
!3396 = !DILocation(line: 0, scope: !3391, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 160, column: 12, scope: !3361)
!3398 = !DILocation(line: 101, column: 7, scope: !3399, inlinedAt: !3397)
!3399 = distinct !DILexicalBlock(scope: !3391, file: !192, line: 101, column: 7)
!3400 = !DILocation(line: 101, column: 7, scope: !3391, inlinedAt: !3397)
!3401 = !DILocation(line: 102, column: 5, scope: !3399, inlinedAt: !3397)
!3402 = !DILocation(line: 103, column: 21, scope: !3391, inlinedAt: !3397)
!3403 = !DILocation(line: 103, column: 10, scope: !3391, inlinedAt: !3397)
!3404 = !DILocation(line: 160, column: 12, scope: !3361)
!3405 = !DILocation(line: 0, scope: !3391, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 161, column: 13, scope: !3361)
!3407 = !DILocation(line: 103, column: 10, scope: !3391, inlinedAt: !3406)
!3408 = !DILocation(line: 161, column: 13, scope: !3361)
!3409 = !DILocation(line: 0, scope: !3164, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 164, column: 3, scope: !3361)
!3411 = !DILocation(line: 47, column: 23, scope: !3164, inlinedAt: !3410)
!3412 = !DILocation(line: 165, column: 3, scope: !3361)
!3413 = !DILocation(line: 159, column: 6, scope: !3361)
!3414 = !DILocation(line: 163, column: 12, scope: !3361)
!3415 = !DILocation(line: 168, column: 29, scope: !3380)
!3416 = !DILocation(line: 0, scope: !3380)
!3417 = !DILocation(line: 169, column: 20, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3380, file: !186, line: 169, column: 11)
!3419 = !DILocation(line: 169, column: 11, scope: !3380)
!3420 = !DILocation(line: 171, column: 32, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !186, line: 170, column: 9)
!3422 = !DILocation(line: 0, scope: !193, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 171, column: 20, scope: !3421)
!3424 = !DILocation(line: 178, column: 9, scope: !3315, inlinedAt: !3423)
!3425 = !DILocation(line: 178, column: 7, scope: !193, inlinedAt: !3423)
!3426 = !DILocation(line: 180, column: 13, scope: !3318, inlinedAt: !3423)
!3427 = !DILocation(line: 180, column: 11, scope: !3319, inlinedAt: !3423)
!3428 = !DILocation(line: 191, column: 11, scope: !3322, inlinedAt: !3423)
!3429 = !DILocation(line: 191, column: 11, scope: !3319, inlinedAt: !3423)
!3430 = !DILocation(line: 192, column: 9, scope: !3322, inlinedAt: !3423)
!3431 = !DILocation(line: 201, column: 11, scope: !3326, inlinedAt: !3423)
!3432 = !DILocation(line: 200, column: 11, scope: !3327, inlinedAt: !3423)
!3433 = !DILocation(line: 202, column: 9, scope: !3326, inlinedAt: !3423)
!3434 = !DILocation(line: 203, column: 14, scope: !3327, inlinedAt: !3423)
!3435 = !DILocation(line: 203, column: 18, scope: !3327, inlinedAt: !3423)
!3436 = !DILocation(line: 203, column: 9, scope: !3327, inlinedAt: !3423)
!3437 = !DILocation(line: 207, column: 25, scope: !193, inlinedAt: !3423)
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !192, line: 112, type: !33)
!3439 = distinct !DISubprogram(name: "xnrealloc", scope: !192, file: !192, line: 112, type: !3440, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!33, !33, !34, !34}
!3442 = !{!3438, !3443, !3444}
!3443 = !DILocalVariable(name: "n", arg: 2, scope: !3439, file: !192, line: 112, type: !34)
!3444 = !DILocalVariable(name: "s", arg: 3, scope: !3439, file: !192, line: 112, type: !34)
!3445 = !DILocation(line: 0, scope: !3439, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 172, column: 21, scope: !3421)
!3447 = !DILocation(line: 114, column: 7, scope: !3439, inlinedAt: !3446)
!3448 = !DILocation(line: 207, column: 10, scope: !193, inlinedAt: !3423)
!3449 = !DILocation(line: 171, column: 20, scope: !3421)
!3450 = !DILocation(line: 172, column: 32, scope: !3421)
!3451 = !DILocation(line: 116, column: 10, scope: !3439, inlinedAt: !3446)
!3452 = !DILocation(line: 172, column: 21, scope: !3421)
!3453 = !DILocation(line: 173, column: 9, scope: !3421)
!3454 = !DILocation(line: 175, column: 24, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3380, file: !186, line: 175, column: 11)
!3456 = !DILocation(line: 175, column: 11, scope: !3380)
!3457 = !DILocation(line: 182, column: 36, scope: !3380)
!3458 = !DILocation(line: 0, scope: !3391, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 182, column: 13, scope: !3380)
!3460 = !DILocation(line: 101, column: 7, scope: !3399, inlinedAt: !3459)
!3461 = !DILocation(line: 101, column: 7, scope: !3391, inlinedAt: !3459)
!3462 = !DILocation(line: 102, column: 5, scope: !3399, inlinedAt: !3459)
!3463 = !DILocation(line: 103, column: 10, scope: !3391, inlinedAt: !3459)
!3464 = !DILocation(line: 183, column: 7, scope: !3380)
!3465 = !DILocation(line: 183, column: 25, scope: !3380)
!3466 = !DILocation(line: 184, column: 46, scope: !3380)
!3467 = !DILocalVariable(name: "__dest", arg: 1, scope: !3468, file: !2104, line: 26, type: !3471)
!3468 = distinct !DISubprogram(name: "memcpy", scope: !2104, file: !2104, line: 26, type: !3469, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3475)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!33, !3471, !3472, !34}
!3471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!3472 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3473)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3475 = !{!3467, !3476, !3477}
!3476 = !DILocalVariable(name: "__src", arg: 2, scope: !3468, file: !2104, line: 26, type: !3472)
!3477 = !DILocalVariable(name: "__len", arg: 3, scope: !3468, file: !2104, line: 26, type: !34)
!3478 = !DILocation(line: 0, scope: !3468, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 184, column: 26, scope: !3380)
!3480 = !DILocation(line: 29, column: 10, scope: !3468, inlinedAt: !3479)
!3481 = !DILocation(line: 184, column: 7, scope: !3380)
!3482 = !DILocation(line: 184, column: 24, scope: !3380)
!3483 = !DILocation(line: 185, column: 15, scope: !3380)
!3484 = !DILocation(line: 178, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3455, file: !186, line: 176, column: 9)
!3486 = !DILocation(line: 178, column: 28, scope: !3485)
!3487 = !DILocation(line: 179, column: 11, scope: !3485)
!3488 = !DILocation(line: 179, column: 29, scope: !3485)
!3489 = !DILocation(line: 188, column: 16, scope: !3361)
!3490 = !DILocation(line: 188, column: 3, scope: !3361)
!3491 = !DILocation(line: 189, column: 15, scope: !3361)
!3492 = !DILocation(line: 190, column: 21, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3361, file: !186, line: 190, column: 7)
!3494 = !DILocation(line: 190, column: 7, scope: !3361)
!3495 = !DILocation(line: 191, column: 20, scope: !3493)
!3496 = !DILocation(line: 191, column: 5, scope: !3493)
!3497 = !DILocation(line: 193, column: 11, scope: !3493)
!3498 = !DILocation(line: 193, column: 5, scope: !3493)
!3499 = !DILocation(line: 195, column: 1, scope: !3361)
!3500 = !DILocation(line: 194, column: 3, scope: !3361)
!3501 = distinct !DISubprogram(name: "version_etc_arn", scope: !208, file: !208, line: 61, type: !3502, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3539)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !3504, !30, !30, !30, !3538, !34}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3506, file: !727, line: 51, baseType: !47, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3506, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3506, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3506, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3506, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3506, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3506, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3506, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3506, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3506, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3506, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3506, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3506, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3506, file: !727, line: 70, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3506, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3506, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3506, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3506, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3506, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3506, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3506, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3506, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3506, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3506, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3506, file: !727, line: 93, baseType: !3522, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3506, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3506, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3506, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3506, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545}
!3540 = !DILocalVariable(name: "stream", arg: 1, scope: !3501, file: !208, line: 61, type: !3504)
!3541 = !DILocalVariable(name: "command_name", arg: 2, scope: !3501, file: !208, line: 62, type: !30)
!3542 = !DILocalVariable(name: "package", arg: 3, scope: !3501, file: !208, line: 62, type: !30)
!3543 = !DILocalVariable(name: "version", arg: 4, scope: !3501, file: !208, line: 63, type: !30)
!3544 = !DILocalVariable(name: "authors", arg: 5, scope: !3501, file: !208, line: 64, type: !3538)
!3545 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3501, file: !208, line: 64, type: !34)
!3546 = !DILocation(line: 0, scope: !3501)
!3547 = !DILocation(line: 66, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3501, file: !208, line: 66, column: 7)
!3549 = !DILocation(line: 66, column: 7, scope: !3501)
!3550 = !DILocation(line: 67, column: 5, scope: !3548)
!3551 = !DILocation(line: 69, column: 5, scope: !3548)
!3552 = !DILocation(line: 83, column: 3, scope: !3501)
!3553 = !DILocation(line: 85, column: 3, scope: !3501)
!3554 = !DILocation(line: 88, column: 3, scope: !3501)
!3555 = !DILocation(line: 95, column: 3, scope: !3501)
!3556 = !DILocation(line: 97, column: 3, scope: !3501)
!3557 = !DILocation(line: 105, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3501, file: !208, line: 98, column: 5)
!3559 = !DILocation(line: 106, column: 7, scope: !3558)
!3560 = !DILocation(line: 109, column: 7, scope: !3558)
!3561 = !DILocation(line: 110, column: 7, scope: !3558)
!3562 = !DILocation(line: 113, column: 7, scope: !3558)
!3563 = !DILocation(line: 115, column: 7, scope: !3558)
!3564 = !DILocation(line: 120, column: 7, scope: !3558)
!3565 = !DILocation(line: 122, column: 7, scope: !3558)
!3566 = !DILocation(line: 127, column: 7, scope: !3558)
!3567 = !DILocation(line: 129, column: 7, scope: !3558)
!3568 = !DILocation(line: 134, column: 7, scope: !3558)
!3569 = !DILocation(line: 137, column: 7, scope: !3558)
!3570 = !DILocation(line: 142, column: 7, scope: !3558)
!3571 = !DILocation(line: 145, column: 7, scope: !3558)
!3572 = !DILocation(line: 150, column: 7, scope: !3558)
!3573 = !DILocation(line: 154, column: 7, scope: !3558)
!3574 = !DILocation(line: 159, column: 7, scope: !3558)
!3575 = !DILocation(line: 163, column: 7, scope: !3558)
!3576 = !DILocation(line: 170, column: 7, scope: !3558)
!3577 = !DILocation(line: 174, column: 7, scope: !3558)
!3578 = !DILocation(line: 176, column: 1, scope: !3501)
!3579 = distinct !DISubprogram(name: "version_etc_ar", scope: !208, file: !208, line: 183, type: !3580, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3504, !30, !30, !30, !3538}
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588}
!3583 = !DILocalVariable(name: "stream", arg: 1, scope: !3579, file: !208, line: 183, type: !3504)
!3584 = !DILocalVariable(name: "command_name", arg: 2, scope: !3579, file: !208, line: 184, type: !30)
!3585 = !DILocalVariable(name: "package", arg: 3, scope: !3579, file: !208, line: 184, type: !30)
!3586 = !DILocalVariable(name: "version", arg: 4, scope: !3579, file: !208, line: 185, type: !30)
!3587 = !DILocalVariable(name: "authors", arg: 5, scope: !3579, file: !208, line: 185, type: !3538)
!3588 = !DILocalVariable(name: "n_authors", scope: !3579, file: !208, line: 187, type: !34)
!3589 = !DILocation(line: 0, scope: !3579)
!3590 = !DILocation(line: 189, column: 8, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3579, file: !208, line: 189, column: 3)
!3592 = !DILocation(line: 0, scope: !3591)
!3593 = !DILocation(line: 189, column: 23, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !208, line: 189, column: 3)
!3595 = !DILocation(line: 189, column: 3, scope: !3591)
!3596 = !DILocation(line: 189, column: 52, scope: !3594)
!3597 = distinct !{!3597, !3595, !3598, !697}
!3598 = !DILocation(line: 190, column: 5, scope: !3591)
!3599 = !DILocation(line: 191, column: 3, scope: !3579)
!3600 = !DILocation(line: 192, column: 1, scope: !3579)
!3601 = distinct !DISubprogram(name: "version_etc_va", scope: !208, file: !208, line: 199, type: !3602, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3611)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3504, !30, !30, !30, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3605, file: !208, line: 192, baseType: !7, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3605, file: !208, line: 192, baseType: !7, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3605, file: !208, line: 192, baseType: !33, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3605, file: !208, line: 192, baseType: !33, size: 64, offset: 128)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3612 = !DILocalVariable(name: "stream", arg: 1, scope: !3601, file: !208, line: 199, type: !3504)
!3613 = !DILocalVariable(name: "command_name", arg: 2, scope: !3601, file: !208, line: 200, type: !30)
!3614 = !DILocalVariable(name: "package", arg: 3, scope: !3601, file: !208, line: 200, type: !30)
!3615 = !DILocalVariable(name: "version", arg: 4, scope: !3601, file: !208, line: 201, type: !30)
!3616 = !DILocalVariable(name: "authors", arg: 5, scope: !3601, file: !208, line: 201, type: !3604)
!3617 = !DILocalVariable(name: "n_authors", scope: !3601, file: !208, line: 203, type: !34)
!3618 = !DILocalVariable(name: "authtab", scope: !3601, file: !208, line: 204, type: !3619)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !136)
!3620 = !DILocation(line: 0, scope: !3601)
!3621 = !DILocation(line: 204, column: 3, scope: !3601)
!3622 = !DILocation(line: 204, column: 15, scope: !3601)
!3623 = !DILocation(line: 208, column: 35, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !208, line: 206, column: 3)
!3625 = distinct !DILexicalBlock(scope: !3601, file: !208, line: 206, column: 3)
!3626 = !DILocation(line: 208, column: 14, scope: !3624)
!3627 = !DILocation(line: 208, column: 33, scope: !3624)
!3628 = !DILocation(line: 208, column: 67, scope: !3624)
!3629 = !DILocation(line: 206, column: 3, scope: !3625)
!3630 = !DILocation(line: 0, scope: !3625)
!3631 = !DILocation(line: 211, column: 3, scope: !3601)
!3632 = !DILocation(line: 213, column: 1, scope: !3601)
!3633 = distinct !DISubprogram(name: "version_etc", scope: !208, file: !208, line: 230, type: !3634, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3504, !30, !30, !30, null}
!3636 = !{!3637, !3638, !3639, !3640, !3641}
!3637 = !DILocalVariable(name: "stream", arg: 1, scope: !3633, file: !208, line: 230, type: !3504)
!3638 = !DILocalVariable(name: "command_name", arg: 2, scope: !3633, file: !208, line: 231, type: !30)
!3639 = !DILocalVariable(name: "package", arg: 3, scope: !3633, file: !208, line: 231, type: !30)
!3640 = !DILocalVariable(name: "version", arg: 4, scope: !3633, file: !208, line: 232, type: !30)
!3641 = !DILocalVariable(name: "authors", scope: !3633, file: !208, line: 234, type: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 52, baseType: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1584, line: 32, baseType: !3644)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !208, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3605, size: 192, elements: !756)
!3646 = !DILocation(line: 0, scope: !3633)
!3647 = !DILocation(line: 234, column: 3, scope: !3633)
!3648 = !DILocation(line: 234, column: 11, scope: !3633)
!3649 = !DILocation(line: 236, column: 3, scope: !3633)
!3650 = !DILocation(line: 237, column: 3, scope: !3633)
!3651 = !DILocation(line: 238, column: 3, scope: !3633)
!3652 = !DILocation(line: 239, column: 1, scope: !3633)
!3653 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !208, file: !208, line: 242, type: !659, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !64)
!3654 = !DILocation(line: 244, column: 3, scope: !3653)
!3655 = !DILocation(line: 249, column: 3, scope: !3653)
!3656 = !DILocation(line: 255, column: 3, scope: !3653)
!3657 = !DILocation(line: 260, column: 3, scope: !3653)
!3658 = !DILocation(line: 262, column: 1, scope: !3653)
!3659 = distinct !DISubprogram(name: "xnmalloc", scope: !192, file: !192, line: 99, type: !3392, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3660)
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !192, line: 99, type: !34)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3659, file: !192, line: 99, type: !34)
!3663 = !DILocation(line: 0, scope: !3659)
!3664 = !DILocation(line: 101, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3659, file: !192, line: 101, column: 7)
!3666 = !DILocation(line: 101, column: 7, scope: !3659)
!3667 = !DILocation(line: 102, column: 5, scope: !3665)
!3668 = !DILocation(line: 103, column: 21, scope: !3659)
!3669 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !215, line: 39, type: !34)
!3670 = distinct !DISubprogram(name: "xmalloc", scope: !215, file: !215, line: 39, type: !3671, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!33, !34}
!3673 = !{!3669, !3674}
!3674 = !DILocalVariable(name: "p", scope: !3670, file: !215, line: 41, type: !33)
!3675 = !DILocation(line: 0, scope: !3670, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 103, column: 10, scope: !3659)
!3677 = !DILocation(line: 41, column: 13, scope: !3670, inlinedAt: !3676)
!3678 = !DILocation(line: 42, column: 8, scope: !3679, inlinedAt: !3676)
!3679 = distinct !DILexicalBlock(scope: !3670, file: !215, line: 42, column: 7)
!3680 = !DILocation(line: 42, column: 10, scope: !3679, inlinedAt: !3676)
!3681 = !DILocation(line: 43, column: 5, scope: !3679, inlinedAt: !3676)
!3682 = !DILocation(line: 103, column: 3, scope: !3659)
!3683 = !DILocation(line: 0, scope: !3670)
!3684 = !DILocation(line: 41, column: 13, scope: !3670)
!3685 = !DILocation(line: 42, column: 8, scope: !3679)
!3686 = !DILocation(line: 42, column: 10, scope: !3679)
!3687 = !DILocation(line: 43, column: 5, scope: !3679)
!3688 = !DILocation(line: 44, column: 3, scope: !3670)
!3689 = distinct !DISubprogram(name: "xnrealloc", scope: !192, file: !192, line: 112, type: !3440, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3690)
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "p", arg: 1, scope: !3689, file: !192, line: 112, type: !33)
!3692 = !DILocalVariable(name: "n", arg: 2, scope: !3689, file: !192, line: 112, type: !34)
!3693 = !DILocalVariable(name: "s", arg: 3, scope: !3689, file: !192, line: 112, type: !34)
!3694 = !DILocation(line: 0, scope: !3689)
!3695 = !DILocation(line: 114, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3689, file: !192, line: 114, column: 7)
!3697 = !DILocation(line: 114, column: 7, scope: !3689)
!3698 = !DILocation(line: 115, column: 5, scope: !3696)
!3699 = !DILocation(line: 116, column: 25, scope: !3689)
!3700 = !DILocalVariable(name: "p", arg: 1, scope: !3701, file: !215, line: 51, type: !33)
!3701 = distinct !DISubprogram(name: "xrealloc", scope: !215, file: !215, line: 51, type: !3702, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!33, !33, !34}
!3704 = !{!3700, !3705}
!3705 = !DILocalVariable(name: "n", arg: 2, scope: !3701, file: !215, line: 51, type: !34)
!3706 = !DILocation(line: 0, scope: !3701, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 116, column: 10, scope: !3689)
!3708 = !DILocation(line: 53, column: 8, scope: !3709, inlinedAt: !3707)
!3709 = distinct !DILexicalBlock(scope: !3701, file: !215, line: 53, column: 7)
!3710 = !DILocation(line: 53, column: 10, scope: !3709, inlinedAt: !3707)
!3711 = !DILocation(line: 57, column: 7, scope: !3712, inlinedAt: !3707)
!3712 = distinct !DILexicalBlock(scope: !3709, file: !215, line: 54, column: 5)
!3713 = !DILocation(line: 58, column: 7, scope: !3712, inlinedAt: !3707)
!3714 = !DILocation(line: 61, column: 7, scope: !3701, inlinedAt: !3707)
!3715 = !DILocation(line: 62, column: 8, scope: !3716, inlinedAt: !3707)
!3716 = distinct !DILexicalBlock(scope: !3701, file: !215, line: 62, column: 7)
!3717 = !DILocation(line: 62, column: 10, scope: !3716, inlinedAt: !3707)
!3718 = !DILocation(line: 63, column: 5, scope: !3716, inlinedAt: !3707)
!3719 = !DILocation(line: 116, column: 3, scope: !3689)
!3720 = !DILocation(line: 0, scope: !3701)
!3721 = !DILocation(line: 53, column: 8, scope: !3709)
!3722 = !DILocation(line: 53, column: 10, scope: !3709)
!3723 = !DILocation(line: 57, column: 7, scope: !3712)
!3724 = !DILocation(line: 58, column: 7, scope: !3712)
!3725 = !DILocation(line: 61, column: 7, scope: !3701)
!3726 = !DILocation(line: 62, column: 8, scope: !3716)
!3727 = !DILocation(line: 62, column: 10, scope: !3716)
!3728 = !DILocation(line: 63, column: 5, scope: !3716)
!3729 = !DILocation(line: 65, column: 1, scope: !3701)
!3730 = !DILocation(line: 0, scope: !218)
!3731 = !DILocation(line: 176, column: 14, scope: !218)
!3732 = !DILocation(line: 178, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !218, file: !192, line: 178, column: 7)
!3734 = !DILocation(line: 178, column: 7, scope: !218)
!3735 = !DILocation(line: 180, column: 13, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !192, line: 180, column: 11)
!3737 = distinct !DILexicalBlock(scope: !3733, file: !192, line: 179, column: 5)
!3738 = !DILocation(line: 180, column: 11, scope: !3737)
!3739 = !DILocation(line: 188, column: 30, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3736, file: !192, line: 181, column: 9)
!3741 = !DILocation(line: 189, column: 16, scope: !3740)
!3742 = !DILocation(line: 189, column: 13, scope: !3740)
!3743 = !DILocation(line: 190, column: 9, scope: !3740)
!3744 = !DILocation(line: 191, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3737, file: !192, line: 191, column: 11)
!3746 = !DILocation(line: 191, column: 11, scope: !3737)
!3747 = !DILocation(line: 206, column: 7, scope: !218)
!3748 = !DILocation(line: 207, column: 25, scope: !218)
!3749 = !DILocation(line: 0, scope: !3701, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 207, column: 10, scope: !218)
!3751 = !DILocation(line: 53, column: 10, scope: !3709, inlinedAt: !3750)
!3752 = !DILocation(line: 192, column: 9, scope: !3745)
!3753 = !DILocation(line: 200, column: 69, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !192, line: 200, column: 11)
!3755 = distinct !DILexicalBlock(scope: !3733, file: !192, line: 195, column: 5)
!3756 = !DILocation(line: 201, column: 11, scope: !3754)
!3757 = !DILocation(line: 200, column: 11, scope: !3755)
!3758 = !DILocation(line: 202, column: 9, scope: !3754)
!3759 = !DILocation(line: 203, column: 14, scope: !3755)
!3760 = !DILocation(line: 203, column: 18, scope: !3755)
!3761 = !DILocation(line: 203, column: 9, scope: !3755)
!3762 = !DILocation(line: 53, column: 8, scope: !3709, inlinedAt: !3750)
!3763 = !DILocation(line: 57, column: 7, scope: !3712, inlinedAt: !3750)
!3764 = !DILocation(line: 58, column: 7, scope: !3712, inlinedAt: !3750)
!3765 = !DILocation(line: 61, column: 7, scope: !3701, inlinedAt: !3750)
!3766 = !DILocation(line: 62, column: 8, scope: !3716, inlinedAt: !3750)
!3767 = !DILocation(line: 62, column: 10, scope: !3716, inlinedAt: !3750)
!3768 = !DILocation(line: 63, column: 5, scope: !3716, inlinedAt: !3750)
!3769 = !DILocation(line: 207, column: 3, scope: !218)
!3770 = distinct !DISubprogram(name: "xcharalloc", scope: !192, file: !192, line: 216, type: !2577, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3771)
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "n", arg: 1, scope: !3770, file: !192, line: 216, type: !34)
!3773 = !DILocation(line: 0, scope: !3770)
!3774 = !DILocation(line: 0, scope: !3670, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 218, column: 10, scope: !3770)
!3776 = !DILocation(line: 41, column: 13, scope: !3670, inlinedAt: !3775)
!3777 = !DILocation(line: 42, column: 8, scope: !3679, inlinedAt: !3775)
!3778 = !DILocation(line: 42, column: 10, scope: !3679, inlinedAt: !3775)
!3779 = !DILocation(line: 43, column: 5, scope: !3679, inlinedAt: !3775)
!3780 = !DILocation(line: 218, column: 3, scope: !3770)
!3781 = distinct !DISubprogram(name: "x2realloc", scope: !215, file: !215, line: 74, type: !3782, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!33, !33, !196}
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "p", arg: 1, scope: !3781, file: !215, line: 74, type: !33)
!3786 = !DILocalVariable(name: "pn", arg: 2, scope: !3781, file: !215, line: 74, type: !196)
!3787 = !DILocation(line: 0, scope: !3781)
!3788 = !DILocation(line: 0, scope: !218, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 76, column: 10, scope: !3781)
!3790 = !DILocation(line: 176, column: 14, scope: !218, inlinedAt: !3789)
!3791 = !DILocation(line: 178, column: 9, scope: !3733, inlinedAt: !3789)
!3792 = !DILocation(line: 178, column: 7, scope: !218, inlinedAt: !3789)
!3793 = !DILocation(line: 180, column: 13, scope: !3736, inlinedAt: !3789)
!3794 = !DILocation(line: 180, column: 11, scope: !3737, inlinedAt: !3789)
!3795 = !DILocation(line: 191, column: 11, scope: !3745, inlinedAt: !3789)
!3796 = !DILocation(line: 191, column: 11, scope: !3737, inlinedAt: !3789)
!3797 = !DILocation(line: 192, column: 9, scope: !3745, inlinedAt: !3789)
!3798 = !DILocation(line: 201, column: 11, scope: !3754, inlinedAt: !3789)
!3799 = !DILocation(line: 200, column: 11, scope: !3755, inlinedAt: !3789)
!3800 = !DILocation(line: 202, column: 9, scope: !3754, inlinedAt: !3789)
!3801 = !DILocation(line: 203, column: 14, scope: !3755, inlinedAt: !3789)
!3802 = !DILocation(line: 203, column: 18, scope: !3755, inlinedAt: !3789)
!3803 = !DILocation(line: 203, column: 9, scope: !3755, inlinedAt: !3789)
!3804 = !DILocation(line: 0, scope: !3701, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 207, column: 10, scope: !218, inlinedAt: !3789)
!3806 = !DILocation(line: 53, column: 10, scope: !3709, inlinedAt: !3805)
!3807 = !DILocation(line: 206, column: 7, scope: !218, inlinedAt: !3789)
!3808 = !DILocation(line: 61, column: 7, scope: !3701, inlinedAt: !3805)
!3809 = !DILocation(line: 62, column: 8, scope: !3716, inlinedAt: !3805)
!3810 = !DILocation(line: 62, column: 10, scope: !3716, inlinedAt: !3805)
!3811 = !DILocation(line: 63, column: 5, scope: !3716, inlinedAt: !3805)
!3812 = !DILocation(line: 76, column: 3, scope: !3781)
!3813 = distinct !DISubprogram(name: "xzalloc", scope: !215, file: !215, line: 84, type: !3671, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3814)
!3814 = !{!3815}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3813, file: !215, line: 84, type: !34)
!3816 = !DILocation(line: 0, scope: !3813)
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3818, file: !215, line: 93, type: !34)
!3818 = distinct !DISubprogram(name: "xcalloc", scope: !215, file: !215, line: 93, type: !3392, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3819)
!3819 = !{!3817, !3820, !3821}
!3820 = !DILocalVariable(name: "s", arg: 2, scope: !3818, file: !215, line: 93, type: !34)
!3821 = !DILocalVariable(name: "p", scope: !3818, file: !215, line: 95, type: !33)
!3822 = !DILocation(line: 0, scope: !3818, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 86, column: 10, scope: !3813)
!3824 = !DILocation(line: 100, column: 7, scope: !3825, inlinedAt: !3823)
!3825 = distinct !DILexicalBlock(scope: !3818, file: !215, line: 100, column: 7)
!3826 = !DILocation(line: 101, column: 7, scope: !3825, inlinedAt: !3823)
!3827 = !DILocation(line: 101, column: 18, scope: !3825, inlinedAt: !3823)
!3828 = !DILocation(line: 101, column: 16, scope: !3825, inlinedAt: !3823)
!3829 = !DILocation(line: 100, column: 7, scope: !3818, inlinedAt: !3823)
!3830 = !DILocation(line: 102, column: 5, scope: !3825, inlinedAt: !3823)
!3831 = !DILocation(line: 86, column: 3, scope: !3813)
!3832 = !DILocation(line: 0, scope: !3818)
!3833 = !DILocation(line: 100, column: 7, scope: !3825)
!3834 = !DILocation(line: 101, column: 7, scope: !3825)
!3835 = !DILocation(line: 101, column: 18, scope: !3825)
!3836 = !DILocation(line: 101, column: 16, scope: !3825)
!3837 = !DILocation(line: 100, column: 7, scope: !3818)
!3838 = !DILocation(line: 102, column: 5, scope: !3825)
!3839 = !DILocation(line: 103, column: 3, scope: !3818)
!3840 = distinct !DISubprogram(name: "xmemdup", scope: !215, file: !215, line: 111, type: !3841, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!33, !3473, !34}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "p", arg: 1, scope: !3840, file: !215, line: 111, type: !3473)
!3845 = !DILocalVariable(name: "s", arg: 2, scope: !3840, file: !215, line: 111, type: !34)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 0, scope: !3670, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 113, column: 18, scope: !3840)
!3849 = !DILocation(line: 41, column: 13, scope: !3670, inlinedAt: !3848)
!3850 = !DILocation(line: 42, column: 8, scope: !3679, inlinedAt: !3848)
!3851 = !DILocation(line: 42, column: 10, scope: !3679, inlinedAt: !3848)
!3852 = !DILocation(line: 43, column: 5, scope: !3679, inlinedAt: !3848)
!3853 = !DILocalVariable(name: "__dest", arg: 1, scope: !3854, file: !2104, line: 26, type: !3471)
!3854 = distinct !DISubprogram(name: "memcpy", scope: !2104, file: !2104, line: 26, type: !3469, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3855)
!3855 = !{!3853, !3856, !3857}
!3856 = !DILocalVariable(name: "__src", arg: 2, scope: !3854, file: !2104, line: 26, type: !3472)
!3857 = !DILocalVariable(name: "__len", arg: 3, scope: !3854, file: !2104, line: 26, type: !34)
!3858 = !DILocation(line: 0, scope: !3854, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 113, column: 10, scope: !3840)
!3860 = !DILocation(line: 29, column: 10, scope: !3854, inlinedAt: !3859)
!3861 = !DILocation(line: 113, column: 3, scope: !3840)
!3862 = distinct !DISubprogram(name: "xstrdup", scope: !215, file: !215, line: 119, type: !1153, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3863)
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "string", arg: 1, scope: !3862, file: !215, line: 119, type: !30)
!3865 = !DILocation(line: 0, scope: !3862)
!3866 = !DILocation(line: 121, column: 27, scope: !3862)
!3867 = !DILocation(line: 121, column: 43, scope: !3862)
!3868 = !DILocation(line: 0, scope: !3840, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 121, column: 10, scope: !3862)
!3870 = !DILocation(line: 0, scope: !3670, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 113, column: 18, scope: !3840, inlinedAt: !3869)
!3872 = !DILocation(line: 41, column: 13, scope: !3670, inlinedAt: !3871)
!3873 = !DILocation(line: 42, column: 8, scope: !3679, inlinedAt: !3871)
!3874 = !DILocation(line: 42, column: 10, scope: !3679, inlinedAt: !3871)
!3875 = !DILocation(line: 43, column: 5, scope: !3679, inlinedAt: !3871)
!3876 = !DILocation(line: 0, scope: !3854, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 113, column: 10, scope: !3840, inlinedAt: !3869)
!3878 = !DILocation(line: 29, column: 10, scope: !3854, inlinedAt: !3877)
!3879 = !DILocation(line: 121, column: 3, scope: !3862)
!3880 = distinct !DISubprogram(name: "xalloc_die", scope: !226, file: !226, line: 32, type: !659, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !64)
!3881 = !DILocation(line: 34, column: 10, scope: !3880)
!3882 = !DILocation(line: 34, column: 33, scope: !3880)
!3883 = !DILocation(line: 34, column: 3, scope: !3880)
!3884 = !DILocation(line: 40, column: 3, scope: !3880)
!3885 = distinct !DISubprogram(name: "rpl_calloc", scope: !228, file: !228, line: 42, type: !3392, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3886)
!3886 = !{!3887, !3888, !3889, !3890}
!3887 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !228, line: 42, type: !34)
!3888 = !DILocalVariable(name: "s", arg: 2, scope: !3885, file: !228, line: 42, type: !34)
!3889 = !DILocalVariable(name: "result", scope: !3885, file: !228, line: 44, type: !33)
!3890 = !DILocalVariable(name: "bytes", scope: !3891, file: !228, line: 56, type: !34)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !228, line: 53, column: 5)
!3892 = distinct !DILexicalBlock(scope: !3885, file: !228, line: 47, column: 7)
!3893 = !DILocation(line: 0, scope: !3885)
!3894 = !DILocation(line: 47, column: 9, scope: !3892)
!3895 = !DILocation(line: 47, column: 14, scope: !3892)
!3896 = !DILocation(line: 0, scope: !3891)
!3897 = !DILocation(line: 57, column: 21, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3891, file: !228, line: 57, column: 11)
!3899 = !DILocation(line: 57, column: 11, scope: !3891)
!3900 = !DILocation(line: 59, column: 11, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !228, line: 58, column: 9)
!3902 = !DILocation(line: 59, column: 17, scope: !3901)
!3903 = !DILocation(line: 65, column: 12, scope: !3885)
!3904 = !DILocation(line: 72, column: 3, scope: !3885)
!3905 = !DILocation(line: 73, column: 1, scope: !3885)
!3906 = distinct !DISubprogram(name: "rpl_fclose", scope: !230, file: !230, line: 58, type: !3907, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !3943)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!47, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3911, file: !727, line: 51, baseType: !47, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3911, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3911, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3911, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3911, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3911, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3911, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3911, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3911, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3911, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3911, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3911, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3911, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3911, file: !727, line: 70, baseType: !3927, size: 64, offset: 832)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3911, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3911, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3911, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3911, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3911, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3911, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3911, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3911, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3911, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3911, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3911, file: !727, line: 93, baseType: !3927, size: 64, offset: 1344)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3911, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3911, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3911, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3911, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!3943 = !{!3944, !3945, !3946, !3947}
!3944 = !DILocalVariable(name: "fp", arg: 1, scope: !3906, file: !230, line: 58, type: !3909)
!3945 = !DILocalVariable(name: "saved_errno", scope: !3906, file: !230, line: 60, type: !47)
!3946 = !DILocalVariable(name: "fd", scope: !3906, file: !230, line: 61, type: !47)
!3947 = !DILocalVariable(name: "result", scope: !3906, file: !230, line: 62, type: !47)
!3948 = !DILocation(line: 0, scope: !3906)
!3949 = !DILocation(line: 65, column: 8, scope: !3906)
!3950 = !DILocation(line: 66, column: 10, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3906, file: !230, line: 66, column: 7)
!3952 = !DILocation(line: 66, column: 7, scope: !3906)
!3953 = !DILocation(line: 67, column: 12, scope: !3951)
!3954 = !DILocation(line: 67, column: 5, scope: !3951)
!3955 = !DILocation(line: 72, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3906, file: !230, line: 72, column: 7)
!3957 = !DILocation(line: 72, column: 23, scope: !3956)
!3958 = !DILocation(line: 72, column: 33, scope: !3956)
!3959 = !DILocation(line: 72, column: 26, scope: !3956)
!3960 = !DILocation(line: 72, column: 59, scope: !3956)
!3961 = !DILocation(line: 73, column: 7, scope: !3956)
!3962 = !DILocation(line: 73, column: 10, scope: !3956)
!3963 = !DILocation(line: 72, column: 7, scope: !3906)
!3964 = !DILocation(line: 100, column: 12, scope: !3906)
!3965 = !DILocation(line: 105, column: 7, scope: !3906)
!3966 = !DILocation(line: 74, column: 19, scope: !3956)
!3967 = !DILocation(line: 105, column: 19, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3906, file: !230, line: 105, column: 7)
!3969 = !DILocation(line: 107, column: 13, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3968, file: !230, line: 106, column: 5)
!3971 = !DILocation(line: 109, column: 5, scope: !3970)
!3972 = !DILocation(line: 112, column: 1, scope: !3906)
!3973 = !DISubprogram(name: "fclose", scope: !722, file: !722, line: 213, type: !3974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!47, !3927}
!3976 = !DISubprogram(name: "lseek", scope: !1552, file: !1552, line: 334, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!750, !47, !750, !47}
!3979 = distinct !DISubprogram(name: "rpl_fflush", scope: !232, file: !232, line: 129, type: !3980, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !4016)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!47, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3984, file: !727, line: 51, baseType: !47, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3984, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3984, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3984, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3984, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3984, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3984, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3984, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3984, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3984, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3984, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3984, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3984, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3984, file: !727, line: 70, baseType: !4000, size: 64, offset: 832)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3984, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3984, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3984, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3984, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3984, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3984, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3984, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3984, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3984, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3984, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3984, file: !727, line: 93, baseType: !4000, size: 64, offset: 1344)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3984, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3984, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3984, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3984, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4016 = !{!4017}
!4017 = !DILocalVariable(name: "stream", arg: 1, scope: !3979, file: !232, line: 129, type: !3982)
!4018 = !DILocation(line: 0, scope: !3979)
!4019 = !DILocation(line: 150, column: 14, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3979, file: !232, line: 150, column: 7)
!4021 = !DILocation(line: 150, column: 22, scope: !4020)
!4022 = !DILocation(line: 150, column: 27, scope: !4020)
!4023 = !DILocation(line: 150, column: 7, scope: !3979)
!4024 = !DILocation(line: 151, column: 12, scope: !4020)
!4025 = !DILocation(line: 151, column: 5, scope: !4020)
!4026 = !DILocalVariable(name: "fp", arg: 1, scope: !4027, file: !232, line: 41, type: !3982)
!4027 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !232, file: !232, line: 41, type: !4028, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !3982}
!4030 = !{!4026}
!4031 = !DILocation(line: 0, scope: !4027, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 156, column: 3, scope: !3979)
!4033 = !DILocation(line: 43, column: 11, scope: !4034, inlinedAt: !4032)
!4034 = distinct !DILexicalBlock(scope: !4027, file: !232, line: 43, column: 7)
!4035 = !{!3276, !801, i64 0}
!4036 = !DILocation(line: 43, column: 18, scope: !4034, inlinedAt: !4032)
!4037 = !DILocation(line: 43, column: 7, scope: !4027, inlinedAt: !4032)
!4038 = !DILocation(line: 45, column: 5, scope: !4034, inlinedAt: !4032)
!4039 = !DILocation(line: 158, column: 10, scope: !3979)
!4040 = !DILocation(line: 158, column: 3, scope: !3979)
!4041 = !DILocation(line: 235, column: 1, scope: !3979)
!4042 = !DISubprogram(name: "fflush", scope: !722, file: !722, line: 218, type: !4043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!47, !4000}
!4045 = distinct !DISubprogram(name: "rpl_fseeko", scope: !234, file: !234, line: 28, type: !4046, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !4082)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!47, !4048, !1351, !47}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4050, file: !727, line: 51, baseType: !47, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4050, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4050, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4050, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4050, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4050, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4050, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4050, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4050, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4050, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4050, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4050, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4050, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4050, file: !727, line: 70, baseType: !4066, size: 64, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4050, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4050, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4050, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4050, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4050, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4050, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4050, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4050, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4050, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4050, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4050, file: !727, line: 93, baseType: !4066, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4050, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4050, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4050, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4050, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4082 = !{!4083, !4084, !4085, !4086}
!4083 = !DILocalVariable(name: "fp", arg: 1, scope: !4045, file: !234, line: 28, type: !4048)
!4084 = !DILocalVariable(name: "offset", arg: 2, scope: !4045, file: !234, line: 28, type: !1351)
!4085 = !DILocalVariable(name: "whence", arg: 3, scope: !4045, file: !234, line: 28, type: !47)
!4086 = !DILocalVariable(name: "pos", scope: !4087, file: !234, line: 117, type: !1351)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !234, line: 113, column: 5)
!4088 = distinct !DILexicalBlock(scope: !4045, file: !234, line: 52, column: 7)
!4089 = !DILocation(line: 0, scope: !4045)
!4090 = !DILocation(line: 52, column: 11, scope: !4088)
!4091 = !DILocation(line: 52, column: 31, scope: !4088)
!4092 = !DILocation(line: 52, column: 24, scope: !4088)
!4093 = !DILocation(line: 53, column: 7, scope: !4088)
!4094 = !DILocation(line: 53, column: 14, scope: !4088)
!4095 = !{!3276, !651, i64 40}
!4096 = !DILocation(line: 53, column: 35, scope: !4088)
!4097 = !{!3276, !651, i64 32}
!4098 = !DILocation(line: 53, column: 28, scope: !4088)
!4099 = !DILocation(line: 54, column: 7, scope: !4088)
!4100 = !DILocation(line: 54, column: 14, scope: !4088)
!4101 = !{!3276, !651, i64 72}
!4102 = !DILocation(line: 54, column: 28, scope: !4088)
!4103 = !DILocation(line: 52, column: 7, scope: !4045)
!4104 = !DILocation(line: 117, column: 26, scope: !4087)
!4105 = !DILocation(line: 117, column: 19, scope: !4087)
!4106 = !DILocation(line: 0, scope: !4087)
!4107 = !DILocation(line: 118, column: 15, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4087, file: !234, line: 118, column: 11)
!4109 = !DILocation(line: 118, column: 11, scope: !4087)
!4110 = !DILocation(line: 129, column: 11, scope: !4087)
!4111 = !DILocation(line: 129, column: 18, scope: !4087)
!4112 = !DILocation(line: 130, column: 11, scope: !4087)
!4113 = !DILocation(line: 130, column: 19, scope: !4087)
!4114 = !{!3276, !876, i64 144}
!4115 = !DILocation(line: 161, column: 7, scope: !4087)
!4116 = !DILocation(line: 163, column: 10, scope: !4045)
!4117 = !DILocation(line: 163, column: 3, scope: !4045)
!4118 = !DILocation(line: 164, column: 1, scope: !4045)
!4119 = !DISubprogram(name: "fseeko", scope: !722, file: !722, line: 712, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!47, !4066, !750, !47}
!4122 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !236, file: !236, line: 86, type: !4123, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4137)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!34, !4125, !30, !34, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1856, line: 6, baseType: !4128)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1858, line: 21, baseType: !4129)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1858, line: 13, size: 64, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4129, file: !1858, line: 15, baseType: !47, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4129, file: !1858, line: 20, baseType: !4133, size: 32, offset: 32)
!4133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4129, file: !1858, line: 16, size: 32, elements: !4134)
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4133, file: !1858, line: 18, baseType: !7, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4133, file: !1858, line: 19, baseType: !1867, size: 32)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4138 = !DILocalVariable(name: "pwc", arg: 1, scope: !4122, file: !236, line: 86, type: !4125)
!4139 = !DILocalVariable(name: "s", arg: 2, scope: !4122, file: !236, line: 86, type: !30)
!4140 = !DILocalVariable(name: "n", arg: 3, scope: !4122, file: !236, line: 86, type: !34)
!4141 = !DILocalVariable(name: "ps", arg: 4, scope: !4122, file: !236, line: 86, type: !4126)
!4142 = !DILocalVariable(name: "ret", scope: !4122, file: !236, line: 88, type: !34)
!4143 = !DILocalVariable(name: "wc", scope: !4122, file: !236, line: 89, type: !1872)
!4144 = !DILocalVariable(name: "uc", scope: !4145, file: !236, line: 156, type: !206)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !236, line: 155, column: 5)
!4146 = distinct !DILexicalBlock(scope: !4122, file: !236, line: 154, column: 7)
!4147 = !DILocation(line: 0, scope: !4122)
!4148 = !DILocation(line: 89, column: 3, scope: !4122)
!4149 = !DILocation(line: 105, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4122, file: !236, line: 105, column: 7)
!4151 = !DILocation(line: 105, column: 7, scope: !4122)
!4152 = !DILocation(line: 145, column: 9, scope: !4122)
!4153 = !DILocation(line: 154, column: 19, scope: !4146)
!4154 = !DILocation(line: 154, column: 26, scope: !4146)
!4155 = !DILocation(line: 154, column: 41, scope: !4146)
!4156 = !DILocation(line: 154, column: 7, scope: !4122)
!4157 = !DILocation(line: 156, column: 26, scope: !4145)
!4158 = !DILocation(line: 0, scope: !4145)
!4159 = !DILocation(line: 157, column: 14, scope: !4145)
!4160 = !DILocation(line: 157, column: 12, scope: !4145)
!4161 = !DILocation(line: 163, column: 1, scope: !4122)
!4162 = !DISubprogram(name: "mbrtowc", scope: !2537, file: !2537, line: 296, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!36, !93, !30, !36, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4166 = distinct !DISubprogram(name: "close_stream", scope: !239, file: !239, line: 56, type: !4167, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !4203)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!47, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1373, line: 7, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4171, file: !727, line: 51, baseType: !47, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4171, file: !727, line: 54, baseType: !102, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4171, file: !727, line: 55, baseType: !102, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4171, file: !727, line: 56, baseType: !102, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4171, file: !727, line: 57, baseType: !102, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4171, file: !727, line: 58, baseType: !102, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4171, file: !727, line: 59, baseType: !102, size: 64, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4171, file: !727, line: 60, baseType: !102, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4171, file: !727, line: 61, baseType: !102, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4171, file: !727, line: 64, baseType: !102, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4171, file: !727, line: 65, baseType: !102, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4171, file: !727, line: 66, baseType: !102, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4171, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4171, file: !727, line: 70, baseType: !4187, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4171, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4171, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4171, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4171, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4171, file: !727, line: 78, baseType: !753, size: 8, offset: 1040)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4171, file: !727, line: 79, baseType: !755, size: 8, offset: 1048)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4171, file: !727, line: 81, baseType: !759, size: 64, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4171, file: !727, line: 89, baseType: !762, size: 64, offset: 1152)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4171, file: !727, line: 91, baseType: !764, size: 64, offset: 1216)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4171, file: !727, line: 92, baseType: !767, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4171, file: !727, line: 93, baseType: !4187, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4171, file: !727, line: 94, baseType: !33, size: 64, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4171, file: !727, line: 95, baseType: !34, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4171, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4171, file: !727, line: 98, baseType: !774, size: 160, offset: 1568)
!4203 = !{!4204, !4205, !4207, !4208}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4166, file: !239, line: 56, type: !4169)
!4205 = !DILocalVariable(name: "some_pending", scope: !4166, file: !239, line: 58, type: !4206)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!4207 = !DILocalVariable(name: "prev_fail", scope: !4166, file: !239, line: 59, type: !4206)
!4208 = !DILocalVariable(name: "fclose_fail", scope: !4166, file: !239, line: 60, type: !4206)
!4209 = !DILocation(line: 0, scope: !4166)
!4210 = !DILocation(line: 58, column: 30, scope: !4166)
!4211 = !DILocalVariable(name: "__stream", arg: 1, scope: !4212, file: !3267, line: 135, type: !4169)
!4212 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3267, file: !3267, line: 135, type: !4167, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !4213)
!4213 = !{!4211}
!4214 = !DILocation(line: 0, scope: !4212, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 59, column: 27, scope: !4166)
!4216 = !DILocation(line: 137, column: 10, scope: !4212, inlinedAt: !4215)
!4217 = !DILocation(line: 59, column: 43, scope: !4166)
!4218 = !DILocation(line: 60, column: 29, scope: !4166)
!4219 = !DILocation(line: 60, column: 45, scope: !4166)
!4220 = !DILocation(line: 70, column: 17, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4166, file: !239, line: 70, column: 7)
!4222 = !DILocation(line: 58, column: 50, scope: !4166)
!4223 = !DILocation(line: 70, column: 33, scope: !4221)
!4224 = !DILocation(line: 70, column: 53, scope: !4221)
!4225 = !DILocation(line: 70, column: 59, scope: !4221)
!4226 = !DILocation(line: 70, column: 7, scope: !4166)
!4227 = !DILocation(line: 72, column: 11, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4221, file: !239, line: 71, column: 5)
!4229 = !DILocation(line: 73, column: 9, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4228, file: !239, line: 72, column: 11)
!4231 = !DILocation(line: 73, column: 15, scope: !4230)
!4232 = !DILocation(line: 78, column: 1, scope: !4166)
!4233 = distinct !DISubprogram(name: "hard_locale", scope: !241, file: !241, line: 27, type: !1487, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !4234)
!4234 = !{!4235, !4236}
!4235 = !DILocalVariable(name: "category", arg: 1, scope: !4233, file: !241, line: 27, type: !47)
!4236 = !DILocalVariable(name: "locale", scope: !4233, file: !241, line: 29, type: !4237)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2056, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 257)
!4240 = !DILocation(line: 0, scope: !4233)
!4241 = !DILocation(line: 29, column: 3, scope: !4233)
!4242 = !DILocation(line: 29, column: 8, scope: !4233)
!4243 = !DILocation(line: 31, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4233, file: !241, line: 31, column: 7)
!4245 = !DILocation(line: 31, column: 7, scope: !4233)
!4246 = !DILocation(line: 34, column: 12, scope: !4233)
!4247 = !DILocation(line: 34, column: 38, scope: !4233)
!4248 = !DILocation(line: 34, column: 41, scope: !4233)
!4249 = !DILocation(line: 34, column: 66, scope: !4233)
!4250 = !DILocation(line: 35, column: 1, scope: !4233)
!4251 = distinct !DISubprogram(name: "locale_charset", scope: !243, file: !243, line: 831, type: !4252, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !242, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!30}
!4254 = !{!4255}
!4255 = !DILocalVariable(name: "codeset", scope: !4251, file: !243, line: 833, type: !30)
!4256 = !DILocation(line: 847, column: 13, scope: !4251)
!4257 = !DILocation(line: 0, scope: !4251)
!4258 = !DILocation(line: 911, column: 15, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4251, file: !243, line: 911, column: 7)
!4260 = !DILocation(line: 911, column: 7, scope: !4251)
!4261 = !DILocation(line: 1070, column: 13, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !243, line: 1070, column: 13)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !243, line: 1060, column: 7)
!4264 = distinct !DILexicalBlock(scope: !4251, file: !243, line: 1019, column: 3)
!4265 = !DILocation(line: 1070, column: 24, scope: !4262)
!4266 = !DILocation(line: 1070, column: 13, scope: !4263)
!4267 = !DILocation(line: 1158, column: 3, scope: !4251)
!4268 = !DISubprogram(name: "nl_langinfo", scope: !246, file: !246, line: 661, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!102, !47}
!4271 = distinct !DISubprogram(name: "setlocale_null_r", scope: !632, file: !632, line: 269, type: !4272, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!47, !47, !102, !34}
!4274 = !{!4275, !4276, !4277}
!4275 = !DILocalVariable(name: "category", arg: 1, scope: !4271, file: !632, line: 269, type: !47)
!4276 = !DILocalVariable(name: "buf", arg: 2, scope: !4271, file: !632, line: 269, type: !102)
!4277 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4271, file: !632, line: 269, type: !34)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocalVariable(name: "category", arg: 1, scope: !4280, file: !632, line: 91, type: !47)
!4280 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !632, file: !632, line: 91, type: !4272, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !4281)
!4281 = !{!4279, !4282, !4283, !4284, !4285}
!4282 = !DILocalVariable(name: "buf", arg: 2, scope: !4280, file: !632, line: 91, type: !102)
!4283 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4280, file: !632, line: 91, type: !34)
!4284 = !DILocalVariable(name: "result", scope: !4280, file: !632, line: 140, type: !30)
!4285 = !DILocalVariable(name: "length", scope: !4286, file: !632, line: 154, type: !34)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !632, line: 153, column: 5)
!4287 = distinct !DILexicalBlock(scope: !4280, file: !632, line: 142, column: 7)
!4288 = !DILocation(line: 0, scope: !4280, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 274, column: 10, scope: !4271)
!4290 = !DILocalVariable(name: "category", arg: 1, scope: !4291, file: !632, line: 60, type: !47)
!4291 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !632, file: !632, line: 60, type: !4292, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!30, !47}
!4294 = !{!4290, !4295}
!4295 = !DILocalVariable(name: "result", scope: !4291, file: !632, line: 62, type: !30)
!4296 = !DILocation(line: 0, scope: !4291, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 140, column: 24, scope: !4280, inlinedAt: !4289)
!4298 = !DILocation(line: 62, column: 24, scope: !4291, inlinedAt: !4297)
!4299 = !DILocation(line: 142, column: 14, scope: !4287, inlinedAt: !4289)
!4300 = !DILocation(line: 142, column: 7, scope: !4280, inlinedAt: !4289)
!4301 = !DILocation(line: 145, column: 19, scope: !4302, inlinedAt: !4289)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !632, line: 145, column: 11)
!4303 = distinct !DILexicalBlock(scope: !4287, file: !632, line: 143, column: 5)
!4304 = !DILocation(line: 145, column: 11, scope: !4303, inlinedAt: !4289)
!4305 = !DILocation(line: 149, column: 16, scope: !4302, inlinedAt: !4289)
!4306 = !DILocation(line: 149, column: 9, scope: !4302, inlinedAt: !4289)
!4307 = !DILocation(line: 154, column: 23, scope: !4286, inlinedAt: !4289)
!4308 = !DILocation(line: 0, scope: !4286, inlinedAt: !4289)
!4309 = !DILocation(line: 155, column: 18, scope: !4310, inlinedAt: !4289)
!4310 = distinct !DILexicalBlock(scope: !4286, file: !632, line: 155, column: 11)
!4311 = !DILocation(line: 155, column: 11, scope: !4286, inlinedAt: !4289)
!4312 = !DILocation(line: 157, column: 39, scope: !4313, inlinedAt: !4289)
!4313 = distinct !DILexicalBlock(scope: !4310, file: !632, line: 156, column: 9)
!4314 = !DILocalVariable(name: "__dest", arg: 1, scope: !4315, file: !2104, line: 26, type: !3471)
!4315 = distinct !DISubprogram(name: "memcpy", scope: !2104, file: !2104, line: 26, type: !3469, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !4316)
!4316 = !{!4314, !4317, !4318}
!4317 = !DILocalVariable(name: "__src", arg: 2, scope: !4315, file: !2104, line: 26, type: !3472)
!4318 = !DILocalVariable(name: "__len", arg: 3, scope: !4315, file: !2104, line: 26, type: !34)
!4319 = !DILocation(line: 0, scope: !4315, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 157, column: 11, scope: !4313, inlinedAt: !4289)
!4321 = !DILocation(line: 29, column: 10, scope: !4315, inlinedAt: !4320)
!4322 = !DILocation(line: 158, column: 11, scope: !4313, inlinedAt: !4289)
!4323 = !DILocation(line: 162, column: 23, scope: !4324, inlinedAt: !4289)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !632, line: 162, column: 15)
!4325 = distinct !DILexicalBlock(scope: !4310, file: !632, line: 161, column: 9)
!4326 = !DILocation(line: 162, column: 15, scope: !4325, inlinedAt: !4289)
!4327 = !DILocation(line: 167, column: 44, scope: !4328, inlinedAt: !4289)
!4328 = distinct !DILexicalBlock(scope: !4324, file: !632, line: 163, column: 13)
!4329 = !DILocation(line: 0, scope: !4315, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 167, column: 15, scope: !4328, inlinedAt: !4289)
!4331 = !DILocation(line: 29, column: 10, scope: !4315, inlinedAt: !4330)
!4332 = !DILocation(line: 168, column: 15, scope: !4328, inlinedAt: !4289)
!4333 = !DILocation(line: 168, column: 32, scope: !4328, inlinedAt: !4289)
!4334 = !DILocation(line: 169, column: 13, scope: !4328, inlinedAt: !4289)
!4335 = !DILocation(line: 0, scope: !4287, inlinedAt: !4289)
!4336 = !DILocation(line: 274, column: 3, scope: !4271)
!4337 = distinct !DISubprogram(name: "setlocale_null", scope: !632, file: !632, line: 301, type: !4292, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !4338)
!4338 = !{!4339}
!4339 = !DILocalVariable(name: "category", arg: 1, scope: !4337, file: !632, line: 301, type: !47)
!4340 = !DILocation(line: 0, scope: !4337)
!4341 = !DILocation(line: 0, scope: !4291, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 304, column: 10, scope: !4337)
!4343 = !DILocation(line: 62, column: 24, scope: !4291, inlinedAt: !4342)
!4344 = !DILocation(line: 304, column: 3, scope: !4337)
