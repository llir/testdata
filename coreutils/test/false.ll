; ModuleID = 'coreutils-8.32/src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !99
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !141
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !256
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !262
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !264
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.55 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.56 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.57 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.60 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !271
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !278
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !266
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !280
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.69 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.77 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.78 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.83 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.84 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.85 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.86 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.87 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !286
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1019, metadata !DIExpression()), !dbg !1020
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1021
  %3 = load i8*, i8** @program_name, align 8, !dbg !1021, !tbaa !1022
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #19, !dbg !1021
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1026
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #19, !dbg !1026
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1027
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1027, !tbaa !1022
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !1027
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1028
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1028, !tbaa !1022
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !1028
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1029
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !1029
  tail call fastcc void @emit_ancillary_info(), !dbg !1030
  tail call void @exit(i32 %0) #21, !dbg !1031
  unreachable, !dbg !1031
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !297 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #5 !dbg !1032 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1035, metadata !DIExpression()), !dbg !1049
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1050
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !1036, metadata !DIExpression()), !dbg !1051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !1051
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1045, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !1046, metadata !DIExpression()), !dbg !1049
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !1046, metadata !DIExpression()), !dbg !1049
  br label %4, !dbg !1053

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !1046, metadata !DIExpression()), !dbg !1049
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #22, !dbg !1054
  %8 = icmp eq i32 %7, 0, !dbg !1054
  br i1 %8, label %14, label %9, !dbg !1053

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !1055
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !1046, metadata !DIExpression()), !dbg !1049
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !1056
  %12 = load i8*, i8** %11, align 8, !dbg !1056, !tbaa !1057
  %13 = icmp eq i8* %12, null, !dbg !1059
  br i1 %13, label %14, label %4, !dbg !1060, !llvm.loop !1061

14:                                               ; preds = %9, %4
  %15 = phi %struct.infomap* [ %10, %9 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1046, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1046, metadata !DIExpression()), !dbg !1049
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !1062
  %17 = load i8*, i8** %16, align 8, !dbg !1062, !tbaa !1064
  %18 = icmp eq i8* %17, null, !dbg !1065
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %19, metadata !1045, metadata !DIExpression()), !dbg !1049
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #19, !dbg !1067
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #19, !dbg !1067
  %22 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %22, metadata !1048, metadata !DIExpression()), !dbg !1049
  %23 = icmp eq i8* %22, null, !dbg !1069
  br i1 %23, label %31, label %24, !dbg !1071

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #22, !dbg !1072
  %26 = icmp eq i32 %25, 0, !dbg !1072
  br i1 %26, label %31, label %27, !dbg !1073

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #19, !dbg !1074
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !1022
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1074
  br label %31, !dbg !1076

31:                                               ; preds = %24, %14, %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #19, !dbg !1077
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !1077
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #19, !dbg !1078
  %35 = icmp eq i8* %19, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !1078
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1078
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #19, !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1079
  ret void, !dbg !1079
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !336 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !1080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8** %1, metadata !1086, metadata !DIExpression()), !dbg !1087
  %3 = icmp eq i32 %0, 2, !dbg !1088
  br i1 %3, label %4, label %21, !dbg !1090

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !1091, !tbaa !1022
  tail call void @set_program_name(i8* %5) #19, !dbg !1093
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !1094
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1095
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !1096
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1097
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1098
  %11 = load i8*, i8** %10, align 8, !dbg !1098, !tbaa !1022
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #22, !dbg !1098
  %13 = icmp eq i32 %12, 0, !dbg !1098
  br i1 %13, label %14, label %15, !dbg !1100

14:                                               ; preds = %4
  tail call void @usage(i32 1) #23, !dbg !1101
  unreachable, !dbg !1101

15:                                               ; preds = %4
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #22, !dbg !1102
  %17 = icmp eq i32 %16, 0, !dbg !1102
  br i1 %17, label %18, label %21, !dbg !1104

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105, !tbaa !1022
  %20 = load i8*, i8** @Version, align 8, !dbg !1106, !tbaa !1022
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #19, !dbg !1107
  br label %21, !dbg !1107

21:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !1108
}

; Function Attrs: nounwind
declare !dbg !340 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !343 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !344 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1111, metadata !DIExpression()), !dbg !1112
  store i8* %0, i8** @file_name, align 8, !dbg !1113, !tbaa !1022
  ret void, !dbg !1114
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1115 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1121, !tbaa !1122
  ret void, !dbg !1124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !1125 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1130, !tbaa !1022
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !1131
  %3 = icmp eq i32 %2, 0, !dbg !1132
  br i1 %3, label %22, label %4, !dbg !1133

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1134, !tbaa !1122, !range !1135
  %6 = icmp eq i8 %5, 0, !dbg !1134
  br i1 %6, label %11, label %7, !dbg !1136

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1137
  %9 = load i32, i32* %8, align 4, !dbg !1137, !tbaa !1138
  %10 = icmp eq i32 %9, 32, !dbg !1140
  br i1 %10, label %22, label %11, !dbg !1141

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #19, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %12, metadata !1127, metadata !DIExpression()), !dbg !1143
  %13 = load i8*, i8** @file_name, align 8, !dbg !1144, !tbaa !1022
  %14 = icmp eq i8* %13, null, !dbg !1144
  %15 = tail call i32* @__errno_location() #24, !dbg !1146
  %16 = load i32, i32* %15, align 4, !dbg !1146, !tbaa !1138
  br i1 %14, label %19, label %17, !dbg !1147

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !1148
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !1149
  br label %20, !dbg !1149

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #19, !dbg !1150
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1151, !tbaa !1138
  tail call void @_exit(i32 %21) #21, !dbg !1152
  unreachable, !dbg !1152

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1153, !tbaa !1022
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !1155
  %25 = icmp eq i32 %24, 0, !dbg !1156
  br i1 %25, label %28, label %26, !dbg !1157

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1158, !tbaa !1138
  tail call void @_exit(i32 %27) #21, !dbg !1159
  unreachable, !dbg !1159

28:                                               ; preds = %22
  ret void, !dbg !1160
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !1161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1163, metadata !DIExpression()), !dbg !1166
  %2 = icmp eq i8* %0, null, !dbg !1167
  br i1 %2, label %3, label %6, !dbg !1169

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1170, !tbaa !1022
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1172
  tail call void @abort() #21, !dbg !1173
  unreachable, !dbg !1173

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %7, metadata !1164, metadata !DIExpression()), !dbg !1166
  %8 = icmp eq i8* %7, null, !dbg !1175
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1176
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %10, metadata !1165, metadata !DIExpression()), !dbg !1166
  %11 = ptrtoint i8* %10 to i64, !dbg !1177
  %12 = ptrtoint i8* %0 to i64, !dbg !1177
  %13 = sub i64 %11, %12, !dbg !1177
  %14 = icmp sgt i64 %13, 6, !dbg !1179
  br i1 %14, label %15, label %24, !dbg !1180

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1181
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #22, !dbg !1182
  %18 = icmp eq i32 %17, 0, !dbg !1183
  br i1 %18, label %19, label %24, !dbg !1184

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1163, metadata !DIExpression()), !dbg !1166
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #22, !dbg !1185
  %21 = icmp eq i32 %20, 0, !dbg !1188
  br i1 %21, label %22, label %24, !dbg !1189

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %23, metadata !1163, metadata !DIExpression()), !dbg !1166
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1192, !tbaa !1022
  br label %24, !dbg !1193

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1163, metadata !DIExpression()), !dbg !1166
  store i8* %25, i8** @program_name, align 8, !dbg !1194, !tbaa !1022
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1195, !tbaa !1022
  ret void, !dbg !1196
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !1197 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1202, metadata !DIExpression()), !dbg !1205
  %2 = tail call i32* @__errno_location() #24, !dbg !1206
  %3 = load i32, i32* %2, align 4, !dbg !1206, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %3, metadata !1203, metadata !DIExpression()), !dbg !1205
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1207
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1207
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1207
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !1208
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i32 %3, i32* %2, align 4, !dbg !1209, !tbaa !1138
  ret %struct.quoting_options* %8, !dbg !1210
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1211 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1215, metadata !DIExpression()), !dbg !1216
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1217
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1217
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1218
  %5 = load i32, i32* %4, align 8, !dbg !1218, !tbaa !1219
  ret i32 %5, !dbg !1221
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1222 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1226, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 %1, metadata !1227, metadata !DIExpression()), !dbg !1228
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1229
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1230
  store i32 %1, i32* %5, align 8, !dbg !1231, !tbaa !1219
  ret void, !dbg !1232
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1233 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1237, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %1, metadata !1238, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i32 %2, metadata !1239, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %1, metadata !1240, metadata !DIExpression()), !dbg !1246
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1247
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1247
  %6 = lshr i8 %1, 5, !dbg !1248
  %7 = zext i8 %6 to i64, !dbg !1248
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1249
  call void @llvm.dbg.value(metadata i32* %8, metadata !1242, metadata !DIExpression()), !dbg !1246
  %9 = and i8 %1, 31, !dbg !1250
  %10 = zext i8 %9 to i32, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %10, metadata !1244, metadata !DIExpression()), !dbg !1246
  %11 = load i32, i32* %8, align 4, !dbg !1251, !tbaa !1138
  %12 = lshr i32 %11, %10, !dbg !1252
  %13 = and i32 %12, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %13, metadata !1245, metadata !DIExpression()), !dbg !1246
  %14 = and i32 %2, 1, !dbg !1254
  %15 = xor i32 %13, %14, !dbg !1255
  %16 = shl i32 %15, %10, !dbg !1256
  %17 = xor i32 %16, %11, !dbg !1257
  store i32 %17, i32* %8, align 4, !dbg !1257, !tbaa !1138
  ret i32 %13, !dbg !1258
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1266
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1267
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1263, metadata !DIExpression()), !dbg !1266
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1270
  %6 = load i32, i32* %5, align 4, !dbg !1270, !tbaa !1271
  call void @llvm.dbg.value(metadata i32 %6, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i32 %1, i32* %5, align 4, !dbg !1272, !tbaa !1271
  ret i32 %6, !dbg !1273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !1274 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1278, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %2, metadata !1280, metadata !DIExpression()), !dbg !1281
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1282
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1278, metadata !DIExpression()), !dbg !1281
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1285
  store i32 10, i32* %6, align 8, !dbg !1286, !tbaa !1219
  %7 = icmp ne i8* %1, null, !dbg !1287
  %8 = icmp ne i8* %2, null, !dbg !1289
  %9 = and i1 %7, %8, !dbg !1290
  br i1 %9, label %11, label %10, !dbg !1290

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !1291
  unreachable, !dbg !1291

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1292
  store i8* %1, i8** %12, align 8, !dbg !1293, !tbaa !1294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1295
  store i8* %2, i8** %13, align 8, !dbg !1296, !tbaa !1297
  ret void, !dbg !1298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !1299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1303, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %1, metadata !1304, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %3, metadata !1306, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1307, metadata !DIExpression()), !dbg !1311
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1312
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1308, metadata !DIExpression()), !dbg !1311
  %8 = tail call i32* @__errno_location() #24, !dbg !1313
  %9 = load i32, i32* %8, align 4, !dbg !1313, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %9, metadata !1309, metadata !DIExpression()), !dbg !1311
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1314
  %11 = load i32, i32* %10, align 8, !dbg !1314, !tbaa !1219
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1315
  %13 = load i32, i32* %12, align 4, !dbg !1315, !tbaa !1271
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1316
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1317
  %16 = load i8*, i8** %15, align 8, !dbg !1317, !tbaa !1294
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1318
  %18 = load i8*, i8** %17, align 8, !dbg !1318, !tbaa !1297
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %19, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i32 %9, i32* %8, align 4, !dbg !1320, !tbaa !1138
  ret i64 %19, !dbg !1321
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !1322 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %1, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %2, metadata !1330, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %3, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %4, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %5, metadata !1333, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32* %6, metadata !1334, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %7, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %8, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* null, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1341, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1342, metadata !DIExpression()), !dbg !1386
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !1387
  %14 = icmp eq i64 %13, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i1 %14, metadata !1343, metadata !DIExpression()), !dbg !1386
  %15 = lshr i32 %5, 1, !dbg !1389
  %16 = trunc i32 %15 to i8, !dbg !1389
  %17 = and i8 %16, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i8 %17, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1347, metadata !DIExpression()), !dbg !1386
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1390
  %19 = and i32 %5, 4, !dbg !1392
  %20 = icmp eq i32 %19, 0, !dbg !1392
  %21 = and i32 %5, 1, !dbg !1395
  %22 = icmp eq i32 %21, 0, !dbg !1395
  %23 = bitcast i64* %10 to i8*, !dbg !1398
  %24 = bitcast i32* %12 to i8*, !dbg !1399
  %25 = icmp eq i32* %6, null, !dbg !1400
  br label %26, !dbg !1402

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1403
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1404
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1405
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1406
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1386
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1407
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1408
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1409
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %38, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %37, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %36, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %34, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %33, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %32, metadata !1341, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %31, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %30, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %29, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %28, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %27, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1380), !dbg !1410
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
  ], !dbg !1411

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 5, metadata !1332, metadata !DIExpression()), !dbg !1386
  br label %92, !dbg !1412

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 5, metadata !1332, metadata !DIExpression()), !dbg !1386
  %42 = and i8 %35, 1, !dbg !1414
  %43 = icmp eq i8 %42, 0, !dbg !1414
  br i1 %43, label %44, label %92, !dbg !1412

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1416
  br i1 %45, label %92, label %46, !dbg !1419

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1416, !tbaa !1420
  br label %92, !dbg !1416

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %27), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %48, metadata !1335, metadata !DIExpression()), !dbg !1386
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %27), !dbg !1425
  call void @llvm.dbg.value(metadata i8* %49, metadata !1336, metadata !DIExpression()), !dbg !1386
  br label %50, !dbg !1426

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %51, metadata !1335, metadata !DIExpression()), !dbg !1386
  %53 = and i8 %35, 1, !dbg !1427
  %54 = icmp eq i8 %53, 0, !dbg !1427
  br i1 %54, label %55, label %70, !dbg !1429

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1386
  %56 = load i8, i8* %51, align 1, !dbg !1430, !tbaa !1420
  %57 = icmp eq i8 %56, 0, !dbg !1433
  br i1 %57, label %70, label %58, !dbg !1433

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %61, metadata !1338, metadata !DIExpression()), !dbg !1386
  %62 = icmp ult i64 %61, %39, !dbg !1434
  br i1 %62, label %63, label %65, !dbg !1437

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1434
  store i8 %59, i8* %64, align 1, !dbg !1434, !tbaa !1420
  br label %65, !dbg !1434

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %66, metadata !1338, metadata !DIExpression()), !dbg !1386
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1438
  call void @llvm.dbg.value(metadata i8* %67, metadata !1340, metadata !DIExpression()), !dbg !1386
  %68 = load i8, i8* %67, align 1, !dbg !1430, !tbaa !1420
  %69 = icmp eq i8 %68, 0, !dbg !1433
  br i1 %69, label %70, label %58, !dbg !1433, !llvm.loop !1439

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %71, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %52, metadata !1340, metadata !DIExpression()), !dbg !1386
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %72, metadata !1341, metadata !DIExpression()), !dbg !1386
  br label %92, !dbg !1443

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1342, metadata !DIExpression()), !dbg !1386
  br label %74, !dbg !1444

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %75, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1386
  br label %76, !dbg !1445

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1406
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %78, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %77, metadata !1342, metadata !DIExpression()), !dbg !1386
  %79 = and i8 %78, 1, !dbg !1446
  %80 = icmp eq i8 %79, 0, !dbg !1446
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1448
  br label %82, !dbg !1448

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1386
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1389
  call void @llvm.dbg.value(metadata i8 %84, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %83, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  %85 = and i8 %84, 1, !dbg !1449
  %86 = icmp eq i8 %85, 0, !dbg !1449
  br i1 %86, label %87, label %92, !dbg !1451

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1452
  br i1 %88, label %92, label %89, !dbg !1455

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1452, !tbaa !1420
  br label %92, !dbg !1452

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1386
  br label %92, !dbg !1456

91:                                               ; preds = %26
  call void @abort() #21, !dbg !1457
  unreachable, !dbg !1457

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1441
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %40 ], !dbg !1386
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1386
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1386
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %100, metadata !1344, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %98, metadata !1341, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %96, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %93, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1386
  %101 = and i8 %99, 1, !dbg !1458
  %102 = icmp ne i8 %101, 0, !dbg !1458
  %103 = icmp ne i32 %93, 2, !dbg !1458
  %104 = and i1 %103, %102, !dbg !1458
  %105 = icmp ne i64 %98, 0, !dbg !1458
  %106 = and i1 %105, %104, !dbg !1458
  %107 = icmp ugt i64 %98, 1, !dbg !1458
  %108 = and i8 %100, 1, !dbg !1460
  %109 = icmp eq i8 %108, 0, !dbg !1460
  %110 = icmp eq i32 %93, 2, !dbg !1463
  %111 = or i1 %103, %109, !dbg !1465
  %112 = icmp ne i8 %108, 0, !dbg !1467
  %113 = and i1 %110, %112, !dbg !1467
  %114 = xor i1 %102, true, !dbg !1468
  %115 = xor i1 %104, true, !dbg !1400
  %116 = and i1 %109, %115, !dbg !1400
  %117 = or i1 %25, %116, !dbg !1400
  %118 = and i8 %99, %100, !dbg !1469
  %119 = and i8 %118, 1, !dbg !1469
  %120 = icmp ne i8 %119, 0, !dbg !1469
  %121 = and i1 %120, %105, !dbg !1469
  br label %122, !dbg !1471

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1472
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1441
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1403
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1407
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1408
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1409
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %126, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %123, metadata !1337, metadata !DIExpression()), !dbg !1386
  %131 = icmp eq i64 %126, -1, !dbg !1473
  br i1 %131, label %132, label %136, !dbg !1474

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1475
  %134 = load i8, i8* %133, align 1, !dbg !1475, !tbaa !1420
  %135 = icmp eq i8 %134, 0, !dbg !1476
  br i1 %135, label %581, label %138, !dbg !1477

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1478
  br i1 %137, label %581, label %138, !dbg !1477

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1479
  br i1 %106, label %139, label %154, !dbg !1480

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1481
  %141 = and i1 %107, %131, !dbg !1482
  br i1 %141, label %142, label %144, !dbg !1482

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %143, metadata !1331, metadata !DIExpression()), !dbg !1386
  br label %144, !dbg !1484

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1331, metadata !DIExpression()), !dbg !1386
  %146 = icmp ugt i64 %140, %145, !dbg !1485
  br i1 %146, label %154, label %147, !dbg !1486

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1487
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1488
  %150 = icmp ne i32 %149, 0, !dbg !1489
  %151 = or i1 %150, %109, !dbg !1490
  %152 = xor i1 %150, true, !dbg !1490
  %153 = zext i1 %152 to i8, !dbg !1490
  br i1 %151, label %154, label %639, !dbg !1490

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %156, metadata !1353, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %155, metadata !1331, metadata !DIExpression()), !dbg !1386
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1491
  %158 = load i8, i8* %157, align 1, !dbg !1491, !tbaa !1420
  call void @llvm.dbg.value(metadata i8 %158, metadata !1348, metadata !DIExpression()), !dbg !1479
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
  ], !dbg !1492

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1493

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1494

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1479
  %162 = and i8 %127, 1, !dbg !1497
  %163 = icmp eq i8 %162, 0, !dbg !1497
  %164 = and i1 %110, %163, !dbg !1497
  br i1 %164, label %165, label %181, !dbg !1497

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1499
  br i1 %166, label %167, label %169, !dbg !1503

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1499
  store i8 39, i8* %168, align 1, !dbg !1499, !tbaa !1420
  br label %169, !dbg !1499

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %170, metadata !1338, metadata !DIExpression()), !dbg !1386
  %171 = icmp ult i64 %170, %130, !dbg !1504
  br i1 %171, label %172, label %174, !dbg !1507

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1504
  store i8 36, i8* %173, align 1, !dbg !1504, !tbaa !1420
  br label %174, !dbg !1504

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %175, metadata !1338, metadata !DIExpression()), !dbg !1386
  %176 = icmp ult i64 %175, %130, !dbg !1508
  br i1 %176, label %177, label %179, !dbg !1511

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1508
  store i8 39, i8* %178, align 1, !dbg !1508, !tbaa !1420
  br label %179, !dbg !1508

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %180, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %181, !dbg !1512

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1386
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %183, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %182, metadata !1338, metadata !DIExpression()), !dbg !1386
  %184 = icmp ult i64 %182, %130, !dbg !1513
  br i1 %184, label %185, label %187, !dbg !1516

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1513
  store i8 92, i8* %186, align 1, !dbg !1513, !tbaa !1420
  br label %187, !dbg !1513

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %188, metadata !1338, metadata !DIExpression()), !dbg !1386
  br i1 %103, label %189, label %463, !dbg !1517

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1519
  %191 = icmp ult i64 %190, %155, !dbg !1520
  br i1 %191, label %192, label %463, !dbg !1521

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1522
  %194 = load i8, i8* %193, align 1, !dbg !1522, !tbaa !1420
  %195 = add i8 %194, -48, !dbg !1523
  %196 = icmp ult i8 %195, 10, !dbg !1523
  br i1 %196, label %197, label %463, !dbg !1523

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1524
  br i1 %198, label %199, label %201, !dbg !1528

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1524
  store i8 48, i8* %200, align 1, !dbg !1524, !tbaa !1420
  br label %201, !dbg !1524

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %202, metadata !1338, metadata !DIExpression()), !dbg !1386
  %203 = icmp ult i64 %202, %130, !dbg !1529
  br i1 %203, label %204, label %206, !dbg !1532

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1529
  store i8 48, i8* %205, align 1, !dbg !1529, !tbaa !1420
  br label %206, !dbg !1529

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %207, metadata !1338, metadata !DIExpression()), !dbg !1386
  br label %463, !dbg !1533

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1534

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1535

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1536

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1537

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1538
  %214 = icmp ult i64 %213, %155, !dbg !1539
  br i1 %214, label %215, label %463, !dbg !1540

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1541
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1542
  %218 = load i8, i8* %217, align 1, !dbg !1542, !tbaa !1420
  %219 = icmp eq i8 %218, 63, !dbg !1543
  br i1 %219, label %220, label %463, !dbg !1544

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1545
  %222 = load i8, i8* %221, align 1, !dbg !1545, !tbaa !1420
  %223 = sext i8 %222 to i32, !dbg !1545
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
  ], !dbg !1546

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1547

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %213, metadata !1337, metadata !DIExpression()), !dbg !1386
  %226 = icmp ult i64 %124, %130, !dbg !1549
  br i1 %226, label %227, label %229, !dbg !1552

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1549
  store i8 63, i8* %228, align 1, !dbg !1549, !tbaa !1420
  br label %229, !dbg !1549

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %230, metadata !1338, metadata !DIExpression()), !dbg !1386
  %231 = icmp ult i64 %230, %130, !dbg !1553
  br i1 %231, label %232, label %234, !dbg !1556

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1553
  store i8 34, i8* %233, align 1, !dbg !1553, !tbaa !1420
  br label %234, !dbg !1553

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %235, metadata !1338, metadata !DIExpression()), !dbg !1386
  %236 = icmp ult i64 %235, %130, !dbg !1557
  br i1 %236, label %237, label %239, !dbg !1560

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1557
  store i8 34, i8* %238, align 1, !dbg !1557, !tbaa !1420
  br label %239, !dbg !1557

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %240, metadata !1338, metadata !DIExpression()), !dbg !1386
  %241 = icmp ult i64 %240, %130, !dbg !1561
  br i1 %241, label %242, label %244, !dbg !1564

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1561
  store i8 63, i8* %243, align 1, !dbg !1561, !tbaa !1420
  br label %244, !dbg !1561

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %245, metadata !1338, metadata !DIExpression()), !dbg !1386
  br label %463, !dbg !1565

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1352, metadata !DIExpression()), !dbg !1479
  br label %256, !dbg !1566

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1352, metadata !DIExpression()), !dbg !1479
  br label %256, !dbg !1567

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1352, metadata !DIExpression()), !dbg !1479
  br label %254, !dbg !1568

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1352, metadata !DIExpression()), !dbg !1479
  br label %254, !dbg !1569

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1352, metadata !DIExpression()), !dbg !1479
  br label %256, !dbg !1570

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1352, metadata !DIExpression()), !dbg !1479
  br i1 %110, label %252, label %253, !dbg !1571

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1572

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1575

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1576
  call void @llvm.dbg.value(metadata i8 %255, metadata !1352, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1381), !dbg !1577
  br i1 %111, label %256, label %625, !dbg !1578

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1576
  call void @llvm.dbg.value(metadata i8 %257, metadata !1352, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1382), !dbg !1580
  br i1 %102, label %488, label %463, !dbg !1581

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1582

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1583, !tbaa !1420
  %261 = icmp eq i8 %260, 0, !dbg !1584
  br i1 %261, label %262, label %463, !dbg !1585

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1586
  br i1 %263, label %264, label %463, !dbg !1588

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1479
  br label %265, !dbg !1589

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %266, metadata !1355, metadata !DIExpression()), !dbg !1479
  br i1 %111, label %463, label %625, !dbg !1590

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1479
  br i1 %110, label %268, label %463, !dbg !1591

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1592

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1594
  %271 = icmp ne i64 %125, 0, !dbg !1596
  %272 = or i1 %271, %270, !dbg !1597
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1597
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %274, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %273, metadata !1339, metadata !DIExpression()), !dbg !1386
  %275 = icmp ult i64 %124, %274, !dbg !1598
  br i1 %275, label %276, label %278, !dbg !1601

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1598
  store i8 39, i8* %277, align 1, !dbg !1598, !tbaa !1420
  br label %278, !dbg !1598

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %279, metadata !1338, metadata !DIExpression()), !dbg !1386
  %280 = icmp ult i64 %279, %274, !dbg !1602
  br i1 %280, label %281, label %283, !dbg !1605

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1602
  store i8 92, i8* %282, align 1, !dbg !1602, !tbaa !1420
  br label %283, !dbg !1602

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %284, metadata !1338, metadata !DIExpression()), !dbg !1386
  %285 = icmp ult i64 %284, %274, !dbg !1606
  br i1 %285, label %286, label %288, !dbg !1609

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1606
  store i8 39, i8* %287, align 1, !dbg !1606, !tbaa !1420
  br label %288, !dbg !1606

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %289, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %463, !dbg !1610

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1611

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1356, metadata !DIExpression()), !dbg !1612
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1613
  %293 = load i16*, i16** %292, align 8, !dbg !1613, !tbaa !1022
  %294 = zext i8 %158 to i64, !dbg !1613
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1613
  %296 = load i16, i16* %295, align 2, !dbg !1613, !tbaa !1615
  %297 = lshr i16 %296, 14, !dbg !1617
  %298 = trunc i16 %297 to i8, !dbg !1617
  %299 = and i8 %298, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i8 %299, metadata !1359, metadata !DIExpression()), !dbg !1612
  br label %355, !dbg !1618

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1619
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1360, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %23, metadata !1621, metadata !DIExpression()) #19, !dbg !1629
  call void @llvm.dbg.value(metadata i32 0, metadata !1627, metadata !DIExpression()) #19, !dbg !1629
  call void @llvm.dbg.value(metadata i64 8, metadata !1628, metadata !DIExpression()) #19, !dbg !1629
  store i64 0, i64* %10, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 1, metadata !1359, metadata !DIExpression()), !dbg !1612
  %301 = icmp eq i64 %155, -1, !dbg !1632
  br i1 %301, label %302, label %304, !dbg !1634

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %303, metadata !1331, metadata !DIExpression()), !dbg !1386
  br label %304, !dbg !1636

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  br label %306, !dbg !1637

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1638
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %308, metadata !1359, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1640
  %309 = add i64 %307, %123, !dbg !1641
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1642
  %311 = sub i64 %305, %309, !dbg !1643
  call void @llvm.dbg.value(metadata i32* %12, metadata !1366, metadata !DIExpression(DW_OP_deref)), !dbg !1399
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %312, metadata !1369, metadata !DIExpression()), !dbg !1399
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1645

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  %314 = icmp ugt i64 %305, %309, !dbg !1646
  br i1 %314, label %315, label %340, !dbg !1648

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1649
  br label %317, !dbg !1649

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1356, metadata !DIExpression()), !dbg !1612
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1650
  %321 = load i8, i8* %320, align 1, !dbg !1650, !tbaa !1420
  %322 = icmp eq i8 %321, 0, !dbg !1648
  br i1 %322, label %340, label %323, !dbg !1649

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %324, metadata !1356, metadata !DIExpression()), !dbg !1612
  %325 = add i64 %324, %123, !dbg !1652
  %326 = icmp ult i64 %325, %305, !dbg !1646
  br i1 %326, label %317, label %340, !dbg !1648, !llvm.loop !1653

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1654
  %329 = and i1 %113, %328, !dbg !1657
  call void @llvm.dbg.value(metadata i64 1, metadata !1370, metadata !DIExpression()), !dbg !1658
  br i1 %329, label %330, label %343, !dbg !1657

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1370, metadata !DIExpression()), !dbg !1658
  %332 = add i64 %331, %309, !dbg !1659
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1660
  %334 = load i8, i8* %333, align 1, !dbg !1660, !tbaa !1420
  %335 = sext i8 %334 to i32, !dbg !1660
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1661

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %337, metadata !1370, metadata !DIExpression()), !dbg !1658
  %338 = icmp eq i64 %337, %312, !dbg !1654
  br i1 %338, label %343, label %330, !dbg !1663, !llvm.loop !1664

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 %308, metadata !1359, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %307, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 %308, metadata !1359, metadata !DIExpression()), !dbg !1612
  br label %340, !dbg !1666

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1666
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1667, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %344, metadata !1366, metadata !DIExpression()), !dbg !1399
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !1669
  %346 = icmp eq i32 %345, 0, !dbg !1669
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1670
  call void @llvm.dbg.value(metadata i8 %347, metadata !1359, metadata !DIExpression()), !dbg !1612
  %348 = add i64 %312, %307, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %348, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 %347, metadata !1359, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %348, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1666
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1672
  %350 = icmp eq i32 %349, 0, !dbg !1673
  br i1 %350, label %306, label %351, !dbg !1674, !llvm.loop !1675

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1677
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %305, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1677
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1479
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1678
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1678
  call void @llvm.dbg.value(metadata i8 %358, metadata !1359, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %357, metadata !1356, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i64 %356, metadata !1331, metadata !DIExpression()), !dbg !1386
  %359 = and i8 %358, 1, !dbg !1679
  %360 = icmp ne i8 %359, 0, !dbg !1679
  call void @llvm.dbg.value(metadata i8 %359, metadata !1355, metadata !DIExpression()), !dbg !1479
  %361 = icmp ult i64 %357, 2, !dbg !1680
  %362 = or i1 %360, %114, !dbg !1681
  %363 = and i1 %361, %362, !dbg !1682
  br i1 %363, label %463, label %364, !dbg !1682

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %365, metadata !1377, metadata !DIExpression()), !dbg !1684
  br label %366, !dbg !1685

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1472
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1386
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1407
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1479
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1479
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1686
  call void @llvm.dbg.value(metadata i8 %372, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %371, metadata !1353, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %370, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %369, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %368, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %367, metadata !1337, metadata !DIExpression()), !dbg !1386
  br i1 %362, label %419, label %373, !dbg !1687

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1692

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1479
  %375 = and i8 %369, 1, !dbg !1695
  %376 = icmp eq i8 %375, 0, !dbg !1695
  %377 = and i1 %110, %376, !dbg !1695
  br i1 %377, label %378, label %394, !dbg !1695

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1697
  br i1 %379, label %380, label %382, !dbg !1701

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1697
  store i8 39, i8* %381, align 1, !dbg !1697, !tbaa !1420
  br label %382, !dbg !1697

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %383, metadata !1338, metadata !DIExpression()), !dbg !1386
  %384 = icmp ult i64 %383, %130, !dbg !1702
  br i1 %384, label %385, label %387, !dbg !1705

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1702
  store i8 36, i8* %386, align 1, !dbg !1702, !tbaa !1420
  br label %387, !dbg !1702

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %388, metadata !1338, metadata !DIExpression()), !dbg !1386
  %389 = icmp ult i64 %388, %130, !dbg !1706
  br i1 %389, label %390, label %392, !dbg !1709

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1706
  store i8 39, i8* %391, align 1, !dbg !1706, !tbaa !1420
  br label %392, !dbg !1706

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %393, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %394, !dbg !1710

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1386
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %396, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %395, metadata !1338, metadata !DIExpression()), !dbg !1386
  %397 = icmp ult i64 %395, %130, !dbg !1711
  br i1 %397, label %398, label %400, !dbg !1714

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1711
  store i8 92, i8* %399, align 1, !dbg !1711, !tbaa !1420
  br label %400, !dbg !1711

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %401, metadata !1338, metadata !DIExpression()), !dbg !1386
  %402 = icmp ult i64 %401, %130, !dbg !1715
  br i1 %402, label %403, label %407, !dbg !1718

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1715
  %405 = or i8 %404, 48, !dbg !1715
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1715
  store i8 %405, i8* %406, align 1, !dbg !1715, !tbaa !1420
  br label %407, !dbg !1715

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %408, metadata !1338, metadata !DIExpression()), !dbg !1386
  %409 = icmp ult i64 %408, %130, !dbg !1719
  br i1 %409, label %410, label %415, !dbg !1722

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1719
  %412 = and i8 %411, 7, !dbg !1719
  %413 = or i8 %412, 48, !dbg !1719
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1719
  store i8 %413, i8* %414, align 1, !dbg !1719, !tbaa !1420
  br label %415, !dbg !1719

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %416, metadata !1338, metadata !DIExpression()), !dbg !1386
  %417 = and i8 %370, 7, !dbg !1723
  %418 = or i8 %417, 48, !dbg !1724
  call void @llvm.dbg.value(metadata i8 %418, metadata !1348, metadata !DIExpression()), !dbg !1479
  br label %428, !dbg !1725

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1726
  %421 = icmp eq i8 %420, 0, !dbg !1726
  br i1 %421, label %428, label %422, !dbg !1728

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1729
  br i1 %423, label %424, label %426, !dbg !1733

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1729
  store i8 92, i8* %425, align 1, !dbg !1729, !tbaa !1420
  br label %426, !dbg !1729

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %427, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1479
  br label %428, !dbg !1734

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1386
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1407
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1479
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1479
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %433, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %432, metadata !1353, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %431, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %430, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %429, metadata !1338, metadata !DIExpression()), !dbg !1386
  %434 = add i64 %367, 1, !dbg !1735
  %435 = icmp ugt i64 %365, %434, !dbg !1737
  br i1 %435, label %436, label %526, !dbg !1738

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1739
  %438 = icmp ne i8 %437, 0, !dbg !1739
  %439 = and i8 %433, 1, !dbg !1739
  %440 = icmp eq i8 %439, 0, !dbg !1739
  %441 = and i1 %438, %440, !dbg !1739
  br i1 %441, label %442, label %453, !dbg !1739

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1742
  br i1 %443, label %444, label %446, !dbg !1746

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1742
  store i8 39, i8* %445, align 1, !dbg !1742, !tbaa !1420
  br label %446, !dbg !1742

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %447, metadata !1338, metadata !DIExpression()), !dbg !1386
  %448 = icmp ult i64 %447, %130, !dbg !1747
  br i1 %448, label %449, label %451, !dbg !1750

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1747
  store i8 39, i8* %450, align 1, !dbg !1747, !tbaa !1420
  br label %451, !dbg !1747

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %452, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %453, !dbg !1751

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1752
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %455, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %454, metadata !1338, metadata !DIExpression()), !dbg !1386
  %456 = icmp ult i64 %454, %130, !dbg !1753
  br i1 %456, label %457, label %459, !dbg !1756

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1753
  store i8 %431, i8* %458, align 1, !dbg !1753, !tbaa !1420
  br label %459, !dbg !1753

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %460, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %434, metadata !1337, metadata !DIExpression()), !dbg !1386
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1757
  %462 = load i8, i8* %461, align 1, !dbg !1757, !tbaa !1420
  call void @llvm.dbg.value(metadata i8 %462, metadata !1348, metadata !DIExpression()), !dbg !1479
  br label %366, !dbg !1758, !llvm.loop !1759

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1472
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1386
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1403
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1762
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1386
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1386
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1479
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1479
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1479
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %472, metadata !1355, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %471, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %156, metadata !1353, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %470, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %469, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %468, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %467, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %466, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %465, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %464, metadata !1337, metadata !DIExpression()), !dbg !1386
  br i1 %117, label %486, label %474, !dbg !1763

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1764
  %476 = zext i8 %475 to i64, !dbg !1764
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1765
  %478 = load i32, i32* %477, align 4, !dbg !1765, !tbaa !1138
  %479 = and i8 %470, 31, !dbg !1766
  %480 = zext i8 %479 to i32, !dbg !1766
  %481 = shl nuw i32 1, %480, !dbg !1767
  %482 = and i32 %478, %481, !dbg !1767
  %483 = icmp eq i32 %482, 0, !dbg !1767
  %484 = icmp eq i8 %156, 0, !dbg !1768
  %485 = and i1 %484, %483, !dbg !1769
  br i1 %485, label %526, label %488, !dbg !1769

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1768
  br i1 %487, label %526, label %488, !dbg !1770

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1771
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1386
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1403
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1762
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1407
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1408
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1479
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1479
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %496, metadata !1355, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %495, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %494, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %493, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %492, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %491, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %490, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %489, metadata !1337, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1383), !dbg !1772
  br i1 %109, label %498, label %629, !dbg !1773

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1479
  %499 = and i8 %493, 1, !dbg !1775
  %500 = icmp eq i8 %499, 0, !dbg !1775
  %501 = and i1 %110, %500, !dbg !1775
  br i1 %501, label %502, label %518, !dbg !1775

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1777
  br i1 %503, label %504, label %506, !dbg !1781

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1777
  store i8 39, i8* %505, align 1, !dbg !1777, !tbaa !1420
  br label %506, !dbg !1777

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %507, metadata !1338, metadata !DIExpression()), !dbg !1386
  %508 = icmp ult i64 %507, %497, !dbg !1782
  br i1 %508, label %509, label %511, !dbg !1785

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1782
  store i8 36, i8* %510, align 1, !dbg !1782, !tbaa !1420
  br label %511, !dbg !1782

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %512, metadata !1338, metadata !DIExpression()), !dbg !1386
  %513 = icmp ult i64 %512, %497, !dbg !1786
  br i1 %513, label %514, label %516, !dbg !1789

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1786
  store i8 39, i8* %515, align 1, !dbg !1786, !tbaa !1420
  br label %516, !dbg !1786

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %517, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %518, !dbg !1790

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1479
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %520, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %519, metadata !1338, metadata !DIExpression()), !dbg !1386
  %521 = icmp ult i64 %519, %497, !dbg !1791
  br i1 %521, label %522, label %524, !dbg !1794

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1791
  store i8 92, i8* %523, align 1, !dbg !1791, !tbaa !1420
  br label %524, !dbg !1791

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %525, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %536, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %535, metadata !1355, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %534, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %533, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %532, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %531, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %530, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %529, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %528, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %527, metadata !1337, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1384), !dbg !1795
  br label %553, !dbg !1796

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1771
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1386
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1403
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1762
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1407
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1408
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1799
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1479
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1479
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %535, metadata !1355, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %534, metadata !1354, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %533, metadata !1348, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %532, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %531, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %530, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %529, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %528, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %527, metadata !1337, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1384), !dbg !1795
  %537 = and i8 %531, 1, !dbg !1796
  %538 = icmp ne i8 %537, 0, !dbg !1796
  %539 = and i8 %534, 1, !dbg !1796
  %540 = icmp eq i8 %539, 0, !dbg !1796
  %541 = and i1 %538, %540, !dbg !1796
  br i1 %541, label %542, label %553, !dbg !1796

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1800
  br i1 %543, label %544, label %546, !dbg !1804

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1800
  store i8 39, i8* %545, align 1, !dbg !1800, !tbaa !1420
  br label %546, !dbg !1800

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %547, metadata !1338, metadata !DIExpression()), !dbg !1386
  %548 = icmp ult i64 %547, %536, !dbg !1805
  br i1 %548, label %549, label %551, !dbg !1808

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1805
  store i8 39, i8* %550, align 1, !dbg !1805, !tbaa !1420
  br label %551, !dbg !1805

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %552, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1386
  br label %553, !dbg !1809

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1479
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1386
  call void @llvm.dbg.value(metadata i8 %562, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %561, metadata !1338, metadata !DIExpression()), !dbg !1386
  %563 = icmp ult i64 %561, %554, !dbg !1810
  br i1 %563, label %564, label %566, !dbg !1813

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1810
  store i8 %556, i8* %565, align 1, !dbg !1810, !tbaa !1420
  br label %566, !dbg !1810

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %567, metadata !1338, metadata !DIExpression()), !dbg !1386
  %568 = and i8 %555, 1, !dbg !1814
  %569 = icmp eq i8 %568, 0, !dbg !1814
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1816
  call void @llvm.dbg.value(metadata i8 %570, metadata !1347, metadata !DIExpression()), !dbg !1386
  br label %571, !dbg !1817

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1771
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1386
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1403
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1762
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1407
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1386
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1409
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %578, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %577, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %576, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %575, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %574, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %573, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %572, metadata !1337, metadata !DIExpression()), !dbg !1386
  %580 = add i64 %572, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %580, metadata !1337, metadata !DIExpression()), !dbg !1386
  br label %122, !dbg !1819, !llvm.loop !1820

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %127, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %128, metadata !1346, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8 %129, metadata !1347, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  %583 = icmp eq i64 %124, 0, !dbg !1822
  %584 = and i1 %110, %583, !dbg !1824
  %585 = xor i1 %584, true, !dbg !1824
  %586 = or i1 %109, %585, !dbg !1824
  br i1 %586, label %587, label %629, !dbg !1824

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1825
  %589 = xor i1 %588, true, !dbg !1825
  %590 = and i8 %128, 1, !dbg !1827
  %591 = icmp eq i8 %590, 0, !dbg !1827
  %592 = or i1 %591, %589, !dbg !1825
  br i1 %592, label %602, label %593, !dbg !1825

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1828
  %595 = icmp eq i8 %594, 0, !dbg !1828
  br i1 %595, label %598, label %596, !dbg !1831

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %125, metadata !1339, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %582, metadata !1331, metadata !DIExpression()), !dbg !1386
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1832
  br label %645, !dbg !1833

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1834
  %600 = icmp ne i64 %125, 0, !dbg !1836
  %601 = and i1 %600, %599, !dbg !1837
  br i1 %601, label %26, label %602, !dbg !1837

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %130, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  %603 = icmp ne i8* %97, null, !dbg !1838
  %604 = and i1 %603, %109, !dbg !1840
  br i1 %604, label %605, label %620, !dbg !1840

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %124, metadata !1338, metadata !DIExpression()), !dbg !1386
  %606 = load i8, i8* %97, align 1, !dbg !1841, !tbaa !1420
  %607 = icmp eq i8 %606, 0, !dbg !1844
  br i1 %607, label %620, label %608, !dbg !1844

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1340, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %611, metadata !1338, metadata !DIExpression()), !dbg !1386
  %612 = icmp ult i64 %611, %130, !dbg !1845
  br i1 %612, label %613, label %615, !dbg !1848

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1845
  store i8 %609, i8* %614, align 1, !dbg !1845, !tbaa !1420
  br label %615, !dbg !1845

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %616, metadata !1338, metadata !DIExpression()), !dbg !1386
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %617, metadata !1340, metadata !DIExpression()), !dbg !1386
  %618 = load i8, i8* %617, align 1, !dbg !1841, !tbaa !1420
  %619 = icmp eq i8 %618, 0, !dbg !1844
  br i1 %619, label %620, label %608, !dbg !1844, !llvm.loop !1850

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %621, metadata !1338, metadata !DIExpression()), !dbg !1386
  %622 = icmp ult i64 %621, %130, !dbg !1852
  br i1 %622, label %623, label %645, !dbg !1854

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1855
  store i8 0, i8* %624, align 1, !dbg !1856, !tbaa !1420
  br label %645, !dbg !1855

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %630, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1385), !dbg !1857
  %627 = icmp eq i8 %101, 0, !dbg !1858
  %628 = select i1 %627, i32 2, i32 4, !dbg !1858
  br label %635, !dbg !1858

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1329, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %630, metadata !1331, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.label(metadata !1385), !dbg !1857
  %632 = icmp eq i32 %93, 2, !dbg !1860
  %633 = icmp eq i8 %101, 0, !dbg !1858
  %634 = select i1 %633, i32 2, i32 4, !dbg !1858
  br i1 %632, label %635, label %639, !dbg !1858

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !1858

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1332, metadata !DIExpression()), !dbg !1386
  %643 = and i32 %5, -3, !dbg !1861
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !1862
  br label %645, !dbg !1863

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !1864
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !1865 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %1, metadata !1870, metadata !DIExpression()), !dbg !1873
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %3, metadata !1871, metadata !DIExpression()), !dbg !1873
  %4 = icmp eq i8* %3, %0, !dbg !1875
  br i1 %4, label %5, label %71, !dbg !1877

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %6, metadata !1872, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %6, metadata !1879, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8* undef, metadata !1885, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 85, metadata !1886, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 84, metadata !1887, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 70, metadata !1888, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 45, metadata !1889, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 56, metadata !1890, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !1895
  %7 = load i8, i8* %6, align 1, !dbg !1898, !tbaa !1420
  %8 = and i8 %7, -33, !dbg !1898
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1898

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1900, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8* undef, metadata !1905, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 84, metadata !1906, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 70, metadata !1907, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 45, metadata !1908, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 56, metadata !1909, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1914
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1918
  %11 = load i8, i8* %10, align 1, !dbg !1918, !tbaa !1420
  %12 = and i8 %11, -33, !dbg !1918
  %13 = icmp eq i8 %12, 84, !dbg !1918
  br i1 %13, label %14, label %68, !dbg !1918

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1920, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* undef, metadata !1925, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 70, metadata !1926, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 45, metadata !1927, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 56, metadata !1928, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1933
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1937
  %16 = load i8, i8* %15, align 1, !dbg !1937, !tbaa !1420
  %17 = and i8 %16, -33, !dbg !1937
  %18 = icmp eq i8 %17, 70, !dbg !1937
  br i1 %18, label %19, label %68, !dbg !1937

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1939, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* undef, metadata !1944, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 45, metadata !1945, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 56, metadata !1946, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1951
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1955
  %21 = load i8, i8* %20, align 1, !dbg !1955, !tbaa !1420
  %22 = icmp eq i8 %21, 45, !dbg !1955
  br i1 %22, label %23, label %68, !dbg !1957

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1958, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* undef, metadata !1963, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 56, metadata !1964, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1969
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1973
  %25 = load i8, i8* %24, align 1, !dbg !1973, !tbaa !1420
  %26 = icmp eq i8 %25, 56, !dbg !1973
  br i1 %26, label %27, label %68, !dbg !1975

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1976, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* undef, metadata !1981, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1986
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1990
  %29 = load i8, i8* %28, align 1, !dbg !1990, !tbaa !1420
  %30 = icmp eq i8 %29, 0, !dbg !1990
  br i1 %30, label %31, label %68, !dbg !1992

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1993, !tbaa !1420
  %33 = icmp eq i8 %32, 96, !dbg !1994
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1993
  br label %71, !dbg !1995

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1900, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* undef, metadata !1905, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 66, metadata !1906, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 49, metadata !1907, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 56, metadata !1908, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 48, metadata !1909, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 51, metadata !1910, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 48, metadata !1911, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1996
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2000
  %37 = load i8, i8* %36, align 1, !dbg !2000, !tbaa !1420
  %38 = and i8 %37, -33, !dbg !2000
  %39 = icmp eq i8 %38, 66, !dbg !2000
  br i1 %39, label %40, label %68, !dbg !2000

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1920, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* undef, metadata !1925, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 49, metadata !1926, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 56, metadata !1927, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 48, metadata !1928, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 51, metadata !1929, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 48, metadata !1930, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !2001
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2003
  %42 = load i8, i8* %41, align 1, !dbg !2003, !tbaa !1420
  %43 = icmp eq i8 %42, 49, !dbg !2003
  br i1 %43, label %44, label %68, !dbg !2004

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1939, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8* undef, metadata !1944, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 56, metadata !1945, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 48, metadata !1946, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 51, metadata !1947, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 48, metadata !1948, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !2005
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2007
  %46 = load i8, i8* %45, align 1, !dbg !2007, !tbaa !1420
  %47 = icmp eq i8 %46, 56, !dbg !2007
  br i1 %47, label %48, label %68, !dbg !2008

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1958, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* undef, metadata !1963, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 48, metadata !1964, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 51, metadata !1965, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 48, metadata !1966, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2009
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2011
  %50 = load i8, i8* %49, align 1, !dbg !2011, !tbaa !1420
  %51 = icmp eq i8 %50, 48, !dbg !2011
  br i1 %51, label %52, label %68, !dbg !2012

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1976, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8* undef, metadata !1981, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 51, metadata !1982, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 48, metadata !1983, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2013
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2015
  %54 = load i8, i8* %53, align 1, !dbg !2015, !tbaa !1420
  %55 = icmp eq i8 %54, 51, !dbg !2015
  br i1 %55, label %56, label %68, !dbg !2016

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2017, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* undef, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 48, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2026
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2030
  %58 = load i8, i8* %57, align 1, !dbg !2030, !tbaa !1420
  %59 = icmp eq i8 %58, 48, !dbg !2030
  br i1 %59, label %60, label %68, !dbg !2032

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2033, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8* undef, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2041
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2045
  %62 = load i8, i8* %61, align 1, !dbg !2045, !tbaa !1420
  %63 = icmp eq i8 %62, 0, !dbg !2045
  br i1 %63, label %64, label %68, !dbg !2047

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2048, !tbaa !1420
  %66 = icmp eq i8 %65, 96, !dbg !2049
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !2048
  br label %71, !dbg !2050

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2051
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !2052
  br label %71, !dbg !2053

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1873
  ret i8* %72, !dbg !2054
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !228 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !232 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !2055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2059, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %1, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %0, metadata !2063, metadata !DIExpression()) #19, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %1, metadata !2068, metadata !DIExpression()) #19, !dbg !2076
  call void @llvm.dbg.value(metadata i64* null, metadata !2069, metadata !DIExpression()) #19, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2070, metadata !DIExpression()) #19, !dbg !2076
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2078
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2071, metadata !DIExpression()) #19, !dbg !2076
  %6 = tail call i32* @__errno_location() #24, !dbg !2079
  %7 = load i32, i32* %6, align 4, !dbg !2079, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %7, metadata !2072, metadata !DIExpression()) #19, !dbg !2076
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2080
  %9 = load i32, i32* %8, align 4, !dbg !2080, !tbaa !1271
  %10 = or i32 %9, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %10, metadata !2073, metadata !DIExpression()) #19, !dbg !2076
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2082
  %12 = load i32, i32* %11, align 8, !dbg !2082, !tbaa !1219
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2084
  %15 = load i8*, i8** %14, align 8, !dbg !2084, !tbaa !1294
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2085
  %17 = load i8*, i8** %16, align 8, !dbg !2085, !tbaa !1297
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !2086
  %19 = add i64 %18, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %19, metadata !2074, metadata !DIExpression()) #19, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %19, metadata !2088, metadata !DIExpression()) #19, !dbg !2093
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %20, metadata !2075, metadata !DIExpression()) #19, !dbg !2076
  %21 = load i32, i32* %11, align 8, !dbg !2096, !tbaa !1219
  %22 = load i8*, i8** %14, align 8, !dbg !2097, !tbaa !1294
  %23 = load i8*, i8** %16, align 8, !dbg !2098, !tbaa !1297
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !2099
  store i32 %7, i32* %6, align 4, !dbg !2100, !tbaa !1138
  ret i8* %20, !dbg !2101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !2064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2063, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %1, metadata !2068, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64* %2, metadata !2069, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2070, metadata !DIExpression()), !dbg !2102
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2103
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2103
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2071, metadata !DIExpression()), !dbg !2102
  %7 = tail call i32* @__errno_location() #24, !dbg !2104
  %8 = load i32, i32* %7, align 4, !dbg !2104, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %8, metadata !2072, metadata !DIExpression()), !dbg !2102
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2105
  %10 = load i32, i32* %9, align 4, !dbg !2105, !tbaa !1271
  %11 = icmp ne i64* %2, null, !dbg !2106
  %12 = xor i1 %11, true, !dbg !2106
  %13 = zext i1 %12 to i32, !dbg !2106
  %14 = or i32 %10, %13, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %14, metadata !2073, metadata !DIExpression()), !dbg !2102
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2108
  %16 = load i32, i32* %15, align 8, !dbg !2108, !tbaa !1219
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2109
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2110
  %19 = load i8*, i8** %18, align 8, !dbg !2110, !tbaa !1294
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2111
  %21 = load i8*, i8** %20, align 8, !dbg !2111, !tbaa !1297
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2112
  %23 = add i64 %22, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %23, metadata !2074, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %23, metadata !2088, metadata !DIExpression()) #19, !dbg !2114
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %24, metadata !2075, metadata !DIExpression()), !dbg !2102
  %25 = load i32, i32* %15, align 8, !dbg !2117, !tbaa !1219
  %26 = load i8*, i8** %18, align 8, !dbg !2118, !tbaa !1294
  %27 = load i8*, i8** %20, align 8, !dbg !2119, !tbaa !1297
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2120
  store i32 %8, i32* %7, align 4, !dbg !2121, !tbaa !1138
  br i1 %11, label %29, label %30, !dbg !2122

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2123, !tbaa !2125
  br label %30, !dbg !2127

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !2129 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2133, !tbaa !1022
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 1, metadata !2132, metadata !DIExpression()), !dbg !2134
  %2 = load i32, i32* @nslots, align 4, !dbg !2135, !tbaa !1138
  %3 = icmp sgt i32 %2, 1, !dbg !2138
  br i1 %3, label %4, label %12, !dbg !2139

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2132, metadata !DIExpression()), !dbg !2134
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2140
  %7 = load i8*, i8** %6, align 8, !dbg !2140, !tbaa !2141
  tail call void @free(i8* %7) #19, !dbg !2143
  %8 = add nuw nsw i64 %5, 1, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %8, metadata !2132, metadata !DIExpression()), !dbg !2134
  %9 = load i32, i32* @nslots, align 4, !dbg !2135, !tbaa !1138
  %10 = sext i32 %9 to i64, !dbg !2138
  %11 = icmp slt i64 %8, %10, !dbg !2138
  br i1 %11, label %4, label %12, !dbg !2139, !llvm.loop !2145

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2147
  %14 = load i8*, i8** %13, align 8, !dbg !2147, !tbaa !2141
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2149
  br i1 %15, label %17, label %16, !dbg !2150

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !2151
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2153, !tbaa !2154
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2155, !tbaa !2141
  br label %17, !dbg !2156

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2157
  br i1 %18, label %21, label %19, !dbg !2159

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2160
  tail call void @free(i8* %20) #19, !dbg !2162
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2163, !tbaa !1022
  br label %21, !dbg !2164

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2165, !tbaa !1138
  ret void, !dbg !2166
}

; Function Attrs: nounwind
declare !dbg !203 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %1, metadata !2170, metadata !DIExpression()), !dbg !2171
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2172
  ret i8* %3, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !2174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2178, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %1, metadata !2179, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %2, metadata !2180, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2181, metadata !DIExpression()), !dbg !2193
  %5 = tail call i32* @__errno_location() #24, !dbg !2194
  %6 = load i32, i32* %5, align 4, !dbg !2194, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %6, metadata !2182, metadata !DIExpression()), !dbg !2193
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2195, !tbaa !1022
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2183, metadata !DIExpression()), !dbg !2193
  %8 = icmp slt i32 %0, 0, !dbg !2196
  br i1 %8, label %9, label %10, !dbg !2198

9:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2199
  unreachable, !dbg !2199

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2200, !tbaa !1138
  %12 = icmp sgt i32 %11, %0, !dbg !2201
  br i1 %12, label %34, label %13, !dbg !2202

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2203
  call void @llvm.dbg.value(metadata i1 %14, metadata !2184, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2187, metadata !DIExpression()), !dbg !2204
  %15 = icmp eq i32 %0, 2147483647, !dbg !2205
  br i1 %15, label %16, label %17, !dbg !2207

16:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2208
  unreachable, !dbg !2208

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2209
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2209
  %20 = add nuw nsw i32 %0, 1, !dbg !2210
  %21 = sext i32 %20 to i64, !dbg !2211
  %22 = shl nuw nsw i64 %21, 4, !dbg !2212
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !2213
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2213
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2183, metadata !DIExpression()), !dbg !2193
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2214, !tbaa !1022
  br i1 %14, label %25, label %26, !dbg !2215

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2216, !tbaa.struct !2218
  br label %26, !dbg !2219

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2220, !tbaa !1138
  %28 = sext i32 %27 to i64, !dbg !2221
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2221
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2222
  %31 = sub nsw i32 %20, %27, !dbg !2223
  %32 = sext i32 %31 to i64, !dbg !2224
  %33 = shl nsw i64 %32, 4, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %30, metadata !1621, metadata !DIExpression()) #19, !dbg !2226
  call void @llvm.dbg.value(metadata i32 0, metadata !1627, metadata !DIExpression()) #19, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %33, metadata !1628, metadata !DIExpression()) #19, !dbg !2226
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !2228
  store i32 %20, i32* @nslots, align 4, !dbg !2229, !tbaa !1138
  br label %34, !dbg !2230

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2193
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2183, metadata !DIExpression()), !dbg !2193
  %36 = zext i32 %0 to i64, !dbg !2231
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2232
  %38 = load i64, i64* %37, align 8, !dbg !2232, !tbaa !2154
  call void @llvm.dbg.value(metadata i64 %38, metadata !2188, metadata !DIExpression()), !dbg !2233
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2234
  %40 = load i8*, i8** %39, align 8, !dbg !2234, !tbaa !2141
  call void @llvm.dbg.value(metadata i8* %40, metadata !2190, metadata !DIExpression()), !dbg !2233
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2235
  %42 = load i32, i32* %41, align 4, !dbg !2235, !tbaa !1271
  %43 = or i32 %42, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i32 %43, metadata !2191, metadata !DIExpression()), !dbg !2233
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2237
  %45 = load i32, i32* %44, align 8, !dbg !2237, !tbaa !1219
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2238
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2239
  %48 = load i8*, i8** %47, align 8, !dbg !2239, !tbaa !1294
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2240
  %50 = load i8*, i8** %49, align 8, !dbg !2240, !tbaa !1297
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %51, metadata !2192, metadata !DIExpression()), !dbg !2233
  %52 = icmp ugt i64 %38, %51, !dbg !2242
  br i1 %52, label %63, label %53, !dbg !2244

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %54, metadata !2188, metadata !DIExpression()), !dbg !2233
  store i64 %54, i64* %37, align 8, !dbg !2247, !tbaa !2154
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2248
  br i1 %55, label %57, label %56, !dbg !2250

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !2251
  br label %57, !dbg !2251

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2088, metadata !DIExpression()) #19, !dbg !2252
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %58, metadata !2190, metadata !DIExpression()), !dbg !2233
  store i8* %58, i8** %39, align 8, !dbg !2255, !tbaa !2141
  %59 = load i32, i32* %44, align 8, !dbg !2256, !tbaa !1219
  %60 = load i8*, i8** %47, align 8, !dbg !2257, !tbaa !1294
  %61 = load i8*, i8** %49, align 8, !dbg !2258, !tbaa !1297
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2259
  br label %63, !dbg !2260

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2233
  call void @llvm.dbg.value(metadata i8* %64, metadata !2190, metadata !DIExpression()), !dbg !2233
  store i32 %6, i32* %5, align 4, !dbg !2261, !tbaa !1138
  ret i8* %64, !dbg !2262
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* %1, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %2, metadata !2269, metadata !DIExpression()), !dbg !2270
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2271
  ret i8* %4, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !2273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 0, metadata !2169, metadata !DIExpression()) #19, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()) #19, !dbg !2277
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2279
  ret i8* %2, !dbg !2280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2281 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2285, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %1, metadata !2286, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2267, metadata !DIExpression()) #19, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %0, metadata !2268, metadata !DIExpression()) #19, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()) #19, !dbg !2288
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2290
  ret i8* %3, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2292 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %1, metadata !2297, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %2, metadata !2298, metadata !DIExpression()), !dbg !2300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()) #19, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2308, metadata !DIExpression()) #19, !dbg !2311
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2311, !alias.scope !2312
  %6 = icmp eq i32 %1, 10, !dbg !2315
  br i1 %6, label %7, label %8, !dbg !2317

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2318, !noalias !2312
  unreachable, !dbg !2318

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2319
  store i32 %1, i32* %9, align 8, !dbg !2320, !tbaa !1219, !alias.scope !2312
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2322
  ret i8* %10, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2324 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %1, metadata !2329, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %3, metadata !2331, metadata !DIExpression()), !dbg !2333
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2334
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()) #19, !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2308, metadata !DIExpression()) #19, !dbg !2338
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !2338, !alias.scope !2339
  %7 = icmp eq i32 %1, 10, !dbg !2342
  br i1 %7, label %8, label %9, !dbg !2343

8:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2344, !noalias !2339
  unreachable, !dbg !2344

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2345
  store i32 %1, i32* %10, align 8, !dbg !2346, !tbaa !1219, !alias.scope !2339
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2348
  ret i8* %11, !dbg !2349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2350 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2308, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2299, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8* %1, metadata !2355, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !2296, metadata !DIExpression()) #19, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()) #19, !dbg !2361
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()) #19, !dbg !2361
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()) #19, !dbg !2363
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !2356, !alias.scope !2364
  %5 = icmp eq i32 %0, 10, !dbg !2367
  br i1 %5, label %6, label %7, !dbg !2368

6:                                                ; preds = %2
  tail call void @abort() #21, !dbg !2369, !noalias !2364
  unreachable, !dbg !2369

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2370
  store i32 %0, i32* %8, align 8, !dbg !2371, !tbaa !1219, !alias.scope !2364
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2373
  ret i8* %9, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2375 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2308, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2332, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %2, metadata !2381, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2328, metadata !DIExpression()) #19, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %0, metadata !2329, metadata !DIExpression()) #19, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #19, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %2, metadata !2331, metadata !DIExpression()) #19, !dbg !2387
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()) #19, !dbg !2389
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2382, !alias.scope !2390
  %6 = icmp eq i32 %0, 10, !dbg !2393
  br i1 %6, label %7, label %8, !dbg !2394

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2395, !noalias !2390
  unreachable, !dbg !2395

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2396
  store i32 %0, i32* %9, align 8, !dbg !2397, !tbaa !1219, !alias.scope !2390
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2399
  ret i8* %10, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2401 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %1, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 %2, metadata !2407, metadata !DIExpression()), !dbg !2409
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2410
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2412, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1237, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 %2, metadata !1238, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 %2, metadata !1240, metadata !DIExpression()), !dbg !2414
  %6 = lshr i8 %2, 5, !dbg !2416
  %7 = zext i8 %6 to i64, !dbg !2416
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2417
  call void @llvm.dbg.value(metadata i32* %8, metadata !1242, metadata !DIExpression()), !dbg !2414
  %9 = and i8 %2, 31, !dbg !2418
  %10 = zext i8 %9 to i32, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %10, metadata !1244, metadata !DIExpression()), !dbg !2414
  %11 = load i32, i32* %8, align 4, !dbg !2419, !tbaa !1138
  %12 = lshr i32 %11, %10, !dbg !2420
  %13 = and i32 %12, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %13, metadata !1245, metadata !DIExpression()), !dbg !2414
  %14 = xor i32 %13, 1, !dbg !2422
  %15 = shl i32 %14, %10, !dbg !2423
  %16 = xor i32 %15, %11, !dbg !2424
  store i32 %16, i32* %8, align 4, !dbg !2424, !tbaa !1138
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2426
  ret i8* %17, !dbg !2427
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2428 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2408, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* %0, metadata !2432, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %1, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()) #19, !dbg !2437
  call void @llvm.dbg.value(metadata i64 -1, metadata !2406, metadata !DIExpression()) #19, !dbg !2437
  call void @llvm.dbg.value(metadata i8 %1, metadata !2407, metadata !DIExpression()) #19, !dbg !2437
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2439, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1237, metadata !DIExpression()) #19, !dbg !2440
  call void @llvm.dbg.value(metadata i8 %1, metadata !1238, metadata !DIExpression()) #19, !dbg !2440
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()) #19, !dbg !2440
  call void @llvm.dbg.value(metadata i8 %1, metadata !1240, metadata !DIExpression()) #19, !dbg !2440
  %5 = lshr i8 %1, 5, !dbg !2442
  %6 = zext i8 %5 to i64, !dbg !2442
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2443
  call void @llvm.dbg.value(metadata i32* %7, metadata !1242, metadata !DIExpression()) #19, !dbg !2440
  %8 = and i8 %1, 31, !dbg !2444
  %9 = zext i8 %8 to i32, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %9, metadata !1244, metadata !DIExpression()) #19, !dbg !2440
  %10 = load i32, i32* %7, align 4, !dbg !2445, !tbaa !1138
  %11 = lshr i32 %10, %9, !dbg !2446
  %12 = and i32 %11, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %12, metadata !1245, metadata !DIExpression()) #19, !dbg !2440
  %13 = xor i32 %12, 1, !dbg !2448
  %14 = shl i32 %13, %9, !dbg !2449
  %15 = xor i32 %14, %10, !dbg !2450
  store i32 %15, i32* %7, align 4, !dbg !2450, !tbaa !1138
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2452
  ret i8* %16, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2454 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2408, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %0, metadata !2432, metadata !DIExpression()) #19, !dbg !2461
  call void @llvm.dbg.value(metadata i8 58, metadata !2433, metadata !DIExpression()) #19, !dbg !2461
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()) #19, !dbg !2462
  call void @llvm.dbg.value(metadata i64 -1, metadata !2406, metadata !DIExpression()) #19, !dbg !2462
  call void @llvm.dbg.value(metadata i8 58, metadata !2407, metadata !DIExpression()) #19, !dbg !2462
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2464, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1237, metadata !DIExpression()) #19, !dbg !2465
  call void @llvm.dbg.value(metadata i8 58, metadata !1238, metadata !DIExpression()) #19, !dbg !2465
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()) #19, !dbg !2465
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()) #19, !dbg !2465
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2467
  call void @llvm.dbg.value(metadata i32* %4, metadata !1242, metadata !DIExpression()) #19, !dbg !2465
  call void @llvm.dbg.value(metadata i32 26, metadata !1244, metadata !DIExpression()) #19, !dbg !2465
  %5 = load i32, i32* %4, align 4, !dbg !2468, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %5, metadata !1245, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2465
  %6 = or i32 %5, 67108864, !dbg !2469
  store i32 %6, i32* %4, align 4, !dbg !2469, !tbaa !1138
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2471
  ret i8* %7, !dbg !2472
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2473 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2408, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()) #19, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %1, metadata !2406, metadata !DIExpression()) #19, !dbg !2480
  call void @llvm.dbg.value(metadata i8 58, metadata !2407, metadata !DIExpression()) #19, !dbg !2480
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2482, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1237, metadata !DIExpression()) #19, !dbg !2483
  call void @llvm.dbg.value(metadata i8 58, metadata !1238, metadata !DIExpression()) #19, !dbg !2483
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()) #19, !dbg !2483
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()) #19, !dbg !2483
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2485
  call void @llvm.dbg.value(metadata i32* %5, metadata !1242, metadata !DIExpression()) #19, !dbg !2483
  call void @llvm.dbg.value(metadata i32 26, metadata !1244, metadata !DIExpression()) #19, !dbg !2483
  %6 = load i32, i32* %5, align 4, !dbg !2486, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %6, metadata !1245, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2483
  %7 = or i32 %6, 67108864, !dbg !2487
  store i32 %7, i32* %5, align 4, !dbg !2487, !tbaa !1138
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !2488
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2489
  ret i8* %8, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2491 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2308, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %2, metadata !2495, metadata !DIExpression()), !dbg !2499
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2496, metadata !DIExpression()), !dbg !2501
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()) #19, !dbg !2503
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2503
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2497, !alias.scope !2504
  %8 = icmp eq i32 %1, 10, !dbg !2507
  br i1 %8, label %9, label %10, !dbg !2508

9:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2509, !noalias !2504
  unreachable, !dbg !2509

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2308, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2503
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2502
  store i32 %1, i32* %11, align 8, !dbg !2502, !tbaa.struct !2413
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2502
  %13 = bitcast i32* %12 to i8*, !dbg !2502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2502, !tbaa.struct !2413
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1237, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 58, metadata !1238, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()), !dbg !2510
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2512
  call void @llvm.dbg.value(metadata i32* %14, metadata !1242, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 26, metadata !1244, metadata !DIExpression()), !dbg !2510
  %15 = load i32, i32* %14, align 4, !dbg !2513, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %15, metadata !1245, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2510
  %16 = or i32 %15, 67108864, !dbg !2514
  store i32 %16, i32* %14, align 4, !dbg !2514, !tbaa !1138
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2515
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2516
  ret i8* %17, !dbg !2517
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2518 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2523, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2524, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %3, metadata !2525, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()) #19, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #19, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()) #19, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %3, metadata !2534, metadata !DIExpression()) #19, !dbg !2539
  call void @llvm.dbg.value(metadata i64 -1, metadata !2535, metadata !DIExpression()) #19, !dbg !2539
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2541, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1278, metadata !DIExpression()) #19, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()) #19, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %2, metadata !1280, metadata !DIExpression()) #19, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1278, metadata !DIExpression()) #19, !dbg !2542
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2544
  store i32 10, i32* %7, align 8, !dbg !2545, !tbaa !1219
  %8 = icmp ne i8* %1, null, !dbg !2546
  %9 = icmp ne i8* %2, null, !dbg !2547
  %10 = and i1 %8, %9, !dbg !2548
  br i1 %10, label %12, label %11, !dbg !2548

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2549
  unreachable, !dbg !2549

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2550
  store i8* %1, i8** %13, align 8, !dbg !2551, !tbaa !1294
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2552
  store i8* %2, i8** %14, align 8, !dbg !2553, !tbaa !1297
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !2554
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2555
  ret i8* %15, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2527 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %3, metadata !2534, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %4, metadata !2535, metadata !DIExpression()), !dbg !2557
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2526, metadata !DIExpression()), !dbg !2559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2560, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1278, metadata !DIExpression()) #19, !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()) #19, !dbg !2561
  call void @llvm.dbg.value(metadata i8* %2, metadata !1280, metadata !DIExpression()) #19, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1278, metadata !DIExpression()) #19, !dbg !2561
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2563
  store i32 10, i32* %8, align 8, !dbg !2564, !tbaa !1219
  %9 = icmp ne i8* %1, null, !dbg !2565
  %10 = icmp ne i8* %2, null, !dbg !2566
  %11 = and i1 %9, %10, !dbg !2567
  br i1 %11, label %13, label %12, !dbg !2567

12:                                               ; preds = %5
  tail call void @abort() #21, !dbg !2568
  unreachable, !dbg !2568

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2569
  store i8* %1, i8** %14, align 8, !dbg !2570, !tbaa !1294
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2571
  store i8* %2, i8** %15, align 8, !dbg !2572, !tbaa !1297
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2573
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2574
  ret i8* %16, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2576 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2526, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %2, metadata !2582, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2523, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2524, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %2, metadata !2525, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #19, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #19, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()) #19, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %2, metadata !2534, metadata !DIExpression()) #19, !dbg !2588
  call void @llvm.dbg.value(metadata i64 -1, metadata !2535, metadata !DIExpression()) #19, !dbg !2588
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2590, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1278, metadata !DIExpression()) #19, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %0, metadata !1279, metadata !DIExpression()) #19, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %1, metadata !1280, metadata !DIExpression()) #19, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1278, metadata !DIExpression()) #19, !dbg !2591
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2593
  store i32 10, i32* %6, align 8, !dbg !2594, !tbaa !1219
  %7 = icmp ne i8* %0, null, !dbg !2595
  %8 = icmp ne i8* %1, null, !dbg !2596
  %9 = and i1 %7, %8, !dbg !2597
  br i1 %9, label %11, label %10, !dbg !2597

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !2598
  unreachable, !dbg !2598

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2599
  store i8* %0, i8** %12, align 8, !dbg !2600, !tbaa !1294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2601
  store i8* %1, i8** %13, align 8, !dbg !2602, !tbaa !1297
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !2603
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2604
  ret i8* %14, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2606 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8* %0, metadata !2610, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %2, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %3, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #19, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #19, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()) #19, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !2534, metadata !DIExpression()) #19, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %3, metadata !2535, metadata !DIExpression()) #19, !dbg !2617
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2619, !tbaa.struct !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1278, metadata !DIExpression()) #19, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !1279, metadata !DIExpression()) #19, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !1280, metadata !DIExpression()) #19, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1278, metadata !DIExpression()) #19, !dbg !2620
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2622
  store i32 10, i32* %7, align 8, !dbg !2623, !tbaa !1219
  %8 = icmp ne i8* %0, null, !dbg !2624
  %9 = icmp ne i8* %1, null, !dbg !2625
  %10 = and i1 %8, %9, !dbg !2626
  br i1 %10, label %12, label %11, !dbg !2626

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2627
  unreachable, !dbg !2627

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2628
  store i8* %0, i8** %13, align 8, !dbg !2629, !tbaa !1294
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2630
  store i8* %1, i8** %14, align 8, !dbg !2631, !tbaa !1297
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !2632
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2633
  ret i8* %15, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %2, metadata !2641, metadata !DIExpression()), !dbg !2642
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2643
  ret i8* %4, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2645 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %1, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()) #19, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()) #19, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()) #19, !dbg !2652
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2654
  ret i8* %3, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()) #19, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()) #19, !dbg !2663
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #19, !dbg !2663
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2665
  ret i8* %3, !dbg !2666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 0, metadata !2660, metadata !DIExpression()) #19, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()) #19, !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()) #19, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()) #19, !dbg !2675
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #19, !dbg !2675
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2677
  ret i8* %2, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2679 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8** %4, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  %7 = icmp eq i8* %1, null, !dbg !2694
  br i1 %7, label %10, label %8, !dbg !2696

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !2697
  br label %12, !dbg !2697

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !2698
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #19, !dbg !2699
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !2699
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2700
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #19, !dbg !2701
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.68, i64 0, i64 0)) #19, !dbg !2701
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2702
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
  ], !dbg !2703

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #19, !dbg !2704
  %21 = load i8*, i8** %4, align 8, !dbg !2704, !tbaa !1022
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !2704
  br label %147, !dbg !2706

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #19, !dbg !2707
  %25 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !1022
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %27 = load i8*, i8** %26, align 8, !dbg !2707, !tbaa !1022
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !2707
  br label %147, !dbg !2708

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #19, !dbg !2709
  %31 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !1022
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %33 = load i8*, i8** %32, align 8, !dbg !2709, !tbaa !1022
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %35 = load i8*, i8** %34, align 8, !dbg !2709, !tbaa !1022
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !2709
  br label %147, !dbg !2710

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #19, !dbg !2711
  %39 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !1022
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %41 = load i8*, i8** %40, align 8, !dbg !2711, !tbaa !1022
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2711
  %43 = load i8*, i8** %42, align 8, !dbg !2711, !tbaa !1022
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2711
  %45 = load i8*, i8** %44, align 8, !dbg !2711, !tbaa !1022
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !2711
  br label %147, !dbg !2712

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #19, !dbg !2713
  %49 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !1022
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %51 = load i8*, i8** %50, align 8, !dbg !2713, !tbaa !1022
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %53 = load i8*, i8** %52, align 8, !dbg !2713, !tbaa !1022
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2713
  %55 = load i8*, i8** %54, align 8, !dbg !2713, !tbaa !1022
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2713
  %57 = load i8*, i8** %56, align 8, !dbg !2713, !tbaa !1022
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !2713
  br label %147, !dbg !2714

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #19, !dbg !2715
  %61 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !1022
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %63 = load i8*, i8** %62, align 8, !dbg !2715, !tbaa !1022
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %65 = load i8*, i8** %64, align 8, !dbg !2715, !tbaa !1022
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %67 = load i8*, i8** %66, align 8, !dbg !2715, !tbaa !1022
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2715
  %69 = load i8*, i8** %68, align 8, !dbg !2715, !tbaa !1022
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2715
  %71 = load i8*, i8** %70, align 8, !dbg !2715, !tbaa !1022
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !2715
  br label %147, !dbg !2716

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #19, !dbg !2717
  %75 = load i8*, i8** %4, align 8, !dbg !2717, !tbaa !1022
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2717
  %77 = load i8*, i8** %76, align 8, !dbg !2717, !tbaa !1022
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2717
  %79 = load i8*, i8** %78, align 8, !dbg !2717, !tbaa !1022
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2717
  %81 = load i8*, i8** %80, align 8, !dbg !2717, !tbaa !1022
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2717
  %83 = load i8*, i8** %82, align 8, !dbg !2717, !tbaa !1022
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2717
  %85 = load i8*, i8** %84, align 8, !dbg !2717, !tbaa !1022
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2717
  %87 = load i8*, i8** %86, align 8, !dbg !2717, !tbaa !1022
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !2717
  br label %147, !dbg !2718

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #19, !dbg !2719
  %91 = load i8*, i8** %4, align 8, !dbg !2719, !tbaa !1022
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2719
  %93 = load i8*, i8** %92, align 8, !dbg !2719, !tbaa !1022
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2719
  %95 = load i8*, i8** %94, align 8, !dbg !2719, !tbaa !1022
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2719
  %97 = load i8*, i8** %96, align 8, !dbg !2719, !tbaa !1022
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2719
  %99 = load i8*, i8** %98, align 8, !dbg !2719, !tbaa !1022
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2719
  %101 = load i8*, i8** %100, align 8, !dbg !2719, !tbaa !1022
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2719
  %103 = load i8*, i8** %102, align 8, !dbg !2719, !tbaa !1022
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2719
  %105 = load i8*, i8** %104, align 8, !dbg !2719, !tbaa !1022
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !2719
  br label %147, !dbg !2720

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.77, i64 0, i64 0), i32 5) #19, !dbg !2721
  %109 = load i8*, i8** %4, align 8, !dbg !2721, !tbaa !1022
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2721
  %111 = load i8*, i8** %110, align 8, !dbg !2721, !tbaa !1022
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2721
  %113 = load i8*, i8** %112, align 8, !dbg !2721, !tbaa !1022
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2721
  %115 = load i8*, i8** %114, align 8, !dbg !2721, !tbaa !1022
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2721
  %117 = load i8*, i8** %116, align 8, !dbg !2721, !tbaa !1022
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2721
  %119 = load i8*, i8** %118, align 8, !dbg !2721, !tbaa !1022
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2721
  %121 = load i8*, i8** %120, align 8, !dbg !2721, !tbaa !1022
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2721
  %123 = load i8*, i8** %122, align 8, !dbg !2721, !tbaa !1022
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2721
  %125 = load i8*, i8** %124, align 8, !dbg !2721, !tbaa !1022
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !2721
  br label %147, !dbg !2722

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.78, i64 0, i64 0), i32 5) #19, !dbg !2723
  %129 = load i8*, i8** %4, align 8, !dbg !2723, !tbaa !1022
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2723
  %131 = load i8*, i8** %130, align 8, !dbg !2723, !tbaa !1022
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2723
  %133 = load i8*, i8** %132, align 8, !dbg !2723, !tbaa !1022
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2723
  %135 = load i8*, i8** %134, align 8, !dbg !2723, !tbaa !1022
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2723
  %137 = load i8*, i8** %136, align 8, !dbg !2723, !tbaa !1022
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2723
  %139 = load i8*, i8** %138, align 8, !dbg !2723, !tbaa !1022
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2723
  %141 = load i8*, i8** %140, align 8, !dbg !2723, !tbaa !1022
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2723
  %143 = load i8*, i8** %142, align 8, !dbg !2723, !tbaa !1022
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2723
  %145 = load i8*, i8** %144, align 8, !dbg !2723, !tbaa !1022
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !2723
  br label %147, !dbg !2724

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2725
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2726 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %3, metadata !2733, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8** %4, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 0, metadata !2735, metadata !DIExpression()), !dbg !2736
  br label %6, !dbg !2737

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2740
  %9 = load i8*, i8** %8, align 8, !dbg !2740, !tbaa !1022
  %10 = icmp eq i8* %9, null, !dbg !2742
  %11 = add i64 %7, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %11, metadata !2735, metadata !DIExpression()), !dbg !2736
  br i1 %10, label %12, label %6, !dbg !2742, !llvm.loop !2744

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %7, metadata !2735, metadata !DIExpression()), !dbg !2736
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2746
  ret void, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2748 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2759, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %3, metadata !2762, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2763, metadata !DIExpression()), !dbg !2767
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2768
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2768
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2765, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 0, metadata !2764, metadata !DIExpression()), !dbg !2767
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2770
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2770
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2770
  %11 = load i32, i32* %8, align 8, !dbg !2773
  %12 = icmp ult i32 %11, 41, !dbg !2773
  br i1 %12, label %13, label %18, !dbg !2773

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2773
  %15 = zext i32 %11 to i64, !dbg !2773
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2773
  %17 = add nuw nsw i32 %11, 8, !dbg !2773
  store i32 %17, i32* %8, align 8, !dbg !2773
  br label %21, !dbg !2773

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2773
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2773
  store i8* %20, i8** %9, align 8, !dbg !2773
  br label %21, !dbg !2773

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2773
  %25 = load i8*, i8** %24, align 8, !dbg !2773
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2774
  store i8* %25, i8** %26, align 16, !dbg !2775, !tbaa !1022
  %27 = icmp eq i8* %25, null, !dbg !2776
  br i1 %27, label %30, label %28, !dbg !2777

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2764, metadata !DIExpression()), !dbg !2767
  %29 = icmp ult i32 %22, 41, !dbg !2773
  br i1 %29, label %35, label %32, !dbg !2773

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2778
  call void @llvm.dbg.value(metadata i64 %31, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %31, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2780
  ret void, !dbg !2780

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2773
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2773
  store i8* %34, i8** %9, align 8, !dbg !2773
  br label %40, !dbg !2773

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2773
  %37 = zext i32 %22 to i64, !dbg !2773
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2773
  %39 = add nuw nsw i32 %22, 8, !dbg !2773
  store i32 %39, i32* %8, align 8, !dbg !2773
  br label %40, !dbg !2773

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2773
  %44 = load i8*, i8** %43, align 8, !dbg !2773
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2774
  store i8* %44, i8** %45, align 8, !dbg !2775, !tbaa !1022
  %46 = icmp eq i8* %44, null, !dbg !2776
  br i1 %46, label %30, label %47, !dbg !2777

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2764, metadata !DIExpression()), !dbg !2767
  %48 = icmp ult i32 %41, 41, !dbg !2773
  br i1 %48, label %52, label %49, !dbg !2773

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2773
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2773
  store i8* %51, i8** %9, align 8, !dbg !2773
  br label %57, !dbg !2773

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2773
  %54 = zext i32 %41 to i64, !dbg !2773
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2773
  %56 = add nuw nsw i32 %41, 8, !dbg !2773
  store i32 %56, i32* %8, align 8, !dbg !2773
  br label %57, !dbg !2773

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2773
  %61 = load i8*, i8** %60, align 8, !dbg !2773
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2774
  store i8* %61, i8** %62, align 16, !dbg !2775, !tbaa !1022
  %63 = icmp eq i8* %61, null, !dbg !2776
  br i1 %63, label %30, label %64, !dbg !2777

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2764, metadata !DIExpression()), !dbg !2767
  %65 = icmp ult i32 %58, 41, !dbg !2773
  br i1 %65, label %69, label %66, !dbg !2773

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2773
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2773
  store i8* %68, i8** %9, align 8, !dbg !2773
  br label %74, !dbg !2773

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2773
  %71 = zext i32 %58 to i64, !dbg !2773
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2773
  %73 = add nuw nsw i32 %58, 8, !dbg !2773
  store i32 %73, i32* %8, align 8, !dbg !2773
  br label %74, !dbg !2773

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2773
  %78 = load i8*, i8** %77, align 8, !dbg !2773
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2774
  store i8* %78, i8** %79, align 8, !dbg !2775, !tbaa !1022
  %80 = icmp eq i8* %78, null, !dbg !2776
  br i1 %80, label %30, label %81, !dbg !2777

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2764, metadata !DIExpression()), !dbg !2767
  %82 = icmp ult i32 %75, 41, !dbg !2773
  br i1 %82, label %86, label %83, !dbg !2773

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2773
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2773
  store i8* %85, i8** %9, align 8, !dbg !2773
  br label %91, !dbg !2773

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2773
  %88 = zext i32 %75 to i64, !dbg !2773
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2773
  %90 = add nuw nsw i32 %75, 8, !dbg !2773
  store i32 %90, i32* %8, align 8, !dbg !2773
  br label %91, !dbg !2773

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2773
  %95 = load i8*, i8** %94, align 8, !dbg !2773
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2774
  store i8* %95, i8** %96, align 16, !dbg !2775, !tbaa !1022
  %97 = icmp eq i8* %95, null, !dbg !2776
  br i1 %97, label %30, label %98, !dbg !2777

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2764, metadata !DIExpression()), !dbg !2767
  %99 = icmp ult i32 %92, 41, !dbg !2773
  br i1 %99, label %103, label %100, !dbg !2773

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2773
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2773
  store i8* %102, i8** %9, align 8, !dbg !2773
  br label %108, !dbg !2773

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2773
  %105 = zext i32 %92 to i64, !dbg !2773
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2773
  %107 = add nuw nsw i32 %92, 8, !dbg !2773
  store i32 %107, i32* %8, align 8, !dbg !2773
  br label %108, !dbg !2773

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2773
  %111 = load i8*, i8** %110, align 8, !dbg !2773
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2774
  store i8* %111, i8** %112, align 8, !dbg !2775, !tbaa !1022
  %113 = icmp eq i8* %111, null, !dbg !2776
  br i1 %113, label %30, label %114, !dbg !2777

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2764, metadata !DIExpression()), !dbg !2767
  %115 = load i8*, i8** %9, align 8, !dbg !2773
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2773
  store i8* %116, i8** %9, align 8, !dbg !2773
  %117 = bitcast i8* %115 to i8**, !dbg !2773
  %118 = load i8*, i8** %117, align 8, !dbg !2773
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2774
  store i8* %118, i8** %119, align 16, !dbg !2775, !tbaa !1022
  %120 = icmp eq i8* %118, null, !dbg !2776
  br i1 %120, label %30, label %121, !dbg !2777

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2764, metadata !DIExpression()), !dbg !2767
  %122 = load i8*, i8** %9, align 8, !dbg !2773
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2773
  store i8* %123, i8** %9, align 8, !dbg !2773
  %124 = bitcast i8* %122 to i8**, !dbg !2773
  %125 = load i8*, i8** %124, align 8, !dbg !2773
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2774
  store i8* %125, i8** %126, align 8, !dbg !2775, !tbaa !1022
  %127 = icmp eq i8* %125, null, !dbg !2776
  br i1 %127, label %30, label %128, !dbg !2777

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2764, metadata !DIExpression()), !dbg !2767
  %129 = load i8*, i8** %9, align 8, !dbg !2773
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2773
  store i8* %130, i8** %9, align 8, !dbg !2773
  %131 = bitcast i8* %129 to i8**, !dbg !2773
  %132 = load i8*, i8** %131, align 8, !dbg !2773
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2774
  store i8* %132, i8** %133, align 16, !dbg !2775, !tbaa !1022
  %134 = icmp eq i8* %132, null, !dbg !2776
  br i1 %134, label %30, label %135, !dbg !2777

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2764, metadata !DIExpression()), !dbg !2767
  %136 = load i8*, i8** %9, align 8, !dbg !2773
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2773
  store i8* %137, i8** %9, align 8, !dbg !2773
  %138 = bitcast i8* %136 to i8**, !dbg !2773
  %139 = load i8*, i8** %138, align 8, !dbg !2773
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2774
  store i8* %139, i8** %140, align 8, !dbg !2775, !tbaa !1022
  %141 = icmp eq i8* %139, null, !dbg !2776
  %142 = select i1 %141, i64 9, i64 10, !dbg !2777
  br label %30, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2781 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2785, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %2, metadata !2787, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %3, metadata !2788, metadata !DIExpression()), !dbg !2795
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2796
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2789, metadata !DIExpression()), !dbg !2797
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2798
  call void @llvm.va_start(i8* nonnull %6), !dbg !2798
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2799
  call void @llvm.va_end(i8* nonnull %6), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2801
  ret void, !dbg !2801
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !2802 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2803, !tbaa !1022
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2803
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #19, !dbg !2804
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.82, i64 0, i64 0)) #19, !dbg !2804
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.83, i64 0, i64 0), i32 5) #19, !dbg !2805
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.84, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.85, i64 0, i64 0)) #19, !dbg !2805
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.86, i64 0, i64 0), i32 5) #19, !dbg !2806
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.87, i64 0, i64 0)) #19, !dbg !2806
  ret void, !dbg !2807
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #5 !dbg !2808 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()), !dbg !2814
  %3 = udiv i64 9223372036854775807, %1, !dbg !2815
  %4 = icmp ult i64 %3, %0, !dbg !2815
  br i1 %4, label %5, label %6, !dbg !2817

5:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !2818
  unreachable, !dbg !2818

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %7, metadata !2820, metadata !DIExpression()) #19, !dbg !2826
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %8, metadata !2825, metadata !DIExpression()) #19, !dbg !2826
  %9 = icmp eq i8* %8, null, !dbg !2829
  %10 = icmp ne i64 %7, 0, !dbg !2831
  %11 = and i1 %10, %9, !dbg !2832
  br i1 %11, label %12, label %13, !dbg !2832

12:                                               ; preds = %6
  tail call void @xalloc_die() #21, !dbg !2833
  unreachable, !dbg !2833

13:                                               ; preds = %6
  ret i8* %8, !dbg !2834
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !2821 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2820, metadata !DIExpression()), !dbg !2835
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2825, metadata !DIExpression()), !dbg !2835
  %3 = icmp eq i8* %2, null, !dbg !2837
  %4 = icmp ne i64 %0, 0, !dbg !2838
  %5 = and i1 %4, %3, !dbg !2839
  br i1 %5, label %6, label %7, !dbg !2839

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !2840
  unreachable, !dbg !2840

7:                                                ; preds = %1
  ret i8* %2, !dbg !2841
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !2842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %1, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %2, metadata !2848, metadata !DIExpression()), !dbg !2849
  %4 = udiv i64 9223372036854775807, %2, !dbg !2850
  %5 = icmp ult i64 %4, %1, !dbg !2850
  br i1 %5, label %6, label %7, !dbg !2852

6:                                                ; preds = %3
  tail call void @xalloc_die() #21, !dbg !2853
  unreachable, !dbg !2853

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #19, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %8, metadata !2860, metadata !DIExpression()) #19, !dbg !2861
  %9 = icmp eq i64 %8, 0, !dbg !2863
  %10 = icmp ne i8* %0, null, !dbg !2865
  %11 = and i1 %10, %9, !dbg !2866
  br i1 %11, label %12, label %13, !dbg !2866

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !2867
  br label %19, !dbg !2869

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %14, metadata !2855, metadata !DIExpression()) #19, !dbg !2861
  %15 = icmp eq i8* %14, null, !dbg !2871
  %16 = icmp ne i64 %8, 0, !dbg !2873
  %17 = and i1 %16, %15, !dbg !2874
  br i1 %17, label %18, label %19, !dbg !2874

18:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2875
  unreachable, !dbg !2875

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2861
  ret i8* %20, !dbg !2876
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %1, metadata !2860, metadata !DIExpression()), !dbg !2877
  %3 = icmp eq i64 %1, 0, !dbg !2878
  %4 = icmp ne i8* %0, null, !dbg !2879
  %5 = and i1 %4, %3, !dbg !2880
  br i1 %5, label %6, label %7, !dbg !2880

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !2881
  br label %13, !dbg !2882

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %8, metadata !2855, metadata !DIExpression()), !dbg !2877
  %9 = icmp eq i8* %8, null, !dbg !2884
  %10 = icmp ne i64 %1, 0, !dbg !2885
  %11 = and i1 %10, %9, !dbg !2886
  br i1 %11, label %12, label %13, !dbg !2886

12:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !2887
  unreachable, !dbg !2887

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2877
  ret i8* %14, !dbg !2888
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #5 !dbg !398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !403, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64* %1, metadata !404, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %2, metadata !405, metadata !DIExpression()), !dbg !2889
  %4 = load i64, i64* %1, align 8, !dbg !2890, !tbaa !2125
  call void @llvm.dbg.value(metadata i64 %4, metadata !406, metadata !DIExpression()), !dbg !2889
  %5 = icmp eq i8* %0, null, !dbg !2891
  br i1 %5, label %6, label %20, !dbg !2893

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2894
  br i1 %7, label %8, label %13, !dbg !2897

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %9, metadata !406, metadata !DIExpression()), !dbg !2889
  %10 = icmp ugt i64 %2, 128, !dbg !2900
  %11 = zext i1 %10 to i64, !dbg !2900
  %12 = add nuw nsw i64 %9, %11, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %12, metadata !406, metadata !DIExpression()), !dbg !2889
  br label %13, !dbg !2902

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2889
  call void @llvm.dbg.value(metadata i64 %14, metadata !406, metadata !DIExpression()), !dbg !2889
  %15 = udiv i64 9223372036854775807, %2, !dbg !2903
  %16 = icmp ult i64 %15, %14, !dbg !2903
  br i1 %16, label %19, label %17, !dbg !2905

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2889
  store i64 %14, i64* %1, align 8, !dbg !2906, !tbaa !2125
  %18 = mul i64 %14, %2, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #19, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %28, metadata !2860, metadata !DIExpression()) #19, !dbg !2908
  br label %31, !dbg !2910

19:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2911
  unreachable, !dbg !2911

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2912
  %22 = icmp ugt i64 %21, %4, !dbg !2915
  br i1 %22, label %24, label %23, !dbg !2916

23:                                               ; preds = %20
  tail call void @xalloc_die() #21, !dbg !2917
  unreachable, !dbg !2917

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2918
  %26 = add nuw i64 %4, 1, !dbg !2919
  %27 = add i64 %26, %25, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2889
  store i64 %27, i64* %1, align 8, !dbg !2906, !tbaa !2125
  %28 = mul i64 %27, %2, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #19, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %28, metadata !2860, metadata !DIExpression()) #19, !dbg !2908
  %29 = icmp eq i64 %28, 0, !dbg !2921
  br i1 %29, label %30, label %31, !dbg !2910

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !2922
  br label %38, !dbg !2923

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %33, metadata !2855, metadata !DIExpression()) #19, !dbg !2908
  %34 = icmp eq i8* %33, null, !dbg !2925
  %35 = icmp ne i64 %32, 0, !dbg !2926
  %36 = and i1 %35, %34, !dbg !2927
  br i1 %36, label %37, label %38, !dbg !2927

37:                                               ; preds = %31
  tail call void @xalloc_die() #21, !dbg !2928
  unreachable, !dbg !2928

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2908
  ret i8* %39, !dbg !2929
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #5 !dbg !2930 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %0, metadata !2820, metadata !DIExpression()) #19, !dbg !2934
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %2, metadata !2825, metadata !DIExpression()) #19, !dbg !2934
  %3 = icmp eq i8* %2, null, !dbg !2937
  %4 = icmp ne i64 %0, 0, !dbg !2938
  %5 = and i1 %4, %3, !dbg !2939
  br i1 %5, label %6, label %7, !dbg !2939

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !2940
  unreachable, !dbg !2940

7:                                                ; preds = %1
  ret i8* %2, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64* %1, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !403, metadata !DIExpression()) #19, !dbg !2949
  call void @llvm.dbg.value(metadata i64* %1, metadata !404, metadata !DIExpression()) #19, !dbg !2949
  call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()) #19, !dbg !2949
  %3 = load i64, i64* %1, align 8, !dbg !2951, !tbaa !2125
  call void @llvm.dbg.value(metadata i64 %3, metadata !406, metadata !DIExpression()) #19, !dbg !2949
  %4 = icmp eq i8* %0, null, !dbg !2952
  br i1 %4, label %5, label %12, !dbg !2953

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2954
  br i1 %6, label %9, label %7, !dbg !2955

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !406, metadata !DIExpression()) #19, !dbg !2949
  %8 = icmp slt i64 %3, 0, !dbg !2956
  br i1 %8, label %11, label %9, !dbg !2957

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2949
  store i64 %10, i64* %1, align 8, !dbg !2958, !tbaa !2125
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #19, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %18, metadata !2860, metadata !DIExpression()) #19, !dbg !2959
  br label %21, !dbg !2961

11:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !2962
  unreachable, !dbg !2962

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2963
  br i1 %13, label %15, label %14, !dbg !2964

14:                                               ; preds = %12
  tail call void @xalloc_die() #21, !dbg !2965
  unreachable, !dbg !2965

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2966
  %17 = add nuw nsw i64 %3, 1, !dbg !2967
  %18 = add nuw nsw i64 %17, %16, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2949
  store i64 %18, i64* %1, align 8, !dbg !2958, !tbaa !2125
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #19, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %18, metadata !2860, metadata !DIExpression()) #19, !dbg !2959
  %19 = icmp eq i64 %18, 0, !dbg !2969
  br i1 %19, label %20, label %21, !dbg !2961

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !2970
  br label %28, !dbg !2971

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %23, metadata !2855, metadata !DIExpression()) #19, !dbg !2959
  %24 = icmp eq i8* %23, null, !dbg !2973
  %25 = icmp ne i64 %22, 0, !dbg !2974
  %26 = and i1 %25, %24, !dbg !2975
  br i1 %26, label %27, label %28, !dbg !2975

27:                                               ; preds = %21
  tail call void @xalloc_die() #21, !dbg !2976
  unreachable, !dbg !2976

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2959
  ret i8* %29, !dbg !2977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !2978 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %0, metadata !2982, metadata !DIExpression()) #19, !dbg !2987
  call void @llvm.dbg.value(metadata i64 1, metadata !2985, metadata !DIExpression()) #19, !dbg !2987
  %2 = icmp slt i64 %0, 0, !dbg !2989
  br i1 %2, label %6, label %3, !dbg !2991

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %4, metadata !2986, metadata !DIExpression()) #19, !dbg !2987
  %5 = icmp eq i8* %4, null, !dbg !2993
  br i1 %5, label %6, label %7, !dbg !2994

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #21, !dbg !2995
  unreachable, !dbg !2995

7:                                                ; preds = %3
  ret i8* %4, !dbg !2996
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !2983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2982, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !2997
  %3 = udiv i64 9223372036854775807, %1, !dbg !2998
  %4 = icmp ult i64 %3, %0, !dbg !2998
  br i1 %4, label %8, label %5, !dbg !2999

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %6, metadata !2986, metadata !DIExpression()), !dbg !2997
  %7 = icmp eq i8* %6, null, !dbg !3001
  br i1 %7, label %8, label %9, !dbg !3002

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #21, !dbg !3003
  unreachable, !dbg !3003

9:                                                ; preds = %5
  ret i8* %6, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !3005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()) #19, !dbg !3012
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %3, metadata !2825, metadata !DIExpression()) #19, !dbg !3012
  %4 = icmp eq i8* %3, null, !dbg !3015
  %5 = icmp ne i64 %1, 0, !dbg !3016
  %6 = and i1 %5, %4, !dbg !3017
  br i1 %6, label %7, label %8, !dbg !3017

7:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !3018
  unreachable, !dbg !3018

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3019, metadata !DIExpression()) #19, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()) #19, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()) #19, !dbg !3028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !3030
  ret i8* %3, !dbg !3031
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()), !dbg !3035
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3036
  %3 = add i64 %2, 1, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()) #19, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %3, metadata !3010, metadata !DIExpression()) #19, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %3, metadata !2820, metadata !DIExpression()) #19, !dbg !3040
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %4, metadata !2825, metadata !DIExpression()) #19, !dbg !3040
  %5 = icmp eq i8* %4, null, !dbg !3043
  %6 = icmp ne i64 %3, 0, !dbg !3044
  %7 = and i1 %6, %5, !dbg !3045
  br i1 %7, label %8, label %9, !dbg !3045

8:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !3046
  unreachable, !dbg !3046

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3019, metadata !DIExpression()) #19, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()) #19, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %3, metadata !3027, metadata !DIExpression()) #19, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !3049
  ret i8* %4, !dbg !3050
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3051 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3052, !tbaa !1138
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #19, !dbg !3053
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #19, !dbg !3054
  tail call void @abort() #21, !dbg !3055
  unreachable, !dbg !3055
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3056 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3064
  %3 = icmp eq i64 %0, 0, !dbg !3065
  %4 = icmp eq i64 %1, 0, !dbg !3066
  %5 = or i1 %3, %4, !dbg !3067
  br i1 %5, label %11, label %6, !dbg !3067

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3061, metadata !DIExpression()), !dbg !3068
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3069
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3069
  br i1 %8, label %9, label %11, !dbg !3071

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3072
  store i32 12, i32* %10, align 4, !dbg !3074, !tbaa !1138
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %12, metadata !3059, metadata !DIExpression()), !dbg !3064
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %14, metadata !3060, metadata !DIExpression()), !dbg !3064
  br label %15, !dbg !3076

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3064
  ret i8* %16, !dbg !3077
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !3078 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3086, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !3087, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %2, metadata !3088, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3089, metadata !DIExpression()), !dbg !3095
  %6 = bitcast i32* %5 to i8*, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3096
  %7 = icmp eq i32* %0, null, !dbg !3097
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3099
  call void @llvm.dbg.value(metadata i32* %8, metadata !3086, metadata !DIExpression()), !dbg !3095
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %9, metadata !3090, metadata !DIExpression()), !dbg !3095
  %10 = icmp ugt i64 %9, -3, !dbg !3101
  %11 = icmp ne i64 %2, 0, !dbg !3102
  %12 = and i1 %11, %10, !dbg !3103
  br i1 %12, label %13, label %18, !dbg !3103

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !3104
  br i1 %14, label %18, label %15, !dbg !3105

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3106, !tbaa !1420
  call void @llvm.dbg.value(metadata i8 %16, metadata !3092, metadata !DIExpression()), !dbg !3107
  %17 = zext i8 %16 to i32, !dbg !3108
  store i32 %17, i32* %8, align 4, !dbg !3109, !tbaa !1138
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3095
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3110
  ret i64 %19, !dbg !3110
}

; Function Attrs: nounwind
declare !dbg !424 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3111 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3117, metadata !DIExpression()), !dbg !3122
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !3123
  call void @llvm.dbg.value(metadata i1 undef, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3130
  %4 = load i32, i32* %3, align 8, !dbg !3130, !tbaa !3131
  %5 = and i32 %4, 32, !dbg !3130
  %6 = icmp eq i32 %5, 0, !dbg !3133
  call void @llvm.dbg.value(metadata i1 %6, metadata !3120, metadata !DIExpression()), !dbg !3122
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !3134
  %8 = icmp ne i32 %7, 0, !dbg !3135
  call void @llvm.dbg.value(metadata i1 %8, metadata !3121, metadata !DIExpression()), !dbg !3122
  br i1 %6, label %9, label %19, !dbg !3136

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3138
  call void @llvm.dbg.value(metadata i1 %10, metadata !3118, metadata !DIExpression()), !dbg !3122
  %11 = xor i1 %8, true, !dbg !3139
  %12 = or i1 %10, %11, !dbg !3139
  %13 = sext i1 %8 to i32, !dbg !3139
  br i1 %12, label %22, label %14, !dbg !3139

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3140
  %16 = load i32, i32* %15, align 4, !dbg !3140, !tbaa !1138
  %17 = icmp ne i32 %16, 9, !dbg !3141
  %18 = sext i1 %17 to i32, !dbg !3142
  br label %22, !dbg !3142

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3143

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3145
  store i32 0, i32* %21, align 4, !dbg !3147, !tbaa !1138
  br label %22, !dbg !3145

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3122
  ret i32 %23, !dbg !3148
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !3149 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()), !dbg !3156
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3157
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3152, metadata !DIExpression()), !dbg !3158
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !3159
  %5 = icmp eq i32 %4, 0, !dbg !3159
  br i1 %5, label %6, label %13, !dbg !3161

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3162
  %8 = load i16, i16* %7, align 16, !dbg !3162
  %9 = icmp eq i16 %8, 67, !dbg !3162
  br i1 %9, label %13, label %10, !dbg !3163

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0), i64 6), !dbg !3164
  %12 = icmp ne i32 %11, 0, !dbg !3165
  br label %13, !dbg !3163

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3166
  ret i1 %14, !dbg !3166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !3167 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()), !dbg !3171
  %2 = icmp eq i8* %1, null, !dbg !3172
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %1, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()), !dbg !3171
  %4 = load i8, i8* %3, align 1, !dbg !3175, !tbaa !1420
  %5 = icmp eq i8 %4, 0, !dbg !3179
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %3, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %6, metadata !3169, metadata !DIExpression()), !dbg !3171
  ret i8* %6, !dbg !3181
}

; Function Attrs: nounwind
declare !dbg !876 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !3182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3186, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %1, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %2, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3193, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %2, metadata !3194, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()) #19, !dbg !3207
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %4, metadata !3206, metadata !DIExpression()) #19, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %4, metadata !3195, metadata !DIExpression()) #19, !dbg !3199
  %5 = icmp eq i8* %4, null, !dbg !3210
  br i1 %5, label %6, label %9, !dbg !3211

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3212
  br i1 %7, label %19, label %8, !dbg !3215

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3216, !tbaa !1420
  br label %19, !dbg !3217

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %10, metadata !3196, metadata !DIExpression()) #19, !dbg !3219
  %11 = icmp ult i64 %10, %2, !dbg !3220
  br i1 %11, label %12, label %14, !dbg !3222

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()) #19, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %4, metadata !3228, metadata !DIExpression()) #19, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %13, metadata !3229, metadata !DIExpression()) #19, !dbg !3230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3232
  br label %19, !dbg !3233

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3234
  br i1 %15, label %19, label %16, !dbg !3237

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %4, metadata !3228, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %17, metadata !3229, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3242
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3243
  store i8 0, i8* %18, align 1, !dbg !3244, !tbaa !1420
  br label %19, !dbg !3245

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3246
  ret i32 %20, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()) #19, !dbg !3252
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !3206, metadata !DIExpression()) #19, !dbg !3252
  ret i8* %2, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !3256 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 0, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()), !dbg !3266
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %2, metadata !3264, metadata !DIExpression()), !dbg !3266
  %3 = icmp slt i32 %2, 0, !dbg !3268
  br i1 %3, label %4, label %6, !dbg !3270

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3271
  br label %24, !dbg !3272

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3273
  %8 = icmp eq i32 %7, 0, !dbg !3273
  br i1 %8, label %13, label %9, !dbg !3275

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3276
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !3277
  %12 = icmp eq i64 %11, -1, !dbg !3278
  br i1 %12, label %16, label %13, !dbg !3279

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !3280
  %15 = icmp eq i32 %14, 0, !dbg !3280
  br i1 %15, label %16, label %18, !dbg !3281

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3263, metadata !DIExpression()), !dbg !3266
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %21, metadata !3265, metadata !DIExpression()), !dbg !3266
  br label %24, !dbg !3283

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3284
  %20 = load i32, i32* %19, align 4, !dbg !3284, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %20, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 %20, metadata !3263, metadata !DIExpression()), !dbg !3266
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %21, metadata !3265, metadata !DIExpression()), !dbg !3266
  %22 = icmp eq i32 %20, 0, !dbg !3285
  br i1 %22, label %24, label %23, !dbg !3283

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3287, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 -1, metadata !3265, metadata !DIExpression()), !dbg !3266
  br label %24, !dbg !3289

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3266
  ret i32 %25, !dbg !3290
}

; Function Attrs: nofree nounwind
declare !dbg !885 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !920 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !921 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3291 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3299
  br i1 %2, label %6, label %3, !dbg !3301

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3302
  %5 = icmp eq i32 %4, 0, !dbg !3302
  br i1 %5, label %6, label %8, !dbg !3303

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3304
  br label %17, !dbg !3305

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3311
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3313
  %10 = load i32, i32* %9, align 8, !dbg !3313, !tbaa !3131
  %11 = and i32 %10, 256, !dbg !3315
  %12 = icmp eq i32 %11, 0, !dbg !3315
  br i1 %12, label %15, label %13, !dbg !3316

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !3317
  br label %15, !dbg !3317

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3318
  br label %17, !dbg !3319

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3298
  ret i32 %18, !dbg !3320
}

; Function Attrs: nofree nounwind
declare !dbg !929 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3321 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3328, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %2, metadata !3330, metadata !DIExpression()), !dbg !3334
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3335
  %5 = load i8*, i8** %4, align 8, !dbg !3335, !tbaa !3336
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3337
  %7 = load i8*, i8** %6, align 8, !dbg !3337, !tbaa !3338
  %8 = icmp eq i8* %5, %7, !dbg !3339
  br i1 %8, label %9, label %28, !dbg !3340

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3341
  %11 = load i8*, i8** %10, align 8, !dbg !3341, !tbaa !3342
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3343
  %13 = load i8*, i8** %12, align 8, !dbg !3343, !tbaa !3344
  %14 = icmp eq i8* %11, %13, !dbg !3345
  br i1 %14, label %15, label %28, !dbg !3346

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3347
  %17 = load i8*, i8** %16, align 8, !dbg !3347, !tbaa !3348
  %18 = icmp eq i8* %17, null, !dbg !3349
  br i1 %18, label %19, label %28, !dbg !3350

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3351
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %21, metadata !3331, metadata !DIExpression()), !dbg !3353
  %22 = icmp eq i64 %21, -1, !dbg !3354
  br i1 %22, label %30, label %23, !dbg !3356

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3357
  %25 = load i32, i32* %24, align 8, !dbg !3358, !tbaa !3131
  %26 = and i32 %25, -17, !dbg !3358
  store i32 %26, i32* %24, align 8, !dbg !3358, !tbaa !3131
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3359
  store i64 %21, i64* %27, align 8, !dbg !3360, !tbaa !3361
  br label %30, !dbg !3362

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3363
  br label %30, !dbg !3364

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3334
  ret i32 %31, !dbg !3365
}

; Function Attrs: nofree nounwind
declare !dbg !1005 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!294, !2, !11, !95, !101, !143, !352, !288, !394, !415, !418, !421, !440, !479, !486, !879, !882, !926, !967}
!llvm.ident = !{!1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008, !1008}
!llvm.module.flags = !{!1009, !1010, !1011, !1012, !1013}

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
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !102, line: 33, type: !6, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !140, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!67, !104, !25}
!104 = !DISubprogram(name: "fputs", scope: !105, file: !105, line: 626, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!105 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !6, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !109, file: !21, line: 51, baseType: !18, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !109, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !109, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !109, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !109, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !109, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !109, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !109, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !109, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !109, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !109, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !109, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !109, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !109, file: !21, line: 70, baseType: !108, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !109, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !109, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !109, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !109, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !109, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !109, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !109, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !109, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !109, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !109, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !109, file: !21, line: 93, baseType: !108, size: 64, offset: 1344)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !109, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !109, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !109, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !109, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!140 = !{!99}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !144, line: 85, type: !282, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !180, globals: !255, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!146, !160, !165}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !147, size: 32, elements: !148)
!147 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!149 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!153 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!155 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!156 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!157 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!158 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!159 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !147, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 46, baseType: !147, size: 32, elements: !167)
!166 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!168 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!169 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!170 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!171 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!172 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!173 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!174 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!175 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!176 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!179 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!180 = !{!181, !187, !203, !207, !18, !47, !210, !69, !228, !232, !77, !238, !242, !25, !246, !249, !252}
!181 = !DISubprogram(name: "xmemdup", scope: !182, file: !182, line: 62, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!182 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !DISubroutineType(types: !184)
!184 = !{!67, !185, !71}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 342, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!188 = !DISubroutineType(types: !189)
!189 = !{!25, !6, !71, !190, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !144, line: 65, size: 448, elements: !194)
!194 = !{!195, !196, !197, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !193, file: !144, line: 68, baseType: !146, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !144, line: 71, baseType: !18, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !193, file: !144, line: 75, baseType: !198, size: 256, offset: 64)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !193, file: !144, line: 78, baseType: !6, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !193, file: !144, line: 81, baseType: !6, size: 64, offset: 384)
!203 = !DISubprogram(name: "free", scope: !204, file: !204, line: 565, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!204 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!205 = !DISubroutineType(types: !206)
!206 = !{null, !67}
!207 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 408, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!208 = !DISubroutineType(types: !209)
!209 = !{!25, !18, !6, !6, !6, !71}
!210 = !DISubprogram(name: "rpl_mbrtowc", scope: !211, file: !211, line: 717, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!211 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = !DISubroutineType(types: !213)
!213 = !{!71, !214, !6, !71, !215}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !218)
!217 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !216, file: !217, line: 15, baseType: !18, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !216, file: !217, line: 20, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !217, line: 16, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !221, file: !217, line: 18, baseType: !147, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !221, file: !217, line: 19, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4)
!228 = !DISubprogram(name: "iswprint", scope: !229, file: !229, line: 120, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!229 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!230 = !DISubroutineType(types: !231)
!231 = !{!18, !147}
!232 = !DISubprogram(name: "mbsinit", scope: !233, file: !233, line: 292, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!233 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!234 = !DISubroutineType(types: !235)
!235 = !{!18, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!238 = !DISubprogram(name: "locale_charset", scope: !239, file: !239, line: 35, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!239 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !DISubroutineType(types: !241)
!241 = !{!6}
!242 = !DISubprogram(name: "c_strcasecmp", scope: !243, file: !243, line: 42, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!243 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!244 = !DISubroutineType(types: !245)
!245 = !{!18, !6, !6}
!246 = !DISubprogram(name: "xmalloc", scope: !182, file: !182, line: 53, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!247 = !DISubroutineType(types: !248)
!248 = !{!67, !71}
!249 = !DISubprogram(name: "xalloc_die", scope: !182, file: !182, line: 51, type: !250, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!250 = !DISubroutineType(types: !251)
!251 = !{null}
!252 = !DISubprogram(name: "xrealloc", scope: !182, file: !182, line: 59, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!253 = !DISubroutineType(types: !254)
!254 = !{!67, !67, !71}
!255 = !{!141, !256, !262, !264, !266, !271, !278, !280}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !144, line: 101, type: !258, isLocal: false, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 320, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!260 = !{!261}
!261 = !DISubrange(count: 10)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !144, line: 1052, type: !193, isLocal: false, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !144, line: 116, type: !193, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !144, line: 842, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 256)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !144, line: 845, type: !273, isLocal: true, isDefinition: true)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !144, line: 834, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !274, file: !144, line: 836, baseType: !69, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !274, file: !144, line: 837, baseType: !25, size: 64, offset: 64)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !144, line: 843, type: !18, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !144, line: 844, type: !274, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 704, elements: !284)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!284 = !{!285}
!285 = !DISubrange(count: 11)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !288, file: !289, line: 26, type: !291, isLocal: false, isDefinition: true)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !290, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!290 = !{!286}
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 47)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !296, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "src/false.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!296 = !{!77, !297, !332, !336, !340, !343, !344, !25, !67, !348}
!297 = !DISubprogram(name: "fputs_unlocked", scope: !105, file: !105, line: 662, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{!18, !6, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !301, file: !21, line: 51, baseType: !18, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !301, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !301, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !301, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !301, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !301, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !301, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !301, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !301, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !301, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !301, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !301, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !301, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !301, file: !21, line: 70, baseType: !300, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !301, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !301, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !301, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !301, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !301, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !301, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !301, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !301, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !301, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !301, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !301, file: !21, line: 93, baseType: !300, size: 64, offset: 1344)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !301, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !301, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !301, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !301, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!332 = !DISubprogram(name: "set_program_name", scope: !333, file: !333, line: 37, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!333 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!334 = !DISubroutineType(types: !335)
!335 = !{null, !6}
!336 = !DISubprogram(name: "setlocale", scope: !337, file: !337, line: 122, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!337 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!338 = !DISubroutineType(types: !339)
!339 = !{!25, !18, !6}
!340 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!341 = !DISubroutineType(types: !342)
!342 = !{!25, !6, !6}
!343 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!344 = !DISubprogram(name: "atexit", scope: !204, file: !204, line: 595, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{!18, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!348 = !DISubprogram(name: "version_etc", scope: !349, file: !349, line: 69, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!349 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DISubroutineType(types: !351)
!351 = !{null, !300, !6, !6, !6, null}
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !354, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !{!355}
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !353, line: 40, baseType: !147, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!358 = !{!77, !359, !67}
!359 = !DISubprogram(name: "fputs_unlocked", scope: !105, file: !105, line: 662, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!360 = !DISubroutineType(types: !361)
!361 = !{!18, !6, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !363, file: !21, line: 51, baseType: !18, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !363, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !363, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !363, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !363, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !363, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !363, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !363, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !363, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !363, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !363, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !363, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !363, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !363, file: !21, line: 70, baseType: !362, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !363, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !363, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !363, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !363, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !363, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !363, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !363, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !363, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !363, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !363, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !363, file: !21, line: 93, baseType: !362, size: 64, offset: 1344)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !363, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !363, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !363, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !363, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !396, retainedTypes: !409, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!396 = !{!397}
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !398, file: !182, line: 186, baseType: !147, size: 32, elements: !407)
!398 = distinct !DISubprogram(name: "x2nrealloc", scope: !182, file: !182, line: 174, type: !399, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !402)
!399 = !DISubroutineType(types: !400)
!400 = !{!67, !67, !401, !69}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!402 = !{!403, !404, !405, !406}
!403 = !DILocalVariable(name: "p", arg: 1, scope: !398, file: !182, line: 174, type: !67)
!404 = !DILocalVariable(name: "pn", arg: 2, scope: !398, file: !182, line: 174, type: !401)
!405 = !DILocalVariable(name: "s", arg: 3, scope: !398, file: !182, line: 174, type: !69)
!406 = !DILocalVariable(name: "n", scope: !398, file: !182, line: 176, type: !69)
!407 = !{!408}
!408 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!409 = !{!69, !249, !246, !252, !25, !203, !67, !410, !413}
!410 = !DISubprogram(name: "xcalloc", scope: !182, file: !182, line: 57, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{!67, !71, !71}
!413 = !DISubprogram(name: "rpl_calloc", scope: !414, file: !414, line: 688, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!414 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !417, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!417 = !{!77, !85}
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = !{!67}
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !423, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !{!424, !69, !436}
!424 = !DISubprogram(name: "mbrtowc", scope: !233, file: !233, line: 296, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{!71, !214, !6, !71, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !428, file: !217, line: 15, baseType: !18, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !428, file: !217, line: 20, baseType: !432, size: 32, offset: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !217, line: 16, size: 32, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !432, file: !217, line: 18, baseType: !147, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !432, file: !217, line: 19, baseType: !225, size: 32)
!436 = !DISubprogram(name: "hard_locale", scope: !437, file: !437, line: 26, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!437 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!438 = !DISubroutineType(types: !439)
!439 = !{!92, !18}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !442, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!443}
!443 = !DISubprogram(name: "rpl_fclose", scope: !444, file: !444, line: 672, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!444 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = !DISubroutineType(types: !446)
!446 = !{!18, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !448, file: !21, line: 51, baseType: !18, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !448, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !448, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !448, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !448, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !448, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !448, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !448, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !448, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !448, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !448, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !448, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !448, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !448, file: !21, line: 70, baseType: !447, size: 64, offset: 832)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !448, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !448, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !448, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !448, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !448, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !448, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !448, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !448, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !448, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !448, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !448, file: !21, line: 93, baseType: !447, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !448, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !448, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !448, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !448, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !481, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !{!482}
!482 = !DISubprogram(name: "setlocale_null_r", scope: !483, file: !483, line: 64, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!483 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!484 = !DISubroutineType(types: !485)
!485 = !{!18, !18, !25, !71}
!486 = distinct !DICompileUnit(language: DW_LANG_C99, file: !487, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !488, retainedTypes: !875, splitDebugInlining: false, nameTableKind: None)
!487 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!488 = !{!489}
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !490, line: 41, baseType: !147, size: 32, elements: !491)
!490 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874}
!492 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!493 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!494 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!495 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!496 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!497 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!498 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!499 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!500 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!501 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!502 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!503 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!504 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!505 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!506 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!507 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!508 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!509 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!510 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!511 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!512 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!513 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!514 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!515 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!516 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!517 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!518 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!519 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!520 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!521 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!522 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!523 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!524 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!525 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!526 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!527 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!528 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!529 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!530 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!531 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!532 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!533 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!534 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!535 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!536 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!537 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!538 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!539 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!540 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!541 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!600 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!603 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!604 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!605 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!606 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!607 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!608 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!609 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!610 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!611 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!612 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!613 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!614 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!687 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!760 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!761 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!762 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!763 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!764 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!765 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!766 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!767 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!768 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!769 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!770 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!771 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!772 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!773 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!774 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!776 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!777 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!778 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!779 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!780 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!781 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!807 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!808 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!809 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!810 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!811 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!816 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!817 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!818 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!819 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!875 = !{!876, !67}
!876 = !DISubprogram(name: "nl_langinfo", scope: !490, file: !490, line: 661, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!877 = !DISubroutineType(types: !878)
!878 = !{!25, !18}
!879 = distinct !DICompileUnit(language: DW_LANG_C99, file: !880, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !881, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!881 = !{!67, !336}
!882 = distinct !DICompileUnit(language: DW_LANG_C99, file: !883, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!884 = !{!885, !920, !921, !925}
!885 = !DISubprogram(name: "fileno", scope: !105, file: !105, line: 786, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!886 = !DISubroutineType(types: !887)
!887 = !{!18, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !890)
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !889, file: !21, line: 51, baseType: !18, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !889, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !889, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !889, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !889, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !889, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !889, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !889, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !889, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !889, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !889, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !889, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !889, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !889, file: !21, line: 70, baseType: !888, size: 64, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !889, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !889, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !889, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !889, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !889, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !889, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !889, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !889, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !889, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !889, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !889, file: !21, line: 93, baseType: !888, size: 64, offset: 1344)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !889, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !889, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !889, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !889, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!920 = !DISubprogram(name: "fclose", scope: !105, file: !105, line: 213, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!921 = !DISubprogram(name: "lseek", scope: !922, file: !922, line: 334, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!922 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!923 = !DISubroutineType(types: !924)
!924 = !{!45, !18, !45, !18}
!925 = !DISubprogram(name: "rpl_fflush", scope: !444, file: !444, line: 718, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!926 = distinct !DICompileUnit(language: DW_LANG_C99, file: !927, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !928, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!928 = !{!67, !929, !964}
!929 = !DISubprogram(name: "fflush", scope: !105, file: !105, line: 218, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!930 = !DISubroutineType(types: !931)
!931 = !{!18, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !933, file: !21, line: 51, baseType: !18, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !933, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !933, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !933, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !933, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !933, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !933, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !933, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !933, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !933, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !933, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !933, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !933, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !933, file: !21, line: 70, baseType: !932, size: 64, offset: 832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !933, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !933, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !933, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !933, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !933, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !933, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !933, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !933, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !933, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !933, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !933, file: !21, line: 93, baseType: !932, size: 64, offset: 1344)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !933, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !933, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !933, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !933, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!964 = !DISubprogram(name: "rpl_fseeko", scope: !444, file: !444, line: 1034, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!965 = !DISubroutineType(types: !966)
!966 = !{!18, !932, !45, !18}
!967 = distinct !DICompileUnit(language: DW_LANG_C99, file: !968, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !969, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!969 = !{!67, !970, !921, !1005}
!970 = !DISubprogram(name: "fileno", scope: !105, file: !105, line: 786, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!971 = !DISubroutineType(types: !972)
!972 = !{!18, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !974, file: !21, line: 51, baseType: !18, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !974, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !974, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !974, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !974, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !974, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !974, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !974, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !974, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !974, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !974, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !974, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !974, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !974, file: !21, line: 70, baseType: !973, size: 64, offset: 832)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !974, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !974, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !974, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !974, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !974, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !974, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !974, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !974, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !974, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !974, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !974, file: !21, line: 93, baseType: !973, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !974, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !974, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !974, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !974, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1005 = !DISubprogram(name: "fseeko", scope: !105, file: !105, line: 707, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!18, !973, !45, !18}
!1008 = !{!"clang version 10.0.0 "}
!1009 = !{i32 7, !"Dwarf Version", i32 4}
!1010 = !{i32 2, !"Debug Info Version", i32 3}
!1011 = !{i32 1, !"wchar_size", i32 4}
!1012 = !{i32 7, !"PIC Level", i32 2}
!1013 = !{i32 7, !"PIE Level", i32 2}
!1014 = distinct !DISubprogram(name: "usage", scope: !1015, file: !1015, line: 36, type: !1016, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1018)
!1015 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !18}
!1018 = !{!1019}
!1019 = !DILocalVariable(name: "status", arg: 1, scope: !1014, file: !1015, line: 36, type: !18)
!1020 = !DILocation(line: 0, scope: !1014)
!1021 = !DILocation(line: 38, column: 3, scope: !1014)
!1022 = !{!1023, !1023, i64 0}
!1023 = !{!"any pointer", !1024, i64 0}
!1024 = !{!"omnipotent char", !1025, i64 0}
!1025 = !{!"Simple C/C++ TBAA"}
!1026 = !DILocation(line: 43, column: 3, scope: !1014)
!1027 = !DILocation(line: 47, column: 3, scope: !1014)
!1028 = !DILocation(line: 48, column: 3, scope: !1014)
!1029 = !DILocation(line: 49, column: 3, scope: !1014)
!1030 = !DILocation(line: 50, column: 3, scope: !1014)
!1031 = !DILocation(line: 51, column: 3, scope: !1014)
!1032 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1033, file: !1033, line: 634, type: !334, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1034)
!1033 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1034 = !{!1035, !1036, !1045, !1046, !1048}
!1035 = !DILocalVariable(name: "program", arg: 1, scope: !1032, file: !1033, line: 634, type: !6)
!1036 = !DILocalVariable(name: "infomap", scope: !1032, file: !1033, line: 636, type: !1037)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 896, elements: !1043)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1032, file: !1033, line: 636, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1039, file: !1033, line: 636, baseType: !6, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1039, file: !1033, line: 636, baseType: !6, size: 64, offset: 64)
!1043 = !{!1044}
!1044 = !DISubrange(count: 7)
!1045 = !DILocalVariable(name: "node", scope: !1032, file: !1033, line: 646, type: !6)
!1046 = !DILocalVariable(name: "map_prog", scope: !1032, file: !1033, line: 647, type: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1048 = !DILocalVariable(name: "lc_messages", scope: !1032, file: !1033, line: 659, type: !6)
!1049 = !DILocation(line: 0, scope: !1032)
!1050 = !DILocation(line: 636, column: 3, scope: !1032)
!1051 = !DILocation(line: 636, column: 67, scope: !1032)
!1052 = !DILocation(line: 647, column: 36, scope: !1032)
!1053 = !DILocation(line: 649, column: 3, scope: !1032)
!1054 = !DILocation(line: 649, column: 33, scope: !1032)
!1055 = !DILocation(line: 650, column: 13, scope: !1032)
!1056 = !DILocation(line: 649, column: 20, scope: !1032)
!1057 = !{!1058, !1023, i64 0}
!1058 = !{!"infomap", !1023, i64 0, !1023, i64 8}
!1059 = !DILocation(line: 649, column: 10, scope: !1032)
!1060 = !DILocation(line: 649, column: 28, scope: !1032)
!1061 = distinct !{!1061, !1053, !1055}
!1062 = !DILocation(line: 652, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1032, file: !1033, line: 652, column: 7)
!1064 = !{!1058, !1023, i64 8}
!1065 = !DILocation(line: 652, column: 7, scope: !1063)
!1066 = !DILocation(line: 652, column: 7, scope: !1032)
!1067 = !DILocation(line: 655, column: 3, scope: !1032)
!1068 = !DILocation(line: 659, column: 29, scope: !1032)
!1069 = !DILocation(line: 660, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1032, file: !1033, line: 660, column: 7)
!1071 = !DILocation(line: 660, column: 19, scope: !1070)
!1072 = !DILocation(line: 660, column: 22, scope: !1070)
!1073 = !DILocation(line: 660, column: 7, scope: !1032)
!1074 = !DILocation(line: 666, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !1033, line: 661, column: 5)
!1076 = !DILocation(line: 668, column: 5, scope: !1075)
!1077 = !DILocation(line: 669, column: 3, scope: !1032)
!1078 = !DILocation(line: 671, column: 3, scope: !1032)
!1079 = !DILocation(line: 673, column: 1, scope: !1032)
!1080 = distinct !DISubprogram(name: "main", scope: !1015, file: !1015, line: 55, type: !1081, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!18, !18, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1084 = !{!1085, !1086}
!1085 = !DILocalVariable(name: "argc", arg: 1, scope: !1080, file: !1015, line: 55, type: !18)
!1086 = !DILocalVariable(name: "argv", arg: 2, scope: !1080, file: !1015, line: 55, type: !1083)
!1087 = !DILocation(line: 0, scope: !1080)
!1088 = !DILocation(line: 59, column: 12, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !1015, line: 59, column: 7)
!1090 = !DILocation(line: 59, column: 7, scope: !1080)
!1091 = !DILocation(line: 62, column: 25, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !1015, line: 60, column: 5)
!1093 = !DILocation(line: 62, column: 7, scope: !1092)
!1094 = !DILocation(line: 63, column: 7, scope: !1092)
!1095 = !DILocation(line: 64, column: 7, scope: !1092)
!1096 = !DILocation(line: 65, column: 7, scope: !1092)
!1097 = !DILocation(line: 69, column: 7, scope: !1092)
!1098 = !DILocation(line: 71, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !1015, line: 71, column: 11)
!1100 = !DILocation(line: 71, column: 11, scope: !1092)
!1101 = !DILocation(line: 72, column: 9, scope: !1099)
!1102 = !DILocation(line: 74, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !1015, line: 74, column: 11)
!1104 = !DILocation(line: 74, column: 11, scope: !1092)
!1105 = !DILocation(line: 75, column: 22, scope: !1103)
!1106 = !DILocation(line: 75, column: 58, scope: !1103)
!1107 = !DILocation(line: 75, column: 9, scope: !1103)
!1108 = !DILocation(line: 79, column: 3, scope: !1080)
!1109 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !334, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1110)
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "file", arg: 1, scope: !1109, file: !12, line: 51, type: !6)
!1112 = !DILocation(line: 0, scope: !1109)
!1113 = !DILocation(line: 53, column: 13, scope: !1109)
!1114 = !DILocation(line: 54, column: 1, scope: !1109)
!1115 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1116, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !92}
!1118 = !{!1119}
!1119 = !DILocalVariable(name: "ignore", arg: 1, scope: !1115, file: !12, line: 88, type: !92)
!1120 = !DILocation(line: 0, scope: !1115)
!1121 = !DILocation(line: 90, column: 16, scope: !1115)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"_Bool", !1024, i64 0}
!1124 = !DILocation(line: 91, column: 1, scope: !1115)
!1125 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !250, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1126)
!1126 = !{!1127}
!1127 = !DILocalVariable(name: "write_error", scope: !1128, file: !12, line: 122, type: !6)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !12, line: 121, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !12, line: 119, column: 7)
!1130 = !DILocation(line: 119, column: 21, scope: !1129)
!1131 = !DILocation(line: 119, column: 7, scope: !1129)
!1132 = !DILocation(line: 119, column: 29, scope: !1129)
!1133 = !DILocation(line: 120, column: 7, scope: !1129)
!1134 = !DILocation(line: 120, column: 12, scope: !1129)
!1135 = !{i8 0, i8 2}
!1136 = !DILocation(line: 120, column: 25, scope: !1129)
!1137 = !DILocation(line: 120, column: 28, scope: !1129)
!1138 = !{!1139, !1139, i64 0}
!1139 = !{!"int", !1024, i64 0}
!1140 = !DILocation(line: 120, column: 34, scope: !1129)
!1141 = !DILocation(line: 119, column: 7, scope: !1125)
!1142 = !DILocation(line: 122, column: 33, scope: !1128)
!1143 = !DILocation(line: 0, scope: !1128)
!1144 = !DILocation(line: 123, column: 11, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1128, file: !12, line: 123, column: 11)
!1146 = !DILocation(line: 0, scope: !1145)
!1147 = !DILocation(line: 123, column: 11, scope: !1128)
!1148 = !DILocation(line: 124, column: 36, scope: !1145)
!1149 = !DILocation(line: 124, column: 9, scope: !1145)
!1150 = !DILocation(line: 127, column: 9, scope: !1145)
!1151 = !DILocation(line: 129, column: 14, scope: !1128)
!1152 = !DILocation(line: 129, column: 7, scope: !1128)
!1153 = !DILocation(line: 134, column: 42, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1125, file: !12, line: 134, column: 7)
!1155 = !DILocation(line: 134, column: 28, scope: !1154)
!1156 = !DILocation(line: 134, column: 50, scope: !1154)
!1157 = !DILocation(line: 134, column: 7, scope: !1125)
!1158 = !DILocation(line: 135, column: 12, scope: !1154)
!1159 = !DILocation(line: 135, column: 5, scope: !1154)
!1160 = !DILocation(line: 136, column: 1, scope: !1125)
!1161 = distinct !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 39, type: !334, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DILocalVariable(name: "argv0", arg: 1, scope: !1161, file: !102, line: 39, type: !6)
!1164 = !DILocalVariable(name: "slash", scope: !1161, file: !102, line: 46, type: !6)
!1165 = !DILocalVariable(name: "base", scope: !1161, file: !102, line: 47, type: !6)
!1166 = !DILocation(line: 0, scope: !1161)
!1167 = !DILocation(line: 51, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !102, line: 51, column: 7)
!1169 = !DILocation(line: 51, column: 7, scope: !1161)
!1170 = !DILocation(line: 55, column: 14, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !102, line: 52, column: 5)
!1172 = !DILocation(line: 54, column: 7, scope: !1171)
!1173 = !DILocation(line: 56, column: 7, scope: !1171)
!1174 = !DILocation(line: 59, column: 11, scope: !1161)
!1175 = !DILocation(line: 60, column: 17, scope: !1161)
!1176 = !DILocation(line: 60, column: 11, scope: !1161)
!1177 = !DILocation(line: 61, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !102, line: 61, column: 7)
!1179 = !DILocation(line: 61, column: 20, scope: !1178)
!1180 = !DILocation(line: 61, column: 25, scope: !1178)
!1181 = !DILocation(line: 61, column: 42, scope: !1178)
!1182 = !DILocation(line: 61, column: 28, scope: !1178)
!1183 = !DILocation(line: 61, column: 61, scope: !1178)
!1184 = !DILocation(line: 61, column: 7, scope: !1161)
!1185 = !DILocation(line: 64, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !102, line: 64, column: 11)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !102, line: 62, column: 5)
!1188 = !DILocation(line: 64, column: 36, scope: !1186)
!1189 = !DILocation(line: 64, column: 11, scope: !1187)
!1190 = !DILocation(line: 66, column: 24, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !102, line: 65, column: 9)
!1192 = !DILocation(line: 70, column: 41, scope: !1191)
!1193 = !DILocation(line: 72, column: 9, scope: !1191)
!1194 = !DILocation(line: 84, column: 16, scope: !1161)
!1195 = !DILocation(line: 90, column: 27, scope: !1161)
!1196 = !DILocation(line: 92, column: 1, scope: !1161)
!1197 = distinct !DISubprogram(name: "clone_quoting_options", scope: !144, file: !144, line: 122, type: !1198, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1201)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1200, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1201 = !{!1202, !1203, !1204}
!1202 = !DILocalVariable(name: "o", arg: 1, scope: !1197, file: !144, line: 122, type: !1200)
!1203 = !DILocalVariable(name: "e", scope: !1197, file: !144, line: 124, type: !18)
!1204 = !DILocalVariable(name: "p", scope: !1197, file: !144, line: 125, type: !1200)
!1205 = !DILocation(line: 0, scope: !1197)
!1206 = !DILocation(line: 124, column: 11, scope: !1197)
!1207 = !DILocation(line: 125, column: 40, scope: !1197)
!1208 = !DILocation(line: 125, column: 31, scope: !1197)
!1209 = !DILocation(line: 127, column: 9, scope: !1197)
!1210 = !DILocation(line: 128, column: 3, scope: !1197)
!1211 = distinct !DISubprogram(name: "get_quoting_style", scope: !144, file: !144, line: 133, type: !1212, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!146, !191}
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "o", arg: 1, scope: !1211, file: !144, line: 133, type: !191)
!1216 = !DILocation(line: 0, scope: !1211)
!1217 = !DILocation(line: 135, column: 11, scope: !1211)
!1218 = !DILocation(line: 135, column: 46, scope: !1211)
!1219 = !{!1220, !1024, i64 0}
!1220 = !{!"quoting_options", !1024, i64 0, !1139, i64 4, !1024, i64 8, !1023, i64 40, !1023, i64 48}
!1221 = !DILocation(line: 135, column: 3, scope: !1211)
!1222 = distinct !DISubprogram(name: "set_quoting_style", scope: !144, file: !144, line: 141, type: !1223, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1200, !146}
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "o", arg: 1, scope: !1222, file: !144, line: 141, type: !1200)
!1227 = !DILocalVariable(name: "s", arg: 2, scope: !1222, file: !144, line: 141, type: !146)
!1228 = !DILocation(line: 0, scope: !1222)
!1229 = !DILocation(line: 143, column: 4, scope: !1222)
!1230 = !DILocation(line: 143, column: 39, scope: !1222)
!1231 = !DILocation(line: 143, column: 45, scope: !1222)
!1232 = !DILocation(line: 144, column: 1, scope: !1222)
!1233 = distinct !DISubprogram(name: "set_char_quoting", scope: !144, file: !144, line: 152, type: !1234, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!18, !1200, !8, !18}
!1236 = !{!1237, !1238, !1239, !1240, !1242, !1244, !1245}
!1237 = !DILocalVariable(name: "o", arg: 1, scope: !1233, file: !144, line: 152, type: !1200)
!1238 = !DILocalVariable(name: "c", arg: 2, scope: !1233, file: !144, line: 152, type: !8)
!1239 = !DILocalVariable(name: "i", arg: 3, scope: !1233, file: !144, line: 152, type: !18)
!1240 = !DILocalVariable(name: "uc", scope: !1233, file: !144, line: 154, type: !1241)
!1241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1242 = !DILocalVariable(name: "p", scope: !1233, file: !144, line: 155, type: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1244 = !DILocalVariable(name: "shift", scope: !1233, file: !144, line: 157, type: !18)
!1245 = !DILocalVariable(name: "r", scope: !1233, file: !144, line: 158, type: !18)
!1246 = !DILocation(line: 0, scope: !1233)
!1247 = !DILocation(line: 156, column: 6, scope: !1233)
!1248 = !DILocation(line: 156, column: 62, scope: !1233)
!1249 = !DILocation(line: 156, column: 57, scope: !1233)
!1250 = !DILocation(line: 157, column: 15, scope: !1233)
!1251 = !DILocation(line: 158, column: 12, scope: !1233)
!1252 = !DILocation(line: 158, column: 15, scope: !1233)
!1253 = !DILocation(line: 158, column: 25, scope: !1233)
!1254 = !DILocation(line: 159, column: 13, scope: !1233)
!1255 = !DILocation(line: 159, column: 18, scope: !1233)
!1256 = !DILocation(line: 159, column: 23, scope: !1233)
!1257 = !DILocation(line: 159, column: 6, scope: !1233)
!1258 = !DILocation(line: 160, column: 3, scope: !1233)
!1259 = distinct !DISubprogram(name: "set_quoting_flags", scope: !144, file: !144, line: 168, type: !1260, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!18, !1200, !18}
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !144, line: 168, type: !1200)
!1264 = !DILocalVariable(name: "i", arg: 2, scope: !1259, file: !144, line: 168, type: !18)
!1265 = !DILocalVariable(name: "r", scope: !1259, file: !144, line: 170, type: !18)
!1266 = !DILocation(line: 0, scope: !1259)
!1267 = !DILocation(line: 171, column: 8, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !144, line: 171, column: 7)
!1269 = !DILocation(line: 171, column: 7, scope: !1259)
!1270 = !DILocation(line: 173, column: 10, scope: !1259)
!1271 = !{!1220, !1139, i64 4}
!1272 = !DILocation(line: 174, column: 12, scope: !1259)
!1273 = !DILocation(line: 175, column: 3, scope: !1259)
!1274 = distinct !DISubprogram(name: "set_custom_quoting", scope: !144, file: !144, line: 179, type: !1275, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !1200, !6, !6}
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "o", arg: 1, scope: !1274, file: !144, line: 179, type: !1200)
!1279 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1274, file: !144, line: 180, type: !6)
!1280 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1274, file: !144, line: 180, type: !6)
!1281 = !DILocation(line: 0, scope: !1274)
!1282 = !DILocation(line: 182, column: 8, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !144, line: 182, column: 7)
!1284 = !DILocation(line: 182, column: 7, scope: !1274)
!1285 = !DILocation(line: 184, column: 6, scope: !1274)
!1286 = !DILocation(line: 184, column: 12, scope: !1274)
!1287 = !DILocation(line: 185, column: 8, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !144, line: 185, column: 7)
!1289 = !DILocation(line: 185, column: 23, scope: !1288)
!1290 = !DILocation(line: 185, column: 19, scope: !1288)
!1291 = !DILocation(line: 186, column: 5, scope: !1288)
!1292 = !DILocation(line: 187, column: 6, scope: !1274)
!1293 = !DILocation(line: 187, column: 17, scope: !1274)
!1294 = !{!1220, !1023, i64 40}
!1295 = !DILocation(line: 188, column: 6, scope: !1274)
!1296 = !DILocation(line: 188, column: 18, scope: !1274)
!1297 = !{!1220, !1023, i64 48}
!1298 = !DILocation(line: 189, column: 1, scope: !1274)
!1299 = distinct !DISubprogram(name: "quotearg_buffer", scope: !144, file: !144, line: 784, type: !1300, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!69, !25, !69, !6, !69, !191}
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1303 = !DILocalVariable(name: "buffer", arg: 1, scope: !1299, file: !144, line: 784, type: !25)
!1304 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1299, file: !144, line: 784, type: !69)
!1305 = !DILocalVariable(name: "arg", arg: 3, scope: !1299, file: !144, line: 785, type: !6)
!1306 = !DILocalVariable(name: "argsize", arg: 4, scope: !1299, file: !144, line: 785, type: !69)
!1307 = !DILocalVariable(name: "o", arg: 5, scope: !1299, file: !144, line: 786, type: !191)
!1308 = !DILocalVariable(name: "p", scope: !1299, file: !144, line: 788, type: !191)
!1309 = !DILocalVariable(name: "e", scope: !1299, file: !144, line: 789, type: !18)
!1310 = !DILocalVariable(name: "r", scope: !1299, file: !144, line: 790, type: !69)
!1311 = !DILocation(line: 0, scope: !1299)
!1312 = !DILocation(line: 788, column: 37, scope: !1299)
!1313 = !DILocation(line: 789, column: 11, scope: !1299)
!1314 = !DILocation(line: 791, column: 43, scope: !1299)
!1315 = !DILocation(line: 791, column: 53, scope: !1299)
!1316 = !DILocation(line: 791, column: 60, scope: !1299)
!1317 = !DILocation(line: 792, column: 43, scope: !1299)
!1318 = !DILocation(line: 792, column: 58, scope: !1299)
!1319 = !DILocation(line: 790, column: 14, scope: !1299)
!1320 = !DILocation(line: 793, column: 9, scope: !1299)
!1321 = !DILocation(line: 794, column: 3, scope: !1299)
!1322 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !144, file: !144, line: 256, type: !1323, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1327)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!69, !25, !69, !6, !69, !146, !18, !1325, !6, !6}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1352, !1353, !1354, !1355, !1356, !1359, !1360, !1366, !1369, !1370, !1377, !1380, !1381, !1382, !1383, !1384, !1385}
!1328 = !DILocalVariable(name: "buffer", arg: 1, scope: !1322, file: !144, line: 256, type: !25)
!1329 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1322, file: !144, line: 256, type: !69)
!1330 = !DILocalVariable(name: "arg", arg: 3, scope: !1322, file: !144, line: 257, type: !6)
!1331 = !DILocalVariable(name: "argsize", arg: 4, scope: !1322, file: !144, line: 257, type: !69)
!1332 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1322, file: !144, line: 258, type: !146)
!1333 = !DILocalVariable(name: "flags", arg: 6, scope: !1322, file: !144, line: 258, type: !18)
!1334 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1322, file: !144, line: 259, type: !1325)
!1335 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1322, file: !144, line: 260, type: !6)
!1336 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1322, file: !144, line: 261, type: !6)
!1337 = !DILocalVariable(name: "i", scope: !1322, file: !144, line: 263, type: !69)
!1338 = !DILocalVariable(name: "len", scope: !1322, file: !144, line: 264, type: !69)
!1339 = !DILocalVariable(name: "orig_buffersize", scope: !1322, file: !144, line: 265, type: !69)
!1340 = !DILocalVariable(name: "quote_string", scope: !1322, file: !144, line: 266, type: !6)
!1341 = !DILocalVariable(name: "quote_string_len", scope: !1322, file: !144, line: 267, type: !69)
!1342 = !DILocalVariable(name: "backslash_escapes", scope: !1322, file: !144, line: 268, type: !92)
!1343 = !DILocalVariable(name: "unibyte_locale", scope: !1322, file: !144, line: 269, type: !92)
!1344 = !DILocalVariable(name: "elide_outer_quotes", scope: !1322, file: !144, line: 270, type: !92)
!1345 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1322, file: !144, line: 271, type: !92)
!1346 = !DILocalVariable(name: "encountered_single_quote", scope: !1322, file: !144, line: 272, type: !92)
!1347 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1322, file: !144, line: 273, type: !92)
!1348 = !DILocalVariable(name: "c", scope: !1349, file: !144, line: 402, type: !1241)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !144, line: 401, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !144, line: 400, column: 3)
!1351 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 400, column: 3)
!1352 = !DILocalVariable(name: "esc", scope: !1349, file: !144, line: 403, type: !1241)
!1353 = !DILocalVariable(name: "is_right_quote", scope: !1349, file: !144, line: 404, type: !92)
!1354 = !DILocalVariable(name: "escaping", scope: !1349, file: !144, line: 405, type: !92)
!1355 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1349, file: !144, line: 406, type: !92)
!1356 = !DILocalVariable(name: "m", scope: !1357, file: !144, line: 610, type: !69)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 608, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 426, column: 9)
!1359 = !DILocalVariable(name: "printable", scope: !1357, file: !144, line: 612, type: !92)
!1360 = !DILocalVariable(name: "mbstate", scope: !1361, file: !144, line: 621, type: !1363)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !144, line: 620, column: 15)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 614, column: 17)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1364, line: 6, baseType: !1365)
!1364 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !216)
!1366 = !DILocalVariable(name: "w", scope: !1367, file: !144, line: 631, type: !1368)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !144, line: 630, column: 19)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1369 = !DILocalVariable(name: "bytes", scope: !1367, file: !144, line: 632, type: !69)
!1370 = !DILocalVariable(name: "j", scope: !1371, file: !144, line: 657, type: !69)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !144, line: 656, column: 27)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 654, column: 29)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !144, line: 649, column: 23)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !144, line: 641, column: 30)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !144, line: 636, column: 30)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !144, line: 634, column: 25)
!1377 = !DILocalVariable(name: "ilim", scope: !1378, file: !144, line: 684, type: !69)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !144, line: 681, column: 15)
!1379 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 680, column: 17)
!1380 = !DILabel(scope: !1322, name: "process_input", file: !144, line: 314)
!1381 = !DILabel(scope: !1358, name: "c_and_shell_escape", file: !144, line: 512)
!1382 = !DILabel(scope: !1358, name: "c_escape", file: !144, line: 517)
!1383 = !DILabel(scope: !1349, name: "store_escape", file: !144, line: 719)
!1384 = !DILabel(scope: !1349, name: "store_c", file: !144, line: 722)
!1385 = !DILabel(scope: !1322, name: "force_outer_quoting_style", file: !144, line: 763)
!1386 = !DILocation(line: 0, scope: !1322)
!1387 = !DILocation(line: 269, column: 25, scope: !1322)
!1388 = !DILocation(line: 269, column: 36, scope: !1322)
!1389 = !DILocation(line: 270, column: 8, scope: !1322)
!1390 = !DILocation(line: 0, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 526, column: 15)
!1392 = !DILocation(line: 0, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !144, line: 462, column: 19)
!1394 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 455, column: 13)
!1395 = !DILocation(line: 0, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !144, line: 449, column: 20)
!1397 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 428, column: 15)
!1398 = !DILocation(line: 0, scope: !1361)
!1399 = !DILocation(line: 0, scope: !1367)
!1400 = !DILocation(line: 0, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 712, column: 11)
!1402 = !DILocation(line: 273, column: 3, scope: !1322)
!1403 = !DILocation(line: 265, column: 10, scope: !1322)
!1404 = !DILocation(line: 266, column: 15, scope: !1322)
!1405 = !DILocation(line: 267, column: 10, scope: !1322)
!1406 = !DILocation(line: 268, column: 8, scope: !1322)
!1407 = !DILocation(line: 271, column: 8, scope: !1322)
!1408 = !DILocation(line: 272, column: 8, scope: !1322)
!1409 = !DILocation(line: 273, column: 8, scope: !1322)
!1410 = !DILocation(line: 314, column: 2, scope: !1322)
!1411 = !DILocation(line: 316, column: 3, scope: !1322)
!1412 = !DILocation(line: 323, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 317, column: 5)
!1414 = !DILocation(line: 323, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !144, line: 323, column: 11)
!1416 = !DILocation(line: 324, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !144, line: 324, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !144, line: 324, column: 9)
!1419 = !DILocation(line: 324, column: 9, scope: !1418)
!1420 = !{!1024, !1024, i64 0}
!1421 = !DILocation(line: 362, column: 26, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !144, line: 340, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !144, line: 339, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1413, file: !144, line: 338, column: 7)
!1425 = !DILocation(line: 363, column: 27, scope: !1422)
!1426 = !DILocation(line: 364, column: 11, scope: !1422)
!1427 = !DILocation(line: 365, column: 14, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !144, line: 365, column: 13)
!1429 = !DILocation(line: 365, column: 13, scope: !1424)
!1430 = !DILocation(line: 366, column: 43, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !144, line: 366, column: 11)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !144, line: 366, column: 11)
!1433 = !DILocation(line: 366, column: 11, scope: !1432)
!1434 = !DILocation(line: 367, column: 13, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !144, line: 367, column: 13)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !144, line: 367, column: 13)
!1437 = !DILocation(line: 367, column: 13, scope: !1436)
!1438 = !DILocation(line: 366, column: 70, scope: !1431)
!1439 = distinct !{!1439, !1433, !1440}
!1440 = !DILocation(line: 367, column: 13, scope: !1432)
!1441 = !DILocation(line: 264, column: 10, scope: !1322)
!1442 = !DILocation(line: 370, column: 28, scope: !1424)
!1443 = !DILocation(line: 372, column: 7, scope: !1413)
!1444 = !DILocation(line: 376, column: 7, scope: !1413)
!1445 = !DILocation(line: 379, column: 7, scope: !1413)
!1446 = !DILocation(line: 381, column: 12, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1413, file: !144, line: 381, column: 11)
!1448 = !DILocation(line: 381, column: 11, scope: !1413)
!1449 = !DILocation(line: 386, column: 12, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1413, file: !144, line: 386, column: 11)
!1451 = !DILocation(line: 386, column: 11, scope: !1413)
!1452 = !DILocation(line: 387, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !144, line: 387, column: 9)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !144, line: 387, column: 9)
!1455 = !DILocation(line: 387, column: 9, scope: !1454)
!1456 = !DILocation(line: 394, column: 7, scope: !1413)
!1457 = !DILocation(line: 397, column: 7, scope: !1413)
!1458 = !DILocation(line: 0, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 408, column: 11)
!1460 = !DILocation(line: 0, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 419, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !144, line: 418, column: 9)
!1463 = !DILocation(line: 0, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 556, column: 15)
!1465 = !DILocation(line: 0, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 548, column: 15)
!1467 = !DILocation(line: 0, scope: !1372)
!1468 = !DILocation(line: 0, scope: !1379)
!1469 = !DILocation(line: 0, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 509, column: 15)
!1471 = !DILocation(line: 400, column: 8, scope: !1351)
!1472 = !DILocation(line: 0, scope: !1351)
!1473 = !DILocation(line: 400, column: 27, scope: !1350)
!1474 = !DILocation(line: 400, column: 19, scope: !1350)
!1475 = !DILocation(line: 400, column: 41, scope: !1350)
!1476 = !DILocation(line: 400, column: 48, scope: !1350)
!1477 = !DILocation(line: 400, column: 3, scope: !1351)
!1478 = !DILocation(line: 400, column: 60, scope: !1350)
!1479 = !DILocation(line: 0, scope: !1349)
!1480 = !DILocation(line: 409, column: 11, scope: !1459)
!1481 = !DILocation(line: 411, column: 17, scope: !1459)
!1482 = !DILocation(line: 412, column: 39, scope: !1459)
!1483 = !DILocation(line: 416, column: 32, scope: !1459)
!1484 = !DILocation(line: 412, column: 19, scope: !1459)
!1485 = !DILocation(line: 412, column: 15, scope: !1459)
!1486 = !DILocation(line: 417, column: 11, scope: !1459)
!1487 = !DILocation(line: 417, column: 26, scope: !1459)
!1488 = !DILocation(line: 417, column: 14, scope: !1459)
!1489 = !DILocation(line: 417, column: 63, scope: !1459)
!1490 = !DILocation(line: 408, column: 11, scope: !1349)
!1491 = !DILocation(line: 424, column: 11, scope: !1349)
!1492 = !DILocation(line: 425, column: 7, scope: !1349)
!1493 = !DILocation(line: 428, column: 15, scope: !1358)
!1494 = !DILocation(line: 430, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !144, line: 430, column: 15)
!1496 = distinct !DILexicalBlock(scope: !1397, file: !144, line: 429, column: 13)
!1497 = !DILocation(line: 430, column: 15, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !144, line: 430, column: 15)
!1499 = !DILocation(line: 430, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !144, line: 430, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !144, line: 430, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !144, line: 430, column: 15)
!1503 = !DILocation(line: 430, column: 15, scope: !1501)
!1504 = !DILocation(line: 430, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !144, line: 430, column: 15)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !144, line: 430, column: 15)
!1507 = !DILocation(line: 430, column: 15, scope: !1506)
!1508 = !DILocation(line: 430, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !144, line: 430, column: 15)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !144, line: 430, column: 15)
!1511 = !DILocation(line: 430, column: 15, scope: !1510)
!1512 = !DILocation(line: 430, column: 15, scope: !1502)
!1513 = !DILocation(line: 430, column: 15, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !144, line: 430, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1495, file: !144, line: 430, column: 15)
!1516 = !DILocation(line: 430, column: 15, scope: !1515)
!1517 = !DILocation(line: 438, column: 19, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1496, file: !144, line: 437, column: 19)
!1519 = !DILocation(line: 438, column: 24, scope: !1518)
!1520 = !DILocation(line: 438, column: 28, scope: !1518)
!1521 = !DILocation(line: 438, column: 38, scope: !1518)
!1522 = !DILocation(line: 438, column: 48, scope: !1518)
!1523 = !DILocation(line: 438, column: 59, scope: !1518)
!1524 = !DILocation(line: 440, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !144, line: 440, column: 19)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !144, line: 440, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !144, line: 439, column: 17)
!1528 = !DILocation(line: 440, column: 19, scope: !1526)
!1529 = !DILocation(line: 441, column: 19, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !144, line: 441, column: 19)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !144, line: 441, column: 19)
!1532 = !DILocation(line: 441, column: 19, scope: !1531)
!1533 = !DILocation(line: 442, column: 17, scope: !1527)
!1534 = !DILocation(line: 449, column: 20, scope: !1397)
!1535 = !DILocation(line: 454, column: 11, scope: !1358)
!1536 = !DILocation(line: 457, column: 19, scope: !1394)
!1537 = !DILocation(line: 463, column: 19, scope: !1393)
!1538 = !DILocation(line: 463, column: 24, scope: !1393)
!1539 = !DILocation(line: 463, column: 28, scope: !1393)
!1540 = !DILocation(line: 463, column: 38, scope: !1393)
!1541 = !DILocation(line: 463, column: 47, scope: !1393)
!1542 = !DILocation(line: 463, column: 41, scope: !1393)
!1543 = !DILocation(line: 463, column: 52, scope: !1393)
!1544 = !DILocation(line: 462, column: 19, scope: !1394)
!1545 = !DILocation(line: 464, column: 25, scope: !1393)
!1546 = !DILocation(line: 464, column: 17, scope: !1393)
!1547 = !DILocation(line: 471, column: 25, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1393, file: !144, line: 465, column: 19)
!1549 = !DILocation(line: 475, column: 21, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !144, line: 475, column: 21)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !144, line: 475, column: 21)
!1552 = !DILocation(line: 475, column: 21, scope: !1551)
!1553 = !DILocation(line: 476, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !144, line: 476, column: 21)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !144, line: 476, column: 21)
!1556 = !DILocation(line: 476, column: 21, scope: !1555)
!1557 = !DILocation(line: 477, column: 21, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !144, line: 477, column: 21)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !144, line: 477, column: 21)
!1560 = !DILocation(line: 477, column: 21, scope: !1559)
!1561 = !DILocation(line: 478, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !144, line: 478, column: 21)
!1563 = distinct !DILexicalBlock(scope: !1548, file: !144, line: 478, column: 21)
!1564 = !DILocation(line: 478, column: 21, scope: !1563)
!1565 = !DILocation(line: 479, column: 21, scope: !1548)
!1566 = !DILocation(line: 492, column: 31, scope: !1358)
!1567 = !DILocation(line: 493, column: 31, scope: !1358)
!1568 = !DILocation(line: 495, column: 31, scope: !1358)
!1569 = !DILocation(line: 496, column: 31, scope: !1358)
!1570 = !DILocation(line: 497, column: 31, scope: !1358)
!1571 = !DILocation(line: 500, column: 15, scope: !1358)
!1572 = !DILocation(line: 502, column: 19, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 501, column: 13)
!1574 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 500, column: 15)
!1575 = !DILocation(line: 509, column: 33, scope: !1470)
!1576 = !DILocation(line: 0, scope: !1358)
!1577 = !DILocation(line: 512, column: 9, scope: !1358)
!1578 = !DILocation(line: 514, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 513, column: 15)
!1580 = !DILocation(line: 517, column: 9, scope: !1358)
!1581 = !DILocation(line: 518, column: 15, scope: !1358)
!1582 = !DILocation(line: 526, column: 15, scope: !1358)
!1583 = !DILocation(line: 526, column: 40, scope: !1391)
!1584 = !DILocation(line: 526, column: 47, scope: !1391)
!1585 = !DILocation(line: 526, column: 18, scope: !1391)
!1586 = !DILocation(line: 530, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1358, file: !144, line: 530, column: 15)
!1588 = !DILocation(line: 530, column: 15, scope: !1358)
!1589 = !DILocation(line: 535, column: 11, scope: !1358)
!1590 = !DILocation(line: 549, column: 15, scope: !1466)
!1591 = !DILocation(line: 556, column: 15, scope: !1358)
!1592 = !DILocation(line: 558, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1464, file: !144, line: 557, column: 13)
!1594 = !DILocation(line: 561, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1593, file: !144, line: 561, column: 19)
!1596 = !DILocation(line: 561, column: 35, scope: !1595)
!1597 = !DILocation(line: 561, column: 30, scope: !1595)
!1598 = !DILocation(line: 570, column: 15, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !144, line: 570, column: 15)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !144, line: 570, column: 15)
!1601 = !DILocation(line: 570, column: 15, scope: !1600)
!1602 = !DILocation(line: 571, column: 15, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !144, line: 571, column: 15)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !144, line: 571, column: 15)
!1605 = !DILocation(line: 571, column: 15, scope: !1604)
!1606 = !DILocation(line: 572, column: 15, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !144, line: 572, column: 15)
!1608 = distinct !DILexicalBlock(scope: !1593, file: !144, line: 572, column: 15)
!1609 = !DILocation(line: 572, column: 15, scope: !1608)
!1610 = !DILocation(line: 574, column: 13, scope: !1593)
!1611 = !DILocation(line: 614, column: 17, scope: !1357)
!1612 = !DILocation(line: 0, scope: !1357)
!1613 = !DILocation(line: 617, column: 29, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1362, file: !144, line: 615, column: 15)
!1615 = !{!1616, !1616, i64 0}
!1616 = !{!"short", !1024, i64 0}
!1617 = !DILocation(line: 617, column: 27, scope: !1614)
!1618 = !DILocation(line: 618, column: 15, scope: !1614)
!1619 = !DILocation(line: 621, column: 17, scope: !1361)
!1620 = !DILocation(line: 621, column: 27, scope: !1361)
!1621 = !DILocalVariable(name: "__dest", arg: 1, scope: !1622, file: !1623, line: 59, type: !67)
!1622 = distinct !DISubprogram(name: "memset", scope: !1623, file: !1623, line: 59, type: !1624, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1626)
!1623 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!67, !67, !18, !69}
!1626 = !{!1621, !1627, !1628}
!1627 = !DILocalVariable(name: "__ch", arg: 2, scope: !1622, file: !1623, line: 59, type: !18)
!1628 = !DILocalVariable(name: "__len", arg: 3, scope: !1622, file: !1623, line: 59, type: !69)
!1629 = !DILocation(line: 0, scope: !1622, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 622, column: 17, scope: !1361)
!1631 = !DILocation(line: 71, column: 10, scope: !1622, inlinedAt: !1630)
!1632 = !DILocation(line: 626, column: 29, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1361, file: !144, line: 626, column: 21)
!1634 = !DILocation(line: 626, column: 21, scope: !1361)
!1635 = !DILocation(line: 627, column: 29, scope: !1633)
!1636 = !DILocation(line: 627, column: 19, scope: !1633)
!1637 = !DILocation(line: 629, column: 17, scope: !1361)
!1638 = !DILocation(line: 624, column: 19, scope: !1361)
!1639 = !DILocation(line: 625, column: 27, scope: !1361)
!1640 = !DILocation(line: 631, column: 21, scope: !1367)
!1641 = !DILocation(line: 632, column: 56, scope: !1367)
!1642 = !DILocation(line: 632, column: 50, scope: !1367)
!1643 = !DILocation(line: 633, column: 53, scope: !1367)
!1644 = !DILocation(line: 632, column: 36, scope: !1367)
!1645 = !DILocation(line: 634, column: 25, scope: !1367)
!1646 = !DILocation(line: 644, column: 38, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1374, file: !144, line: 642, column: 23)
!1648 = !DILocation(line: 644, column: 48, scope: !1647)
!1649 = !DILocation(line: 644, column: 25, scope: !1647)
!1650 = !DILocation(line: 644, column: 51, scope: !1647)
!1651 = !DILocation(line: 645, column: 28, scope: !1647)
!1652 = !DILocation(line: 644, column: 34, scope: !1647)
!1653 = distinct !{!1653, !1649, !1651}
!1654 = !DILocation(line: 658, column: 43, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !144, line: 658, column: 29)
!1656 = distinct !DILexicalBlock(scope: !1371, file: !144, line: 658, column: 29)
!1657 = !DILocation(line: 655, column: 29, scope: !1372)
!1658 = !DILocation(line: 0, scope: !1371)
!1659 = !DILocation(line: 659, column: 49, scope: !1655)
!1660 = !DILocation(line: 659, column: 39, scope: !1655)
!1661 = !DILocation(line: 659, column: 31, scope: !1655)
!1662 = !DILocation(line: 658, column: 53, scope: !1655)
!1663 = !DILocation(line: 658, column: 29, scope: !1656)
!1664 = distinct !{!1664, !1663, !1665}
!1665 = !DILocation(line: 667, column: 33, scope: !1656)
!1666 = !DILocation(line: 674, column: 19, scope: !1361)
!1667 = !DILocation(line: 670, column: 41, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 670, column: 29)
!1669 = !DILocation(line: 670, column: 31, scope: !1668)
!1670 = !DILocation(line: 670, column: 29, scope: !1373)
!1671 = !DILocation(line: 672, column: 27, scope: !1373)
!1672 = !DILocation(line: 675, column: 26, scope: !1361)
!1673 = !DILocation(line: 675, column: 24, scope: !1361)
!1674 = !DILocation(line: 674, column: 19, scope: !1367)
!1675 = distinct !{!1675, !1637, !1676}
!1676 = !DILocation(line: 675, column: 44, scope: !1361)
!1677 = !DILocation(line: 676, column: 15, scope: !1362)
!1678 = !DILocation(line: 0, scope: !1362)
!1679 = !DILocation(line: 678, column: 40, scope: !1357)
!1680 = !DILocation(line: 680, column: 19, scope: !1379)
!1681 = !DILocation(line: 680, column: 45, scope: !1379)
!1682 = !DILocation(line: 680, column: 23, scope: !1379)
!1683 = !DILocation(line: 684, column: 33, scope: !1378)
!1684 = !DILocation(line: 0, scope: !1378)
!1685 = !DILocation(line: 686, column: 17, scope: !1378)
!1686 = !DILocation(line: 405, column: 12, scope: !1349)
!1687 = !DILocation(line: 688, column: 43, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !144, line: 688, column: 25)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !144, line: 687, column: 19)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !144, line: 686, column: 17)
!1691 = distinct !DILexicalBlock(scope: !1378, file: !144, line: 686, column: 17)
!1692 = !DILocation(line: 690, column: 25, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !144, line: 690, column: 25)
!1694 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 689, column: 23)
!1695 = !DILocation(line: 690, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !144, line: 690, column: 25)
!1697 = !DILocation(line: 690, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !144, line: 690, column: 25)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !144, line: 690, column: 25)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !144, line: 690, column: 25)
!1701 = !DILocation(line: 690, column: 25, scope: !1699)
!1702 = !DILocation(line: 690, column: 25, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !144, line: 690, column: 25)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !144, line: 690, column: 25)
!1705 = !DILocation(line: 690, column: 25, scope: !1704)
!1706 = !DILocation(line: 690, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !144, line: 690, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1700, file: !144, line: 690, column: 25)
!1709 = !DILocation(line: 690, column: 25, scope: !1708)
!1710 = !DILocation(line: 690, column: 25, scope: !1700)
!1711 = !DILocation(line: 690, column: 25, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !144, line: 690, column: 25)
!1713 = distinct !DILexicalBlock(scope: !1693, file: !144, line: 690, column: 25)
!1714 = !DILocation(line: 690, column: 25, scope: !1713)
!1715 = !DILocation(line: 691, column: 25, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !144, line: 691, column: 25)
!1717 = distinct !DILexicalBlock(scope: !1694, file: !144, line: 691, column: 25)
!1718 = !DILocation(line: 691, column: 25, scope: !1717)
!1719 = !DILocation(line: 692, column: 25, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !144, line: 692, column: 25)
!1721 = distinct !DILexicalBlock(scope: !1694, file: !144, line: 692, column: 25)
!1722 = !DILocation(line: 692, column: 25, scope: !1721)
!1723 = !DILocation(line: 693, column: 38, scope: !1694)
!1724 = !DILocation(line: 693, column: 33, scope: !1694)
!1725 = !DILocation(line: 694, column: 23, scope: !1694)
!1726 = !DILocation(line: 695, column: 30, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 695, column: 30)
!1728 = !DILocation(line: 695, column: 30, scope: !1688)
!1729 = !DILocation(line: 697, column: 25, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !144, line: 697, column: 25)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !144, line: 697, column: 25)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !144, line: 696, column: 23)
!1733 = !DILocation(line: 697, column: 25, scope: !1731)
!1734 = !DILocation(line: 699, column: 23, scope: !1732)
!1735 = !DILocation(line: 700, column: 35, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1689, file: !144, line: 700, column: 25)
!1737 = !DILocation(line: 700, column: 30, scope: !1736)
!1738 = !DILocation(line: 700, column: 25, scope: !1689)
!1739 = !DILocation(line: 702, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !144, line: 702, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1689, file: !144, line: 702, column: 21)
!1742 = !DILocation(line: 702, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !144, line: 702, column: 21)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !144, line: 702, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !144, line: 702, column: 21)
!1746 = !DILocation(line: 702, column: 21, scope: !1744)
!1747 = !DILocation(line: 702, column: 21, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !144, line: 702, column: 21)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !144, line: 702, column: 21)
!1750 = !DILocation(line: 702, column: 21, scope: !1749)
!1751 = !DILocation(line: 702, column: 21, scope: !1745)
!1752 = !DILocation(line: 0, scope: !1689)
!1753 = !DILocation(line: 703, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !144, line: 703, column: 21)
!1755 = distinct !DILexicalBlock(scope: !1689, file: !144, line: 703, column: 21)
!1756 = !DILocation(line: 703, column: 21, scope: !1755)
!1757 = !DILocation(line: 704, column: 25, scope: !1689)
!1758 = !DILocation(line: 686, column: 17, scope: !1690)
!1759 = distinct !{!1759, !1760, !1761}
!1760 = !DILocation(line: 686, column: 17, scope: !1691)
!1761 = !DILocation(line: 705, column: 19, scope: !1691)
!1762 = !DILocation(line: 416, column: 30, scope: !1459)
!1763 = !DILocation(line: 712, column: 34, scope: !1401)
!1764 = !DILocation(line: 715, column: 35, scope: !1401)
!1765 = !DILocation(line: 715, column: 17, scope: !1401)
!1766 = !DILocation(line: 715, column: 47, scope: !1401)
!1767 = !DILocation(line: 715, column: 65, scope: !1401)
!1768 = !DILocation(line: 716, column: 15, scope: !1401)
!1769 = !DILocation(line: 716, column: 11, scope: !1401)
!1770 = !DILocation(line: 712, column: 11, scope: !1349)
!1771 = !DILocation(line: 400, column: 10, scope: !1351)
!1772 = !DILocation(line: 719, column: 5, scope: !1349)
!1773 = !DILocation(line: 720, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 720, column: 7)
!1775 = !DILocation(line: 720, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1774, file: !144, line: 720, column: 7)
!1777 = !DILocation(line: 720, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !144, line: 720, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 720, column: 7)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !144, line: 720, column: 7)
!1781 = !DILocation(line: 720, column: 7, scope: !1779)
!1782 = !DILocation(line: 720, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !144, line: 720, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 720, column: 7)
!1785 = !DILocation(line: 720, column: 7, scope: !1784)
!1786 = !DILocation(line: 720, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !144, line: 720, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 720, column: 7)
!1789 = !DILocation(line: 720, column: 7, scope: !1788)
!1790 = !DILocation(line: 720, column: 7, scope: !1780)
!1791 = !DILocation(line: 720, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !144, line: 720, column: 7)
!1793 = distinct !DILexicalBlock(scope: !1774, file: !144, line: 720, column: 7)
!1794 = !DILocation(line: 720, column: 7, scope: !1793)
!1795 = !DILocation(line: 722, column: 5, scope: !1349)
!1796 = !DILocation(line: 723, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !144, line: 723, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 723, column: 7)
!1799 = !DILocation(line: 424, column: 9, scope: !1349)
!1800 = !DILocation(line: 723, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 723, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !144, line: 723, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !144, line: 723, column: 7)
!1804 = !DILocation(line: 723, column: 7, scope: !1802)
!1805 = !DILocation(line: 723, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !144, line: 723, column: 7)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !144, line: 723, column: 7)
!1808 = !DILocation(line: 723, column: 7, scope: !1807)
!1809 = !DILocation(line: 723, column: 7, scope: !1803)
!1810 = !DILocation(line: 724, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !144, line: 724, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 724, column: 7)
!1813 = !DILocation(line: 724, column: 7, scope: !1812)
!1814 = !DILocation(line: 726, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 726, column: 11)
!1816 = !DILocation(line: 726, column: 11, scope: !1349)
!1817 = !DILocation(line: 728, column: 5, scope: !1350)
!1818 = !DILocation(line: 400, column: 75, scope: !1350)
!1819 = !DILocation(line: 400, column: 3, scope: !1350)
!1820 = distinct !{!1820, !1477, !1821}
!1821 = !DILocation(line: 728, column: 5, scope: !1351)
!1822 = !DILocation(line: 730, column: 11, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 730, column: 7)
!1824 = !DILocation(line: 730, column: 16, scope: !1823)
!1825 = !DILocation(line: 738, column: 51, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 738, column: 7)
!1827 = !DILocation(line: 739, column: 10, scope: !1826)
!1828 = !DILocation(line: 741, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !144, line: 741, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !144, line: 740, column: 5)
!1831 = !DILocation(line: 741, column: 11, scope: !1830)
!1832 = !DILocation(line: 742, column: 16, scope: !1829)
!1833 = !DILocation(line: 742, column: 9, scope: !1829)
!1834 = !DILocation(line: 746, column: 18, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !144, line: 746, column: 16)
!1836 = !DILocation(line: 746, column: 32, scope: !1835)
!1837 = !DILocation(line: 746, column: 29, scope: !1835)
!1838 = !DILocation(line: 755, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 755, column: 7)
!1840 = !DILocation(line: 755, column: 20, scope: !1839)
!1841 = !DILocation(line: 756, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !144, line: 756, column: 5)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !144, line: 756, column: 5)
!1844 = !DILocation(line: 756, column: 5, scope: !1843)
!1845 = !DILocation(line: 757, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !144, line: 757, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !144, line: 757, column: 7)
!1848 = !DILocation(line: 757, column: 7, scope: !1847)
!1849 = !DILocation(line: 756, column: 39, scope: !1842)
!1850 = distinct !{!1850, !1844, !1851}
!1851 = !DILocation(line: 757, column: 7, scope: !1843)
!1852 = !DILocation(line: 759, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 759, column: 7)
!1854 = !DILocation(line: 759, column: 7, scope: !1322)
!1855 = !DILocation(line: 760, column: 5, scope: !1853)
!1856 = !DILocation(line: 760, column: 17, scope: !1853)
!1857 = !DILocation(line: 763, column: 2, scope: !1322)
!1858 = !DILocation(line: 766, column: 51, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1322, file: !144, line: 766, column: 7)
!1860 = !DILocation(line: 766, column: 21, scope: !1859)
!1861 = !DILocation(line: 770, column: 42, scope: !1322)
!1862 = !DILocation(line: 768, column: 10, scope: !1322)
!1863 = !DILocation(line: 768, column: 3, scope: !1322)
!1864 = !DILocation(line: 772, column: 1, scope: !1322)
!1865 = distinct !DISubprogram(name: "gettext_quote", scope: !144, file: !144, line: 207, type: !1866, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!6, !6, !146}
!1868 = !{!1869, !1870, !1871, !1872}
!1869 = !DILocalVariable(name: "msgid", arg: 1, scope: !1865, file: !144, line: 207, type: !6)
!1870 = !DILocalVariable(name: "s", arg: 2, scope: !1865, file: !144, line: 207, type: !146)
!1871 = !DILocalVariable(name: "translation", scope: !1865, file: !144, line: 209, type: !6)
!1872 = !DILocalVariable(name: "locale_code", scope: !1865, file: !144, line: 210, type: !6)
!1873 = !DILocation(line: 0, scope: !1865)
!1874 = !DILocation(line: 209, column: 29, scope: !1865)
!1875 = !DILocation(line: 212, column: 19, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1865, file: !144, line: 212, column: 7)
!1877 = !DILocation(line: 212, column: 7, scope: !1865)
!1878 = !DILocation(line: 233, column: 17, scope: !1865)
!1879 = !DILocalVariable(name: "s1", arg: 1, scope: !1880, file: !1881, line: 160, type: !6)
!1880 = distinct !DISubprogram(name: "strcaseeq0", scope: !1881, file: !1881, line: 160, type: !1882, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1884)
!1881 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1884 = !{!1879, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1885 = !DILocalVariable(name: "s2", arg: 2, scope: !1880, file: !1881, line: 160, type: !6)
!1886 = !DILocalVariable(name: "s20", arg: 3, scope: !1880, file: !1881, line: 160, type: !8)
!1887 = !DILocalVariable(name: "s21", arg: 4, scope: !1880, file: !1881, line: 160, type: !8)
!1888 = !DILocalVariable(name: "s22", arg: 5, scope: !1880, file: !1881, line: 160, type: !8)
!1889 = !DILocalVariable(name: "s23", arg: 6, scope: !1880, file: !1881, line: 160, type: !8)
!1890 = !DILocalVariable(name: "s24", arg: 7, scope: !1880, file: !1881, line: 160, type: !8)
!1891 = !DILocalVariable(name: "s25", arg: 8, scope: !1880, file: !1881, line: 160, type: !8)
!1892 = !DILocalVariable(name: "s26", arg: 9, scope: !1880, file: !1881, line: 160, type: !8)
!1893 = !DILocalVariable(name: "s27", arg: 10, scope: !1880, file: !1881, line: 160, type: !8)
!1894 = !DILocalVariable(name: "s28", arg: 11, scope: !1880, file: !1881, line: 160, type: !8)
!1895 = !DILocation(line: 0, scope: !1880, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 234, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1865, file: !144, line: 234, column: 7)
!1898 = !DILocation(line: 162, column: 7, scope: !1899, inlinedAt: !1896)
!1899 = distinct !DILexicalBlock(scope: !1880, file: !1881, line: 162, column: 7)
!1900 = !DILocalVariable(name: "s1", arg: 1, scope: !1901, file: !1881, line: 146, type: !6)
!1901 = distinct !DISubprogram(name: "strcaseeq1", scope: !1881, file: !1881, line: 146, type: !1902, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1904 = !{!1900, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1905 = !DILocalVariable(name: "s2", arg: 2, scope: !1901, file: !1881, line: 146, type: !6)
!1906 = !DILocalVariable(name: "s21", arg: 3, scope: !1901, file: !1881, line: 146, type: !8)
!1907 = !DILocalVariable(name: "s22", arg: 4, scope: !1901, file: !1881, line: 146, type: !8)
!1908 = !DILocalVariable(name: "s23", arg: 5, scope: !1901, file: !1881, line: 146, type: !8)
!1909 = !DILocalVariable(name: "s24", arg: 6, scope: !1901, file: !1881, line: 146, type: !8)
!1910 = !DILocalVariable(name: "s25", arg: 7, scope: !1901, file: !1881, line: 146, type: !8)
!1911 = !DILocalVariable(name: "s26", arg: 8, scope: !1901, file: !1881, line: 146, type: !8)
!1912 = !DILocalVariable(name: "s27", arg: 9, scope: !1901, file: !1881, line: 146, type: !8)
!1913 = !DILocalVariable(name: "s28", arg: 10, scope: !1901, file: !1881, line: 146, type: !8)
!1914 = !DILocation(line: 0, scope: !1901, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 167, column: 16, scope: !1916, inlinedAt: !1896)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1881, line: 164, column: 11)
!1917 = distinct !DILexicalBlock(scope: !1899, file: !1881, line: 163, column: 5)
!1918 = !DILocation(line: 148, column: 7, scope: !1919, inlinedAt: !1915)
!1919 = distinct !DILexicalBlock(scope: !1901, file: !1881, line: 148, column: 7)
!1920 = !DILocalVariable(name: "s1", arg: 1, scope: !1921, file: !1881, line: 132, type: !6)
!1921 = distinct !DISubprogram(name: "strcaseeq2", scope: !1881, file: !1881, line: 132, type: !1922, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1924 = !{!1920, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1925 = !DILocalVariable(name: "s2", arg: 2, scope: !1921, file: !1881, line: 132, type: !6)
!1926 = !DILocalVariable(name: "s22", arg: 3, scope: !1921, file: !1881, line: 132, type: !8)
!1927 = !DILocalVariable(name: "s23", arg: 4, scope: !1921, file: !1881, line: 132, type: !8)
!1928 = !DILocalVariable(name: "s24", arg: 5, scope: !1921, file: !1881, line: 132, type: !8)
!1929 = !DILocalVariable(name: "s25", arg: 6, scope: !1921, file: !1881, line: 132, type: !8)
!1930 = !DILocalVariable(name: "s26", arg: 7, scope: !1921, file: !1881, line: 132, type: !8)
!1931 = !DILocalVariable(name: "s27", arg: 8, scope: !1921, file: !1881, line: 132, type: !8)
!1932 = !DILocalVariable(name: "s28", arg: 9, scope: !1921, file: !1881, line: 132, type: !8)
!1933 = !DILocation(line: 0, scope: !1921, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 153, column: 16, scope: !1935, inlinedAt: !1915)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !1881, line: 150, column: 11)
!1936 = distinct !DILexicalBlock(scope: !1919, file: !1881, line: 149, column: 5)
!1937 = !DILocation(line: 134, column: 7, scope: !1938, inlinedAt: !1934)
!1938 = distinct !DILexicalBlock(scope: !1921, file: !1881, line: 134, column: 7)
!1939 = !DILocalVariable(name: "s1", arg: 1, scope: !1940, file: !1881, line: 118, type: !6)
!1940 = distinct !DISubprogram(name: "strcaseeq3", scope: !1881, file: !1881, line: 118, type: !1941, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!1943 = !{!1939, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1944 = !DILocalVariable(name: "s2", arg: 2, scope: !1940, file: !1881, line: 118, type: !6)
!1945 = !DILocalVariable(name: "s23", arg: 3, scope: !1940, file: !1881, line: 118, type: !8)
!1946 = !DILocalVariable(name: "s24", arg: 4, scope: !1940, file: !1881, line: 118, type: !8)
!1947 = !DILocalVariable(name: "s25", arg: 5, scope: !1940, file: !1881, line: 118, type: !8)
!1948 = !DILocalVariable(name: "s26", arg: 6, scope: !1940, file: !1881, line: 118, type: !8)
!1949 = !DILocalVariable(name: "s27", arg: 7, scope: !1940, file: !1881, line: 118, type: !8)
!1950 = !DILocalVariable(name: "s28", arg: 8, scope: !1940, file: !1881, line: 118, type: !8)
!1951 = !DILocation(line: 0, scope: !1940, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 139, column: 16, scope: !1953, inlinedAt: !1934)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1881, line: 136, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1938, file: !1881, line: 135, column: 5)
!1955 = !DILocation(line: 120, column: 7, scope: !1956, inlinedAt: !1952)
!1956 = distinct !DILexicalBlock(scope: !1940, file: !1881, line: 120, column: 7)
!1957 = !DILocation(line: 120, column: 7, scope: !1940, inlinedAt: !1952)
!1958 = !DILocalVariable(name: "s1", arg: 1, scope: !1959, file: !1881, line: 104, type: !6)
!1959 = distinct !DISubprogram(name: "strcaseeq4", scope: !1881, file: !1881, line: 104, type: !1960, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!1962 = !{!1958, !1963, !1964, !1965, !1966, !1967, !1968}
!1963 = !DILocalVariable(name: "s2", arg: 2, scope: !1959, file: !1881, line: 104, type: !6)
!1964 = !DILocalVariable(name: "s24", arg: 3, scope: !1959, file: !1881, line: 104, type: !8)
!1965 = !DILocalVariable(name: "s25", arg: 4, scope: !1959, file: !1881, line: 104, type: !8)
!1966 = !DILocalVariable(name: "s26", arg: 5, scope: !1959, file: !1881, line: 104, type: !8)
!1967 = !DILocalVariable(name: "s27", arg: 6, scope: !1959, file: !1881, line: 104, type: !8)
!1968 = !DILocalVariable(name: "s28", arg: 7, scope: !1959, file: !1881, line: 104, type: !8)
!1969 = !DILocation(line: 0, scope: !1959, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 125, column: 16, scope: !1971, inlinedAt: !1952)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1881, line: 122, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1956, file: !1881, line: 121, column: 5)
!1973 = !DILocation(line: 106, column: 7, scope: !1974, inlinedAt: !1970)
!1974 = distinct !DILexicalBlock(scope: !1959, file: !1881, line: 106, column: 7)
!1975 = !DILocation(line: 106, column: 7, scope: !1959, inlinedAt: !1970)
!1976 = !DILocalVariable(name: "s1", arg: 1, scope: !1977, file: !1881, line: 90, type: !6)
!1977 = distinct !DISubprogram(name: "strcaseeq5", scope: !1881, file: !1881, line: 90, type: !1978, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!18, !6, !6, !8, !8, !8, !8}
!1980 = !{!1976, !1981, !1982, !1983, !1984, !1985}
!1981 = !DILocalVariable(name: "s2", arg: 2, scope: !1977, file: !1881, line: 90, type: !6)
!1982 = !DILocalVariable(name: "s25", arg: 3, scope: !1977, file: !1881, line: 90, type: !8)
!1983 = !DILocalVariable(name: "s26", arg: 4, scope: !1977, file: !1881, line: 90, type: !8)
!1984 = !DILocalVariable(name: "s27", arg: 5, scope: !1977, file: !1881, line: 90, type: !8)
!1985 = !DILocalVariable(name: "s28", arg: 6, scope: !1977, file: !1881, line: 90, type: !8)
!1986 = !DILocation(line: 0, scope: !1977, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 111, column: 16, scope: !1988, inlinedAt: !1970)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1881, line: 108, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !1881, line: 107, column: 5)
!1990 = !DILocation(line: 92, column: 7, scope: !1991, inlinedAt: !1987)
!1991 = distinct !DILexicalBlock(scope: !1977, file: !1881, line: 92, column: 7)
!1992 = !DILocation(line: 92, column: 7, scope: !1977, inlinedAt: !1987)
!1993 = !DILocation(line: 235, column: 12, scope: !1897)
!1994 = !DILocation(line: 235, column: 21, scope: !1897)
!1995 = !DILocation(line: 235, column: 5, scope: !1897)
!1996 = !DILocation(line: 0, scope: !1901, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 167, column: 16, scope: !1916, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 236, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1865, file: !144, line: 236, column: 7)
!2000 = !DILocation(line: 148, column: 7, scope: !1919, inlinedAt: !1997)
!2001 = !DILocation(line: 0, scope: !1921, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 153, column: 16, scope: !1935, inlinedAt: !1997)
!2003 = !DILocation(line: 134, column: 7, scope: !1938, inlinedAt: !2002)
!2004 = !DILocation(line: 134, column: 7, scope: !1921, inlinedAt: !2002)
!2005 = !DILocation(line: 0, scope: !1940, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 139, column: 16, scope: !1953, inlinedAt: !2002)
!2007 = !DILocation(line: 120, column: 7, scope: !1956, inlinedAt: !2006)
!2008 = !DILocation(line: 120, column: 7, scope: !1940, inlinedAt: !2006)
!2009 = !DILocation(line: 0, scope: !1959, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 125, column: 16, scope: !1971, inlinedAt: !2006)
!2011 = !DILocation(line: 106, column: 7, scope: !1974, inlinedAt: !2010)
!2012 = !DILocation(line: 106, column: 7, scope: !1959, inlinedAt: !2010)
!2013 = !DILocation(line: 0, scope: !1977, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 111, column: 16, scope: !1988, inlinedAt: !2010)
!2015 = !DILocation(line: 92, column: 7, scope: !1991, inlinedAt: !2014)
!2016 = !DILocation(line: 92, column: 7, scope: !1977, inlinedAt: !2014)
!2017 = !DILocalVariable(name: "s1", arg: 1, scope: !2018, file: !1881, line: 76, type: !6)
!2018 = distinct !DISubprogram(name: "strcaseeq6", scope: !1881, file: !1881, line: 76, type: !2019, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!18, !6, !6, !8, !8, !8}
!2021 = !{!2017, !2022, !2023, !2024, !2025}
!2022 = !DILocalVariable(name: "s2", arg: 2, scope: !2018, file: !1881, line: 76, type: !6)
!2023 = !DILocalVariable(name: "s26", arg: 3, scope: !2018, file: !1881, line: 76, type: !8)
!2024 = !DILocalVariable(name: "s27", arg: 4, scope: !2018, file: !1881, line: 76, type: !8)
!2025 = !DILocalVariable(name: "s28", arg: 5, scope: !2018, file: !1881, line: 76, type: !8)
!2026 = !DILocation(line: 0, scope: !2018, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 97, column: 16, scope: !2028, inlinedAt: !2014)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1881, line: 94, column: 11)
!2029 = distinct !DILexicalBlock(scope: !1991, file: !1881, line: 93, column: 5)
!2030 = !DILocation(line: 78, column: 7, scope: !2031, inlinedAt: !2027)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !1881, line: 78, column: 7)
!2032 = !DILocation(line: 78, column: 7, scope: !2018, inlinedAt: !2027)
!2033 = !DILocalVariable(name: "s1", arg: 1, scope: !2034, file: !1881, line: 62, type: !6)
!2034 = distinct !DISubprogram(name: "strcaseeq7", scope: !1881, file: !1881, line: 62, type: !2035, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!18, !6, !6, !8, !8}
!2037 = !{!2033, !2038, !2039, !2040}
!2038 = !DILocalVariable(name: "s2", arg: 2, scope: !2034, file: !1881, line: 62, type: !6)
!2039 = !DILocalVariable(name: "s27", arg: 3, scope: !2034, file: !1881, line: 62, type: !8)
!2040 = !DILocalVariable(name: "s28", arg: 4, scope: !2034, file: !1881, line: 62, type: !8)
!2041 = !DILocation(line: 0, scope: !2034, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 83, column: 16, scope: !2043, inlinedAt: !2027)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !1881, line: 80, column: 11)
!2044 = distinct !DILexicalBlock(scope: !2031, file: !1881, line: 79, column: 5)
!2045 = !DILocation(line: 64, column: 7, scope: !2046, inlinedAt: !2042)
!2046 = distinct !DILexicalBlock(scope: !2034, file: !1881, line: 64, column: 7)
!2047 = !DILocation(line: 236, column: 7, scope: !1865)
!2048 = !DILocation(line: 237, column: 12, scope: !1999)
!2049 = !DILocation(line: 237, column: 21, scope: !1999)
!2050 = !DILocation(line: 237, column: 5, scope: !1999)
!2051 = !DILocation(line: 239, column: 13, scope: !1865)
!2052 = !DILocation(line: 239, column: 11, scope: !1865)
!2053 = !DILocation(line: 239, column: 3, scope: !1865)
!2054 = !DILocation(line: 240, column: 1, scope: !1865)
!2055 = distinct !DISubprogram(name: "quotearg_alloc", scope: !144, file: !144, line: 799, type: !2056, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!25, !6, !69, !191}
!2058 = !{!2059, !2060, !2061}
!2059 = !DILocalVariable(name: "arg", arg: 1, scope: !2055, file: !144, line: 799, type: !6)
!2060 = !DILocalVariable(name: "argsize", arg: 2, scope: !2055, file: !144, line: 799, type: !69)
!2061 = !DILocalVariable(name: "o", arg: 3, scope: !2055, file: !144, line: 800, type: !191)
!2062 = !DILocation(line: 0, scope: !2055)
!2063 = !DILocalVariable(name: "arg", arg: 1, scope: !2064, file: !144, line: 812, type: !6)
!2064 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !144, file: !144, line: 812, type: !2065, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!25, !6, !69, !401, !191}
!2067 = !{!2063, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075}
!2068 = !DILocalVariable(name: "argsize", arg: 2, scope: !2064, file: !144, line: 812, type: !69)
!2069 = !DILocalVariable(name: "size", arg: 3, scope: !2064, file: !144, line: 812, type: !401)
!2070 = !DILocalVariable(name: "o", arg: 4, scope: !2064, file: !144, line: 813, type: !191)
!2071 = !DILocalVariable(name: "p", scope: !2064, file: !144, line: 815, type: !191)
!2072 = !DILocalVariable(name: "e", scope: !2064, file: !144, line: 816, type: !18)
!2073 = !DILocalVariable(name: "flags", scope: !2064, file: !144, line: 818, type: !18)
!2074 = !DILocalVariable(name: "bufsize", scope: !2064, file: !144, line: 819, type: !69)
!2075 = !DILocalVariable(name: "buf", scope: !2064, file: !144, line: 823, type: !25)
!2076 = !DILocation(line: 0, scope: !2064, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 802, column: 10, scope: !2055)
!2078 = !DILocation(line: 815, column: 37, scope: !2064, inlinedAt: !2077)
!2079 = !DILocation(line: 816, column: 11, scope: !2064, inlinedAt: !2077)
!2080 = !DILocation(line: 818, column: 18, scope: !2064, inlinedAt: !2077)
!2081 = !DILocation(line: 818, column: 24, scope: !2064, inlinedAt: !2077)
!2082 = !DILocation(line: 819, column: 69, scope: !2064, inlinedAt: !2077)
!2083 = !DILocation(line: 820, column: 53, scope: !2064, inlinedAt: !2077)
!2084 = !DILocation(line: 821, column: 49, scope: !2064, inlinedAt: !2077)
!2085 = !DILocation(line: 822, column: 49, scope: !2064, inlinedAt: !2077)
!2086 = !DILocation(line: 819, column: 20, scope: !2064, inlinedAt: !2077)
!2087 = !DILocation(line: 822, column: 62, scope: !2064, inlinedAt: !2077)
!2088 = !DILocalVariable(name: "n", arg: 1, scope: !2089, file: !182, line: 216, type: !69)
!2089 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2090, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!25, !69}
!2092 = !{!2088}
!2093 = !DILocation(line: 0, scope: !2089, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 823, column: 15, scope: !2064, inlinedAt: !2077)
!2095 = !DILocation(line: 218, column: 10, scope: !2089, inlinedAt: !2094)
!2096 = !DILocation(line: 824, column: 60, scope: !2064, inlinedAt: !2077)
!2097 = !DILocation(line: 826, column: 32, scope: !2064, inlinedAt: !2077)
!2098 = !DILocation(line: 826, column: 47, scope: !2064, inlinedAt: !2077)
!2099 = !DILocation(line: 824, column: 3, scope: !2064, inlinedAt: !2077)
!2100 = !DILocation(line: 827, column: 9, scope: !2064, inlinedAt: !2077)
!2101 = !DILocation(line: 802, column: 3, scope: !2055)
!2102 = !DILocation(line: 0, scope: !2064)
!2103 = !DILocation(line: 815, column: 37, scope: !2064)
!2104 = !DILocation(line: 816, column: 11, scope: !2064)
!2105 = !DILocation(line: 818, column: 18, scope: !2064)
!2106 = !DILocation(line: 818, column: 27, scope: !2064)
!2107 = !DILocation(line: 818, column: 24, scope: !2064)
!2108 = !DILocation(line: 819, column: 69, scope: !2064)
!2109 = !DILocation(line: 820, column: 53, scope: !2064)
!2110 = !DILocation(line: 821, column: 49, scope: !2064)
!2111 = !DILocation(line: 822, column: 49, scope: !2064)
!2112 = !DILocation(line: 819, column: 20, scope: !2064)
!2113 = !DILocation(line: 822, column: 62, scope: !2064)
!2114 = !DILocation(line: 0, scope: !2089, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 823, column: 15, scope: !2064)
!2116 = !DILocation(line: 218, column: 10, scope: !2089, inlinedAt: !2115)
!2117 = !DILocation(line: 824, column: 60, scope: !2064)
!2118 = !DILocation(line: 826, column: 32, scope: !2064)
!2119 = !DILocation(line: 826, column: 47, scope: !2064)
!2120 = !DILocation(line: 824, column: 3, scope: !2064)
!2121 = !DILocation(line: 827, column: 9, scope: !2064)
!2122 = !DILocation(line: 828, column: 7, scope: !2064)
!2123 = !DILocation(line: 829, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2064, file: !144, line: 828, column: 7)
!2125 = !{!2126, !2126, i64 0}
!2126 = !{!"long", !1024, i64 0}
!2127 = !DILocation(line: 829, column: 5, scope: !2124)
!2128 = !DILocation(line: 830, column: 3, scope: !2064)
!2129 = distinct !DISubprogram(name: "quotearg_free", scope: !144, file: !144, line: 848, type: !250, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2130)
!2130 = !{!2131, !2132}
!2131 = !DILocalVariable(name: "sv", scope: !2129, file: !144, line: 850, type: !273)
!2132 = !DILocalVariable(name: "i", scope: !2129, file: !144, line: 851, type: !18)
!2133 = !DILocation(line: 850, column: 24, scope: !2129)
!2134 = !DILocation(line: 0, scope: !2129)
!2135 = !DILocation(line: 852, column: 19, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !144, line: 852, column: 3)
!2137 = distinct !DILexicalBlock(scope: !2129, file: !144, line: 852, column: 3)
!2138 = !DILocation(line: 852, column: 17, scope: !2136)
!2139 = !DILocation(line: 852, column: 3, scope: !2137)
!2140 = !DILocation(line: 853, column: 17, scope: !2136)
!2141 = !{!2142, !1023, i64 8}
!2142 = !{!"slotvec", !2126, i64 0, !1023, i64 8}
!2143 = !DILocation(line: 853, column: 5, scope: !2136)
!2144 = !DILocation(line: 852, column: 28, scope: !2136)
!2145 = distinct !{!2145, !2139, !2146}
!2146 = !DILocation(line: 853, column: 20, scope: !2137)
!2147 = !DILocation(line: 854, column: 13, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2129, file: !144, line: 854, column: 7)
!2149 = !DILocation(line: 854, column: 17, scope: !2148)
!2150 = !DILocation(line: 854, column: 7, scope: !2129)
!2151 = !DILocation(line: 856, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !144, line: 855, column: 5)
!2153 = !DILocation(line: 857, column: 21, scope: !2152)
!2154 = !{!2142, !2126, i64 0}
!2155 = !DILocation(line: 858, column: 20, scope: !2152)
!2156 = !DILocation(line: 859, column: 5, scope: !2152)
!2157 = !DILocation(line: 860, column: 10, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2129, file: !144, line: 860, column: 7)
!2159 = !DILocation(line: 860, column: 7, scope: !2129)
!2160 = !DILocation(line: 862, column: 13, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !144, line: 861, column: 5)
!2162 = !DILocation(line: 862, column: 7, scope: !2161)
!2163 = !DILocation(line: 863, column: 15, scope: !2161)
!2164 = !DILocation(line: 864, column: 5, scope: !2161)
!2165 = !DILocation(line: 865, column: 10, scope: !2129)
!2166 = !DILocation(line: 866, column: 1, scope: !2129)
!2167 = distinct !DISubprogram(name: "quotearg_n", scope: !144, file: !144, line: 931, type: !338, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2168)
!2168 = !{!2169, !2170}
!2169 = !DILocalVariable(name: "n", arg: 1, scope: !2167, file: !144, line: 931, type: !18)
!2170 = !DILocalVariable(name: "arg", arg: 2, scope: !2167, file: !144, line: 931, type: !6)
!2171 = !DILocation(line: 0, scope: !2167)
!2172 = !DILocation(line: 933, column: 10, scope: !2167)
!2173 = !DILocation(line: 933, column: 3, scope: !2167)
!2174 = distinct !DISubprogram(name: "quotearg_n_options", scope: !144, file: !144, line: 877, type: !2175, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!25, !18, !6, !69, !191}
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2187, !2188, !2190, !2191, !2192}
!2178 = !DILocalVariable(name: "n", arg: 1, scope: !2174, file: !144, line: 877, type: !18)
!2179 = !DILocalVariable(name: "arg", arg: 2, scope: !2174, file: !144, line: 877, type: !6)
!2180 = !DILocalVariable(name: "argsize", arg: 3, scope: !2174, file: !144, line: 877, type: !69)
!2181 = !DILocalVariable(name: "options", arg: 4, scope: !2174, file: !144, line: 878, type: !191)
!2182 = !DILocalVariable(name: "e", scope: !2174, file: !144, line: 880, type: !18)
!2183 = !DILocalVariable(name: "sv", scope: !2174, file: !144, line: 882, type: !273)
!2184 = !DILocalVariable(name: "preallocated", scope: !2185, file: !144, line: 889, type: !92)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !144, line: 888, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2174, file: !144, line: 887, column: 7)
!2187 = !DILocalVariable(name: "nmax", scope: !2185, file: !144, line: 890, type: !18)
!2188 = !DILocalVariable(name: "size", scope: !2189, file: !144, line: 903, type: !69)
!2189 = distinct !DILexicalBlock(scope: !2174, file: !144, line: 902, column: 3)
!2190 = !DILocalVariable(name: "val", scope: !2189, file: !144, line: 904, type: !25)
!2191 = !DILocalVariable(name: "flags", scope: !2189, file: !144, line: 906, type: !18)
!2192 = !DILocalVariable(name: "qsize", scope: !2189, file: !144, line: 907, type: !69)
!2193 = !DILocation(line: 0, scope: !2174)
!2194 = !DILocation(line: 880, column: 11, scope: !2174)
!2195 = !DILocation(line: 882, column: 24, scope: !2174)
!2196 = !DILocation(line: 884, column: 9, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2174, file: !144, line: 884, column: 7)
!2198 = !DILocation(line: 884, column: 7, scope: !2174)
!2199 = !DILocation(line: 885, column: 5, scope: !2197)
!2200 = !DILocation(line: 887, column: 7, scope: !2186)
!2201 = !DILocation(line: 887, column: 14, scope: !2186)
!2202 = !DILocation(line: 887, column: 7, scope: !2174)
!2203 = !DILocation(line: 889, column: 31, scope: !2185)
!2204 = !DILocation(line: 0, scope: !2185)
!2205 = !DILocation(line: 892, column: 16, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2185, file: !144, line: 892, column: 11)
!2207 = !DILocation(line: 892, column: 11, scope: !2185)
!2208 = !DILocation(line: 893, column: 9, scope: !2206)
!2209 = !DILocation(line: 895, column: 32, scope: !2185)
!2210 = !DILocation(line: 895, column: 61, scope: !2185)
!2211 = !DILocation(line: 895, column: 58, scope: !2185)
!2212 = !DILocation(line: 895, column: 66, scope: !2185)
!2213 = !DILocation(line: 895, column: 22, scope: !2185)
!2214 = !DILocation(line: 895, column: 15, scope: !2185)
!2215 = !DILocation(line: 896, column: 11, scope: !2185)
!2216 = !DILocation(line: 897, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2185, file: !144, line: 896, column: 11)
!2218 = !{i64 0, i64 8, !2125, i64 8, i64 8, !1022}
!2219 = !DILocation(line: 897, column: 9, scope: !2217)
!2220 = !DILocation(line: 898, column: 20, scope: !2185)
!2221 = !DILocation(line: 898, column: 18, scope: !2185)
!2222 = !DILocation(line: 898, column: 15, scope: !2185)
!2223 = !DILocation(line: 898, column: 38, scope: !2185)
!2224 = !DILocation(line: 898, column: 31, scope: !2185)
!2225 = !DILocation(line: 898, column: 48, scope: !2185)
!2226 = !DILocation(line: 0, scope: !1622, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 898, column: 7, scope: !2185)
!2228 = !DILocation(line: 71, column: 10, scope: !1622, inlinedAt: !2227)
!2229 = !DILocation(line: 899, column: 14, scope: !2185)
!2230 = !DILocation(line: 900, column: 5, scope: !2185)
!2231 = !DILocation(line: 903, column: 19, scope: !2189)
!2232 = !DILocation(line: 903, column: 25, scope: !2189)
!2233 = !DILocation(line: 0, scope: !2189)
!2234 = !DILocation(line: 904, column: 23, scope: !2189)
!2235 = !DILocation(line: 906, column: 26, scope: !2189)
!2236 = !DILocation(line: 906, column: 32, scope: !2189)
!2237 = !DILocation(line: 908, column: 55, scope: !2189)
!2238 = !DILocation(line: 909, column: 46, scope: !2189)
!2239 = !DILocation(line: 910, column: 55, scope: !2189)
!2240 = !DILocation(line: 911, column: 55, scope: !2189)
!2241 = !DILocation(line: 907, column: 20, scope: !2189)
!2242 = !DILocation(line: 913, column: 14, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2189, file: !144, line: 913, column: 9)
!2244 = !DILocation(line: 913, column: 9, scope: !2189)
!2245 = !DILocation(line: 915, column: 35, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !144, line: 914, column: 7)
!2247 = !DILocation(line: 915, column: 20, scope: !2246)
!2248 = !DILocation(line: 916, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !144, line: 916, column: 13)
!2250 = !DILocation(line: 916, column: 13, scope: !2246)
!2251 = !DILocation(line: 917, column: 11, scope: !2249)
!2252 = !DILocation(line: 0, scope: !2089, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 918, column: 27, scope: !2246)
!2254 = !DILocation(line: 218, column: 10, scope: !2089, inlinedAt: !2253)
!2255 = !DILocation(line: 918, column: 19, scope: !2246)
!2256 = !DILocation(line: 919, column: 69, scope: !2246)
!2257 = !DILocation(line: 921, column: 44, scope: !2246)
!2258 = !DILocation(line: 922, column: 44, scope: !2246)
!2259 = !DILocation(line: 919, column: 9, scope: !2246)
!2260 = !DILocation(line: 923, column: 7, scope: !2246)
!2261 = !DILocation(line: 925, column: 11, scope: !2189)
!2262 = !DILocation(line: 926, column: 5, scope: !2189)
!2263 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !144, file: !144, line: 937, type: !2264, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!25, !18, !6, !69}
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "n", arg: 1, scope: !2263, file: !144, line: 937, type: !18)
!2268 = !DILocalVariable(name: "arg", arg: 2, scope: !2263, file: !144, line: 937, type: !6)
!2269 = !DILocalVariable(name: "argsize", arg: 3, scope: !2263, file: !144, line: 937, type: !69)
!2270 = !DILocation(line: 0, scope: !2263)
!2271 = !DILocation(line: 939, column: 10, scope: !2263)
!2272 = !DILocation(line: 939, column: 3, scope: !2263)
!2273 = distinct !DISubprogram(name: "quotearg", scope: !144, file: !144, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2274)
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "arg", arg: 1, scope: !2273, file: !144, line: 943, type: !6)
!2276 = !DILocation(line: 0, scope: !2273)
!2277 = !DILocation(line: 0, scope: !2167, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 945, column: 10, scope: !2273)
!2279 = !DILocation(line: 933, column: 10, scope: !2167, inlinedAt: !2278)
!2280 = !DILocation(line: 945, column: 3, scope: !2273)
!2281 = distinct !DISubprogram(name: "quotearg_mem", scope: !144, file: !144, line: 949, type: !2282, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!25, !6, !69}
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "arg", arg: 1, scope: !2281, file: !144, line: 949, type: !6)
!2286 = !DILocalVariable(name: "argsize", arg: 2, scope: !2281, file: !144, line: 949, type: !69)
!2287 = !DILocation(line: 0, scope: !2281)
!2288 = !DILocation(line: 0, scope: !2263, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 951, column: 10, scope: !2281)
!2290 = !DILocation(line: 939, column: 10, scope: !2263, inlinedAt: !2289)
!2291 = !DILocation(line: 951, column: 3, scope: !2281)
!2292 = distinct !DISubprogram(name: "quotearg_n_style", scope: !144, file: !144, line: 955, type: !2293, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!25, !18, !146, !6}
!2295 = !{!2296, !2297, !2298, !2299}
!2296 = !DILocalVariable(name: "n", arg: 1, scope: !2292, file: !144, line: 955, type: !18)
!2297 = !DILocalVariable(name: "s", arg: 2, scope: !2292, file: !144, line: 955, type: !146)
!2298 = !DILocalVariable(name: "arg", arg: 3, scope: !2292, file: !144, line: 955, type: !6)
!2299 = !DILocalVariable(name: "o", scope: !2292, file: !144, line: 957, type: !192)
!2300 = !DILocation(line: 0, scope: !2292)
!2301 = !DILocation(line: 957, column: 3, scope: !2292)
!2302 = !DILocation(line: 957, column: 32, scope: !2292)
!2303 = !DILocalVariable(name: "style", arg: 1, scope: !2304, file: !144, line: 193, type: !146)
!2304 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !144, file: !144, line: 193, type: !2305, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!193, !146}
!2307 = !{!2303, !2308}
!2308 = !DILocalVariable(name: "o", scope: !2304, file: !144, line: 195, type: !193)
!2309 = !DILocation(line: 0, scope: !2304, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 957, column: 36, scope: !2292)
!2311 = !DILocation(line: 195, column: 26, scope: !2304, inlinedAt: !2310)
!2312 = !{!2313}
!2313 = distinct !{!2313, !2314, !"quoting_options_from_style: argument 0"}
!2314 = distinct !{!2314, !"quoting_options_from_style"}
!2315 = !DILocation(line: 196, column: 13, scope: !2316, inlinedAt: !2310)
!2316 = distinct !DILexicalBlock(scope: !2304, file: !144, line: 196, column: 7)
!2317 = !DILocation(line: 196, column: 7, scope: !2304, inlinedAt: !2310)
!2318 = !DILocation(line: 197, column: 5, scope: !2316, inlinedAt: !2310)
!2319 = !DILocation(line: 198, column: 5, scope: !2304, inlinedAt: !2310)
!2320 = !DILocation(line: 198, column: 11, scope: !2304, inlinedAt: !2310)
!2321 = !DILocation(line: 958, column: 10, scope: !2292)
!2322 = !DILocation(line: 959, column: 1, scope: !2292)
!2323 = !DILocation(line: 958, column: 3, scope: !2292)
!2324 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !144, file: !144, line: 962, type: !2325, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!25, !18, !146, !6, !69}
!2327 = !{!2328, !2329, !2330, !2331, !2332}
!2328 = !DILocalVariable(name: "n", arg: 1, scope: !2324, file: !144, line: 962, type: !18)
!2329 = !DILocalVariable(name: "s", arg: 2, scope: !2324, file: !144, line: 962, type: !146)
!2330 = !DILocalVariable(name: "arg", arg: 3, scope: !2324, file: !144, line: 963, type: !6)
!2331 = !DILocalVariable(name: "argsize", arg: 4, scope: !2324, file: !144, line: 963, type: !69)
!2332 = !DILocalVariable(name: "o", scope: !2324, file: !144, line: 965, type: !192)
!2333 = !DILocation(line: 0, scope: !2324)
!2334 = !DILocation(line: 965, column: 3, scope: !2324)
!2335 = !DILocation(line: 965, column: 32, scope: !2324)
!2336 = !DILocation(line: 0, scope: !2304, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 965, column: 36, scope: !2324)
!2338 = !DILocation(line: 195, column: 26, scope: !2304, inlinedAt: !2337)
!2339 = !{!2340}
!2340 = distinct !{!2340, !2341, !"quoting_options_from_style: argument 0"}
!2341 = distinct !{!2341, !"quoting_options_from_style"}
!2342 = !DILocation(line: 196, column: 13, scope: !2316, inlinedAt: !2337)
!2343 = !DILocation(line: 196, column: 7, scope: !2304, inlinedAt: !2337)
!2344 = !DILocation(line: 197, column: 5, scope: !2316, inlinedAt: !2337)
!2345 = !DILocation(line: 198, column: 5, scope: !2304, inlinedAt: !2337)
!2346 = !DILocation(line: 198, column: 11, scope: !2304, inlinedAt: !2337)
!2347 = !DILocation(line: 966, column: 10, scope: !2324)
!2348 = !DILocation(line: 967, column: 1, scope: !2324)
!2349 = !DILocation(line: 966, column: 3, scope: !2324)
!2350 = distinct !DISubprogram(name: "quotearg_style", scope: !144, file: !144, line: 970, type: !2351, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!25, !146, !6}
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "s", arg: 1, scope: !2350, file: !144, line: 970, type: !146)
!2355 = !DILocalVariable(name: "arg", arg: 2, scope: !2350, file: !144, line: 970, type: !6)
!2356 = !DILocation(line: 195, column: 26, scope: !2304, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 957, column: 36, scope: !2292, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 972, column: 10, scope: !2350)
!2359 = !DILocation(line: 957, column: 32, scope: !2292, inlinedAt: !2358)
!2360 = !DILocation(line: 0, scope: !2350)
!2361 = !DILocation(line: 0, scope: !2292, inlinedAt: !2358)
!2362 = !DILocation(line: 957, column: 3, scope: !2292, inlinedAt: !2358)
!2363 = !DILocation(line: 0, scope: !2304, inlinedAt: !2357)
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"quoting_options_from_style: argument 0"}
!2366 = distinct !{!2366, !"quoting_options_from_style"}
!2367 = !DILocation(line: 196, column: 13, scope: !2316, inlinedAt: !2357)
!2368 = !DILocation(line: 196, column: 7, scope: !2304, inlinedAt: !2357)
!2369 = !DILocation(line: 197, column: 5, scope: !2316, inlinedAt: !2357)
!2370 = !DILocation(line: 198, column: 5, scope: !2304, inlinedAt: !2357)
!2371 = !DILocation(line: 198, column: 11, scope: !2304, inlinedAt: !2357)
!2372 = !DILocation(line: 958, column: 10, scope: !2292, inlinedAt: !2358)
!2373 = !DILocation(line: 959, column: 1, scope: !2292, inlinedAt: !2358)
!2374 = !DILocation(line: 972, column: 3, scope: !2350)
!2375 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !144, file: !144, line: 976, type: !2376, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!25, !146, !6, !69}
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "s", arg: 1, scope: !2375, file: !144, line: 976, type: !146)
!2380 = !DILocalVariable(name: "arg", arg: 2, scope: !2375, file: !144, line: 976, type: !6)
!2381 = !DILocalVariable(name: "argsize", arg: 3, scope: !2375, file: !144, line: 976, type: !69)
!2382 = !DILocation(line: 195, column: 26, scope: !2304, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 965, column: 36, scope: !2324, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 978, column: 10, scope: !2375)
!2385 = !DILocation(line: 965, column: 32, scope: !2324, inlinedAt: !2384)
!2386 = !DILocation(line: 0, scope: !2375)
!2387 = !DILocation(line: 0, scope: !2324, inlinedAt: !2384)
!2388 = !DILocation(line: 965, column: 3, scope: !2324, inlinedAt: !2384)
!2389 = !DILocation(line: 0, scope: !2304, inlinedAt: !2383)
!2390 = !{!2391}
!2391 = distinct !{!2391, !2392, !"quoting_options_from_style: argument 0"}
!2392 = distinct !{!2392, !"quoting_options_from_style"}
!2393 = !DILocation(line: 196, column: 13, scope: !2316, inlinedAt: !2383)
!2394 = !DILocation(line: 196, column: 7, scope: !2304, inlinedAt: !2383)
!2395 = !DILocation(line: 197, column: 5, scope: !2316, inlinedAt: !2383)
!2396 = !DILocation(line: 198, column: 5, scope: !2304, inlinedAt: !2383)
!2397 = !DILocation(line: 198, column: 11, scope: !2304, inlinedAt: !2383)
!2398 = !DILocation(line: 966, column: 10, scope: !2324, inlinedAt: !2384)
!2399 = !DILocation(line: 967, column: 1, scope: !2324, inlinedAt: !2384)
!2400 = !DILocation(line: 978, column: 3, scope: !2375)
!2401 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !144, file: !144, line: 982, type: !2402, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!25, !6, !69, !8}
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DILocalVariable(name: "arg", arg: 1, scope: !2401, file: !144, line: 982, type: !6)
!2406 = !DILocalVariable(name: "argsize", arg: 2, scope: !2401, file: !144, line: 982, type: !69)
!2407 = !DILocalVariable(name: "ch", arg: 3, scope: !2401, file: !144, line: 982, type: !8)
!2408 = !DILocalVariable(name: "options", scope: !2401, file: !144, line: 984, type: !193)
!2409 = !DILocation(line: 0, scope: !2401)
!2410 = !DILocation(line: 984, column: 3, scope: !2401)
!2411 = !DILocation(line: 984, column: 26, scope: !2401)
!2412 = !DILocation(line: 985, column: 13, scope: !2401)
!2413 = !{i64 0, i64 4, !1420, i64 4, i64 4, !1138, i64 8, i64 32, !1420, i64 40, i64 8, !1022, i64 48, i64 8, !1022}
!2414 = !DILocation(line: 0, scope: !1233, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 986, column: 3, scope: !2401)
!2416 = !DILocation(line: 156, column: 62, scope: !1233, inlinedAt: !2415)
!2417 = !DILocation(line: 156, column: 57, scope: !1233, inlinedAt: !2415)
!2418 = !DILocation(line: 157, column: 15, scope: !1233, inlinedAt: !2415)
!2419 = !DILocation(line: 158, column: 12, scope: !1233, inlinedAt: !2415)
!2420 = !DILocation(line: 158, column: 15, scope: !1233, inlinedAt: !2415)
!2421 = !DILocation(line: 158, column: 25, scope: !1233, inlinedAt: !2415)
!2422 = !DILocation(line: 159, column: 18, scope: !1233, inlinedAt: !2415)
!2423 = !DILocation(line: 159, column: 23, scope: !1233, inlinedAt: !2415)
!2424 = !DILocation(line: 159, column: 6, scope: !1233, inlinedAt: !2415)
!2425 = !DILocation(line: 987, column: 10, scope: !2401)
!2426 = !DILocation(line: 988, column: 1, scope: !2401)
!2427 = !DILocation(line: 987, column: 3, scope: !2401)
!2428 = distinct !DISubprogram(name: "quotearg_char", scope: !144, file: !144, line: 991, type: !2429, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!25, !6, !8}
!2431 = !{!2432, !2433}
!2432 = !DILocalVariable(name: "arg", arg: 1, scope: !2428, file: !144, line: 991, type: !6)
!2433 = !DILocalVariable(name: "ch", arg: 2, scope: !2428, file: !144, line: 991, type: !8)
!2434 = !DILocation(line: 984, column: 26, scope: !2401, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 993, column: 10, scope: !2428)
!2436 = !DILocation(line: 0, scope: !2428)
!2437 = !DILocation(line: 0, scope: !2401, inlinedAt: !2435)
!2438 = !DILocation(line: 984, column: 3, scope: !2401, inlinedAt: !2435)
!2439 = !DILocation(line: 985, column: 13, scope: !2401, inlinedAt: !2435)
!2440 = !DILocation(line: 0, scope: !1233, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 986, column: 3, scope: !2401, inlinedAt: !2435)
!2442 = !DILocation(line: 156, column: 62, scope: !1233, inlinedAt: !2441)
!2443 = !DILocation(line: 156, column: 57, scope: !1233, inlinedAt: !2441)
!2444 = !DILocation(line: 157, column: 15, scope: !1233, inlinedAt: !2441)
!2445 = !DILocation(line: 158, column: 12, scope: !1233, inlinedAt: !2441)
!2446 = !DILocation(line: 158, column: 15, scope: !1233, inlinedAt: !2441)
!2447 = !DILocation(line: 158, column: 25, scope: !1233, inlinedAt: !2441)
!2448 = !DILocation(line: 159, column: 18, scope: !1233, inlinedAt: !2441)
!2449 = !DILocation(line: 159, column: 23, scope: !1233, inlinedAt: !2441)
!2450 = !DILocation(line: 159, column: 6, scope: !1233, inlinedAt: !2441)
!2451 = !DILocation(line: 987, column: 10, scope: !2401, inlinedAt: !2435)
!2452 = !DILocation(line: 988, column: 1, scope: !2401, inlinedAt: !2435)
!2453 = !DILocation(line: 993, column: 3, scope: !2428)
!2454 = distinct !DISubprogram(name: "quotearg_colon", scope: !144, file: !144, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2455)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "arg", arg: 1, scope: !2454, file: !144, line: 997, type: !6)
!2457 = !DILocation(line: 984, column: 26, scope: !2401, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 993, column: 10, scope: !2428, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 999, column: 10, scope: !2454)
!2460 = !DILocation(line: 0, scope: !2454)
!2461 = !DILocation(line: 0, scope: !2428, inlinedAt: !2459)
!2462 = !DILocation(line: 0, scope: !2401, inlinedAt: !2458)
!2463 = !DILocation(line: 984, column: 3, scope: !2401, inlinedAt: !2458)
!2464 = !DILocation(line: 985, column: 13, scope: !2401, inlinedAt: !2458)
!2465 = !DILocation(line: 0, scope: !1233, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 986, column: 3, scope: !2401, inlinedAt: !2458)
!2467 = !DILocation(line: 156, column: 57, scope: !1233, inlinedAt: !2466)
!2468 = !DILocation(line: 158, column: 12, scope: !1233, inlinedAt: !2466)
!2469 = !DILocation(line: 159, column: 6, scope: !1233, inlinedAt: !2466)
!2470 = !DILocation(line: 987, column: 10, scope: !2401, inlinedAt: !2458)
!2471 = !DILocation(line: 988, column: 1, scope: !2401, inlinedAt: !2458)
!2472 = !DILocation(line: 999, column: 3, scope: !2454)
!2473 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !144, file: !144, line: 1003, type: !2282, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2474)
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2473, file: !144, line: 1003, type: !6)
!2476 = !DILocalVariable(name: "argsize", arg: 2, scope: !2473, file: !144, line: 1003, type: !69)
!2477 = !DILocation(line: 984, column: 26, scope: !2401, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1005, column: 10, scope: !2473)
!2479 = !DILocation(line: 0, scope: !2473)
!2480 = !DILocation(line: 0, scope: !2401, inlinedAt: !2478)
!2481 = !DILocation(line: 984, column: 3, scope: !2401, inlinedAt: !2478)
!2482 = !DILocation(line: 985, column: 13, scope: !2401, inlinedAt: !2478)
!2483 = !DILocation(line: 0, scope: !1233, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 986, column: 3, scope: !2401, inlinedAt: !2478)
!2485 = !DILocation(line: 156, column: 57, scope: !1233, inlinedAt: !2484)
!2486 = !DILocation(line: 158, column: 12, scope: !1233, inlinedAt: !2484)
!2487 = !DILocation(line: 159, column: 6, scope: !1233, inlinedAt: !2484)
!2488 = !DILocation(line: 987, column: 10, scope: !2401, inlinedAt: !2478)
!2489 = !DILocation(line: 988, column: 1, scope: !2401, inlinedAt: !2478)
!2490 = !DILocation(line: 1005, column: 3, scope: !2473)
!2491 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !144, file: !144, line: 1009, type: !2293, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2492)
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !144, line: 1009, type: !18)
!2494 = !DILocalVariable(name: "s", arg: 2, scope: !2491, file: !144, line: 1009, type: !146)
!2495 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !144, line: 1009, type: !6)
!2496 = !DILocalVariable(name: "options", scope: !2491, file: !144, line: 1011, type: !193)
!2497 = !DILocation(line: 195, column: 26, scope: !2304, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1012, column: 13, scope: !2491)
!2499 = !DILocation(line: 0, scope: !2491)
!2500 = !DILocation(line: 1011, column: 3, scope: !2491)
!2501 = !DILocation(line: 1011, column: 26, scope: !2491)
!2502 = !DILocation(line: 1012, column: 13, scope: !2491)
!2503 = !DILocation(line: 0, scope: !2304, inlinedAt: !2498)
!2504 = !{!2505}
!2505 = distinct !{!2505, !2506, !"quoting_options_from_style: argument 0"}
!2506 = distinct !{!2506, !"quoting_options_from_style"}
!2507 = !DILocation(line: 196, column: 13, scope: !2316, inlinedAt: !2498)
!2508 = !DILocation(line: 196, column: 7, scope: !2304, inlinedAt: !2498)
!2509 = !DILocation(line: 197, column: 5, scope: !2316, inlinedAt: !2498)
!2510 = !DILocation(line: 0, scope: !1233, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1013, column: 3, scope: !2491)
!2512 = !DILocation(line: 156, column: 57, scope: !1233, inlinedAt: !2511)
!2513 = !DILocation(line: 158, column: 12, scope: !1233, inlinedAt: !2511)
!2514 = !DILocation(line: 159, column: 6, scope: !1233, inlinedAt: !2511)
!2515 = !DILocation(line: 1014, column: 10, scope: !2491)
!2516 = !DILocation(line: 1015, column: 1, scope: !2491)
!2517 = !DILocation(line: 1014, column: 3, scope: !2491)
!2518 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !144, file: !144, line: 1018, type: !2519, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!25, !18, !6, !6, !6}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2518, file: !144, line: 1018, type: !18)
!2523 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2518, file: !144, line: 1018, type: !6)
!2524 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2518, file: !144, line: 1019, type: !6)
!2525 = !DILocalVariable(name: "arg", arg: 4, scope: !2518, file: !144, line: 1019, type: !6)
!2526 = !DILocalVariable(name: "o", scope: !2527, file: !144, line: 1030, type: !193)
!2527 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !144, file: !144, line: 1026, type: !2528, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!25, !18, !6, !6, !6, !69}
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2526}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !144, line: 1026, type: !18)
!2532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2527, file: !144, line: 1026, type: !6)
!2533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2527, file: !144, line: 1027, type: !6)
!2534 = !DILocalVariable(name: "arg", arg: 4, scope: !2527, file: !144, line: 1028, type: !6)
!2535 = !DILocalVariable(name: "argsize", arg: 5, scope: !2527, file: !144, line: 1028, type: !69)
!2536 = !DILocation(line: 1030, column: 26, scope: !2527, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1021, column: 10, scope: !2518)
!2538 = !DILocation(line: 0, scope: !2518)
!2539 = !DILocation(line: 0, scope: !2527, inlinedAt: !2537)
!2540 = !DILocation(line: 1030, column: 3, scope: !2527, inlinedAt: !2537)
!2541 = !DILocation(line: 1030, column: 30, scope: !2527, inlinedAt: !2537)
!2542 = !DILocation(line: 0, scope: !1274, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1031, column: 3, scope: !2527, inlinedAt: !2537)
!2544 = !DILocation(line: 184, column: 6, scope: !1274, inlinedAt: !2543)
!2545 = !DILocation(line: 184, column: 12, scope: !1274, inlinedAt: !2543)
!2546 = !DILocation(line: 185, column: 8, scope: !1288, inlinedAt: !2543)
!2547 = !DILocation(line: 185, column: 23, scope: !1288, inlinedAt: !2543)
!2548 = !DILocation(line: 185, column: 19, scope: !1288, inlinedAt: !2543)
!2549 = !DILocation(line: 186, column: 5, scope: !1288, inlinedAt: !2543)
!2550 = !DILocation(line: 187, column: 6, scope: !1274, inlinedAt: !2543)
!2551 = !DILocation(line: 187, column: 17, scope: !1274, inlinedAt: !2543)
!2552 = !DILocation(line: 188, column: 6, scope: !1274, inlinedAt: !2543)
!2553 = !DILocation(line: 188, column: 18, scope: !1274, inlinedAt: !2543)
!2554 = !DILocation(line: 1032, column: 10, scope: !2527, inlinedAt: !2537)
!2555 = !DILocation(line: 1033, column: 1, scope: !2527, inlinedAt: !2537)
!2556 = !DILocation(line: 1021, column: 3, scope: !2518)
!2557 = !DILocation(line: 0, scope: !2527)
!2558 = !DILocation(line: 1030, column: 3, scope: !2527)
!2559 = !DILocation(line: 1030, column: 26, scope: !2527)
!2560 = !DILocation(line: 1030, column: 30, scope: !2527)
!2561 = !DILocation(line: 0, scope: !1274, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 1031, column: 3, scope: !2527)
!2563 = !DILocation(line: 184, column: 6, scope: !1274, inlinedAt: !2562)
!2564 = !DILocation(line: 184, column: 12, scope: !1274, inlinedAt: !2562)
!2565 = !DILocation(line: 185, column: 8, scope: !1288, inlinedAt: !2562)
!2566 = !DILocation(line: 185, column: 23, scope: !1288, inlinedAt: !2562)
!2567 = !DILocation(line: 185, column: 19, scope: !1288, inlinedAt: !2562)
!2568 = !DILocation(line: 186, column: 5, scope: !1288, inlinedAt: !2562)
!2569 = !DILocation(line: 187, column: 6, scope: !1274, inlinedAt: !2562)
!2570 = !DILocation(line: 187, column: 17, scope: !1274, inlinedAt: !2562)
!2571 = !DILocation(line: 188, column: 6, scope: !1274, inlinedAt: !2562)
!2572 = !DILocation(line: 188, column: 18, scope: !1274, inlinedAt: !2562)
!2573 = !DILocation(line: 1032, column: 10, scope: !2527)
!2574 = !DILocation(line: 1033, column: 1, scope: !2527)
!2575 = !DILocation(line: 1032, column: 3, scope: !2527)
!2576 = distinct !DISubprogram(name: "quotearg_custom", scope: !144, file: !144, line: 1036, type: !2577, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!25, !6, !6, !6}
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2576, file: !144, line: 1036, type: !6)
!2581 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2576, file: !144, line: 1036, type: !6)
!2582 = !DILocalVariable(name: "arg", arg: 3, scope: !2576, file: !144, line: 1037, type: !6)
!2583 = !DILocation(line: 1030, column: 26, scope: !2527, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1021, column: 10, scope: !2518, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 1039, column: 10, scope: !2576)
!2586 = !DILocation(line: 0, scope: !2576)
!2587 = !DILocation(line: 0, scope: !2518, inlinedAt: !2585)
!2588 = !DILocation(line: 0, scope: !2527, inlinedAt: !2584)
!2589 = !DILocation(line: 1030, column: 3, scope: !2527, inlinedAt: !2584)
!2590 = !DILocation(line: 1030, column: 30, scope: !2527, inlinedAt: !2584)
!2591 = !DILocation(line: 0, scope: !1274, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1031, column: 3, scope: !2527, inlinedAt: !2584)
!2593 = !DILocation(line: 184, column: 6, scope: !1274, inlinedAt: !2592)
!2594 = !DILocation(line: 184, column: 12, scope: !1274, inlinedAt: !2592)
!2595 = !DILocation(line: 185, column: 8, scope: !1288, inlinedAt: !2592)
!2596 = !DILocation(line: 185, column: 23, scope: !1288, inlinedAt: !2592)
!2597 = !DILocation(line: 185, column: 19, scope: !1288, inlinedAt: !2592)
!2598 = !DILocation(line: 186, column: 5, scope: !1288, inlinedAt: !2592)
!2599 = !DILocation(line: 187, column: 6, scope: !1274, inlinedAt: !2592)
!2600 = !DILocation(line: 187, column: 17, scope: !1274, inlinedAt: !2592)
!2601 = !DILocation(line: 188, column: 6, scope: !1274, inlinedAt: !2592)
!2602 = !DILocation(line: 188, column: 18, scope: !1274, inlinedAt: !2592)
!2603 = !DILocation(line: 1032, column: 10, scope: !2527, inlinedAt: !2584)
!2604 = !DILocation(line: 1033, column: 1, scope: !2527, inlinedAt: !2584)
!2605 = !DILocation(line: 1039, column: 3, scope: !2576)
!2606 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !144, file: !144, line: 1043, type: !2607, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!25, !6, !6, !6, !69}
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2606, file: !144, line: 1043, type: !6)
!2611 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2606, file: !144, line: 1043, type: !6)
!2612 = !DILocalVariable(name: "arg", arg: 3, scope: !2606, file: !144, line: 1044, type: !6)
!2613 = !DILocalVariable(name: "argsize", arg: 4, scope: !2606, file: !144, line: 1044, type: !69)
!2614 = !DILocation(line: 1030, column: 26, scope: !2527, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 1046, column: 10, scope: !2606)
!2616 = !DILocation(line: 0, scope: !2606)
!2617 = !DILocation(line: 0, scope: !2527, inlinedAt: !2615)
!2618 = !DILocation(line: 1030, column: 3, scope: !2527, inlinedAt: !2615)
!2619 = !DILocation(line: 1030, column: 30, scope: !2527, inlinedAt: !2615)
!2620 = !DILocation(line: 0, scope: !1274, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1031, column: 3, scope: !2527, inlinedAt: !2615)
!2622 = !DILocation(line: 184, column: 6, scope: !1274, inlinedAt: !2621)
!2623 = !DILocation(line: 184, column: 12, scope: !1274, inlinedAt: !2621)
!2624 = !DILocation(line: 185, column: 8, scope: !1288, inlinedAt: !2621)
!2625 = !DILocation(line: 185, column: 23, scope: !1288, inlinedAt: !2621)
!2626 = !DILocation(line: 185, column: 19, scope: !1288, inlinedAt: !2621)
!2627 = !DILocation(line: 186, column: 5, scope: !1288, inlinedAt: !2621)
!2628 = !DILocation(line: 187, column: 6, scope: !1274, inlinedAt: !2621)
!2629 = !DILocation(line: 187, column: 17, scope: !1274, inlinedAt: !2621)
!2630 = !DILocation(line: 188, column: 6, scope: !1274, inlinedAt: !2621)
!2631 = !DILocation(line: 188, column: 18, scope: !1274, inlinedAt: !2621)
!2632 = !DILocation(line: 1032, column: 10, scope: !2527, inlinedAt: !2615)
!2633 = !DILocation(line: 1033, column: 1, scope: !2527, inlinedAt: !2615)
!2634 = !DILocation(line: 1046, column: 3, scope: !2606)
!2635 = distinct !DISubprogram(name: "quote_n_mem", scope: !144, file: !144, line: 1061, type: !2636, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!6, !18, !6, !69}
!2638 = !{!2639, !2640, !2641}
!2639 = !DILocalVariable(name: "n", arg: 1, scope: !2635, file: !144, line: 1061, type: !18)
!2640 = !DILocalVariable(name: "arg", arg: 2, scope: !2635, file: !144, line: 1061, type: !6)
!2641 = !DILocalVariable(name: "argsize", arg: 3, scope: !2635, file: !144, line: 1061, type: !69)
!2642 = !DILocation(line: 0, scope: !2635)
!2643 = !DILocation(line: 1063, column: 10, scope: !2635)
!2644 = !DILocation(line: 1063, column: 3, scope: !2635)
!2645 = distinct !DISubprogram(name: "quote_mem", scope: !144, file: !144, line: 1067, type: !2646, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!6, !6, !69}
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "arg", arg: 1, scope: !2645, file: !144, line: 1067, type: !6)
!2650 = !DILocalVariable(name: "argsize", arg: 2, scope: !2645, file: !144, line: 1067, type: !69)
!2651 = !DILocation(line: 0, scope: !2645)
!2652 = !DILocation(line: 0, scope: !2635, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1069, column: 10, scope: !2645)
!2654 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2653)
!2655 = !DILocation(line: 1069, column: 3, scope: !2645)
!2656 = distinct !DISubprogram(name: "quote_n", scope: !144, file: !144, line: 1073, type: !2657, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!6, !18, !6}
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2656, file: !144, line: 1073, type: !18)
!2661 = !DILocalVariable(name: "arg", arg: 2, scope: !2656, file: !144, line: 1073, type: !6)
!2662 = !DILocation(line: 0, scope: !2656)
!2663 = !DILocation(line: 0, scope: !2635, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1075, column: 10, scope: !2656)
!2665 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2664)
!2666 = !DILocation(line: 1075, column: 3, scope: !2656)
!2667 = distinct !DISubprogram(name: "quote", scope: !144, file: !144, line: 1079, type: !2668, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!6, !6}
!2670 = !{!2671}
!2671 = !DILocalVariable(name: "arg", arg: 1, scope: !2667, file: !144, line: 1079, type: !6)
!2672 = !DILocation(line: 0, scope: !2667)
!2673 = !DILocation(line: 0, scope: !2656, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1081, column: 10, scope: !2667)
!2675 = !DILocation(line: 0, scope: !2635, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1075, column: 10, scope: !2656, inlinedAt: !2674)
!2677 = !DILocation(line: 1063, column: 10, scope: !2635, inlinedAt: !2676)
!2678 = !DILocation(line: 1081, column: 3, scope: !2667)
!2679 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2680, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2686)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2682, !6, !6, !6, !2685, !69}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2684, line: 7, baseType: !363)
!2684 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692}
!2687 = !DILocalVariable(name: "stream", arg: 1, scope: !2679, file: !353, line: 61, type: !2682)
!2688 = !DILocalVariable(name: "command_name", arg: 2, scope: !2679, file: !353, line: 62, type: !6)
!2689 = !DILocalVariable(name: "package", arg: 3, scope: !2679, file: !353, line: 62, type: !6)
!2690 = !DILocalVariable(name: "version", arg: 4, scope: !2679, file: !353, line: 63, type: !6)
!2691 = !DILocalVariable(name: "authors", arg: 5, scope: !2679, file: !353, line: 64, type: !2685)
!2692 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2679, file: !353, line: 64, type: !69)
!2693 = !DILocation(line: 0, scope: !2679)
!2694 = !DILocation(line: 66, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2679, file: !353, line: 66, column: 7)
!2696 = !DILocation(line: 66, column: 7, scope: !2679)
!2697 = !DILocation(line: 67, column: 5, scope: !2695)
!2698 = !DILocation(line: 69, column: 5, scope: !2695)
!2699 = !DILocation(line: 83, column: 3, scope: !2679)
!2700 = !DILocation(line: 85, column: 3, scope: !2679)
!2701 = !DILocation(line: 88, column: 3, scope: !2679)
!2702 = !DILocation(line: 95, column: 3, scope: !2679)
!2703 = !DILocation(line: 97, column: 3, scope: !2679)
!2704 = !DILocation(line: 105, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2679, file: !353, line: 98, column: 5)
!2706 = !DILocation(line: 106, column: 7, scope: !2705)
!2707 = !DILocation(line: 109, column: 7, scope: !2705)
!2708 = !DILocation(line: 110, column: 7, scope: !2705)
!2709 = !DILocation(line: 113, column: 7, scope: !2705)
!2710 = !DILocation(line: 115, column: 7, scope: !2705)
!2711 = !DILocation(line: 120, column: 7, scope: !2705)
!2712 = !DILocation(line: 122, column: 7, scope: !2705)
!2713 = !DILocation(line: 127, column: 7, scope: !2705)
!2714 = !DILocation(line: 129, column: 7, scope: !2705)
!2715 = !DILocation(line: 134, column: 7, scope: !2705)
!2716 = !DILocation(line: 137, column: 7, scope: !2705)
!2717 = !DILocation(line: 142, column: 7, scope: !2705)
!2718 = !DILocation(line: 145, column: 7, scope: !2705)
!2719 = !DILocation(line: 150, column: 7, scope: !2705)
!2720 = !DILocation(line: 154, column: 7, scope: !2705)
!2721 = !DILocation(line: 159, column: 7, scope: !2705)
!2722 = !DILocation(line: 163, column: 7, scope: !2705)
!2723 = !DILocation(line: 170, column: 7, scope: !2705)
!2724 = !DILocation(line: 174, column: 7, scope: !2705)
!2725 = !DILocation(line: 176, column: 1, scope: !2679)
!2726 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2727, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2682, !6, !6, !6, !2685}
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735}
!2730 = !DILocalVariable(name: "stream", arg: 1, scope: !2726, file: !353, line: 183, type: !2682)
!2731 = !DILocalVariable(name: "command_name", arg: 2, scope: !2726, file: !353, line: 184, type: !6)
!2732 = !DILocalVariable(name: "package", arg: 3, scope: !2726, file: !353, line: 184, type: !6)
!2733 = !DILocalVariable(name: "version", arg: 4, scope: !2726, file: !353, line: 185, type: !6)
!2734 = !DILocalVariable(name: "authors", arg: 5, scope: !2726, file: !353, line: 185, type: !2685)
!2735 = !DILocalVariable(name: "n_authors", scope: !2726, file: !353, line: 187, type: !69)
!2736 = !DILocation(line: 0, scope: !2726)
!2737 = !DILocation(line: 189, column: 8, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2726, file: !353, line: 189, column: 3)
!2739 = !DILocation(line: 0, scope: !2738)
!2740 = !DILocation(line: 189, column: 23, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !353, line: 189, column: 3)
!2742 = !DILocation(line: 189, column: 3, scope: !2738)
!2743 = !DILocation(line: 189, column: 52, scope: !2741)
!2744 = distinct !{!2744, !2742, !2745}
!2745 = !DILocation(line: 190, column: 5, scope: !2738)
!2746 = !DILocation(line: 191, column: 3, scope: !2726)
!2747 = !DILocation(line: 192, column: 1, scope: !2726)
!2748 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2749, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2758)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2682, !6, !6, !6, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !353, line: 192, size: 192, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2752, file: !353, line: 192, baseType: !147, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2752, file: !353, line: 192, baseType: !147, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2752, file: !353, line: 192, baseType: !67, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2752, file: !353, line: 192, baseType: !67, size: 64, offset: 128)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2759 = !DILocalVariable(name: "stream", arg: 1, scope: !2748, file: !353, line: 199, type: !2682)
!2760 = !DILocalVariable(name: "command_name", arg: 2, scope: !2748, file: !353, line: 200, type: !6)
!2761 = !DILocalVariable(name: "package", arg: 3, scope: !2748, file: !353, line: 200, type: !6)
!2762 = !DILocalVariable(name: "version", arg: 4, scope: !2748, file: !353, line: 201, type: !6)
!2763 = !DILocalVariable(name: "authors", arg: 5, scope: !2748, file: !353, line: 201, type: !2751)
!2764 = !DILocalVariable(name: "n_authors", scope: !2748, file: !353, line: 203, type: !69)
!2765 = !DILocalVariable(name: "authtab", scope: !2748, file: !353, line: 204, type: !2766)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !260)
!2767 = !DILocation(line: 0, scope: !2748)
!2768 = !DILocation(line: 204, column: 3, scope: !2748)
!2769 = !DILocation(line: 204, column: 15, scope: !2748)
!2770 = !DILocation(line: 0, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !353, line: 206, column: 3)
!2772 = distinct !DILexicalBlock(scope: !2748, file: !353, line: 206, column: 3)
!2773 = !DILocation(line: 208, column: 35, scope: !2771)
!2774 = !DILocation(line: 208, column: 14, scope: !2771)
!2775 = !DILocation(line: 208, column: 33, scope: !2771)
!2776 = !DILocation(line: 208, column: 67, scope: !2771)
!2777 = !DILocation(line: 206, column: 3, scope: !2772)
!2778 = !DILocation(line: 0, scope: !2772)
!2779 = !DILocation(line: 211, column: 3, scope: !2748)
!2780 = !DILocation(line: 213, column: 1, scope: !2748)
!2781 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2782, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !2682, !6, !6, !6, null}
!2784 = !{!2785, !2786, !2787, !2788, !2789}
!2785 = !DILocalVariable(name: "stream", arg: 1, scope: !2781, file: !353, line: 230, type: !2682)
!2786 = !DILocalVariable(name: "command_name", arg: 2, scope: !2781, file: !353, line: 231, type: !6)
!2787 = !DILocalVariable(name: "package", arg: 3, scope: !2781, file: !353, line: 231, type: !6)
!2788 = !DILocalVariable(name: "version", arg: 4, scope: !2781, file: !353, line: 232, type: !6)
!2789 = !DILocalVariable(name: "authors", scope: !2781, file: !353, line: 234, type: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !105, line: 52, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2792, line: 32, baseType: !2793)
!2792 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !353, line: 234, baseType: !2794)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, size: 192, elements: !52)
!2795 = !DILocation(line: 0, scope: !2781)
!2796 = !DILocation(line: 234, column: 3, scope: !2781)
!2797 = !DILocation(line: 234, column: 11, scope: !2781)
!2798 = !DILocation(line: 236, column: 3, scope: !2781)
!2799 = !DILocation(line: 237, column: 3, scope: !2781)
!2800 = !DILocation(line: 238, column: 3, scope: !2781)
!2801 = !DILocation(line: 239, column: 1, scope: !2781)
!2802 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 242, type: !250, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !4)
!2803 = !DILocation(line: 244, column: 3, scope: !2802)
!2804 = !DILocation(line: 249, column: 3, scope: !2802)
!2805 = !DILocation(line: 255, column: 3, scope: !2802)
!2806 = !DILocation(line: 260, column: 3, scope: !2802)
!2807 = !DILocation(line: 262, column: 1, scope: !2802)
!2808 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !2809, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!67, !69, !69}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !182, line: 99, type: !69)
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2808, file: !182, line: 99, type: !69)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 101, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2808, file: !182, line: 101, column: 7)
!2817 = !DILocation(line: 101, column: 7, scope: !2808)
!2818 = !DILocation(line: 102, column: 5, scope: !2816)
!2819 = !DILocation(line: 103, column: 21, scope: !2808)
!2820 = !DILocalVariable(name: "n", arg: 1, scope: !2821, file: !395, line: 39, type: !69)
!2821 = distinct !DISubprogram(name: "xmalloc", scope: !395, file: !395, line: 39, type: !2822, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!67, !69}
!2824 = !{!2820, !2825}
!2825 = !DILocalVariable(name: "p", scope: !2821, file: !395, line: 41, type: !67)
!2826 = !DILocation(line: 0, scope: !2821, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 103, column: 10, scope: !2808)
!2828 = !DILocation(line: 41, column: 13, scope: !2821, inlinedAt: !2827)
!2829 = !DILocation(line: 42, column: 8, scope: !2830, inlinedAt: !2827)
!2830 = distinct !DILexicalBlock(scope: !2821, file: !395, line: 42, column: 7)
!2831 = !DILocation(line: 42, column: 15, scope: !2830, inlinedAt: !2827)
!2832 = !DILocation(line: 42, column: 10, scope: !2830, inlinedAt: !2827)
!2833 = !DILocation(line: 43, column: 5, scope: !2830, inlinedAt: !2827)
!2834 = !DILocation(line: 103, column: 3, scope: !2808)
!2835 = !DILocation(line: 0, scope: !2821)
!2836 = !DILocation(line: 41, column: 13, scope: !2821)
!2837 = !DILocation(line: 42, column: 8, scope: !2830)
!2838 = !DILocation(line: 42, column: 15, scope: !2830)
!2839 = !DILocation(line: 42, column: 10, scope: !2830)
!2840 = !DILocation(line: 43, column: 5, scope: !2830)
!2841 = !DILocation(line: 44, column: 3, scope: !2821)
!2842 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !2843, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!67, !67, !69, !69}
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "p", arg: 1, scope: !2842, file: !182, line: 112, type: !67)
!2847 = !DILocalVariable(name: "n", arg: 2, scope: !2842, file: !182, line: 112, type: !69)
!2848 = !DILocalVariable(name: "s", arg: 3, scope: !2842, file: !182, line: 112, type: !69)
!2849 = !DILocation(line: 0, scope: !2842)
!2850 = !DILocation(line: 114, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2842, file: !182, line: 114, column: 7)
!2852 = !DILocation(line: 114, column: 7, scope: !2842)
!2853 = !DILocation(line: 115, column: 5, scope: !2851)
!2854 = !DILocation(line: 116, column: 25, scope: !2842)
!2855 = !DILocalVariable(name: "p", arg: 1, scope: !2856, file: !395, line: 51, type: !67)
!2856 = distinct !DISubprogram(name: "xrealloc", scope: !395, file: !395, line: 51, type: !2857, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!67, !67, !69}
!2859 = !{!2855, !2860}
!2860 = !DILocalVariable(name: "n", arg: 2, scope: !2856, file: !395, line: 51, type: !69)
!2861 = !DILocation(line: 0, scope: !2856, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 116, column: 10, scope: !2842)
!2863 = !DILocation(line: 53, column: 8, scope: !2864, inlinedAt: !2862)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !395, line: 53, column: 7)
!2865 = !DILocation(line: 53, column: 13, scope: !2864, inlinedAt: !2862)
!2866 = !DILocation(line: 53, column: 10, scope: !2864, inlinedAt: !2862)
!2867 = !DILocation(line: 57, column: 7, scope: !2868, inlinedAt: !2862)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !395, line: 54, column: 5)
!2869 = !DILocation(line: 58, column: 7, scope: !2868, inlinedAt: !2862)
!2870 = !DILocation(line: 61, column: 7, scope: !2856, inlinedAt: !2862)
!2871 = !DILocation(line: 62, column: 8, scope: !2872, inlinedAt: !2862)
!2872 = distinct !DILexicalBlock(scope: !2856, file: !395, line: 62, column: 7)
!2873 = !DILocation(line: 62, column: 13, scope: !2872, inlinedAt: !2862)
!2874 = !DILocation(line: 62, column: 10, scope: !2872, inlinedAt: !2862)
!2875 = !DILocation(line: 63, column: 5, scope: !2872, inlinedAt: !2862)
!2876 = !DILocation(line: 116, column: 3, scope: !2842)
!2877 = !DILocation(line: 0, scope: !2856)
!2878 = !DILocation(line: 53, column: 8, scope: !2864)
!2879 = !DILocation(line: 53, column: 13, scope: !2864)
!2880 = !DILocation(line: 53, column: 10, scope: !2864)
!2881 = !DILocation(line: 57, column: 7, scope: !2868)
!2882 = !DILocation(line: 58, column: 7, scope: !2868)
!2883 = !DILocation(line: 61, column: 7, scope: !2856)
!2884 = !DILocation(line: 62, column: 8, scope: !2872)
!2885 = !DILocation(line: 62, column: 13, scope: !2872)
!2886 = !DILocation(line: 62, column: 10, scope: !2872)
!2887 = !DILocation(line: 63, column: 5, scope: !2872)
!2888 = !DILocation(line: 65, column: 1, scope: !2856)
!2889 = !DILocation(line: 0, scope: !398)
!2890 = !DILocation(line: 176, column: 14, scope: !398)
!2891 = !DILocation(line: 178, column: 9, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !398, file: !182, line: 178, column: 7)
!2893 = !DILocation(line: 178, column: 7, scope: !398)
!2894 = !DILocation(line: 180, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !182, line: 180, column: 11)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !182, line: 179, column: 5)
!2897 = !DILocation(line: 180, column: 11, scope: !2896)
!2898 = !DILocation(line: 188, column: 30, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !182, line: 181, column: 9)
!2900 = !DILocation(line: 189, column: 16, scope: !2899)
!2901 = !DILocation(line: 189, column: 13, scope: !2899)
!2902 = !DILocation(line: 190, column: 9, scope: !2899)
!2903 = !DILocation(line: 191, column: 11, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2896, file: !182, line: 191, column: 11)
!2905 = !DILocation(line: 191, column: 11, scope: !2896)
!2906 = !DILocation(line: 206, column: 7, scope: !398)
!2907 = !DILocation(line: 207, column: 25, scope: !398)
!2908 = !DILocation(line: 0, scope: !2856, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 207, column: 10, scope: !398)
!2910 = !DILocation(line: 53, column: 10, scope: !2864, inlinedAt: !2909)
!2911 = !DILocation(line: 192, column: 9, scope: !2904)
!2912 = !DILocation(line: 200, column: 69, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !182, line: 200, column: 11)
!2914 = distinct !DILexicalBlock(scope: !2892, file: !182, line: 195, column: 5)
!2915 = !DILocation(line: 201, column: 11, scope: !2913)
!2916 = !DILocation(line: 200, column: 11, scope: !2914)
!2917 = !DILocation(line: 202, column: 9, scope: !2913)
!2918 = !DILocation(line: 203, column: 14, scope: !2914)
!2919 = !DILocation(line: 203, column: 18, scope: !2914)
!2920 = !DILocation(line: 203, column: 9, scope: !2914)
!2921 = !DILocation(line: 53, column: 8, scope: !2864, inlinedAt: !2909)
!2922 = !DILocation(line: 57, column: 7, scope: !2868, inlinedAt: !2909)
!2923 = !DILocation(line: 58, column: 7, scope: !2868, inlinedAt: !2909)
!2924 = !DILocation(line: 61, column: 7, scope: !2856, inlinedAt: !2909)
!2925 = !DILocation(line: 62, column: 8, scope: !2872, inlinedAt: !2909)
!2926 = !DILocation(line: 62, column: 13, scope: !2872, inlinedAt: !2909)
!2927 = !DILocation(line: 62, column: 10, scope: !2872, inlinedAt: !2909)
!2928 = !DILocation(line: 63, column: 5, scope: !2872, inlinedAt: !2909)
!2929 = !DILocation(line: 207, column: 3, scope: !398)
!2930 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2090, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2931)
!2931 = !{!2932}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2930, file: !182, line: 216, type: !69)
!2933 = !DILocation(line: 0, scope: !2930)
!2934 = !DILocation(line: 0, scope: !2821, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 218, column: 10, scope: !2930)
!2936 = !DILocation(line: 41, column: 13, scope: !2821, inlinedAt: !2935)
!2937 = !DILocation(line: 42, column: 8, scope: !2830, inlinedAt: !2935)
!2938 = !DILocation(line: 42, column: 15, scope: !2830, inlinedAt: !2935)
!2939 = !DILocation(line: 42, column: 10, scope: !2830, inlinedAt: !2935)
!2940 = !DILocation(line: 43, column: 5, scope: !2830, inlinedAt: !2935)
!2941 = !DILocation(line: 218, column: 3, scope: !2930)
!2942 = distinct !DISubprogram(name: "x2realloc", scope: !395, file: !395, line: 74, type: !2943, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!67, !67, !401}
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "p", arg: 1, scope: !2942, file: !395, line: 74, type: !67)
!2947 = !DILocalVariable(name: "pn", arg: 2, scope: !2942, file: !395, line: 74, type: !401)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocation(line: 0, scope: !398, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 76, column: 10, scope: !2942)
!2951 = !DILocation(line: 176, column: 14, scope: !398, inlinedAt: !2950)
!2952 = !DILocation(line: 178, column: 9, scope: !2892, inlinedAt: !2950)
!2953 = !DILocation(line: 178, column: 7, scope: !398, inlinedAt: !2950)
!2954 = !DILocation(line: 180, column: 13, scope: !2895, inlinedAt: !2950)
!2955 = !DILocation(line: 180, column: 11, scope: !2896, inlinedAt: !2950)
!2956 = !DILocation(line: 191, column: 11, scope: !2904, inlinedAt: !2950)
!2957 = !DILocation(line: 191, column: 11, scope: !2896, inlinedAt: !2950)
!2958 = !DILocation(line: 206, column: 7, scope: !398, inlinedAt: !2950)
!2959 = !DILocation(line: 0, scope: !2856, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 207, column: 10, scope: !398, inlinedAt: !2950)
!2961 = !DILocation(line: 53, column: 10, scope: !2864, inlinedAt: !2960)
!2962 = !DILocation(line: 192, column: 9, scope: !2904, inlinedAt: !2950)
!2963 = !DILocation(line: 201, column: 11, scope: !2913, inlinedAt: !2950)
!2964 = !DILocation(line: 200, column: 11, scope: !2914, inlinedAt: !2950)
!2965 = !DILocation(line: 202, column: 9, scope: !2913, inlinedAt: !2950)
!2966 = !DILocation(line: 203, column: 14, scope: !2914, inlinedAt: !2950)
!2967 = !DILocation(line: 203, column: 18, scope: !2914, inlinedAt: !2950)
!2968 = !DILocation(line: 203, column: 9, scope: !2914, inlinedAt: !2950)
!2969 = !DILocation(line: 53, column: 8, scope: !2864, inlinedAt: !2960)
!2970 = !DILocation(line: 57, column: 7, scope: !2868, inlinedAt: !2960)
!2971 = !DILocation(line: 58, column: 7, scope: !2868, inlinedAt: !2960)
!2972 = !DILocation(line: 61, column: 7, scope: !2856, inlinedAt: !2960)
!2973 = !DILocation(line: 62, column: 8, scope: !2872, inlinedAt: !2960)
!2974 = !DILocation(line: 62, column: 13, scope: !2872, inlinedAt: !2960)
!2975 = !DILocation(line: 62, column: 10, scope: !2872, inlinedAt: !2960)
!2976 = !DILocation(line: 63, column: 5, scope: !2872, inlinedAt: !2960)
!2977 = !DILocation(line: 76, column: 3, scope: !2942)
!2978 = distinct !DISubprogram(name: "xzalloc", scope: !395, file: !395, line: 84, type: !2822, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2979)
!2979 = !{!2980}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2978, file: !395, line: 84, type: !69)
!2981 = !DILocation(line: 0, scope: !2978)
!2982 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !395, line: 93, type: !69)
!2983 = distinct !DISubprogram(name: "xcalloc", scope: !395, file: !395, line: 93, type: !2809, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2984)
!2984 = !{!2982, !2985, !2986}
!2985 = !DILocalVariable(name: "s", arg: 2, scope: !2983, file: !395, line: 93, type: !69)
!2986 = !DILocalVariable(name: "p", scope: !2983, file: !395, line: 95, type: !67)
!2987 = !DILocation(line: 0, scope: !2983, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 86, column: 10, scope: !2978)
!2989 = !DILocation(line: 100, column: 7, scope: !2990, inlinedAt: !2988)
!2990 = distinct !DILexicalBlock(scope: !2983, file: !395, line: 100, column: 7)
!2991 = !DILocation(line: 101, column: 7, scope: !2990, inlinedAt: !2988)
!2992 = !DILocation(line: 101, column: 18, scope: !2990, inlinedAt: !2988)
!2993 = !DILocation(line: 101, column: 16, scope: !2990, inlinedAt: !2988)
!2994 = !DILocation(line: 100, column: 7, scope: !2983, inlinedAt: !2988)
!2995 = !DILocation(line: 102, column: 5, scope: !2990, inlinedAt: !2988)
!2996 = !DILocation(line: 86, column: 3, scope: !2978)
!2997 = !DILocation(line: 0, scope: !2983)
!2998 = !DILocation(line: 100, column: 7, scope: !2990)
!2999 = !DILocation(line: 101, column: 7, scope: !2990)
!3000 = !DILocation(line: 101, column: 18, scope: !2990)
!3001 = !DILocation(line: 101, column: 16, scope: !2990)
!3002 = !DILocation(line: 100, column: 7, scope: !2983)
!3003 = !DILocation(line: 102, column: 5, scope: !2990)
!3004 = !DILocation(line: 103, column: 3, scope: !2983)
!3005 = distinct !DISubprogram(name: "xmemdup", scope: !395, file: !395, line: 111, type: !3006, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!67, !185, !69}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "p", arg: 1, scope: !3005, file: !395, line: 111, type: !185)
!3010 = !DILocalVariable(name: "s", arg: 2, scope: !3005, file: !395, line: 111, type: !69)
!3011 = !DILocation(line: 0, scope: !3005)
!3012 = !DILocation(line: 0, scope: !2821, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 113, column: 18, scope: !3005)
!3014 = !DILocation(line: 41, column: 13, scope: !2821, inlinedAt: !3013)
!3015 = !DILocation(line: 42, column: 8, scope: !2830, inlinedAt: !3013)
!3016 = !DILocation(line: 42, column: 15, scope: !2830, inlinedAt: !3013)
!3017 = !DILocation(line: 42, column: 10, scope: !2830, inlinedAt: !3013)
!3018 = !DILocation(line: 43, column: 5, scope: !2830, inlinedAt: !3013)
!3019 = !DILocalVariable(name: "__dest", arg: 1, scope: !3020, file: !1623, line: 31, type: !3023)
!3020 = distinct !DISubprogram(name: "memcpy", scope: !1623, file: !1623, line: 31, type: !3021, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3025)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!67, !3023, !3024, !69}
!3023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!3025 = !{!3019, !3026, !3027}
!3026 = !DILocalVariable(name: "__src", arg: 2, scope: !3020, file: !1623, line: 31, type: !3024)
!3027 = !DILocalVariable(name: "__len", arg: 3, scope: !3020, file: !1623, line: 31, type: !69)
!3028 = !DILocation(line: 0, scope: !3020, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 113, column: 10, scope: !3005)
!3030 = !DILocation(line: 34, column: 10, scope: !3020, inlinedAt: !3029)
!3031 = !DILocation(line: 113, column: 3, scope: !3005)
!3032 = distinct !DISubprogram(name: "xstrdup", scope: !395, file: !395, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3033)
!3033 = !{!3034}
!3034 = !DILocalVariable(name: "string", arg: 1, scope: !3032, file: !395, line: 119, type: !6)
!3035 = !DILocation(line: 0, scope: !3032)
!3036 = !DILocation(line: 121, column: 27, scope: !3032)
!3037 = !DILocation(line: 121, column: 43, scope: !3032)
!3038 = !DILocation(line: 0, scope: !3005, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 121, column: 10, scope: !3032)
!3040 = !DILocation(line: 0, scope: !2821, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 113, column: 18, scope: !3005, inlinedAt: !3039)
!3042 = !DILocation(line: 41, column: 13, scope: !2821, inlinedAt: !3041)
!3043 = !DILocation(line: 42, column: 8, scope: !2830, inlinedAt: !3041)
!3044 = !DILocation(line: 42, column: 15, scope: !2830, inlinedAt: !3041)
!3045 = !DILocation(line: 42, column: 10, scope: !2830, inlinedAt: !3041)
!3046 = !DILocation(line: 43, column: 5, scope: !2830, inlinedAt: !3041)
!3047 = !DILocation(line: 0, scope: !3020, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 113, column: 10, scope: !3005, inlinedAt: !3039)
!3049 = !DILocation(line: 34, column: 10, scope: !3020, inlinedAt: !3048)
!3050 = !DILocation(line: 121, column: 3, scope: !3032)
!3051 = distinct !DISubprogram(name: "xalloc_die", scope: !416, file: !416, line: 32, type: !250, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4)
!3052 = !DILocation(line: 34, column: 10, scope: !3051)
!3053 = !DILocation(line: 34, column: 33, scope: !3051)
!3054 = !DILocation(line: 34, column: 3, scope: !3051)
!3055 = !DILocation(line: 40, column: 3, scope: !3051)
!3056 = distinct !DISubprogram(name: "rpl_calloc", scope: !419, file: !419, line: 42, type: !2809, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3057)
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3056, file: !419, line: 42, type: !69)
!3059 = !DILocalVariable(name: "s", arg: 2, scope: !3056, file: !419, line: 42, type: !69)
!3060 = !DILocalVariable(name: "result", scope: !3056, file: !419, line: 44, type: !67)
!3061 = !DILocalVariable(name: "bytes", scope: !3062, file: !419, line: 56, type: !69)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !419, line: 53, column: 5)
!3063 = distinct !DILexicalBlock(scope: !3056, file: !419, line: 47, column: 7)
!3064 = !DILocation(line: 0, scope: !3056)
!3065 = !DILocation(line: 47, column: 9, scope: !3063)
!3066 = !DILocation(line: 47, column: 19, scope: !3063)
!3067 = !DILocation(line: 47, column: 14, scope: !3063)
!3068 = !DILocation(line: 0, scope: !3062)
!3069 = !DILocation(line: 57, column: 21, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !419, line: 57, column: 11)
!3071 = !DILocation(line: 57, column: 11, scope: !3062)
!3072 = !DILocation(line: 59, column: 11, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3070, file: !419, line: 58, column: 9)
!3074 = !DILocation(line: 59, column: 17, scope: !3073)
!3075 = !DILocation(line: 65, column: 12, scope: !3056)
!3076 = !DILocation(line: 72, column: 3, scope: !3056)
!3077 = !DILocation(line: 73, column: 1, scope: !3056)
!3078 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !422, file: !422, line: 86, type: !3079, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3085)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!69, !3081, !6, !69, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1364, line: 6, baseType: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !428)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092}
!3086 = !DILocalVariable(name: "pwc", arg: 1, scope: !3078, file: !422, line: 86, type: !3081)
!3087 = !DILocalVariable(name: "s", arg: 2, scope: !3078, file: !422, line: 86, type: !6)
!3088 = !DILocalVariable(name: "n", arg: 3, scope: !3078, file: !422, line: 86, type: !69)
!3089 = !DILocalVariable(name: "ps", arg: 4, scope: !3078, file: !422, line: 86, type: !3082)
!3090 = !DILocalVariable(name: "ret", scope: !3078, file: !422, line: 88, type: !69)
!3091 = !DILocalVariable(name: "wc", scope: !3078, file: !422, line: 89, type: !1368)
!3092 = !DILocalVariable(name: "uc", scope: !3093, file: !422, line: 156, type: !1241)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !422, line: 155, column: 5)
!3094 = distinct !DILexicalBlock(scope: !3078, file: !422, line: 154, column: 7)
!3095 = !DILocation(line: 0, scope: !3078)
!3096 = !DILocation(line: 89, column: 3, scope: !3078)
!3097 = !DILocation(line: 105, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3078, file: !422, line: 105, column: 7)
!3099 = !DILocation(line: 105, column: 7, scope: !3078)
!3100 = !DILocation(line: 145, column: 9, scope: !3078)
!3101 = !DILocation(line: 154, column: 19, scope: !3094)
!3102 = !DILocation(line: 154, column: 31, scope: !3094)
!3103 = !DILocation(line: 154, column: 26, scope: !3094)
!3104 = !DILocation(line: 154, column: 41, scope: !3094)
!3105 = !DILocation(line: 154, column: 7, scope: !3078)
!3106 = !DILocation(line: 156, column: 26, scope: !3093)
!3107 = !DILocation(line: 0, scope: !3093)
!3108 = !DILocation(line: 157, column: 14, scope: !3093)
!3109 = !DILocation(line: 157, column: 12, scope: !3093)
!3110 = !DILocation(line: 163, column: 1, scope: !3078)
!3111 = distinct !DISubprogram(name: "close_stream", scope: !441, file: !441, line: 56, type: !3112, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3116)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!18, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2684, line: 7, baseType: !448)
!3116 = !{!3117, !3118, !3120, !3121}
!3117 = !DILocalVariable(name: "stream", arg: 1, scope: !3111, file: !441, line: 56, type: !3114)
!3118 = !DILocalVariable(name: "some_pending", scope: !3111, file: !441, line: 58, type: !3119)
!3119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3120 = !DILocalVariable(name: "prev_fail", scope: !3111, file: !441, line: 59, type: !3119)
!3121 = !DILocalVariable(name: "fclose_fail", scope: !3111, file: !441, line: 60, type: !3119)
!3122 = !DILocation(line: 0, scope: !3111)
!3123 = !DILocation(line: 58, column: 30, scope: !3111)
!3124 = !DILocalVariable(name: "__stream", arg: 1, scope: !3125, file: !3126, line: 135, type: !3114)
!3125 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3126, file: !3126, line: 135, type: !3112, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3127)
!3126 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3127 = !{!3124}
!3128 = !DILocation(line: 0, scope: !3125, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 59, column: 27, scope: !3111)
!3130 = !DILocation(line: 137, column: 10, scope: !3125, inlinedAt: !3129)
!3131 = !{!3132, !1139, i64 0}
!3132 = !{!"_IO_FILE", !1139, i64 0, !1023, i64 8, !1023, i64 16, !1023, i64 24, !1023, i64 32, !1023, i64 40, !1023, i64 48, !1023, i64 56, !1023, i64 64, !1023, i64 72, !1023, i64 80, !1023, i64 88, !1023, i64 96, !1023, i64 104, !1139, i64 112, !1139, i64 116, !2126, i64 120, !1616, i64 128, !1024, i64 130, !1024, i64 131, !1023, i64 136, !2126, i64 144, !1023, i64 152, !1023, i64 160, !1023, i64 168, !1023, i64 176, !2126, i64 184, !1139, i64 192, !1024, i64 196}
!3133 = !DILocation(line: 59, column: 43, scope: !3111)
!3134 = !DILocation(line: 60, column: 29, scope: !3111)
!3135 = !DILocation(line: 60, column: 45, scope: !3111)
!3136 = !DILocation(line: 70, column: 17, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3111, file: !441, line: 70, column: 7)
!3138 = !DILocation(line: 58, column: 50, scope: !3111)
!3139 = !DILocation(line: 70, column: 33, scope: !3137)
!3140 = !DILocation(line: 70, column: 53, scope: !3137)
!3141 = !DILocation(line: 70, column: 59, scope: !3137)
!3142 = !DILocation(line: 70, column: 7, scope: !3111)
!3143 = !DILocation(line: 72, column: 11, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !441, line: 71, column: 5)
!3145 = !DILocation(line: 73, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3144, file: !441, line: 72, column: 11)
!3147 = !DILocation(line: 73, column: 15, scope: !3146)
!3148 = !DILocation(line: 78, column: 1, scope: !3111)
!3149 = distinct !DISubprogram(name: "hard_locale", scope: !480, file: !480, line: 27, type: !438, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3150)
!3150 = !{!3151, !3152}
!3151 = !DILocalVariable(name: "category", arg: 1, scope: !3149, file: !480, line: 27, type: !18)
!3152 = !DILocalVariable(name: "locale", scope: !3149, file: !480, line: 29, type: !3153)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3154)
!3154 = !{!3155}
!3155 = !DISubrange(count: 257)
!3156 = !DILocation(line: 0, scope: !3149)
!3157 = !DILocation(line: 29, column: 3, scope: !3149)
!3158 = !DILocation(line: 29, column: 8, scope: !3149)
!3159 = !DILocation(line: 31, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3149, file: !480, line: 31, column: 7)
!3161 = !DILocation(line: 31, column: 7, scope: !3149)
!3162 = !DILocation(line: 34, column: 12, scope: !3149)
!3163 = !DILocation(line: 34, column: 38, scope: !3149)
!3164 = !DILocation(line: 34, column: 41, scope: !3149)
!3165 = !DILocation(line: 34, column: 66, scope: !3149)
!3166 = !DILocation(line: 35, column: 1, scope: !3149)
!3167 = distinct !DISubprogram(name: "locale_charset", scope: !487, file: !487, line: 831, type: !240, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "codeset", scope: !3167, file: !487, line: 833, type: !6)
!3170 = !DILocation(line: 847, column: 13, scope: !3167)
!3171 = !DILocation(line: 0, scope: !3167)
!3172 = !DILocation(line: 911, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3167, file: !487, line: 911, column: 7)
!3174 = !DILocation(line: 911, column: 7, scope: !3167)
!3175 = !DILocation(line: 1070, column: 13, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !487, line: 1070, column: 13)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !487, line: 1060, column: 7)
!3178 = distinct !DILexicalBlock(scope: !3167, file: !487, line: 1019, column: 3)
!3179 = !DILocation(line: 1070, column: 24, scope: !3176)
!3180 = !DILocation(line: 1070, column: 13, scope: !3177)
!3181 = !DILocation(line: 1158, column: 3, scope: !3167)
!3182 = distinct !DISubprogram(name: "setlocale_null_r", scope: !880, file: !880, line: 269, type: !3183, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!18, !18, !25, !69}
!3185 = !{!3186, !3187, !3188}
!3186 = !DILocalVariable(name: "category", arg: 1, scope: !3182, file: !880, line: 269, type: !18)
!3187 = !DILocalVariable(name: "buf", arg: 2, scope: !3182, file: !880, line: 269, type: !25)
!3188 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3182, file: !880, line: 269, type: !69)
!3189 = !DILocation(line: 0, scope: !3182)
!3190 = !DILocalVariable(name: "category", arg: 1, scope: !3191, file: !880, line: 91, type: !18)
!3191 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !880, file: !880, line: 91, type: !3183, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3192)
!3192 = !{!3190, !3193, !3194, !3195, !3196}
!3193 = !DILocalVariable(name: "buf", arg: 2, scope: !3191, file: !880, line: 91, type: !25)
!3194 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3191, file: !880, line: 91, type: !69)
!3195 = !DILocalVariable(name: "result", scope: !3191, file: !880, line: 140, type: !6)
!3196 = !DILocalVariable(name: "length", scope: !3197, file: !880, line: 154, type: !69)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !880, line: 153, column: 5)
!3198 = distinct !DILexicalBlock(scope: !3191, file: !880, line: 142, column: 7)
!3199 = !DILocation(line: 0, scope: !3191, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 274, column: 10, scope: !3182)
!3201 = !DILocalVariable(name: "category", arg: 1, scope: !3202, file: !880, line: 60, type: !18)
!3202 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !880, file: !880, line: 60, type: !3203, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!6, !18}
!3205 = !{!3201, !3206}
!3206 = !DILocalVariable(name: "result", scope: !3202, file: !880, line: 62, type: !6)
!3207 = !DILocation(line: 0, scope: !3202, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 140, column: 24, scope: !3191, inlinedAt: !3200)
!3209 = !DILocation(line: 62, column: 24, scope: !3202, inlinedAt: !3208)
!3210 = !DILocation(line: 142, column: 14, scope: !3198, inlinedAt: !3200)
!3211 = !DILocation(line: 142, column: 7, scope: !3191, inlinedAt: !3200)
!3212 = !DILocation(line: 145, column: 19, scope: !3213, inlinedAt: !3200)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !880, line: 145, column: 11)
!3214 = distinct !DILexicalBlock(scope: !3198, file: !880, line: 143, column: 5)
!3215 = !DILocation(line: 145, column: 11, scope: !3214, inlinedAt: !3200)
!3216 = !DILocation(line: 149, column: 16, scope: !3213, inlinedAt: !3200)
!3217 = !DILocation(line: 149, column: 9, scope: !3213, inlinedAt: !3200)
!3218 = !DILocation(line: 154, column: 23, scope: !3197, inlinedAt: !3200)
!3219 = !DILocation(line: 0, scope: !3197, inlinedAt: !3200)
!3220 = !DILocation(line: 155, column: 18, scope: !3221, inlinedAt: !3200)
!3221 = distinct !DILexicalBlock(scope: !3197, file: !880, line: 155, column: 11)
!3222 = !DILocation(line: 155, column: 11, scope: !3197, inlinedAt: !3200)
!3223 = !DILocation(line: 157, column: 39, scope: !3224, inlinedAt: !3200)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !880, line: 156, column: 9)
!3225 = !DILocalVariable(name: "__dest", arg: 1, scope: !3226, file: !1623, line: 31, type: !3023)
!3226 = distinct !DISubprogram(name: "memcpy", scope: !1623, file: !1623, line: 31, type: !3021, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3227)
!3227 = !{!3225, !3228, !3229}
!3228 = !DILocalVariable(name: "__src", arg: 2, scope: !3226, file: !1623, line: 31, type: !3024)
!3229 = !DILocalVariable(name: "__len", arg: 3, scope: !3226, file: !1623, line: 31, type: !69)
!3230 = !DILocation(line: 0, scope: !3226, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 157, column: 11, scope: !3224, inlinedAt: !3200)
!3232 = !DILocation(line: 34, column: 10, scope: !3226, inlinedAt: !3231)
!3233 = !DILocation(line: 158, column: 11, scope: !3224, inlinedAt: !3200)
!3234 = !DILocation(line: 162, column: 23, scope: !3235, inlinedAt: !3200)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !880, line: 162, column: 15)
!3236 = distinct !DILexicalBlock(scope: !3221, file: !880, line: 161, column: 9)
!3237 = !DILocation(line: 162, column: 15, scope: !3236, inlinedAt: !3200)
!3238 = !DILocation(line: 167, column: 44, scope: !3239, inlinedAt: !3200)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !880, line: 163, column: 13)
!3240 = !DILocation(line: 0, scope: !3226, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 167, column: 15, scope: !3239, inlinedAt: !3200)
!3242 = !DILocation(line: 34, column: 10, scope: !3226, inlinedAt: !3241)
!3243 = !DILocation(line: 168, column: 15, scope: !3239, inlinedAt: !3200)
!3244 = !DILocation(line: 168, column: 32, scope: !3239, inlinedAt: !3200)
!3245 = !DILocation(line: 169, column: 13, scope: !3239, inlinedAt: !3200)
!3246 = !DILocation(line: 0, scope: !3198, inlinedAt: !3200)
!3247 = !DILocation(line: 274, column: 3, scope: !3182)
!3248 = distinct !DISubprogram(name: "setlocale_null", scope: !880, file: !880, line: 301, type: !3203, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3249)
!3249 = !{!3250}
!3250 = !DILocalVariable(name: "category", arg: 1, scope: !3248, file: !880, line: 301, type: !18)
!3251 = !DILocation(line: 0, scope: !3248)
!3252 = !DILocation(line: 0, scope: !3202, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 304, column: 10, scope: !3248)
!3254 = !DILocation(line: 62, column: 24, scope: !3202, inlinedAt: !3253)
!3255 = !DILocation(line: 304, column: 3, scope: !3248)
!3256 = distinct !DISubprogram(name: "rpl_fclose", scope: !883, file: !883, line: 58, type: !3257, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3261)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!18, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2684, line: 7, baseType: !889)
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DILocalVariable(name: "fp", arg: 1, scope: !3256, file: !883, line: 58, type: !3259)
!3263 = !DILocalVariable(name: "saved_errno", scope: !3256, file: !883, line: 60, type: !18)
!3264 = !DILocalVariable(name: "fd", scope: !3256, file: !883, line: 61, type: !18)
!3265 = !DILocalVariable(name: "result", scope: !3256, file: !883, line: 62, type: !18)
!3266 = !DILocation(line: 0, scope: !3256)
!3267 = !DILocation(line: 65, column: 8, scope: !3256)
!3268 = !DILocation(line: 66, column: 10, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3256, file: !883, line: 66, column: 7)
!3270 = !DILocation(line: 66, column: 7, scope: !3256)
!3271 = !DILocation(line: 67, column: 12, scope: !3269)
!3272 = !DILocation(line: 67, column: 5, scope: !3269)
!3273 = !DILocation(line: 72, column: 9, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3256, file: !883, line: 72, column: 7)
!3275 = !DILocation(line: 72, column: 23, scope: !3274)
!3276 = !DILocation(line: 72, column: 33, scope: !3274)
!3277 = !DILocation(line: 72, column: 26, scope: !3274)
!3278 = !DILocation(line: 72, column: 59, scope: !3274)
!3279 = !DILocation(line: 73, column: 7, scope: !3274)
!3280 = !DILocation(line: 73, column: 10, scope: !3274)
!3281 = !DILocation(line: 72, column: 7, scope: !3256)
!3282 = !DILocation(line: 100, column: 12, scope: !3256)
!3283 = !DILocation(line: 105, column: 7, scope: !3256)
!3284 = !DILocation(line: 74, column: 19, scope: !3274)
!3285 = !DILocation(line: 105, column: 19, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3256, file: !883, line: 105, column: 7)
!3287 = !DILocation(line: 107, column: 13, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !883, line: 106, column: 5)
!3289 = !DILocation(line: 109, column: 5, scope: !3288)
!3290 = !DILocation(line: 112, column: 1, scope: !3256)
!3291 = distinct !DISubprogram(name: "rpl_fflush", scope: !927, file: !927, line: 129, type: !3292, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !3296)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!18, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2684, line: 7, baseType: !933)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "stream", arg: 1, scope: !3291, file: !927, line: 129, type: !3294)
!3298 = !DILocation(line: 0, scope: !3291)
!3299 = !DILocation(line: 150, column: 14, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3291, file: !927, line: 150, column: 7)
!3301 = !DILocation(line: 150, column: 22, scope: !3300)
!3302 = !DILocation(line: 150, column: 27, scope: !3300)
!3303 = !DILocation(line: 150, column: 7, scope: !3291)
!3304 = !DILocation(line: 151, column: 12, scope: !3300)
!3305 = !DILocation(line: 151, column: 5, scope: !3300)
!3306 = !DILocalVariable(name: "fp", arg: 1, scope: !3307, file: !927, line: 41, type: !3294)
!3307 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !927, file: !927, line: 41, type: !3308, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3294}
!3310 = !{!3306}
!3311 = !DILocation(line: 0, scope: !3307, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 156, column: 3, scope: !3291)
!3313 = !DILocation(line: 43, column: 11, scope: !3314, inlinedAt: !3312)
!3314 = distinct !DILexicalBlock(scope: !3307, file: !927, line: 43, column: 7)
!3315 = !DILocation(line: 43, column: 18, scope: !3314, inlinedAt: !3312)
!3316 = !DILocation(line: 43, column: 7, scope: !3307, inlinedAt: !3312)
!3317 = !DILocation(line: 45, column: 5, scope: !3314, inlinedAt: !3312)
!3318 = !DILocation(line: 158, column: 10, scope: !3291)
!3319 = !DILocation(line: 158, column: 3, scope: !3291)
!3320 = !DILocation(line: 235, column: 1, scope: !3291)
!3321 = distinct !DISubprogram(name: "rpl_fseeko", scope: !968, file: !968, line: 28, type: !3322, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3327)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!18, !3324, !3326, !18}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2684, line: 7, baseType: !974)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !105, line: 63, baseType: !43)
!3327 = !{!3328, !3329, !3330, !3331}
!3328 = !DILocalVariable(name: "fp", arg: 1, scope: !3321, file: !968, line: 28, type: !3324)
!3329 = !DILocalVariable(name: "offset", arg: 2, scope: !3321, file: !968, line: 28, type: !3326)
!3330 = !DILocalVariable(name: "whence", arg: 3, scope: !3321, file: !968, line: 28, type: !18)
!3331 = !DILocalVariable(name: "pos", scope: !3332, file: !968, line: 117, type: !3326)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !968, line: 113, column: 5)
!3333 = distinct !DILexicalBlock(scope: !3321, file: !968, line: 52, column: 7)
!3334 = !DILocation(line: 0, scope: !3321)
!3335 = !DILocation(line: 52, column: 11, scope: !3333)
!3336 = !{!3132, !1023, i64 16}
!3337 = !DILocation(line: 52, column: 31, scope: !3333)
!3338 = !{!3132, !1023, i64 8}
!3339 = !DILocation(line: 52, column: 24, scope: !3333)
!3340 = !DILocation(line: 53, column: 7, scope: !3333)
!3341 = !DILocation(line: 53, column: 14, scope: !3333)
!3342 = !{!3132, !1023, i64 40}
!3343 = !DILocation(line: 53, column: 35, scope: !3333)
!3344 = !{!3132, !1023, i64 32}
!3345 = !DILocation(line: 53, column: 28, scope: !3333)
!3346 = !DILocation(line: 54, column: 7, scope: !3333)
!3347 = !DILocation(line: 54, column: 14, scope: !3333)
!3348 = !{!3132, !1023, i64 72}
!3349 = !DILocation(line: 54, column: 28, scope: !3333)
!3350 = !DILocation(line: 52, column: 7, scope: !3321)
!3351 = !DILocation(line: 117, column: 26, scope: !3332)
!3352 = !DILocation(line: 117, column: 19, scope: !3332)
!3353 = !DILocation(line: 0, scope: !3332)
!3354 = !DILocation(line: 118, column: 15, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3332, file: !968, line: 118, column: 11)
!3356 = !DILocation(line: 118, column: 11, scope: !3332)
!3357 = !DILocation(line: 129, column: 11, scope: !3332)
!3358 = !DILocation(line: 129, column: 18, scope: !3332)
!3359 = !DILocation(line: 130, column: 11, scope: !3332)
!3360 = !DILocation(line: 130, column: 19, scope: !3332)
!3361 = !{!3132, !2126, i64 144}
!3362 = !DILocation(line: 161, column: 7, scope: !3332)
!3363 = !DILocation(line: 163, column: 10, scope: !3321)
!3364 = !DILocation(line: 163, column: 3, scope: !3321)
!3365 = !DILocation(line: 164, column: 1, scope: !3321)
