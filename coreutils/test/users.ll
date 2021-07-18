; ModuleID = 'coreutils-8.32/src/users.bc'
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
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !0
@.str.31 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !49
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !603 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !607, metadata !DIExpression()), !dbg !608
  %3 = icmp eq i32 %0, 0, !dbg !609
  br i1 %3, label %9, label %4, !dbg !611

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !614
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !612
  %7 = load i8*, i8** @program_name, align 8, !dbg !612, !tbaa !614
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !612
  br label %57, !dbg !612

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !618
  %11 = load i8*, i8** @program_name, align 8, !dbg !618, !tbaa !614
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !618
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !620
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #27, !dbg !620
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !621
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !614
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16), !dbg !621
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !622
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !614
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !623, metadata !DIExpression()) #27, !dbg !642
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #27, !dbg !644
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !629, metadata !DIExpression()) #27, !dbg !645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %21, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !638, metadata !DIExpression()) #27, !dbg !642
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !639, metadata !DIExpression()) #27, !dbg !642
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !646
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !639, metadata !DIExpression()) #27, !dbg !642
  br label %23, !dbg !647

23:                                               ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !639, metadata !DIExpression()) #27, !dbg !642
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %24) #28, !dbg !648
  %27 = icmp eq i32 %26, 0, !dbg !648
  br i1 %27, label %33, label %28, !dbg !647

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !649
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !639, metadata !DIExpression()) #27, !dbg !642
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !650
  %31 = load i8*, i8** %30, align 8, !dbg !650, !tbaa !651
  %32 = icmp eq i8* %31, null, !dbg !653
  br i1 %32, label %33, label %23, !dbg !654, !llvm.loop !655

33:                                               ; preds = %28, %23
  %34 = phi %struct.infomap* [ %25, %23 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !657
  %36 = load i8*, i8** %35, align 8, !dbg !657, !tbaa !659
  %37 = icmp eq i8* %36, null, !dbg !660
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %36, !dbg !661
  call void @llvm.dbg.value(metadata i8* %38, metadata !638, metadata !DIExpression()) #27, !dbg !642
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #27, !dbg !662
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #27, !dbg !662
  %41 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !663
  call void @llvm.dbg.value(metadata i8* %41, metadata !641, metadata !DIExpression()) #27, !dbg !642
  %42 = icmp eq i8* %41, null, !dbg !664
  br i1 %42, label %50, label %43, !dbg !666

43:                                               ; preds = %33
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #28, !dbg !667
  %45 = icmp eq i32 %44, 0, !dbg !667
  br i1 %45, label %50, label %46, !dbg !668

46:                                               ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #27, !dbg !669
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !614
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #27, !dbg !669
  br label %50, !dbg !671

50:                                               ; preds = %33, %43, %46
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #27, !dbg !672
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #27, !dbg !672
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #27, !dbg !673
  %54 = icmp eq i8* %38, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !673
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !673
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %38, i8* %55) #27, !dbg !673
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #27, !dbg !674
  br label %57

57:                                               ; preds = %50, %4
  tail call void @exit(i32 %0) #29, !dbg !675
  unreachable, !dbg !675
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !676 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !680 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !736 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !744, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8** %1, metadata !745, metadata !DIExpression()), !dbg !746
  %3 = load i8*, i8** %1, align 8, !dbg !747, !tbaa !614
  tail call void @set_program_name(i8* %3) #27, !dbg !748
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !749
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !750
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !751
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !752
  %8 = load i8*, i8** @Version, align 8, !dbg !753, !tbaa !614
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #27, !dbg !754
  %9 = load i32, i32* @optind, align 4, !dbg !755, !tbaa !756
  %10 = sub nsw i32 %0, %9, !dbg !758
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !759

11:                                               ; preds = %2
  tail call fastcc void @users(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1), !dbg !760
  br label %24, !dbg !762

12:                                               ; preds = %2
  %13 = sext i32 %9 to i64, !dbg !763
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !763
  %15 = load i8*, i8** %14, align 8, !dbg !763, !tbaa !614
  tail call fastcc void @users(i8* %15, i32 0), !dbg !764
  br label %24, !dbg !765

16:                                               ; preds = %2
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !766
  %18 = load i32, i32* @optind, align 4, !dbg !767, !tbaa !756
  %19 = add nsw i32 %18, 1, !dbg !768
  %20 = sext i32 %19 to i64, !dbg !769
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !769
  %22 = load i8*, i8** %21, align 8, !dbg !769, !tbaa !614
  %23 = tail call i8* @quote(i8* %22) #27, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #27, !dbg !771
  tail call void @usage(i32 1) #30, !dbg !772
  unreachable, !dbg !772

24:                                               ; preds = %12, %11
  ret i32 0, !dbg !773
}

; Function Attrs: nounwind
declare !dbg !774 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !777 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !780 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @users(i8* %0, i32 %1) unnamed_addr #8 !dbg !787 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !791, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %1, metadata !792, metadata !DIExpression()), !dbg !829
  %5 = bitcast i64* %3 to i8*, !dbg !830
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27, !dbg !830
  %6 = bitcast %struct.utmpx** %4 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #27, !dbg !831
  call void @llvm.dbg.value(metadata i64* %3, metadata !793, metadata !DIExpression(DW_OP_deref)), !dbg !829
  call void @llvm.dbg.value(metadata %struct.utmpx** %4, metadata !794, metadata !DIExpression(DW_OP_deref)), !dbg !829
  %7 = call i32 @read_utmp(i8* %0, i64* nonnull %3, %struct.utmpx** nonnull %4, i32 %1) #27, !dbg !832
  %8 = icmp eq i32 %7, 0, !dbg !834
  br i1 %8, label %13, label %9, !dbg !835

9:                                                ; preds = %2
  %10 = tail call i32* @__errno_location() #31, !dbg !836
  %11 = load i32, i32* %10, align 4, !dbg !836, !tbaa !756
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #27, !dbg !836
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %12) #27, !dbg !836
  unreachable, !dbg !836

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !837, !tbaa !838
  call void @llvm.dbg.value(metadata i64 %14, metadata !793, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !794, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %14, metadata !840, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !847, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 %14, metadata !861, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i64 8, metadata !866, metadata !DIExpression()) #27, !dbg !867
  %15 = icmp ugt i64 %14, 1152921504606846975, !dbg !869
  br i1 %15, label %16, label %17, !dbg !871

16:                                               ; preds = %13
  call void @xalloc_die() #29, !dbg !872
  unreachable, !dbg !872

17:                                               ; preds = %13
  %18 = load %struct.utmpx*, %struct.utmpx** %4, align 8, !dbg !873, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !847, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !794, metadata !DIExpression()), !dbg !829
  %19 = shl nuw nsw i64 %14, 3, !dbg !874
  %20 = call noalias i8* @xmalloc(i64 %19) #27, !dbg !875
  %21 = bitcast i8* %20 to i8**, !dbg !876
  call void @llvm.dbg.value(metadata i8** %21, metadata !848, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 0, metadata !850, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 %14, metadata !840, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !847, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 %14, metadata !840, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !859
  %22 = icmp eq i64 %14, 0, !dbg !877
  br i1 %22, label %23, label %24, !dbg !877

23:                                               ; preds = %17
  call void @qsort(i8* %20, i64 0, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #27, !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !849, metadata !DIExpression()) #27, !dbg !859
  br label %76, !dbg !879

24:                                               ; preds = %17, %40
  %25 = phi i64 [ %28, %40 ], [ %14, %17 ]
  %26 = phi %struct.utmpx* [ %42, %40 ], [ %18, %17 ]
  %27 = phi i64 [ %41, %40 ], [ 0, %17 ]
  %28 = add i64 %25, -1, !dbg !880
  call void @llvm.dbg.value(metadata %struct.utmpx* %26, metadata !847, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 %27, metadata !850, metadata !DIExpression()) #27, !dbg !859
  %29 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 4, i64 0, !dbg !881
  %30 = load i8, i8* %29, align 4, !dbg !881, !tbaa !882
  %31 = icmp eq i8 %30, 0, !dbg !881
  br i1 %31, label %40, label %32, !dbg !881

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 0, !dbg !881
  %34 = load i16, i16* %33, align 4, !dbg !881, !tbaa !883
  %35 = icmp eq i16 %34, 7, !dbg !881
  br i1 %35, label %36, label %40, !dbg !888

36:                                               ; preds = %32
  %37 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %26) #27, !dbg !889
  call void @llvm.dbg.value(metadata i8* %37, metadata !851, metadata !DIExpression()) #27, !dbg !890
  %38 = getelementptr inbounds i8*, i8** %21, i64 %27, !dbg !891
  store i8* %37, i8** %38, align 8, !dbg !892, !tbaa !614
  %39 = add i64 %27, 1, !dbg !893
  call void @llvm.dbg.value(metadata i64 %39, metadata !850, metadata !DIExpression()) #27, !dbg !859
  br label %40, !dbg !894

40:                                               ; preds = %36, %32, %24
  %41 = phi i64 [ %39, %36 ], [ %27, %32 ], [ %27, %24 ], !dbg !859
  call void @llvm.dbg.value(metadata i64 %41, metadata !850, metadata !DIExpression()) #27, !dbg !859
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 1, !dbg !895
  call void @llvm.dbg.value(metadata i64 %28, metadata !840, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata %struct.utmpx* %42, metadata !847, metadata !DIExpression()) #27, !dbg !859
  call void @llvm.dbg.value(metadata i64 %28, metadata !840, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !859
  %43 = icmp eq i64 %28, 0, !dbg !877
  br i1 %43, label %44, label %24, !dbg !877, !llvm.loop !896

44:                                               ; preds = %40
  call void @qsort(i8* %20, i64 %41, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #27, !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !849, metadata !DIExpression()) #27, !dbg !859
  %45 = icmp eq i64 %41, 0, !dbg !898
  br i1 %45, label %76, label %46, !dbg !879

46:                                               ; preds = %44
  %47 = add i64 %41, -1
  br label %48, !dbg !879

48:                                               ; preds = %67, %46
  %49 = phi i64 [ 0, %46 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !849, metadata !DIExpression()) #27, !dbg !859
  %50 = icmp ult i64 %49, %47, !dbg !899
  call void @llvm.dbg.value(metadata i8 undef, metadata !855, metadata !DIExpression()) #27, !dbg !900
  %51 = getelementptr inbounds i8*, i8** %21, i64 %49, !dbg !901
  %52 = load i8*, i8** %51, align 8, !dbg !901, !tbaa !614
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !901, !tbaa !614
  %54 = call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53) #27, !dbg !901
  %55 = select i1 %50, i32 32, i32 10, !dbg !902
  call void @llvm.dbg.value(metadata i32 %55, metadata !903, metadata !DIExpression()) #27, !dbg !909
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !911, !tbaa !614
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 5, !dbg !911
  %58 = load i8*, i8** %57, align 8, !dbg !911, !tbaa !912
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 6, !dbg !911
  %60 = load i8*, i8** %59, align 8, !dbg !911, !tbaa !914
  %61 = icmp ult i8* %58, %60, !dbg !911
  br i1 %61, label %64, label %62, !dbg !911, !prof !915

62:                                               ; preds = %48
  %63 = call i32 @__overflow(%struct._IO_FILE* nonnull %56, i32 %55) #27, !dbg !911
  br label %67, !dbg !911

64:                                               ; preds = %48
  %65 = trunc i32 %55 to i8, !dbg !911
  %66 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !911
  store i8* %66, i8** %57, align 8, !dbg !911, !tbaa !912
  store i8 %65, i8* %58, align 1, !dbg !911, !tbaa !882
  br label %67, !dbg !911

67:                                               ; preds = %64, %62
  %68 = add nuw i64 %49, 1, !dbg !916
  call void @llvm.dbg.value(metadata i64 %68, metadata !849, metadata !DIExpression()) #27, !dbg !859
  %69 = icmp eq i64 %68, %41, !dbg !898
  br i1 %69, label %70, label %48, !dbg !879, !llvm.loop !917

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %74, %70 ], [ 0, %67 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !849, metadata !DIExpression()) #27, !dbg !859
  %72 = getelementptr inbounds i8*, i8** %21, i64 %71, !dbg !919
  %73 = load i8*, i8** %72, align 8, !dbg !919, !tbaa !614
  call void @free(i8* %73) #27, !dbg !922
  %74 = add nuw i64 %71, 1, !dbg !923
  call void @llvm.dbg.value(metadata i64 %74, metadata !849, metadata !DIExpression()) #27, !dbg !859
  %75 = icmp eq i64 %74, %41, !dbg !924
  br i1 %75, label %76, label %70, !dbg !925, !llvm.loop !926

76:                                               ; preds = %70, %23, %44
  call void @free(i8* %20) #27, !dbg !928
  %77 = bitcast %struct.utmpx** %4 to i8**, !dbg !929
  %78 = load i8*, i8** %77, align 8, !dbg !929, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !794, metadata !DIExpression()), !dbg !829
  call void @free(i8* %78) #27, !dbg !930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #27, !dbg !931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27, !dbg !931
  ret void, !dbg !931
}

declare !dbg !932 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define internal i32 @userid_compare(i8* nocapture readonly %0, i8* nocapture readonly %1) #10 !dbg !936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !942, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %1, metadata !943, metadata !DIExpression()), !dbg !946
  %3 = bitcast i8* %0 to i8**, !dbg !947
  call void @llvm.dbg.value(metadata i8** %3, metadata !944, metadata !DIExpression()), !dbg !946
  %4 = bitcast i8* %1 to i8**, !dbg !948
  call void @llvm.dbg.value(metadata i8** %4, metadata !945, metadata !DIExpression()), !dbg !946
  %5 = load i8*, i8** %3, align 8, !dbg !949, !tbaa !614
  %6 = load i8*, i8** %4, align 8, !dbg !950, !tbaa !614
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %5, i8* nonnull dereferenceable(1) %6) #28, !dbg !951
  ret i32 %7, !dbg !952
}

; Function Attrs: nofree
declare !dbg !953 void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #11

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !957 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !959, metadata !DIExpression()), !dbg !960
  store i8* %0, i8** @file_name, align 8, !dbg !961, !tbaa !614
  ret void, !dbg !962
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !963 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !967, metadata !DIExpression()), !dbg !968
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !969, !tbaa !970
  ret void, !dbg !972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !973 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !978, !tbaa !614
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !979
  %3 = icmp eq i32 %2, 0, !dbg !980
  br i1 %3, label %22, label %4, !dbg !981

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !982, !tbaa !970, !range !983
  %6 = icmp eq i8 %5, 0, !dbg !982
  br i1 %6, label %11, label %7, !dbg !984

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !985
  %9 = load i32, i32* %8, align 4, !dbg !985, !tbaa !756
  %10 = icmp eq i32 %9, 32, !dbg !986
  br i1 %10, label %22, label %11, !dbg !987

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #27, !dbg !988
  call void @llvm.dbg.value(metadata i8* %12, metadata !975, metadata !DIExpression()), !dbg !989
  %13 = load i8*, i8** @file_name, align 8, !dbg !990, !tbaa !614
  %14 = icmp eq i8* %13, null, !dbg !990
  %15 = tail call i32* @__errno_location() #31, !dbg !992
  %16 = load i32, i32* %15, align 4, !dbg !992, !tbaa !756
  br i1 %14, label %19, label %17, !dbg !993

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !994
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !995
  br label %20, !dbg !995

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #27, !dbg !996
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !997, !tbaa !756
  tail call void @_exit(i32 %21) #29, !dbg !998
  unreachable, !dbg !998

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !999, !tbaa !614
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1001
  %25 = icmp eq i32 %24, 0, !dbg !1002
  br i1 %25, label %28, label %26, !dbg !1003

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1004, !tbaa !756
  tail call void @_exit(i32 %27) #29, !dbg !1005
  unreachable, !dbg !1005

28:                                               ; preds = %22
  ret void, !dbg !1006
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1007 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1012, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8** %1, metadata !1013, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %2, metadata !1014, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %3, metadata !1015, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %4, metadata !1016, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1017, metadata !DIExpression()), !dbg !1036
  %8 = load i32, i32* @opterr, align 4, !dbg !1037, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %8, metadata !1019, metadata !DIExpression()), !dbg !1036
  store i32 0, i32* @opterr, align 4, !dbg !1038, !tbaa !756
  %9 = icmp eq i32 %0, 2, !dbg !1039
  br i1 %9, label %10, label %17, !dbg !1040

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %11, metadata !1018, metadata !DIExpression()), !dbg !1036
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1042

12:                                               ; preds = %10
  tail call void %5(i32 0) #27, !dbg !1043
  br label %17, !dbg !1044

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #27, !dbg !1045
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1020, metadata !DIExpression()), !dbg !1046
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1047
  call void @llvm.va_start(i8* nonnull %14), !dbg !1047
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1048, !tbaa !614
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #27, !dbg !1049
  call void @exit(i32 0) #29, !dbg !1050
  unreachable, !dbg !1050

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1051, !tbaa !756
  store i32 0, i32* @optind, align 4, !dbg !1052, !tbaa !756
  ret void, !dbg !1053
}

; Function Attrs: nounwind
declare !dbg !1054 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1060 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1064, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8** %1, metadata !1065, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %2, metadata !1066, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %3, metadata !1067, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %4, metadata !1068, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i1 %5, metadata !1069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1079
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1070, metadata !DIExpression()), !dbg !1079
  %9 = load i32, i32* @opterr, align 4, !dbg !1080, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %9, metadata !1072, metadata !DIExpression()), !dbg !1079
  store i32 1, i32* @opterr, align 4, !dbg !1081, !tbaa !756
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %10, metadata !1073, metadata !DIExpression()), !dbg !1079
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %11, metadata !1071, metadata !DIExpression()), !dbg !1079
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1084

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1085
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #27, !dbg !1085
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1074, metadata !DIExpression()), !dbg !1086
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1087
  call void @llvm.va_start(i8* nonnull %13), !dbg !1087
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !614
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #27, !dbg !1089
  call void @exit(i32 0) #29, !dbg !1090
  unreachable, !dbg !1090

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1091, !tbaa !756
  br label %18, !dbg !1092

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #27, !dbg !1093
  br label %20, !dbg !1094

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1094, !tbaa !756
  ret void, !dbg !1095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1098, metadata !DIExpression()), !dbg !1101
  %2 = icmp eq i8* %0, null, !dbg !1102
  br i1 %2, label %3, label %6, !dbg !1104

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1105, !tbaa !614
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1107
  tail call void @abort() #29, !dbg !1108
  unreachable, !dbg !1108

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %7, metadata !1099, metadata !DIExpression()), !dbg !1101
  %8 = icmp eq i8* %7, null, !dbg !1110
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1111
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %10, metadata !1100, metadata !DIExpression()), !dbg !1101
  %11 = ptrtoint i8* %10 to i64, !dbg !1112
  %12 = ptrtoint i8* %0 to i64, !dbg !1112
  %13 = sub i64 %11, %12, !dbg !1112
  %14 = icmp sgt i64 %13, 6, !dbg !1114
  br i1 %14, label %15, label %24, !dbg !1115

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1116
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #28, !dbg !1117
  %18 = icmp eq i32 %17, 0, !dbg !1118
  br i1 %18, label %19, label %24, !dbg !1119

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1098, metadata !DIExpression()), !dbg !1101
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #28, !dbg !1120
  %21 = icmp eq i32 %20, 0, !dbg !1123
  br i1 %21, label %22, label %24, !dbg !1124

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %23, metadata !1098, metadata !DIExpression()), !dbg !1101
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1127, !tbaa !614
  br label %24, !dbg !1128

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1098, metadata !DIExpression()), !dbg !1101
  store i8* %25, i8** @program_name, align 8, !dbg !1129, !tbaa !614
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1130, !tbaa !614
  ret void, !dbg !1131
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1132 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1137, metadata !DIExpression()), !dbg !1140
  %2 = tail call i32* @__errno_location() #31, !dbg !1141
  %3 = load i32, i32* %2, align 4, !dbg !1141, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %3, metadata !1138, metadata !DIExpression()), !dbg !1140
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1142
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1142
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1142
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1143
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i32 %3, i32* %2, align 4, !dbg !1144, !tbaa !756
  ret %struct.quoting_options* %8, !dbg !1145
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !1146 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1152, metadata !DIExpression()), !dbg !1153
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1154
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1154
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1155
  %5 = load i32, i32* %4, align 8, !dbg !1155, !tbaa !1156
  ret i32 %5, !dbg !1158
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1159 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1163, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %1, metadata !1164, metadata !DIExpression()), !dbg !1165
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1166
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1166
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1167
  store i32 %1, i32* %5, align 8, !dbg !1168, !tbaa !1156
  ret void, !dbg !1169
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !1170 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1174, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %2, metadata !1176, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1177, metadata !DIExpression()), !dbg !1182
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1183
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1183
  %6 = lshr i8 %1, 5, !dbg !1184
  %7 = zext i8 %6 to i64, !dbg !1184
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1185
  call void @llvm.dbg.value(metadata i32* %8, metadata !1178, metadata !DIExpression()), !dbg !1182
  %9 = and i8 %1, 31, !dbg !1186
  %10 = zext i8 %9 to i32, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %10, metadata !1180, metadata !DIExpression()), !dbg !1182
  %11 = load i32, i32* %8, align 4, !dbg !1187, !tbaa !756
  %12 = lshr i32 %11, %10, !dbg !1188
  %13 = and i32 %12, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %13, metadata !1181, metadata !DIExpression()), !dbg !1182
  %14 = and i32 %2, 1, !dbg !1190
  %15 = xor i32 %13, %14, !dbg !1191
  %16 = shl i32 %15, %10, !dbg !1192
  %17 = xor i32 %16, %11, !dbg !1193
  store i32 %17, i32* %8, align 4, !dbg !1193, !tbaa !756
  ret i32 %13, !dbg !1194
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !1195 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %1, metadata !1200, metadata !DIExpression()), !dbg !1202
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1203
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1199, metadata !DIExpression()), !dbg !1202
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1206
  %6 = load i32, i32* %5, align 4, !dbg !1206, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %6, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i32 %1, i32* %5, align 4, !dbg !1208, !tbaa !1207
  ret i32 %6, !dbg !1209
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1210 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1214, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()), !dbg !1217
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1218
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()), !dbg !1217
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1221
  store i32 10, i32* %6, align 8, !dbg !1222, !tbaa !1156
  %7 = icmp ne i8* %1, null, !dbg !1223
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1225
  br i1 %9, label %11, label %10, !dbg !1225

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1226
  unreachable, !dbg !1226

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1227
  store i8* %1, i8** %12, align 8, !dbg !1228, !tbaa !1229
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1230
  store i8* %2, i8** %13, align 8, !dbg !1231, !tbaa !1232
  ret void, !dbg !1233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1238, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %1, metadata !1239, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %2, metadata !1240, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %3, metadata !1241, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1242, metadata !DIExpression()), !dbg !1246
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1247
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1243, metadata !DIExpression()), !dbg !1246
  %8 = tail call i32* @__errno_location() #31, !dbg !1248
  %9 = load i32, i32* %8, align 4, !dbg !1248, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %9, metadata !1244, metadata !DIExpression()), !dbg !1246
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1249
  %11 = load i32, i32* %10, align 8, !dbg !1249, !tbaa !1156
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1250
  %13 = load i32, i32* %12, align 4, !dbg !1250, !tbaa !1207
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1251
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1252
  %16 = load i8*, i8** %15, align 8, !dbg !1252, !tbaa !1229
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1253
  %18 = load i8*, i8** %17, align 8, !dbg !1253, !tbaa !1232
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %19, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 %9, i32* %8, align 4, !dbg !1255, !tbaa !756
  ret i64 %19, !dbg !1256
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1257 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %2, metadata !1265, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %3, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %4, metadata !1267, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %5, metadata !1268, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32* %6, metadata !1269, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %7, metadata !1270, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %8, metadata !1271, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* null, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1276, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1277, metadata !DIExpression()), !dbg !1330
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1331
  %14 = icmp eq i64 %13, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i1 %14, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1330
  %15 = lshr i32 %5, 1, !dbg !1333
  %16 = trunc i32 %15 to i8, !dbg !1333
  %17 = and i8 %16, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i8 %17, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1282, metadata !DIExpression()), !dbg !1330
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1334

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1335
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1336
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1337
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1338
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1330
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1339
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1340
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1341
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %38, metadata !1282, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %37, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %36, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %35, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %34, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %33, metadata !1277, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %32, metadata !1276, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %31, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %30, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %29, metadata !1271, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %28, metadata !1270, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %27, metadata !1267, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1324), !dbg !1342
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
  ], !dbg !1343

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1330
  br label %92, !dbg !1344

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1330
  %42 = and i8 %35, 1, !dbg !1346
  %43 = icmp eq i8 %42, 0, !dbg !1346
  br i1 %43, label %44, label %92, !dbg !1344

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1348
  br i1 %45, label %92, label %46, !dbg !1351

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1348, !tbaa !882
  br label %92, !dbg !1348

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %48, metadata !1270, metadata !DIExpression()), !dbg !1330
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %49, metadata !1271, metadata !DIExpression()), !dbg !1330
  br label %50, !dbg !1357

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1271, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %51, metadata !1270, metadata !DIExpression()), !dbg !1330
  %53 = and i8 %35, 1, !dbg !1358
  %54 = icmp eq i8 %53, 0, !dbg !1358
  br i1 %54, label %55, label %70, !dbg !1360

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1330
  %56 = load i8, i8* %51, align 1, !dbg !1361, !tbaa !882
  %57 = icmp eq i8 %56, 0, !dbg !1364
  br i1 %57, label %70, label %58, !dbg !1364

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %61, metadata !1273, metadata !DIExpression()), !dbg !1330
  %62 = icmp ult i64 %61, %39, !dbg !1365
  br i1 %62, label %63, label %65, !dbg !1368

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1365
  store i8 %59, i8* %64, align 1, !dbg !1365, !tbaa !882
  br label %65, !dbg !1365

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %66, metadata !1273, metadata !DIExpression()), !dbg !1330
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %67, metadata !1275, metadata !DIExpression()), !dbg !1330
  %68 = load i8, i8* %67, align 1, !dbg !1361, !tbaa !882
  %69 = icmp eq i8 %68, 0, !dbg !1364
  br i1 %69, label %70, label %58, !dbg !1364, !llvm.loop !1370

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1372
  call void @llvm.dbg.value(metadata i64 %71, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %52, metadata !1275, metadata !DIExpression()), !dbg !1330
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %72, metadata !1276, metadata !DIExpression()), !dbg !1330
  br label %92, !dbg !1374

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1330
  br label %74, !dbg !1375

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %75, metadata !1277, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1279, metadata !DIExpression()), !dbg !1330
  br label %76, !dbg !1376

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1338
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %78, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %77, metadata !1277, metadata !DIExpression()), !dbg !1330
  %79 = and i8 %78, 1, !dbg !1377
  %80 = icmp eq i8 %79, 0, !dbg !1377
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1379
  br label %82, !dbg !1379

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1330
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1333
  call void @llvm.dbg.value(metadata i8 %84, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %83, metadata !1277, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 2, metadata !1267, metadata !DIExpression()), !dbg !1330
  %85 = and i8 %84, 1, !dbg !1380
  %86 = icmp eq i8 %85, 0, !dbg !1380
  br i1 %86, label %87, label %92, !dbg !1382

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1383
  br i1 %88, label %92, label %89, !dbg !1386

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1383, !tbaa !882
  br label %92, !dbg !1383

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1279, metadata !DIExpression()), !dbg !1330
  br label %92, !dbg !1387

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1388
  unreachable, !dbg !1388

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1372
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1330
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1330
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1330
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %100, metadata !1279, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %99, metadata !1277, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %98, metadata !1276, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %97, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %96, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %95, metadata !1271, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1270, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %93, metadata !1267, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !1272, metadata !DIExpression()), !dbg !1330
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
  br label %121, !dbg !1389

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1390
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1372
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1335
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1339
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1340
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1341
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %128, metadata !1282, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %127, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %126, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %125, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %124, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %123, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %122, metadata !1272, metadata !DIExpression()), !dbg !1330
  %130 = icmp eq i64 %125, -1, !dbg !1391
  br i1 %130, label %131, label %135, !dbg !1392

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1393
  %133 = load i8, i8* %132, align 1, !dbg !1393, !tbaa !882
  %134 = icmp eq i8 %133, 0, !dbg !1394
  br i1 %134, label %587, label %137, !dbg !1395

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1396
  br i1 %136, label %587, label %137, !dbg !1395

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 0, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 0, metadata !1290, metadata !DIExpression()), !dbg !1397
  br i1 %106, label %138, label %153, !dbg !1398

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1400
  %140 = and i1 %107, %130, !dbg !1401
  br i1 %140, label %141, label %143, !dbg !1401

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %142, metadata !1266, metadata !DIExpression()), !dbg !1330
  br label %143, !dbg !1403

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1403
  call void @llvm.dbg.value(metadata i64 %144, metadata !1266, metadata !DIExpression()), !dbg !1330
  %145 = icmp ugt i64 %139, %144, !dbg !1404
  br i1 %145, label %153, label %146, !dbg !1405

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1406
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1407
  %149 = icmp ne i32 %148, 0, !dbg !1408
  %150 = or i1 %149, %109, !dbg !1409
  %151 = xor i1 %149, true, !dbg !1409
  %152 = zext i1 %151 to i8, !dbg !1409
  br i1 %150, label %153, label %646, !dbg !1409

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1397
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8 %156, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %154, metadata !1266, metadata !DIExpression()), !dbg !1330
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1410
  %158 = load i8, i8* %157, align 1, !dbg !1410, !tbaa !882
  call void @llvm.dbg.value(metadata i8 %158, metadata !1283, metadata !DIExpression()), !dbg !1397
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
  ], !dbg !1411

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1412

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1413

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1289, metadata !DIExpression()), !dbg !1397
  %162 = and i8 %126, 1, !dbg !1417
  %163 = icmp eq i8 %162, 0, !dbg !1417
  %164 = and i1 %110, %163, !dbg !1417
  br i1 %164, label %165, label %181, !dbg !1417

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1419
  br i1 %166, label %167, label %169, !dbg !1423

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1419
  store i8 39, i8* %168, align 1, !dbg !1419, !tbaa !882
  br label %169, !dbg !1419

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %170, metadata !1273, metadata !DIExpression()), !dbg !1330
  %171 = icmp ult i64 %170, %129, !dbg !1424
  br i1 %171, label %172, label %174, !dbg !1427

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1424
  store i8 36, i8* %173, align 1, !dbg !1424, !tbaa !882
  br label %174, !dbg !1424

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %175, metadata !1273, metadata !DIExpression()), !dbg !1330
  %176 = icmp ult i64 %175, %129, !dbg !1428
  br i1 %176, label %177, label %179, !dbg !1431

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1428
  store i8 39, i8* %178, align 1, !dbg !1428, !tbaa !882
  br label %179, !dbg !1428

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %180, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %181, !dbg !1432

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1330
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %183, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %182, metadata !1273, metadata !DIExpression()), !dbg !1330
  %184 = icmp ult i64 %182, %129, !dbg !1433
  br i1 %184, label %185, label %187, !dbg !1436

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1433
  store i8 92, i8* %186, align 1, !dbg !1433, !tbaa !882
  br label %187, !dbg !1433

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %188, metadata !1273, metadata !DIExpression()), !dbg !1330
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1437
  br i1 %191, label %192, label %473, !dbg !1437

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1439
  %194 = load i8, i8* %193, align 1, !dbg !1439, !tbaa !882
  %195 = add i8 %194, -48, !dbg !1440
  %196 = icmp ult i8 %195, 10, !dbg !1440
  br i1 %196, label %197, label %473, !dbg !1440

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1441
  br i1 %198, label %199, label %201, !dbg !1445

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1441
  store i8 48, i8* %200, align 1, !dbg !1441, !tbaa !882
  br label %201, !dbg !1441

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %202, metadata !1273, metadata !DIExpression()), !dbg !1330
  %203 = icmp ult i64 %202, %129, !dbg !1446
  br i1 %203, label %204, label %206, !dbg !1449

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1446
  store i8 48, i8* %205, align 1, !dbg !1446, !tbaa !882
  br label %206, !dbg !1446

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %207, metadata !1273, metadata !DIExpression()), !dbg !1330
  br label %473, !dbg !1450

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1451

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1452

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1453

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1455
  br i1 %214, label %215, label %473, !dbg !1455

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1457
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1458
  %218 = load i8, i8* %217, align 1, !dbg !1458, !tbaa !882
  %219 = icmp eq i8 %218, 63, !dbg !1459
  br i1 %219, label %220, label %473, !dbg !1460

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1461
  %222 = load i8, i8* %221, align 1, !dbg !1461, !tbaa !882
  %223 = sext i8 %222 to i32, !dbg !1461
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
  ], !dbg !1462

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1463

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 undef, metadata !1272, metadata !DIExpression()), !dbg !1330
  %226 = icmp ult i64 %123, %129, !dbg !1465
  br i1 %226, label %227, label %229, !dbg !1468

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1465
  store i8 63, i8* %228, align 1, !dbg !1465, !tbaa !882
  br label %229, !dbg !1465

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %230, metadata !1273, metadata !DIExpression()), !dbg !1330
  %231 = icmp ult i64 %230, %129, !dbg !1469
  br i1 %231, label %232, label %234, !dbg !1472

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1469
  store i8 34, i8* %233, align 1, !dbg !1469, !tbaa !882
  br label %234, !dbg !1469

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %235, metadata !1273, metadata !DIExpression()), !dbg !1330
  %236 = icmp ult i64 %235, %129, !dbg !1473
  br i1 %236, label %237, label %239, !dbg !1476

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1473
  store i8 34, i8* %238, align 1, !dbg !1473, !tbaa !882
  br label %239, !dbg !1473

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %240, metadata !1273, metadata !DIExpression()), !dbg !1330
  %241 = icmp ult i64 %240, %129, !dbg !1477
  br i1 %241, label %242, label %244, !dbg !1480

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1477
  store i8 63, i8* %243, align 1, !dbg !1477, !tbaa !882
  br label %244, !dbg !1477

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %245, metadata !1273, metadata !DIExpression()), !dbg !1330
  br label %473, !dbg !1481

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1287, metadata !DIExpression()), !dbg !1397
  br label %256, !dbg !1482

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1287, metadata !DIExpression()), !dbg !1397
  br label %256, !dbg !1483

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1287, metadata !DIExpression()), !dbg !1397
  br label %254, !dbg !1484

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1287, metadata !DIExpression()), !dbg !1397
  br label %254, !dbg !1485

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1287, metadata !DIExpression()), !dbg !1397
  br label %256, !dbg !1486

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1287, metadata !DIExpression()), !dbg !1397
  br i1 %110, label %252, label %253, !dbg !1487

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1488

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1491

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %255, metadata !1287, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.label(metadata !1325), !dbg !1494
  br i1 %111, label %256, label %631, !dbg !1495

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %257, metadata !1287, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.label(metadata !1326), !dbg !1497
  br i1 %102, label %495, label %473, !dbg !1498

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1499

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1500, !tbaa !882
  %261 = icmp eq i8 %260, 0, !dbg !1502
  br i1 %261, label %262, label %473, !dbg !1503

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1504
  br i1 %263, label %264, label %473, !dbg !1506

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1290, metadata !DIExpression()), !dbg !1397
  br label %265, !dbg !1507

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8 %266, metadata !1290, metadata !DIExpression()), !dbg !1397
  br i1 %111, label %473, label %631, !dbg !1508

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1290, metadata !DIExpression()), !dbg !1397
  br i1 %110, label %268, label %473, !dbg !1510

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1511

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1514
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1516
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1516
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %274, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %273, metadata !1274, metadata !DIExpression()), !dbg !1330
  %275 = icmp ult i64 %123, %274, !dbg !1517
  br i1 %275, label %276, label %278, !dbg !1520

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1517
  store i8 39, i8* %277, align 1, !dbg !1517, !tbaa !882
  br label %278, !dbg !1517

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %279, metadata !1273, metadata !DIExpression()), !dbg !1330
  %280 = icmp ult i64 %279, %274, !dbg !1521
  br i1 %280, label %281, label %283, !dbg !1524

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1521
  store i8 92, i8* %282, align 1, !dbg !1521, !tbaa !882
  br label %283, !dbg !1521

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %284, metadata !1273, metadata !DIExpression()), !dbg !1330
  %285 = icmp ult i64 %284, %274, !dbg !1525
  br i1 %285, label %286, label %288, !dbg !1528

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1525
  store i8 39, i8* %287, align 1, !dbg !1525, !tbaa !882
  br label %288, !dbg !1525

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %289, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %473, !dbg !1529

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1530

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1291, metadata !DIExpression()), !dbg !1531
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !1532
  %293 = load i16*, i16** %292, align 8, !dbg !1532, !tbaa !614
  %294 = zext i8 %158 to i64, !dbg !1532
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1532
  %296 = load i16, i16* %295, align 2, !dbg !1532, !tbaa !1534
  %297 = lshr i16 %296, 14, !dbg !1535
  %298 = trunc i16 %297 to i8, !dbg !1535
  %299 = and i8 %298, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i8 %354, metadata !1294, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %355, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %306, metadata !1266, metadata !DIExpression()), !dbg !1330
  %300 = icmp eq i8 %299, 0, !dbg !1536
  call void @llvm.dbg.value(metadata i1 %357, metadata !1290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1397
  br label %359, !dbg !1537

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1538
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1295, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %23, metadata !1540, metadata !DIExpression()) #27, !dbg !1548
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()) #27, !dbg !1548
  call void @llvm.dbg.value(metadata i64 8, metadata !1547, metadata !DIExpression()) #27, !dbg !1548
  store i64 0, i64* %10, align 8, !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8 1, metadata !1294, metadata !DIExpression()), !dbg !1531
  %302 = icmp eq i64 %154, -1, !dbg !1551
  br i1 %302, label %303, label %305, !dbg !1553

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %304, metadata !1266, metadata !DIExpression()), !dbg !1330
  br label %305, !dbg !1555

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1397
  call void @llvm.dbg.value(metadata i64 %306, metadata !1266, metadata !DIExpression()), !dbg !1330
  br label %307, !dbg !1556

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1557
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1558
  call void @llvm.dbg.value(metadata i8 %309, metadata !1294, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %308, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1559
  %310 = add i64 %308, %122, !dbg !1560
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1561
  %312 = sub i64 %306, %310, !dbg !1562
  call void @llvm.dbg.value(metadata i32* %12, metadata !1310, metadata !DIExpression(DW_OP_deref)), !dbg !1563
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %313, metadata !1313, metadata !DIExpression()), !dbg !1563
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1565

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1291, metadata !DIExpression()), !dbg !1531
  %315 = icmp ugt i64 %306, %310, !dbg !1566
  br i1 %315, label %316, label %341, !dbg !1568

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1569
  br label %318, !dbg !1569

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1291, metadata !DIExpression()), !dbg !1531
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1570
  %322 = load i8, i8* %321, align 1, !dbg !1570, !tbaa !882
  %323 = icmp eq i8 %322, 0, !dbg !1568
  br i1 %323, label %341, label %324, !dbg !1569

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %325, metadata !1291, metadata !DIExpression()), !dbg !1531
  %326 = add i64 %325, %122, !dbg !1572
  %327 = icmp ult i64 %326, %306, !dbg !1566
  br i1 %327, label %318, label %341, !dbg !1568, !llvm.loop !1573

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1574
  call void @llvm.dbg.value(metadata i64 1, metadata !1314, metadata !DIExpression()), !dbg !1575
  br i1 %330, label %331, label %344, !dbg !1574

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1314, metadata !DIExpression()), !dbg !1575
  %333 = add i64 %332, %310, !dbg !1576
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1579
  %335 = load i8, i8* %334, align 1, !dbg !1579, !tbaa !882
  %336 = sext i8 %335 to i32, !dbg !1579
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1580

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %338, metadata !1314, metadata !DIExpression()), !dbg !1575
  %339 = icmp eq i64 %338, %313, !dbg !1582
  br i1 %339, label %344, label %331, !dbg !1583, !llvm.loop !1584

340:                                              ; preds = %307
  br label %341, !dbg !1586

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1294, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 undef, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1586
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1587, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %345, metadata !1310, metadata !DIExpression()), !dbg !1563
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !1589
  %347 = icmp eq i32 %346, 0, !dbg !1589
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %348, metadata !1294, metadata !DIExpression()), !dbg !1531
  %349 = add i64 %313, %308, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %349, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1586
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !1592
  %351 = icmp eq i32 %350, 0, !dbg !1593
  br i1 %351, label %307, label %353, !dbg !1594, !llvm.loop !1595

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1294, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 undef, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1597
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1597
  call void @llvm.dbg.value(metadata i8 %354, metadata !1294, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %355, metadata !1291, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %306, metadata !1266, metadata !DIExpression()), !dbg !1330
  %356 = and i8 %354, 1, !dbg !1536
  %357 = icmp eq i8 %356, 0, !dbg !1536
  call void @llvm.dbg.value(metadata i1 %357, metadata !1290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1397
  %358 = icmp ugt i64 %355, 1, !dbg !1598
  br i1 %358, label %367, label %359, !dbg !1537

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1599
  br i1 %364, label %367, label %365, !dbg !1599

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i8 %472, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %441, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %440, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %439, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %438, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %371, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %437, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %375, metadata !1272, metadata !DIExpression()), !dbg !1330
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %372, metadata !1321, metadata !DIExpression()), !dbg !1601
  %373 = and i1 %102, %368
  br label %374, !dbg !1602

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1390
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1330
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1339
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1397
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1397
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %380, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %379, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %378, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %377, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %376, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %375, metadata !1272, metadata !DIExpression()), !dbg !1330
  br i1 %373, label %381, label %427, !dbg !1604

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1609

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1289, metadata !DIExpression()), !dbg !1397
  %383 = and i8 %377, 1, !dbg !1612
  %384 = icmp eq i8 %383, 0, !dbg !1612
  %385 = and i1 %110, %384, !dbg !1612
  br i1 %385, label %386, label %402, !dbg !1612

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1614
  br i1 %387, label %388, label %390, !dbg !1618

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1614
  store i8 39, i8* %389, align 1, !dbg !1614, !tbaa !882
  br label %390, !dbg !1614

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %391, metadata !1273, metadata !DIExpression()), !dbg !1330
  %392 = icmp ult i64 %391, %129, !dbg !1619
  br i1 %392, label %393, label %395, !dbg !1622

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1619
  store i8 36, i8* %394, align 1, !dbg !1619, !tbaa !882
  br label %395, !dbg !1619

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %396, metadata !1273, metadata !DIExpression()), !dbg !1330
  %397 = icmp ult i64 %396, %129, !dbg !1623
  br i1 %397, label %398, label %400, !dbg !1626

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1623
  store i8 39, i8* %399, align 1, !dbg !1623, !tbaa !882
  br label %400, !dbg !1623

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %401, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %402, !dbg !1627

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1330
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %404, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %403, metadata !1273, metadata !DIExpression()), !dbg !1330
  %405 = icmp ult i64 %403, %129, !dbg !1628
  br i1 %405, label %406, label %408, !dbg !1631

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1628
  store i8 92, i8* %407, align 1, !dbg !1628, !tbaa !882
  br label %408, !dbg !1628

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %409, metadata !1273, metadata !DIExpression()), !dbg !1330
  %410 = icmp ult i64 %409, %129, !dbg !1632
  br i1 %410, label %411, label %415, !dbg !1635

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1632
  %413 = or i8 %412, 48, !dbg !1632
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1632
  store i8 %413, i8* %414, align 1, !dbg !1632, !tbaa !882
  br label %415, !dbg !1632

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %416, metadata !1273, metadata !DIExpression()), !dbg !1330
  %417 = icmp ult i64 %416, %129, !dbg !1636
  br i1 %417, label %418, label %423, !dbg !1639

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1636
  %420 = and i8 %419, 7, !dbg !1636
  %421 = or i8 %420, 48, !dbg !1636
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1636
  store i8 %421, i8* %422, align 1, !dbg !1636, !tbaa !882
  br label %423, !dbg !1636

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %424, metadata !1273, metadata !DIExpression()), !dbg !1330
  %425 = and i8 %378, 7, !dbg !1640
  %426 = or i8 %425, 48, !dbg !1641
  call void @llvm.dbg.value(metadata i8 %426, metadata !1283, metadata !DIExpression()), !dbg !1397
  br label %436, !dbg !1642

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1643
  %429 = icmp eq i8 %428, 0, !dbg !1643
  br i1 %429, label %436, label %430, !dbg !1645

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1646
  br i1 %431, label %432, label %434, !dbg !1650

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1646
  store i8 92, i8* %433, align 1, !dbg !1646, !tbaa !882
  br label %434, !dbg !1646

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %435, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1288, metadata !DIExpression()), !dbg !1397
  br label %436, !dbg !1651

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1330
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1339
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1397
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1397
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8 %441, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %440, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %439, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %438, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %437, metadata !1273, metadata !DIExpression()), !dbg !1330
  %442 = add i64 %375, 1, !dbg !1652
  %443 = icmp ugt i64 %372, %442, !dbg !1654
  br i1 %443, label %444, label %471, !dbg !1655

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1656
  %446 = icmp ne i8 %445, 0, !dbg !1656
  %447 = and i8 %441, 1, !dbg !1656
  %448 = icmp eq i8 %447, 0, !dbg !1656
  %449 = and i1 %446, %448, !dbg !1656
  br i1 %449, label %450, label %461, !dbg !1656

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1659
  br i1 %451, label %452, label %454, !dbg !1663

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1659
  store i8 39, i8* %453, align 1, !dbg !1659, !tbaa !882
  br label %454, !dbg !1659

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %455, metadata !1273, metadata !DIExpression()), !dbg !1330
  %456 = icmp ult i64 %455, %129, !dbg !1664
  br i1 %456, label %457, label %459, !dbg !1667

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1664
  store i8 39, i8* %458, align 1, !dbg !1664, !tbaa !882
  br label %459, !dbg !1664

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %460, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %461, !dbg !1668

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1669
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %463, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %462, metadata !1273, metadata !DIExpression()), !dbg !1330
  %464 = icmp ult i64 %462, %129, !dbg !1670
  br i1 %464, label %465, label %467, !dbg !1673

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1670
  store i8 %439, i8* %466, align 1, !dbg !1670, !tbaa !882
  br label %467, !dbg !1670

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %468, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %442, metadata !1272, metadata !DIExpression()), !dbg !1330
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1674
  %470 = load i8, i8* %469, align 1, !dbg !1674, !tbaa !882
  call void @llvm.dbg.value(metadata i8 %470, metadata !1283, metadata !DIExpression()), !dbg !1397
  br label %374, !dbg !1675, !llvm.loop !1676

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i8 %472, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %441, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %440, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %439, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %438, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %371, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %437, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %375, metadata !1272, metadata !DIExpression()), !dbg !1330
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1390
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1330
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1335
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1679
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1330
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1330
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1397
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1397
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1397
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %482, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %481, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %156, metadata !1288, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %480, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %479, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %478, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %477, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %476, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %475, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %474, metadata !1272, metadata !DIExpression()), !dbg !1330
  br i1 %116, label %494, label %484, !dbg !1680

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1682
  %486 = zext i8 %485 to i64, !dbg !1682
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1683
  %488 = load i32, i32* %487, align 4, !dbg !1683, !tbaa !756
  %489 = and i8 %480, 31, !dbg !1684
  %490 = zext i8 %489 to i32, !dbg !1684
  %491 = shl nuw i32 1, %490, !dbg !1685
  %492 = and i32 %488, %491, !dbg !1685
  %493 = icmp eq i32 %492, 0, !dbg !1685
  br i1 %493, label %494, label %495, !dbg !1686

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1687

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1688
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1330
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1335
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1679
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1339
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1340
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1397
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1397
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %503, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %502, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %501, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %500, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %499, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %498, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %497, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %496, metadata !1272, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1327), !dbg !1689
  br i1 %109, label %505, label %635, !dbg !1690

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1289, metadata !DIExpression()), !dbg !1397
  %506 = and i8 %500, 1, !dbg !1692
  %507 = icmp eq i8 %506, 0, !dbg !1692
  %508 = and i1 %110, %507, !dbg !1692
  br i1 %508, label %509, label %525, !dbg !1692

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1694
  br i1 %510, label %511, label %513, !dbg !1698

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1694
  store i8 39, i8* %512, align 1, !dbg !1694, !tbaa !882
  br label %513, !dbg !1694

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %514, metadata !1273, metadata !DIExpression()), !dbg !1330
  %515 = icmp ult i64 %514, %504, !dbg !1699
  br i1 %515, label %516, label %518, !dbg !1702

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1699
  store i8 36, i8* %517, align 1, !dbg !1699, !tbaa !882
  br label %518, !dbg !1699

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %519, metadata !1273, metadata !DIExpression()), !dbg !1330
  %520 = icmp ult i64 %519, %504, !dbg !1703
  br i1 %520, label %521, label %523, !dbg !1706

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1703
  store i8 39, i8* %522, align 1, !dbg !1703, !tbaa !882
  br label %523, !dbg !1703

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %524, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %525, !dbg !1707

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1397
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %527, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %526, metadata !1273, metadata !DIExpression()), !dbg !1330
  %528 = icmp ult i64 %526, %504, !dbg !1708
  br i1 %528, label %529, label %531, !dbg !1711

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1708
  store i8 92, i8* %530, align 1, !dbg !1708, !tbaa !882
  br label %531, !dbg !1708

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %543, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %542, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %541, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %540, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %539, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %538, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %537, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %536, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %535, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %534, metadata !1272, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1328), !dbg !1712
  br label %560, !dbg !1713

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1688
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1330
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1335
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1679
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1339
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1340
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1716
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1397
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1397
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %542, metadata !1290, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %541, metadata !1289, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %540, metadata !1283, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %539, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %538, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %537, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %536, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %535, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %534, metadata !1272, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1328), !dbg !1712
  %544 = and i8 %538, 1, !dbg !1713
  %545 = icmp ne i8 %544, 0, !dbg !1713
  %546 = and i8 %541, 1, !dbg !1713
  %547 = icmp eq i8 %546, 0, !dbg !1713
  %548 = and i1 %545, %547, !dbg !1713
  br i1 %548, label %549, label %560, !dbg !1713

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1717
  br i1 %550, label %551, label %553, !dbg !1721

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1717
  store i8 39, i8* %552, align 1, !dbg !1717, !tbaa !882
  br label %553, !dbg !1717

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %554, metadata !1273, metadata !DIExpression()), !dbg !1330
  %555 = icmp ult i64 %554, %543, !dbg !1722
  br i1 %555, label %556, label %558, !dbg !1725

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1722
  store i8 39, i8* %557, align 1, !dbg !1722, !tbaa !882
  br label %558, !dbg !1722

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %559, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1330
  br label %560, !dbg !1726

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1397
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8 %569, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %568, metadata !1273, metadata !DIExpression()), !dbg !1330
  %570 = icmp ult i64 %568, %561, !dbg !1727
  br i1 %570, label %571, label %573, !dbg !1730

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1727
  store i8 %563, i8* %572, align 1, !dbg !1727, !tbaa !882
  br label %573, !dbg !1727

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %574, metadata !1273, metadata !DIExpression()), !dbg !1330
  %575 = icmp eq i8 %562, 0, !dbg !1731
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1733
  call void @llvm.dbg.value(metadata i8 %576, metadata !1282, metadata !DIExpression()), !dbg !1330
  br label %577, !dbg !1734

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1688
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1330
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1335
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1679
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1339
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1330
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1341
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %584, metadata !1282, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %583, metadata !1281, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %582, metadata !1280, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %581, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %580, metadata !1274, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %579, metadata !1273, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %578, metadata !1272, metadata !DIExpression()), !dbg !1330
  %586 = add i64 %578, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %586, metadata !1272, metadata !DIExpression()), !dbg !1330
  br label %121, !dbg !1736, !llvm.loop !1737

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1739
  %590 = and i1 %110, %589, !dbg !1741
  %591 = xor i1 %590, true, !dbg !1741
  %592 = or i1 %109, %591, !dbg !1741
  br i1 %592, label %593, label %635, !dbg !1741

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1742
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1742
  br i1 %597, label %598, label %607, !dbg !1742

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1744
  %600 = icmp eq i8 %599, 0, !dbg !1744
  br i1 %600, label %603, label %601, !dbg !1747

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1748
  br label %652, !dbg !1749

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1750
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1752
  br i1 %606, label %26, label %607, !dbg !1752

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1753
  %610 = and i1 %609, %608, !dbg !1755
  br i1 %610, label %611, label %626, !dbg !1755

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %123, metadata !1273, metadata !DIExpression()), !dbg !1330
  %612 = load i8, i8* %97, align 1, !dbg !1756, !tbaa !882
  %613 = icmp eq i8 %612, 0, !dbg !1759
  br i1 %613, label %626, label %614, !dbg !1759

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1275, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %617, metadata !1273, metadata !DIExpression()), !dbg !1330
  %618 = icmp ult i64 %617, %129, !dbg !1760
  br i1 %618, label %619, label %621, !dbg !1763

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1760
  store i8 %615, i8* %620, align 1, !dbg !1760, !tbaa !882
  br label %621, !dbg !1760

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %622, metadata !1273, metadata !DIExpression()), !dbg !1330
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %623, metadata !1275, metadata !DIExpression()), !dbg !1330
  %624 = load i8, i8* %623, align 1, !dbg !1756, !tbaa !882
  %625 = icmp eq i8 %624, 0, !dbg !1759
  br i1 %625, label %626, label %614, !dbg !1759, !llvm.loop !1765

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1372
  call void @llvm.dbg.value(metadata i64 %627, metadata !1273, metadata !DIExpression()), !dbg !1330
  %628 = icmp ult i64 %627, %129, !dbg !1767
  br i1 %628, label %629, label %652, !dbg !1769

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1770
  store i8 0, i8* %630, align 1, !dbg !1771, !tbaa !882
  br label %652, !dbg !1770

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %637, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1329), !dbg !1772
  %633 = icmp eq i8 %101, 0, !dbg !1773
  %634 = select i1 %633, i32 2, i32 4, !dbg !1773
  br label %642, !dbg !1773

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1264, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %637, metadata !1266, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.label(metadata !1329), !dbg !1772
  %639 = icmp eq i32 %93, 2, !dbg !1775
  %640 = icmp eq i8 %636, 0, !dbg !1773
  %641 = select i1 %640, i32 2, i32 4, !dbg !1773
  br i1 %639, label %642, label %646, !dbg !1773

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1773

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1267, metadata !DIExpression()), !dbg !1330
  %650 = and i32 %5, -3, !dbg !1776
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1777
  br label %652, !dbg !1778

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1779
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1780 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1784, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %1, metadata !1785, metadata !DIExpression()), !dbg !1788
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !1789
  call void @llvm.dbg.value(metadata i8* %3, metadata !1786, metadata !DIExpression()), !dbg !1788
  %4 = icmp eq i8* %3, %0, !dbg !1790
  br i1 %4, label %5, label %72, !dbg !1792

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %6, metadata !1787, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %6, metadata !1794, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* undef, metadata !1800, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 85, metadata !1801, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 84, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 70, metadata !1803, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 45, metadata !1804, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 56, metadata !1805, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1810
  %7 = load i8, i8* %6, align 1, !dbg !1813, !tbaa !882
  %8 = and i8 %7, -33, !dbg !1813
  %9 = sext i8 %8 to i32, !dbg !1813
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1813

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8* undef, metadata !1820, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 84, metadata !1821, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 70, metadata !1822, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 45, metadata !1823, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 56, metadata !1824, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !1829
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1833
  %12 = load i8, i8* %11, align 1, !dbg !1833, !tbaa !882
  %13 = and i8 %12, -33, !dbg !1833
  %14 = icmp eq i8 %13, 84, !dbg !1833
  br i1 %14, label %15, label %69, !dbg !1833

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* undef, metadata !1840, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 70, metadata !1841, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 45, metadata !1842, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 56, metadata !1843, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1844, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1846, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1848
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1852
  %17 = load i8, i8* %16, align 1, !dbg !1852, !tbaa !882
  %18 = and i8 %17, -33, !dbg !1852
  %19 = icmp eq i8 %18, 70, !dbg !1852
  br i1 %19, label %20, label %69, !dbg !1852

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1854, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* undef, metadata !1859, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 45, metadata !1860, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 56, metadata !1861, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1862, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1863, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1866
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1870
  %22 = load i8, i8* %21, align 1, !dbg !1870, !tbaa !882
  %23 = icmp eq i8 %22, 45, !dbg !1870
  br i1 %23, label %24, label %69, !dbg !1872

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1873, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* undef, metadata !1878, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 56, metadata !1879, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1884
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1888
  %26 = load i8, i8* %25, align 1, !dbg !1888, !tbaa !882
  %27 = icmp eq i8 %26, 56, !dbg !1888
  br i1 %27, label %28, label %69, !dbg !1890

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1891, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* undef, metadata !1896, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1897, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1898, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !1901
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1905
  %30 = load i8, i8* %29, align 1, !dbg !1905, !tbaa !882
  %31 = icmp eq i8 %30, 0, !dbg !1905
  br i1 %31, label %32, label %69, !dbg !1907

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1908, !tbaa !882
  %34 = icmp eq i8 %33, 96, !dbg !1909
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !1908
  br label %72, !dbg !1910

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* undef, metadata !1820, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 66, metadata !1821, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 49, metadata !1822, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 56, metadata !1823, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 48, metadata !1824, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 51, metadata !1825, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 48, metadata !1826, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !1911
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1915
  %38 = load i8, i8* %37, align 1, !dbg !1915, !tbaa !882
  %39 = and i8 %38, -33, !dbg !1915
  %40 = icmp eq i8 %39, 66, !dbg !1915
  br i1 %40, label %41, label %69, !dbg !1915

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* undef, metadata !1840, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 49, metadata !1841, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 56, metadata !1842, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 48, metadata !1843, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 51, metadata !1844, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 48, metadata !1845, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1846, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1916
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1918
  %43 = load i8, i8* %42, align 1, !dbg !1918, !tbaa !882
  %44 = icmp eq i8 %43, 49, !dbg !1918
  br i1 %44, label %45, label %69, !dbg !1919

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1854, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8* undef, metadata !1859, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 56, metadata !1860, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 48, metadata !1861, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 51, metadata !1862, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 48, metadata !1863, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1920
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1922
  %47 = load i8, i8* %46, align 1, !dbg !1922, !tbaa !882
  %48 = icmp eq i8 %47, 56, !dbg !1922
  br i1 %48, label %49, label %69, !dbg !1923

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1873, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8* undef, metadata !1878, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 48, metadata !1879, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 51, metadata !1880, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 48, metadata !1881, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1924
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1926
  %51 = load i8, i8* %50, align 1, !dbg !1926, !tbaa !882
  %52 = icmp eq i8 %51, 48, !dbg !1926
  br i1 %52, label %53, label %69, !dbg !1927

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1891, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8* undef, metadata !1896, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 51, metadata !1897, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 48, metadata !1898, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !1928
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1930
  %55 = load i8, i8* %54, align 1, !dbg !1930, !tbaa !882
  %56 = icmp eq i8 %55, 51, !dbg !1930
  br i1 %56, label %57, label %69, !dbg !1931

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1932, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* undef, metadata !1937, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 48, metadata !1938, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !1941
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1945
  %59 = load i8, i8* %58, align 1, !dbg !1945, !tbaa !882
  %60 = icmp eq i8 %59, 48, !dbg !1945
  br i1 %60, label %61, label %69, !dbg !1947

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1948, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* undef, metadata !1953, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1955, metadata !DIExpression()), !dbg !1956
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1960
  %63 = load i8, i8* %62, align 1, !dbg !1960, !tbaa !882
  %64 = icmp eq i8 %63, 0, !dbg !1960
  br i1 %64, label %65, label %69, !dbg !1962

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1963, !tbaa !882
  %67 = icmp eq i8 %66, 96, !dbg !1964
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !1963
  br label %72, !dbg !1965

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1966
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !1967
  br label %72, !dbg !1968

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1788
  ret i8* %73, !dbg !1969
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1970 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1974 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1984, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %1, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* %0, metadata !1988, metadata !DIExpression()) #27, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %1, metadata !1993, metadata !DIExpression()) #27, !dbg !2001
  call void @llvm.dbg.value(metadata i64* null, metadata !1994, metadata !DIExpression()) #27, !dbg !2001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1995, metadata !DIExpression()) #27, !dbg !2001
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2003
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2003
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1996, metadata !DIExpression()) #27, !dbg !2001
  %6 = tail call i32* @__errno_location() #31, !dbg !2004
  %7 = load i32, i32* %6, align 4, !dbg !2004, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %7, metadata !1997, metadata !DIExpression()) #27, !dbg !2001
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2005
  %9 = load i32, i32* %8, align 4, !dbg !2005, !tbaa !1207
  %10 = or i32 %9, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %10, metadata !1998, metadata !DIExpression()) #27, !dbg !2001
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2007
  %12 = load i32, i32* %11, align 8, !dbg !2007, !tbaa !1156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2008
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2009
  %15 = load i8*, i8** %14, align 8, !dbg !2009, !tbaa !1229
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2010
  %17 = load i8*, i8** %16, align 8, !dbg !2010, !tbaa !1232
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2011
  %19 = add i64 %18, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %19, metadata !1999, metadata !DIExpression()) #27, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %19, metadata !2013, metadata !DIExpression()) #27, !dbg !2018
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2020
  call void @llvm.dbg.value(metadata i8* %20, metadata !2000, metadata !DIExpression()) #27, !dbg !2001
  %21 = load i32, i32* %11, align 8, !dbg !2021, !tbaa !1156
  %22 = load i8*, i8** %14, align 8, !dbg !2022, !tbaa !1229
  %23 = load i8*, i8** %16, align 8, !dbg !2023, !tbaa !1232
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2024
  store i32 %7, i32* %6, align 4, !dbg !2025, !tbaa !756
  ret i8* %20, !dbg !2026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1988, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %1, metadata !1993, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64* %2, metadata !1994, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1995, metadata !DIExpression()), !dbg !2027
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2028
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1996, metadata !DIExpression()), !dbg !2027
  %7 = tail call i32* @__errno_location() #31, !dbg !2029
  %8 = load i32, i32* %7, align 4, !dbg !2029, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %8, metadata !1997, metadata !DIExpression()), !dbg !2027
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2030
  %10 = load i32, i32* %9, align 4, !dbg !2030, !tbaa !1207
  %11 = icmp eq i64* %2, null, !dbg !2031
  %12 = zext i1 %11 to i32, !dbg !2031
  %13 = or i32 %10, %12, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %13, metadata !1998, metadata !DIExpression()), !dbg !2027
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2033
  %15 = load i32, i32* %14, align 8, !dbg !2033, !tbaa !1156
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2034
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2035
  %18 = load i8*, i8** %17, align 8, !dbg !2035, !tbaa !1229
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2036
  %20 = load i8*, i8** %19, align 8, !dbg !2036, !tbaa !1232
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2037
  %22 = add i64 %21, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %22, metadata !1999, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %22, metadata !2013, metadata !DIExpression()) #27, !dbg !2039
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2041
  call void @llvm.dbg.value(metadata i8* %23, metadata !2000, metadata !DIExpression()), !dbg !2027
  %24 = load i32, i32* %14, align 8, !dbg !2042, !tbaa !1156
  %25 = load i8*, i8** %17, align 8, !dbg !2043, !tbaa !1229
  %26 = load i8*, i8** %19, align 8, !dbg !2044, !tbaa !1232
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2045
  store i32 %8, i32* %7, align 4, !dbg !2046, !tbaa !756
  br i1 %11, label %29, label %28, !dbg !2047

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2048, !tbaa !838
  br label %29, !dbg !2050

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2052 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2056, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i32 1, metadata !2055, metadata !DIExpression()), !dbg !2057
  %2 = load i32, i32* @nslots, align 4, !dbg !2058, !tbaa !756
  %3 = icmp sgt i32 %2, 1, !dbg !2061
  br i1 %3, label %4, label %12, !dbg !2062

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2061
  br label %6, !dbg !2062

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2055, metadata !DIExpression()), !dbg !2057
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2063
  %9 = load i8*, i8** %8, align 8, !dbg !2063, !tbaa !2064
  tail call void @free(i8* %9) #27, !dbg !2066
  %10 = add nuw nsw i64 %7, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %10, metadata !2055, metadata !DIExpression()), !dbg !2057
  %11 = icmp eq i64 %10, %5, !dbg !2061
  br i1 %11, label %12, label %6, !dbg !2062, !llvm.loop !2068

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2070
  %14 = load i8*, i8** %13, align 8, !dbg !2070, !tbaa !2064
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2072
  br i1 %15, label %17, label %16, !dbg !2073

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2074
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2076, !tbaa !2077
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2078, !tbaa !2064
  br label %17, !dbg !2079

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2080
  br i1 %18, label %21, label %19, !dbg !2082

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2083
  tail call void @free(i8* %20) #27, !dbg !2085
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2086, !tbaa !614
  br label %21, !dbg !2087

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2088, !tbaa !756
  ret void, !dbg !2089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()), !dbg !2094
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2095
  ret i8* %3, !dbg !2096
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2101, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %1, metadata !2102, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %2, metadata !2103, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2104, metadata !DIExpression()), !dbg !2116
  %5 = tail call i32* @__errno_location() #31, !dbg !2117
  %6 = load i32, i32* %5, align 4, !dbg !2117, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %6, metadata !2105, metadata !DIExpression()), !dbg !2116
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2118, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2106, metadata !DIExpression()), !dbg !2116
  %8 = icmp slt i32 %0, 0, !dbg !2119
  br i1 %8, label %9, label %10, !dbg !2121

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2122
  unreachable, !dbg !2122

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2123, !tbaa !756
  %12 = icmp sgt i32 %11, %0, !dbg !2124
  br i1 %12, label %34, label %13, !dbg !2125

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2126
  call void @llvm.dbg.value(metadata i1 %14, metadata !2107, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2127
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2110, metadata !DIExpression()), !dbg !2127
  %15 = icmp eq i32 %0, 2147483647, !dbg !2128
  br i1 %15, label %16, label %17, !dbg !2130

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2131
  unreachable, !dbg !2131

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2132
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2132
  %20 = add nuw nsw i32 %0, 1, !dbg !2133
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2134
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2135
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2135
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2106, metadata !DIExpression()), !dbg !2116
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2136, !tbaa !614
  br i1 %14, label %25, label %26, !dbg !2137

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2138, !tbaa.struct !2140
  br label %26, !dbg !2141

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2142, !tbaa !756
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2143
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2144
  %31 = sub nsw i32 %20, %27, !dbg !2145
  %32 = sext i32 %31 to i64, !dbg !2146
  %33 = shl nsw i64 %32, 4, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %30, metadata !1540, metadata !DIExpression()) #27, !dbg !2148
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()) #27, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %33, metadata !1547, metadata !DIExpression()) #27, !dbg !2148
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2150
  store i32 %20, i32* @nslots, align 4, !dbg !2151, !tbaa !756
  br label %34, !dbg !2152

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2116
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2106, metadata !DIExpression()), !dbg !2116
  %36 = zext i32 %0 to i64, !dbg !2153
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2154
  %38 = load i64, i64* %37, align 8, !dbg !2154, !tbaa !2077
  call void @llvm.dbg.value(metadata i64 %38, metadata !2111, metadata !DIExpression()), !dbg !2155
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2156
  %40 = load i8*, i8** %39, align 8, !dbg !2156, !tbaa !2064
  call void @llvm.dbg.value(metadata i8* %40, metadata !2113, metadata !DIExpression()), !dbg !2155
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2157
  %42 = load i32, i32* %41, align 4, !dbg !2157, !tbaa !1207
  %43 = or i32 %42, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %43, metadata !2114, metadata !DIExpression()), !dbg !2155
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2159
  %45 = load i32, i32* %44, align 8, !dbg !2159, !tbaa !1156
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2160
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2161
  %48 = load i8*, i8** %47, align 8, !dbg !2161, !tbaa !1229
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2162
  %50 = load i8*, i8** %49, align 8, !dbg !2162, !tbaa !1232
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2163
  call void @llvm.dbg.value(metadata i64 %51, metadata !2115, metadata !DIExpression()), !dbg !2155
  %52 = icmp ugt i64 %38, %51, !dbg !2164
  br i1 %52, label %63, label %53, !dbg !2166

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %54, metadata !2111, metadata !DIExpression()), !dbg !2155
  store i64 %54, i64* %37, align 8, !dbg !2169, !tbaa !2077
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2170
  br i1 %55, label %57, label %56, !dbg !2172

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2173
  br label %57, !dbg !2173

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2013, metadata !DIExpression()) #27, !dbg !2174
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %58, metadata !2113, metadata !DIExpression()), !dbg !2155
  store i8* %58, i8** %39, align 8, !dbg !2177, !tbaa !2064
  %59 = load i32, i32* %44, align 8, !dbg !2178, !tbaa !1156
  %60 = load i8*, i8** %47, align 8, !dbg !2179, !tbaa !1229
  %61 = load i8*, i8** %49, align 8, !dbg !2180, !tbaa !1232
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2181
  br label %63, !dbg !2182

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2155
  call void @llvm.dbg.value(metadata i8* %64, metadata !2113, metadata !DIExpression()), !dbg !2155
  store i32 %6, i32* %5, align 4, !dbg !2183, !tbaa !756
  ret i8* %64, !dbg !2184
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2189, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %1, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %2, metadata !2191, metadata !DIExpression()), !dbg !2192
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2193
  ret i8* %4, !dbg !2194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 0, metadata !2092, metadata !DIExpression()) #27, !dbg !2199
  call void @llvm.dbg.value(metadata i8* %0, metadata !2093, metadata !DIExpression()) #27, !dbg !2199
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2201
  ret i8* %2, !dbg !2202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()) #27, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()) #27, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2191, metadata !DIExpression()) #27, !dbg !2210
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2212
  ret i8* %3, !dbg !2213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2214 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* %2, metadata !2220, metadata !DIExpression()), !dbg !2222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2221, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225), !dbg !2228
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()) #27, !dbg !2235
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2234, metadata !DIExpression()) #27, !dbg !2237
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2237, !alias.scope !2225
  %6 = icmp eq i32 %1, 10, !dbg !2238
  br i1 %6, label %7, label %8, !dbg !2240

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2241, !noalias !2225
  unreachable, !dbg !2241

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2242
  store i32 %1, i32* %9, align 8, !dbg !2243, !tbaa !1156, !alias.scope !2225
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2245
  ret i8* %10, !dbg !2246
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2247 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2251, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %1, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %2, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i64 %3, metadata !2254, metadata !DIExpression()), !dbg !2256
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2255, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()) #27, !dbg !2263
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2234, metadata !DIExpression()) #27, !dbg !2265
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2265, !alias.scope !2259
  %7 = icmp eq i32 %1, 10, !dbg !2266
  br i1 %7, label %8, label %9, !dbg !2267

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2268, !noalias !2259
  unreachable, !dbg !2268

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2269
  store i32 %1, i32* %10, align 8, !dbg !2270, !tbaa !1156, !alias.scope !2259
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2272
  ret i8* %11, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2274 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %1, metadata !2279, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 0, metadata !2218, metadata !DIExpression()) #27, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()) #27, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %1, metadata !2220, metadata !DIExpression()) #27, !dbg !2281
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2283
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2221, metadata !DIExpression()) #27, !dbg !2284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285) #27, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %0, metadata !2229, metadata !DIExpression()) #27, !dbg !2289
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2234, metadata !DIExpression()) #27, !dbg !2291
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2291, !alias.scope !2285
  %5 = icmp eq i32 %0, 10, !dbg !2292
  br i1 %5, label %6, label %7, !dbg !2293

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2294, !noalias !2285
  unreachable, !dbg !2294

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2295
  store i32 %0, i32* %8, align 8, !dbg !2296, !tbaa !1156, !alias.scope !2285
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2298
  ret i8* %9, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2300 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %1, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %2, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()) #27, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()) #27, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %1, metadata !2253, metadata !DIExpression()) #27, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %2, metadata !2254, metadata !DIExpression()) #27, !dbg !2308
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2255, metadata !DIExpression()) #27, !dbg !2311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312) #27, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %0, metadata !2229, metadata !DIExpression()) #27, !dbg !2316
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2234, metadata !DIExpression()) #27, !dbg !2318
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2318, !alias.scope !2312
  %6 = icmp eq i32 %0, 10, !dbg !2319
  br i1 %6, label %7, label %8, !dbg !2320

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2321, !noalias !2312
  unreachable, !dbg !2321

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2322
  store i32 %0, i32* %9, align 8, !dbg !2323, !tbaa !1156, !alias.scope !2312
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2325
  ret i8* %10, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2327 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %1, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 %2, metadata !2333, metadata !DIExpression()), !dbg !2335
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2334, metadata !DIExpression()), !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2338, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1174, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %2, metadata !1175, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %2, metadata !1177, metadata !DIExpression()), !dbg !2340
  %6 = lshr i8 %2, 5, !dbg !2342
  %7 = zext i8 %6 to i64, !dbg !2342
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2343
  call void @llvm.dbg.value(metadata i32* %8, metadata !1178, metadata !DIExpression()), !dbg !2340
  %9 = and i8 %2, 31, !dbg !2344
  %10 = zext i8 %9 to i32, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %10, metadata !1180, metadata !DIExpression()), !dbg !2340
  %11 = load i32, i32* %8, align 4, !dbg !2345, !tbaa !756
  %12 = lshr i32 %11, %10, !dbg !2346
  %13 = and i32 %12, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %13, metadata !1181, metadata !DIExpression()), !dbg !2340
  %14 = xor i32 %13, 1, !dbg !2348
  %15 = shl i32 %14, %10, !dbg !2349
  %16 = xor i32 %15, %11, !dbg !2350
  store i32 %16, i32* %8, align 4, !dbg !2350, !tbaa !756
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2352
  ret i8* %17, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2354 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 %1, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()) #27, !dbg !2361
  call void @llvm.dbg.value(metadata i64 -1, metadata !2332, metadata !DIExpression()) #27, !dbg !2361
  call void @llvm.dbg.value(metadata i8 %1, metadata !2333, metadata !DIExpression()) #27, !dbg !2361
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2363
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2334, metadata !DIExpression()) #27, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2365, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1174, metadata !DIExpression()) #27, !dbg !2366
  call void @llvm.dbg.value(metadata i8 %1, metadata !1175, metadata !DIExpression()) #27, !dbg !2366
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #27, !dbg !2366
  call void @llvm.dbg.value(metadata i8 %1, metadata !1177, metadata !DIExpression()) #27, !dbg !2366
  %5 = lshr i8 %1, 5, !dbg !2368
  %6 = zext i8 %5 to i64, !dbg !2368
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2369
  call void @llvm.dbg.value(metadata i32* %7, metadata !1178, metadata !DIExpression()) #27, !dbg !2366
  %8 = and i8 %1, 31, !dbg !2370
  %9 = zext i8 %8 to i32, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %9, metadata !1180, metadata !DIExpression()) #27, !dbg !2366
  %10 = load i32, i32* %7, align 4, !dbg !2371, !tbaa !756
  %11 = lshr i32 %10, %9, !dbg !2372
  %12 = and i32 %11, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %12, metadata !1181, metadata !DIExpression()) #27, !dbg !2366
  %13 = xor i32 %12, 1, !dbg !2374
  %14 = shl i32 %13, %9, !dbg !2375
  %15 = xor i32 %14, %10, !dbg !2376
  store i32 %15, i32* %7, align 4, !dbg !2376, !tbaa !756
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2378
  ret i8* %16, !dbg !2379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2380 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()) #27, !dbg !2384
  call void @llvm.dbg.value(metadata i8 58, metadata !2359, metadata !DIExpression()) #27, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()) #27, !dbg !2386
  call void @llvm.dbg.value(metadata i64 -1, metadata !2332, metadata !DIExpression()) #27, !dbg !2386
  call void @llvm.dbg.value(metadata i8 58, metadata !2333, metadata !DIExpression()) #27, !dbg !2386
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2388
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2334, metadata !DIExpression()) #27, !dbg !2389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2390, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1174, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()) #27, !dbg !2391
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2393
  call void @llvm.dbg.value(metadata i32* %4, metadata !1178, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()) #27, !dbg !2391
  %5 = load i32, i32* %4, align 4, !dbg !2394, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %5, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2391
  %6 = or i32 %5, 67108864, !dbg !2395
  store i32 %6, i32* %4, align 4, !dbg !2395, !tbaa !756
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2397
  ret i8* %7, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2399 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %1, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()) #27, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %1, metadata !2332, metadata !DIExpression()) #27, !dbg !2404
  call void @llvm.dbg.value(metadata i8 58, metadata !2333, metadata !DIExpression()) #27, !dbg !2404
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2334, metadata !DIExpression()) #27, !dbg !2407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2408, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1174, metadata !DIExpression()) #27, !dbg !2409
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()) #27, !dbg !2409
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #27, !dbg !2409
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()) #27, !dbg !2409
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2411
  call void @llvm.dbg.value(metadata i32* %5, metadata !1178, metadata !DIExpression()) #27, !dbg !2409
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()) #27, !dbg !2409
  %6 = load i32, i32* %5, align 4, !dbg !2412, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %6, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2409
  %7 = or i32 %6, 67108864, !dbg !2413
  store i32 %7, i32* %5, align 4, !dbg !2413, !tbaa !756
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2414
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2415
  ret i8* %8, !dbg !2416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2417 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2234, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %1, metadata !2420, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %2, metadata !2421, metadata !DIExpression()), !dbg !2425
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2426
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2426
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2422, metadata !DIExpression()), !dbg !2427
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2428
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()) #27, !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !2234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2432
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2423, !alias.scope !2429
  %8 = icmp eq i32 %1, 10, !dbg !2433
  br i1 %8, label %9, label %10, !dbg !2434

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2435, !noalias !2429
  unreachable, !dbg !2435

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2432
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2428
  store i32 %1, i32* %11, align 8, !dbg !2428, !tbaa.struct !2339
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2428
  %13 = bitcast i32* %12 to i8*, !dbg !2428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2428, !tbaa.struct !2436
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1174, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()), !dbg !2437
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2439
  call void @llvm.dbg.value(metadata i32* %14, metadata !1178, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()), !dbg !2437
  %15 = load i32, i32* %14, align 4, !dbg !2440, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %15, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2437
  %16 = or i32 %15, 67108864, !dbg !2441
  store i32 %16, i32* %14, align 4, !dbg !2441, !tbaa !756
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2443
  ret i8* %17, !dbg !2444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2445 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %1, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %3, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()) #27, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %1, metadata !2459, metadata !DIExpression()) #27, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %2, metadata !2460, metadata !DIExpression()) #27, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %3, metadata !2461, metadata !DIExpression()) #27, !dbg !2464
  call void @llvm.dbg.value(metadata i64 -1, metadata !2462, metadata !DIExpression()) #27, !dbg !2464
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2466
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2463, metadata !DIExpression()) #27, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2468, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #27, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()) #27, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()) #27, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #27, !dbg !2469
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2471
  store i32 10, i32* %7, align 8, !dbg !2472, !tbaa !1156
  %8 = icmp ne i8* %1, null, !dbg !2473
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2474
  br i1 %10, label %12, label %11, !dbg !2474

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2475
  unreachable, !dbg !2475

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2476
  store i8* %1, i8** %13, align 8, !dbg !2477, !tbaa !1229
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2478
  store i8* %2, i8** %14, align 8, !dbg !2479, !tbaa !1232
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2481
  ret i8* %15, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2455 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %1, metadata !2459, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %2, metadata !2460, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %3, metadata !2461, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %4, metadata !2462, metadata !DIExpression()), !dbg !2483
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2484
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2484
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2463, metadata !DIExpression()), !dbg !2485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2486, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1214, metadata !DIExpression()) #27, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()) #27, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()) #27, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1214, metadata !DIExpression()) #27, !dbg !2487
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2489
  store i32 10, i32* %8, align 8, !dbg !2490, !tbaa !1156
  %9 = icmp ne i8* %1, null, !dbg !2491
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2492
  br i1 %11, label %13, label %12, !dbg !2492

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !2493
  unreachable, !dbg !2493

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2494
  store i8* %1, i8** %14, align 8, !dbg !2495, !tbaa !1229
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2496
  store i8* %2, i8** %15, align 8, !dbg !2497, !tbaa !1232
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2499
  ret i8* %16, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2501 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()) #27, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %0, metadata !2450, metadata !DIExpression()) #27, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %1, metadata !2451, metadata !DIExpression()) #27, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %2, metadata !2452, metadata !DIExpression()) #27, !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()) #27, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %0, metadata !2459, metadata !DIExpression()) #27, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2460, metadata !DIExpression()) #27, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %2, metadata !2461, metadata !DIExpression()) #27, !dbg !2511
  call void @llvm.dbg.value(metadata i64 -1, metadata !2462, metadata !DIExpression()) #27, !dbg !2511
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2513
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2463, metadata !DIExpression()) #27, !dbg !2514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2515, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1214, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1214, metadata !DIExpression()) #27, !dbg !2516
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2518
  store i32 10, i32* %6, align 8, !dbg !2519, !tbaa !1156
  %7 = icmp ne i8* %0, null, !dbg !2520
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2521
  br i1 %9, label %11, label %10, !dbg !2521

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2522
  unreachable, !dbg !2522

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2523
  store i8* %0, i8** %12, align 8, !dbg !2524, !tbaa !1229
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2525
  store i8* %1, i8** %13, align 8, !dbg !2526, !tbaa !1232
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2528
  ret i8* %14, !dbg !2529
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2530 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %3, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %0, metadata !2459, metadata !DIExpression()) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2460, metadata !DIExpression()) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %2, metadata !2461, metadata !DIExpression()) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %3, metadata !2462, metadata !DIExpression()) #27, !dbg !2539
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2463, metadata !DIExpression()) #27, !dbg !2542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2543, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #27, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()) #27, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #27, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #27, !dbg !2544
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2546
  store i32 10, i32* %7, align 8, !dbg !2547, !tbaa !1156
  %8 = icmp ne i8* %0, null, !dbg !2548
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2549
  br i1 %10, label %12, label %11, !dbg !2549

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2550
  unreachable, !dbg !2550

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2551
  store i8* %0, i8** %13, align 8, !dbg !2552, !tbaa !1229
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2553
  store i8* %1, i8** %14, align 8, !dbg !2554, !tbaa !1232
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2556
  ret i8* %15, !dbg !2557
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2558 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %2, metadata !2564, metadata !DIExpression()), !dbg !2565
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2566
  ret i8* %4, !dbg !2567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %1, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()) #27, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()) #27, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %1, metadata !2564, metadata !DIExpression()) #27, !dbg !2575
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2577
  ret i8* %3, !dbg !2578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()) #27, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2563, metadata !DIExpression()) #27, !dbg !2586
  call void @llvm.dbg.value(metadata i64 -1, metadata !2564, metadata !DIExpression()) #27, !dbg !2586
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2588
  ret i8* %3, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2583, metadata !DIExpression()) #27, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()) #27, !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()) #27, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()) #27, !dbg !2598
  call void @llvm.dbg.value(metadata i64 -1, metadata !2564, metadata !DIExpression()) #27, !dbg !2598
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2600
  ret i8* %2, !dbg !2601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2602 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2642, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2644, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %3, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8** %4, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %5, metadata !2647, metadata !DIExpression()), !dbg !2648
  %7 = icmp eq i8* %1, null, !dbg !2649
  br i1 %7, label %10, label %8, !dbg !2651

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !2652
  br label %12, !dbg !2652

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !2653
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #27, !dbg !2654
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !2654
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2655
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #27, !dbg !2656
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.80, i64 0, i64 0)) #27, !dbg !2656
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2657
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
  ], !dbg !2658

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #27, !dbg !2659
  %21 = load i8*, i8** %4, align 8, !dbg !2659, !tbaa !614
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !2659
  br label %147, !dbg !2661

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #27, !dbg !2662
  %25 = load i8*, i8** %4, align 8, !dbg !2662, !tbaa !614
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2662
  %27 = load i8*, i8** %26, align 8, !dbg !2662, !tbaa !614
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !2662
  br label %147, !dbg !2663

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #27, !dbg !2664
  %31 = load i8*, i8** %4, align 8, !dbg !2664, !tbaa !614
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2664
  %33 = load i8*, i8** %32, align 8, !dbg !2664, !tbaa !614
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2664
  %35 = load i8*, i8** %34, align 8, !dbg !2664, !tbaa !614
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !2664
  br label %147, !dbg !2665

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #27, !dbg !2666
  %39 = load i8*, i8** %4, align 8, !dbg !2666, !tbaa !614
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2666
  %41 = load i8*, i8** %40, align 8, !dbg !2666, !tbaa !614
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2666
  %43 = load i8*, i8** %42, align 8, !dbg !2666, !tbaa !614
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2666
  %45 = load i8*, i8** %44, align 8, !dbg !2666, !tbaa !614
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !2666
  br label %147, !dbg !2667

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #27, !dbg !2668
  %49 = load i8*, i8** %4, align 8, !dbg !2668, !tbaa !614
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2668
  %51 = load i8*, i8** %50, align 8, !dbg !2668, !tbaa !614
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2668
  %53 = load i8*, i8** %52, align 8, !dbg !2668, !tbaa !614
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2668
  %55 = load i8*, i8** %54, align 8, !dbg !2668, !tbaa !614
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2668
  %57 = load i8*, i8** %56, align 8, !dbg !2668, !tbaa !614
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !2668
  br label %147, !dbg !2669

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #27, !dbg !2670
  %61 = load i8*, i8** %4, align 8, !dbg !2670, !tbaa !614
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2670
  %63 = load i8*, i8** %62, align 8, !dbg !2670, !tbaa !614
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2670
  %65 = load i8*, i8** %64, align 8, !dbg !2670, !tbaa !614
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2670
  %67 = load i8*, i8** %66, align 8, !dbg !2670, !tbaa !614
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2670
  %69 = load i8*, i8** %68, align 8, !dbg !2670, !tbaa !614
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2670
  %71 = load i8*, i8** %70, align 8, !dbg !2670, !tbaa !614
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !2670
  br label %147, !dbg !2671

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #27, !dbg !2672
  %75 = load i8*, i8** %4, align 8, !dbg !2672, !tbaa !614
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2672
  %77 = load i8*, i8** %76, align 8, !dbg !2672, !tbaa !614
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2672
  %79 = load i8*, i8** %78, align 8, !dbg !2672, !tbaa !614
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2672
  %81 = load i8*, i8** %80, align 8, !dbg !2672, !tbaa !614
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2672
  %83 = load i8*, i8** %82, align 8, !dbg !2672, !tbaa !614
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2672
  %85 = load i8*, i8** %84, align 8, !dbg !2672, !tbaa !614
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2672
  %87 = load i8*, i8** %86, align 8, !dbg !2672, !tbaa !614
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !2672
  br label %147, !dbg !2673

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #27, !dbg !2674
  %91 = load i8*, i8** %4, align 8, !dbg !2674, !tbaa !614
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2674
  %93 = load i8*, i8** %92, align 8, !dbg !2674, !tbaa !614
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2674
  %95 = load i8*, i8** %94, align 8, !dbg !2674, !tbaa !614
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2674
  %97 = load i8*, i8** %96, align 8, !dbg !2674, !tbaa !614
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2674
  %99 = load i8*, i8** %98, align 8, !dbg !2674, !tbaa !614
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2674
  %101 = load i8*, i8** %100, align 8, !dbg !2674, !tbaa !614
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2674
  %103 = load i8*, i8** %102, align 8, !dbg !2674, !tbaa !614
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2674
  %105 = load i8*, i8** %104, align 8, !dbg !2674, !tbaa !614
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !2674
  br label %147, !dbg !2675

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #27, !dbg !2676
  %109 = load i8*, i8** %4, align 8, !dbg !2676, !tbaa !614
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2676
  %111 = load i8*, i8** %110, align 8, !dbg !2676, !tbaa !614
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2676
  %113 = load i8*, i8** %112, align 8, !dbg !2676, !tbaa !614
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2676
  %115 = load i8*, i8** %114, align 8, !dbg !2676, !tbaa !614
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2676
  %117 = load i8*, i8** %116, align 8, !dbg !2676, !tbaa !614
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2676
  %119 = load i8*, i8** %118, align 8, !dbg !2676, !tbaa !614
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2676
  %121 = load i8*, i8** %120, align 8, !dbg !2676, !tbaa !614
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2676
  %123 = load i8*, i8** %122, align 8, !dbg !2676, !tbaa !614
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2676
  %125 = load i8*, i8** %124, align 8, !dbg !2676, !tbaa !614
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !2676
  br label %147, !dbg !2677

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.90, i64 0, i64 0), i32 5) #27, !dbg !2678
  %129 = load i8*, i8** %4, align 8, !dbg !2678, !tbaa !614
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2678
  %131 = load i8*, i8** %130, align 8, !dbg !2678, !tbaa !614
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2678
  %133 = load i8*, i8** %132, align 8, !dbg !2678, !tbaa !614
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2678
  %135 = load i8*, i8** %134, align 8, !dbg !2678, !tbaa !614
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2678
  %137 = load i8*, i8** %136, align 8, !dbg !2678, !tbaa !614
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2678
  %139 = load i8*, i8** %138, align 8, !dbg !2678, !tbaa !614
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2678
  %141 = load i8*, i8** %140, align 8, !dbg !2678, !tbaa !614
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2678
  %143 = load i8*, i8** %142, align 8, !dbg !2678, !tbaa !614
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2678
  %145 = load i8*, i8** %144, align 8, !dbg !2678, !tbaa !614
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !2678
  br label %147, !dbg !2679

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2681 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %3, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8** %4, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 0, metadata !2690, metadata !DIExpression()), !dbg !2691
  br label %6, !dbg !2692

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2694
  call void @llvm.dbg.value(metadata i64 %7, metadata !2690, metadata !DIExpression()), !dbg !2691
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2695
  %9 = load i8*, i8** %8, align 8, !dbg !2695, !tbaa !614
  %10 = icmp eq i8* %9, null, !dbg !2697
  %11 = add i64 %7, 1, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %11, metadata !2690, metadata !DIExpression()), !dbg !2691
  br i1 %10, label %12, label %6, !dbg !2697, !llvm.loop !2699

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2701
  ret void, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2703 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2714, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %3, metadata !2717, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2718, metadata !DIExpression()), !dbg !2722
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2723
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !2723
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2720, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2722
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2722
  %11 = load i32, i32* %8, align 8, !dbg !2725
  %12 = icmp ult i32 %11, 41, !dbg !2725
  br i1 %12, label %13, label %18, !dbg !2725

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2725
  %15 = zext i32 %11 to i64, !dbg !2725
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2725
  %17 = add nuw nsw i32 %11, 8, !dbg !2725
  store i32 %17, i32* %8, align 8, !dbg !2725
  br label %21, !dbg !2725

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2725
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2725
  store i8* %20, i8** %9, align 8, !dbg !2725
  br label %21, !dbg !2725

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2725
  %25 = load i8*, i8** %24, align 8, !dbg !2725
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2728
  store i8* %25, i8** %26, align 16, !dbg !2729, !tbaa !614
  %27 = icmp eq i8* %25, null, !dbg !2730
  br i1 %27, label %30, label %28, !dbg !2731

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 1, metadata !2719, metadata !DIExpression()), !dbg !2722
  %29 = icmp ult i32 %22, 41, !dbg !2725
  br i1 %29, label %35, label %32, !dbg !2725

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2732
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2733
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !2734
  ret void, !dbg !2734

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2725
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2725
  store i8* %34, i8** %9, align 8, !dbg !2725
  br label %40, !dbg !2725

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2725
  %37 = zext i32 %22 to i64, !dbg !2725
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2725
  %39 = add nuw nsw i32 %22, 8, !dbg !2725
  store i32 %39, i32* %8, align 8, !dbg !2725
  br label %40, !dbg !2725

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2725
  %44 = load i8*, i8** %43, align 8, !dbg !2725
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2728
  store i8* %44, i8** %45, align 8, !dbg !2729, !tbaa !614
  %46 = icmp eq i8* %44, null, !dbg !2730
  br i1 %46, label %30, label %47, !dbg !2731

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 2, metadata !2719, metadata !DIExpression()), !dbg !2722
  %48 = icmp ult i32 %41, 41, !dbg !2725
  br i1 %48, label %52, label %49, !dbg !2725

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2725
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2725
  store i8* %51, i8** %9, align 8, !dbg !2725
  br label %57, !dbg !2725

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2725
  %54 = zext i32 %41 to i64, !dbg !2725
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2725
  %56 = add nuw nsw i32 %41, 8, !dbg !2725
  store i32 %56, i32* %8, align 8, !dbg !2725
  br label %57, !dbg !2725

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2725
  %61 = load i8*, i8** %60, align 8, !dbg !2725
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2728
  store i8* %61, i8** %62, align 16, !dbg !2729, !tbaa !614
  %63 = icmp eq i8* %61, null, !dbg !2730
  br i1 %63, label %30, label %64, !dbg !2731

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 3, metadata !2719, metadata !DIExpression()), !dbg !2722
  %65 = icmp ult i32 %58, 41, !dbg !2725
  br i1 %65, label %69, label %66, !dbg !2725

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2725
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2725
  store i8* %68, i8** %9, align 8, !dbg !2725
  br label %74, !dbg !2725

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2725
  %71 = zext i32 %58 to i64, !dbg !2725
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2725
  %73 = add nuw nsw i32 %58, 8, !dbg !2725
  store i32 %73, i32* %8, align 8, !dbg !2725
  br label %74, !dbg !2725

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2725
  %78 = load i8*, i8** %77, align 8, !dbg !2725
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2728
  store i8* %78, i8** %79, align 8, !dbg !2729, !tbaa !614
  %80 = icmp eq i8* %78, null, !dbg !2730
  br i1 %80, label %30, label %81, !dbg !2731

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 4, metadata !2719, metadata !DIExpression()), !dbg !2722
  %82 = icmp ult i32 %75, 41, !dbg !2725
  br i1 %82, label %86, label %83, !dbg !2725

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2725
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2725
  store i8* %85, i8** %9, align 8, !dbg !2725
  br label %91, !dbg !2725

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2725
  %88 = zext i32 %75 to i64, !dbg !2725
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2725
  %90 = add nuw nsw i32 %75, 8, !dbg !2725
  store i32 %90, i32* %8, align 8, !dbg !2725
  br label %91, !dbg !2725

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2725
  %95 = load i8*, i8** %94, align 8, !dbg !2725
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2728
  store i8* %95, i8** %96, align 16, !dbg !2729, !tbaa !614
  %97 = icmp eq i8* %95, null, !dbg !2730
  br i1 %97, label %30, label %98, !dbg !2731

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 5, metadata !2719, metadata !DIExpression()), !dbg !2722
  %99 = icmp ult i32 %92, 41, !dbg !2725
  br i1 %99, label %103, label %100, !dbg !2725

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2725
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2725
  store i8* %102, i8** %9, align 8, !dbg !2725
  br label %108, !dbg !2725

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2725
  %105 = zext i32 %92 to i64, !dbg !2725
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2725
  %107 = add nuw nsw i32 %92, 8, !dbg !2725
  store i32 %107, i32* %8, align 8, !dbg !2725
  br label %108, !dbg !2725

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2725
  %111 = load i8*, i8** %110, align 8, !dbg !2725
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2728
  store i8* %111, i8** %112, align 8, !dbg !2729, !tbaa !614
  %113 = icmp eq i8* %111, null, !dbg !2730
  br i1 %113, label %30, label %114, !dbg !2731

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2719, metadata !DIExpression()), !dbg !2722
  %115 = load i8*, i8** %9, align 8, !dbg !2725
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2725
  store i8* %116, i8** %9, align 8, !dbg !2725
  %117 = bitcast i8* %115 to i8**, !dbg !2725
  %118 = load i8*, i8** %117, align 8, !dbg !2725
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2728
  store i8* %118, i8** %119, align 16, !dbg !2729, !tbaa !614
  %120 = icmp eq i8* %118, null, !dbg !2730
  br i1 %120, label %30, label %121, !dbg !2731

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2719, metadata !DIExpression()), !dbg !2722
  %122 = load i8*, i8** %9, align 8, !dbg !2725
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2725
  store i8* %123, i8** %9, align 8, !dbg !2725
  %124 = bitcast i8* %122 to i8**, !dbg !2725
  %125 = load i8*, i8** %124, align 8, !dbg !2725
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2728
  store i8* %125, i8** %126, align 8, !dbg !2729, !tbaa !614
  %127 = icmp eq i8* %125, null, !dbg !2730
  br i1 %127, label %30, label %128, !dbg !2731

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2719, metadata !DIExpression()), !dbg !2722
  %129 = load i8*, i8** %9, align 8, !dbg !2725
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2725
  store i8* %130, i8** %9, align 8, !dbg !2725
  %131 = bitcast i8* %129 to i8**, !dbg !2725
  %132 = load i8*, i8** %131, align 8, !dbg !2725
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2728
  store i8* %132, i8** %133, align 16, !dbg !2729, !tbaa !614
  %134 = icmp eq i8* %132, null, !dbg !2730
  br i1 %134, label %30, label %135, !dbg !2731

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2719, metadata !DIExpression()), !dbg !2722
  %136 = load i8*, i8** %9, align 8, !dbg !2725
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2725
  store i8* %137, i8** %9, align 8, !dbg !2725
  %138 = bitcast i8* %136 to i8**, !dbg !2725
  %139 = load i8*, i8** %138, align 8, !dbg !2725
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2728
  store i8* %139, i8** %140, align 8, !dbg !2729, !tbaa !614
  %141 = icmp eq i8* %139, null, !dbg !2730
  %142 = select i1 %141, i64 9, i64 10, !dbg !2731
  br label %30, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2735 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2739, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2740, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2741, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %3, metadata !2742, metadata !DIExpression()), !dbg !2748
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !2749
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2743, metadata !DIExpression()), !dbg !2750
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2751
  call void @llvm.va_start(i8* nonnull %6), !dbg !2751
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2752
  call void @llvm.va_end(i8* nonnull %6), !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !2754
  ret void, !dbg !2754
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2755 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2756, !tbaa !614
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2756
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #27, !dbg !2757
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.94, i64 0, i64 0)) #27, !dbg !2757
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.95, i64 0, i64 0), i32 5) #27, !dbg !2758
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.96, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.97, i64 0, i64 0)) #27, !dbg !2758
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.98, i64 0, i64 0), i32 5) #27, !dbg !2759
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.99, i64 0, i64 0)) #27, !dbg !2759
  ret void, !dbg !2760
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2761 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %1, metadata !2764, metadata !DIExpression()), !dbg !2765
  %3 = udiv i64 9223372036854775807, %1, !dbg !2766
  %4 = icmp ult i64 %3, %0, !dbg !2766
  br i1 %4, label %5, label %6, !dbg !2768

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !2769
  unreachable, !dbg !2769

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %7, metadata !2771, metadata !DIExpression()) #27, !dbg !2777
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %8, metadata !2776, metadata !DIExpression()) #27, !dbg !2777
  %9 = icmp eq i8* %8, null, !dbg !2780
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2782
  br i1 %11, label %12, label %13, !dbg !2782

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !2783
  unreachable, !dbg !2783

13:                                               ; preds = %6
  ret i8* %8, !dbg !2784
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2772 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2771, metadata !DIExpression()), !dbg !2785
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2785
  %3 = icmp eq i8* %2, null, !dbg !2787
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2788
  br i1 %5, label %6, label %7, !dbg !2788

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !2789
  unreachable, !dbg !2789

7:                                                ; preds = %1
  ret i8* %2, !dbg !2790
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !2791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2795, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 %1, metadata !2796, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()), !dbg !2798
  %4 = udiv i64 9223372036854775807, %2, !dbg !2799
  %5 = icmp ult i64 %4, %1, !dbg !2799
  br i1 %5, label %6, label %7, !dbg !2801

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !2802
  unreachable, !dbg !2802

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()) #27, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %8, metadata !2809, metadata !DIExpression()) #27, !dbg !2810
  %9 = icmp eq i64 %8, 0, !dbg !2812
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2814
  br i1 %11, label %12, label %13, !dbg !2814

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !2815
  br label %19, !dbg !2817

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %14, metadata !2804, metadata !DIExpression()) #27, !dbg !2810
  %15 = icmp eq i8* %14, null, !dbg !2819
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2821
  br i1 %17, label %18, label %19, !dbg !2821

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2822
  unreachable, !dbg !2822

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2810
  ret i8* %20, !dbg !2823
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2824
  %3 = icmp eq i64 %1, 0, !dbg !2825
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2826
  br i1 %5, label %6, label %7, !dbg !2826

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !2827
  br label %13, !dbg !2828

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %8, metadata !2804, metadata !DIExpression()), !dbg !2824
  %9 = icmp eq i8* %8, null, !dbg !2830
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2831
  br i1 %11, label %12, label %13, !dbg !2831

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !2832
  unreachable, !dbg !2832

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2824
  ret i8* %14, !dbg !2833
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %2, metadata !173, metadata !DIExpression()), !dbg !2834
  %4 = load i64, i64* %1, align 8, !dbg !2835, !tbaa !838
  call void @llvm.dbg.value(metadata i64 %4, metadata !174, metadata !DIExpression()), !dbg !2834
  %5 = icmp eq i8* %0, null, !dbg !2836
  br i1 %5, label %6, label %20, !dbg !2838

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2839
  br i1 %7, label %8, label %13, !dbg !2842

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %9, metadata !174, metadata !DIExpression()), !dbg !2834
  %10 = icmp ugt i64 %2, 128, !dbg !2845
  %11 = zext i1 %10 to i64, !dbg !2845
  %12 = add nuw nsw i64 %9, %11, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %12, metadata !174, metadata !DIExpression()), !dbg !2834
  br label %13, !dbg !2847

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2834
  call void @llvm.dbg.value(metadata i64 %14, metadata !174, metadata !DIExpression()), !dbg !2834
  %15 = udiv i64 9223372036854775807, %2, !dbg !2848
  %16 = icmp ult i64 %15, %14, !dbg !2848
  br i1 %16, label %19, label %17, !dbg !2850

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !174, metadata !DIExpression()), !dbg !2834
  store i64 %14, i64* %1, align 8, !dbg !2851, !tbaa !838
  %18 = mul i64 %14, %2, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()) #27, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %28, metadata !2809, metadata !DIExpression()) #27, !dbg !2853
  br label %31, !dbg !2855

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2856
  unreachable, !dbg !2856

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2857
  %22 = icmp ugt i64 %21, %4, !dbg !2860
  br i1 %22, label %24, label %23, !dbg !2861

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !2862
  unreachable, !dbg !2862

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2863
  %26 = add nuw i64 %4, 1, !dbg !2864
  %27 = add i64 %26, %25, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %27, metadata !174, metadata !DIExpression()), !dbg !2834
  store i64 %27, i64* %1, align 8, !dbg !2851, !tbaa !838
  %28 = mul i64 %27, %2, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()) #27, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %28, metadata !2809, metadata !DIExpression()) #27, !dbg !2853
  %29 = icmp eq i64 %28, 0, !dbg !2866
  br i1 %29, label %30, label %31, !dbg !2855

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !2867
  br label %38, !dbg !2868

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %33, metadata !2804, metadata !DIExpression()) #27, !dbg !2853
  %34 = icmp eq i8* %33, null, !dbg !2870
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2871
  br i1 %36, label %37, label %38, !dbg !2871

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !2872
  unreachable, !dbg !2872

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2853
  ret i8* %39, !dbg !2873
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !2874 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %0, metadata !2771, metadata !DIExpression()) #27, !dbg !2878
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()) #27, !dbg !2878
  %3 = icmp eq i8* %2, null, !dbg !2881
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2882
  br i1 %5, label %6, label %7, !dbg !2882

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !2883
  unreachable, !dbg !2883

7:                                                ; preds = %1
  ret i8* %2, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64* %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()) #27, !dbg !2892
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression()) #27, !dbg !2892
  call void @llvm.dbg.value(metadata i64 1, metadata !173, metadata !DIExpression()) #27, !dbg !2892
  %3 = load i64, i64* %1, align 8, !dbg !2894, !tbaa !838
  call void @llvm.dbg.value(metadata i64 %3, metadata !174, metadata !DIExpression()) #27, !dbg !2892
  %4 = icmp eq i8* %0, null, !dbg !2895
  br i1 %4, label %5, label %10, !dbg !2896

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2897
  br i1 %6, label %17, label %7, !dbg !2898

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !174, metadata !DIExpression()) #27, !dbg !2892
  %8 = icmp slt i64 %3, 0, !dbg !2899
  br i1 %8, label %9, label %17, !dbg !2900

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !2901
  unreachable, !dbg !2901

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2902
  br i1 %11, label %13, label %12, !dbg !2903

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !2904
  unreachable, !dbg !2904

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2905
  %15 = add nuw nsw i64 %3, 1, !dbg !2906
  %16 = add nuw nsw i64 %15, %14, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %16, metadata !174, metadata !DIExpression()) #27, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()) #27, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %16, metadata !2809, metadata !DIExpression()) #27, !dbg !2908
  br label %17, !dbg !2910

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2911
  store i64 %18, i64* %1, align 8, !dbg !2911, !tbaa !838
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %19, metadata !2804, metadata !DIExpression()) #27, !dbg !2908
  %20 = icmp eq i8* %19, null, !dbg !2913
  br i1 %20, label %21, label %22, !dbg !2914

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !2915
  unreachable, !dbg !2915

22:                                               ; preds = %17
  ret i8* %19, !dbg !2916
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %0, metadata !2921, metadata !DIExpression()) #27, !dbg !2926
  call void @llvm.dbg.value(metadata i64 1, metadata !2924, metadata !DIExpression()) #27, !dbg !2926
  %2 = icmp slt i64 %0, 0, !dbg !2928
  br i1 %2, label %6, label %3, !dbg !2930

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %4, metadata !2925, metadata !DIExpression()) #27, !dbg !2926
  %5 = icmp eq i8* %4, null, !dbg !2932
  br i1 %5, label %6, label %7, !dbg !2933

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !2934
  unreachable, !dbg !2934

7:                                                ; preds = %3
  ret i8* %4, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2921, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2936
  %3 = udiv i64 9223372036854775807, %1, !dbg !2937
  %4 = icmp ult i64 %3, %0, !dbg !2937
  br i1 %4, label %8, label %5, !dbg !2938

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %6, metadata !2925, metadata !DIExpression()), !dbg !2936
  %7 = icmp eq i8* %6, null, !dbg !2940
  br i1 %7, label %8, label %9, !dbg !2941

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !2942
  unreachable, !dbg !2942

9:                                                ; preds = %5
  ret i8* %6, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2771, metadata !DIExpression()) #27, !dbg !2951
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %3, metadata !2776, metadata !DIExpression()) #27, !dbg !2951
  %4 = icmp eq i8* %3, null, !dbg !2954
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2955
  br i1 %6, label %7, label %8, !dbg !2955

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !2956
  unreachable, !dbg !2956

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2957, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %0, metadata !2964, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2965, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !2968
  ret i8* %3, !dbg !2969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !2974
  %3 = add i64 %2, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %0, metadata !2948, metadata !DIExpression()) #27, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %3, metadata !2949, metadata !DIExpression()) #27, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %3, metadata !2771, metadata !DIExpression()) #27, !dbg !2978
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %4, metadata !2776, metadata !DIExpression()) #27, !dbg !2978
  %5 = icmp eq i8* %4, null, !dbg !2981
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2982
  br i1 %7, label %8, label %9, !dbg !2982

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !2983
  unreachable, !dbg !2983

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2957, metadata !DIExpression()) #27, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2964, metadata !DIExpression()) #27, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %3, metadata !2965, metadata !DIExpression()) #27, !dbg !2984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !2986
  ret i8* %4, !dbg !2987
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2988 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2989, !tbaa !756
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #27, !dbg !2990
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #27, !dbg !2991
  tail call void @abort() #29, !dbg !2992
  unreachable, !dbg !2992
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !2993 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !3001
  %3 = icmp eq i64 %0, 0, !dbg !3002
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3003
  br i1 %5, label %11, label %6, !dbg !3003

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2998, metadata !DIExpression()), !dbg !3004
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3005
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3005
  br i1 %8, label %9, label %11, !dbg !3007

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3008
  store i32 12, i32* %10, align 4, !dbg !3010, !tbaa !756
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2995, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %12, metadata !2996, metadata !DIExpression()), !dbg !3001
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %14, metadata !2997, metadata !DIExpression()), !dbg !3001
  br label %15, !dbg !3012

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3001
  ret i8* %16, !dbg !3013
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3014 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3030, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8* %1, metadata !3031, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !3032, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3033, metadata !DIExpression()), !dbg !3039
  %6 = bitcast i32* %5 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3040
  %7 = icmp eq i32* %0, null, !dbg !3041
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3043
  call void @llvm.dbg.value(metadata i32* %8, metadata !3030, metadata !DIExpression()), !dbg !3039
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %9, metadata !3034, metadata !DIExpression()), !dbg !3039
  %10 = icmp ugt i64 %9, -3, !dbg !3045
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3046
  br i1 %12, label %13, label %18, !dbg !3046

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3047
  br i1 %14, label %18, label %15, !dbg !3048

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3049, !tbaa !882
  call void @llvm.dbg.value(metadata i8 %16, metadata !3036, metadata !DIExpression()), !dbg !3050
  %17 = zext i8 %16 to i32, !dbg !3051
  store i32 %17, i32* %8, align 4, !dbg !3052, !tbaa !756
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3053
  ret i64 %19, !dbg !3053
}

; Function Attrs: nounwind
declare !dbg !3054 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !3058 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  %2 = tail call noalias i8* @xmalloc(i64 33) #27, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %2, metadata !3088, metadata !DIExpression()), !dbg !3089
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !3092, metadata !DIExpression()) #27, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %3, metadata !3099, metadata !DIExpression()) #27, !dbg !3101
  call void @llvm.dbg.value(metadata i64 32, metadata !3100, metadata !DIExpression()) #27, !dbg !3101
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !3103
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3104
  store i8 0, i8* %5, align 1, !dbg !3105, !tbaa !882
  %6 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !3106
  call void @llvm.dbg.value(metadata i8* undef, metadata !3087, metadata !DIExpression()), !dbg !3089
  %7 = icmp sgt i64 %6, 0, !dbg !3108
  br i1 %7, label %8, label %17, !dbg !3110

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %9, metadata !3087, metadata !DIExpression()), !dbg !3089
  br label %10, !dbg !3112

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !3087, metadata !DIExpression()), !dbg !3089
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3113
  %13 = load i8, i8* %12, align 1, !dbg !3113, !tbaa !882
  %14 = icmp eq i8 %13, 32, !dbg !3114
  br i1 %14, label %15, label %17, !dbg !3112

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !3087, metadata !DIExpression()), !dbg !3089
  store i8 0, i8* %12, align 1, !dbg !3115, !tbaa !882
  %16 = icmp ult i8* %2, %12, !dbg !3108
  br i1 %16, label %10, label %17, !dbg !3110, !llvm.loop !3116

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !3118
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !3119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64* %1, metadata !3126, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !3127, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %3, metadata !3128, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 0, metadata !3130, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3131, metadata !DIExpression()), !dbg !3133
  %5 = tail call i32 @utmpxname(i8* %0) #27, !dbg !3134
  tail call void @setutxent() #27, !dbg !3135
  call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3131, metadata !DIExpression()), !dbg !3133
  %6 = tail call %struct.utmpx* @getutxent() #27, !dbg !3136
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !3132, metadata !DIExpression()), !dbg !3133
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !3137
  br i1 %7, label %76, label %8, !dbg !3138

8:                                                ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp ne i32 %11, 0
  br label %13, !dbg !3138

13:                                               ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %74, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %73, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %72, %70 ]
  %17 = phi i64 [ 0, %8 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !3139, metadata !DIExpression()) #27, !dbg !3146
  call void @llvm.dbg.value(metadata i32 %3, metadata !3144, metadata !DIExpression()) #27, !dbg !3146
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !3149
  %19 = load i8, i8* %18, align 4, !dbg !3149, !tbaa !882
  %20 = icmp eq i8 %19, 0, !dbg !3149
  br i1 %20, label %25, label %21, !dbg !3149

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !3149
  %23 = load i16, i16* %22, align 4, !dbg !3149, !tbaa !883
  %24 = icmp eq i16 %23, 7, !dbg !3149
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !3146
  call void @llvm.dbg.value(metadata i1 %26, metadata !3145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3146
  %27 = or i1 %10, %26, !dbg !3150
  br i1 %27, label %28, label %70, !dbg !3150

28:                                               ; preds = %25
  %29 = and i1 %12, %26, !dbg !3152
  br i1 %29, label %30, label %41, !dbg !3152

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !3154
  %32 = load i32, i32* %31, align 4, !dbg !3154, !tbaa !3155
  %33 = icmp sgt i32 %32, 0, !dbg !3156
  br i1 %33, label %34, label %41, !dbg !3157

34:                                               ; preds = %30
  %35 = tail call i32 @kill(i32 %32, i32 0) #27, !dbg !3158
  %36 = icmp slt i32 %35, 0, !dbg !3159
  br i1 %36, label %37, label %41, !dbg !3160

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #31, !dbg !3161
  %39 = load i32, i32* %38, align 4, !dbg !3161, !tbaa !756
  %40 = icmp eq i32 %39, 3, !dbg !3162
  br i1 %40, label %70, label %41, !dbg !3163

41:                                               ; preds = %37, %34, %30, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !3130, metadata !DIExpression()), !dbg !3133
  %42 = icmp eq i64 %15, %17, !dbg !3164
  br i1 %42, label %43, label %63, !dbg !3167

43:                                               ; preds = %41
  %44 = bitcast %struct.utmpx* %16 to i8*, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %44, metadata !191, metadata !DIExpression()) #27, !dbg !3169
  call void @llvm.dbg.value(metadata i64* undef, metadata !192, metadata !DIExpression()) #27, !dbg !3169
  call void @llvm.dbg.value(metadata i64 384, metadata !193, metadata !DIExpression()) #27, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %17, metadata !194, metadata !DIExpression()) #27, !dbg !3169
  %45 = icmp eq %struct.utmpx* %16, null, !dbg !3171
  br i1 %45, label %46, label %51, !dbg !3173

46:                                               ; preds = %43
  %47 = icmp eq i64 %15, 0, !dbg !3174
  br i1 %47, label %58, label %48, !dbg !3177

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 %17, metadata !194, metadata !DIExpression()) #27, !dbg !3169
  %49 = icmp ugt i64 %15, 24019198012642645, !dbg !3178
  br i1 %49, label %50, label %58, !dbg !3180

50:                                               ; preds = %48
  tail call void @xalloc_die() #29, !dbg !3181
  unreachable, !dbg !3181

51:                                               ; preds = %43
  %52 = icmp ult i64 %15, 16012798675095096, !dbg !3182
  br i1 %52, label %54, label %53, !dbg !3185

53:                                               ; preds = %51
  tail call void @xalloc_die() #29, !dbg !3186
  unreachable, !dbg !3186

54:                                               ; preds = %51
  %55 = lshr i64 %15, 1, !dbg !3187
  %56 = add nuw nsw i64 %15, 1, !dbg !3188
  %57 = add nuw nsw i64 %56, %55, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %57, metadata !194, metadata !DIExpression()) #27, !dbg !3169
  br label %58

58:                                               ; preds = %46, %48, %54
  %59 = phi i64 [ %57, %54 ], [ %15, %48 ], [ 1, %46 ], !dbg !3169
  call void @llvm.dbg.value(metadata i64 %59, metadata !194, metadata !DIExpression()) #27, !dbg !3169
  %60 = mul nuw nsw i64 %59, 384, !dbg !3190
  %61 = tail call i8* @xrealloc(i8* %44, i64 %60) #27, !dbg !3191
  %62 = bitcast i8* %61 to %struct.utmpx*, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.utmpx* %62, metadata !3131, metadata !DIExpression()), !dbg !3133
  br label %63, !dbg !3193

63:                                               ; preds = %58, %41
  %64 = phi i64 [ %59, %58 ], [ %17, %41 ], !dbg !3133
  %65 = phi %struct.utmpx* [ %62, %58 ], [ %16, %41 ], !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* %65, metadata !3131, metadata !DIExpression()), !dbg !3133
  %66 = add i64 %15, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %66, metadata !3129, metadata !DIExpression()), !dbg !3133
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !3195
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !3196
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !3196
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %68, i8* nonnull align 4 dereferenceable(384) %69, i64 384, i1 false), !dbg !3196, !tbaa.struct !3197
  br label %70, !dbg !3198

70:                                               ; preds = %37, %25, %63
  %71 = phi i64 [ %64, %63 ], [ %17, %25 ], [ %17, %37 ], !dbg !3133
  %72 = phi %struct.utmpx* [ %65, %63 ], [ %16, %25 ], [ %16, %37 ], !dbg !3133
  %73 = phi i64 [ %66, %63 ], [ %15, %25 ], [ %15, %37 ], !dbg !3133
  call void @llvm.dbg.value(metadata i64 %73, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata %struct.utmpx* %72, metadata !3131, metadata !DIExpression()), !dbg !3133
  %74 = tail call %struct.utmpx* @getutxent() #27, !dbg !3136
  call void @llvm.dbg.value(metadata %struct.utmpx* %74, metadata !3132, metadata !DIExpression()), !dbg !3133
  %75 = icmp eq %struct.utmpx* %74, null, !dbg !3137
  br i1 %75, label %76, label %13, !dbg !3138, !llvm.loop !3199

76:                                               ; preds = %70, %4
  %77 = phi %struct.utmpx* [ null, %4 ], [ %72, %70 ], !dbg !3133
  %78 = phi i64 [ 0, %4 ], [ %73, %70 ], !dbg !3133
  tail call void @endutxent() #27, !dbg !3201
  store i64 %78, i64* %1, align 8, !dbg !3202, !tbaa !838
  store %struct.utmpx* %77, %struct.utmpx** %2, align 8, !dbg !3203, !tbaa !614
  ret i32 0, !dbg !3204
}

declare !dbg !3205 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !3209 void @setutxent() local_unnamed_addr #3

declare !dbg !3210 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3214 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !3218 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3219 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3257, metadata !DIExpression()), !dbg !3262
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !3263
  call void @llvm.dbg.value(metadata i1 undef, metadata !3258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3264, metadata !DIExpression()), !dbg !3267
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3269
  %4 = load i32, i32* %3, align 8, !dbg !3269, !tbaa !3270
  %5 = and i32 %4, 32, !dbg !3271
  %6 = icmp eq i32 %5, 0, !dbg !3271
  call void @llvm.dbg.value(metadata i1 %6, metadata !3260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !3272
  %8 = icmp eq i32 %7, 0, !dbg !3273
  call void @llvm.dbg.value(metadata i1 %8, metadata !3261, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  br i1 %6, label %9, label %19, !dbg !3274

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3276
  call void @llvm.dbg.value(metadata i1 %10, metadata !3258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  %11 = or i1 %10, %8, !dbg !3277
  %12 = xor i1 %8, true, !dbg !3277
  %13 = sext i1 %12 to i32, !dbg !3277
  br i1 %11, label %22, label %14, !dbg !3277

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !3278
  %16 = load i32, i32* %15, align 4, !dbg !3278, !tbaa !756
  %17 = icmp ne i32 %16, 9, !dbg !3279
  %18 = sext i1 %17 to i32, !dbg !3280
  br label %22, !dbg !3280

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3281

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !3283
  store i32 0, i32* %21, align 4, !dbg !3285, !tbaa !756
  br label %22, !dbg !3283

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3262
  ret i32 %23, !dbg !3286
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3287 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3291, metadata !DIExpression()), !dbg !3296
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3297
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3297
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3292, metadata !DIExpression()), !dbg !3298
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !3299
  %5 = icmp eq i32 %4, 0, !dbg !3299
  br i1 %5, label %6, label %13, !dbg !3301

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3302
  %8 = load i16, i16* %7, align 16, !dbg !3302
  %9 = icmp eq i16 %8, 67, !dbg !3302
  br i1 %9, label %13, label %10, !dbg !3303

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0), i64 6), !dbg !3304
  %12 = icmp ne i32 %11, 0, !dbg !3305
  br label %13, !dbg !3303

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3306
  ret i1 %14, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3307 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %1, metadata !3311, metadata !DIExpression()), !dbg !3313
  %2 = icmp eq i8* %1, null, !dbg !3314
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %3, metadata !3311, metadata !DIExpression()), !dbg !3313
  %4 = load i8, i8* %3, align 1, !dbg !3317, !tbaa !882
  %5 = icmp eq i8 %4, 0, !dbg !3321
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %3, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %6, metadata !3311, metadata !DIExpression()), !dbg !3313
  ret i8* %6, !dbg !3323
}

; Function Attrs: nounwind
declare !dbg !3324 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %2, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()) #27, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3338, metadata !DIExpression()) #27, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %2, metadata !3339, metadata !DIExpression()) #27, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()) #27, !dbg !3352
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %4, metadata !3351, metadata !DIExpression()) #27, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %4, metadata !3340, metadata !DIExpression()) #27, !dbg !3344
  %5 = icmp eq i8* %4, null, !dbg !3355
  br i1 %5, label %6, label %9, !dbg !3356

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3357
  br i1 %7, label %19, label %8, !dbg !3360

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3361, !tbaa !882
  br label %19, !dbg !3362

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %10, metadata !3341, metadata !DIExpression()) #27, !dbg !3364
  %11 = icmp ult i64 %10, %2, !dbg !3365
  br i1 %11, label %12, label %14, !dbg !3367

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %1, metadata !3370, metadata !DIExpression()) #27, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %4, metadata !3373, metadata !DIExpression()) #27, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %13, metadata !3374, metadata !DIExpression()) #27, !dbg !3375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !3377
  br label %19, !dbg !3378

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3379
  br i1 %15, label %19, label %16, !dbg !3382

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %1, metadata !3370, metadata !DIExpression()) #27, !dbg !3385
  call void @llvm.dbg.value(metadata i8* %4, metadata !3373, metadata !DIExpression()) #27, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %17, metadata !3374, metadata !DIExpression()) #27, !dbg !3385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !3387
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3388
  store i8 0, i8* %18, align 1, !dbg !3389, !tbaa !882
  br label %19, !dbg !3390

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3391
  ret i32 %20, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()) #27, !dbg !3397
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %2, metadata !3351, metadata !DIExpression()) #27, !dbg !3397
  ret i8* %2, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3401 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3439, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3442, metadata !DIExpression()), !dbg !3443
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %2, metadata !3441, metadata !DIExpression()), !dbg !3443
  %3 = icmp slt i32 %2, 0, !dbg !3445
  br i1 %3, label %4, label %6, !dbg !3447

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3448
  br label %24, !dbg !3449

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3450
  %8 = icmp eq i32 %7, 0, !dbg !3450
  br i1 %8, label %13, label %9, !dbg !3452

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3453
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !3454
  %12 = icmp eq i64 %11, -1, !dbg !3455
  br i1 %12, label %16, label %13, !dbg !3456

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !3457
  %15 = icmp eq i32 %14, 0, !dbg !3457
  br i1 %15, label %16, label %18, !dbg !3458

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3440, metadata !DIExpression()), !dbg !3443
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3459
  call void @llvm.dbg.value(metadata i32 %21, metadata !3442, metadata !DIExpression()), !dbg !3443
  br label %24, !dbg !3460

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !3461
  %20 = load i32, i32* %19, align 4, !dbg !3461, !tbaa !756
  call void @llvm.dbg.value(metadata i32 %20, metadata !3440, metadata !DIExpression()), !dbg !3443
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3459
  call void @llvm.dbg.value(metadata i32 %21, metadata !3442, metadata !DIExpression()), !dbg !3443
  %22 = icmp eq i32 %20, 0, !dbg !3462
  br i1 %22, label %24, label %23, !dbg !3460

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3464, !tbaa !756
  call void @llvm.dbg.value(metadata i32 -1, metadata !3442, metadata !DIExpression()), !dbg !3443
  br label %24, !dbg !3466

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3443
  ret i32 %25, !dbg !3467
}

; Function Attrs: nofree nounwind
declare !dbg !3468 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3471 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3472 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3476 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3514, metadata !DIExpression()), !dbg !3515
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3516
  br i1 %2, label %6, label %3, !dbg !3518

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3519
  %5 = icmp eq i32 %4, 0, !dbg !3519
  br i1 %5, label %6, label %8, !dbg !3520

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3521
  br label %17, !dbg !3522

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3523, metadata !DIExpression()) #27, !dbg !3528
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3530
  %10 = load i32, i32* %9, align 8, !dbg !3530, !tbaa !3270
  %11 = and i32 %10, 256, !dbg !3532
  %12 = icmp eq i32 %11, 0, !dbg !3532
  br i1 %12, label %15, label %13, !dbg !3533

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !3534
  br label %15, !dbg !3534

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3535
  br label %17, !dbg !3536

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3515
  ret i32 %18, !dbg !3537
}

; Function Attrs: nofree nounwind
declare !dbg !3538 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3541 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3580, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %2, metadata !3582, metadata !DIExpression()), !dbg !3586
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3587
  %5 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !3588
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3589
  %7 = load i8*, i8** %6, align 8, !dbg !3589, !tbaa !3590
  %8 = icmp eq i8* %5, %7, !dbg !3591
  br i1 %8, label %9, label %28, !dbg !3592

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3593
  %11 = load i8*, i8** %10, align 8, !dbg !3593, !tbaa !912
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3594
  %13 = load i8*, i8** %12, align 8, !dbg !3594, !tbaa !3595
  %14 = icmp eq i8* %11, %13, !dbg !3596
  br i1 %14, label %15, label %28, !dbg !3597

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3598
  %17 = load i8*, i8** %16, align 8, !dbg !3598, !tbaa !3599
  %18 = icmp eq i8* %17, null, !dbg !3600
  br i1 %18, label %19, label %28, !dbg !3601

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3602
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %21, metadata !3583, metadata !DIExpression()), !dbg !3604
  %22 = icmp eq i64 %21, -1, !dbg !3605
  br i1 %22, label %30, label %23, !dbg !3607

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3608
  %25 = load i32, i32* %24, align 8, !dbg !3609, !tbaa !3270
  %26 = and i32 %25, -17, !dbg !3609
  store i32 %26, i32* %24, align 8, !dbg !3609, !tbaa !3270
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3610
  store i64 %21, i64* %27, align 8, !dbg !3611, !tbaa !3612
  br label %30, !dbg !3613

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3614
  br label %30, !dbg !3615

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3586
  ret i32 %31, !dbg !3616
}

; Function Attrs: nofree nounwind
declare !dbg !3617 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { argmemonly nofree nounwind willreturn }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!143, !2, !11, !19, !26, !43, !51, !154, !137, !161, !178, !180, !182, !185, !196, !198, !200, !589, !591, !593, !595}
!llvm.ident = !{!597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597}
!llvm.module.flags = !{!598, !599, !600, !601, !602}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !16, isLocal: true, isDefinition: true)
!16 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "exit_failure", scope: !19, file: !20, line: 24, type: !22, isLocal: false, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!21 = !{!17}
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "long_options", scope: !26, file: !27, line: 34, type: !29, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!28 = !{!24}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 768, elements: !39)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !32, line: 50, size: 256, elements: !33)
!32 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!33 = !{!34, !35, !36, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !32, line: 52, baseType: !6, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !31, file: !32, line: 55, baseType: !23, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !31, file: !32, line: 56, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !31, file: !32, line: 57, baseType: !23, size: 32, offset: 192)
!39 = !{!40}
!40 = !DISubrange(count: 3)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "program_name", scope: !43, file: !44, line: 33, type: !6, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !48, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!48 = !{!41}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !51, file: !52, line: 85, type: !131, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !89, globals: !94, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!54, !69, !74}
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !55, line: 32, baseType: !56, size: 32, elements: !57)
!55 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!64 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!65 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!67 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!68 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !55, line: 242, baseType: !56, size: 32, elements: !70)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !56, size: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!77 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!89 = !{!23, !90, !91, !47}
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !{!49, !95, !101, !113, !115, !120, !127, !129}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !51, file: !52, line: 101, type: !97, isLocal: false, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 320, elements: !99)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!99 = !{!100}
!100 = !DISubrange(count: 10)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !51, file: !52, line: 1052, type: !103, isLocal: false, isDefinition: true)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !52, line: 65, size: 448, elements: !104)
!104 = !{!105, !106, !107, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !103, file: !52, line: 68, baseType: !54, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !52, line: 71, baseType: !23, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !103, file: !52, line: 75, baseType: !108, size: 256, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !103, file: !52, line: 78, baseType: !6, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !103, file: !52, line: 81, baseType: !6, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !51, file: !52, line: 116, type: !103, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !51, file: !52, line: 842, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !51, file: !52, line: 845, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !52, line: 834, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !52, line: 836, baseType: !91, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !52, line: 837, baseType: !47, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !51, file: !52, line: 843, type: !23, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !51, file: !52, line: 844, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !138, line: 26, type: !140, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139, splitDebugInlining: false, nameTableKind: None)
!138 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !{!135}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 47)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !151, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "src/users.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!146, !54}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 208, baseType: !56, size: 32, elements: !148)
!147 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!151 = !{!6, !46, !91, !152, !153}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !156, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !{!157}
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 40, baseType: !56, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!160 = !{!46}
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !{!164}
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !166, file: !165, line: 186, baseType: !56, size: 32, elements: !175)
!165 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = distinct !DISubprogram(name: "x2nrealloc", scope: !165, file: !165, line: 174, type: !167, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{!46, !46, !169, !91}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!170 = !{!171, !172, !173, !174}
!171 = !DILocalVariable(name: "p", arg: 1, scope: !166, file: !165, line: 174, type: !46)
!172 = !DILocalVariable(name: "pn", arg: 2, scope: !166, file: !165, line: 174, type: !169)
!173 = !DILocalVariable(name: "s", arg: 3, scope: !166, file: !165, line: 174, type: !91)
!174 = !DILocalVariable(name: "n", scope: !166, file: !165, line: 176, type: !91)
!175 = !{!176}
!176 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!177 = !{!91, !47, !46}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!91}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!146, !188}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !189, file: !165, line: 186, baseType: !56, size: 32, elements: !175)
!189 = distinct !DISubprogram(name: "x2nrealloc", scope: !165, file: !165, line: 174, type: !167, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !190)
!190 = !{!191, !192, !193, !194}
!191 = !DILocalVariable(name: "p", arg: 1, scope: !189, file: !165, line: 174, type: !46)
!192 = !DILocalVariable(name: "pn", arg: 2, scope: !189, file: !165, line: 174, type: !169)
!193 = !DILocalVariable(name: "s", arg: 3, scope: !189, file: !165, line: 174, type: !91)
!194 = !DILocalVariable(name: "n", scope: !189, file: !165, line: 176, type: !91)
!195 = !{!47, !46, !91}
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, baseType: !56, size: 32, elements: !205)
!204 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!206 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!207 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!244 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!245 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!246 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!247 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!248 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!249 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!250 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!251 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!252 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!253 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!255 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!314 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!401 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!475 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!476 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!477 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!478 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!479 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!480 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!482 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!483 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!484 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!485 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!487 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!488 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!521 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!522 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!523 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!524 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!525 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!530 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!531 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!532 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!533 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!590 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !{!"clang version 12.0.1"}
!598 = !{i32 7, !"Dwarf Version", i32 4}
!599 = !{i32 2, !"Debug Info Version", i32 3}
!600 = !{i32 1, !"wchar_size", i32 4}
!601 = !{i32 7, !"PIC Level", i32 2}
!602 = !{i32 7, !"PIE Level", i32 2}
!603 = distinct !DISubprogram(name: "usage", scope: !144, file: !144, line: 99, type: !604, scopeLine: 100, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !23}
!606 = !{!607}
!607 = !DILocalVariable(name: "status", arg: 1, scope: !603, file: !144, line: 99, type: !23)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocation(line: 101, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !603, file: !144, line: 101, column: 7)
!611 = !DILocation(line: 101, column: 7, scope: !603)
!612 = !DILocation(line: 102, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !144, line: 102, column: 5)
!614 = !{!615, !615, i64 0}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !DILocation(line: 105, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !144, line: 104, column: 5)
!620 = !DILocation(line: 106, column: 7, scope: !619)
!621 = !DILocation(line: 112, column: 7, scope: !619)
!622 = !DILocation(line: 113, column: 7, scope: !619)
!623 = !DILocalVariable(name: "program", arg: 1, scope: !624, file: !625, line: 634, type: !6)
!624 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !625, file: !625, line: 634, type: !626, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !628)
!625 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!626 = !DISubroutineType(types: !627)
!627 = !{null, !6}
!628 = !{!623, !629, !638, !639, !641}
!629 = !DILocalVariable(name: "infomap", scope: !624, file: !625, line: 636, type: !630)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 896, elements: !636)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !624, file: !625, line: 636, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !632, file: !625, line: 636, baseType: !6, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !625, line: 636, baseType: !6, size: 64, offset: 64)
!636 = !{!637}
!637 = !DISubrange(count: 7)
!638 = !DILocalVariable(name: "node", scope: !624, file: !625, line: 646, type: !6)
!639 = !DILocalVariable(name: "map_prog", scope: !624, file: !625, line: 647, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!641 = !DILocalVariable(name: "lc_messages", scope: !624, file: !625, line: 659, type: !6)
!642 = !DILocation(line: 0, scope: !624, inlinedAt: !643)
!643 = distinct !DILocation(line: 114, column: 7, scope: !619)
!644 = !DILocation(line: 636, column: 3, scope: !624, inlinedAt: !643)
!645 = !DILocation(line: 636, column: 67, scope: !624, inlinedAt: !643)
!646 = !DILocation(line: 647, column: 36, scope: !624, inlinedAt: !643)
!647 = !DILocation(line: 649, column: 3, scope: !624, inlinedAt: !643)
!648 = !DILocation(line: 649, column: 33, scope: !624, inlinedAt: !643)
!649 = !DILocation(line: 650, column: 13, scope: !624, inlinedAt: !643)
!650 = !DILocation(line: 649, column: 20, scope: !624, inlinedAt: !643)
!651 = !{!652, !615, i64 0}
!652 = !{!"infomap", !615, i64 0, !615, i64 8}
!653 = !DILocation(line: 649, column: 10, scope: !624, inlinedAt: !643)
!654 = !DILocation(line: 649, column: 28, scope: !624, inlinedAt: !643)
!655 = distinct !{!655, !647, !649, !656}
!656 = !{!"llvm.loop.mustprogress"}
!657 = !DILocation(line: 652, column: 17, scope: !658, inlinedAt: !643)
!658 = distinct !DILexicalBlock(scope: !624, file: !625, line: 652, column: 7)
!659 = !{!652, !615, i64 8}
!660 = !DILocation(line: 652, column: 7, scope: !658, inlinedAt: !643)
!661 = !DILocation(line: 652, column: 7, scope: !624, inlinedAt: !643)
!662 = !DILocation(line: 655, column: 3, scope: !624, inlinedAt: !643)
!663 = !DILocation(line: 659, column: 29, scope: !624, inlinedAt: !643)
!664 = !DILocation(line: 660, column: 7, scope: !665, inlinedAt: !643)
!665 = distinct !DILexicalBlock(scope: !624, file: !625, line: 660, column: 7)
!666 = !DILocation(line: 660, column: 19, scope: !665, inlinedAt: !643)
!667 = !DILocation(line: 660, column: 22, scope: !665, inlinedAt: !643)
!668 = !DILocation(line: 660, column: 7, scope: !624, inlinedAt: !643)
!669 = !DILocation(line: 666, column: 7, scope: !670, inlinedAt: !643)
!670 = distinct !DILexicalBlock(scope: !665, file: !625, line: 661, column: 5)
!671 = !DILocation(line: 668, column: 5, scope: !670, inlinedAt: !643)
!672 = !DILocation(line: 669, column: 3, scope: !624, inlinedAt: !643)
!673 = !DILocation(line: 671, column: 3, scope: !624, inlinedAt: !643)
!674 = !DILocation(line: 673, column: 1, scope: !624, inlinedAt: !643)
!675 = !DILocation(line: 116, column: 3, scope: !603)
!676 = !DISubprogram(name: "dcgettext", scope: !677, file: !677, line: 51, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!677 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!678 = !DISubroutineType(types: !679)
!679 = !{!47, !6, !6, !23}
!680 = !DISubprogram(name: "fputs_unlocked", scope: !681, file: !681, line: 667, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!681 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!682 = !DISubroutineType(types: !683)
!683 = !{!23, !6, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !687)
!686 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !703, !704, !705, !706, !710, !711, !713, !717, !720, !722, !725, !728, !729, !730, !731, !732}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !685, file: !686, line: 51, baseType: !23, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !685, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !685, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !685, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !685, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !685, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !685, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !685, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !685, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !685, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !685, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !685, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !685, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !686, line: 36, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !685, file: !686, line: 70, baseType: !684, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !685, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !685, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !685, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !708, line: 152, baseType: !709)
!708 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!709 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !685, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !685, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!712 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !685, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 1)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !685, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !686, line: 43, baseType: null)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !685, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !708, line: 153, baseType: !709)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !685, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !686, line: 37, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !685, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !686, line: 38, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !685, file: !686, line: 93, baseType: !684, size: 64, offset: 1344)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !685, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !685, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !685, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !685, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 20)
!736 = !DISubprogram(name: "setlocale", scope: !737, file: !737, line: 122, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!737 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!738 = !DISubroutineType(types: !739)
!739 = !{!47, !23, !6}
!740 = distinct !DISubprogram(name: "main", scope: !144, file: !144, line: 120, type: !741, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!23, !23, !152}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "argc", arg: 1, scope: !740, file: !144, line: 120, type: !23)
!745 = !DILocalVariable(name: "argv", arg: 2, scope: !740, file: !144, line: 120, type: !152)
!746 = !DILocation(line: 0, scope: !740)
!747 = !DILocation(line: 123, column: 21, scope: !740)
!748 = !DILocation(line: 123, column: 3, scope: !740)
!749 = !DILocation(line: 124, column: 3, scope: !740)
!750 = !DILocation(line: 125, column: 3, scope: !740)
!751 = !DILocation(line: 126, column: 3, scope: !740)
!752 = !DILocation(line: 128, column: 3, scope: !740)
!753 = !DILocation(line: 131, column: 36, scope: !740)
!754 = !DILocation(line: 130, column: 3, scope: !740)
!755 = !DILocation(line: 134, column: 18, scope: !740)
!756 = !{!757, !757, i64 0}
!757 = !{!"int", !616, i64 0}
!758 = !DILocation(line: 134, column: 16, scope: !740)
!759 = !DILocation(line: 134, column: 3, scope: !740)
!760 = !DILocation(line: 137, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !740, file: !144, line: 135, column: 5)
!762 = !DILocation(line: 138, column: 7, scope: !761)
!763 = !DILocation(line: 141, column: 14, scope: !761)
!764 = !DILocation(line: 141, column: 7, scope: !761)
!765 = !DILocation(line: 142, column: 7, scope: !761)
!766 = !DILocation(line: 145, column: 20, scope: !761)
!767 = !DILocation(line: 145, column: 55, scope: !761)
!768 = !DILocation(line: 145, column: 62, scope: !761)
!769 = !DILocation(line: 145, column: 50, scope: !761)
!770 = !DILocation(line: 145, column: 43, scope: !761)
!771 = !DILocation(line: 145, column: 7, scope: !761)
!772 = !DILocation(line: 146, column: 7, scope: !761)
!773 = !DILocation(line: 149, column: 3, scope: !740)
!774 = !DISubprogram(name: "bindtextdomain", scope: !677, file: !677, line: 86, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!775 = !DISubroutineType(types: !776)
!776 = !{!47, !6, !6}
!777 = !DISubprogram(name: "textdomain", scope: !677, file: !677, line: 82, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!778 = !DISubroutineType(types: !779)
!779 = !{!47, !6}
!780 = !DISubprogram(name: "atexit", scope: !781, file: !781, line: 595, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!781 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!782 = !DISubroutineType(types: !783)
!783 = !{!23, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null}
!787 = distinct !DISubprogram(name: "users", scope: !144, file: !144, line: 85, type: !788, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !6, !23}
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "filename", arg: 1, scope: !787, file: !144, line: 85, type: !6)
!792 = !DILocalVariable(name: "options", arg: 2, scope: !787, file: !144, line: 85, type: !23)
!793 = !DILocalVariable(name: "n_users", scope: !787, file: !144, line: 87, type: !91)
!794 = !DILocalVariable(name: "utmp_buf", scope: !787, file: !144, line: 88, type: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !147, line: 146, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !798, line: 55, size: 3072, elements: !799)
!798 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!799 = !{!800, !802, !804, !808, !812, !813, !814, !819, !821, !826, !828}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !797, file: !798, line: 57, baseType: !801, size: 16)
!801 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !797, file: !798, line: 58, baseType: !803, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !708, line: 154, baseType: !23)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !797, file: !798, line: 59, baseType: !805, size: 256, offset: 64)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !797, file: !798, line: 61, baseType: !809, size: 32, offset: 320)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 4)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !797, file: !798, line: 63, baseType: !805, size: 256, offset: 352)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !797, file: !798, line: 65, baseType: !117, size: 2048, offset: 608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !797, file: !798, line: 67, baseType: !815, size: 32, offset: 2656)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !798, line: 42, size: 32, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !815, file: !798, line: 45, baseType: !801, size: 16)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !815, file: !798, line: 46, baseType: !801, size: 16, offset: 16)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !797, file: !798, line: 74, baseType: !820, size: 32, offset: 2688)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !708, line: 41, baseType: !23)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !797, file: !798, line: 79, baseType: !822, size: 64, offset: 2720)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !798, line: 75, size: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !822, file: !798, line: 77, baseType: !820, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !822, file: !798, line: 78, baseType: !820, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !797, file: !798, line: 84, baseType: !827, size: 128, offset: 2784)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 128, elements: !810)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !797, file: !798, line: 85, baseType: !733, size: 160, offset: 2912)
!829 = !DILocation(line: 0, scope: !787)
!830 = !DILocation(line: 87, column: 3, scope: !787)
!831 = !DILocation(line: 88, column: 3, scope: !787)
!832 = !DILocation(line: 90, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !787, file: !144, line: 90, column: 7)
!834 = !DILocation(line: 90, column: 58, scope: !833)
!835 = !DILocation(line: 90, column: 7, scope: !787)
!836 = !DILocation(line: 91, column: 5, scope: !833)
!837 = !DILocation(line: 93, column: 23, scope: !787)
!838 = !{!839, !839, i64 0}
!839 = !{!"long", !616, i64 0}
!840 = !DILocalVariable(name: "n", arg: 1, scope: !841, file: !144, line: 47, type: !91)
!841 = distinct !DISubprogram(name: "list_entries_users", scope: !144, file: !144, line: 47, type: !842, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !846)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !91, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!846 = !{!840, !847, !848, !849, !850, !851, !855}
!847 = !DILocalVariable(name: "this", arg: 2, scope: !841, file: !144, line: 47, type: !844)
!848 = !DILocalVariable(name: "u", scope: !841, file: !144, line: 49, type: !152)
!849 = !DILocalVariable(name: "i", scope: !841, file: !144, line: 50, type: !91)
!850 = !DILocalVariable(name: "n_entries", scope: !841, file: !144, line: 51, type: !91)
!851 = !DILocalVariable(name: "trimmed_name", scope: !852, file: !144, line: 57, type: !47)
!852 = distinct !DILexicalBlock(scope: !853, file: !144, line: 56, column: 9)
!853 = distinct !DILexicalBlock(scope: !854, file: !144, line: 55, column: 11)
!854 = distinct !DILexicalBlock(scope: !841, file: !144, line: 54, column: 5)
!855 = !DILocalVariable(name: "c", scope: !856, file: !144, line: 71, type: !8)
!856 = distinct !DILexicalBlock(scope: !857, file: !144, line: 70, column: 5)
!857 = distinct !DILexicalBlock(scope: !858, file: !144, line: 69, column: 3)
!858 = distinct !DILexicalBlock(scope: !841, file: !144, line: 69, column: 3)
!859 = !DILocation(line: 0, scope: !841, inlinedAt: !860)
!860 = distinct !DILocation(line: 93, column: 3, scope: !787)
!861 = !DILocalVariable(name: "n", arg: 1, scope: !862, file: !165, line: 99, type: !91)
!862 = distinct !DISubprogram(name: "xnmalloc", scope: !165, file: !165, line: 99, type: !863, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!46, !91, !91}
!865 = !{!861, !866}
!866 = !DILocalVariable(name: "s", arg: 2, scope: !862, file: !165, line: 99, type: !91)
!867 = !DILocation(line: 0, scope: !862, inlinedAt: !868)
!868 = distinct !DILocation(line: 49, column: 14, scope: !841, inlinedAt: !860)
!869 = !DILocation(line: 101, column: 7, scope: !870, inlinedAt: !868)
!870 = distinct !DILexicalBlock(scope: !862, file: !165, line: 101, column: 7)
!871 = !DILocation(line: 101, column: 7, scope: !862, inlinedAt: !868)
!872 = !DILocation(line: 102, column: 5, scope: !870, inlinedAt: !868)
!873 = !DILocation(line: 93, column: 32, scope: !787)
!874 = !DILocation(line: 103, column: 21, scope: !862, inlinedAt: !868)
!875 = !DILocation(line: 103, column: 10, scope: !862, inlinedAt: !868)
!876 = !DILocation(line: 49, column: 14, scope: !841, inlinedAt: !860)
!877 = !DILocation(line: 53, column: 3, scope: !841, inlinedAt: !860)
!878 = !DILocation(line: 67, column: 3, scope: !841, inlinedAt: !860)
!879 = !DILocation(line: 69, column: 3, scope: !858, inlinedAt: !860)
!880 = !DILocation(line: 53, column: 11, scope: !841, inlinedAt: !860)
!881 = !DILocation(line: 55, column: 11, scope: !853, inlinedAt: !860)
!882 = !{!616, !616, i64 0}
!883 = !{!884, !885, i64 0}
!884 = !{!"utmpx", !885, i64 0, !757, i64 4, !616, i64 8, !616, i64 40, !616, i64 44, !616, i64 76, !886, i64 332, !757, i64 336, !887, i64 340, !616, i64 348, !616, i64 364}
!885 = !{!"short", !616, i64 0}
!886 = !{!"__exit_status", !885, i64 0, !885, i64 2}
!887 = !{!"", !757, i64 0, !757, i64 4}
!888 = !DILocation(line: 55, column: 11, scope: !854, inlinedAt: !860)
!889 = !DILocation(line: 59, column: 26, scope: !852, inlinedAt: !860)
!890 = !DILocation(line: 0, scope: !852, inlinedAt: !860)
!891 = !DILocation(line: 61, column: 11, scope: !852, inlinedAt: !860)
!892 = !DILocation(line: 61, column: 24, scope: !852, inlinedAt: !860)
!893 = !DILocation(line: 62, column: 11, scope: !852, inlinedAt: !860)
!894 = !DILocation(line: 63, column: 9, scope: !852, inlinedAt: !860)
!895 = !DILocation(line: 64, column: 11, scope: !854, inlinedAt: !860)
!896 = distinct !{!896, !877, !897, !656}
!897 = !DILocation(line: 65, column: 5, scope: !841, inlinedAt: !860)
!898 = !DILocation(line: 69, column: 17, scope: !857, inlinedAt: !860)
!899 = !DILocation(line: 71, column: 19, scope: !856, inlinedAt: !860)
!900 = !DILocation(line: 0, scope: !856, inlinedAt: !860)
!901 = !DILocation(line: 72, column: 7, scope: !856, inlinedAt: !860)
!902 = !DILocation(line: 71, column: 16, scope: !856, inlinedAt: !860)
!903 = !DILocalVariable(name: "__c", arg: 1, scope: !904, file: !905, line: 108, type: !23)
!904 = distinct !DISubprogram(name: "putchar_unlocked", scope: !905, file: !905, line: 108, type: !906, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !908)
!905 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!906 = !DISubroutineType(types: !907)
!907 = !{!23, !23}
!908 = !{!903}
!909 = !DILocation(line: 0, scope: !904, inlinedAt: !910)
!910 = distinct !DILocation(line: 73, column: 7, scope: !856, inlinedAt: !860)
!911 = !DILocation(line: 110, column: 10, scope: !904, inlinedAt: !910)
!912 = !{!913, !615, i64 40}
!913 = !{!"_IO_FILE", !757, i64 0, !615, i64 8, !615, i64 16, !615, i64 24, !615, i64 32, !615, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !757, i64 112, !757, i64 116, !839, i64 120, !885, i64 128, !616, i64 130, !616, i64 131, !615, i64 136, !839, i64 144, !615, i64 152, !615, i64 160, !615, i64 168, !615, i64 176, !839, i64 184, !757, i64 192, !616, i64 196}
!914 = !{!913, !615, i64 48}
!915 = !{!"branch_weights", i32 2000, i32 1}
!916 = !DILocation(line: 69, column: 31, scope: !857, inlinedAt: !860)
!917 = distinct !{!917, !879, !918, !656}
!918 = !DILocation(line: 74, column: 5, scope: !858, inlinedAt: !860)
!919 = !DILocation(line: 77, column: 11, scope: !920, inlinedAt: !860)
!920 = distinct !DILexicalBlock(scope: !921, file: !144, line: 76, column: 3)
!921 = distinct !DILexicalBlock(scope: !841, file: !144, line: 76, column: 3)
!922 = !DILocation(line: 77, column: 5, scope: !920, inlinedAt: !860)
!923 = !DILocation(line: 76, column: 31, scope: !920, inlinedAt: !860)
!924 = !DILocation(line: 76, column: 17, scope: !920, inlinedAt: !860)
!925 = !DILocation(line: 76, column: 3, scope: !921, inlinedAt: !860)
!926 = distinct !{!926, !925, !927, !656}
!927 = !DILocation(line: 77, column: 15, scope: !921, inlinedAt: !860)
!928 = !DILocation(line: 78, column: 3, scope: !841, inlinedAt: !860)
!929 = !DILocation(line: 95, column: 9, scope: !787)
!930 = !DILocation(line: 95, column: 3, scope: !787)
!931 = !DILocation(line: 96, column: 1, scope: !787)
!932 = !DISubprogram(name: "error", scope: !933, file: !933, line: 52, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!933 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!934 = !DISubroutineType(types: !935)
!935 = !{null, !23, !23, !6, null}
!936 = distinct !DISubprogram(name: "userid_compare", scope: !144, file: !144, line: 39, type: !937, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !941)
!937 = !DISubroutineType(types: !938)
!938 = !{!23, !939, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!941 = !{!942, !943, !944, !945}
!942 = !DILocalVariable(name: "v_a", arg: 1, scope: !936, file: !144, line: 39, type: !939)
!943 = !DILocalVariable(name: "v_b", arg: 2, scope: !936, file: !144, line: 39, type: !939)
!944 = !DILocalVariable(name: "a", scope: !936, file: !144, line: 41, type: !152)
!945 = !DILocalVariable(name: "b", scope: !936, file: !144, line: 42, type: !152)
!946 = !DILocation(line: 0, scope: !936)
!947 = !DILocation(line: 41, column: 14, scope: !936)
!948 = !DILocation(line: 42, column: 14, scope: !936)
!949 = !DILocation(line: 43, column: 18, scope: !936)
!950 = !DILocation(line: 43, column: 22, scope: !936)
!951 = !DILocation(line: 43, column: 10, scope: !936)
!952 = !DILocation(line: 43, column: 3, scope: !936)
!953 = !DISubprogram(name: "qsort", scope: !781, file: !781, line: 830, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !46, !93, !93, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!957 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !626, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !958)
!958 = !{!959}
!959 = !DILocalVariable(name: "file", arg: 1, scope: !957, file: !12, line: 51, type: !6)
!960 = !DILocation(line: 0, scope: !957)
!961 = !DILocation(line: 53, column: 13, scope: !957)
!962 = !DILocation(line: 54, column: 1, scope: !957)
!963 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !964, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !16}
!966 = !{!967}
!967 = !DILocalVariable(name: "ignore", arg: 1, scope: !963, file: !12, line: 88, type: !16)
!968 = !DILocation(line: 0, scope: !963)
!969 = !DILocation(line: 90, column: 16, scope: !963)
!970 = !{!971, !971, i64 0}
!971 = !{!"_Bool", !616, i64 0}
!972 = !DILocation(line: 91, column: 1, scope: !963)
!973 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !785, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !974)
!974 = !{!975}
!975 = !DILocalVariable(name: "write_error", scope: !976, file: !12, line: 122, type: !6)
!976 = distinct !DILexicalBlock(scope: !977, file: !12, line: 121, column: 5)
!977 = distinct !DILexicalBlock(scope: !973, file: !12, line: 119, column: 7)
!978 = !DILocation(line: 119, column: 21, scope: !977)
!979 = !DILocation(line: 119, column: 7, scope: !977)
!980 = !DILocation(line: 119, column: 29, scope: !977)
!981 = !DILocation(line: 120, column: 7, scope: !977)
!982 = !DILocation(line: 120, column: 12, scope: !977)
!983 = !{i8 0, i8 2}
!984 = !DILocation(line: 120, column: 25, scope: !977)
!985 = !DILocation(line: 120, column: 28, scope: !977)
!986 = !DILocation(line: 120, column: 34, scope: !977)
!987 = !DILocation(line: 119, column: 7, scope: !973)
!988 = !DILocation(line: 122, column: 33, scope: !976)
!989 = !DILocation(line: 0, scope: !976)
!990 = !DILocation(line: 123, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !976, file: !12, line: 123, column: 11)
!992 = !DILocation(line: 0, scope: !991)
!993 = !DILocation(line: 123, column: 11, scope: !976)
!994 = !DILocation(line: 124, column: 36, scope: !991)
!995 = !DILocation(line: 124, column: 9, scope: !991)
!996 = !DILocation(line: 127, column: 9, scope: !991)
!997 = !DILocation(line: 129, column: 14, scope: !976)
!998 = !DILocation(line: 129, column: 7, scope: !976)
!999 = !DILocation(line: 134, column: 42, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !973, file: !12, line: 134, column: 7)
!1001 = !DILocation(line: 134, column: 28, scope: !1000)
!1002 = !DILocation(line: 134, column: 50, scope: !1000)
!1003 = !DILocation(line: 134, column: 7, scope: !973)
!1004 = !DILocation(line: 135, column: 12, scope: !1000)
!1005 = !DILocation(line: 135, column: 5, scope: !1000)
!1006 = !DILocation(line: 136, column: 1, scope: !973)
!1007 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !1008, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1011)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !23, !152, !6, !6, !6, !1010, null}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1012 = !DILocalVariable(name: "argc", arg: 1, scope: !1007, file: !27, line: 45, type: !23)
!1013 = !DILocalVariable(name: "argv", arg: 2, scope: !1007, file: !27, line: 46, type: !152)
!1014 = !DILocalVariable(name: "command_name", arg: 3, scope: !1007, file: !27, line: 47, type: !6)
!1015 = !DILocalVariable(name: "package", arg: 4, scope: !1007, file: !27, line: 48, type: !6)
!1016 = !DILocalVariable(name: "version", arg: 5, scope: !1007, file: !27, line: 49, type: !6)
!1017 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1007, file: !27, line: 50, type: !1010)
!1018 = !DILocalVariable(name: "c", scope: !1007, file: !27, line: 53, type: !23)
!1019 = !DILocalVariable(name: "saved_opterr", scope: !1007, file: !27, line: 54, type: !23)
!1020 = !DILocalVariable(name: "authors", scope: !1021, file: !27, line: 72, type: !1025)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !27, line: 71, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !27, line: 65, column: 9)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !27, line: 63, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1007, file: !27, line: 61, column: 7)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !681, line: 52, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1027, line: 32, baseType: !1028)
!1027 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !1029)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 192, elements: !715)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1030, file: !27, line: 72, baseType: !56, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1030, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1030, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1030, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!1036 = !DILocation(line: 0, scope: !1007)
!1037 = !DILocation(line: 56, column: 18, scope: !1007)
!1038 = !DILocation(line: 59, column: 10, scope: !1007)
!1039 = !DILocation(line: 61, column: 12, scope: !1024)
!1040 = !DILocation(line: 62, column: 7, scope: !1024)
!1041 = !DILocation(line: 62, column: 15, scope: !1024)
!1042 = !DILocation(line: 61, column: 7, scope: !1007)
!1043 = !DILocation(line: 67, column: 11, scope: !1022)
!1044 = !DILocation(line: 68, column: 11, scope: !1022)
!1045 = !DILocation(line: 72, column: 13, scope: !1021)
!1046 = !DILocation(line: 72, column: 21, scope: !1021)
!1047 = !DILocation(line: 73, column: 13, scope: !1021)
!1048 = !DILocation(line: 74, column: 29, scope: !1021)
!1049 = !DILocation(line: 74, column: 13, scope: !1021)
!1050 = !DILocation(line: 75, column: 13, scope: !1021)
!1051 = !DILocation(line: 85, column: 10, scope: !1007)
!1052 = !DILocation(line: 89, column: 10, scope: !1007)
!1053 = !DILocation(line: 90, column: 1, scope: !1007)
!1054 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!23, !23, !1057, !6, !1059, !37}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1060 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !1061, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !23, !152, !6, !6, !6, !16, !1010, null}
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1064 = !DILocalVariable(name: "argc", arg: 1, scope: !1060, file: !27, line: 98, type: !23)
!1065 = !DILocalVariable(name: "argv", arg: 2, scope: !1060, file: !27, line: 99, type: !152)
!1066 = !DILocalVariable(name: "command_name", arg: 3, scope: !1060, file: !27, line: 100, type: !6)
!1067 = !DILocalVariable(name: "package", arg: 4, scope: !1060, file: !27, line: 101, type: !6)
!1068 = !DILocalVariable(name: "version", arg: 5, scope: !1060, file: !27, line: 102, type: !6)
!1069 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1060, file: !27, line: 103, type: !16)
!1070 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1060, file: !27, line: 104, type: !1010)
!1071 = !DILocalVariable(name: "c", scope: !1060, file: !27, line: 107, type: !23)
!1072 = !DILocalVariable(name: "saved_opterr", scope: !1060, file: !27, line: 108, type: !23)
!1073 = !DILocalVariable(name: "optstring", scope: !1060, file: !27, line: 113, type: !6)
!1074 = !DILocalVariable(name: "authors", scope: !1075, file: !27, line: 125, type: !1025)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !27, line: 124, column: 11)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !27, line: 118, column: 9)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !27, line: 116, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1060, file: !27, line: 115, column: 7)
!1079 = !DILocation(line: 0, scope: !1060)
!1080 = !DILocation(line: 108, column: 22, scope: !1060)
!1081 = !DILocation(line: 111, column: 10, scope: !1060)
!1082 = !DILocation(line: 113, column: 27, scope: !1060)
!1083 = !DILocation(line: 115, column: 12, scope: !1078)
!1084 = !DILocation(line: 115, column: 7, scope: !1060)
!1085 = !DILocation(line: 125, column: 13, scope: !1075)
!1086 = !DILocation(line: 125, column: 21, scope: !1075)
!1087 = !DILocation(line: 126, column: 13, scope: !1075)
!1088 = !DILocation(line: 127, column: 29, scope: !1075)
!1089 = !DILocation(line: 127, column: 13, scope: !1075)
!1090 = !DILocation(line: 128, column: 13, scope: !1075)
!1091 = !DILocation(line: 132, column: 26, scope: !1076)
!1092 = !DILocation(line: 133, column: 11, scope: !1076)
!1093 = !DILocation(line: 0, scope: !1076)
!1094 = !DILocation(line: 138, column: 10, scope: !1060)
!1095 = !DILocation(line: 139, column: 1, scope: !1060)
!1096 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !626, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DILocalVariable(name: "argv0", arg: 1, scope: !1096, file: !44, line: 39, type: !6)
!1099 = !DILocalVariable(name: "slash", scope: !1096, file: !44, line: 46, type: !6)
!1100 = !DILocalVariable(name: "base", scope: !1096, file: !44, line: 47, type: !6)
!1101 = !DILocation(line: 0, scope: !1096)
!1102 = !DILocation(line: 51, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !44, line: 51, column: 7)
!1104 = !DILocation(line: 51, column: 7, scope: !1096)
!1105 = !DILocation(line: 55, column: 14, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !44, line: 52, column: 5)
!1107 = !DILocation(line: 54, column: 7, scope: !1106)
!1108 = !DILocation(line: 56, column: 7, scope: !1106)
!1109 = !DILocation(line: 59, column: 11, scope: !1096)
!1110 = !DILocation(line: 60, column: 17, scope: !1096)
!1111 = !DILocation(line: 60, column: 11, scope: !1096)
!1112 = !DILocation(line: 61, column: 12, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1096, file: !44, line: 61, column: 7)
!1114 = !DILocation(line: 61, column: 20, scope: !1113)
!1115 = !DILocation(line: 61, column: 25, scope: !1113)
!1116 = !DILocation(line: 61, column: 42, scope: !1113)
!1117 = !DILocation(line: 61, column: 28, scope: !1113)
!1118 = !DILocation(line: 61, column: 61, scope: !1113)
!1119 = !DILocation(line: 61, column: 7, scope: !1096)
!1120 = !DILocation(line: 64, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !44, line: 64, column: 11)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !44, line: 62, column: 5)
!1123 = !DILocation(line: 64, column: 36, scope: !1121)
!1124 = !DILocation(line: 64, column: 11, scope: !1122)
!1125 = !DILocation(line: 66, column: 24, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !44, line: 65, column: 9)
!1127 = !DILocation(line: 70, column: 41, scope: !1126)
!1128 = !DILocation(line: 72, column: 9, scope: !1126)
!1129 = !DILocation(line: 84, column: 16, scope: !1096)
!1130 = !DILocation(line: 90, column: 27, scope: !1096)
!1131 = !DILocation(line: 92, column: 1, scope: !1096)
!1132 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !1133, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1136)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1135, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "o", arg: 1, scope: !1132, file: !52, line: 122, type: !1135)
!1138 = !DILocalVariable(name: "e", scope: !1132, file: !52, line: 124, type: !23)
!1139 = !DILocalVariable(name: "p", scope: !1132, file: !52, line: 125, type: !1135)
!1140 = !DILocation(line: 0, scope: !1132)
!1141 = !DILocation(line: 124, column: 11, scope: !1132)
!1142 = !DILocation(line: 125, column: 40, scope: !1132)
!1143 = !DILocation(line: 125, column: 31, scope: !1132)
!1144 = !DILocation(line: 127, column: 9, scope: !1132)
!1145 = !DILocation(line: 128, column: 3, scope: !1132)
!1146 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !1147, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1151)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!54, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "o", arg: 1, scope: !1146, file: !52, line: 133, type: !1149)
!1153 = !DILocation(line: 0, scope: !1146)
!1154 = !DILocation(line: 135, column: 11, scope: !1146)
!1155 = !DILocation(line: 135, column: 46, scope: !1146)
!1156 = !{!1157, !616, i64 0}
!1157 = !{!"quoting_options", !616, i64 0, !757, i64 4, !616, i64 8, !615, i64 40, !615, i64 48}
!1158 = !DILocation(line: 135, column: 3, scope: !1146)
!1159 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !1160, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1135, !54}
!1162 = !{!1163, !1164}
!1163 = !DILocalVariable(name: "o", arg: 1, scope: !1159, file: !52, line: 141, type: !1135)
!1164 = !DILocalVariable(name: "s", arg: 2, scope: !1159, file: !52, line: 141, type: !54)
!1165 = !DILocation(line: 0, scope: !1159)
!1166 = !DILocation(line: 143, column: 4, scope: !1159)
!1167 = !DILocation(line: 143, column: 39, scope: !1159)
!1168 = !DILocation(line: 143, column: 45, scope: !1159)
!1169 = !DILocation(line: 144, column: 1, scope: !1159)
!1170 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1171, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!23, !1135, !8, !23}
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1180, !1181}
!1174 = !DILocalVariable(name: "o", arg: 1, scope: !1170, file: !52, line: 152, type: !1135)
!1175 = !DILocalVariable(name: "c", arg: 2, scope: !1170, file: !52, line: 152, type: !8)
!1176 = !DILocalVariable(name: "i", arg: 3, scope: !1170, file: !52, line: 152, type: !23)
!1177 = !DILocalVariable(name: "uc", scope: !1170, file: !52, line: 154, type: !153)
!1178 = !DILocalVariable(name: "p", scope: !1170, file: !52, line: 155, type: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1180 = !DILocalVariable(name: "shift", scope: !1170, file: !52, line: 157, type: !23)
!1181 = !DILocalVariable(name: "r", scope: !1170, file: !52, line: 158, type: !23)
!1182 = !DILocation(line: 0, scope: !1170)
!1183 = !DILocation(line: 156, column: 6, scope: !1170)
!1184 = !DILocation(line: 156, column: 62, scope: !1170)
!1185 = !DILocation(line: 156, column: 57, scope: !1170)
!1186 = !DILocation(line: 157, column: 15, scope: !1170)
!1187 = !DILocation(line: 158, column: 12, scope: !1170)
!1188 = !DILocation(line: 158, column: 15, scope: !1170)
!1189 = !DILocation(line: 158, column: 25, scope: !1170)
!1190 = !DILocation(line: 159, column: 13, scope: !1170)
!1191 = !DILocation(line: 159, column: 18, scope: !1170)
!1192 = !DILocation(line: 159, column: 23, scope: !1170)
!1193 = !DILocation(line: 159, column: 6, scope: !1170)
!1194 = !DILocation(line: 160, column: 3, scope: !1170)
!1195 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1196, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!23, !1135, !23}
!1198 = !{!1199, !1200, !1201}
!1199 = !DILocalVariable(name: "o", arg: 1, scope: !1195, file: !52, line: 168, type: !1135)
!1200 = !DILocalVariable(name: "i", arg: 2, scope: !1195, file: !52, line: 168, type: !23)
!1201 = !DILocalVariable(name: "r", scope: !1195, file: !52, line: 170, type: !23)
!1202 = !DILocation(line: 0, scope: !1195)
!1203 = !DILocation(line: 171, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1195, file: !52, line: 171, column: 7)
!1205 = !DILocation(line: 171, column: 7, scope: !1195)
!1206 = !DILocation(line: 173, column: 10, scope: !1195)
!1207 = !{!1157, !757, i64 4}
!1208 = !DILocation(line: 174, column: 12, scope: !1195)
!1209 = !DILocation(line: 175, column: 3, scope: !1195)
!1210 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1211, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !1135, !6, !6}
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "o", arg: 1, scope: !1210, file: !52, line: 179, type: !1135)
!1215 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1210, file: !52, line: 180, type: !6)
!1216 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1210, file: !52, line: 180, type: !6)
!1217 = !DILocation(line: 0, scope: !1210)
!1218 = !DILocation(line: 182, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !52, line: 182, column: 7)
!1220 = !DILocation(line: 182, column: 7, scope: !1210)
!1221 = !DILocation(line: 184, column: 6, scope: !1210)
!1222 = !DILocation(line: 184, column: 12, scope: !1210)
!1223 = !DILocation(line: 185, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !52, line: 185, column: 7)
!1225 = !DILocation(line: 185, column: 19, scope: !1224)
!1226 = !DILocation(line: 186, column: 5, scope: !1224)
!1227 = !DILocation(line: 187, column: 6, scope: !1210)
!1228 = !DILocation(line: 187, column: 17, scope: !1210)
!1229 = !{!1157, !615, i64 40}
!1230 = !DILocation(line: 188, column: 6, scope: !1210)
!1231 = !DILocation(line: 188, column: 18, scope: !1210)
!1232 = !{!1157, !615, i64 48}
!1233 = !DILocation(line: 189, column: 1, scope: !1210)
!1234 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1235, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!91, !47, !91, !6, !91, !1149}
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1238 = !DILocalVariable(name: "buffer", arg: 1, scope: !1234, file: !52, line: 784, type: !47)
!1239 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1234, file: !52, line: 784, type: !91)
!1240 = !DILocalVariable(name: "arg", arg: 3, scope: !1234, file: !52, line: 785, type: !6)
!1241 = !DILocalVariable(name: "argsize", arg: 4, scope: !1234, file: !52, line: 785, type: !91)
!1242 = !DILocalVariable(name: "o", arg: 5, scope: !1234, file: !52, line: 786, type: !1149)
!1243 = !DILocalVariable(name: "p", scope: !1234, file: !52, line: 788, type: !1149)
!1244 = !DILocalVariable(name: "e", scope: !1234, file: !52, line: 789, type: !23)
!1245 = !DILocalVariable(name: "r", scope: !1234, file: !52, line: 790, type: !91)
!1246 = !DILocation(line: 0, scope: !1234)
!1247 = !DILocation(line: 788, column: 37, scope: !1234)
!1248 = !DILocation(line: 789, column: 11, scope: !1234)
!1249 = !DILocation(line: 791, column: 43, scope: !1234)
!1250 = !DILocation(line: 791, column: 53, scope: !1234)
!1251 = !DILocation(line: 791, column: 60, scope: !1234)
!1252 = !DILocation(line: 792, column: 43, scope: !1234)
!1253 = !DILocation(line: 792, column: 58, scope: !1234)
!1254 = !DILocation(line: 790, column: 14, scope: !1234)
!1255 = !DILocation(line: 793, column: 9, scope: !1234)
!1256 = !DILocation(line: 794, column: 3, scope: !1234)
!1257 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1258, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1262)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!91, !47, !91, !6, !91, !54, !23, !1260, !6, !6}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1287, !1288, !1289, !1290, !1291, !1294, !1295, !1310, !1313, !1314, !1321, !1324, !1325, !1326, !1327, !1328, !1329}
!1263 = !DILocalVariable(name: "buffer", arg: 1, scope: !1257, file: !52, line: 256, type: !47)
!1264 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1257, file: !52, line: 256, type: !91)
!1265 = !DILocalVariable(name: "arg", arg: 3, scope: !1257, file: !52, line: 257, type: !6)
!1266 = !DILocalVariable(name: "argsize", arg: 4, scope: !1257, file: !52, line: 257, type: !91)
!1267 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1257, file: !52, line: 258, type: !54)
!1268 = !DILocalVariable(name: "flags", arg: 6, scope: !1257, file: !52, line: 258, type: !23)
!1269 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1257, file: !52, line: 259, type: !1260)
!1270 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1257, file: !52, line: 260, type: !6)
!1271 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1257, file: !52, line: 261, type: !6)
!1272 = !DILocalVariable(name: "i", scope: !1257, file: !52, line: 263, type: !91)
!1273 = !DILocalVariable(name: "len", scope: !1257, file: !52, line: 264, type: !91)
!1274 = !DILocalVariable(name: "orig_buffersize", scope: !1257, file: !52, line: 265, type: !91)
!1275 = !DILocalVariable(name: "quote_string", scope: !1257, file: !52, line: 266, type: !6)
!1276 = !DILocalVariable(name: "quote_string_len", scope: !1257, file: !52, line: 267, type: !91)
!1277 = !DILocalVariable(name: "backslash_escapes", scope: !1257, file: !52, line: 268, type: !16)
!1278 = !DILocalVariable(name: "unibyte_locale", scope: !1257, file: !52, line: 269, type: !16)
!1279 = !DILocalVariable(name: "elide_outer_quotes", scope: !1257, file: !52, line: 270, type: !16)
!1280 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1257, file: !52, line: 271, type: !16)
!1281 = !DILocalVariable(name: "encountered_single_quote", scope: !1257, file: !52, line: 272, type: !16)
!1282 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1257, file: !52, line: 273, type: !16)
!1283 = !DILocalVariable(name: "c", scope: !1284, file: !52, line: 402, type: !153)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !52, line: 401, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !52, line: 400, column: 3)
!1286 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 400, column: 3)
!1287 = !DILocalVariable(name: "esc", scope: !1284, file: !52, line: 403, type: !153)
!1288 = !DILocalVariable(name: "is_right_quote", scope: !1284, file: !52, line: 404, type: !16)
!1289 = !DILocalVariable(name: "escaping", scope: !1284, file: !52, line: 405, type: !16)
!1290 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1284, file: !52, line: 406, type: !16)
!1291 = !DILocalVariable(name: "m", scope: !1292, file: !52, line: 610, type: !91)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 608, column: 11)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 426, column: 9)
!1294 = !DILocalVariable(name: "printable", scope: !1292, file: !52, line: 612, type: !16)
!1295 = !DILocalVariable(name: "mbstate", scope: !1296, file: !52, line: 621, type: !1298)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !52, line: 620, column: 15)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !52, line: 614, column: 17)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1299, line: 6, baseType: !1300)
!1299 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1301, line: 21, baseType: !1302)
!1301 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1301, line: 13, size: 64, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1302, file: !1301, line: 15, baseType: !23, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1302, file: !1301, line: 20, baseType: !1306, size: 32, offset: 32)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !1301, line: 16, size: 32, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1306, file: !1301, line: 18, baseType: !56, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1306, file: !1301, line: 19, baseType: !809, size: 32)
!1310 = !DILocalVariable(name: "w", scope: !1311, file: !52, line: 631, type: !1312)
!1311 = distinct !DILexicalBlock(scope: !1296, file: !52, line: 630, column: 19)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1313 = !DILocalVariable(name: "bytes", scope: !1311, file: !52, line: 632, type: !91)
!1314 = !DILocalVariable(name: "j", scope: !1315, file: !52, line: 657, type: !91)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !52, line: 656, column: 27)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !52, line: 654, column: 29)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 649, column: 23)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !52, line: 641, column: 30)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !52, line: 636, column: 30)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !52, line: 634, column: 25)
!1321 = !DILocalVariable(name: "ilim", scope: !1322, file: !52, line: 684, type: !91)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !52, line: 681, column: 15)
!1323 = distinct !DILexicalBlock(scope: !1292, file: !52, line: 680, column: 17)
!1324 = !DILabel(scope: !1257, name: "process_input", file: !52, line: 314)
!1325 = !DILabel(scope: !1293, name: "c_and_shell_escape", file: !52, line: 512)
!1326 = !DILabel(scope: !1293, name: "c_escape", file: !52, line: 517)
!1327 = !DILabel(scope: !1284, name: "store_escape", file: !52, line: 719)
!1328 = !DILabel(scope: !1284, name: "store_c", file: !52, line: 722)
!1329 = !DILabel(scope: !1257, name: "force_outer_quoting_style", file: !52, line: 763)
!1330 = !DILocation(line: 0, scope: !1257)
!1331 = !DILocation(line: 269, column: 25, scope: !1257)
!1332 = !DILocation(line: 269, column: 36, scope: !1257)
!1333 = !DILocation(line: 270, column: 8, scope: !1257)
!1334 = !DILocation(line: 273, column: 3, scope: !1257)
!1335 = !DILocation(line: 265, column: 10, scope: !1257)
!1336 = !DILocation(line: 266, column: 15, scope: !1257)
!1337 = !DILocation(line: 267, column: 10, scope: !1257)
!1338 = !DILocation(line: 268, column: 8, scope: !1257)
!1339 = !DILocation(line: 271, column: 8, scope: !1257)
!1340 = !DILocation(line: 272, column: 8, scope: !1257)
!1341 = !DILocation(line: 273, column: 8, scope: !1257)
!1342 = !DILocation(line: 314, column: 2, scope: !1257)
!1343 = !DILocation(line: 316, column: 3, scope: !1257)
!1344 = !DILocation(line: 323, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 317, column: 5)
!1346 = !DILocation(line: 323, column: 12, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !52, line: 323, column: 11)
!1348 = !DILocation(line: 324, column: 9, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !52, line: 324, column: 9)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !52, line: 324, column: 9)
!1351 = !DILocation(line: 324, column: 9, scope: !1350)
!1352 = !DILocation(line: 362, column: 26, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !52, line: 340, column: 11)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !52, line: 339, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1345, file: !52, line: 338, column: 7)
!1356 = !DILocation(line: 363, column: 27, scope: !1353)
!1357 = !DILocation(line: 364, column: 11, scope: !1353)
!1358 = !DILocation(line: 365, column: 14, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !52, line: 365, column: 13)
!1360 = !DILocation(line: 365, column: 13, scope: !1355)
!1361 = !DILocation(line: 366, column: 43, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !52, line: 366, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !52, line: 366, column: 11)
!1364 = !DILocation(line: 366, column: 11, scope: !1363)
!1365 = !DILocation(line: 367, column: 13, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !52, line: 367, column: 13)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !52, line: 367, column: 13)
!1368 = !DILocation(line: 367, column: 13, scope: !1367)
!1369 = !DILocation(line: 366, column: 70, scope: !1362)
!1370 = distinct !{!1370, !1364, !1371, !656}
!1371 = !DILocation(line: 367, column: 13, scope: !1363)
!1372 = !DILocation(line: 264, column: 10, scope: !1257)
!1373 = !DILocation(line: 370, column: 28, scope: !1355)
!1374 = !DILocation(line: 372, column: 7, scope: !1345)
!1375 = !DILocation(line: 376, column: 7, scope: !1345)
!1376 = !DILocation(line: 379, column: 7, scope: !1345)
!1377 = !DILocation(line: 381, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1345, file: !52, line: 381, column: 11)
!1379 = !DILocation(line: 381, column: 11, scope: !1345)
!1380 = !DILocation(line: 386, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1345, file: !52, line: 386, column: 11)
!1382 = !DILocation(line: 386, column: 11, scope: !1345)
!1383 = !DILocation(line: 387, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !52, line: 387, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !52, line: 387, column: 9)
!1386 = !DILocation(line: 387, column: 9, scope: !1385)
!1387 = !DILocation(line: 394, column: 7, scope: !1345)
!1388 = !DILocation(line: 397, column: 7, scope: !1345)
!1389 = !DILocation(line: 400, column: 8, scope: !1286)
!1390 = !DILocation(line: 0, scope: !1286)
!1391 = !DILocation(line: 400, column: 27, scope: !1285)
!1392 = !DILocation(line: 400, column: 19, scope: !1285)
!1393 = !DILocation(line: 400, column: 41, scope: !1285)
!1394 = !DILocation(line: 400, column: 48, scope: !1285)
!1395 = !DILocation(line: 400, column: 3, scope: !1286)
!1396 = !DILocation(line: 400, column: 60, scope: !1285)
!1397 = !DILocation(line: 0, scope: !1284)
!1398 = !DILocation(line: 409, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 408, column: 11)
!1400 = !DILocation(line: 411, column: 17, scope: !1399)
!1401 = !DILocation(line: 412, column: 39, scope: !1399)
!1402 = !DILocation(line: 416, column: 32, scope: !1399)
!1403 = !DILocation(line: 412, column: 19, scope: !1399)
!1404 = !DILocation(line: 412, column: 15, scope: !1399)
!1405 = !DILocation(line: 417, column: 11, scope: !1399)
!1406 = !DILocation(line: 417, column: 26, scope: !1399)
!1407 = !DILocation(line: 417, column: 14, scope: !1399)
!1408 = !DILocation(line: 417, column: 63, scope: !1399)
!1409 = !DILocation(line: 408, column: 11, scope: !1284)
!1410 = !DILocation(line: 424, column: 11, scope: !1284)
!1411 = !DILocation(line: 425, column: 7, scope: !1284)
!1412 = !DILocation(line: 428, column: 15, scope: !1293)
!1413 = !DILocation(line: 430, column: 15, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !52, line: 430, column: 15)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !52, line: 429, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 428, column: 15)
!1417 = !DILocation(line: 430, column: 15, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !52, line: 430, column: 15)
!1419 = !DILocation(line: 430, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !52, line: 430, column: 15)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !52, line: 430, column: 15)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !52, line: 430, column: 15)
!1423 = !DILocation(line: 430, column: 15, scope: !1421)
!1424 = !DILocation(line: 430, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !52, line: 430, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !52, line: 430, column: 15)
!1427 = !DILocation(line: 430, column: 15, scope: !1426)
!1428 = !DILocation(line: 430, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !52, line: 430, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !52, line: 430, column: 15)
!1431 = !DILocation(line: 430, column: 15, scope: !1430)
!1432 = !DILocation(line: 430, column: 15, scope: !1422)
!1433 = !DILocation(line: 430, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !52, line: 430, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1414, file: !52, line: 430, column: 15)
!1436 = !DILocation(line: 430, column: 15, scope: !1435)
!1437 = !DILocation(line: 438, column: 19, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1415, file: !52, line: 437, column: 19)
!1439 = !DILocation(line: 438, column: 48, scope: !1438)
!1440 = !DILocation(line: 438, column: 59, scope: !1438)
!1441 = !DILocation(line: 440, column: 19, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 440, column: 19)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 440, column: 19)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !52, line: 439, column: 17)
!1445 = !DILocation(line: 440, column: 19, scope: !1443)
!1446 = !DILocation(line: 441, column: 19, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !52, line: 441, column: 19)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !52, line: 441, column: 19)
!1449 = !DILocation(line: 441, column: 19, scope: !1448)
!1450 = !DILocation(line: 442, column: 17, scope: !1444)
!1451 = !DILocation(line: 449, column: 20, scope: !1416)
!1452 = !DILocation(line: 454, column: 11, scope: !1293)
!1453 = !DILocation(line: 457, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 455, column: 13)
!1455 = !DILocation(line: 463, column: 19, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !52, line: 462, column: 19)
!1457 = !DILocation(line: 463, column: 47, scope: !1456)
!1458 = !DILocation(line: 463, column: 41, scope: !1456)
!1459 = !DILocation(line: 463, column: 52, scope: !1456)
!1460 = !DILocation(line: 462, column: 19, scope: !1454)
!1461 = !DILocation(line: 464, column: 25, scope: !1456)
!1462 = !DILocation(line: 464, column: 17, scope: !1456)
!1463 = !DILocation(line: 471, column: 25, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !52, line: 465, column: 19)
!1465 = !DILocation(line: 475, column: 21, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !52, line: 475, column: 21)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !52, line: 475, column: 21)
!1468 = !DILocation(line: 475, column: 21, scope: !1467)
!1469 = !DILocation(line: 476, column: 21, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !52, line: 476, column: 21)
!1471 = distinct !DILexicalBlock(scope: !1464, file: !52, line: 476, column: 21)
!1472 = !DILocation(line: 476, column: 21, scope: !1471)
!1473 = !DILocation(line: 477, column: 21, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !52, line: 477, column: 21)
!1475 = distinct !DILexicalBlock(scope: !1464, file: !52, line: 477, column: 21)
!1476 = !DILocation(line: 477, column: 21, scope: !1475)
!1477 = !DILocation(line: 478, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !52, line: 478, column: 21)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !52, line: 478, column: 21)
!1480 = !DILocation(line: 478, column: 21, scope: !1479)
!1481 = !DILocation(line: 479, column: 21, scope: !1464)
!1482 = !DILocation(line: 492, column: 31, scope: !1293)
!1483 = !DILocation(line: 493, column: 31, scope: !1293)
!1484 = !DILocation(line: 495, column: 31, scope: !1293)
!1485 = !DILocation(line: 496, column: 31, scope: !1293)
!1486 = !DILocation(line: 497, column: 31, scope: !1293)
!1487 = !DILocation(line: 500, column: 15, scope: !1293)
!1488 = !DILocation(line: 502, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !52, line: 501, column: 13)
!1490 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 500, column: 15)
!1491 = !DILocation(line: 509, column: 33, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 509, column: 15)
!1493 = !DILocation(line: 0, scope: !1293)
!1494 = !DILocation(line: 512, column: 9, scope: !1293)
!1495 = !DILocation(line: 514, column: 15, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 513, column: 15)
!1497 = !DILocation(line: 517, column: 9, scope: !1293)
!1498 = !DILocation(line: 518, column: 15, scope: !1293)
!1499 = !DILocation(line: 526, column: 15, scope: !1293)
!1500 = !DILocation(line: 526, column: 40, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 526, column: 15)
!1502 = !DILocation(line: 526, column: 47, scope: !1501)
!1503 = !DILocation(line: 526, column: 18, scope: !1501)
!1504 = !DILocation(line: 530, column: 17, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 530, column: 15)
!1506 = !DILocation(line: 530, column: 15, scope: !1293)
!1507 = !DILocation(line: 535, column: 11, scope: !1293)
!1508 = !DILocation(line: 549, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 548, column: 15)
!1510 = !DILocation(line: 556, column: 15, scope: !1293)
!1511 = !DILocation(line: 558, column: 19, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !52, line: 557, column: 13)
!1513 = distinct !DILexicalBlock(scope: !1293, file: !52, line: 556, column: 15)
!1514 = !DILocation(line: 561, column: 19, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !52, line: 561, column: 19)
!1516 = !DILocation(line: 561, column: 30, scope: !1515)
!1517 = !DILocation(line: 570, column: 15, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !52, line: 570, column: 15)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !52, line: 570, column: 15)
!1520 = !DILocation(line: 570, column: 15, scope: !1519)
!1521 = !DILocation(line: 571, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !52, line: 571, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1512, file: !52, line: 571, column: 15)
!1524 = !DILocation(line: 571, column: 15, scope: !1523)
!1525 = !DILocation(line: 572, column: 15, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !52, line: 572, column: 15)
!1527 = distinct !DILexicalBlock(scope: !1512, file: !52, line: 572, column: 15)
!1528 = !DILocation(line: 572, column: 15, scope: !1527)
!1529 = !DILocation(line: 574, column: 13, scope: !1512)
!1530 = !DILocation(line: 614, column: 17, scope: !1292)
!1531 = !DILocation(line: 0, scope: !1292)
!1532 = !DILocation(line: 617, column: 29, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1297, file: !52, line: 615, column: 15)
!1534 = !{!885, !885, i64 0}
!1535 = !DILocation(line: 617, column: 27, scope: !1533)
!1536 = !DILocation(line: 678, column: 40, scope: !1292)
!1537 = !DILocation(line: 680, column: 23, scope: !1323)
!1538 = !DILocation(line: 621, column: 17, scope: !1296)
!1539 = !DILocation(line: 621, column: 27, scope: !1296)
!1540 = !DILocalVariable(name: "__dest", arg: 1, scope: !1541, file: !1542, line: 57, type: !46)
!1541 = distinct !DISubprogram(name: "memset", scope: !1542, file: !1542, line: 57, type: !1543, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1545)
!1542 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!46, !46, !23, !91}
!1545 = !{!1540, !1546, !1547}
!1546 = !DILocalVariable(name: "__ch", arg: 2, scope: !1541, file: !1542, line: 57, type: !23)
!1547 = !DILocalVariable(name: "__len", arg: 3, scope: !1541, file: !1542, line: 57, type: !91)
!1548 = !DILocation(line: 0, scope: !1541, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 622, column: 17, scope: !1296)
!1550 = !DILocation(line: 59, column: 10, scope: !1541, inlinedAt: !1549)
!1551 = !DILocation(line: 626, column: 29, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1296, file: !52, line: 626, column: 21)
!1553 = !DILocation(line: 626, column: 21, scope: !1296)
!1554 = !DILocation(line: 627, column: 29, scope: !1552)
!1555 = !DILocation(line: 627, column: 19, scope: !1552)
!1556 = !DILocation(line: 629, column: 17, scope: !1296)
!1557 = !DILocation(line: 624, column: 19, scope: !1296)
!1558 = !DILocation(line: 625, column: 27, scope: !1296)
!1559 = !DILocation(line: 631, column: 21, scope: !1311)
!1560 = !DILocation(line: 632, column: 56, scope: !1311)
!1561 = !DILocation(line: 632, column: 50, scope: !1311)
!1562 = !DILocation(line: 633, column: 53, scope: !1311)
!1563 = !DILocation(line: 0, scope: !1311)
!1564 = !DILocation(line: 632, column: 36, scope: !1311)
!1565 = !DILocation(line: 634, column: 25, scope: !1311)
!1566 = !DILocation(line: 644, column: 38, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1318, file: !52, line: 642, column: 23)
!1568 = !DILocation(line: 644, column: 48, scope: !1567)
!1569 = !DILocation(line: 644, column: 25, scope: !1567)
!1570 = !DILocation(line: 644, column: 51, scope: !1567)
!1571 = !DILocation(line: 645, column: 28, scope: !1567)
!1572 = !DILocation(line: 644, column: 34, scope: !1567)
!1573 = distinct !{!1573, !1569, !1571, !656}
!1574 = !DILocation(line: 655, column: 29, scope: !1316)
!1575 = !DILocation(line: 0, scope: !1315)
!1576 = !DILocation(line: 659, column: 49, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !52, line: 658, column: 29)
!1578 = distinct !DILexicalBlock(scope: !1315, file: !52, line: 658, column: 29)
!1579 = !DILocation(line: 659, column: 39, scope: !1577)
!1580 = !DILocation(line: 659, column: 31, scope: !1577)
!1581 = !DILocation(line: 658, column: 53, scope: !1577)
!1582 = !DILocation(line: 658, column: 43, scope: !1577)
!1583 = !DILocation(line: 658, column: 29, scope: !1578)
!1584 = distinct !{!1584, !1583, !1585, !656}
!1585 = !DILocation(line: 667, column: 33, scope: !1578)
!1586 = !DILocation(line: 674, column: 19, scope: !1296)
!1587 = !DILocation(line: 670, column: 41, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1317, file: !52, line: 670, column: 29)
!1589 = !DILocation(line: 670, column: 31, scope: !1588)
!1590 = !DILocation(line: 670, column: 29, scope: !1317)
!1591 = !DILocation(line: 672, column: 27, scope: !1317)
!1592 = !DILocation(line: 675, column: 26, scope: !1296)
!1593 = !DILocation(line: 675, column: 24, scope: !1296)
!1594 = !DILocation(line: 674, column: 19, scope: !1311)
!1595 = distinct !{!1595, !1556, !1596, !656}
!1596 = !DILocation(line: 675, column: 44, scope: !1296)
!1597 = !DILocation(line: 676, column: 15, scope: !1297)
!1598 = !DILocation(line: 680, column: 19, scope: !1323)
!1599 = !DILocation(line: 680, column: 45, scope: !1323)
!1600 = !DILocation(line: 684, column: 33, scope: !1322)
!1601 = !DILocation(line: 0, scope: !1322)
!1602 = !DILocation(line: 686, column: 17, scope: !1322)
!1603 = !DILocation(line: 405, column: 12, scope: !1284)
!1604 = !DILocation(line: 688, column: 43, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !52, line: 688, column: 25)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !52, line: 687, column: 19)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !52, line: 686, column: 17)
!1608 = distinct !DILexicalBlock(scope: !1322, file: !52, line: 686, column: 17)
!1609 = !DILocation(line: 690, column: 25, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 690, column: 25)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !52, line: 689, column: 23)
!1612 = !DILocation(line: 690, column: 25, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !52, line: 690, column: 25)
!1614 = !DILocation(line: 690, column: 25, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !52, line: 690, column: 25)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 690, column: 25)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !52, line: 690, column: 25)
!1618 = !DILocation(line: 690, column: 25, scope: !1616)
!1619 = !DILocation(line: 690, column: 25, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !52, line: 690, column: 25)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 690, column: 25)
!1622 = !DILocation(line: 690, column: 25, scope: !1621)
!1623 = !DILocation(line: 690, column: 25, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !52, line: 690, column: 25)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !52, line: 690, column: 25)
!1626 = !DILocation(line: 690, column: 25, scope: !1625)
!1627 = !DILocation(line: 690, column: 25, scope: !1617)
!1628 = !DILocation(line: 690, column: 25, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !52, line: 690, column: 25)
!1630 = distinct !DILexicalBlock(scope: !1610, file: !52, line: 690, column: 25)
!1631 = !DILocation(line: 690, column: 25, scope: !1630)
!1632 = !DILocation(line: 691, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !52, line: 691, column: 25)
!1634 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 691, column: 25)
!1635 = !DILocation(line: 691, column: 25, scope: !1634)
!1636 = !DILocation(line: 692, column: 25, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !52, line: 692, column: 25)
!1638 = distinct !DILexicalBlock(scope: !1611, file: !52, line: 692, column: 25)
!1639 = !DILocation(line: 692, column: 25, scope: !1638)
!1640 = !DILocation(line: 693, column: 38, scope: !1611)
!1641 = !DILocation(line: 693, column: 33, scope: !1611)
!1642 = !DILocation(line: 694, column: 23, scope: !1611)
!1643 = !DILocation(line: 695, column: 30, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1605, file: !52, line: 695, column: 30)
!1645 = !DILocation(line: 695, column: 30, scope: !1605)
!1646 = !DILocation(line: 697, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !52, line: 697, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !52, line: 697, column: 25)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !52, line: 696, column: 23)
!1650 = !DILocation(line: 697, column: 25, scope: !1648)
!1651 = !DILocation(line: 699, column: 23, scope: !1649)
!1652 = !DILocation(line: 700, column: 35, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1606, file: !52, line: 700, column: 25)
!1654 = !DILocation(line: 700, column: 30, scope: !1653)
!1655 = !DILocation(line: 700, column: 25, scope: !1606)
!1656 = !DILocation(line: 702, column: 21, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !52, line: 702, column: 21)
!1658 = distinct !DILexicalBlock(scope: !1606, file: !52, line: 702, column: 21)
!1659 = !DILocation(line: 702, column: 21, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !52, line: 702, column: 21)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !52, line: 702, column: 21)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !52, line: 702, column: 21)
!1663 = !DILocation(line: 702, column: 21, scope: !1661)
!1664 = !DILocation(line: 702, column: 21, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !52, line: 702, column: 21)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !52, line: 702, column: 21)
!1667 = !DILocation(line: 702, column: 21, scope: !1666)
!1668 = !DILocation(line: 702, column: 21, scope: !1662)
!1669 = !DILocation(line: 0, scope: !1606)
!1670 = !DILocation(line: 703, column: 21, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !52, line: 703, column: 21)
!1672 = distinct !DILexicalBlock(scope: !1606, file: !52, line: 703, column: 21)
!1673 = !DILocation(line: 703, column: 21, scope: !1672)
!1674 = !DILocation(line: 704, column: 25, scope: !1606)
!1675 = !DILocation(line: 686, column: 17, scope: !1607)
!1676 = distinct !{!1676, !1677, !1678}
!1677 = !DILocation(line: 686, column: 17, scope: !1608)
!1678 = !DILocation(line: 705, column: 19, scope: !1608)
!1679 = !DILocation(line: 416, column: 30, scope: !1399)
!1680 = !DILocation(line: 712, column: 34, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 712, column: 11)
!1682 = !DILocation(line: 715, column: 35, scope: !1681)
!1683 = !DILocation(line: 715, column: 17, scope: !1681)
!1684 = !DILocation(line: 715, column: 47, scope: !1681)
!1685 = !DILocation(line: 715, column: 65, scope: !1681)
!1686 = !DILocation(line: 716, column: 11, scope: !1681)
!1687 = !DILocation(line: 712, column: 11, scope: !1284)
!1688 = !DILocation(line: 400, column: 10, scope: !1286)
!1689 = !DILocation(line: 719, column: 5, scope: !1284)
!1690 = !DILocation(line: 720, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 720, column: 7)
!1692 = !DILocation(line: 720, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1691, file: !52, line: 720, column: 7)
!1694 = !DILocation(line: 720, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !52, line: 720, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !52, line: 720, column: 7)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !52, line: 720, column: 7)
!1698 = !DILocation(line: 720, column: 7, scope: !1696)
!1699 = !DILocation(line: 720, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !52, line: 720, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !52, line: 720, column: 7)
!1702 = !DILocation(line: 720, column: 7, scope: !1701)
!1703 = !DILocation(line: 720, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !52, line: 720, column: 7)
!1705 = distinct !DILexicalBlock(scope: !1697, file: !52, line: 720, column: 7)
!1706 = !DILocation(line: 720, column: 7, scope: !1705)
!1707 = !DILocation(line: 720, column: 7, scope: !1697)
!1708 = !DILocation(line: 720, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !52, line: 720, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1691, file: !52, line: 720, column: 7)
!1711 = !DILocation(line: 720, column: 7, scope: !1710)
!1712 = !DILocation(line: 722, column: 5, scope: !1284)
!1713 = !DILocation(line: 723, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !52, line: 723, column: 7)
!1715 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 723, column: 7)
!1716 = !DILocation(line: 424, column: 9, scope: !1284)
!1717 = !DILocation(line: 723, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !52, line: 723, column: 7)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !52, line: 723, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !52, line: 723, column: 7)
!1721 = !DILocation(line: 723, column: 7, scope: !1719)
!1722 = !DILocation(line: 723, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !52, line: 723, column: 7)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !52, line: 723, column: 7)
!1725 = !DILocation(line: 723, column: 7, scope: !1724)
!1726 = !DILocation(line: 723, column: 7, scope: !1720)
!1727 = !DILocation(line: 724, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !52, line: 724, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 724, column: 7)
!1730 = !DILocation(line: 724, column: 7, scope: !1729)
!1731 = !DILocation(line: 726, column: 13, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1284, file: !52, line: 726, column: 11)
!1733 = !DILocation(line: 726, column: 11, scope: !1284)
!1734 = !DILocation(line: 728, column: 5, scope: !1285)
!1735 = !DILocation(line: 400, column: 75, scope: !1285)
!1736 = !DILocation(line: 400, column: 3, scope: !1285)
!1737 = distinct !{!1737, !1395, !1738, !656}
!1738 = !DILocation(line: 728, column: 5, scope: !1286)
!1739 = !DILocation(line: 730, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 730, column: 7)
!1741 = !DILocation(line: 730, column: 16, scope: !1740)
!1742 = !DILocation(line: 738, column: 51, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 738, column: 7)
!1744 = !DILocation(line: 741, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !52, line: 741, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !52, line: 740, column: 5)
!1747 = !DILocation(line: 741, column: 11, scope: !1746)
!1748 = !DILocation(line: 742, column: 16, scope: !1745)
!1749 = !DILocation(line: 742, column: 9, scope: !1745)
!1750 = !DILocation(line: 746, column: 18, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !52, line: 746, column: 16)
!1752 = !DILocation(line: 746, column: 29, scope: !1751)
!1753 = !DILocation(line: 755, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 755, column: 7)
!1755 = !DILocation(line: 755, column: 20, scope: !1754)
!1756 = !DILocation(line: 756, column: 12, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !52, line: 756, column: 5)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !52, line: 756, column: 5)
!1759 = !DILocation(line: 756, column: 5, scope: !1758)
!1760 = !DILocation(line: 757, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !52, line: 757, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !52, line: 757, column: 7)
!1763 = !DILocation(line: 757, column: 7, scope: !1762)
!1764 = !DILocation(line: 756, column: 39, scope: !1757)
!1765 = distinct !{!1765, !1759, !1766, !656}
!1766 = !DILocation(line: 757, column: 7, scope: !1758)
!1767 = !DILocation(line: 759, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 759, column: 7)
!1769 = !DILocation(line: 759, column: 7, scope: !1257)
!1770 = !DILocation(line: 760, column: 5, scope: !1768)
!1771 = !DILocation(line: 760, column: 17, scope: !1768)
!1772 = !DILocation(line: 763, column: 2, scope: !1257)
!1773 = !DILocation(line: 766, column: 51, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1257, file: !52, line: 766, column: 7)
!1775 = !DILocation(line: 766, column: 21, scope: !1774)
!1776 = !DILocation(line: 770, column: 42, scope: !1257)
!1777 = !DILocation(line: 768, column: 10, scope: !1257)
!1778 = !DILocation(line: 768, column: 3, scope: !1257)
!1779 = !DILocation(line: 772, column: 1, scope: !1257)
!1780 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1781, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!6, !6, !54}
!1783 = !{!1784, !1785, !1786, !1787}
!1784 = !DILocalVariable(name: "msgid", arg: 1, scope: !1780, file: !52, line: 207, type: !6)
!1785 = !DILocalVariable(name: "s", arg: 2, scope: !1780, file: !52, line: 207, type: !54)
!1786 = !DILocalVariable(name: "translation", scope: !1780, file: !52, line: 209, type: !6)
!1787 = !DILocalVariable(name: "locale_code", scope: !1780, file: !52, line: 210, type: !6)
!1788 = !DILocation(line: 0, scope: !1780)
!1789 = !DILocation(line: 209, column: 29, scope: !1780)
!1790 = !DILocation(line: 212, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1780, file: !52, line: 212, column: 7)
!1792 = !DILocation(line: 212, column: 7, scope: !1780)
!1793 = !DILocation(line: 233, column: 17, scope: !1780)
!1794 = !DILocalVariable(name: "s1", arg: 1, scope: !1795, file: !1796, line: 160, type: !6)
!1795 = distinct !DISubprogram(name: "strcaseeq0", scope: !1796, file: !1796, line: 160, type: !1797, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1799)
!1796 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1799 = !{!1794, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1800 = !DILocalVariable(name: "s2", arg: 2, scope: !1795, file: !1796, line: 160, type: !6)
!1801 = !DILocalVariable(name: "s20", arg: 3, scope: !1795, file: !1796, line: 160, type: !8)
!1802 = !DILocalVariable(name: "s21", arg: 4, scope: !1795, file: !1796, line: 160, type: !8)
!1803 = !DILocalVariable(name: "s22", arg: 5, scope: !1795, file: !1796, line: 160, type: !8)
!1804 = !DILocalVariable(name: "s23", arg: 6, scope: !1795, file: !1796, line: 160, type: !8)
!1805 = !DILocalVariable(name: "s24", arg: 7, scope: !1795, file: !1796, line: 160, type: !8)
!1806 = !DILocalVariable(name: "s25", arg: 8, scope: !1795, file: !1796, line: 160, type: !8)
!1807 = !DILocalVariable(name: "s26", arg: 9, scope: !1795, file: !1796, line: 160, type: !8)
!1808 = !DILocalVariable(name: "s27", arg: 10, scope: !1795, file: !1796, line: 160, type: !8)
!1809 = !DILocalVariable(name: "s28", arg: 11, scope: !1795, file: !1796, line: 160, type: !8)
!1810 = !DILocation(line: 0, scope: !1795, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 234, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1780, file: !52, line: 234, column: 7)
!1813 = !DILocation(line: 162, column: 7, scope: !1814, inlinedAt: !1811)
!1814 = distinct !DILexicalBlock(scope: !1795, file: !1796, line: 162, column: 7)
!1815 = !DILocalVariable(name: "s1", arg: 1, scope: !1816, file: !1796, line: 146, type: !6)
!1816 = distinct !DISubprogram(name: "strcaseeq1", scope: !1796, file: !1796, line: 146, type: !1817, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1819 = !{!1815, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1820 = !DILocalVariable(name: "s2", arg: 2, scope: !1816, file: !1796, line: 146, type: !6)
!1821 = !DILocalVariable(name: "s21", arg: 3, scope: !1816, file: !1796, line: 146, type: !8)
!1822 = !DILocalVariable(name: "s22", arg: 4, scope: !1816, file: !1796, line: 146, type: !8)
!1823 = !DILocalVariable(name: "s23", arg: 5, scope: !1816, file: !1796, line: 146, type: !8)
!1824 = !DILocalVariable(name: "s24", arg: 6, scope: !1816, file: !1796, line: 146, type: !8)
!1825 = !DILocalVariable(name: "s25", arg: 7, scope: !1816, file: !1796, line: 146, type: !8)
!1826 = !DILocalVariable(name: "s26", arg: 8, scope: !1816, file: !1796, line: 146, type: !8)
!1827 = !DILocalVariable(name: "s27", arg: 9, scope: !1816, file: !1796, line: 146, type: !8)
!1828 = !DILocalVariable(name: "s28", arg: 10, scope: !1816, file: !1796, line: 146, type: !8)
!1829 = !DILocation(line: 0, scope: !1816, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 167, column: 16, scope: !1831, inlinedAt: !1811)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !1796, line: 164, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1814, file: !1796, line: 163, column: 5)
!1833 = !DILocation(line: 148, column: 7, scope: !1834, inlinedAt: !1830)
!1834 = distinct !DILexicalBlock(scope: !1816, file: !1796, line: 148, column: 7)
!1835 = !DILocalVariable(name: "s1", arg: 1, scope: !1836, file: !1796, line: 132, type: !6)
!1836 = distinct !DISubprogram(name: "strcaseeq2", scope: !1796, file: !1796, line: 132, type: !1837, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1839 = !{!1835, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1836, file: !1796, line: 132, type: !6)
!1841 = !DILocalVariable(name: "s22", arg: 3, scope: !1836, file: !1796, line: 132, type: !8)
!1842 = !DILocalVariable(name: "s23", arg: 4, scope: !1836, file: !1796, line: 132, type: !8)
!1843 = !DILocalVariable(name: "s24", arg: 5, scope: !1836, file: !1796, line: 132, type: !8)
!1844 = !DILocalVariable(name: "s25", arg: 6, scope: !1836, file: !1796, line: 132, type: !8)
!1845 = !DILocalVariable(name: "s26", arg: 7, scope: !1836, file: !1796, line: 132, type: !8)
!1846 = !DILocalVariable(name: "s27", arg: 8, scope: !1836, file: !1796, line: 132, type: !8)
!1847 = !DILocalVariable(name: "s28", arg: 9, scope: !1836, file: !1796, line: 132, type: !8)
!1848 = !DILocation(line: 0, scope: !1836, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 153, column: 16, scope: !1850, inlinedAt: !1830)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1796, line: 150, column: 11)
!1851 = distinct !DILexicalBlock(scope: !1834, file: !1796, line: 149, column: 5)
!1852 = !DILocation(line: 134, column: 7, scope: !1853, inlinedAt: !1849)
!1853 = distinct !DILexicalBlock(scope: !1836, file: !1796, line: 134, column: 7)
!1854 = !DILocalVariable(name: "s1", arg: 1, scope: !1855, file: !1796, line: 118, type: !6)
!1855 = distinct !DISubprogram(name: "strcaseeq3", scope: !1796, file: !1796, line: 118, type: !1856, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1858 = !{!1854, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1859 = !DILocalVariable(name: "s2", arg: 2, scope: !1855, file: !1796, line: 118, type: !6)
!1860 = !DILocalVariable(name: "s23", arg: 3, scope: !1855, file: !1796, line: 118, type: !8)
!1861 = !DILocalVariable(name: "s24", arg: 4, scope: !1855, file: !1796, line: 118, type: !8)
!1862 = !DILocalVariable(name: "s25", arg: 5, scope: !1855, file: !1796, line: 118, type: !8)
!1863 = !DILocalVariable(name: "s26", arg: 6, scope: !1855, file: !1796, line: 118, type: !8)
!1864 = !DILocalVariable(name: "s27", arg: 7, scope: !1855, file: !1796, line: 118, type: !8)
!1865 = !DILocalVariable(name: "s28", arg: 8, scope: !1855, file: !1796, line: 118, type: !8)
!1866 = !DILocation(line: 0, scope: !1855, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 139, column: 16, scope: !1868, inlinedAt: !1849)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1796, line: 136, column: 11)
!1869 = distinct !DILexicalBlock(scope: !1853, file: !1796, line: 135, column: 5)
!1870 = !DILocation(line: 120, column: 7, scope: !1871, inlinedAt: !1867)
!1871 = distinct !DILexicalBlock(scope: !1855, file: !1796, line: 120, column: 7)
!1872 = !DILocation(line: 120, column: 7, scope: !1855, inlinedAt: !1867)
!1873 = !DILocalVariable(name: "s1", arg: 1, scope: !1874, file: !1796, line: 104, type: !6)
!1874 = distinct !DISubprogram(name: "strcaseeq4", scope: !1796, file: !1796, line: 104, type: !1875, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1877 = !{!1873, !1878, !1879, !1880, !1881, !1882, !1883}
!1878 = !DILocalVariable(name: "s2", arg: 2, scope: !1874, file: !1796, line: 104, type: !6)
!1879 = !DILocalVariable(name: "s24", arg: 3, scope: !1874, file: !1796, line: 104, type: !8)
!1880 = !DILocalVariable(name: "s25", arg: 4, scope: !1874, file: !1796, line: 104, type: !8)
!1881 = !DILocalVariable(name: "s26", arg: 5, scope: !1874, file: !1796, line: 104, type: !8)
!1882 = !DILocalVariable(name: "s27", arg: 6, scope: !1874, file: !1796, line: 104, type: !8)
!1883 = !DILocalVariable(name: "s28", arg: 7, scope: !1874, file: !1796, line: 104, type: !8)
!1884 = !DILocation(line: 0, scope: !1874, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 125, column: 16, scope: !1886, inlinedAt: !1867)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !1796, line: 122, column: 11)
!1887 = distinct !DILexicalBlock(scope: !1871, file: !1796, line: 121, column: 5)
!1888 = !DILocation(line: 106, column: 7, scope: !1889, inlinedAt: !1885)
!1889 = distinct !DILexicalBlock(scope: !1874, file: !1796, line: 106, column: 7)
!1890 = !DILocation(line: 106, column: 7, scope: !1874, inlinedAt: !1885)
!1891 = !DILocalVariable(name: "s1", arg: 1, scope: !1892, file: !1796, line: 90, type: !6)
!1892 = distinct !DISubprogram(name: "strcaseeq5", scope: !1796, file: !1796, line: 90, type: !1893, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!23, !6, !6, !8, !8, !8, !8}
!1895 = !{!1891, !1896, !1897, !1898, !1899, !1900}
!1896 = !DILocalVariable(name: "s2", arg: 2, scope: !1892, file: !1796, line: 90, type: !6)
!1897 = !DILocalVariable(name: "s25", arg: 3, scope: !1892, file: !1796, line: 90, type: !8)
!1898 = !DILocalVariable(name: "s26", arg: 4, scope: !1892, file: !1796, line: 90, type: !8)
!1899 = !DILocalVariable(name: "s27", arg: 5, scope: !1892, file: !1796, line: 90, type: !8)
!1900 = !DILocalVariable(name: "s28", arg: 6, scope: !1892, file: !1796, line: 90, type: !8)
!1901 = !DILocation(line: 0, scope: !1892, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 111, column: 16, scope: !1903, inlinedAt: !1885)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !1796, line: 108, column: 11)
!1904 = distinct !DILexicalBlock(scope: !1889, file: !1796, line: 107, column: 5)
!1905 = !DILocation(line: 92, column: 7, scope: !1906, inlinedAt: !1902)
!1906 = distinct !DILexicalBlock(scope: !1892, file: !1796, line: 92, column: 7)
!1907 = !DILocation(line: 92, column: 7, scope: !1892, inlinedAt: !1902)
!1908 = !DILocation(line: 235, column: 12, scope: !1812)
!1909 = !DILocation(line: 235, column: 21, scope: !1812)
!1910 = !DILocation(line: 235, column: 5, scope: !1812)
!1911 = !DILocation(line: 0, scope: !1816, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 167, column: 16, scope: !1831, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 236, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1780, file: !52, line: 236, column: 7)
!1915 = !DILocation(line: 148, column: 7, scope: !1834, inlinedAt: !1912)
!1916 = !DILocation(line: 0, scope: !1836, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 153, column: 16, scope: !1850, inlinedAt: !1912)
!1918 = !DILocation(line: 134, column: 7, scope: !1853, inlinedAt: !1917)
!1919 = !DILocation(line: 134, column: 7, scope: !1836, inlinedAt: !1917)
!1920 = !DILocation(line: 0, scope: !1855, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 139, column: 16, scope: !1868, inlinedAt: !1917)
!1922 = !DILocation(line: 120, column: 7, scope: !1871, inlinedAt: !1921)
!1923 = !DILocation(line: 120, column: 7, scope: !1855, inlinedAt: !1921)
!1924 = !DILocation(line: 0, scope: !1874, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 125, column: 16, scope: !1886, inlinedAt: !1921)
!1926 = !DILocation(line: 106, column: 7, scope: !1889, inlinedAt: !1925)
!1927 = !DILocation(line: 106, column: 7, scope: !1874, inlinedAt: !1925)
!1928 = !DILocation(line: 0, scope: !1892, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 111, column: 16, scope: !1903, inlinedAt: !1925)
!1930 = !DILocation(line: 92, column: 7, scope: !1906, inlinedAt: !1929)
!1931 = !DILocation(line: 92, column: 7, scope: !1892, inlinedAt: !1929)
!1932 = !DILocalVariable(name: "s1", arg: 1, scope: !1933, file: !1796, line: 76, type: !6)
!1933 = distinct !DISubprogram(name: "strcaseeq6", scope: !1796, file: !1796, line: 76, type: !1934, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!23, !6, !6, !8, !8, !8}
!1936 = !{!1932, !1937, !1938, !1939, !1940}
!1937 = !DILocalVariable(name: "s2", arg: 2, scope: !1933, file: !1796, line: 76, type: !6)
!1938 = !DILocalVariable(name: "s26", arg: 3, scope: !1933, file: !1796, line: 76, type: !8)
!1939 = !DILocalVariable(name: "s27", arg: 4, scope: !1933, file: !1796, line: 76, type: !8)
!1940 = !DILocalVariable(name: "s28", arg: 5, scope: !1933, file: !1796, line: 76, type: !8)
!1941 = !DILocation(line: 0, scope: !1933, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 97, column: 16, scope: !1943, inlinedAt: !1929)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !1796, line: 94, column: 11)
!1944 = distinct !DILexicalBlock(scope: !1906, file: !1796, line: 93, column: 5)
!1945 = !DILocation(line: 78, column: 7, scope: !1946, inlinedAt: !1942)
!1946 = distinct !DILexicalBlock(scope: !1933, file: !1796, line: 78, column: 7)
!1947 = !DILocation(line: 78, column: 7, scope: !1933, inlinedAt: !1942)
!1948 = !DILocalVariable(name: "s1", arg: 1, scope: !1949, file: !1796, line: 62, type: !6)
!1949 = distinct !DISubprogram(name: "strcaseeq7", scope: !1796, file: !1796, line: 62, type: !1950, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!23, !6, !6, !8, !8}
!1952 = !{!1948, !1953, !1954, !1955}
!1953 = !DILocalVariable(name: "s2", arg: 2, scope: !1949, file: !1796, line: 62, type: !6)
!1954 = !DILocalVariable(name: "s27", arg: 3, scope: !1949, file: !1796, line: 62, type: !8)
!1955 = !DILocalVariable(name: "s28", arg: 4, scope: !1949, file: !1796, line: 62, type: !8)
!1956 = !DILocation(line: 0, scope: !1949, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 83, column: 16, scope: !1958, inlinedAt: !1942)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1796, line: 80, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1946, file: !1796, line: 79, column: 5)
!1960 = !DILocation(line: 64, column: 7, scope: !1961, inlinedAt: !1957)
!1961 = distinct !DILexicalBlock(scope: !1949, file: !1796, line: 64, column: 7)
!1962 = !DILocation(line: 236, column: 7, scope: !1780)
!1963 = !DILocation(line: 237, column: 12, scope: !1914)
!1964 = !DILocation(line: 237, column: 21, scope: !1914)
!1965 = !DILocation(line: 237, column: 5, scope: !1914)
!1966 = !DILocation(line: 239, column: 13, scope: !1780)
!1967 = !DILocation(line: 239, column: 11, scope: !1780)
!1968 = !DILocation(line: 239, column: 3, scope: !1780)
!1969 = !DILocation(line: 240, column: 1, scope: !1780)
!1970 = !DISubprogram(name: "iswprint", scope: !1971, file: !1971, line: 120, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1971 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!23, !56}
!1974 = !DISubprogram(name: "mbsinit", scope: !1975, file: !1975, line: 292, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1975 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!23, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1980 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !1981, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!47, !6, !91, !1149}
!1983 = !{!1984, !1985, !1986}
!1984 = !DILocalVariable(name: "arg", arg: 1, scope: !1980, file: !52, line: 799, type: !6)
!1985 = !DILocalVariable(name: "argsize", arg: 2, scope: !1980, file: !52, line: 799, type: !91)
!1986 = !DILocalVariable(name: "o", arg: 3, scope: !1980, file: !52, line: 800, type: !1149)
!1987 = !DILocation(line: 0, scope: !1980)
!1988 = !DILocalVariable(name: "arg", arg: 1, scope: !1989, file: !52, line: 812, type: !6)
!1989 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !1990, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!47, !6, !91, !169, !1149}
!1992 = !{!1988, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1993 = !DILocalVariable(name: "argsize", arg: 2, scope: !1989, file: !52, line: 812, type: !91)
!1994 = !DILocalVariable(name: "size", arg: 3, scope: !1989, file: !52, line: 812, type: !169)
!1995 = !DILocalVariable(name: "o", arg: 4, scope: !1989, file: !52, line: 813, type: !1149)
!1996 = !DILocalVariable(name: "p", scope: !1989, file: !52, line: 815, type: !1149)
!1997 = !DILocalVariable(name: "e", scope: !1989, file: !52, line: 816, type: !23)
!1998 = !DILocalVariable(name: "flags", scope: !1989, file: !52, line: 818, type: !23)
!1999 = !DILocalVariable(name: "bufsize", scope: !1989, file: !52, line: 819, type: !91)
!2000 = !DILocalVariable(name: "buf", scope: !1989, file: !52, line: 823, type: !47)
!2001 = !DILocation(line: 0, scope: !1989, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 802, column: 10, scope: !1980)
!2003 = !DILocation(line: 815, column: 37, scope: !1989, inlinedAt: !2002)
!2004 = !DILocation(line: 816, column: 11, scope: !1989, inlinedAt: !2002)
!2005 = !DILocation(line: 818, column: 18, scope: !1989, inlinedAt: !2002)
!2006 = !DILocation(line: 818, column: 24, scope: !1989, inlinedAt: !2002)
!2007 = !DILocation(line: 819, column: 69, scope: !1989, inlinedAt: !2002)
!2008 = !DILocation(line: 820, column: 53, scope: !1989, inlinedAt: !2002)
!2009 = !DILocation(line: 821, column: 49, scope: !1989, inlinedAt: !2002)
!2010 = !DILocation(line: 822, column: 49, scope: !1989, inlinedAt: !2002)
!2011 = !DILocation(line: 819, column: 20, scope: !1989, inlinedAt: !2002)
!2012 = !DILocation(line: 822, column: 62, scope: !1989, inlinedAt: !2002)
!2013 = !DILocalVariable(name: "n", arg: 1, scope: !2014, file: !165, line: 216, type: !91)
!2014 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 216, type: !2015, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!47, !91}
!2017 = !{!2013}
!2018 = !DILocation(line: 0, scope: !2014, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 823, column: 15, scope: !1989, inlinedAt: !2002)
!2020 = !DILocation(line: 218, column: 10, scope: !2014, inlinedAt: !2019)
!2021 = !DILocation(line: 824, column: 60, scope: !1989, inlinedAt: !2002)
!2022 = !DILocation(line: 826, column: 32, scope: !1989, inlinedAt: !2002)
!2023 = !DILocation(line: 826, column: 47, scope: !1989, inlinedAt: !2002)
!2024 = !DILocation(line: 824, column: 3, scope: !1989, inlinedAt: !2002)
!2025 = !DILocation(line: 827, column: 9, scope: !1989, inlinedAt: !2002)
!2026 = !DILocation(line: 802, column: 3, scope: !1980)
!2027 = !DILocation(line: 0, scope: !1989)
!2028 = !DILocation(line: 815, column: 37, scope: !1989)
!2029 = !DILocation(line: 816, column: 11, scope: !1989)
!2030 = !DILocation(line: 818, column: 18, scope: !1989)
!2031 = !DILocation(line: 818, column: 27, scope: !1989)
!2032 = !DILocation(line: 818, column: 24, scope: !1989)
!2033 = !DILocation(line: 819, column: 69, scope: !1989)
!2034 = !DILocation(line: 820, column: 53, scope: !1989)
!2035 = !DILocation(line: 821, column: 49, scope: !1989)
!2036 = !DILocation(line: 822, column: 49, scope: !1989)
!2037 = !DILocation(line: 819, column: 20, scope: !1989)
!2038 = !DILocation(line: 822, column: 62, scope: !1989)
!2039 = !DILocation(line: 0, scope: !2014, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 823, column: 15, scope: !1989)
!2041 = !DILocation(line: 218, column: 10, scope: !2014, inlinedAt: !2040)
!2042 = !DILocation(line: 824, column: 60, scope: !1989)
!2043 = !DILocation(line: 826, column: 32, scope: !1989)
!2044 = !DILocation(line: 826, column: 47, scope: !1989)
!2045 = !DILocation(line: 824, column: 3, scope: !1989)
!2046 = !DILocation(line: 827, column: 9, scope: !1989)
!2047 = !DILocation(line: 828, column: 7, scope: !1989)
!2048 = !DILocation(line: 829, column: 11, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1989, file: !52, line: 828, column: 7)
!2050 = !DILocation(line: 829, column: 5, scope: !2049)
!2051 = !DILocation(line: 830, column: 3, scope: !1989)
!2052 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !785, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2053)
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "sv", scope: !2052, file: !52, line: 850, type: !122)
!2055 = !DILocalVariable(name: "i", scope: !2052, file: !52, line: 851, type: !23)
!2056 = !DILocation(line: 850, column: 24, scope: !2052)
!2057 = !DILocation(line: 0, scope: !2052)
!2058 = !DILocation(line: 852, column: 19, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !52, line: 852, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !52, line: 852, column: 3)
!2061 = !DILocation(line: 852, column: 17, scope: !2059)
!2062 = !DILocation(line: 852, column: 3, scope: !2060)
!2063 = !DILocation(line: 853, column: 17, scope: !2059)
!2064 = !{!2065, !615, i64 8}
!2065 = !{!"slotvec", !839, i64 0, !615, i64 8}
!2066 = !DILocation(line: 853, column: 5, scope: !2059)
!2067 = !DILocation(line: 852, column: 28, scope: !2059)
!2068 = distinct !{!2068, !2062, !2069, !656}
!2069 = !DILocation(line: 853, column: 20, scope: !2060)
!2070 = !DILocation(line: 854, column: 13, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2052, file: !52, line: 854, column: 7)
!2072 = !DILocation(line: 854, column: 17, scope: !2071)
!2073 = !DILocation(line: 854, column: 7, scope: !2052)
!2074 = !DILocation(line: 856, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !52, line: 855, column: 5)
!2076 = !DILocation(line: 857, column: 21, scope: !2075)
!2077 = !{!2065, !839, i64 0}
!2078 = !DILocation(line: 858, column: 20, scope: !2075)
!2079 = !DILocation(line: 859, column: 5, scope: !2075)
!2080 = !DILocation(line: 860, column: 10, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2052, file: !52, line: 860, column: 7)
!2082 = !DILocation(line: 860, column: 7, scope: !2052)
!2083 = !DILocation(line: 862, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !52, line: 861, column: 5)
!2085 = !DILocation(line: 862, column: 7, scope: !2084)
!2086 = !DILocation(line: 863, column: 15, scope: !2084)
!2087 = !DILocation(line: 864, column: 5, scope: !2084)
!2088 = !DILocation(line: 865, column: 10, scope: !2052)
!2089 = !DILocation(line: 866, column: 1, scope: !2052)
!2090 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !738, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2091)
!2091 = !{!2092, !2093}
!2092 = !DILocalVariable(name: "n", arg: 1, scope: !2090, file: !52, line: 931, type: !23)
!2093 = !DILocalVariable(name: "arg", arg: 2, scope: !2090, file: !52, line: 931, type: !6)
!2094 = !DILocation(line: 0, scope: !2090)
!2095 = !DILocation(line: 933, column: 10, scope: !2090)
!2096 = !DILocation(line: 933, column: 3, scope: !2090)
!2097 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !2098, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!47, !23, !6, !91, !1149}
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2110, !2111, !2113, !2114, !2115}
!2101 = !DILocalVariable(name: "n", arg: 1, scope: !2097, file: !52, line: 877, type: !23)
!2102 = !DILocalVariable(name: "arg", arg: 2, scope: !2097, file: !52, line: 877, type: !6)
!2103 = !DILocalVariable(name: "argsize", arg: 3, scope: !2097, file: !52, line: 877, type: !91)
!2104 = !DILocalVariable(name: "options", arg: 4, scope: !2097, file: !52, line: 878, type: !1149)
!2105 = !DILocalVariable(name: "e", scope: !2097, file: !52, line: 880, type: !23)
!2106 = !DILocalVariable(name: "sv", scope: !2097, file: !52, line: 882, type: !122)
!2107 = !DILocalVariable(name: "preallocated", scope: !2108, file: !52, line: 889, type: !16)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !52, line: 888, column: 5)
!2109 = distinct !DILexicalBlock(scope: !2097, file: !52, line: 887, column: 7)
!2110 = !DILocalVariable(name: "nmax", scope: !2108, file: !52, line: 890, type: !23)
!2111 = !DILocalVariable(name: "size", scope: !2112, file: !52, line: 903, type: !91)
!2112 = distinct !DILexicalBlock(scope: !2097, file: !52, line: 902, column: 3)
!2113 = !DILocalVariable(name: "val", scope: !2112, file: !52, line: 904, type: !47)
!2114 = !DILocalVariable(name: "flags", scope: !2112, file: !52, line: 906, type: !23)
!2115 = !DILocalVariable(name: "qsize", scope: !2112, file: !52, line: 907, type: !91)
!2116 = !DILocation(line: 0, scope: !2097)
!2117 = !DILocation(line: 880, column: 11, scope: !2097)
!2118 = !DILocation(line: 882, column: 24, scope: !2097)
!2119 = !DILocation(line: 884, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2097, file: !52, line: 884, column: 7)
!2121 = !DILocation(line: 884, column: 7, scope: !2097)
!2122 = !DILocation(line: 885, column: 5, scope: !2120)
!2123 = !DILocation(line: 887, column: 7, scope: !2109)
!2124 = !DILocation(line: 887, column: 14, scope: !2109)
!2125 = !DILocation(line: 887, column: 7, scope: !2097)
!2126 = !DILocation(line: 889, column: 31, scope: !2108)
!2127 = !DILocation(line: 0, scope: !2108)
!2128 = !DILocation(line: 892, column: 16, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2108, file: !52, line: 892, column: 11)
!2130 = !DILocation(line: 892, column: 11, scope: !2108)
!2131 = !DILocation(line: 893, column: 9, scope: !2129)
!2132 = !DILocation(line: 895, column: 32, scope: !2108)
!2133 = !DILocation(line: 895, column: 61, scope: !2108)
!2134 = !DILocation(line: 895, column: 66, scope: !2108)
!2135 = !DILocation(line: 895, column: 22, scope: !2108)
!2136 = !DILocation(line: 895, column: 15, scope: !2108)
!2137 = !DILocation(line: 896, column: 11, scope: !2108)
!2138 = !DILocation(line: 897, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2108, file: !52, line: 896, column: 11)
!2140 = !{i64 0, i64 8, !838, i64 8, i64 8, !614}
!2141 = !DILocation(line: 897, column: 9, scope: !2139)
!2142 = !DILocation(line: 898, column: 20, scope: !2108)
!2143 = !DILocation(line: 898, column: 18, scope: !2108)
!2144 = !DILocation(line: 898, column: 15, scope: !2108)
!2145 = !DILocation(line: 898, column: 38, scope: !2108)
!2146 = !DILocation(line: 898, column: 31, scope: !2108)
!2147 = !DILocation(line: 898, column: 48, scope: !2108)
!2148 = !DILocation(line: 0, scope: !1541, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 898, column: 7, scope: !2108)
!2150 = !DILocation(line: 59, column: 10, scope: !1541, inlinedAt: !2149)
!2151 = !DILocation(line: 899, column: 14, scope: !2108)
!2152 = !DILocation(line: 900, column: 5, scope: !2108)
!2153 = !DILocation(line: 903, column: 19, scope: !2112)
!2154 = !DILocation(line: 903, column: 25, scope: !2112)
!2155 = !DILocation(line: 0, scope: !2112)
!2156 = !DILocation(line: 904, column: 23, scope: !2112)
!2157 = !DILocation(line: 906, column: 26, scope: !2112)
!2158 = !DILocation(line: 906, column: 32, scope: !2112)
!2159 = !DILocation(line: 908, column: 55, scope: !2112)
!2160 = !DILocation(line: 909, column: 46, scope: !2112)
!2161 = !DILocation(line: 910, column: 55, scope: !2112)
!2162 = !DILocation(line: 911, column: 55, scope: !2112)
!2163 = !DILocation(line: 907, column: 20, scope: !2112)
!2164 = !DILocation(line: 913, column: 14, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2112, file: !52, line: 913, column: 9)
!2166 = !DILocation(line: 913, column: 9, scope: !2112)
!2167 = !DILocation(line: 915, column: 35, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !52, line: 914, column: 7)
!2169 = !DILocation(line: 915, column: 20, scope: !2168)
!2170 = !DILocation(line: 916, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !52, line: 916, column: 13)
!2172 = !DILocation(line: 916, column: 13, scope: !2168)
!2173 = !DILocation(line: 917, column: 11, scope: !2171)
!2174 = !DILocation(line: 0, scope: !2014, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 918, column: 27, scope: !2168)
!2176 = !DILocation(line: 218, column: 10, scope: !2014, inlinedAt: !2175)
!2177 = !DILocation(line: 918, column: 19, scope: !2168)
!2178 = !DILocation(line: 919, column: 69, scope: !2168)
!2179 = !DILocation(line: 921, column: 44, scope: !2168)
!2180 = !DILocation(line: 922, column: 44, scope: !2168)
!2181 = !DILocation(line: 919, column: 9, scope: !2168)
!2182 = !DILocation(line: 923, column: 7, scope: !2168)
!2183 = !DILocation(line: 925, column: 11, scope: !2112)
!2184 = !DILocation(line: 926, column: 5, scope: !2112)
!2185 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2186, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!47, !23, !6, !91}
!2188 = !{!2189, !2190, !2191}
!2189 = !DILocalVariable(name: "n", arg: 1, scope: !2185, file: !52, line: 937, type: !23)
!2190 = !DILocalVariable(name: "arg", arg: 2, scope: !2185, file: !52, line: 937, type: !6)
!2191 = !DILocalVariable(name: "argsize", arg: 3, scope: !2185, file: !52, line: 937, type: !91)
!2192 = !DILocation(line: 0, scope: !2185)
!2193 = !DILocation(line: 939, column: 10, scope: !2185)
!2194 = !DILocation(line: 939, column: 3, scope: !2185)
!2195 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !778, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2196)
!2196 = !{!2197}
!2197 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !52, line: 943, type: !6)
!2198 = !DILocation(line: 0, scope: !2195)
!2199 = !DILocation(line: 0, scope: !2090, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 945, column: 10, scope: !2195)
!2201 = !DILocation(line: 933, column: 10, scope: !2090, inlinedAt: !2200)
!2202 = !DILocation(line: 945, column: 3, scope: !2195)
!2203 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2204, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!47, !6, !91}
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2203, file: !52, line: 949, type: !6)
!2208 = !DILocalVariable(name: "argsize", arg: 2, scope: !2203, file: !52, line: 949, type: !91)
!2209 = !DILocation(line: 0, scope: !2203)
!2210 = !DILocation(line: 0, scope: !2185, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 951, column: 10, scope: !2203)
!2212 = !DILocation(line: 939, column: 10, scope: !2185, inlinedAt: !2211)
!2213 = !DILocation(line: 951, column: 3, scope: !2203)
!2214 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2215, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!47, !23, !54, !6}
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DILocalVariable(name: "n", arg: 1, scope: !2214, file: !52, line: 955, type: !23)
!2219 = !DILocalVariable(name: "s", arg: 2, scope: !2214, file: !52, line: 955, type: !54)
!2220 = !DILocalVariable(name: "arg", arg: 3, scope: !2214, file: !52, line: 955, type: !6)
!2221 = !DILocalVariable(name: "o", scope: !2214, file: !52, line: 957, type: !1150)
!2222 = !DILocation(line: 0, scope: !2214)
!2223 = !DILocation(line: 957, column: 3, scope: !2214)
!2224 = !DILocation(line: 957, column: 32, scope: !2214)
!2225 = !{!2226}
!2226 = distinct !{!2226, !2227, !"quoting_options_from_style: argument 0"}
!2227 = distinct !{!2227, !"quoting_options_from_style"}
!2228 = !DILocation(line: 957, column: 36, scope: !2214)
!2229 = !DILocalVariable(name: "style", arg: 1, scope: !2230, file: !52, line: 193, type: !54)
!2230 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2231, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!103, !54}
!2233 = !{!2229, !2234}
!2234 = !DILocalVariable(name: "o", scope: !2230, file: !52, line: 195, type: !103)
!2235 = !DILocation(line: 0, scope: !2230, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 957, column: 36, scope: !2214)
!2237 = !DILocation(line: 195, column: 26, scope: !2230, inlinedAt: !2236)
!2238 = !DILocation(line: 196, column: 13, scope: !2239, inlinedAt: !2236)
!2239 = distinct !DILexicalBlock(scope: !2230, file: !52, line: 196, column: 7)
!2240 = !DILocation(line: 196, column: 7, scope: !2230, inlinedAt: !2236)
!2241 = !DILocation(line: 197, column: 5, scope: !2239, inlinedAt: !2236)
!2242 = !DILocation(line: 198, column: 5, scope: !2230, inlinedAt: !2236)
!2243 = !DILocation(line: 198, column: 11, scope: !2230, inlinedAt: !2236)
!2244 = !DILocation(line: 958, column: 10, scope: !2214)
!2245 = !DILocation(line: 959, column: 1, scope: !2214)
!2246 = !DILocation(line: 958, column: 3, scope: !2214)
!2247 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2248, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!47, !23, !54, !6, !91}
!2250 = !{!2251, !2252, !2253, !2254, !2255}
!2251 = !DILocalVariable(name: "n", arg: 1, scope: !2247, file: !52, line: 962, type: !23)
!2252 = !DILocalVariable(name: "s", arg: 2, scope: !2247, file: !52, line: 962, type: !54)
!2253 = !DILocalVariable(name: "arg", arg: 3, scope: !2247, file: !52, line: 963, type: !6)
!2254 = !DILocalVariable(name: "argsize", arg: 4, scope: !2247, file: !52, line: 963, type: !91)
!2255 = !DILocalVariable(name: "o", scope: !2247, file: !52, line: 965, type: !1150)
!2256 = !DILocation(line: 0, scope: !2247)
!2257 = !DILocation(line: 965, column: 3, scope: !2247)
!2258 = !DILocation(line: 965, column: 32, scope: !2247)
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"quoting_options_from_style: argument 0"}
!2261 = distinct !{!2261, !"quoting_options_from_style"}
!2262 = !DILocation(line: 965, column: 36, scope: !2247)
!2263 = !DILocation(line: 0, scope: !2230, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 965, column: 36, scope: !2247)
!2265 = !DILocation(line: 195, column: 26, scope: !2230, inlinedAt: !2264)
!2266 = !DILocation(line: 196, column: 13, scope: !2239, inlinedAt: !2264)
!2267 = !DILocation(line: 196, column: 7, scope: !2230, inlinedAt: !2264)
!2268 = !DILocation(line: 197, column: 5, scope: !2239, inlinedAt: !2264)
!2269 = !DILocation(line: 198, column: 5, scope: !2230, inlinedAt: !2264)
!2270 = !DILocation(line: 198, column: 11, scope: !2230, inlinedAt: !2264)
!2271 = !DILocation(line: 966, column: 10, scope: !2247)
!2272 = !DILocation(line: 967, column: 1, scope: !2247)
!2273 = !DILocation(line: 966, column: 3, scope: !2247)
!2274 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2275, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!47, !54, !6}
!2277 = !{!2278, !2279}
!2278 = !DILocalVariable(name: "s", arg: 1, scope: !2274, file: !52, line: 970, type: !54)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !52, line: 970, type: !6)
!2280 = !DILocation(line: 0, scope: !2274)
!2281 = !DILocation(line: 0, scope: !2214, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 972, column: 10, scope: !2274)
!2283 = !DILocation(line: 957, column: 3, scope: !2214, inlinedAt: !2282)
!2284 = !DILocation(line: 957, column: 32, scope: !2214, inlinedAt: !2282)
!2285 = !{!2286}
!2286 = distinct !{!2286, !2287, !"quoting_options_from_style: argument 0"}
!2287 = distinct !{!2287, !"quoting_options_from_style"}
!2288 = !DILocation(line: 957, column: 36, scope: !2214, inlinedAt: !2282)
!2289 = !DILocation(line: 0, scope: !2230, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 957, column: 36, scope: !2214, inlinedAt: !2282)
!2291 = !DILocation(line: 195, column: 26, scope: !2230, inlinedAt: !2290)
!2292 = !DILocation(line: 196, column: 13, scope: !2239, inlinedAt: !2290)
!2293 = !DILocation(line: 196, column: 7, scope: !2230, inlinedAt: !2290)
!2294 = !DILocation(line: 197, column: 5, scope: !2239, inlinedAt: !2290)
!2295 = !DILocation(line: 198, column: 5, scope: !2230, inlinedAt: !2290)
!2296 = !DILocation(line: 198, column: 11, scope: !2230, inlinedAt: !2290)
!2297 = !DILocation(line: 958, column: 10, scope: !2214, inlinedAt: !2282)
!2298 = !DILocation(line: 959, column: 1, scope: !2214, inlinedAt: !2282)
!2299 = !DILocation(line: 972, column: 3, scope: !2274)
!2300 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2301, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!47, !54, !6, !91}
!2303 = !{!2304, !2305, !2306}
!2304 = !DILocalVariable(name: "s", arg: 1, scope: !2300, file: !52, line: 976, type: !54)
!2305 = !DILocalVariable(name: "arg", arg: 2, scope: !2300, file: !52, line: 976, type: !6)
!2306 = !DILocalVariable(name: "argsize", arg: 3, scope: !2300, file: !52, line: 976, type: !91)
!2307 = !DILocation(line: 0, scope: !2300)
!2308 = !DILocation(line: 0, scope: !2247, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 978, column: 10, scope: !2300)
!2310 = !DILocation(line: 965, column: 3, scope: !2247, inlinedAt: !2309)
!2311 = !DILocation(line: 965, column: 32, scope: !2247, inlinedAt: !2309)
!2312 = !{!2313}
!2313 = distinct !{!2313, !2314, !"quoting_options_from_style: argument 0"}
!2314 = distinct !{!2314, !"quoting_options_from_style"}
!2315 = !DILocation(line: 965, column: 36, scope: !2247, inlinedAt: !2309)
!2316 = !DILocation(line: 0, scope: !2230, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 965, column: 36, scope: !2247, inlinedAt: !2309)
!2318 = !DILocation(line: 195, column: 26, scope: !2230, inlinedAt: !2317)
!2319 = !DILocation(line: 196, column: 13, scope: !2239, inlinedAt: !2317)
!2320 = !DILocation(line: 196, column: 7, scope: !2230, inlinedAt: !2317)
!2321 = !DILocation(line: 197, column: 5, scope: !2239, inlinedAt: !2317)
!2322 = !DILocation(line: 198, column: 5, scope: !2230, inlinedAt: !2317)
!2323 = !DILocation(line: 198, column: 11, scope: !2230, inlinedAt: !2317)
!2324 = !DILocation(line: 966, column: 10, scope: !2247, inlinedAt: !2309)
!2325 = !DILocation(line: 967, column: 1, scope: !2247, inlinedAt: !2309)
!2326 = !DILocation(line: 978, column: 3, scope: !2300)
!2327 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2328, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!47, !6, !91, !8}
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DILocalVariable(name: "arg", arg: 1, scope: !2327, file: !52, line: 982, type: !6)
!2332 = !DILocalVariable(name: "argsize", arg: 2, scope: !2327, file: !52, line: 982, type: !91)
!2333 = !DILocalVariable(name: "ch", arg: 3, scope: !2327, file: !52, line: 982, type: !8)
!2334 = !DILocalVariable(name: "options", scope: !2327, file: !52, line: 984, type: !103)
!2335 = !DILocation(line: 0, scope: !2327)
!2336 = !DILocation(line: 984, column: 3, scope: !2327)
!2337 = !DILocation(line: 984, column: 26, scope: !2327)
!2338 = !DILocation(line: 985, column: 13, scope: !2327)
!2339 = !{i64 0, i64 4, !882, i64 4, i64 4, !756, i64 8, i64 32, !882, i64 40, i64 8, !614, i64 48, i64 8, !614}
!2340 = !DILocation(line: 0, scope: !1170, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 986, column: 3, scope: !2327)
!2342 = !DILocation(line: 156, column: 62, scope: !1170, inlinedAt: !2341)
!2343 = !DILocation(line: 156, column: 57, scope: !1170, inlinedAt: !2341)
!2344 = !DILocation(line: 157, column: 15, scope: !1170, inlinedAt: !2341)
!2345 = !DILocation(line: 158, column: 12, scope: !1170, inlinedAt: !2341)
!2346 = !DILocation(line: 158, column: 15, scope: !1170, inlinedAt: !2341)
!2347 = !DILocation(line: 158, column: 25, scope: !1170, inlinedAt: !2341)
!2348 = !DILocation(line: 159, column: 18, scope: !1170, inlinedAt: !2341)
!2349 = !DILocation(line: 159, column: 23, scope: !1170, inlinedAt: !2341)
!2350 = !DILocation(line: 159, column: 6, scope: !1170, inlinedAt: !2341)
!2351 = !DILocation(line: 987, column: 10, scope: !2327)
!2352 = !DILocation(line: 988, column: 1, scope: !2327)
!2353 = !DILocation(line: 987, column: 3, scope: !2327)
!2354 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2355, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!47, !6, !8}
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2354, file: !52, line: 991, type: !6)
!2359 = !DILocalVariable(name: "ch", arg: 2, scope: !2354, file: !52, line: 991, type: !8)
!2360 = !DILocation(line: 0, scope: !2354)
!2361 = !DILocation(line: 0, scope: !2327, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 993, column: 10, scope: !2354)
!2363 = !DILocation(line: 984, column: 3, scope: !2327, inlinedAt: !2362)
!2364 = !DILocation(line: 984, column: 26, scope: !2327, inlinedAt: !2362)
!2365 = !DILocation(line: 985, column: 13, scope: !2327, inlinedAt: !2362)
!2366 = !DILocation(line: 0, scope: !1170, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 986, column: 3, scope: !2327, inlinedAt: !2362)
!2368 = !DILocation(line: 156, column: 62, scope: !1170, inlinedAt: !2367)
!2369 = !DILocation(line: 156, column: 57, scope: !1170, inlinedAt: !2367)
!2370 = !DILocation(line: 157, column: 15, scope: !1170, inlinedAt: !2367)
!2371 = !DILocation(line: 158, column: 12, scope: !1170, inlinedAt: !2367)
!2372 = !DILocation(line: 158, column: 15, scope: !1170, inlinedAt: !2367)
!2373 = !DILocation(line: 158, column: 25, scope: !1170, inlinedAt: !2367)
!2374 = !DILocation(line: 159, column: 18, scope: !1170, inlinedAt: !2367)
!2375 = !DILocation(line: 159, column: 23, scope: !1170, inlinedAt: !2367)
!2376 = !DILocation(line: 159, column: 6, scope: !1170, inlinedAt: !2367)
!2377 = !DILocation(line: 987, column: 10, scope: !2327, inlinedAt: !2362)
!2378 = !DILocation(line: 988, column: 1, scope: !2327, inlinedAt: !2362)
!2379 = !DILocation(line: 993, column: 3, scope: !2354)
!2380 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !778, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2381)
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "arg", arg: 1, scope: !2380, file: !52, line: 997, type: !6)
!2383 = !DILocation(line: 0, scope: !2380)
!2384 = !DILocation(line: 0, scope: !2354, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 999, column: 10, scope: !2380)
!2386 = !DILocation(line: 0, scope: !2327, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 993, column: 10, scope: !2354, inlinedAt: !2385)
!2388 = !DILocation(line: 984, column: 3, scope: !2327, inlinedAt: !2387)
!2389 = !DILocation(line: 984, column: 26, scope: !2327, inlinedAt: !2387)
!2390 = !DILocation(line: 985, column: 13, scope: !2327, inlinedAt: !2387)
!2391 = !DILocation(line: 0, scope: !1170, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 986, column: 3, scope: !2327, inlinedAt: !2387)
!2393 = !DILocation(line: 156, column: 57, scope: !1170, inlinedAt: !2392)
!2394 = !DILocation(line: 158, column: 12, scope: !1170, inlinedAt: !2392)
!2395 = !DILocation(line: 159, column: 6, scope: !1170, inlinedAt: !2392)
!2396 = !DILocation(line: 987, column: 10, scope: !2327, inlinedAt: !2387)
!2397 = !DILocation(line: 988, column: 1, scope: !2327, inlinedAt: !2387)
!2398 = !DILocation(line: 999, column: 3, scope: !2380)
!2399 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2204, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2400)
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "arg", arg: 1, scope: !2399, file: !52, line: 1003, type: !6)
!2402 = !DILocalVariable(name: "argsize", arg: 2, scope: !2399, file: !52, line: 1003, type: !91)
!2403 = !DILocation(line: 0, scope: !2399)
!2404 = !DILocation(line: 0, scope: !2327, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1005, column: 10, scope: !2399)
!2406 = !DILocation(line: 984, column: 3, scope: !2327, inlinedAt: !2405)
!2407 = !DILocation(line: 984, column: 26, scope: !2327, inlinedAt: !2405)
!2408 = !DILocation(line: 985, column: 13, scope: !2327, inlinedAt: !2405)
!2409 = !DILocation(line: 0, scope: !1170, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 986, column: 3, scope: !2327, inlinedAt: !2405)
!2411 = !DILocation(line: 156, column: 57, scope: !1170, inlinedAt: !2410)
!2412 = !DILocation(line: 158, column: 12, scope: !1170, inlinedAt: !2410)
!2413 = !DILocation(line: 159, column: 6, scope: !1170, inlinedAt: !2410)
!2414 = !DILocation(line: 987, column: 10, scope: !2327, inlinedAt: !2405)
!2415 = !DILocation(line: 988, column: 1, scope: !2327, inlinedAt: !2405)
!2416 = !DILocation(line: 1005, column: 3, scope: !2399)
!2417 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2215, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2418)
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DILocalVariable(name: "n", arg: 1, scope: !2417, file: !52, line: 1009, type: !23)
!2420 = !DILocalVariable(name: "s", arg: 2, scope: !2417, file: !52, line: 1009, type: !54)
!2421 = !DILocalVariable(name: "arg", arg: 3, scope: !2417, file: !52, line: 1009, type: !6)
!2422 = !DILocalVariable(name: "options", scope: !2417, file: !52, line: 1011, type: !103)
!2423 = !DILocation(line: 195, column: 26, scope: !2230, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 1012, column: 13, scope: !2417)
!2425 = !DILocation(line: 0, scope: !2417)
!2426 = !DILocation(line: 1011, column: 3, scope: !2417)
!2427 = !DILocation(line: 1011, column: 26, scope: !2417)
!2428 = !DILocation(line: 1012, column: 13, scope: !2417)
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"quoting_options_from_style: argument 0"}
!2431 = distinct !{!2431, !"quoting_options_from_style"}
!2432 = !DILocation(line: 0, scope: !2230, inlinedAt: !2424)
!2433 = !DILocation(line: 196, column: 13, scope: !2239, inlinedAt: !2424)
!2434 = !DILocation(line: 196, column: 7, scope: !2230, inlinedAt: !2424)
!2435 = !DILocation(line: 197, column: 5, scope: !2239, inlinedAt: !2424)
!2436 = !{i64 0, i64 4, !756, i64 4, i64 32, !882, i64 36, i64 8, !614, i64 44, i64 8, !614}
!2437 = !DILocation(line: 0, scope: !1170, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 1013, column: 3, scope: !2417)
!2439 = !DILocation(line: 156, column: 57, scope: !1170, inlinedAt: !2438)
!2440 = !DILocation(line: 158, column: 12, scope: !1170, inlinedAt: !2438)
!2441 = !DILocation(line: 159, column: 6, scope: !1170, inlinedAt: !2438)
!2442 = !DILocation(line: 1014, column: 10, scope: !2417)
!2443 = !DILocation(line: 1015, column: 1, scope: !2417)
!2444 = !DILocation(line: 1014, column: 3, scope: !2417)
!2445 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2446, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!47, !23, !6, !6, !6}
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "n", arg: 1, scope: !2445, file: !52, line: 1018, type: !23)
!2450 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2445, file: !52, line: 1018, type: !6)
!2451 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2445, file: !52, line: 1019, type: !6)
!2452 = !DILocalVariable(name: "arg", arg: 4, scope: !2445, file: !52, line: 1019, type: !6)
!2453 = !DILocation(line: 0, scope: !2445)
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2455, file: !52, line: 1026, type: !23)
!2455 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2456, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!47, !23, !6, !6, !6, !91}
!2458 = !{!2454, !2459, !2460, !2461, !2462, !2463}
!2459 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2455, file: !52, line: 1026, type: !6)
!2460 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2455, file: !52, line: 1027, type: !6)
!2461 = !DILocalVariable(name: "arg", arg: 4, scope: !2455, file: !52, line: 1028, type: !6)
!2462 = !DILocalVariable(name: "argsize", arg: 5, scope: !2455, file: !52, line: 1028, type: !91)
!2463 = !DILocalVariable(name: "o", scope: !2455, file: !52, line: 1030, type: !103)
!2464 = !DILocation(line: 0, scope: !2455, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 1021, column: 10, scope: !2445)
!2466 = !DILocation(line: 1030, column: 3, scope: !2455, inlinedAt: !2465)
!2467 = !DILocation(line: 1030, column: 26, scope: !2455, inlinedAt: !2465)
!2468 = !DILocation(line: 1030, column: 30, scope: !2455, inlinedAt: !2465)
!2469 = !DILocation(line: 0, scope: !1210, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 1031, column: 3, scope: !2455, inlinedAt: !2465)
!2471 = !DILocation(line: 184, column: 6, scope: !1210, inlinedAt: !2470)
!2472 = !DILocation(line: 184, column: 12, scope: !1210, inlinedAt: !2470)
!2473 = !DILocation(line: 185, column: 8, scope: !1224, inlinedAt: !2470)
!2474 = !DILocation(line: 185, column: 19, scope: !1224, inlinedAt: !2470)
!2475 = !DILocation(line: 186, column: 5, scope: !1224, inlinedAt: !2470)
!2476 = !DILocation(line: 187, column: 6, scope: !1210, inlinedAt: !2470)
!2477 = !DILocation(line: 187, column: 17, scope: !1210, inlinedAt: !2470)
!2478 = !DILocation(line: 188, column: 6, scope: !1210, inlinedAt: !2470)
!2479 = !DILocation(line: 188, column: 18, scope: !1210, inlinedAt: !2470)
!2480 = !DILocation(line: 1032, column: 10, scope: !2455, inlinedAt: !2465)
!2481 = !DILocation(line: 1033, column: 1, scope: !2455, inlinedAt: !2465)
!2482 = !DILocation(line: 1021, column: 3, scope: !2445)
!2483 = !DILocation(line: 0, scope: !2455)
!2484 = !DILocation(line: 1030, column: 3, scope: !2455)
!2485 = !DILocation(line: 1030, column: 26, scope: !2455)
!2486 = !DILocation(line: 1030, column: 30, scope: !2455)
!2487 = !DILocation(line: 0, scope: !1210, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1031, column: 3, scope: !2455)
!2489 = !DILocation(line: 184, column: 6, scope: !1210, inlinedAt: !2488)
!2490 = !DILocation(line: 184, column: 12, scope: !1210, inlinedAt: !2488)
!2491 = !DILocation(line: 185, column: 8, scope: !1224, inlinedAt: !2488)
!2492 = !DILocation(line: 185, column: 19, scope: !1224, inlinedAt: !2488)
!2493 = !DILocation(line: 186, column: 5, scope: !1224, inlinedAt: !2488)
!2494 = !DILocation(line: 187, column: 6, scope: !1210, inlinedAt: !2488)
!2495 = !DILocation(line: 187, column: 17, scope: !1210, inlinedAt: !2488)
!2496 = !DILocation(line: 188, column: 6, scope: !1210, inlinedAt: !2488)
!2497 = !DILocation(line: 188, column: 18, scope: !1210, inlinedAt: !2488)
!2498 = !DILocation(line: 1032, column: 10, scope: !2455)
!2499 = !DILocation(line: 1033, column: 1, scope: !2455)
!2500 = !DILocation(line: 1032, column: 3, scope: !2455)
!2501 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2502, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!47, !6, !6, !6}
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2501, file: !52, line: 1036, type: !6)
!2506 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2501, file: !52, line: 1036, type: !6)
!2507 = !DILocalVariable(name: "arg", arg: 3, scope: !2501, file: !52, line: 1037, type: !6)
!2508 = !DILocation(line: 0, scope: !2501)
!2509 = !DILocation(line: 0, scope: !2445, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1039, column: 10, scope: !2501)
!2511 = !DILocation(line: 0, scope: !2455, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 1021, column: 10, scope: !2445, inlinedAt: !2510)
!2513 = !DILocation(line: 1030, column: 3, scope: !2455, inlinedAt: !2512)
!2514 = !DILocation(line: 1030, column: 26, scope: !2455, inlinedAt: !2512)
!2515 = !DILocation(line: 1030, column: 30, scope: !2455, inlinedAt: !2512)
!2516 = !DILocation(line: 0, scope: !1210, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1031, column: 3, scope: !2455, inlinedAt: !2512)
!2518 = !DILocation(line: 184, column: 6, scope: !1210, inlinedAt: !2517)
!2519 = !DILocation(line: 184, column: 12, scope: !1210, inlinedAt: !2517)
!2520 = !DILocation(line: 185, column: 8, scope: !1224, inlinedAt: !2517)
!2521 = !DILocation(line: 185, column: 19, scope: !1224, inlinedAt: !2517)
!2522 = !DILocation(line: 186, column: 5, scope: !1224, inlinedAt: !2517)
!2523 = !DILocation(line: 187, column: 6, scope: !1210, inlinedAt: !2517)
!2524 = !DILocation(line: 187, column: 17, scope: !1210, inlinedAt: !2517)
!2525 = !DILocation(line: 188, column: 6, scope: !1210, inlinedAt: !2517)
!2526 = !DILocation(line: 188, column: 18, scope: !1210, inlinedAt: !2517)
!2527 = !DILocation(line: 1032, column: 10, scope: !2455, inlinedAt: !2512)
!2528 = !DILocation(line: 1033, column: 1, scope: !2455, inlinedAt: !2512)
!2529 = !DILocation(line: 1039, column: 3, scope: !2501)
!2530 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2531, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!47, !6, !6, !6, !91}
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2530, file: !52, line: 1043, type: !6)
!2535 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2530, file: !52, line: 1043, type: !6)
!2536 = !DILocalVariable(name: "arg", arg: 3, scope: !2530, file: !52, line: 1044, type: !6)
!2537 = !DILocalVariable(name: "argsize", arg: 4, scope: !2530, file: !52, line: 1044, type: !91)
!2538 = !DILocation(line: 0, scope: !2530)
!2539 = !DILocation(line: 0, scope: !2455, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1046, column: 10, scope: !2530)
!2541 = !DILocation(line: 1030, column: 3, scope: !2455, inlinedAt: !2540)
!2542 = !DILocation(line: 1030, column: 26, scope: !2455, inlinedAt: !2540)
!2543 = !DILocation(line: 1030, column: 30, scope: !2455, inlinedAt: !2540)
!2544 = !DILocation(line: 0, scope: !1210, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1031, column: 3, scope: !2455, inlinedAt: !2540)
!2546 = !DILocation(line: 184, column: 6, scope: !1210, inlinedAt: !2545)
!2547 = !DILocation(line: 184, column: 12, scope: !1210, inlinedAt: !2545)
!2548 = !DILocation(line: 185, column: 8, scope: !1224, inlinedAt: !2545)
!2549 = !DILocation(line: 185, column: 19, scope: !1224, inlinedAt: !2545)
!2550 = !DILocation(line: 186, column: 5, scope: !1224, inlinedAt: !2545)
!2551 = !DILocation(line: 187, column: 6, scope: !1210, inlinedAt: !2545)
!2552 = !DILocation(line: 187, column: 17, scope: !1210, inlinedAt: !2545)
!2553 = !DILocation(line: 188, column: 6, scope: !1210, inlinedAt: !2545)
!2554 = !DILocation(line: 188, column: 18, scope: !1210, inlinedAt: !2545)
!2555 = !DILocation(line: 1032, column: 10, scope: !2455, inlinedAt: !2540)
!2556 = !DILocation(line: 1033, column: 1, scope: !2455, inlinedAt: !2540)
!2557 = !DILocation(line: 1046, column: 3, scope: !2530)
!2558 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2559, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!6, !23, !6, !91}
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2558, file: !52, line: 1061, type: !23)
!2563 = !DILocalVariable(name: "arg", arg: 2, scope: !2558, file: !52, line: 1061, type: !6)
!2564 = !DILocalVariable(name: "argsize", arg: 3, scope: !2558, file: !52, line: 1061, type: !91)
!2565 = !DILocation(line: 0, scope: !2558)
!2566 = !DILocation(line: 1063, column: 10, scope: !2558)
!2567 = !DILocation(line: 1063, column: 3, scope: !2558)
!2568 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2569, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!6, !6, !91}
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2568, file: !52, line: 1067, type: !6)
!2573 = !DILocalVariable(name: "argsize", arg: 2, scope: !2568, file: !52, line: 1067, type: !91)
!2574 = !DILocation(line: 0, scope: !2568)
!2575 = !DILocation(line: 0, scope: !2558, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1069, column: 10, scope: !2568)
!2577 = !DILocation(line: 1063, column: 10, scope: !2558, inlinedAt: !2576)
!2578 = !DILocation(line: 1069, column: 3, scope: !2568)
!2579 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2580, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!6, !23, !6}
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2579, file: !52, line: 1073, type: !23)
!2584 = !DILocalVariable(name: "arg", arg: 2, scope: !2579, file: !52, line: 1073, type: !6)
!2585 = !DILocation(line: 0, scope: !2579)
!2586 = !DILocation(line: 0, scope: !2558, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1075, column: 10, scope: !2579)
!2588 = !DILocation(line: 1063, column: 10, scope: !2558, inlinedAt: !2587)
!2589 = !DILocation(line: 1075, column: 3, scope: !2579)
!2590 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2591, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!6, !6}
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !52, line: 1079, type: !6)
!2595 = !DILocation(line: 0, scope: !2590)
!2596 = !DILocation(line: 0, scope: !2579, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1081, column: 10, scope: !2590)
!2598 = !DILocation(line: 0, scope: !2558, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1075, column: 10, scope: !2579, inlinedAt: !2597)
!2600 = !DILocation(line: 1063, column: 10, scope: !2558, inlinedAt: !2599)
!2601 = !DILocation(line: 1081, column: 3, scope: !2590)
!2602 = distinct !DISubprogram(name: "version_etc_arn", scope: !155, file: !155, line: 61, type: !2603, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2641)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2605, !6, !6, !6, !2640, !91}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2607, line: 7, baseType: !2608)
!2607 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2608, file: !686, line: 51, baseType: !23, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2608, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2608, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2608, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2608, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2608, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2608, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2608, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2608, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2608, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2608, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2608, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2608, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2608, file: !686, line: 70, baseType: !2624, size: 64, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2608, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2608, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2608, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2608, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2608, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2608, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2608, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2608, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2608, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2608, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2608, file: !686, line: 93, baseType: !2624, size: 64, offset: 1344)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2608, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2608, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2608, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2608, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647}
!2642 = !DILocalVariable(name: "stream", arg: 1, scope: !2602, file: !155, line: 61, type: !2605)
!2643 = !DILocalVariable(name: "command_name", arg: 2, scope: !2602, file: !155, line: 62, type: !6)
!2644 = !DILocalVariable(name: "package", arg: 3, scope: !2602, file: !155, line: 62, type: !6)
!2645 = !DILocalVariable(name: "version", arg: 4, scope: !2602, file: !155, line: 63, type: !6)
!2646 = !DILocalVariable(name: "authors", arg: 5, scope: !2602, file: !155, line: 64, type: !2640)
!2647 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2602, file: !155, line: 64, type: !91)
!2648 = !DILocation(line: 0, scope: !2602)
!2649 = !DILocation(line: 66, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2602, file: !155, line: 66, column: 7)
!2651 = !DILocation(line: 66, column: 7, scope: !2602)
!2652 = !DILocation(line: 67, column: 5, scope: !2650)
!2653 = !DILocation(line: 69, column: 5, scope: !2650)
!2654 = !DILocation(line: 83, column: 3, scope: !2602)
!2655 = !DILocation(line: 85, column: 3, scope: !2602)
!2656 = !DILocation(line: 88, column: 3, scope: !2602)
!2657 = !DILocation(line: 95, column: 3, scope: !2602)
!2658 = !DILocation(line: 97, column: 3, scope: !2602)
!2659 = !DILocation(line: 105, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2602, file: !155, line: 98, column: 5)
!2661 = !DILocation(line: 106, column: 7, scope: !2660)
!2662 = !DILocation(line: 109, column: 7, scope: !2660)
!2663 = !DILocation(line: 110, column: 7, scope: !2660)
!2664 = !DILocation(line: 113, column: 7, scope: !2660)
!2665 = !DILocation(line: 115, column: 7, scope: !2660)
!2666 = !DILocation(line: 120, column: 7, scope: !2660)
!2667 = !DILocation(line: 122, column: 7, scope: !2660)
!2668 = !DILocation(line: 127, column: 7, scope: !2660)
!2669 = !DILocation(line: 129, column: 7, scope: !2660)
!2670 = !DILocation(line: 134, column: 7, scope: !2660)
!2671 = !DILocation(line: 137, column: 7, scope: !2660)
!2672 = !DILocation(line: 142, column: 7, scope: !2660)
!2673 = !DILocation(line: 145, column: 7, scope: !2660)
!2674 = !DILocation(line: 150, column: 7, scope: !2660)
!2675 = !DILocation(line: 154, column: 7, scope: !2660)
!2676 = !DILocation(line: 159, column: 7, scope: !2660)
!2677 = !DILocation(line: 163, column: 7, scope: !2660)
!2678 = !DILocation(line: 170, column: 7, scope: !2660)
!2679 = !DILocation(line: 174, column: 7, scope: !2660)
!2680 = !DILocation(line: 176, column: 1, scope: !2602)
!2681 = distinct !DISubprogram(name: "version_etc_ar", scope: !155, file: !155, line: 183, type: !2682, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2605, !6, !6, !6, !2640}
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690}
!2685 = !DILocalVariable(name: "stream", arg: 1, scope: !2681, file: !155, line: 183, type: !2605)
!2686 = !DILocalVariable(name: "command_name", arg: 2, scope: !2681, file: !155, line: 184, type: !6)
!2687 = !DILocalVariable(name: "package", arg: 3, scope: !2681, file: !155, line: 184, type: !6)
!2688 = !DILocalVariable(name: "version", arg: 4, scope: !2681, file: !155, line: 185, type: !6)
!2689 = !DILocalVariable(name: "authors", arg: 5, scope: !2681, file: !155, line: 185, type: !2640)
!2690 = !DILocalVariable(name: "n_authors", scope: !2681, file: !155, line: 187, type: !91)
!2691 = !DILocation(line: 0, scope: !2681)
!2692 = !DILocation(line: 189, column: 8, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2681, file: !155, line: 189, column: 3)
!2694 = !DILocation(line: 0, scope: !2693)
!2695 = !DILocation(line: 189, column: 23, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !155, line: 189, column: 3)
!2697 = !DILocation(line: 189, column: 3, scope: !2693)
!2698 = !DILocation(line: 189, column: 52, scope: !2696)
!2699 = distinct !{!2699, !2697, !2700, !656}
!2700 = !DILocation(line: 190, column: 5, scope: !2693)
!2701 = !DILocation(line: 191, column: 3, scope: !2681)
!2702 = !DILocation(line: 192, column: 1, scope: !2681)
!2703 = distinct !DISubprogram(name: "version_etc_va", scope: !155, file: !155, line: 199, type: !2704, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2713)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2605, !6, !6, !6, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2707, file: !155, line: 192, baseType: !56, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2707, file: !155, line: 192, baseType: !56, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2707, file: !155, line: 192, baseType: !46, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2707, file: !155, line: 192, baseType: !46, size: 64, offset: 128)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2714 = !DILocalVariable(name: "stream", arg: 1, scope: !2703, file: !155, line: 199, type: !2605)
!2715 = !DILocalVariable(name: "command_name", arg: 2, scope: !2703, file: !155, line: 200, type: !6)
!2716 = !DILocalVariable(name: "package", arg: 3, scope: !2703, file: !155, line: 200, type: !6)
!2717 = !DILocalVariable(name: "version", arg: 4, scope: !2703, file: !155, line: 201, type: !6)
!2718 = !DILocalVariable(name: "authors", arg: 5, scope: !2703, file: !155, line: 201, type: !2706)
!2719 = !DILocalVariable(name: "n_authors", scope: !2703, file: !155, line: 203, type: !91)
!2720 = !DILocalVariable(name: "authtab", scope: !2703, file: !155, line: 204, type: !2721)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2722 = !DILocation(line: 0, scope: !2703)
!2723 = !DILocation(line: 204, column: 3, scope: !2703)
!2724 = !DILocation(line: 204, column: 15, scope: !2703)
!2725 = !DILocation(line: 208, column: 35, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !155, line: 206, column: 3)
!2727 = distinct !DILexicalBlock(scope: !2703, file: !155, line: 206, column: 3)
!2728 = !DILocation(line: 208, column: 14, scope: !2726)
!2729 = !DILocation(line: 208, column: 33, scope: !2726)
!2730 = !DILocation(line: 208, column: 67, scope: !2726)
!2731 = !DILocation(line: 206, column: 3, scope: !2727)
!2732 = !DILocation(line: 0, scope: !2727)
!2733 = !DILocation(line: 211, column: 3, scope: !2703)
!2734 = !DILocation(line: 213, column: 1, scope: !2703)
!2735 = distinct !DISubprogram(name: "version_etc", scope: !155, file: !155, line: 230, type: !2736, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !2605, !6, !6, !6, null}
!2738 = !{!2739, !2740, !2741, !2742, !2743}
!2739 = !DILocalVariable(name: "stream", arg: 1, scope: !2735, file: !155, line: 230, type: !2605)
!2740 = !DILocalVariable(name: "command_name", arg: 2, scope: !2735, file: !155, line: 231, type: !6)
!2741 = !DILocalVariable(name: "package", arg: 3, scope: !2735, file: !155, line: 231, type: !6)
!2742 = !DILocalVariable(name: "version", arg: 4, scope: !2735, file: !155, line: 232, type: !6)
!2743 = !DILocalVariable(name: "authors", scope: !2735, file: !155, line: 234, type: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !681, line: 52, baseType: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1027, line: 32, baseType: !2746)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !155, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2707, size: 192, elements: !715)
!2748 = !DILocation(line: 0, scope: !2735)
!2749 = !DILocation(line: 234, column: 3, scope: !2735)
!2750 = !DILocation(line: 234, column: 11, scope: !2735)
!2751 = !DILocation(line: 236, column: 3, scope: !2735)
!2752 = !DILocation(line: 237, column: 3, scope: !2735)
!2753 = !DILocation(line: 238, column: 3, scope: !2735)
!2754 = !DILocation(line: 239, column: 1, scope: !2735)
!2755 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !155, file: !155, line: 242, type: !785, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !4)
!2756 = !DILocation(line: 244, column: 3, scope: !2755)
!2757 = !DILocation(line: 249, column: 3, scope: !2755)
!2758 = !DILocation(line: 255, column: 3, scope: !2755)
!2759 = !DILocation(line: 260, column: 3, scope: !2755)
!2760 = !DILocation(line: 262, column: 1, scope: !2755)
!2761 = distinct !DISubprogram(name: "xnmalloc", scope: !165, file: !165, line: 99, type: !863, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2762)
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !165, line: 99, type: !91)
!2764 = !DILocalVariable(name: "s", arg: 2, scope: !2761, file: !165, line: 99, type: !91)
!2765 = !DILocation(line: 0, scope: !2761)
!2766 = !DILocation(line: 101, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !165, line: 101, column: 7)
!2768 = !DILocation(line: 101, column: 7, scope: !2761)
!2769 = !DILocation(line: 102, column: 5, scope: !2767)
!2770 = !DILocation(line: 103, column: 21, scope: !2761)
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2772, file: !162, line: 39, type: !91)
!2772 = distinct !DISubprogram(name: "xmalloc", scope: !162, file: !162, line: 39, type: !2773, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!46, !91}
!2775 = !{!2771, !2776}
!2776 = !DILocalVariable(name: "p", scope: !2772, file: !162, line: 41, type: !46)
!2777 = !DILocation(line: 0, scope: !2772, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 103, column: 10, scope: !2761)
!2779 = !DILocation(line: 41, column: 13, scope: !2772, inlinedAt: !2778)
!2780 = !DILocation(line: 42, column: 8, scope: !2781, inlinedAt: !2778)
!2781 = distinct !DILexicalBlock(scope: !2772, file: !162, line: 42, column: 7)
!2782 = !DILocation(line: 42, column: 10, scope: !2781, inlinedAt: !2778)
!2783 = !DILocation(line: 43, column: 5, scope: !2781, inlinedAt: !2778)
!2784 = !DILocation(line: 103, column: 3, scope: !2761)
!2785 = !DILocation(line: 0, scope: !2772)
!2786 = !DILocation(line: 41, column: 13, scope: !2772)
!2787 = !DILocation(line: 42, column: 8, scope: !2781)
!2788 = !DILocation(line: 42, column: 10, scope: !2781)
!2789 = !DILocation(line: 43, column: 5, scope: !2781)
!2790 = !DILocation(line: 44, column: 3, scope: !2772)
!2791 = distinct !DISubprogram(name: "xnrealloc", scope: !165, file: !165, line: 112, type: !2792, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!46, !46, !91, !91}
!2794 = !{!2795, !2796, !2797}
!2795 = !DILocalVariable(name: "p", arg: 1, scope: !2791, file: !165, line: 112, type: !46)
!2796 = !DILocalVariable(name: "n", arg: 2, scope: !2791, file: !165, line: 112, type: !91)
!2797 = !DILocalVariable(name: "s", arg: 3, scope: !2791, file: !165, line: 112, type: !91)
!2798 = !DILocation(line: 0, scope: !2791)
!2799 = !DILocation(line: 114, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !165, line: 114, column: 7)
!2801 = !DILocation(line: 114, column: 7, scope: !2791)
!2802 = !DILocation(line: 115, column: 5, scope: !2800)
!2803 = !DILocation(line: 116, column: 25, scope: !2791)
!2804 = !DILocalVariable(name: "p", arg: 1, scope: !2805, file: !162, line: 51, type: !46)
!2805 = distinct !DISubprogram(name: "xrealloc", scope: !162, file: !162, line: 51, type: !2806, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!46, !46, !91}
!2808 = !{!2804, !2809}
!2809 = !DILocalVariable(name: "n", arg: 2, scope: !2805, file: !162, line: 51, type: !91)
!2810 = !DILocation(line: 0, scope: !2805, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 116, column: 10, scope: !2791)
!2812 = !DILocation(line: 53, column: 8, scope: !2813, inlinedAt: !2811)
!2813 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 53, column: 7)
!2814 = !DILocation(line: 53, column: 10, scope: !2813, inlinedAt: !2811)
!2815 = !DILocation(line: 57, column: 7, scope: !2816, inlinedAt: !2811)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !162, line: 54, column: 5)
!2817 = !DILocation(line: 58, column: 7, scope: !2816, inlinedAt: !2811)
!2818 = !DILocation(line: 61, column: 7, scope: !2805, inlinedAt: !2811)
!2819 = !DILocation(line: 62, column: 8, scope: !2820, inlinedAt: !2811)
!2820 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 62, column: 7)
!2821 = !DILocation(line: 62, column: 10, scope: !2820, inlinedAt: !2811)
!2822 = !DILocation(line: 63, column: 5, scope: !2820, inlinedAt: !2811)
!2823 = !DILocation(line: 116, column: 3, scope: !2791)
!2824 = !DILocation(line: 0, scope: !2805)
!2825 = !DILocation(line: 53, column: 8, scope: !2813)
!2826 = !DILocation(line: 53, column: 10, scope: !2813)
!2827 = !DILocation(line: 57, column: 7, scope: !2816)
!2828 = !DILocation(line: 58, column: 7, scope: !2816)
!2829 = !DILocation(line: 61, column: 7, scope: !2805)
!2830 = !DILocation(line: 62, column: 8, scope: !2820)
!2831 = !DILocation(line: 62, column: 10, scope: !2820)
!2832 = !DILocation(line: 63, column: 5, scope: !2820)
!2833 = !DILocation(line: 65, column: 1, scope: !2805)
!2834 = !DILocation(line: 0, scope: !166)
!2835 = !DILocation(line: 176, column: 14, scope: !166)
!2836 = !DILocation(line: 178, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !166, file: !165, line: 178, column: 7)
!2838 = !DILocation(line: 178, column: 7, scope: !166)
!2839 = !DILocation(line: 180, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !165, line: 180, column: 11)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !165, line: 179, column: 5)
!2842 = !DILocation(line: 180, column: 11, scope: !2841)
!2843 = !DILocation(line: 188, column: 30, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !165, line: 181, column: 9)
!2845 = !DILocation(line: 189, column: 16, scope: !2844)
!2846 = !DILocation(line: 189, column: 13, scope: !2844)
!2847 = !DILocation(line: 190, column: 9, scope: !2844)
!2848 = !DILocation(line: 191, column: 11, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !165, line: 191, column: 11)
!2850 = !DILocation(line: 191, column: 11, scope: !2841)
!2851 = !DILocation(line: 206, column: 7, scope: !166)
!2852 = !DILocation(line: 207, column: 25, scope: !166)
!2853 = !DILocation(line: 0, scope: !2805, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 207, column: 10, scope: !166)
!2855 = !DILocation(line: 53, column: 10, scope: !2813, inlinedAt: !2854)
!2856 = !DILocation(line: 192, column: 9, scope: !2849)
!2857 = !DILocation(line: 200, column: 69, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !165, line: 200, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2837, file: !165, line: 195, column: 5)
!2860 = !DILocation(line: 201, column: 11, scope: !2858)
!2861 = !DILocation(line: 200, column: 11, scope: !2859)
!2862 = !DILocation(line: 202, column: 9, scope: !2858)
!2863 = !DILocation(line: 203, column: 14, scope: !2859)
!2864 = !DILocation(line: 203, column: 18, scope: !2859)
!2865 = !DILocation(line: 203, column: 9, scope: !2859)
!2866 = !DILocation(line: 53, column: 8, scope: !2813, inlinedAt: !2854)
!2867 = !DILocation(line: 57, column: 7, scope: !2816, inlinedAt: !2854)
!2868 = !DILocation(line: 58, column: 7, scope: !2816, inlinedAt: !2854)
!2869 = !DILocation(line: 61, column: 7, scope: !2805, inlinedAt: !2854)
!2870 = !DILocation(line: 62, column: 8, scope: !2820, inlinedAt: !2854)
!2871 = !DILocation(line: 62, column: 10, scope: !2820, inlinedAt: !2854)
!2872 = !DILocation(line: 63, column: 5, scope: !2820, inlinedAt: !2854)
!2873 = !DILocation(line: 207, column: 3, scope: !166)
!2874 = distinct !DISubprogram(name: "xcharalloc", scope: !165, file: !165, line: 216, type: !2015, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2875)
!2875 = !{!2876}
!2876 = !DILocalVariable(name: "n", arg: 1, scope: !2874, file: !165, line: 216, type: !91)
!2877 = !DILocation(line: 0, scope: !2874)
!2878 = !DILocation(line: 0, scope: !2772, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 218, column: 10, scope: !2874)
!2880 = !DILocation(line: 41, column: 13, scope: !2772, inlinedAt: !2879)
!2881 = !DILocation(line: 42, column: 8, scope: !2781, inlinedAt: !2879)
!2882 = !DILocation(line: 42, column: 10, scope: !2781, inlinedAt: !2879)
!2883 = !DILocation(line: 43, column: 5, scope: !2781, inlinedAt: !2879)
!2884 = !DILocation(line: 218, column: 3, scope: !2874)
!2885 = distinct !DISubprogram(name: "x2realloc", scope: !162, file: !162, line: 74, type: !2886, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!46, !46, !169}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "p", arg: 1, scope: !2885, file: !162, line: 74, type: !46)
!2890 = !DILocalVariable(name: "pn", arg: 2, scope: !2885, file: !162, line: 74, type: !169)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 0, scope: !166, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 76, column: 10, scope: !2885)
!2894 = !DILocation(line: 176, column: 14, scope: !166, inlinedAt: !2893)
!2895 = !DILocation(line: 178, column: 9, scope: !2837, inlinedAt: !2893)
!2896 = !DILocation(line: 178, column: 7, scope: !166, inlinedAt: !2893)
!2897 = !DILocation(line: 180, column: 13, scope: !2840, inlinedAt: !2893)
!2898 = !DILocation(line: 180, column: 11, scope: !2841, inlinedAt: !2893)
!2899 = !DILocation(line: 191, column: 11, scope: !2849, inlinedAt: !2893)
!2900 = !DILocation(line: 191, column: 11, scope: !2841, inlinedAt: !2893)
!2901 = !DILocation(line: 192, column: 9, scope: !2849, inlinedAt: !2893)
!2902 = !DILocation(line: 201, column: 11, scope: !2858, inlinedAt: !2893)
!2903 = !DILocation(line: 200, column: 11, scope: !2859, inlinedAt: !2893)
!2904 = !DILocation(line: 202, column: 9, scope: !2858, inlinedAt: !2893)
!2905 = !DILocation(line: 203, column: 14, scope: !2859, inlinedAt: !2893)
!2906 = !DILocation(line: 203, column: 18, scope: !2859, inlinedAt: !2893)
!2907 = !DILocation(line: 203, column: 9, scope: !2859, inlinedAt: !2893)
!2908 = !DILocation(line: 0, scope: !2805, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 207, column: 10, scope: !166, inlinedAt: !2893)
!2910 = !DILocation(line: 53, column: 10, scope: !2813, inlinedAt: !2909)
!2911 = !DILocation(line: 206, column: 7, scope: !166, inlinedAt: !2893)
!2912 = !DILocation(line: 61, column: 7, scope: !2805, inlinedAt: !2909)
!2913 = !DILocation(line: 62, column: 8, scope: !2820, inlinedAt: !2909)
!2914 = !DILocation(line: 62, column: 10, scope: !2820, inlinedAt: !2909)
!2915 = !DILocation(line: 63, column: 5, scope: !2820, inlinedAt: !2909)
!2916 = !DILocation(line: 76, column: 3, scope: !2885)
!2917 = distinct !DISubprogram(name: "xzalloc", scope: !162, file: !162, line: 84, type: !2773, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2918)
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2917, file: !162, line: 84, type: !91)
!2920 = !DILocation(line: 0, scope: !2917)
!2921 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !162, line: 93, type: !91)
!2922 = distinct !DISubprogram(name: "xcalloc", scope: !162, file: !162, line: 93, type: !863, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2923)
!2923 = !{!2921, !2924, !2925}
!2924 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !162, line: 93, type: !91)
!2925 = !DILocalVariable(name: "p", scope: !2922, file: !162, line: 95, type: !46)
!2926 = !DILocation(line: 0, scope: !2922, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 86, column: 10, scope: !2917)
!2928 = !DILocation(line: 100, column: 7, scope: !2929, inlinedAt: !2927)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !162, line: 100, column: 7)
!2930 = !DILocation(line: 101, column: 7, scope: !2929, inlinedAt: !2927)
!2931 = !DILocation(line: 101, column: 18, scope: !2929, inlinedAt: !2927)
!2932 = !DILocation(line: 101, column: 16, scope: !2929, inlinedAt: !2927)
!2933 = !DILocation(line: 100, column: 7, scope: !2922, inlinedAt: !2927)
!2934 = !DILocation(line: 102, column: 5, scope: !2929, inlinedAt: !2927)
!2935 = !DILocation(line: 86, column: 3, scope: !2917)
!2936 = !DILocation(line: 0, scope: !2922)
!2937 = !DILocation(line: 100, column: 7, scope: !2929)
!2938 = !DILocation(line: 101, column: 7, scope: !2929)
!2939 = !DILocation(line: 101, column: 18, scope: !2929)
!2940 = !DILocation(line: 101, column: 16, scope: !2929)
!2941 = !DILocation(line: 100, column: 7, scope: !2922)
!2942 = !DILocation(line: 102, column: 5, scope: !2929)
!2943 = !DILocation(line: 103, column: 3, scope: !2922)
!2944 = distinct !DISubprogram(name: "xmemdup", scope: !162, file: !162, line: 111, type: !2945, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!46, !939, !91}
!2947 = !{!2948, !2949}
!2948 = !DILocalVariable(name: "p", arg: 1, scope: !2944, file: !162, line: 111, type: !939)
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2944, file: !162, line: 111, type: !91)
!2950 = !DILocation(line: 0, scope: !2944)
!2951 = !DILocation(line: 0, scope: !2772, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 113, column: 18, scope: !2944)
!2953 = !DILocation(line: 41, column: 13, scope: !2772, inlinedAt: !2952)
!2954 = !DILocation(line: 42, column: 8, scope: !2781, inlinedAt: !2952)
!2955 = !DILocation(line: 42, column: 10, scope: !2781, inlinedAt: !2952)
!2956 = !DILocation(line: 43, column: 5, scope: !2781, inlinedAt: !2952)
!2957 = !DILocalVariable(name: "__dest", arg: 1, scope: !2958, file: !1542, line: 26, type: !2961)
!2958 = distinct !DISubprogram(name: "memcpy", scope: !1542, file: !1542, line: 26, type: !2959, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2963)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!46, !2961, !2962, !91}
!2961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!2962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !939)
!2963 = !{!2957, !2964, !2965}
!2964 = !DILocalVariable(name: "__src", arg: 2, scope: !2958, file: !1542, line: 26, type: !2962)
!2965 = !DILocalVariable(name: "__len", arg: 3, scope: !2958, file: !1542, line: 26, type: !91)
!2966 = !DILocation(line: 0, scope: !2958, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 113, column: 10, scope: !2944)
!2968 = !DILocation(line: 29, column: 10, scope: !2958, inlinedAt: !2967)
!2969 = !DILocation(line: 113, column: 3, scope: !2944)
!2970 = distinct !DISubprogram(name: "xstrdup", scope: !162, file: !162, line: 119, type: !778, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2971)
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "string", arg: 1, scope: !2970, file: !162, line: 119, type: !6)
!2973 = !DILocation(line: 0, scope: !2970)
!2974 = !DILocation(line: 121, column: 27, scope: !2970)
!2975 = !DILocation(line: 121, column: 43, scope: !2970)
!2976 = !DILocation(line: 0, scope: !2944, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 121, column: 10, scope: !2970)
!2978 = !DILocation(line: 0, scope: !2772, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 113, column: 18, scope: !2944, inlinedAt: !2977)
!2980 = !DILocation(line: 41, column: 13, scope: !2772, inlinedAt: !2979)
!2981 = !DILocation(line: 42, column: 8, scope: !2781, inlinedAt: !2979)
!2982 = !DILocation(line: 42, column: 10, scope: !2781, inlinedAt: !2979)
!2983 = !DILocation(line: 43, column: 5, scope: !2781, inlinedAt: !2979)
!2984 = !DILocation(line: 0, scope: !2958, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 113, column: 10, scope: !2944, inlinedAt: !2977)
!2986 = !DILocation(line: 29, column: 10, scope: !2958, inlinedAt: !2985)
!2987 = !DILocation(line: 121, column: 3, scope: !2970)
!2988 = distinct !DISubprogram(name: "xalloc_die", scope: !179, file: !179, line: 32, type: !785, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !4)
!2989 = !DILocation(line: 34, column: 10, scope: !2988)
!2990 = !DILocation(line: 34, column: 33, scope: !2988)
!2991 = !DILocation(line: 34, column: 3, scope: !2988)
!2992 = !DILocation(line: 40, column: 3, scope: !2988)
!2993 = distinct !DISubprogram(name: "rpl_calloc", scope: !181, file: !181, line: 42, type: !863, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !2994)
!2994 = !{!2995, !2996, !2997, !2998}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !181, line: 42, type: !91)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2993, file: !181, line: 42, type: !91)
!2997 = !DILocalVariable(name: "result", scope: !2993, file: !181, line: 44, type: !46)
!2998 = !DILocalVariable(name: "bytes", scope: !2999, file: !181, line: 56, type: !91)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !181, line: 53, column: 5)
!3000 = distinct !DILexicalBlock(scope: !2993, file: !181, line: 47, column: 7)
!3001 = !DILocation(line: 0, scope: !2993)
!3002 = !DILocation(line: 47, column: 9, scope: !3000)
!3003 = !DILocation(line: 47, column: 14, scope: !3000)
!3004 = !DILocation(line: 0, scope: !2999)
!3005 = !DILocation(line: 57, column: 21, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2999, file: !181, line: 57, column: 11)
!3007 = !DILocation(line: 57, column: 11, scope: !2999)
!3008 = !DILocation(line: 59, column: 11, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3006, file: !181, line: 58, column: 9)
!3010 = !DILocation(line: 59, column: 17, scope: !3009)
!3011 = !DILocation(line: 65, column: 12, scope: !2993)
!3012 = !DILocation(line: 72, column: 3, scope: !2993)
!3013 = !DILocation(line: 73, column: 1, scope: !2993)
!3014 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !183, file: !183, line: 86, type: !3015, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3029)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!91, !3017, !6, !91, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1299, line: 6, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1301, line: 21, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1301, line: 13, size: 64, elements: !3022)
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3021, file: !1301, line: 15, baseType: !23, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3021, file: !1301, line: 20, baseType: !3025, size: 32, offset: 32)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !1301, line: 16, size: 32, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3025, file: !1301, line: 18, baseType: !56, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3025, file: !1301, line: 19, baseType: !809, size: 32)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3030 = !DILocalVariable(name: "pwc", arg: 1, scope: !3014, file: !183, line: 86, type: !3017)
!3031 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !183, line: 86, type: !6)
!3032 = !DILocalVariable(name: "n", arg: 3, scope: !3014, file: !183, line: 86, type: !91)
!3033 = !DILocalVariable(name: "ps", arg: 4, scope: !3014, file: !183, line: 86, type: !3018)
!3034 = !DILocalVariable(name: "ret", scope: !3014, file: !183, line: 88, type: !91)
!3035 = !DILocalVariable(name: "wc", scope: !3014, file: !183, line: 89, type: !1312)
!3036 = !DILocalVariable(name: "uc", scope: !3037, file: !183, line: 156, type: !153)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !183, line: 155, column: 5)
!3038 = distinct !DILexicalBlock(scope: !3014, file: !183, line: 154, column: 7)
!3039 = !DILocation(line: 0, scope: !3014)
!3040 = !DILocation(line: 89, column: 3, scope: !3014)
!3041 = !DILocation(line: 105, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3014, file: !183, line: 105, column: 7)
!3043 = !DILocation(line: 105, column: 7, scope: !3014)
!3044 = !DILocation(line: 145, column: 9, scope: !3014)
!3045 = !DILocation(line: 154, column: 19, scope: !3038)
!3046 = !DILocation(line: 154, column: 26, scope: !3038)
!3047 = !DILocation(line: 154, column: 41, scope: !3038)
!3048 = !DILocation(line: 154, column: 7, scope: !3014)
!3049 = !DILocation(line: 156, column: 26, scope: !3037)
!3050 = !DILocation(line: 0, scope: !3037)
!3051 = !DILocation(line: 157, column: 14, scope: !3037)
!3052 = !DILocation(line: 157, column: 12, scope: !3037)
!3053 = !DILocation(line: 163, column: 1, scope: !3014)
!3054 = !DISubprogram(name: "mbrtowc", scope: !1975, file: !1975, line: 296, type: !3055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!93, !37, !6, !93, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3058 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !186, file: !186, line: 49, type: !3059, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3085)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!47, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !147, line: 146, baseType: !3064)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !798, line: 55, size: 3072, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3077, !3078, !3083, !3084}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3064, file: !798, line: 57, baseType: !801, size: 16)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3064, file: !798, line: 58, baseType: !803, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3064, file: !798, line: 59, baseType: !805, size: 256, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3064, file: !798, line: 61, baseType: !809, size: 32, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3064, file: !798, line: 63, baseType: !805, size: 256, offset: 352)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3064, file: !798, line: 65, baseType: !117, size: 2048, offset: 608)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3064, file: !798, line: 67, baseType: !3073, size: 32, offset: 2656)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !798, line: 42, size: 32, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3073, file: !798, line: 45, baseType: !801, size: 16)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3073, file: !798, line: 46, baseType: !801, size: 16, offset: 16)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3064, file: !798, line: 74, baseType: !820, size: 32, offset: 2688)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !3064, file: !798, line: 79, baseType: !3079, size: 64, offset: 2720)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !798, line: 75, size: 64, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3079, file: !798, line: 77, baseType: !820, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3079, file: !798, line: 78, baseType: !820, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !3064, file: !798, line: 84, baseType: !827, size: 128, offset: 2784)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3064, file: !798, line: 85, baseType: !733, size: 160, offset: 2912)
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "ut", arg: 1, scope: !3058, file: !186, line: 49, type: !3061)
!3087 = !DILocalVariable(name: "p", scope: !3058, file: !186, line: 51, type: !47)
!3088 = !DILocalVariable(name: "trimmed_name", scope: !3058, file: !186, line: 51, type: !47)
!3089 = !DILocation(line: 0, scope: !3058)
!3090 = !DILocation(line: 53, column: 18, scope: !3058)
!3091 = !DILocation(line: 54, column: 26, scope: !3058)
!3092 = !DILocalVariable(name: "__dest", arg: 1, scope: !3093, file: !1542, line: 92, type: !3096)
!3093 = distinct !DISubprogram(name: "strncpy", scope: !1542, file: !1542, line: 92, type: !3094, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3098)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!47, !3096, !3097, !91}
!3096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!3097 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3098 = !{!3092, !3099, !3100}
!3099 = !DILocalVariable(name: "__src", arg: 2, scope: !3093, file: !1542, line: 92, type: !3097)
!3100 = !DILocalVariable(name: "__len", arg: 3, scope: !3093, file: !1542, line: 92, type: !91)
!3101 = !DILocation(line: 0, scope: !3093, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 54, column: 3, scope: !3058)
!3103 = !DILocation(line: 95, column: 10, scope: !3093, inlinedAt: !3102)
!3104 = !DILocation(line: 58, column: 3, scope: !3058)
!3105 = !DILocation(line: 58, column: 39, scope: !3058)
!3106 = !DILocation(line: 59, column: 27, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3058, file: !186, line: 59, column: 3)
!3108 = !DILocation(line: 60, column: 21, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3107, file: !186, line: 59, column: 3)
!3110 = !DILocation(line: 60, column: 25, scope: !3109)
!3111 = !DILocation(line: 59, column: 25, scope: !3107)
!3112 = !DILocation(line: 59, column: 3, scope: !3107)
!3113 = !DILocation(line: 60, column: 28, scope: !3109)
!3114 = !DILocation(line: 60, column: 34, scope: !3109)
!3115 = !DILocation(line: 61, column: 13, scope: !3109)
!3116 = distinct !{!3116, !3112, !3117, !656}
!3117 = !DILocation(line: 62, column: 5, scope: !3107)
!3118 = !DILocation(line: 63, column: 3, scope: !3058)
!3119 = distinct !DISubprogram(name: "read_utmp", scope: !186, file: !186, line: 92, type: !3120, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3124)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!23, !6, !169, !3122, !23}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3125 = !DILocalVariable(name: "file", arg: 1, scope: !3119, file: !186, line: 92, type: !6)
!3126 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3119, file: !186, line: 92, type: !169)
!3127 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3119, file: !186, line: 92, type: !3122)
!3128 = !DILocalVariable(name: "options", arg: 4, scope: !3119, file: !186, line: 93, type: !23)
!3129 = !DILocalVariable(name: "n_read", scope: !3119, file: !186, line: 95, type: !91)
!3130 = !DILocalVariable(name: "n_alloc", scope: !3119, file: !186, line: 96, type: !91)
!3131 = !DILocalVariable(name: "utmp", scope: !3119, file: !186, line: 97, type: !3123)
!3132 = !DILocalVariable(name: "u", scope: !3119, file: !186, line: 98, type: !3123)
!3133 = !DILocation(line: 0, scope: !3119)
!3134 = !DILocation(line: 104, column: 3, scope: !3119)
!3135 = !DILocation(line: 106, column: 3, scope: !3119)
!3136 = !DILocation(line: 108, column: 15, scope: !3119)
!3137 = !DILocation(line: 108, column: 32, scope: !3119)
!3138 = !DILocation(line: 108, column: 3, scope: !3119)
!3139 = !DILocalVariable(name: "u", arg: 1, scope: !3140, file: !186, line: 69, type: !3061)
!3140 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !186, file: !186, line: 69, type: !3141, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!16, !3061, !23}
!3143 = !{!3139, !3144, !3145}
!3144 = !DILocalVariable(name: "options", arg: 2, scope: !3140, file: !186, line: 69, type: !23)
!3145 = !DILocalVariable(name: "user_proc", scope: !3140, file: !186, line: 71, type: !16)
!3146 = !DILocation(line: 0, scope: !3140, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 109, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3119, file: !186, line: 109, column: 9)
!3149 = !DILocation(line: 71, column: 20, scope: !3140, inlinedAt: !3147)
!3150 = !DILocation(line: 72, column: 42, scope: !3151, inlinedAt: !3147)
!3151 = distinct !DILexicalBlock(scope: !3140, file: !186, line: 72, column: 7)
!3152 = !DILocation(line: 75, column: 7, scope: !3153, inlinedAt: !3147)
!3153 = distinct !DILexicalBlock(scope: !3140, file: !186, line: 74, column: 7)
!3154 = !DILocation(line: 76, column: 14, scope: !3153, inlinedAt: !3147)
!3155 = !{!884, !757, i64 4}
!3156 = !DILocation(line: 76, column: 12, scope: !3153, inlinedAt: !3147)
!3157 = !DILocation(line: 77, column: 7, scope: !3153, inlinedAt: !3147)
!3158 = !DILocation(line: 77, column: 11, scope: !3153, inlinedAt: !3147)
!3159 = !DILocation(line: 77, column: 32, scope: !3153, inlinedAt: !3147)
!3160 = !DILocation(line: 77, column: 36, scope: !3153, inlinedAt: !3147)
!3161 = !DILocation(line: 77, column: 39, scope: !3153, inlinedAt: !3147)
!3162 = !DILocation(line: 77, column: 45, scope: !3153, inlinedAt: !3147)
!3163 = !DILocation(line: 74, column: 7, scope: !3140, inlinedAt: !3147)
!3164 = !DILocation(line: 111, column: 20, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !186, line: 111, column: 13)
!3166 = distinct !DILexicalBlock(scope: !3148, file: !186, line: 110, column: 7)
!3167 = !DILocation(line: 111, column: 13, scope: !3166)
!3168 = !DILocation(line: 112, column: 30, scope: !3165)
!3169 = !DILocation(line: 0, scope: !189, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 112, column: 18, scope: !3165)
!3171 = !DILocation(line: 178, column: 9, scope: !3172, inlinedAt: !3170)
!3172 = distinct !DILexicalBlock(scope: !189, file: !165, line: 178, column: 7)
!3173 = !DILocation(line: 178, column: 7, scope: !189, inlinedAt: !3170)
!3174 = !DILocation(line: 180, column: 13, scope: !3175, inlinedAt: !3170)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !165, line: 180, column: 11)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !165, line: 179, column: 5)
!3177 = !DILocation(line: 180, column: 11, scope: !3176, inlinedAt: !3170)
!3178 = !DILocation(line: 191, column: 11, scope: !3179, inlinedAt: !3170)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !165, line: 191, column: 11)
!3180 = !DILocation(line: 191, column: 11, scope: !3176, inlinedAt: !3170)
!3181 = !DILocation(line: 192, column: 9, scope: !3179, inlinedAt: !3170)
!3182 = !DILocation(line: 201, column: 11, scope: !3183, inlinedAt: !3170)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !165, line: 200, column: 11)
!3184 = distinct !DILexicalBlock(scope: !3172, file: !165, line: 195, column: 5)
!3185 = !DILocation(line: 200, column: 11, scope: !3184, inlinedAt: !3170)
!3186 = !DILocation(line: 202, column: 9, scope: !3183, inlinedAt: !3170)
!3187 = !DILocation(line: 203, column: 14, scope: !3184, inlinedAt: !3170)
!3188 = !DILocation(line: 203, column: 18, scope: !3184, inlinedAt: !3170)
!3189 = !DILocation(line: 203, column: 9, scope: !3184, inlinedAt: !3170)
!3190 = !DILocation(line: 207, column: 25, scope: !189, inlinedAt: !3170)
!3191 = !DILocation(line: 207, column: 10, scope: !189, inlinedAt: !3170)
!3192 = !DILocation(line: 112, column: 18, scope: !3165)
!3193 = !DILocation(line: 112, column: 11, scope: !3165)
!3194 = !DILocation(line: 114, column: 20, scope: !3166)
!3195 = !DILocation(line: 114, column: 9, scope: !3166)
!3196 = !DILocation(line: 114, column: 26, scope: !3166)
!3197 = !{i64 0, i64 2, !1534, i64 4, i64 4, !756, i64 8, i64 32, !882, i64 40, i64 4, !882, i64 44, i64 32, !882, i64 76, i64 256, !882, i64 332, i64 2, !1534, i64 334, i64 2, !1534, i64 336, i64 4, !756, i64 340, i64 4, !756, i64 344, i64 4, !756, i64 348, i64 16, !882, i64 364, i64 20, !882}
!3198 = !DILocation(line: 115, column: 7, scope: !3166)
!3199 = distinct !{!3199, !3138, !3200, !656}
!3200 = !DILocation(line: 115, column: 7, scope: !3119)
!3201 = !DILocation(line: 117, column: 3, scope: !3119)
!3202 = !DILocation(line: 119, column: 14, scope: !3119)
!3203 = !DILocation(line: 120, column: 13, scope: !3119)
!3204 = !DILocation(line: 122, column: 3, scope: !3119)
!3205 = !DISubprogram(name: "utmpxname", scope: !3206, file: !3206, line: 93, type: !3207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3206 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!23, !6}
!3209 = !DISubprogram(name: "setutxent", scope: !3206, file: !3206, line: 53, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3210 = !DISubprogram(name: "getutxent", scope: !3206, file: !3206, line: 65, type: !3211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3214 = !DISubprogram(name: "kill", scope: !3215, file: !3215, line: 112, type: !3216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3215 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!23, !23, !23}
!3218 = !DISubprogram(name: "endutxent", scope: !3206, file: !3206, line: 59, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3219 = distinct !DISubprogram(name: "close_stream", scope: !197, file: !197, line: 56, type: !3220, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !3256)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!23, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2607, line: 7, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3224, file: !686, line: 51, baseType: !23, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3224, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3224, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3224, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3224, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3224, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3224, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3224, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3224, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3224, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3224, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3224, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3224, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3224, file: !686, line: 70, baseType: !3240, size: 64, offset: 832)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3224, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3224, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3224, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3224, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3224, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3224, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3224, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3224, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3224, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3224, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3224, file: !686, line: 93, baseType: !3240, size: 64, offset: 1344)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3224, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3224, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3224, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3224, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!3256 = !{!3257, !3258, !3260, !3261}
!3257 = !DILocalVariable(name: "stream", arg: 1, scope: !3219, file: !197, line: 56, type: !3222)
!3258 = !DILocalVariable(name: "some_pending", scope: !3219, file: !197, line: 58, type: !3259)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3260 = !DILocalVariable(name: "prev_fail", scope: !3219, file: !197, line: 59, type: !3259)
!3261 = !DILocalVariable(name: "fclose_fail", scope: !3219, file: !197, line: 60, type: !3259)
!3262 = !DILocation(line: 0, scope: !3219)
!3263 = !DILocation(line: 58, column: 30, scope: !3219)
!3264 = !DILocalVariable(name: "__stream", arg: 1, scope: !3265, file: !905, line: 135, type: !3222)
!3265 = distinct !DISubprogram(name: "ferror_unlocked", scope: !905, file: !905, line: 135, type: !3220, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !3266)
!3266 = !{!3264}
!3267 = !DILocation(line: 0, scope: !3265, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 59, column: 27, scope: !3219)
!3269 = !DILocation(line: 137, column: 10, scope: !3265, inlinedAt: !3268)
!3270 = !{!913, !757, i64 0}
!3271 = !DILocation(line: 59, column: 43, scope: !3219)
!3272 = !DILocation(line: 60, column: 29, scope: !3219)
!3273 = !DILocation(line: 60, column: 45, scope: !3219)
!3274 = !DILocation(line: 70, column: 17, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3219, file: !197, line: 70, column: 7)
!3276 = !DILocation(line: 58, column: 50, scope: !3219)
!3277 = !DILocation(line: 70, column: 33, scope: !3275)
!3278 = !DILocation(line: 70, column: 53, scope: !3275)
!3279 = !DILocation(line: 70, column: 59, scope: !3275)
!3280 = !DILocation(line: 70, column: 7, scope: !3219)
!3281 = !DILocation(line: 72, column: 11, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3275, file: !197, line: 71, column: 5)
!3283 = !DILocation(line: 73, column: 9, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3282, file: !197, line: 72, column: 11)
!3285 = !DILocation(line: 73, column: 15, scope: !3284)
!3286 = !DILocation(line: 78, column: 1, scope: !3219)
!3287 = distinct !DISubprogram(name: "hard_locale", scope: !199, file: !199, line: 27, type: !3288, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!16, !23}
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "category", arg: 1, scope: !3287, file: !199, line: 27, type: !23)
!3292 = !DILocalVariable(name: "locale", scope: !3287, file: !199, line: 29, type: !3293)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3294)
!3294 = !{!3295}
!3295 = !DISubrange(count: 257)
!3296 = !DILocation(line: 0, scope: !3287)
!3297 = !DILocation(line: 29, column: 3, scope: !3287)
!3298 = !DILocation(line: 29, column: 8, scope: !3287)
!3299 = !DILocation(line: 31, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3287, file: !199, line: 31, column: 7)
!3301 = !DILocation(line: 31, column: 7, scope: !3287)
!3302 = !DILocation(line: 34, column: 12, scope: !3287)
!3303 = !DILocation(line: 34, column: 38, scope: !3287)
!3304 = !DILocation(line: 34, column: 41, scope: !3287)
!3305 = !DILocation(line: 34, column: 66, scope: !3287)
!3306 = !DILocation(line: 35, column: 1, scope: !3287)
!3307 = distinct !DISubprogram(name: "locale_charset", scope: !201, file: !201, line: 831, type: !3308, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!6}
!3310 = !{!3311}
!3311 = !DILocalVariable(name: "codeset", scope: !3307, file: !201, line: 833, type: !6)
!3312 = !DILocation(line: 847, column: 13, scope: !3307)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 911, column: 15, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3307, file: !201, line: 911, column: 7)
!3316 = !DILocation(line: 911, column: 7, scope: !3307)
!3317 = !DILocation(line: 1070, column: 13, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !201, line: 1070, column: 13)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !201, line: 1060, column: 7)
!3320 = distinct !DILexicalBlock(scope: !3307, file: !201, line: 1019, column: 3)
!3321 = !DILocation(line: 1070, column: 24, scope: !3318)
!3322 = !DILocation(line: 1070, column: 13, scope: !3319)
!3323 = !DILocation(line: 1158, column: 3, scope: !3307)
!3324 = !DISubprogram(name: "nl_langinfo", scope: !204, file: !204, line: 661, type: !3325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!47, !23}
!3327 = distinct !DISubprogram(name: "setlocale_null_r", scope: !590, file: !590, line: 269, type: !3328, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!23, !23, !47, !91}
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "category", arg: 1, scope: !3327, file: !590, line: 269, type: !23)
!3332 = !DILocalVariable(name: "buf", arg: 2, scope: !3327, file: !590, line: 269, type: !47)
!3333 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3327, file: !590, line: 269, type: !91)
!3334 = !DILocation(line: 0, scope: !3327)
!3335 = !DILocalVariable(name: "category", arg: 1, scope: !3336, file: !590, line: 91, type: !23)
!3336 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !590, file: !590, line: 91, type: !3328, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3337)
!3337 = !{!3335, !3338, !3339, !3340, !3341}
!3338 = !DILocalVariable(name: "buf", arg: 2, scope: !3336, file: !590, line: 91, type: !47)
!3339 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3336, file: !590, line: 91, type: !91)
!3340 = !DILocalVariable(name: "result", scope: !3336, file: !590, line: 140, type: !6)
!3341 = !DILocalVariable(name: "length", scope: !3342, file: !590, line: 154, type: !91)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !590, line: 153, column: 5)
!3343 = distinct !DILexicalBlock(scope: !3336, file: !590, line: 142, column: 7)
!3344 = !DILocation(line: 0, scope: !3336, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 274, column: 10, scope: !3327)
!3346 = !DILocalVariable(name: "category", arg: 1, scope: !3347, file: !590, line: 60, type: !23)
!3347 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !590, file: !590, line: 60, type: !3348, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!6, !23}
!3350 = !{!3346, !3351}
!3351 = !DILocalVariable(name: "result", scope: !3347, file: !590, line: 62, type: !6)
!3352 = !DILocation(line: 0, scope: !3347, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 140, column: 24, scope: !3336, inlinedAt: !3345)
!3354 = !DILocation(line: 62, column: 24, scope: !3347, inlinedAt: !3353)
!3355 = !DILocation(line: 142, column: 14, scope: !3343, inlinedAt: !3345)
!3356 = !DILocation(line: 142, column: 7, scope: !3336, inlinedAt: !3345)
!3357 = !DILocation(line: 145, column: 19, scope: !3358, inlinedAt: !3345)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !590, line: 145, column: 11)
!3359 = distinct !DILexicalBlock(scope: !3343, file: !590, line: 143, column: 5)
!3360 = !DILocation(line: 145, column: 11, scope: !3359, inlinedAt: !3345)
!3361 = !DILocation(line: 149, column: 16, scope: !3358, inlinedAt: !3345)
!3362 = !DILocation(line: 149, column: 9, scope: !3358, inlinedAt: !3345)
!3363 = !DILocation(line: 154, column: 23, scope: !3342, inlinedAt: !3345)
!3364 = !DILocation(line: 0, scope: !3342, inlinedAt: !3345)
!3365 = !DILocation(line: 155, column: 18, scope: !3366, inlinedAt: !3345)
!3366 = distinct !DILexicalBlock(scope: !3342, file: !590, line: 155, column: 11)
!3367 = !DILocation(line: 155, column: 11, scope: !3342, inlinedAt: !3345)
!3368 = !DILocation(line: 157, column: 39, scope: !3369, inlinedAt: !3345)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !590, line: 156, column: 9)
!3370 = !DILocalVariable(name: "__dest", arg: 1, scope: !3371, file: !1542, line: 26, type: !2961)
!3371 = distinct !DISubprogram(name: "memcpy", scope: !1542, file: !1542, line: 26, type: !2959, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3372)
!3372 = !{!3370, !3373, !3374}
!3373 = !DILocalVariable(name: "__src", arg: 2, scope: !3371, file: !1542, line: 26, type: !2962)
!3374 = !DILocalVariable(name: "__len", arg: 3, scope: !3371, file: !1542, line: 26, type: !91)
!3375 = !DILocation(line: 0, scope: !3371, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 157, column: 11, scope: !3369, inlinedAt: !3345)
!3377 = !DILocation(line: 29, column: 10, scope: !3371, inlinedAt: !3376)
!3378 = !DILocation(line: 158, column: 11, scope: !3369, inlinedAt: !3345)
!3379 = !DILocation(line: 162, column: 23, scope: !3380, inlinedAt: !3345)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !590, line: 162, column: 15)
!3381 = distinct !DILexicalBlock(scope: !3366, file: !590, line: 161, column: 9)
!3382 = !DILocation(line: 162, column: 15, scope: !3381, inlinedAt: !3345)
!3383 = !DILocation(line: 167, column: 44, scope: !3384, inlinedAt: !3345)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !590, line: 163, column: 13)
!3385 = !DILocation(line: 0, scope: !3371, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 167, column: 15, scope: !3384, inlinedAt: !3345)
!3387 = !DILocation(line: 29, column: 10, scope: !3371, inlinedAt: !3386)
!3388 = !DILocation(line: 168, column: 15, scope: !3384, inlinedAt: !3345)
!3389 = !DILocation(line: 168, column: 32, scope: !3384, inlinedAt: !3345)
!3390 = !DILocation(line: 169, column: 13, scope: !3384, inlinedAt: !3345)
!3391 = !DILocation(line: 0, scope: !3343, inlinedAt: !3345)
!3392 = !DILocation(line: 274, column: 3, scope: !3327)
!3393 = distinct !DISubprogram(name: "setlocale_null", scope: !590, file: !590, line: 301, type: !3348, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "category", arg: 1, scope: !3393, file: !590, line: 301, type: !23)
!3396 = !DILocation(line: 0, scope: !3393)
!3397 = !DILocation(line: 0, scope: !3347, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 304, column: 10, scope: !3393)
!3399 = !DILocation(line: 62, column: 24, scope: !3347, inlinedAt: !3398)
!3400 = !DILocation(line: 304, column: 3, scope: !3393)
!3401 = distinct !DISubprogram(name: "rpl_fclose", scope: !592, file: !592, line: 58, type: !3402, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3438)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!23, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2607, line: 7, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3406, file: !686, line: 51, baseType: !23, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3406, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3406, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3406, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3406, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3406, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3406, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3406, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3406, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3406, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3406, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3406, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3406, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3406, file: !686, line: 70, baseType: !3422, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3406, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3406, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3406, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3406, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3406, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3406, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3406, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3406, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3406, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3406, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3406, file: !686, line: 93, baseType: !3422, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3406, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3406, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3406, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3406, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!3438 = !{!3439, !3440, !3441, !3442}
!3439 = !DILocalVariable(name: "fp", arg: 1, scope: !3401, file: !592, line: 58, type: !3404)
!3440 = !DILocalVariable(name: "saved_errno", scope: !3401, file: !592, line: 60, type: !23)
!3441 = !DILocalVariable(name: "fd", scope: !3401, file: !592, line: 61, type: !23)
!3442 = !DILocalVariable(name: "result", scope: !3401, file: !592, line: 62, type: !23)
!3443 = !DILocation(line: 0, scope: !3401)
!3444 = !DILocation(line: 65, column: 8, scope: !3401)
!3445 = !DILocation(line: 66, column: 10, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3401, file: !592, line: 66, column: 7)
!3447 = !DILocation(line: 66, column: 7, scope: !3401)
!3448 = !DILocation(line: 67, column: 12, scope: !3446)
!3449 = !DILocation(line: 67, column: 5, scope: !3446)
!3450 = !DILocation(line: 72, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3401, file: !592, line: 72, column: 7)
!3452 = !DILocation(line: 72, column: 23, scope: !3451)
!3453 = !DILocation(line: 72, column: 33, scope: !3451)
!3454 = !DILocation(line: 72, column: 26, scope: !3451)
!3455 = !DILocation(line: 72, column: 59, scope: !3451)
!3456 = !DILocation(line: 73, column: 7, scope: !3451)
!3457 = !DILocation(line: 73, column: 10, scope: !3451)
!3458 = !DILocation(line: 72, column: 7, scope: !3401)
!3459 = !DILocation(line: 100, column: 12, scope: !3401)
!3460 = !DILocation(line: 105, column: 7, scope: !3401)
!3461 = !DILocation(line: 74, column: 19, scope: !3451)
!3462 = !DILocation(line: 105, column: 19, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3401, file: !592, line: 105, column: 7)
!3464 = !DILocation(line: 107, column: 13, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3463, file: !592, line: 106, column: 5)
!3466 = !DILocation(line: 109, column: 5, scope: !3465)
!3467 = !DILocation(line: 112, column: 1, scope: !3401)
!3468 = !DISubprogram(name: "fileno", scope: !681, file: !681, line: 785, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!23, !3422}
!3471 = !DISubprogram(name: "fclose", scope: !681, file: !681, line: 213, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3472 = !DISubprogram(name: "lseek", scope: !3473, file: !3473, line: 334, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3473 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!709, !23, !709, !23}
!3476 = distinct !DISubprogram(name: "rpl_fflush", scope: !594, file: !594, line: 129, type: !3477, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3513)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!23, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2607, line: 7, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3481, file: !686, line: 51, baseType: !23, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3481, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3481, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3481, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3481, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3481, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3481, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3481, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3481, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3481, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3481, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3481, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3481, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3481, file: !686, line: 70, baseType: !3497, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3481, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3481, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3481, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3481, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3481, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3481, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3481, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3481, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3481, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3481, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3481, file: !686, line: 93, baseType: !3497, size: 64, offset: 1344)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3481, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3481, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3481, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3481, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!3513 = !{!3514}
!3514 = !DILocalVariable(name: "stream", arg: 1, scope: !3476, file: !594, line: 129, type: !3479)
!3515 = !DILocation(line: 0, scope: !3476)
!3516 = !DILocation(line: 150, column: 14, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3476, file: !594, line: 150, column: 7)
!3518 = !DILocation(line: 150, column: 22, scope: !3517)
!3519 = !DILocation(line: 150, column: 27, scope: !3517)
!3520 = !DILocation(line: 150, column: 7, scope: !3476)
!3521 = !DILocation(line: 151, column: 12, scope: !3517)
!3522 = !DILocation(line: 151, column: 5, scope: !3517)
!3523 = !DILocalVariable(name: "fp", arg: 1, scope: !3524, file: !594, line: 41, type: !3479)
!3524 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !594, file: !594, line: 41, type: !3525, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3479}
!3527 = !{!3523}
!3528 = !DILocation(line: 0, scope: !3524, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 156, column: 3, scope: !3476)
!3530 = !DILocation(line: 43, column: 11, scope: !3531, inlinedAt: !3529)
!3531 = distinct !DILexicalBlock(scope: !3524, file: !594, line: 43, column: 7)
!3532 = !DILocation(line: 43, column: 18, scope: !3531, inlinedAt: !3529)
!3533 = !DILocation(line: 43, column: 7, scope: !3524, inlinedAt: !3529)
!3534 = !DILocation(line: 45, column: 5, scope: !3531, inlinedAt: !3529)
!3535 = !DILocation(line: 158, column: 10, scope: !3476)
!3536 = !DILocation(line: 158, column: 3, scope: !3476)
!3537 = !DILocation(line: 235, column: 1, scope: !3476)
!3538 = !DISubprogram(name: "fflush", scope: !681, file: !681, line: 218, type: !3539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!23, !3497}
!3541 = distinct !DISubprogram(name: "rpl_fseeko", scope: !596, file: !596, line: 28, type: !3542, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3579)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!23, !3544, !3578, !23}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2607, line: 7, baseType: !3546)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !686, line: 49, size: 1728, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3546, file: !686, line: 51, baseType: !23, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3546, file: !686, line: 54, baseType: !47, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3546, file: !686, line: 55, baseType: !47, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3546, file: !686, line: 56, baseType: !47, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3546, file: !686, line: 57, baseType: !47, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3546, file: !686, line: 58, baseType: !47, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3546, file: !686, line: 59, baseType: !47, size: 64, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3546, file: !686, line: 60, baseType: !47, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3546, file: !686, line: 61, baseType: !47, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3546, file: !686, line: 64, baseType: !47, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3546, file: !686, line: 65, baseType: !47, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3546, file: !686, line: 66, baseType: !47, size: 64, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3546, file: !686, line: 68, baseType: !701, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3546, file: !686, line: 70, baseType: !3562, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3546, file: !686, line: 72, baseType: !23, size: 32, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3546, file: !686, line: 73, baseType: !23, size: 32, offset: 928)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3546, file: !686, line: 74, baseType: !707, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3546, file: !686, line: 77, baseType: !90, size: 16, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3546, file: !686, line: 78, baseType: !712, size: 8, offset: 1040)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3546, file: !686, line: 79, baseType: !714, size: 8, offset: 1048)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3546, file: !686, line: 81, baseType: !718, size: 64, offset: 1088)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3546, file: !686, line: 89, baseType: !721, size: 64, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3546, file: !686, line: 91, baseType: !723, size: 64, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3546, file: !686, line: 92, baseType: !726, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3546, file: !686, line: 93, baseType: !3562, size: 64, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3546, file: !686, line: 94, baseType: !46, size: 64, offset: 1408)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3546, file: !686, line: 95, baseType: !91, size: 64, offset: 1472)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3546, file: !686, line: 96, baseType: !23, size: 32, offset: 1536)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3546, file: !686, line: 98, baseType: !733, size: 160, offset: 1568)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !681, line: 63, baseType: !707)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "fp", arg: 1, scope: !3541, file: !596, line: 28, type: !3544)
!3581 = !DILocalVariable(name: "offset", arg: 2, scope: !3541, file: !596, line: 28, type: !3578)
!3582 = !DILocalVariable(name: "whence", arg: 3, scope: !3541, file: !596, line: 28, type: !23)
!3583 = !DILocalVariable(name: "pos", scope: !3584, file: !596, line: 117, type: !3578)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !596, line: 113, column: 5)
!3585 = distinct !DILexicalBlock(scope: !3541, file: !596, line: 52, column: 7)
!3586 = !DILocation(line: 0, scope: !3541)
!3587 = !DILocation(line: 52, column: 11, scope: !3585)
!3588 = !{!913, !615, i64 16}
!3589 = !DILocation(line: 52, column: 31, scope: !3585)
!3590 = !{!913, !615, i64 8}
!3591 = !DILocation(line: 52, column: 24, scope: !3585)
!3592 = !DILocation(line: 53, column: 7, scope: !3585)
!3593 = !DILocation(line: 53, column: 14, scope: !3585)
!3594 = !DILocation(line: 53, column: 35, scope: !3585)
!3595 = !{!913, !615, i64 32}
!3596 = !DILocation(line: 53, column: 28, scope: !3585)
!3597 = !DILocation(line: 54, column: 7, scope: !3585)
!3598 = !DILocation(line: 54, column: 14, scope: !3585)
!3599 = !{!913, !615, i64 72}
!3600 = !DILocation(line: 54, column: 28, scope: !3585)
!3601 = !DILocation(line: 52, column: 7, scope: !3541)
!3602 = !DILocation(line: 117, column: 26, scope: !3584)
!3603 = !DILocation(line: 117, column: 19, scope: !3584)
!3604 = !DILocation(line: 0, scope: !3584)
!3605 = !DILocation(line: 118, column: 15, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3584, file: !596, line: 118, column: 11)
!3607 = !DILocation(line: 118, column: 11, scope: !3584)
!3608 = !DILocation(line: 129, column: 11, scope: !3584)
!3609 = !DILocation(line: 129, column: 18, scope: !3584)
!3610 = !DILocation(line: 130, column: 11, scope: !3584)
!3611 = !DILocation(line: 130, column: 19, scope: !3584)
!3612 = !{!913, !839, i64 144}
!3613 = !DILocation(line: 161, column: 7, scope: !3584)
!3614 = !DILocation(line: 163, column: 10, scope: !3541)
!3615 = !DILocation(line: 163, column: 3, scope: !3541)
!3616 = !DILocation(line: 164, column: 1, scope: !3541)
!3617 = !DISubprogram(name: "fseeko", scope: !681, file: !681, line: 712, type: !3618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!23, !3562, !709, !23}
