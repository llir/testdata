; ModuleID = 'coreutils-8.32/src/true.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1018, metadata !DIExpression()), !dbg !1019
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1020
  %3 = load i8*, i8** @program_name, align 8, !dbg !1020, !tbaa !1021
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #19, !dbg !1020
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1025
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #19, !dbg !1025
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1026
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1026, !tbaa !1021
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8), !dbg !1026
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1027
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1027, !tbaa !1021
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !1027
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1028
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !1028
  tail call fastcc void @emit_ancillary_info(), !dbg !1029
  tail call void @exit(i32 %0) #21, !dbg !1030
  unreachable, !dbg !1030
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !297 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #5 !dbg !1031 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !1034, metadata !DIExpression()), !dbg !1048
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1049
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !1035, metadata !DIExpression()), !dbg !1050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !1050
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !1045, metadata !DIExpression()), !dbg !1048
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !1051
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !1045, metadata !DIExpression()), !dbg !1048
  br label %4, !dbg !1052

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !1045, metadata !DIExpression()), !dbg !1048
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %5) #22, !dbg !1053
  %8 = icmp eq i32 %7, 0, !dbg !1053
  br i1 %8, label %14, label %9, !dbg !1052

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !1045, metadata !DIExpression()), !dbg !1048
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !1055
  %12 = load i8*, i8** %11, align 8, !dbg !1055, !tbaa !1056
  %13 = icmp eq i8* %12, null, !dbg !1058
  br i1 %13, label %14, label %4, !dbg !1059, !llvm.loop !1060

14:                                               ; preds = %9, %4
  %15 = phi %struct.infomap* [ %10, %9 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1045, metadata !DIExpression()), !dbg !1048
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !1061
  %17 = load i8*, i8** %16, align 8, !dbg !1061, !tbaa !1063
  %18 = icmp eq i8* %17, null, !dbg !1064
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %17, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %19, metadata !1044, metadata !DIExpression()), !dbg !1048
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #19, !dbg !1066
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #19, !dbg !1066
  %22 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %22, metadata !1047, metadata !DIExpression()), !dbg !1048
  %23 = icmp eq i8* %22, null, !dbg !1068
  br i1 %23, label %31, label %24, !dbg !1070

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #22, !dbg !1071
  %26 = icmp eq i32 %25, 0, !dbg !1071
  br i1 %26, label %31, label %27, !dbg !1072

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #19, !dbg !1073
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !1021
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1073
  br label %31, !dbg !1075

31:                                               ; preds = %24, %14, %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #19, !dbg !1076
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !1076
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #19, !dbg !1077
  %35 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !1077
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1077
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #19, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1078
  ret void, !dbg !1078
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
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !1079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1084, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8** %1, metadata !1085, metadata !DIExpression()), !dbg !1086
  %3 = icmp eq i32 %0, 2, !dbg !1087
  br i1 %3, label %4, label %21, !dbg !1089

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !1090, !tbaa !1021
  tail call void @set_program_name(i8* %5) #19, !dbg !1092
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !1093
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1094
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !1095
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1096
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1097
  %11 = load i8*, i8** %10, align 8, !dbg !1097, !tbaa !1021
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #22, !dbg !1097
  %13 = icmp eq i32 %12, 0, !dbg !1097
  br i1 %13, label %14, label %15, !dbg !1099

14:                                               ; preds = %4
  tail call void @usage(i32 0) #23, !dbg !1100
  unreachable, !dbg !1100

15:                                               ; preds = %4
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #22, !dbg !1101
  %17 = icmp eq i32 %16, 0, !dbg !1101
  br i1 %17, label %18, label %21, !dbg !1103

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104, !tbaa !1021
  %20 = load i8*, i8** @Version, align 8, !dbg !1105, !tbaa !1021
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #19, !dbg !1106
  br label %21, !dbg !1106

21:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !1107
}

; Function Attrs: nounwind
declare !dbg !340 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !343 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !344 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1110, metadata !DIExpression()), !dbg !1111
  store i8* %0, i8** @file_name, align 8, !dbg !1112, !tbaa !1021
  ret void, !dbg !1113
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1114 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1120, !tbaa !1121
  ret void, !dbg !1123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !1124 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !1021
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !1130
  %3 = icmp eq i32 %2, 0, !dbg !1131
  br i1 %3, label %22, label %4, !dbg !1132

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1133, !tbaa !1121, !range !1134
  %6 = icmp eq i8 %5, 0, !dbg !1133
  br i1 %6, label %11, label %7, !dbg !1135

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1136
  %9 = load i32, i32* %8, align 4, !dbg !1136, !tbaa !1137
  %10 = icmp eq i32 %9, 32, !dbg !1139
  br i1 %10, label %22, label %11, !dbg !1140

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #19, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %12, metadata !1126, metadata !DIExpression()), !dbg !1142
  %13 = load i8*, i8** @file_name, align 8, !dbg !1143, !tbaa !1021
  %14 = icmp eq i8* %13, null, !dbg !1143
  %15 = tail call i32* @__errno_location() #24, !dbg !1145
  %16 = load i32, i32* %15, align 4, !dbg !1145, !tbaa !1137
  br i1 %14, label %19, label %17, !dbg !1146

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !1147
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !1148
  br label %20, !dbg !1148

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #19, !dbg !1149
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1150, !tbaa !1137
  tail call void @_exit(i32 %21) #21, !dbg !1151
  unreachable, !dbg !1151

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1152, !tbaa !1021
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !1154
  %25 = icmp eq i32 %24, 0, !dbg !1155
  br i1 %25, label %28, label %26, !dbg !1156

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1157, !tbaa !1137
  tail call void @_exit(i32 %27) #21, !dbg !1158
  unreachable, !dbg !1158

28:                                               ; preds = %22
  ret void, !dbg !1159
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !1160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1162, metadata !DIExpression()), !dbg !1165
  %2 = icmp eq i8* %0, null, !dbg !1166
  br i1 %2, label %3, label %6, !dbg !1168

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1169, !tbaa !1021
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1171
  tail call void @abort() #21, !dbg !1172
  unreachable, !dbg !1172

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %7, metadata !1163, metadata !DIExpression()), !dbg !1165
  %8 = icmp eq i8* %7, null, !dbg !1174
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1175
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %10, metadata !1164, metadata !DIExpression()), !dbg !1165
  %11 = ptrtoint i8* %10 to i64, !dbg !1176
  %12 = ptrtoint i8* %0 to i64, !dbg !1176
  %13 = sub i64 %11, %12, !dbg !1176
  %14 = icmp sgt i64 %13, 6, !dbg !1178
  br i1 %14, label %15, label %24, !dbg !1179

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1180
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #22, !dbg !1181
  %18 = icmp eq i32 %17, 0, !dbg !1182
  br i1 %18, label %19, label %24, !dbg !1183

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1162, metadata !DIExpression()), !dbg !1165
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #22, !dbg !1184
  %21 = icmp eq i32 %20, 0, !dbg !1187
  br i1 %21, label %22, label %24, !dbg !1188

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %23, metadata !1162, metadata !DIExpression()), !dbg !1165
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1191, !tbaa !1021
  br label %24, !dbg !1192

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1162, metadata !DIExpression()), !dbg !1165
  store i8* %25, i8** @program_name, align 8, !dbg !1193, !tbaa !1021
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1194, !tbaa !1021
  ret void, !dbg !1195
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !1196 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  %2 = tail call i32* @__errno_location() #24, !dbg !1205
  %3 = load i32, i32* %2, align 4, !dbg !1205, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %3, metadata !1202, metadata !DIExpression()), !dbg !1204
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1206
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1206
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1206
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !1207
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i32 %3, i32* %2, align 4, !dbg !1208, !tbaa !1137
  ret %struct.quoting_options* %8, !dbg !1209
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1210 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1214, metadata !DIExpression()), !dbg !1215
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1216
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1216
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1217
  %5 = load i32, i32* %4, align 8, !dbg !1217, !tbaa !1218
  ret i32 %5, !dbg !1220
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1221 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1225, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %1, metadata !1226, metadata !DIExpression()), !dbg !1227
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1228
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1228
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1229
  store i32 %1, i32* %5, align 8, !dbg !1230, !tbaa !1218
  ret void, !dbg !1231
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1232 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1236, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %1, metadata !1237, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %2, metadata !1238, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %1, metadata !1239, metadata !DIExpression()), !dbg !1245
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1246
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1246
  %6 = lshr i8 %1, 5, !dbg !1247
  %7 = zext i8 %6 to i64, !dbg !1247
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1248
  call void @llvm.dbg.value(metadata i32* %8, metadata !1241, metadata !DIExpression()), !dbg !1245
  %9 = and i8 %1, 31, !dbg !1249
  %10 = zext i8 %9 to i32, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %10, metadata !1243, metadata !DIExpression()), !dbg !1245
  %11 = load i32, i32* %8, align 4, !dbg !1250, !tbaa !1137
  %12 = lshr i32 %11, %10, !dbg !1251
  %13 = and i32 %12, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %13, metadata !1244, metadata !DIExpression()), !dbg !1245
  %14 = and i32 %2, 1, !dbg !1253
  %15 = xor i32 %13, %14, !dbg !1254
  %16 = shl i32 %15, %10, !dbg !1255
  %17 = xor i32 %16, %11, !dbg !1256
  store i32 %17, i32* %8, align 4, !dbg !1256, !tbaa !1137
  ret i32 %13, !dbg !1257
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1258 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1262, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %1, metadata !1263, metadata !DIExpression()), !dbg !1265
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1266
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1262, metadata !DIExpression()), !dbg !1265
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1269
  %6 = load i32, i32* %5, align 4, !dbg !1269, !tbaa !1270
  call void @llvm.dbg.value(metadata i32 %6, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i32 %1, i32* %5, align 4, !dbg !1271, !tbaa !1270
  ret i32 %6, !dbg !1272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !1273 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %1, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %2, metadata !1279, metadata !DIExpression()), !dbg !1280
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1281
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1277, metadata !DIExpression()), !dbg !1280
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1284
  store i32 10, i32* %6, align 8, !dbg !1285, !tbaa !1218
  %7 = icmp ne i8* %1, null, !dbg !1286
  %8 = icmp ne i8* %2, null, !dbg !1288
  %9 = and i1 %7, %8, !dbg !1289
  br i1 %9, label %11, label %10, !dbg !1289

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !1290
  unreachable, !dbg !1290

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1291
  store i8* %1, i8** %12, align 8, !dbg !1292, !tbaa !1293
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1294
  store i8* %2, i8** %13, align 8, !dbg !1295, !tbaa !1296
  ret void, !dbg !1297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !1298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1302, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %1, metadata !1303, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8* %2, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %3, metadata !1305, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1306, metadata !DIExpression()), !dbg !1310
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1311
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1307, metadata !DIExpression()), !dbg !1310
  %8 = tail call i32* @__errno_location() #24, !dbg !1312
  %9 = load i32, i32* %8, align 4, !dbg !1312, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %9, metadata !1308, metadata !DIExpression()), !dbg !1310
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1313
  %11 = load i32, i32* %10, align 8, !dbg !1313, !tbaa !1218
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1314
  %13 = load i32, i32* %12, align 4, !dbg !1314, !tbaa !1270
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1315
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1316
  %16 = load i8*, i8** %15, align 8, !dbg !1316, !tbaa !1293
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1317
  %18 = load i8*, i8** %17, align 8, !dbg !1317, !tbaa !1296
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %19, metadata !1309, metadata !DIExpression()), !dbg !1310
  store i32 %9, i32* %8, align 4, !dbg !1319, !tbaa !1137
  ret i64 %19, !dbg !1320
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !1321 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1327, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %1, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %4, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %5, metadata !1332, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32* %6, metadata !1333, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %7, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %8, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* null, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1341, metadata !DIExpression()), !dbg !1385
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !1386
  %14 = icmp eq i64 %13, 1, !dbg !1387
  call void @llvm.dbg.value(metadata i1 %14, metadata !1342, metadata !DIExpression()), !dbg !1385
  %15 = lshr i32 %5, 1, !dbg !1388
  %16 = trunc i32 %15 to i8, !dbg !1388
  %17 = and i8 %16, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i8 %17, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1346, metadata !DIExpression()), !dbg !1385
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1389
  %19 = and i32 %5, 4, !dbg !1391
  %20 = icmp eq i32 %19, 0, !dbg !1391
  %21 = and i32 %5, 1, !dbg !1394
  %22 = icmp eq i32 %21, 0, !dbg !1394
  %23 = bitcast i64* %10 to i8*, !dbg !1397
  %24 = bitcast i32* %12 to i8*, !dbg !1398
  %25 = icmp eq i32* %6, null, !dbg !1399
  br label %26, !dbg !1401

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1402
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1403
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1404
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1405
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1385
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1406
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1407
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1408
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %38, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %37, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %36, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %35, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %34, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %33, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %32, metadata !1340, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %31, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %30, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %29, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %28, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %27, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1379), !dbg !1409
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
  ], !dbg !1410

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %35, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1385
  br label %92, !dbg !1411

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 5, metadata !1331, metadata !DIExpression()), !dbg !1385
  %42 = and i8 %35, 1, !dbg !1413
  %43 = icmp eq i8 %42, 0, !dbg !1413
  br i1 %43, label %44, label %92, !dbg !1411

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1415
  br i1 %45, label %92, label %46, !dbg !1418

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1415, !tbaa !1419
  br label %92, !dbg !1415

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %27), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %48, metadata !1334, metadata !DIExpression()), !dbg !1385
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), i32 %27), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %49, metadata !1335, metadata !DIExpression()), !dbg !1385
  br label %50, !dbg !1425

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %51, metadata !1334, metadata !DIExpression()), !dbg !1385
  %53 = and i8 %35, 1, !dbg !1426
  %54 = icmp eq i8 %53, 0, !dbg !1426
  br i1 %54, label %55, label %70, !dbg !1428

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1385
  %56 = load i8, i8* %51, align 1, !dbg !1429, !tbaa !1419
  %57 = icmp eq i8 %56, 0, !dbg !1432
  br i1 %57, label %70, label %58, !dbg !1432

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %61, metadata !1337, metadata !DIExpression()), !dbg !1385
  %62 = icmp ult i64 %61, %39, !dbg !1433
  br i1 %62, label %63, label %65, !dbg !1436

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1433
  store i8 %59, i8* %64, align 1, !dbg !1433, !tbaa !1419
  br label %65, !dbg !1433

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %66, metadata !1337, metadata !DIExpression()), !dbg !1385
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %67, metadata !1339, metadata !DIExpression()), !dbg !1385
  %68 = load i8, i8* %67, align 1, !dbg !1429, !tbaa !1419
  %69 = icmp eq i8 %68, 0, !dbg !1432
  br i1 %69, label %70, label %58, !dbg !1432, !llvm.loop !1438

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %71, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %52, metadata !1339, metadata !DIExpression()), !dbg !1385
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %72, metadata !1340, metadata !DIExpression()), !dbg !1385
  br label %92, !dbg !1442

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1385
  br label %74, !dbg !1443

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %75, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1343, metadata !DIExpression()), !dbg !1385
  br label %76, !dbg !1444

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1405
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %78, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %77, metadata !1341, metadata !DIExpression()), !dbg !1385
  %79 = and i8 %78, 1, !dbg !1445
  %80 = icmp eq i8 %79, 0, !dbg !1445
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1447
  br label %82, !dbg !1447

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1385
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1388
  call void @llvm.dbg.value(metadata i8 %84, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %83, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  %85 = and i8 %84, 1, !dbg !1448
  %86 = icmp eq i8 %85, 0, !dbg !1448
  br i1 %86, label %87, label %92, !dbg !1450

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1451
  br i1 %88, label %92, label %89, !dbg !1454

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1451, !tbaa !1419
  br label %92, !dbg !1451

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1343, metadata !DIExpression()), !dbg !1385
  br label %92, !dbg !1455

91:                                               ; preds = %26
  call void @abort() #21, !dbg !1456
  unreachable, !dbg !1456

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1440
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), %40 ], !dbg !1385
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1385
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1385
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %100, metadata !1343, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %98, metadata !1340, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %96, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %93, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1336, metadata !DIExpression()), !dbg !1385
  %101 = and i8 %99, 1, !dbg !1457
  %102 = icmp ne i8 %101, 0, !dbg !1457
  %103 = icmp ne i32 %93, 2, !dbg !1457
  %104 = and i1 %103, %102, !dbg !1457
  %105 = icmp ne i64 %98, 0, !dbg !1457
  %106 = and i1 %105, %104, !dbg !1457
  %107 = icmp ugt i64 %98, 1, !dbg !1457
  %108 = and i8 %100, 1, !dbg !1459
  %109 = icmp eq i8 %108, 0, !dbg !1459
  %110 = icmp eq i32 %93, 2, !dbg !1462
  %111 = or i1 %103, %109, !dbg !1464
  %112 = icmp ne i8 %108, 0, !dbg !1466
  %113 = and i1 %110, %112, !dbg !1466
  %114 = xor i1 %102, true, !dbg !1467
  %115 = xor i1 %104, true, !dbg !1399
  %116 = and i1 %109, %115, !dbg !1399
  %117 = or i1 %25, %116, !dbg !1399
  %118 = and i8 %99, %100, !dbg !1468
  %119 = and i8 %118, 1, !dbg !1468
  %120 = icmp ne i8 %119, 0, !dbg !1468
  %121 = and i1 %120, %105, !dbg !1468
  br label %122, !dbg !1470

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1471
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1440
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1402
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1406
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1407
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1408
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %126, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %123, metadata !1336, metadata !DIExpression()), !dbg !1385
  %131 = icmp eq i64 %126, -1, !dbg !1472
  br i1 %131, label %132, label %136, !dbg !1473

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1474
  %134 = load i8, i8* %133, align 1, !dbg !1474, !tbaa !1419
  %135 = icmp eq i8 %134, 0, !dbg !1475
  br i1 %135, label %581, label %138, !dbg !1476

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1477
  br i1 %137, label %581, label %138, !dbg !1476

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1352, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1478
  br i1 %106, label %139, label %154, !dbg !1479

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1480
  %141 = and i1 %107, %131, !dbg !1481
  br i1 %141, label %142, label %144, !dbg !1481

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %143, metadata !1330, metadata !DIExpression()), !dbg !1385
  br label %144, !dbg !1483

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1330, metadata !DIExpression()), !dbg !1385
  %146 = icmp ugt i64 %140, %145, !dbg !1484
  br i1 %146, label %154, label %147, !dbg !1485

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1486
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1487
  %150 = icmp ne i32 %149, 0, !dbg !1488
  %151 = or i1 %150, %109, !dbg !1489
  %152 = xor i1 %150, true, !dbg !1489
  %153 = zext i1 %152 to i8, !dbg !1489
  br i1 %151, label %154, label %639, !dbg !1489

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1478
  call void @llvm.dbg.value(metadata i8 %156, metadata !1352, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %155, metadata !1330, metadata !DIExpression()), !dbg !1385
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1490
  %158 = load i8, i8* %157, align 1, !dbg !1490, !tbaa !1419
  call void @llvm.dbg.value(metadata i8 %158, metadata !1347, metadata !DIExpression()), !dbg !1478
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
  ], !dbg !1491

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1492

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1493

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1478
  %162 = and i8 %127, 1, !dbg !1496
  %163 = icmp eq i8 %162, 0, !dbg !1496
  %164 = and i1 %110, %163, !dbg !1496
  br i1 %164, label %165, label %181, !dbg !1496

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1498
  br i1 %166, label %167, label %169, !dbg !1502

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1498
  store i8 39, i8* %168, align 1, !dbg !1498, !tbaa !1419
  br label %169, !dbg !1498

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %170, metadata !1337, metadata !DIExpression()), !dbg !1385
  %171 = icmp ult i64 %170, %130, !dbg !1503
  br i1 %171, label %172, label %174, !dbg !1506

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1503
  store i8 36, i8* %173, align 1, !dbg !1503, !tbaa !1419
  br label %174, !dbg !1503

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %175, metadata !1337, metadata !DIExpression()), !dbg !1385
  %176 = icmp ult i64 %175, %130, !dbg !1507
  br i1 %176, label %177, label %179, !dbg !1510

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1507
  store i8 39, i8* %178, align 1, !dbg !1507, !tbaa !1419
  br label %179, !dbg !1507

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %180, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %181, !dbg !1511

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1385
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %183, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %182, metadata !1337, metadata !DIExpression()), !dbg !1385
  %184 = icmp ult i64 %182, %130, !dbg !1512
  br i1 %184, label %185, label %187, !dbg !1515

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1512
  store i8 92, i8* %186, align 1, !dbg !1512, !tbaa !1419
  br label %187, !dbg !1512

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %188, metadata !1337, metadata !DIExpression()), !dbg !1385
  br i1 %103, label %189, label %463, !dbg !1516

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1518
  %191 = icmp ult i64 %190, %155, !dbg !1519
  br i1 %191, label %192, label %463, !dbg !1520

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1521
  %194 = load i8, i8* %193, align 1, !dbg !1521, !tbaa !1419
  %195 = add i8 %194, -48, !dbg !1522
  %196 = icmp ult i8 %195, 10, !dbg !1522
  br i1 %196, label %197, label %463, !dbg !1522

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1523
  br i1 %198, label %199, label %201, !dbg !1527

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1523
  store i8 48, i8* %200, align 1, !dbg !1523, !tbaa !1419
  br label %201, !dbg !1523

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %202, metadata !1337, metadata !DIExpression()), !dbg !1385
  %203 = icmp ult i64 %202, %130, !dbg !1528
  br i1 %203, label %204, label %206, !dbg !1531

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1528
  store i8 48, i8* %205, align 1, !dbg !1528, !tbaa !1419
  br label %206, !dbg !1528

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %207, metadata !1337, metadata !DIExpression()), !dbg !1385
  br label %463, !dbg !1532

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1533

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1534

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1535

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1536

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1537
  %214 = icmp ult i64 %213, %155, !dbg !1538
  br i1 %214, label %215, label %463, !dbg !1539

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1540
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1541
  %218 = load i8, i8* %217, align 1, !dbg !1541, !tbaa !1419
  %219 = icmp eq i8 %218, 63, !dbg !1542
  br i1 %219, label %220, label %463, !dbg !1543

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1544
  %222 = load i8, i8* %221, align 1, !dbg !1544, !tbaa !1419
  %223 = sext i8 %222 to i32, !dbg !1544
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
  ], !dbg !1545

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1546

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %213, metadata !1336, metadata !DIExpression()), !dbg !1385
  %226 = icmp ult i64 %124, %130, !dbg !1548
  br i1 %226, label %227, label %229, !dbg !1551

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1548
  store i8 63, i8* %228, align 1, !dbg !1548, !tbaa !1419
  br label %229, !dbg !1548

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %230, metadata !1337, metadata !DIExpression()), !dbg !1385
  %231 = icmp ult i64 %230, %130, !dbg !1552
  br i1 %231, label %232, label %234, !dbg !1555

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1552
  store i8 34, i8* %233, align 1, !dbg !1552, !tbaa !1419
  br label %234, !dbg !1552

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %235, metadata !1337, metadata !DIExpression()), !dbg !1385
  %236 = icmp ult i64 %235, %130, !dbg !1556
  br i1 %236, label %237, label %239, !dbg !1559

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1556
  store i8 34, i8* %238, align 1, !dbg !1556, !tbaa !1419
  br label %239, !dbg !1556

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %240, metadata !1337, metadata !DIExpression()), !dbg !1385
  %241 = icmp ult i64 %240, %130, !dbg !1560
  br i1 %241, label %242, label %244, !dbg !1563

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1560
  store i8 63, i8* %243, align 1, !dbg !1560, !tbaa !1419
  br label %244, !dbg !1560

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %245, metadata !1337, metadata !DIExpression()), !dbg !1385
  br label %463, !dbg !1564

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1351, metadata !DIExpression()), !dbg !1478
  br label %256, !dbg !1565

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1351, metadata !DIExpression()), !dbg !1478
  br label %256, !dbg !1566

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1351, metadata !DIExpression()), !dbg !1478
  br label %254, !dbg !1567

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1351, metadata !DIExpression()), !dbg !1478
  br label %254, !dbg !1568

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1351, metadata !DIExpression()), !dbg !1478
  br label %256, !dbg !1569

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1351, metadata !DIExpression()), !dbg !1478
  br i1 %110, label %252, label %253, !dbg !1570

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1571

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1574

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8 %255, metadata !1351, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.label(metadata !1380), !dbg !1576
  br i1 %111, label %256, label %625, !dbg !1577

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8 %257, metadata !1351, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.label(metadata !1381), !dbg !1579
  br i1 %102, label %488, label %463, !dbg !1580

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1581

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1582, !tbaa !1419
  %261 = icmp eq i8 %260, 0, !dbg !1583
  br i1 %261, label %262, label %463, !dbg !1584

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1585
  br i1 %263, label %264, label %463, !dbg !1587

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1478
  br label %265, !dbg !1588

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1478
  call void @llvm.dbg.value(metadata i8 %266, metadata !1354, metadata !DIExpression()), !dbg !1478
  br i1 %111, label %463, label %625, !dbg !1589

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1478
  br i1 %110, label %268, label %463, !dbg !1590

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1591

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1593
  %271 = icmp ne i64 %125, 0, !dbg !1595
  %272 = or i1 %271, %270, !dbg !1596
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1596
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %274, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %273, metadata !1338, metadata !DIExpression()), !dbg !1385
  %275 = icmp ult i64 %124, %274, !dbg !1597
  br i1 %275, label %276, label %278, !dbg !1600

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1597
  store i8 39, i8* %277, align 1, !dbg !1597, !tbaa !1419
  br label %278, !dbg !1597

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %279, metadata !1337, metadata !DIExpression()), !dbg !1385
  %280 = icmp ult i64 %279, %274, !dbg !1601
  br i1 %280, label %281, label %283, !dbg !1604

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1601
  store i8 92, i8* %282, align 1, !dbg !1601, !tbaa !1419
  br label %283, !dbg !1601

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %284, metadata !1337, metadata !DIExpression()), !dbg !1385
  %285 = icmp ult i64 %284, %274, !dbg !1605
  br i1 %285, label %286, label %288, !dbg !1608

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1605
  store i8 39, i8* %287, align 1, !dbg !1605, !tbaa !1419
  br label %288, !dbg !1605

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %289, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %463, !dbg !1609

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1610

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1611
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1612
  %293 = load i16*, i16** %292, align 8, !dbg !1612, !tbaa !1021
  %294 = zext i8 %158 to i64, !dbg !1612
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1612
  %296 = load i16, i16* %295, align 2, !dbg !1612, !tbaa !1614
  %297 = lshr i16 %296, 14, !dbg !1616
  %298 = trunc i16 %297 to i8, !dbg !1616
  %299 = and i8 %298, 1, !dbg !1616
  call void @llvm.dbg.value(metadata i8 %299, metadata !1358, metadata !DIExpression()), !dbg !1611
  br label %355, !dbg !1617

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1618
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1359, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %23, metadata !1620, metadata !DIExpression()) #19, !dbg !1628
  call void @llvm.dbg.value(metadata i32 0, metadata !1626, metadata !DIExpression()) #19, !dbg !1628
  call void @llvm.dbg.value(metadata i64 8, metadata !1627, metadata !DIExpression()) #19, !dbg !1628
  store i64 0, i64* %10, align 8, !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1358, metadata !DIExpression()), !dbg !1611
  %301 = icmp eq i64 %155, -1, !dbg !1631
  br i1 %301, label %302, label %304, !dbg !1633

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %303, metadata !1330, metadata !DIExpression()), !dbg !1385
  br label %304, !dbg !1635

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1478
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  br label %306, !dbg !1636

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1637
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %308, metadata !1358, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1639
  %309 = add i64 %307, %123, !dbg !1640
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1641
  %311 = sub i64 %305, %309, !dbg !1642
  call void @llvm.dbg.value(metadata i32* %12, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1398
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %312, metadata !1368, metadata !DIExpression()), !dbg !1398
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1644

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  %314 = icmp ugt i64 %305, %309, !dbg !1645
  br i1 %314, label %315, label %340, !dbg !1647

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1648
  br label %317, !dbg !1648

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1355, metadata !DIExpression()), !dbg !1611
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1649
  %321 = load i8, i8* %320, align 1, !dbg !1649, !tbaa !1419
  %322 = icmp eq i8 %321, 0, !dbg !1647
  br i1 %322, label %340, label %323, !dbg !1648

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %324, metadata !1355, metadata !DIExpression()), !dbg !1611
  %325 = add i64 %324, %123, !dbg !1651
  %326 = icmp ult i64 %325, %305, !dbg !1645
  br i1 %326, label %317, label %340, !dbg !1647, !llvm.loop !1652

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1653
  %329 = and i1 %113, %328, !dbg !1656
  call void @llvm.dbg.value(metadata i64 1, metadata !1369, metadata !DIExpression()), !dbg !1657
  br i1 %329, label %330, label %343, !dbg !1656

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1369, metadata !DIExpression()), !dbg !1657
  %332 = add i64 %331, %309, !dbg !1658
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1659
  %334 = load i8, i8* %333, align 1, !dbg !1659, !tbaa !1419
  %335 = sext i8 %334 to i32, !dbg !1659
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1660

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %337, metadata !1369, metadata !DIExpression()), !dbg !1657
  %338 = icmp eq i64 %337, %312, !dbg !1653
  br i1 %338, label %343, label %330, !dbg !1662, !llvm.loop !1663

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %308, metadata !1358, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %307, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %308, metadata !1358, metadata !DIExpression()), !dbg !1611
  br label %340, !dbg !1665

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1665
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1666, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %344, metadata !1365, metadata !DIExpression()), !dbg !1398
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !1668
  %346 = icmp eq i32 %345, 0, !dbg !1668
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1669
  call void @llvm.dbg.value(metadata i8 %347, metadata !1358, metadata !DIExpression()), !dbg !1611
  %348 = add i64 %312, %307, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %348, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %347, metadata !1358, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %348, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1665
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1671
  %350 = icmp eq i32 %349, 0, !dbg !1672
  br i1 %350, label %306, label %351, !dbg !1673, !llvm.loop !1674

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1676
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 2, metadata !1331, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %99, metadata !1341, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %305, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1665
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1676
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1478
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1677
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1677
  call void @llvm.dbg.value(metadata i8 %358, metadata !1358, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %357, metadata !1355, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %356, metadata !1330, metadata !DIExpression()), !dbg !1385
  %359 = and i8 %358, 1, !dbg !1678
  %360 = icmp ne i8 %359, 0, !dbg !1678
  call void @llvm.dbg.value(metadata i8 %359, metadata !1354, metadata !DIExpression()), !dbg !1478
  %361 = icmp ult i64 %357, 2, !dbg !1679
  %362 = or i1 %360, %114, !dbg !1680
  %363 = and i1 %361, %362, !dbg !1681
  br i1 %363, label %463, label %364, !dbg !1681

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %365, metadata !1376, metadata !DIExpression()), !dbg !1683
  br label %366, !dbg !1684

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1471
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1385
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1406
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1478
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1478
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1685
  call void @llvm.dbg.value(metadata i8 %372, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %371, metadata !1352, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %370, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %369, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %368, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %367, metadata !1336, metadata !DIExpression()), !dbg !1385
  br i1 %362, label %419, label %373, !dbg !1686

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1691

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1478
  %375 = and i8 %369, 1, !dbg !1694
  %376 = icmp eq i8 %375, 0, !dbg !1694
  %377 = and i1 %110, %376, !dbg !1694
  br i1 %377, label %378, label %394, !dbg !1694

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1696
  br i1 %379, label %380, label %382, !dbg !1700

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1696
  store i8 39, i8* %381, align 1, !dbg !1696, !tbaa !1419
  br label %382, !dbg !1696

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %383, metadata !1337, metadata !DIExpression()), !dbg !1385
  %384 = icmp ult i64 %383, %130, !dbg !1701
  br i1 %384, label %385, label %387, !dbg !1704

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1701
  store i8 36, i8* %386, align 1, !dbg !1701, !tbaa !1419
  br label %387, !dbg !1701

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %388, metadata !1337, metadata !DIExpression()), !dbg !1385
  %389 = icmp ult i64 %388, %130, !dbg !1705
  br i1 %389, label %390, label %392, !dbg !1708

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1705
  store i8 39, i8* %391, align 1, !dbg !1705, !tbaa !1419
  br label %392, !dbg !1705

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %393, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %394, !dbg !1709

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1385
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %396, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %395, metadata !1337, metadata !DIExpression()), !dbg !1385
  %397 = icmp ult i64 %395, %130, !dbg !1710
  br i1 %397, label %398, label %400, !dbg !1713

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1710
  store i8 92, i8* %399, align 1, !dbg !1710, !tbaa !1419
  br label %400, !dbg !1710

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %401, metadata !1337, metadata !DIExpression()), !dbg !1385
  %402 = icmp ult i64 %401, %130, !dbg !1714
  br i1 %402, label %403, label %407, !dbg !1717

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1714
  %405 = or i8 %404, 48, !dbg !1714
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1714
  store i8 %405, i8* %406, align 1, !dbg !1714, !tbaa !1419
  br label %407, !dbg !1714

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %408, metadata !1337, metadata !DIExpression()), !dbg !1385
  %409 = icmp ult i64 %408, %130, !dbg !1718
  br i1 %409, label %410, label %415, !dbg !1721

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1718
  %412 = and i8 %411, 7, !dbg !1718
  %413 = or i8 %412, 48, !dbg !1718
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1718
  store i8 %413, i8* %414, align 1, !dbg !1718, !tbaa !1419
  br label %415, !dbg !1718

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %416, metadata !1337, metadata !DIExpression()), !dbg !1385
  %417 = and i8 %370, 7, !dbg !1722
  %418 = or i8 %417, 48, !dbg !1723
  call void @llvm.dbg.value(metadata i8 %418, metadata !1347, metadata !DIExpression()), !dbg !1478
  br label %428, !dbg !1724

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1725
  %421 = icmp eq i8 %420, 0, !dbg !1725
  br i1 %421, label %428, label %422, !dbg !1727

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1728
  br i1 %423, label %424, label %426, !dbg !1732

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1728
  store i8 92, i8* %425, align 1, !dbg !1728, !tbaa !1419
  br label %426, !dbg !1728

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %427, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1352, metadata !DIExpression()), !dbg !1478
  br label %428, !dbg !1733

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1385
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1406
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1478
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1478
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1478
  call void @llvm.dbg.value(metadata i8 %433, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %432, metadata !1352, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %431, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %430, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %429, metadata !1337, metadata !DIExpression()), !dbg !1385
  %434 = add i64 %367, 1, !dbg !1734
  %435 = icmp ugt i64 %365, %434, !dbg !1736
  br i1 %435, label %436, label %526, !dbg !1737

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1738
  %438 = icmp ne i8 %437, 0, !dbg !1738
  %439 = and i8 %433, 1, !dbg !1738
  %440 = icmp eq i8 %439, 0, !dbg !1738
  %441 = and i1 %438, %440, !dbg !1738
  br i1 %441, label %442, label %453, !dbg !1738

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1741
  br i1 %443, label %444, label %446, !dbg !1745

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1741
  store i8 39, i8* %445, align 1, !dbg !1741, !tbaa !1419
  br label %446, !dbg !1741

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %447, metadata !1337, metadata !DIExpression()), !dbg !1385
  %448 = icmp ult i64 %447, %130, !dbg !1746
  br i1 %448, label %449, label %451, !dbg !1749

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1746
  store i8 39, i8* %450, align 1, !dbg !1746, !tbaa !1419
  br label %451, !dbg !1746

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %452, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %453, !dbg !1750

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1751
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %455, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %454, metadata !1337, metadata !DIExpression()), !dbg !1385
  %456 = icmp ult i64 %454, %130, !dbg !1752
  br i1 %456, label %457, label %459, !dbg !1755

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1752
  store i8 %431, i8* %458, align 1, !dbg !1752, !tbaa !1419
  br label %459, !dbg !1752

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %460, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %434, metadata !1336, metadata !DIExpression()), !dbg !1385
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1756
  %462 = load i8, i8* %461, align 1, !dbg !1756, !tbaa !1419
  call void @llvm.dbg.value(metadata i8 %462, metadata !1347, metadata !DIExpression()), !dbg !1478
  br label %366, !dbg !1757, !llvm.loop !1758

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1471
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1385
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1402
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1761
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1385
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1385
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1478
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1478
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1478
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %472, metadata !1354, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %471, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %156, metadata !1352, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %470, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %469, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %468, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %467, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %466, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %465, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %464, metadata !1336, metadata !DIExpression()), !dbg !1385
  br i1 %117, label %486, label %474, !dbg !1762

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1763
  %476 = zext i8 %475 to i64, !dbg !1763
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1764
  %478 = load i32, i32* %477, align 4, !dbg !1764, !tbaa !1137
  %479 = and i8 %470, 31, !dbg !1765
  %480 = zext i8 %479 to i32, !dbg !1765
  %481 = shl nuw i32 1, %480, !dbg !1766
  %482 = and i32 %478, %481, !dbg !1766
  %483 = icmp eq i32 %482, 0, !dbg !1766
  %484 = icmp eq i8 %156, 0, !dbg !1767
  %485 = and i1 %484, %483, !dbg !1768
  br i1 %485, label %526, label %488, !dbg !1768

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1767
  br i1 %487, label %526, label %488, !dbg !1769

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1770
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1385
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1402
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1761
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1406
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1407
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1478
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1478
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %496, metadata !1354, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %495, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %494, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %493, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %492, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %491, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %490, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %489, metadata !1336, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1382), !dbg !1771
  br i1 %109, label %498, label %629, !dbg !1772

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1478
  %499 = and i8 %493, 1, !dbg !1774
  %500 = icmp eq i8 %499, 0, !dbg !1774
  %501 = and i1 %110, %500, !dbg !1774
  br i1 %501, label %502, label %518, !dbg !1774

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1776
  br i1 %503, label %504, label %506, !dbg !1780

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1776
  store i8 39, i8* %505, align 1, !dbg !1776, !tbaa !1419
  br label %506, !dbg !1776

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %507, metadata !1337, metadata !DIExpression()), !dbg !1385
  %508 = icmp ult i64 %507, %497, !dbg !1781
  br i1 %508, label %509, label %511, !dbg !1784

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1781
  store i8 36, i8* %510, align 1, !dbg !1781, !tbaa !1419
  br label %511, !dbg !1781

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %512, metadata !1337, metadata !DIExpression()), !dbg !1385
  %513 = icmp ult i64 %512, %497, !dbg !1785
  br i1 %513, label %514, label %516, !dbg !1788

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1785
  store i8 39, i8* %515, align 1, !dbg !1785, !tbaa !1419
  br label %516, !dbg !1785

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %517, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %518, !dbg !1789

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1478
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %520, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %519, metadata !1337, metadata !DIExpression()), !dbg !1385
  %521 = icmp ult i64 %519, %497, !dbg !1790
  br i1 %521, label %522, label %524, !dbg !1793

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1790
  store i8 92, i8* %523, align 1, !dbg !1790, !tbaa !1419
  br label %524, !dbg !1790

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %525, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %536, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %535, metadata !1354, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %534, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %533, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %532, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %531, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %530, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %529, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %528, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %527, metadata !1336, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1383), !dbg !1794
  br label %553, !dbg !1795

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1770
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1385
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1402
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1761
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1406
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1407
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1798
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1478
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1478
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %535, metadata !1354, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %534, metadata !1353, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %533, metadata !1347, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %532, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %531, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %530, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %529, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %528, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %527, metadata !1336, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1383), !dbg !1794
  %537 = and i8 %531, 1, !dbg !1795
  %538 = icmp ne i8 %537, 0, !dbg !1795
  %539 = and i8 %534, 1, !dbg !1795
  %540 = icmp eq i8 %539, 0, !dbg !1795
  %541 = and i1 %538, %540, !dbg !1795
  br i1 %541, label %542, label %553, !dbg !1795

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1799
  br i1 %543, label %544, label %546, !dbg !1803

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1799
  store i8 39, i8* %545, align 1, !dbg !1799, !tbaa !1419
  br label %546, !dbg !1799

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %547, metadata !1337, metadata !DIExpression()), !dbg !1385
  %548 = icmp ult i64 %547, %536, !dbg !1804
  br i1 %548, label %549, label %551, !dbg !1807

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1804
  store i8 39, i8* %550, align 1, !dbg !1804, !tbaa !1419
  br label %551, !dbg !1804

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %552, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1385
  br label %553, !dbg !1808

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1478
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8 %562, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %561, metadata !1337, metadata !DIExpression()), !dbg !1385
  %563 = icmp ult i64 %561, %554, !dbg !1809
  br i1 %563, label %564, label %566, !dbg !1812

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1809
  store i8 %556, i8* %565, align 1, !dbg !1809, !tbaa !1419
  br label %566, !dbg !1809

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %567, metadata !1337, metadata !DIExpression()), !dbg !1385
  %568 = and i8 %555, 1, !dbg !1813
  %569 = icmp eq i8 %568, 0, !dbg !1813
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1815
  call void @llvm.dbg.value(metadata i8 %570, metadata !1346, metadata !DIExpression()), !dbg !1385
  br label %571, !dbg !1816

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1770
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1385
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1402
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1761
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1406
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1385
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1408
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %578, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %577, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %576, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %575, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %574, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %573, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %572, metadata !1336, metadata !DIExpression()), !dbg !1385
  %580 = add i64 %572, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %580, metadata !1336, metadata !DIExpression()), !dbg !1385
  br label %122, !dbg !1818, !llvm.loop !1819

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %127, metadata !1344, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %128, metadata !1345, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %129, metadata !1346, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  %583 = icmp eq i64 %124, 0, !dbg !1821
  %584 = and i1 %110, %583, !dbg !1823
  %585 = xor i1 %584, true, !dbg !1823
  %586 = or i1 %109, %585, !dbg !1823
  br i1 %586, label %587, label %629, !dbg !1823

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1824
  %589 = xor i1 %588, true, !dbg !1824
  %590 = and i8 %128, 1, !dbg !1826
  %591 = icmp eq i8 %590, 0, !dbg !1826
  %592 = or i1 %591, %589, !dbg !1824
  br i1 %592, label %602, label %593, !dbg !1824

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1827
  %595 = icmp eq i8 %594, 0, !dbg !1827
  br i1 %595, label %598, label %596, !dbg !1830

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %94, metadata !1334, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %95, metadata !1335, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %125, metadata !1338, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %582, metadata !1330, metadata !DIExpression()), !dbg !1385
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1831
  br label %645, !dbg !1832

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1833
  %600 = icmp ne i64 %125, 0, !dbg !1835
  %601 = and i1 %600, %599, !dbg !1836
  br i1 %601, label %26, label %602, !dbg !1836

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %130, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  %603 = icmp ne i8* %97, null, !dbg !1837
  %604 = and i1 %603, %109, !dbg !1839
  br i1 %604, label %605, label %620, !dbg !1839

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %124, metadata !1337, metadata !DIExpression()), !dbg !1385
  %606 = load i8, i8* %97, align 1, !dbg !1840, !tbaa !1419
  %607 = icmp eq i8 %606, 0, !dbg !1843
  br i1 %607, label %620, label %608, !dbg !1843

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1339, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %611, metadata !1337, metadata !DIExpression()), !dbg !1385
  %612 = icmp ult i64 %611, %130, !dbg !1844
  br i1 %612, label %613, label %615, !dbg !1847

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1844
  store i8 %609, i8* %614, align 1, !dbg !1844, !tbaa !1419
  br label %615, !dbg !1844

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %616, metadata !1337, metadata !DIExpression()), !dbg !1385
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %617, metadata !1339, metadata !DIExpression()), !dbg !1385
  %618 = load i8, i8* %617, align 1, !dbg !1840, !tbaa !1419
  %619 = icmp eq i8 %618, 0, !dbg !1843
  br i1 %619, label %620, label %608, !dbg !1843, !llvm.loop !1849

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %621, metadata !1337, metadata !DIExpression()), !dbg !1385
  %622 = icmp ult i64 %621, %130, !dbg !1851
  br i1 %622, label %623, label %645, !dbg !1853

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1854
  store i8 0, i8* %624, align 1, !dbg !1855, !tbaa !1419
  br label %645, !dbg !1854

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %630, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1384), !dbg !1856
  %627 = icmp eq i8 %101, 0, !dbg !1857
  %628 = select i1 %627, i32 2, i32 4, !dbg !1857
  br label %635, !dbg !1857

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1328, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %630, metadata !1330, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.label(metadata !1384), !dbg !1856
  %632 = icmp eq i32 %93, 2, !dbg !1859
  %633 = icmp eq i8 %101, 0, !dbg !1857
  %634 = select i1 %633, i32 2, i32 4, !dbg !1857
  br i1 %632, label %635, label %639, !dbg !1857

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !1857

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1331, metadata !DIExpression()), !dbg !1385
  %643 = and i32 %5, -3, !dbg !1860
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !1861
  br label %645, !dbg !1862

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !1863
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !1864 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1868, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %1, metadata !1869, metadata !DIExpression()), !dbg !1872
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !1873
  call void @llvm.dbg.value(metadata i8* %3, metadata !1870, metadata !DIExpression()), !dbg !1872
  %4 = icmp eq i8* %3, %0, !dbg !1874
  br i1 %4, label %5, label %71, !dbg !1876

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %6, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %6, metadata !1878, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8* undef, metadata !1884, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 85, metadata !1885, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 84, metadata !1886, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 70, metadata !1887, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 45, metadata !1888, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 56, metadata !1889, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1890, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1893, metadata !DIExpression()), !dbg !1894
  %7 = load i8, i8* %6, align 1, !dbg !1897, !tbaa !1419
  %8 = and i8 %7, -33, !dbg !1897
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1897

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1899, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* undef, metadata !1904, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 84, metadata !1905, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 70, metadata !1906, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 45, metadata !1907, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 56, metadata !1908, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 0, metadata !1909, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1913
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1917
  %11 = load i8, i8* %10, align 1, !dbg !1917, !tbaa !1419
  %12 = and i8 %11, -33, !dbg !1917
  %13 = icmp eq i8 %12, 84, !dbg !1917
  br i1 %13, label %14, label %68, !dbg !1917

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1919, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* undef, metadata !1924, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 70, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 45, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 56, metadata !1927, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1936
  %16 = load i8, i8* %15, align 1, !dbg !1936, !tbaa !1419
  %17 = and i8 %16, -33, !dbg !1936
  %18 = icmp eq i8 %17, 70, !dbg !1936
  br i1 %18, label %19, label %68, !dbg !1936

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1938, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8* undef, metadata !1943, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 45, metadata !1944, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 56, metadata !1945, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1950
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1954
  %21 = load i8, i8* %20, align 1, !dbg !1954, !tbaa !1419
  %22 = icmp eq i8 %21, 45, !dbg !1954
  br i1 %22, label %23, label %68, !dbg !1956

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1957, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* undef, metadata !1962, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 56, metadata !1963, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1964, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1968
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1972
  %25 = load i8, i8* %24, align 1, !dbg !1972, !tbaa !1419
  %26 = icmp eq i8 %25, 56, !dbg !1972
  br i1 %26, label %27, label %68, !dbg !1974

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1975, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* undef, metadata !1980, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1985
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1989
  %29 = load i8, i8* %28, align 1, !dbg !1989, !tbaa !1419
  %30 = icmp eq i8 %29, 0, !dbg !1989
  br i1 %30, label %31, label %68, !dbg !1991

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1992, !tbaa !1419
  %33 = icmp eq i8 %32, 96, !dbg !1993
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i64 0, i64 0), !dbg !1992
  br label %71, !dbg !1994

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1899, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* undef, metadata !1904, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 66, metadata !1905, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 49, metadata !1906, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 56, metadata !1907, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 48, metadata !1908, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 51, metadata !1909, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 48, metadata !1910, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1911, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1995
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1999
  %37 = load i8, i8* %36, align 1, !dbg !1999, !tbaa !1419
  %38 = and i8 %37, -33, !dbg !1999
  %39 = icmp eq i8 %38, 66, !dbg !1999
  br i1 %39, label %40, label %68, !dbg !1999

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1919, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* undef, metadata !1924, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 49, metadata !1925, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 56, metadata !1926, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 48, metadata !1927, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 51, metadata !1928, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 48, metadata !1929, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !2000
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2002
  %42 = load i8, i8* %41, align 1, !dbg !2002, !tbaa !1419
  %43 = icmp eq i8 %42, 49, !dbg !2002
  br i1 %43, label %44, label %68, !dbg !2003

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1938, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* undef, metadata !1943, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 56, metadata !1944, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 48, metadata !1945, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 51, metadata !1946, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 48, metadata !1947, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !2004
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2006
  %46 = load i8, i8* %45, align 1, !dbg !2006, !tbaa !1419
  %47 = icmp eq i8 %46, 56, !dbg !2006
  br i1 %47, label %48, label %68, !dbg !2007

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1957, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* undef, metadata !1962, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 48, metadata !1963, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 51, metadata !1964, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 48, metadata !1965, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2008
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2010
  %50 = load i8, i8* %49, align 1, !dbg !2010, !tbaa !1419
  %51 = icmp eq i8 %50, 48, !dbg !2010
  br i1 %51, label %52, label %68, !dbg !2011

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1975, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8* undef, metadata !1980, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 51, metadata !1981, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 48, metadata !1982, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2012
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2014
  %54 = load i8, i8* %53, align 1, !dbg !2014, !tbaa !1419
  %55 = icmp eq i8 %54, 51, !dbg !2014
  br i1 %55, label %56, label %68, !dbg !2015

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2016, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* undef, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 48, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2025
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2029
  %58 = load i8, i8* %57, align 1, !dbg !2029, !tbaa !1419
  %59 = icmp eq i8 %58, 48, !dbg !2029
  br i1 %59, label %60, label %68, !dbg !2031

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2032, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* undef, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2040
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2044
  %62 = load i8, i8* %61, align 1, !dbg !2044, !tbaa !1419
  %63 = icmp eq i8 %62, 0, !dbg !2044
  br i1 %63, label %64, label %68, !dbg !2046

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2047, !tbaa !1419
  %66 = icmp eq i8 %65, 96, !dbg !2048
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.60, i64 0, i64 0), !dbg !2047
  br label %71, !dbg !2049

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2050
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.55, i64 0, i64 0), !dbg !2051
  br label %71, !dbg !2052

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1872
  ret i8* %72, !dbg !2053
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
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !2054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2058, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %1, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8* %0, metadata !2062, metadata !DIExpression()) #19, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %1, metadata !2067, metadata !DIExpression()) #19, !dbg !2075
  call void @llvm.dbg.value(metadata i64* null, metadata !2068, metadata !DIExpression()) #19, !dbg !2075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2069, metadata !DIExpression()) #19, !dbg !2075
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2077
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2070, metadata !DIExpression()) #19, !dbg !2075
  %6 = tail call i32* @__errno_location() #24, !dbg !2078
  %7 = load i32, i32* %6, align 4, !dbg !2078, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %7, metadata !2071, metadata !DIExpression()) #19, !dbg !2075
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2079
  %9 = load i32, i32* %8, align 4, !dbg !2079, !tbaa !1270
  %10 = or i32 %9, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %10, metadata !2072, metadata !DIExpression()) #19, !dbg !2075
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2081
  %12 = load i32, i32* %11, align 8, !dbg !2081, !tbaa !1218
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2082
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2083
  %15 = load i8*, i8** %14, align 8, !dbg !2083, !tbaa !1293
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2084
  %17 = load i8*, i8** %16, align 8, !dbg !2084, !tbaa !1296
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !2085
  %19 = add i64 %18, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %19, metadata !2073, metadata !DIExpression()) #19, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %19, metadata !2087, metadata !DIExpression()) #19, !dbg !2092
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %20, metadata !2074, metadata !DIExpression()) #19, !dbg !2075
  %21 = load i32, i32* %11, align 8, !dbg !2095, !tbaa !1218
  %22 = load i8*, i8** %14, align 8, !dbg !2096, !tbaa !1293
  %23 = load i8*, i8** %16, align 8, !dbg !2097, !tbaa !1296
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !2098
  store i32 %7, i32* %6, align 4, !dbg !2099, !tbaa !1137
  ret i8* %20, !dbg !2100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !2063 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %1, metadata !2067, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64* %2, metadata !2068, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2069, metadata !DIExpression()), !dbg !2101
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2102
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2070, metadata !DIExpression()), !dbg !2101
  %7 = tail call i32* @__errno_location() #24, !dbg !2103
  %8 = load i32, i32* %7, align 4, !dbg !2103, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %8, metadata !2071, metadata !DIExpression()), !dbg !2101
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2104
  %10 = load i32, i32* %9, align 4, !dbg !2104, !tbaa !1270
  %11 = icmp ne i64* %2, null, !dbg !2105
  %12 = xor i1 %11, true, !dbg !2105
  %13 = zext i1 %12 to i32, !dbg !2105
  %14 = or i32 %10, %13, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %14, metadata !2072, metadata !DIExpression()), !dbg !2101
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2107
  %16 = load i32, i32* %15, align 8, !dbg !2107, !tbaa !1218
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2108
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2109
  %19 = load i8*, i8** %18, align 8, !dbg !2109, !tbaa !1293
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2110
  %21 = load i8*, i8** %20, align 8, !dbg !2110, !tbaa !1296
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2111
  %23 = add i64 %22, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %23, metadata !2073, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %23, metadata !2087, metadata !DIExpression()) #19, !dbg !2113
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %24, metadata !2074, metadata !DIExpression()), !dbg !2101
  %25 = load i32, i32* %15, align 8, !dbg !2116, !tbaa !1218
  %26 = load i8*, i8** %18, align 8, !dbg !2117, !tbaa !1293
  %27 = load i8*, i8** %20, align 8, !dbg !2118, !tbaa !1296
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2119
  store i32 %8, i32* %7, align 4, !dbg !2120, !tbaa !1137
  br i1 %11, label %29, label %30, !dbg !2121

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2122, !tbaa !2124
  br label %30, !dbg !2126

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !2128 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2132, !tbaa !1021
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 1, metadata !2131, metadata !DIExpression()), !dbg !2133
  %2 = load i32, i32* @nslots, align 4, !dbg !2134, !tbaa !1137
  %3 = icmp sgt i32 %2, 1, !dbg !2137
  br i1 %3, label %4, label %12, !dbg !2138

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2131, metadata !DIExpression()), !dbg !2133
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2139
  %7 = load i8*, i8** %6, align 8, !dbg !2139, !tbaa !2140
  tail call void @free(i8* %7) #19, !dbg !2142
  %8 = add nuw nsw i64 %5, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %8, metadata !2131, metadata !DIExpression()), !dbg !2133
  %9 = load i32, i32* @nslots, align 4, !dbg !2134, !tbaa !1137
  %10 = sext i32 %9 to i64, !dbg !2137
  %11 = icmp slt i64 %8, %10, !dbg !2137
  br i1 %11, label %4, label %12, !dbg !2138, !llvm.loop !2144

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2146
  %14 = load i8*, i8** %13, align 8, !dbg !2146, !tbaa !2140
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2148
  br i1 %15, label %17, label %16, !dbg !2149

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !2150
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2152, !tbaa !2153
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2154, !tbaa !2140
  br label %17, !dbg !2155

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2156
  br i1 %18, label %21, label %19, !dbg !2158

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2159
  tail call void @free(i8* %20) #19, !dbg !2161
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2162, !tbaa !1021
  br label %21, !dbg !2163

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2164, !tbaa !1137
  ret void, !dbg !2165
}

; Function Attrs: nounwind
declare !dbg !203 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %1, metadata !2169, metadata !DIExpression()), !dbg !2170
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2171
  ret i8* %3, !dbg !2172
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !2173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2177, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %2, metadata !2179, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2180, metadata !DIExpression()), !dbg !2192
  %5 = tail call i32* @__errno_location() #24, !dbg !2193
  %6 = load i32, i32* %5, align 4, !dbg !2193, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %6, metadata !2181, metadata !DIExpression()), !dbg !2192
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2194, !tbaa !1021
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2182, metadata !DIExpression()), !dbg !2192
  %8 = icmp slt i32 %0, 0, !dbg !2195
  br i1 %8, label %9, label %10, !dbg !2197

9:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2198
  unreachable, !dbg !2198

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2199, !tbaa !1137
  %12 = icmp sgt i32 %11, %0, !dbg !2200
  br i1 %12, label %34, label %13, !dbg !2201

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2202
  call void @llvm.dbg.value(metadata i1 %14, metadata !2183, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2186, metadata !DIExpression()), !dbg !2203
  %15 = icmp eq i32 %0, 2147483647, !dbg !2204
  br i1 %15, label %16, label %17, !dbg !2206

16:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2207
  unreachable, !dbg !2207

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2208
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2208
  %20 = add nuw nsw i32 %0, 1, !dbg !2209
  %21 = sext i32 %20 to i64, !dbg !2210
  %22 = shl nuw nsw i64 %21, 4, !dbg !2211
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !2212
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2212
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2182, metadata !DIExpression()), !dbg !2192
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2213, !tbaa !1021
  br i1 %14, label %25, label %26, !dbg !2214

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2215, !tbaa.struct !2217
  br label %26, !dbg !2218

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2219, !tbaa !1137
  %28 = sext i32 %27 to i64, !dbg !2220
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2220
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2221
  %31 = sub nsw i32 %20, %27, !dbg !2222
  %32 = sext i32 %31 to i64, !dbg !2223
  %33 = shl nsw i64 %32, 4, !dbg !2224
  call void @llvm.dbg.value(metadata i8* %30, metadata !1620, metadata !DIExpression()) #19, !dbg !2225
  call void @llvm.dbg.value(metadata i32 0, metadata !1626, metadata !DIExpression()) #19, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %33, metadata !1627, metadata !DIExpression()) #19, !dbg !2225
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !2227
  store i32 %20, i32* @nslots, align 4, !dbg !2228, !tbaa !1137
  br label %34, !dbg !2229

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2192
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2182, metadata !DIExpression()), !dbg !2192
  %36 = zext i32 %0 to i64, !dbg !2230
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2231
  %38 = load i64, i64* %37, align 8, !dbg !2231, !tbaa !2153
  call void @llvm.dbg.value(metadata i64 %38, metadata !2187, metadata !DIExpression()), !dbg !2232
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2233
  %40 = load i8*, i8** %39, align 8, !dbg !2233, !tbaa !2140
  call void @llvm.dbg.value(metadata i8* %40, metadata !2189, metadata !DIExpression()), !dbg !2232
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2234
  %42 = load i32, i32* %41, align 4, !dbg !2234, !tbaa !1270
  %43 = or i32 %42, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %43, metadata !2190, metadata !DIExpression()), !dbg !2232
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2236
  %45 = load i32, i32* %44, align 8, !dbg !2236, !tbaa !1218
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2237
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2238
  %48 = load i8*, i8** %47, align 8, !dbg !2238, !tbaa !1293
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2239
  %50 = load i8*, i8** %49, align 8, !dbg !2239, !tbaa !1296
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %51, metadata !2191, metadata !DIExpression()), !dbg !2232
  %52 = icmp ugt i64 %38, %51, !dbg !2241
  br i1 %52, label %63, label %53, !dbg !2243

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %54, metadata !2187, metadata !DIExpression()), !dbg !2232
  store i64 %54, i64* %37, align 8, !dbg !2246, !tbaa !2153
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2247
  br i1 %55, label %57, label %56, !dbg !2249

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !2250
  br label %57, !dbg !2250

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2087, metadata !DIExpression()) #19, !dbg !2251
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %58, metadata !2189, metadata !DIExpression()), !dbg !2232
  store i8* %58, i8** %39, align 8, !dbg !2254, !tbaa !2140
  %59 = load i32, i32* %44, align 8, !dbg !2255, !tbaa !1218
  %60 = load i8*, i8** %47, align 8, !dbg !2256, !tbaa !1293
  %61 = load i8*, i8** %49, align 8, !dbg !2257, !tbaa !1296
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2258
  br label %63, !dbg !2259

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2232
  call void @llvm.dbg.value(metadata i8* %64, metadata !2189, metadata !DIExpression()), !dbg !2232
  store i32 %6, i32* %5, align 4, !dbg !2260, !tbaa !1137
  ret i8* %64, !dbg !2261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8* %1, metadata !2267, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %2, metadata !2268, metadata !DIExpression()), !dbg !2269
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2270
  ret i8* %4, !dbg !2271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !2272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 0, metadata !2168, metadata !DIExpression()) #19, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()) #19, !dbg !2276
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2278
  ret i8* %2, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %1, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()) #19, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %0, metadata !2267, metadata !DIExpression()) #19, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()) #19, !dbg !2287
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2289
  ret i8* %3, !dbg !2290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2291 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %1, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %2, metadata !2297, metadata !DIExpression()), !dbg !2299
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2300
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %1, metadata !2302, metadata !DIExpression()) #19, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2307, metadata !DIExpression()) #19, !dbg !2310
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2310, !alias.scope !2311
  %6 = icmp eq i32 %1, 10, !dbg !2314
  br i1 %6, label %7, label %8, !dbg !2316

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2317, !noalias !2311
  unreachable, !dbg !2317

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2318
  store i32 %1, i32* %9, align 8, !dbg !2319, !tbaa !1218, !alias.scope !2311
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2320
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2321
  ret i8* %10, !dbg !2322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2323 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2327, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2328, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %3, metadata !2330, metadata !DIExpression()), !dbg !2332
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2333
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %1, metadata !2302, metadata !DIExpression()) #19, !dbg !2335
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2307, metadata !DIExpression()) #19, !dbg !2337
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !2337, !alias.scope !2338
  %7 = icmp eq i32 %1, 10, !dbg !2341
  br i1 %7, label %8, label %9, !dbg !2342

8:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2343, !noalias !2338
  unreachable, !dbg !2343

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2344
  store i32 %1, i32* %10, align 8, !dbg !2345, !tbaa !1218, !alias.scope !2338
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2347
  ret i8* %11, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2349 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2307, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2298, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %0, metadata !2353, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8* %1, metadata !2354, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2295, metadata !DIExpression()) #19, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()) #19, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %1, metadata !2297, metadata !DIExpression()) #19, !dbg !2360
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()) #19, !dbg !2362
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !2355, !alias.scope !2363
  %5 = icmp eq i32 %0, 10, !dbg !2366
  br i1 %5, label %6, label %7, !dbg !2367

6:                                                ; preds = %2
  tail call void @abort() #21, !dbg !2368, !noalias !2363
  unreachable, !dbg !2368

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2369
  store i32 %0, i32* %8, align 8, !dbg !2370, !tbaa !1218, !alias.scope !2363
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2372
  ret i8* %9, !dbg !2373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2374 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2307, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2331, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %2, metadata !2380, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 0, metadata !2327, metadata !DIExpression()) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i8* %1, metadata !2329, metadata !DIExpression()) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %2, metadata !2330, metadata !DIExpression()) #19, !dbg !2386
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()) #19, !dbg !2388
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2381, !alias.scope !2389
  %6 = icmp eq i32 %0, 10, !dbg !2392
  br i1 %6, label %7, label %8, !dbg !2393

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2394, !noalias !2389
  unreachable, !dbg !2394

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2395
  store i32 %0, i32* %9, align 8, !dbg !2396, !tbaa !1218, !alias.scope !2389
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !2397
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2398
  ret i8* %10, !dbg !2399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2400 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %1, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %2, metadata !2406, metadata !DIExpression()), !dbg !2408
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2411, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1236, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %2, metadata !1237, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %2, metadata !1239, metadata !DIExpression()), !dbg !2413
  %6 = lshr i8 %2, 5, !dbg !2415
  %7 = zext i8 %6 to i64, !dbg !2415
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2416
  call void @llvm.dbg.value(metadata i32* %8, metadata !1241, metadata !DIExpression()), !dbg !2413
  %9 = and i8 %2, 31, !dbg !2417
  %10 = zext i8 %9 to i32, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %10, metadata !1243, metadata !DIExpression()), !dbg !2413
  %11 = load i32, i32* %8, align 4, !dbg !2418, !tbaa !1137
  %12 = lshr i32 %11, %10, !dbg !2419
  %13 = and i32 %12, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %13, metadata !1244, metadata !DIExpression()), !dbg !2413
  %14 = xor i32 %13, 1, !dbg !2421
  %15 = shl i32 %14, %10, !dbg !2422
  %16 = xor i32 %15, %11, !dbg !2423
  store i32 %16, i32* %8, align 4, !dbg !2423, !tbaa !1137
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2425
  ret i8* %17, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2427 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2407, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 %1, metadata !2432, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()) #19, !dbg !2436
  call void @llvm.dbg.value(metadata i64 -1, metadata !2405, metadata !DIExpression()) #19, !dbg !2436
  call void @llvm.dbg.value(metadata i8 %1, metadata !2406, metadata !DIExpression()) #19, !dbg !2436
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2437
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2438, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1236, metadata !DIExpression()) #19, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !1237, metadata !DIExpression()) #19, !dbg !2439
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()) #19, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !1239, metadata !DIExpression()) #19, !dbg !2439
  %5 = lshr i8 %1, 5, !dbg !2441
  %6 = zext i8 %5 to i64, !dbg !2441
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2442
  call void @llvm.dbg.value(metadata i32* %7, metadata !1241, metadata !DIExpression()) #19, !dbg !2439
  %8 = and i8 %1, 31, !dbg !2443
  %9 = zext i8 %8 to i32, !dbg !2443
  call void @llvm.dbg.value(metadata i32 %9, metadata !1243, metadata !DIExpression()) #19, !dbg !2439
  %10 = load i32, i32* %7, align 4, !dbg !2444, !tbaa !1137
  %11 = lshr i32 %10, %9, !dbg !2445
  %12 = and i32 %11, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %12, metadata !1244, metadata !DIExpression()) #19, !dbg !2439
  %13 = xor i32 %12, 1, !dbg !2447
  %14 = shl i32 %13, %9, !dbg !2448
  %15 = xor i32 %14, %10, !dbg !2449
  store i32 %15, i32* %7, align 4, !dbg !2449, !tbaa !1137
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2451
  ret i8* %16, !dbg !2452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2453 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2407, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %0, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #19, !dbg !2460
  call void @llvm.dbg.value(metadata i8 58, metadata !2432, metadata !DIExpression()) #19, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()) #19, !dbg !2461
  call void @llvm.dbg.value(metadata i64 -1, metadata !2405, metadata !DIExpression()) #19, !dbg !2461
  call void @llvm.dbg.value(metadata i8 58, metadata !2406, metadata !DIExpression()) #19, !dbg !2461
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2463, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1236, metadata !DIExpression()) #19, !dbg !2464
  call void @llvm.dbg.value(metadata i8 58, metadata !1237, metadata !DIExpression()) #19, !dbg !2464
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()) #19, !dbg !2464
  call void @llvm.dbg.value(metadata i8 58, metadata !1239, metadata !DIExpression()) #19, !dbg !2464
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2466
  call void @llvm.dbg.value(metadata i32* %4, metadata !1241, metadata !DIExpression()) #19, !dbg !2464
  call void @llvm.dbg.value(metadata i32 26, metadata !1243, metadata !DIExpression()) #19, !dbg !2464
  %5 = load i32, i32* %4, align 4, !dbg !2467, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %5, metadata !1244, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2464
  %6 = or i32 %5, 67108864, !dbg !2468
  store i32 %6, i32* %4, align 4, !dbg !2468, !tbaa !1137
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2470
  ret i8* %7, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2472 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2407, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()) #19, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2405, metadata !DIExpression()) #19, !dbg !2479
  call void @llvm.dbg.value(metadata i8 58, metadata !2406, metadata !DIExpression()) #19, !dbg !2479
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2480
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2481, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1236, metadata !DIExpression()) #19, !dbg !2482
  call void @llvm.dbg.value(metadata i8 58, metadata !1237, metadata !DIExpression()) #19, !dbg !2482
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()) #19, !dbg !2482
  call void @llvm.dbg.value(metadata i8 58, metadata !1239, metadata !DIExpression()) #19, !dbg !2482
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2484
  call void @llvm.dbg.value(metadata i32* %5, metadata !1241, metadata !DIExpression()) #19, !dbg !2482
  call void @llvm.dbg.value(metadata i32 26, metadata !1243, metadata !DIExpression()) #19, !dbg !2482
  %6 = load i32, i32* %5, align 4, !dbg !2485, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %6, metadata !1244, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2482
  %7 = or i32 %6, 67108864, !dbg !2486
  store i32 %7, i32* %5, align 4, !dbg !2486, !tbaa !1137
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2488
  ret i8* %8, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2490 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2307, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %1, metadata !2493, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %2, metadata !2494, metadata !DIExpression()), !dbg !2498
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2495, metadata !DIExpression()), !dbg !2500
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %1, metadata !2302, metadata !DIExpression()) #19, !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2502
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2496, !alias.scope !2503
  %8 = icmp eq i32 %1, 10, !dbg !2506
  br i1 %8, label %9, label %10, !dbg !2507

9:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2508, !noalias !2503
  unreachable, !dbg !2508

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2502
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2501
  store i32 %1, i32* %11, align 8, !dbg !2501, !tbaa.struct !2412
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2501
  %13 = bitcast i32* %12 to i8*, !dbg !2501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2501, !tbaa.struct !2412
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1236, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 58, metadata !1237, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 58, metadata !1239, metadata !DIExpression()), !dbg !2509
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2511
  call void @llvm.dbg.value(metadata i32* %14, metadata !1241, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 26, metadata !1243, metadata !DIExpression()), !dbg !2509
  %15 = load i32, i32* %14, align 4, !dbg !2512, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %15, metadata !1244, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2509
  %16 = or i32 %15, 67108864, !dbg !2513
  store i32 %16, i32* %14, align 4, !dbg !2513, !tbaa !1137
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2515
  ret i8* %17, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2517 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2525, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %1, metadata !2522, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %2, metadata !2523, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %3, metadata !2524, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()) #19, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()) #19, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2532, metadata !DIExpression()) #19, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %3, metadata !2533, metadata !DIExpression()) #19, !dbg !2538
  call void @llvm.dbg.value(metadata i64 -1, metadata !2534, metadata !DIExpression()) #19, !dbg !2538
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2540, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1277, metadata !DIExpression()) #19, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !1278, metadata !DIExpression()) #19, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %2, metadata !1279, metadata !DIExpression()) #19, !dbg !2541
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1277, metadata !DIExpression()) #19, !dbg !2541
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2543
  store i32 10, i32* %7, align 8, !dbg !2544, !tbaa !1218
  %8 = icmp ne i8* %1, null, !dbg !2545
  %9 = icmp ne i8* %2, null, !dbg !2546
  %10 = and i1 %8, %9, !dbg !2547
  br i1 %10, label %12, label %11, !dbg !2547

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2548
  unreachable, !dbg !2548

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2549
  store i8* %1, i8** %13, align 8, !dbg !2550, !tbaa !1293
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2551
  store i8* %2, i8** %14, align 8, !dbg !2552, !tbaa !1296
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2554
  ret i8* %15, !dbg !2555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2526 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %2, metadata !2532, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %3, metadata !2533, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i64 %4, metadata !2534, metadata !DIExpression()), !dbg !2556
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2557
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2525, metadata !DIExpression()), !dbg !2558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2559, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1277, metadata !DIExpression()) #19, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %1, metadata !1278, metadata !DIExpression()) #19, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %2, metadata !1279, metadata !DIExpression()) #19, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1277, metadata !DIExpression()) #19, !dbg !2560
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2562
  store i32 10, i32* %8, align 8, !dbg !2563, !tbaa !1218
  %9 = icmp ne i8* %1, null, !dbg !2564
  %10 = icmp ne i8* %2, null, !dbg !2565
  %11 = and i1 %9, %10, !dbg !2566
  br i1 %11, label %13, label %12, !dbg !2566

12:                                               ; preds = %5
  tail call void @abort() #21, !dbg !2567
  unreachable, !dbg !2567

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2568
  store i8* %1, i8** %14, align 8, !dbg !2569, !tbaa !1293
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2570
  store i8* %2, i8** %15, align 8, !dbg !2571, !tbaa !1296
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2572
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2573
  ret i8* %16, !dbg !2574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2575 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2525, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %2, metadata !2581, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()) #19, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()) #19, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2523, metadata !DIExpression()) #19, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %2, metadata !2524, metadata !DIExpression()) #19, !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2530, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2531, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()) #19, !dbg !2587
  call void @llvm.dbg.value(metadata i64 -1, metadata !2534, metadata !DIExpression()) #19, !dbg !2587
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2588
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2589, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1277, metadata !DIExpression()) #19, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %0, metadata !1278, metadata !DIExpression()) #19, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()) #19, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1277, metadata !DIExpression()) #19, !dbg !2590
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2592
  store i32 10, i32* %6, align 8, !dbg !2593, !tbaa !1218
  %7 = icmp ne i8* %0, null, !dbg !2594
  %8 = icmp ne i8* %1, null, !dbg !2595
  %9 = and i1 %7, %8, !dbg !2596
  br i1 %9, label %11, label %10, !dbg !2596

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !2597
  unreachable, !dbg !2597

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2598
  store i8* %0, i8** %12, align 8, !dbg !2599, !tbaa !1293
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2600
  store i8* %1, i8** %13, align 8, !dbg !2601, !tbaa !1296
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !2602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2603
  ret i8* %14, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2605 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2525, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %1, metadata !2610, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %2, metadata !2611, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %3, metadata !2612, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2530, metadata !DIExpression()) #19, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %0, metadata !2531, metadata !DIExpression()) #19, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #19, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()) #19, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %3, metadata !2534, metadata !DIExpression()) #19, !dbg !2616
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2617
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2618, !tbaa.struct !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1277, metadata !DIExpression()) #19, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !1278, metadata !DIExpression()) #19, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()) #19, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1277, metadata !DIExpression()) #19, !dbg !2619
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2621
  store i32 10, i32* %7, align 8, !dbg !2622, !tbaa !1218
  %8 = icmp ne i8* %0, null, !dbg !2623
  %9 = icmp ne i8* %1, null, !dbg !2624
  %10 = and i1 %8, %9, !dbg !2625
  br i1 %10, label %12, label %11, !dbg !2625

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2626
  unreachable, !dbg !2626

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2627
  store i8* %0, i8** %13, align 8, !dbg !2628, !tbaa !1293
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2629
  store i8* %1, i8** %14, align 8, !dbg !2630, !tbaa !1296
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2632
  ret i8* %15, !dbg !2633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %2, metadata !2640, metadata !DIExpression()), !dbg !2641
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2642
  ret i8* %4, !dbg !2643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 0, metadata !2638, metadata !DIExpression()) #19, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #19, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %1, metadata !2640, metadata !DIExpression()) #19, !dbg !2651
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2653
  ret i8* %3, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2660, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()) #19, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()) #19, !dbg !2662
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()) #19, !dbg !2662
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2664
  ret i8* %3, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2666 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 0, metadata !2659, metadata !DIExpression()) #19, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %0, metadata !2660, metadata !DIExpression()) #19, !dbg !2672
  call void @llvm.dbg.value(metadata i32 0, metadata !2638, metadata !DIExpression()) #19, !dbg !2674
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()) #19, !dbg !2674
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()) #19, !dbg !2674
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2676
  ret i8* %2, !dbg !2677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2678 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2686, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %1, metadata !2687, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %3, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8** %4, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %5, metadata !2691, metadata !DIExpression()), !dbg !2692
  %7 = icmp eq i8* %1, null, !dbg !2693
  br i1 %7, label %10, label %8, !dbg !2695

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !2696
  br label %12, !dbg !2696

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !2697
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #19, !dbg !2698
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !2698
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2699
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #19, !dbg !2700
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.68, i64 0, i64 0)) #19, !dbg !2700
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2701
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
  ], !dbg !2702

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #19, !dbg !2703
  %21 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !1021
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !2703
  br label %147, !dbg !2705

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #19, !dbg !2706
  %25 = load i8*, i8** %4, align 8, !dbg !2706, !tbaa !1021
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2706
  %27 = load i8*, i8** %26, align 8, !dbg !2706, !tbaa !1021
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !2706
  br label %147, !dbg !2707

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #19, !dbg !2708
  %31 = load i8*, i8** %4, align 8, !dbg !2708, !tbaa !1021
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2708
  %33 = load i8*, i8** %32, align 8, !dbg !2708, !tbaa !1021
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2708
  %35 = load i8*, i8** %34, align 8, !dbg !2708, !tbaa !1021
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !2708
  br label %147, !dbg !2709

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #19, !dbg !2710
  %39 = load i8*, i8** %4, align 8, !dbg !2710, !tbaa !1021
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2710
  %41 = load i8*, i8** %40, align 8, !dbg !2710, !tbaa !1021
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2710
  %43 = load i8*, i8** %42, align 8, !dbg !2710, !tbaa !1021
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2710
  %45 = load i8*, i8** %44, align 8, !dbg !2710, !tbaa !1021
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !2710
  br label %147, !dbg !2711

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #19, !dbg !2712
  %49 = load i8*, i8** %4, align 8, !dbg !2712, !tbaa !1021
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2712
  %51 = load i8*, i8** %50, align 8, !dbg !2712, !tbaa !1021
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2712
  %53 = load i8*, i8** %52, align 8, !dbg !2712, !tbaa !1021
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2712
  %55 = load i8*, i8** %54, align 8, !dbg !2712, !tbaa !1021
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2712
  %57 = load i8*, i8** %56, align 8, !dbg !2712, !tbaa !1021
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !2712
  br label %147, !dbg !2713

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #19, !dbg !2714
  %61 = load i8*, i8** %4, align 8, !dbg !2714, !tbaa !1021
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2714
  %63 = load i8*, i8** %62, align 8, !dbg !2714, !tbaa !1021
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2714
  %65 = load i8*, i8** %64, align 8, !dbg !2714, !tbaa !1021
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2714
  %67 = load i8*, i8** %66, align 8, !dbg !2714, !tbaa !1021
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2714
  %69 = load i8*, i8** %68, align 8, !dbg !2714, !tbaa !1021
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2714
  %71 = load i8*, i8** %70, align 8, !dbg !2714, !tbaa !1021
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !2714
  br label %147, !dbg !2715

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #19, !dbg !2716
  %75 = load i8*, i8** %4, align 8, !dbg !2716, !tbaa !1021
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2716
  %77 = load i8*, i8** %76, align 8, !dbg !2716, !tbaa !1021
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2716
  %79 = load i8*, i8** %78, align 8, !dbg !2716, !tbaa !1021
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2716
  %81 = load i8*, i8** %80, align 8, !dbg !2716, !tbaa !1021
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2716
  %83 = load i8*, i8** %82, align 8, !dbg !2716, !tbaa !1021
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2716
  %85 = load i8*, i8** %84, align 8, !dbg !2716, !tbaa !1021
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2716
  %87 = load i8*, i8** %86, align 8, !dbg !2716, !tbaa !1021
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !2716
  br label %147, !dbg !2717

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #19, !dbg !2718
  %91 = load i8*, i8** %4, align 8, !dbg !2718, !tbaa !1021
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2718
  %93 = load i8*, i8** %92, align 8, !dbg !2718, !tbaa !1021
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2718
  %95 = load i8*, i8** %94, align 8, !dbg !2718, !tbaa !1021
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2718
  %97 = load i8*, i8** %96, align 8, !dbg !2718, !tbaa !1021
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2718
  %99 = load i8*, i8** %98, align 8, !dbg !2718, !tbaa !1021
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2718
  %101 = load i8*, i8** %100, align 8, !dbg !2718, !tbaa !1021
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2718
  %103 = load i8*, i8** %102, align 8, !dbg !2718, !tbaa !1021
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2718
  %105 = load i8*, i8** %104, align 8, !dbg !2718, !tbaa !1021
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !2718
  br label %147, !dbg !2719

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.77, i64 0, i64 0), i32 5) #19, !dbg !2720
  %109 = load i8*, i8** %4, align 8, !dbg !2720, !tbaa !1021
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2720
  %111 = load i8*, i8** %110, align 8, !dbg !2720, !tbaa !1021
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2720
  %113 = load i8*, i8** %112, align 8, !dbg !2720, !tbaa !1021
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2720
  %115 = load i8*, i8** %114, align 8, !dbg !2720, !tbaa !1021
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2720
  %117 = load i8*, i8** %116, align 8, !dbg !2720, !tbaa !1021
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2720
  %119 = load i8*, i8** %118, align 8, !dbg !2720, !tbaa !1021
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2720
  %121 = load i8*, i8** %120, align 8, !dbg !2720, !tbaa !1021
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2720
  %123 = load i8*, i8** %122, align 8, !dbg !2720, !tbaa !1021
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2720
  %125 = load i8*, i8** %124, align 8, !dbg !2720, !tbaa !1021
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !2720
  br label %147, !dbg !2721

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.78, i64 0, i64 0), i32 5) #19, !dbg !2722
  %129 = load i8*, i8** %4, align 8, !dbg !2722, !tbaa !1021
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2722
  %131 = load i8*, i8** %130, align 8, !dbg !2722, !tbaa !1021
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2722
  %133 = load i8*, i8** %132, align 8, !dbg !2722, !tbaa !1021
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2722
  %135 = load i8*, i8** %134, align 8, !dbg !2722, !tbaa !1021
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2722
  %137 = load i8*, i8** %136, align 8, !dbg !2722, !tbaa !1021
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2722
  %139 = load i8*, i8** %138, align 8, !dbg !2722, !tbaa !1021
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2722
  %141 = load i8*, i8** %140, align 8, !dbg !2722, !tbaa !1021
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2722
  %143 = load i8*, i8** %142, align 8, !dbg !2722, !tbaa !1021
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2722
  %145 = load i8*, i8** %144, align 8, !dbg !2722, !tbaa !1021
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !2722
  br label %147, !dbg !2723

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2724
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2725 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2730, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2731, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %3, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8** %4, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 0, metadata !2734, metadata !DIExpression()), !dbg !2735
  br label %6, !dbg !2736

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2738
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2739
  %9 = load i8*, i8** %8, align 8, !dbg !2739, !tbaa !1021
  %10 = icmp eq i8* %9, null, !dbg !2741
  %11 = add i64 %7, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %11, metadata !2734, metadata !DIExpression()), !dbg !2735
  br i1 %10, label %12, label %6, !dbg !2741, !llvm.loop !2743

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2734, metadata !DIExpression()), !dbg !2735
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2745
  ret void, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2747 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2758, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %2, metadata !2760, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %3, metadata !2761, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2762, metadata !DIExpression()), !dbg !2766
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2767
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2767
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2764, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2763, metadata !DIExpression()), !dbg !2766
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2769
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2769
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2769
  %11 = load i32, i32* %8, align 8, !dbg !2772
  %12 = icmp ult i32 %11, 41, !dbg !2772
  br i1 %12, label %13, label %18, !dbg !2772

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2772
  %15 = zext i32 %11 to i64, !dbg !2772
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2772
  %17 = add nuw nsw i32 %11, 8, !dbg !2772
  store i32 %17, i32* %8, align 8, !dbg !2772
  br label %21, !dbg !2772

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2772
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2772
  store i8* %20, i8** %9, align 8, !dbg !2772
  br label %21, !dbg !2772

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2772
  %25 = load i8*, i8** %24, align 8, !dbg !2772
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2773
  store i8* %25, i8** %26, align 16, !dbg !2774, !tbaa !1021
  %27 = icmp eq i8* %25, null, !dbg !2775
  br i1 %27, label %30, label %28, !dbg !2776

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2763, metadata !DIExpression()), !dbg !2766
  %29 = icmp ult i32 %22, 41, !dbg !2772
  br i1 %29, label %35, label %32, !dbg !2772

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2777
  call void @llvm.dbg.value(metadata i64 %31, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %31, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2779
  ret void, !dbg !2779

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2772
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2772
  store i8* %34, i8** %9, align 8, !dbg !2772
  br label %40, !dbg !2772

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2772
  %37 = zext i32 %22 to i64, !dbg !2772
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2772
  %39 = add nuw nsw i32 %22, 8, !dbg !2772
  store i32 %39, i32* %8, align 8, !dbg !2772
  br label %40, !dbg !2772

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2772
  %44 = load i8*, i8** %43, align 8, !dbg !2772
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2773
  store i8* %44, i8** %45, align 8, !dbg !2774, !tbaa !1021
  %46 = icmp eq i8* %44, null, !dbg !2775
  br i1 %46, label %30, label %47, !dbg !2776

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2763, metadata !DIExpression()), !dbg !2766
  %48 = icmp ult i32 %41, 41, !dbg !2772
  br i1 %48, label %52, label %49, !dbg !2772

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2772
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2772
  store i8* %51, i8** %9, align 8, !dbg !2772
  br label %57, !dbg !2772

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2772
  %54 = zext i32 %41 to i64, !dbg !2772
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2772
  %56 = add nuw nsw i32 %41, 8, !dbg !2772
  store i32 %56, i32* %8, align 8, !dbg !2772
  br label %57, !dbg !2772

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2772
  %61 = load i8*, i8** %60, align 8, !dbg !2772
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2773
  store i8* %61, i8** %62, align 16, !dbg !2774, !tbaa !1021
  %63 = icmp eq i8* %61, null, !dbg !2775
  br i1 %63, label %30, label %64, !dbg !2776

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2763, metadata !DIExpression()), !dbg !2766
  %65 = icmp ult i32 %58, 41, !dbg !2772
  br i1 %65, label %69, label %66, !dbg !2772

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2772
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2772
  store i8* %68, i8** %9, align 8, !dbg !2772
  br label %74, !dbg !2772

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2772
  %71 = zext i32 %58 to i64, !dbg !2772
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2772
  %73 = add nuw nsw i32 %58, 8, !dbg !2772
  store i32 %73, i32* %8, align 8, !dbg !2772
  br label %74, !dbg !2772

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2772
  %78 = load i8*, i8** %77, align 8, !dbg !2772
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2773
  store i8* %78, i8** %79, align 8, !dbg !2774, !tbaa !1021
  %80 = icmp eq i8* %78, null, !dbg !2775
  br i1 %80, label %30, label %81, !dbg !2776

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2763, metadata !DIExpression()), !dbg !2766
  %82 = icmp ult i32 %75, 41, !dbg !2772
  br i1 %82, label %86, label %83, !dbg !2772

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2772
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2772
  store i8* %85, i8** %9, align 8, !dbg !2772
  br label %91, !dbg !2772

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2772
  %88 = zext i32 %75 to i64, !dbg !2772
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2772
  %90 = add nuw nsw i32 %75, 8, !dbg !2772
  store i32 %90, i32* %8, align 8, !dbg !2772
  br label %91, !dbg !2772

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2772
  %95 = load i8*, i8** %94, align 8, !dbg !2772
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2773
  store i8* %95, i8** %96, align 16, !dbg !2774, !tbaa !1021
  %97 = icmp eq i8* %95, null, !dbg !2775
  br i1 %97, label %30, label %98, !dbg !2776

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2763, metadata !DIExpression()), !dbg !2766
  %99 = icmp ult i32 %92, 41, !dbg !2772
  br i1 %99, label %103, label %100, !dbg !2772

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2772
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2772
  store i8* %102, i8** %9, align 8, !dbg !2772
  br label %108, !dbg !2772

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2772
  %105 = zext i32 %92 to i64, !dbg !2772
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2772
  %107 = add nuw nsw i32 %92, 8, !dbg !2772
  store i32 %107, i32* %8, align 8, !dbg !2772
  br label %108, !dbg !2772

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2772
  %111 = load i8*, i8** %110, align 8, !dbg !2772
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2773
  store i8* %111, i8** %112, align 8, !dbg !2774, !tbaa !1021
  %113 = icmp eq i8* %111, null, !dbg !2775
  br i1 %113, label %30, label %114, !dbg !2776

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2763, metadata !DIExpression()), !dbg !2766
  %115 = load i8*, i8** %9, align 8, !dbg !2772
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2772
  store i8* %116, i8** %9, align 8, !dbg !2772
  %117 = bitcast i8* %115 to i8**, !dbg !2772
  %118 = load i8*, i8** %117, align 8, !dbg !2772
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2773
  store i8* %118, i8** %119, align 16, !dbg !2774, !tbaa !1021
  %120 = icmp eq i8* %118, null, !dbg !2775
  br i1 %120, label %30, label %121, !dbg !2776

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2763, metadata !DIExpression()), !dbg !2766
  %122 = load i8*, i8** %9, align 8, !dbg !2772
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2772
  store i8* %123, i8** %9, align 8, !dbg !2772
  %124 = bitcast i8* %122 to i8**, !dbg !2772
  %125 = load i8*, i8** %124, align 8, !dbg !2772
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2773
  store i8* %125, i8** %126, align 8, !dbg !2774, !tbaa !1021
  %127 = icmp eq i8* %125, null, !dbg !2775
  br i1 %127, label %30, label %128, !dbg !2776

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2763, metadata !DIExpression()), !dbg !2766
  %129 = load i8*, i8** %9, align 8, !dbg !2772
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2772
  store i8* %130, i8** %9, align 8, !dbg !2772
  %131 = bitcast i8* %129 to i8**, !dbg !2772
  %132 = load i8*, i8** %131, align 8, !dbg !2772
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2773
  store i8* %132, i8** %133, align 16, !dbg !2774, !tbaa !1021
  %134 = icmp eq i8* %132, null, !dbg !2775
  br i1 %134, label %30, label %135, !dbg !2776

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2763, metadata !DIExpression()), !dbg !2766
  %136 = load i8*, i8** %9, align 8, !dbg !2772
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2772
  store i8* %137, i8** %9, align 8, !dbg !2772
  %138 = bitcast i8* %136 to i8**, !dbg !2772
  %139 = load i8*, i8** %138, align 8, !dbg !2772
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2773
  store i8* %139, i8** %140, align 8, !dbg !2774, !tbaa !1021
  %141 = icmp eq i8* %139, null, !dbg !2775
  %142 = select i1 %141, i64 9, i64 10, !dbg !2776
  br label %30, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2780 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %3, metadata !2787, metadata !DIExpression()), !dbg !2794
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2795
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2788, metadata !DIExpression()), !dbg !2796
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2797
  call void @llvm.va_start(i8* nonnull %6), !dbg !2797
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2798
  call void @llvm.va_end(i8* nonnull %6), !dbg !2799
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !2800
  ret void, !dbg !2800
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !2801 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2802, !tbaa !1021
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2802
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i64 0, i64 0), i32 5) #19, !dbg !2803
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.82, i64 0, i64 0)) #19, !dbg !2803
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.83, i64 0, i64 0), i32 5) #19, !dbg !2804
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.84, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.85, i64 0, i64 0)) #19, !dbg !2804
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.86, i64 0, i64 0), i32 5) #19, !dbg !2805
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.87, i64 0, i64 0)) #19, !dbg !2805
  ret void, !dbg !2806
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #5 !dbg !2807 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2811, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  %3 = udiv i64 9223372036854775807, %1, !dbg !2814
  %4 = icmp ult i64 %3, %0, !dbg !2814
  br i1 %4, label %5, label %6, !dbg !2816

5:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !2817
  unreachable, !dbg !2817

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %7, metadata !2819, metadata !DIExpression()) #19, !dbg !2825
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %8, metadata !2824, metadata !DIExpression()) #19, !dbg !2825
  %9 = icmp eq i8* %8, null, !dbg !2828
  %10 = icmp ne i64 %7, 0, !dbg !2830
  %11 = and i1 %10, %9, !dbg !2831
  br i1 %11, label %12, label %13, !dbg !2831

12:                                               ; preds = %6
  tail call void @xalloc_die() #21, !dbg !2832
  unreachable, !dbg !2832

13:                                               ; preds = %6
  ret i8* %8, !dbg !2833
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !2820 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2819, metadata !DIExpression()), !dbg !2834
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()), !dbg !2834
  %3 = icmp eq i8* %2, null, !dbg !2836
  %4 = icmp ne i64 %0, 0, !dbg !2837
  %5 = and i1 %4, %3, !dbg !2838
  br i1 %5, label %6, label %7, !dbg !2838

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !2839
  unreachable, !dbg !2839

7:                                                ; preds = %1
  ret i8* %2, !dbg !2840
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !2841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  %4 = udiv i64 9223372036854775807, %2, !dbg !2849
  %5 = icmp ult i64 %4, %1, !dbg !2849
  br i1 %5, label %6, label %7, !dbg !2851

6:                                                ; preds = %3
  tail call void @xalloc_die() #21, !dbg !2852
  unreachable, !dbg !2852

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #19, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %8, metadata !2859, metadata !DIExpression()) #19, !dbg !2860
  %9 = icmp eq i64 %8, 0, !dbg !2862
  %10 = icmp ne i8* %0, null, !dbg !2864
  %11 = and i1 %10, %9, !dbg !2865
  br i1 %11, label %12, label %13, !dbg !2865

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !2866
  br label %19, !dbg !2868

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %14, metadata !2854, metadata !DIExpression()) #19, !dbg !2860
  %15 = icmp eq i8* %14, null, !dbg !2870
  %16 = icmp ne i64 %8, 0, !dbg !2872
  %17 = and i1 %16, %15, !dbg !2873
  br i1 %17, label %18, label %19, !dbg !2873

18:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2874
  unreachable, !dbg !2874

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2860
  ret i8* %20, !dbg !2875
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2855 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %1, metadata !2859, metadata !DIExpression()), !dbg !2876
  %3 = icmp eq i64 %1, 0, !dbg !2877
  %4 = icmp ne i8* %0, null, !dbg !2878
  %5 = and i1 %4, %3, !dbg !2879
  br i1 %5, label %6, label %7, !dbg !2879

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !2880
  br label %13, !dbg !2881

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %8, metadata !2854, metadata !DIExpression()), !dbg !2876
  %9 = icmp eq i8* %8, null, !dbg !2883
  %10 = icmp ne i64 %1, 0, !dbg !2884
  %11 = and i1 %10, %9, !dbg !2885
  br i1 %11, label %12, label %13, !dbg !2885

12:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !2886
  unreachable, !dbg !2886

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2876
  ret i8* %14, !dbg !2887
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #5 !dbg !398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !403, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64* %1, metadata !404, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %2, metadata !405, metadata !DIExpression()), !dbg !2888
  %4 = load i64, i64* %1, align 8, !dbg !2889, !tbaa !2124
  call void @llvm.dbg.value(metadata i64 %4, metadata !406, metadata !DIExpression()), !dbg !2888
  %5 = icmp eq i8* %0, null, !dbg !2890
  br i1 %5, label %6, label %20, !dbg !2892

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2893
  br i1 %7, label %8, label %13, !dbg !2896

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %9, metadata !406, metadata !DIExpression()), !dbg !2888
  %10 = icmp ugt i64 %2, 128, !dbg !2899
  %11 = zext i1 %10 to i64, !dbg !2899
  %12 = add nuw nsw i64 %9, %11, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %12, metadata !406, metadata !DIExpression()), !dbg !2888
  br label %13, !dbg !2901

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2888
  call void @llvm.dbg.value(metadata i64 %14, metadata !406, metadata !DIExpression()), !dbg !2888
  %15 = udiv i64 9223372036854775807, %2, !dbg !2902
  %16 = icmp ult i64 %15, %14, !dbg !2902
  br i1 %16, label %19, label %17, !dbg !2904

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2888
  store i64 %14, i64* %1, align 8, !dbg !2905, !tbaa !2124
  %18 = mul i64 %14, %2, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #19, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %28, metadata !2859, metadata !DIExpression()) #19, !dbg !2907
  br label %31, !dbg !2909

19:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2910
  unreachable, !dbg !2910

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2911
  %22 = icmp ugt i64 %21, %4, !dbg !2914
  br i1 %22, label %24, label %23, !dbg !2915

23:                                               ; preds = %20
  tail call void @xalloc_die() #21, !dbg !2916
  unreachable, !dbg !2916

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2917
  %26 = add nuw i64 %4, 1, !dbg !2918
  %27 = add i64 %26, %25, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %27, metadata !406, metadata !DIExpression()), !dbg !2888
  store i64 %27, i64* %1, align 8, !dbg !2905, !tbaa !2124
  %28 = mul i64 %27, %2, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #19, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %28, metadata !2859, metadata !DIExpression()) #19, !dbg !2907
  %29 = icmp eq i64 %28, 0, !dbg !2920
  br i1 %29, label %30, label %31, !dbg !2909

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !2921
  br label %38, !dbg !2922

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %33, metadata !2854, metadata !DIExpression()) #19, !dbg !2907
  %34 = icmp eq i8* %33, null, !dbg !2924
  %35 = icmp ne i64 %32, 0, !dbg !2925
  %36 = and i1 %35, %34, !dbg !2926
  br i1 %36, label %37, label %38, !dbg !2926

37:                                               ; preds = %31
  tail call void @xalloc_die() #21, !dbg !2927
  unreachable, !dbg !2927

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2907
  ret i8* %39, !dbg !2928
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #5 !dbg !2929 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %0, metadata !2819, metadata !DIExpression()) #19, !dbg !2933
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()) #19, !dbg !2933
  %3 = icmp eq i8* %2, null, !dbg !2936
  %4 = icmp ne i64 %0, 0, !dbg !2937
  %5 = and i1 %4, %3, !dbg !2938
  br i1 %5, label %6, label %7, !dbg !2938

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !2939
  unreachable, !dbg !2939

7:                                                ; preds = %1
  ret i8* %2, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !2941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64* %1, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !403, metadata !DIExpression()) #19, !dbg !2948
  call void @llvm.dbg.value(metadata i64* %1, metadata !404, metadata !DIExpression()) #19, !dbg !2948
  call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()) #19, !dbg !2948
  %3 = load i64, i64* %1, align 8, !dbg !2950, !tbaa !2124
  call void @llvm.dbg.value(metadata i64 %3, metadata !406, metadata !DIExpression()) #19, !dbg !2948
  %4 = icmp eq i8* %0, null, !dbg !2951
  br i1 %4, label %5, label %12, !dbg !2952

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2953
  br i1 %6, label %9, label %7, !dbg !2954

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !406, metadata !DIExpression()) #19, !dbg !2948
  %8 = icmp slt i64 %3, 0, !dbg !2955
  br i1 %8, label %11, label %9, !dbg !2956

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2948
  store i64 %10, i64* %1, align 8, !dbg !2957, !tbaa !2124
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #19, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %18, metadata !2859, metadata !DIExpression()) #19, !dbg !2958
  br label %21, !dbg !2960

11:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !2961
  unreachable, !dbg !2961

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2962
  br i1 %13, label %15, label %14, !dbg !2963

14:                                               ; preds = %12
  tail call void @xalloc_die() #21, !dbg !2964
  unreachable, !dbg !2964

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2965
  %17 = add nuw nsw i64 %3, 1, !dbg !2966
  %18 = add nuw nsw i64 %17, %16, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %18, metadata !406, metadata !DIExpression()) #19, !dbg !2948
  store i64 %18, i64* %1, align 8, !dbg !2957, !tbaa !2124
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()) #19, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %18, metadata !2859, metadata !DIExpression()) #19, !dbg !2958
  %19 = icmp eq i64 %18, 0, !dbg !2968
  br i1 %19, label %20, label %21, !dbg !2960

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !2969
  br label %28, !dbg !2970

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !2971
  call void @llvm.dbg.value(metadata i8* %23, metadata !2854, metadata !DIExpression()) #19, !dbg !2958
  %24 = icmp eq i8* %23, null, !dbg !2972
  %25 = icmp ne i64 %22, 0, !dbg !2973
  %26 = and i1 %25, %24, !dbg !2974
  br i1 %26, label %27, label %28, !dbg !2974

27:                                               ; preds = %21
  tail call void @xalloc_die() #21, !dbg !2975
  unreachable, !dbg !2975

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2958
  ret i8* %29, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !2977 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()) #19, !dbg !2986
  call void @llvm.dbg.value(metadata i64 1, metadata !2984, metadata !DIExpression()) #19, !dbg !2986
  %2 = icmp slt i64 %0, 0, !dbg !2988
  br i1 %2, label %6, label %3, !dbg !2990

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %4, metadata !2985, metadata !DIExpression()) #19, !dbg !2986
  %5 = icmp eq i8* %4, null, !dbg !2992
  br i1 %5, label %6, label %7, !dbg !2993

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #21, !dbg !2994
  unreachable, !dbg !2994

7:                                                ; preds = %3
  ret i8* %4, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !2982 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !2996
  %3 = udiv i64 9223372036854775807, %1, !dbg !2997
  %4 = icmp ult i64 %3, %0, !dbg !2997
  br i1 %4, label %8, label %5, !dbg !2998

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %6, metadata !2985, metadata !DIExpression()), !dbg !2996
  %7 = icmp eq i8* %6, null, !dbg !3000
  br i1 %7, label %8, label %9, !dbg !3001

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #21, !dbg !3002
  unreachable, !dbg !3002

9:                                                ; preds = %5
  ret i8* %6, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !3004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !2819, metadata !DIExpression()) #19, !dbg !3011
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %3, metadata !2824, metadata !DIExpression()) #19, !dbg !3011
  %4 = icmp eq i8* %3, null, !dbg !3014
  %5 = icmp ne i64 %1, 0, !dbg !3015
  %6 = and i1 %5, %4, !dbg !3016
  br i1 %6, label %7, label %8, !dbg !3016

7:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !3017
  unreachable, !dbg !3017

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3018, metadata !DIExpression()) #19, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #19, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()) #19, !dbg !3027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !3029
  ret i8* %3, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !3031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()), !dbg !3034
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3035
  %3 = add i64 %2, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %0, metadata !3008, metadata !DIExpression()) #19, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %3, metadata !3009, metadata !DIExpression()) #19, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %3, metadata !2819, metadata !DIExpression()) #19, !dbg !3039
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %4, metadata !2824, metadata !DIExpression()) #19, !dbg !3039
  %5 = icmp eq i8* %4, null, !dbg !3042
  %6 = icmp ne i64 %3, 0, !dbg !3043
  %7 = and i1 %6, %5, !dbg !3044
  br i1 %7, label %8, label %9, !dbg !3044

8:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !3045
  unreachable, !dbg !3045

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3018, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %3, metadata !3026, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !3048
  ret i8* %4, !dbg !3049
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3050 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3051, !tbaa !1137
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #19, !dbg !3052
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #19, !dbg !3053
  tail call void @abort() #21, !dbg !3054
  unreachable, !dbg !3054
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3057, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3063
  %3 = icmp eq i64 %0, 0, !dbg !3064
  %4 = icmp eq i64 %1, 0, !dbg !3065
  %5 = or i1 %3, %4, !dbg !3066
  br i1 %5, label %11, label %6, !dbg !3066

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3060, metadata !DIExpression()), !dbg !3067
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3068
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3068
  br i1 %8, label %9, label %11, !dbg !3070

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3071
  store i32 12, i32* %10, align 4, !dbg !3073, !tbaa !1137
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3057, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %12, metadata !3058, metadata !DIExpression()), !dbg !3063
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %14, metadata !3059, metadata !DIExpression()), !dbg !3063
  br label %15, !dbg !3075

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3063
  ret i8* %16, !dbg !3076
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !3077 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3085, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3086, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %2, metadata !3087, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3088, metadata !DIExpression()), !dbg !3094
  %6 = bitcast i32* %5 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3095
  %7 = icmp eq i32* %0, null, !dbg !3096
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3098
  call void @llvm.dbg.value(metadata i32* %8, metadata !3085, metadata !DIExpression()), !dbg !3094
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %9, metadata !3089, metadata !DIExpression()), !dbg !3094
  %10 = icmp ugt i64 %9, -3, !dbg !3100
  %11 = icmp ne i64 %2, 0, !dbg !3101
  %12 = and i1 %11, %10, !dbg !3102
  br i1 %12, label %13, label %18, !dbg !3102

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !3103
  br i1 %14, label %18, label %15, !dbg !3104

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3105, !tbaa !1419
  call void @llvm.dbg.value(metadata i8 %16, metadata !3091, metadata !DIExpression()), !dbg !3106
  %17 = zext i8 %16 to i32, !dbg !3107
  store i32 %17, i32* %8, align 4, !dbg !3108, !tbaa !1137
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3109
  ret i64 %19, !dbg !3109
}

; Function Attrs: nounwind
declare !dbg !424 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3110 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3116, metadata !DIExpression()), !dbg !3121
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !3122
  call void @llvm.dbg.value(metadata i1 undef, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3123, metadata !DIExpression()), !dbg !3127
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3129
  %4 = load i32, i32* %3, align 8, !dbg !3129, !tbaa !3130
  %5 = and i32 %4, 32, !dbg !3129
  %6 = icmp eq i32 %5, 0, !dbg !3132
  call void @llvm.dbg.value(metadata i1 %6, metadata !3119, metadata !DIExpression()), !dbg !3121
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !3133
  %8 = icmp ne i32 %7, 0, !dbg !3134
  call void @llvm.dbg.value(metadata i1 %8, metadata !3120, metadata !DIExpression()), !dbg !3121
  br i1 %6, label %9, label %19, !dbg !3135

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3137
  call void @llvm.dbg.value(metadata i1 %10, metadata !3117, metadata !DIExpression()), !dbg !3121
  %11 = xor i1 %8, true, !dbg !3138
  %12 = or i1 %10, %11, !dbg !3138
  %13 = sext i1 %8 to i32, !dbg !3138
  br i1 %12, label %22, label %14, !dbg !3138

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3139
  %16 = load i32, i32* %15, align 4, !dbg !3139, !tbaa !1137
  %17 = icmp ne i32 %16, 9, !dbg !3140
  %18 = sext i1 %17 to i32, !dbg !3141
  br label %22, !dbg !3141

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3142

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3144
  store i32 0, i32* %21, align 4, !dbg !3146, !tbaa !1137
  br label %22, !dbg !3144

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3121
  ret i32 %23, !dbg !3147
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !3148 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3155
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3156
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3151, metadata !DIExpression()), !dbg !3157
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !3158
  %5 = icmp eq i32 %4, 0, !dbg !3158
  br i1 %5, label %6, label %13, !dbg !3160

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3161
  %8 = load i16, i16* %7, align 16, !dbg !3161
  %9 = icmp eq i16 %8, 67, !dbg !3161
  br i1 %9, label %13, label %10, !dbg !3162

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0), i64 6), !dbg !3163
  %12 = icmp ne i32 %11, 0, !dbg !3164
  br label %13, !dbg !3162

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3155
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3165
  ret i1 %14, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !3166 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !3168, metadata !DIExpression()), !dbg !3170
  %2 = icmp eq i8* %1, null, !dbg !3171
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %1, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %3, metadata !3168, metadata !DIExpression()), !dbg !3170
  %4 = load i8, i8* %3, align 1, !dbg !3174, !tbaa !1419
  %5 = icmp eq i8 %4, 0, !dbg !3178
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %3, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %6, metadata !3168, metadata !DIExpression()), !dbg !3170
  ret i8* %6, !dbg !3180
}

; Function Attrs: nounwind
declare !dbg !876 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !3181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %1, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %2, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i32 %0, metadata !3189, metadata !DIExpression()) #19, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %1, metadata !3192, metadata !DIExpression()) #19, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !3193, metadata !DIExpression()) #19, !dbg !3198
  call void @llvm.dbg.value(metadata i32 %0, metadata !3200, metadata !DIExpression()) #19, !dbg !3206
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %4, metadata !3205, metadata !DIExpression()) #19, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #19, !dbg !3198
  %5 = icmp eq i8* %4, null, !dbg !3209
  br i1 %5, label %6, label %9, !dbg !3210

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3211
  br i1 %7, label %19, label %8, !dbg !3214

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3215, !tbaa !1419
  br label %19, !dbg !3216

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %10, metadata !3195, metadata !DIExpression()) #19, !dbg !3218
  %11 = icmp ult i64 %10, %2, !dbg !3219
  br i1 %11, label %12, label %14, !dbg !3221

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()) #19, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %4, metadata !3227, metadata !DIExpression()) #19, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %13, metadata !3228, metadata !DIExpression()) #19, !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3231
  br label %19, !dbg !3232

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3233
  br i1 %15, label %19, label %16, !dbg !3236

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()) #19, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %4, metadata !3227, metadata !DIExpression()) #19, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %17, metadata !3228, metadata !DIExpression()) #19, !dbg !3239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3241
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3242
  store i8 0, i8* %18, align 1, !dbg !3243, !tbaa !1419
  br label %19, !dbg !3244

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3245
  ret i32 %20, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !3247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %0, metadata !3200, metadata !DIExpression()) #19, !dbg !3251
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %2, metadata !3205, metadata !DIExpression()) #19, !dbg !3251
  ret i8* %2, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !3255 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3262, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3264, metadata !DIExpression()), !dbg !3265
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %2, metadata !3263, metadata !DIExpression()), !dbg !3265
  %3 = icmp slt i32 %2, 0, !dbg !3267
  br i1 %3, label %4, label %6, !dbg !3269

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3270
  br label %24, !dbg !3271

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3272
  %8 = icmp eq i32 %7, 0, !dbg !3272
  br i1 %8, label %13, label %9, !dbg !3274

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3275
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !3276
  %12 = icmp eq i64 %11, -1, !dbg !3277
  br i1 %12, label %16, label %13, !dbg !3278

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !3279
  %15 = icmp eq i32 %14, 0, !dbg !3279
  br i1 %15, label %16, label %18, !dbg !3280

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3262, metadata !DIExpression()), !dbg !3265
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %21, metadata !3264, metadata !DIExpression()), !dbg !3265
  br label %24, !dbg !3282

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3283
  %20 = load i32, i32* %19, align 4, !dbg !3283, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %20, metadata !3262, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %20, metadata !3262, metadata !DIExpression()), !dbg !3265
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %21, metadata !3264, metadata !DIExpression()), !dbg !3265
  %22 = icmp eq i32 %20, 0, !dbg !3284
  br i1 %22, label %24, label %23, !dbg !3282

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3286, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 -1, metadata !3264, metadata !DIExpression()), !dbg !3265
  br label %24, !dbg !3288

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3265
  ret i32 %25, !dbg !3289
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3290 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3296, metadata !DIExpression()), !dbg !3297
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3298
  br i1 %2, label %6, label %3, !dbg !3300

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3301
  %5 = icmp eq i32 %4, 0, !dbg !3301
  br i1 %5, label %6, label %8, !dbg !3302

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3303
  br label %17, !dbg !3304

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3305, metadata !DIExpression()) #19, !dbg !3310
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3312
  %10 = load i32, i32* %9, align 8, !dbg !3312, !tbaa !3130
  %11 = and i32 %10, 256, !dbg !3314
  %12 = icmp eq i32 %11, 0, !dbg !3314
  br i1 %12, label %15, label %13, !dbg !3315

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !3316
  br label %15, !dbg !3316

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3317
  br label %17, !dbg !3318

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3297
  ret i32 %18, !dbg !3319
}

; Function Attrs: nofree nounwind
declare !dbg !929 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3320 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 %2, metadata !3329, metadata !DIExpression()), !dbg !3333
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3334
  %5 = load i8*, i8** %4, align 8, !dbg !3334, !tbaa !3335
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3336
  %7 = load i8*, i8** %6, align 8, !dbg !3336, !tbaa !3337
  %8 = icmp eq i8* %5, %7, !dbg !3338
  br i1 %8, label %9, label %28, !dbg !3339

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3340
  %11 = load i8*, i8** %10, align 8, !dbg !3340, !tbaa !3341
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3342
  %13 = load i8*, i8** %12, align 8, !dbg !3342, !tbaa !3343
  %14 = icmp eq i8* %11, %13, !dbg !3344
  br i1 %14, label %15, label %28, !dbg !3345

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3346
  %17 = load i8*, i8** %16, align 8, !dbg !3346, !tbaa !3347
  %18 = icmp eq i8* %17, null, !dbg !3348
  br i1 %18, label %19, label %28, !dbg !3349

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3350
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %21, metadata !3330, metadata !DIExpression()), !dbg !3352
  %22 = icmp eq i64 %21, -1, !dbg !3353
  br i1 %22, label %30, label %23, !dbg !3355

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3356
  %25 = load i32, i32* %24, align 8, !dbg !3357, !tbaa !3130
  %26 = and i32 %25, -17, !dbg !3357
  store i32 %26, i32* %24, align 8, !dbg !3357, !tbaa !3130
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3358
  store i64 %21, i64* %27, align 8, !dbg !3359, !tbaa !3360
  br label %30, !dbg !3361

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3362
  br label %30, !dbg !3363

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3333
  ret i32 %31, !dbg !3364
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
!295 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!1014 = distinct !DISubprogram(name: "usage", scope: !295, file: !295, line: 36, type: !1015, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !18}
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "status", arg: 1, scope: !1014, file: !295, line: 36, type: !18)
!1019 = !DILocation(line: 0, scope: !1014)
!1020 = !DILocation(line: 38, column: 3, scope: !1014)
!1021 = !{!1022, !1022, i64 0}
!1022 = !{!"any pointer", !1023, i64 0}
!1023 = !{!"omnipotent char", !1024, i64 0}
!1024 = !{!"Simple C/C++ TBAA"}
!1025 = !DILocation(line: 43, column: 3, scope: !1014)
!1026 = !DILocation(line: 47, column: 3, scope: !1014)
!1027 = !DILocation(line: 48, column: 3, scope: !1014)
!1028 = !DILocation(line: 49, column: 3, scope: !1014)
!1029 = !DILocation(line: 50, column: 3, scope: !1014)
!1030 = !DILocation(line: 51, column: 3, scope: !1014)
!1031 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1032, file: !1032, line: 634, type: !334, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1033)
!1032 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1033 = !{!1034, !1035, !1044, !1045, !1047}
!1034 = !DILocalVariable(name: "program", arg: 1, scope: !1031, file: !1032, line: 634, type: !6)
!1035 = !DILocalVariable(name: "infomap", scope: !1031, file: !1032, line: 636, type: !1036)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 896, elements: !1042)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1031, file: !1032, line: 636, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1038, file: !1032, line: 636, baseType: !6, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1038, file: !1032, line: 636, baseType: !6, size: 64, offset: 64)
!1042 = !{!1043}
!1043 = !DISubrange(count: 7)
!1044 = !DILocalVariable(name: "node", scope: !1031, file: !1032, line: 646, type: !6)
!1045 = !DILocalVariable(name: "map_prog", scope: !1031, file: !1032, line: 647, type: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1047 = !DILocalVariable(name: "lc_messages", scope: !1031, file: !1032, line: 659, type: !6)
!1048 = !DILocation(line: 0, scope: !1031)
!1049 = !DILocation(line: 636, column: 3, scope: !1031)
!1050 = !DILocation(line: 636, column: 67, scope: !1031)
!1051 = !DILocation(line: 647, column: 36, scope: !1031)
!1052 = !DILocation(line: 649, column: 3, scope: !1031)
!1053 = !DILocation(line: 649, column: 33, scope: !1031)
!1054 = !DILocation(line: 650, column: 13, scope: !1031)
!1055 = !DILocation(line: 649, column: 20, scope: !1031)
!1056 = !{!1057, !1022, i64 0}
!1057 = !{!"infomap", !1022, i64 0, !1022, i64 8}
!1058 = !DILocation(line: 649, column: 10, scope: !1031)
!1059 = !DILocation(line: 649, column: 28, scope: !1031)
!1060 = distinct !{!1060, !1052, !1054}
!1061 = !DILocation(line: 652, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1031, file: !1032, line: 652, column: 7)
!1063 = !{!1057, !1022, i64 8}
!1064 = !DILocation(line: 652, column: 7, scope: !1062)
!1065 = !DILocation(line: 652, column: 7, scope: !1031)
!1066 = !DILocation(line: 655, column: 3, scope: !1031)
!1067 = !DILocation(line: 659, column: 29, scope: !1031)
!1068 = !DILocation(line: 660, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1031, file: !1032, line: 660, column: 7)
!1070 = !DILocation(line: 660, column: 19, scope: !1069)
!1071 = !DILocation(line: 660, column: 22, scope: !1069)
!1072 = !DILocation(line: 660, column: 7, scope: !1031)
!1073 = !DILocation(line: 666, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !1032, line: 661, column: 5)
!1075 = !DILocation(line: 668, column: 5, scope: !1074)
!1076 = !DILocation(line: 669, column: 3, scope: !1031)
!1077 = !DILocation(line: 671, column: 3, scope: !1031)
!1078 = !DILocation(line: 673, column: 1, scope: !1031)
!1079 = distinct !DISubprogram(name: "main", scope: !295, file: !295, line: 55, type: !1080, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1083)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!18, !18, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1083 = !{!1084, !1085}
!1084 = !DILocalVariable(name: "argc", arg: 1, scope: !1079, file: !295, line: 55, type: !18)
!1085 = !DILocalVariable(name: "argv", arg: 2, scope: !1079, file: !295, line: 55, type: !1082)
!1086 = !DILocation(line: 0, scope: !1079)
!1087 = !DILocation(line: 59, column: 12, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1079, file: !295, line: 59, column: 7)
!1089 = !DILocation(line: 59, column: 7, scope: !1079)
!1090 = !DILocation(line: 62, column: 25, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !295, line: 60, column: 5)
!1092 = !DILocation(line: 62, column: 7, scope: !1091)
!1093 = !DILocation(line: 63, column: 7, scope: !1091)
!1094 = !DILocation(line: 64, column: 7, scope: !1091)
!1095 = !DILocation(line: 65, column: 7, scope: !1091)
!1096 = !DILocation(line: 69, column: 7, scope: !1091)
!1097 = !DILocation(line: 71, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !295, line: 71, column: 11)
!1099 = !DILocation(line: 71, column: 11, scope: !1091)
!1100 = !DILocation(line: 72, column: 9, scope: !1098)
!1101 = !DILocation(line: 74, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1091, file: !295, line: 74, column: 11)
!1103 = !DILocation(line: 74, column: 11, scope: !1091)
!1104 = !DILocation(line: 75, column: 22, scope: !1102)
!1105 = !DILocation(line: 75, column: 58, scope: !1102)
!1106 = !DILocation(line: 75, column: 9, scope: !1102)
!1107 = !DILocation(line: 79, column: 3, scope: !1079)
!1108 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !334, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1109)
!1109 = !{!1110}
!1110 = !DILocalVariable(name: "file", arg: 1, scope: !1108, file: !12, line: 51, type: !6)
!1111 = !DILocation(line: 0, scope: !1108)
!1112 = !DILocation(line: 53, column: 13, scope: !1108)
!1113 = !DILocation(line: 54, column: 1, scope: !1108)
!1114 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1115, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !92}
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "ignore", arg: 1, scope: !1114, file: !12, line: 88, type: !92)
!1119 = !DILocation(line: 0, scope: !1114)
!1120 = !DILocation(line: 90, column: 16, scope: !1114)
!1121 = !{!1122, !1122, i64 0}
!1122 = !{!"_Bool", !1023, i64 0}
!1123 = !DILocation(line: 91, column: 1, scope: !1114)
!1124 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !250, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "write_error", scope: !1127, file: !12, line: 122, type: !6)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !12, line: 121, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !12, line: 119, column: 7)
!1129 = !DILocation(line: 119, column: 21, scope: !1128)
!1130 = !DILocation(line: 119, column: 7, scope: !1128)
!1131 = !DILocation(line: 119, column: 29, scope: !1128)
!1132 = !DILocation(line: 120, column: 7, scope: !1128)
!1133 = !DILocation(line: 120, column: 12, scope: !1128)
!1134 = !{i8 0, i8 2}
!1135 = !DILocation(line: 120, column: 25, scope: !1128)
!1136 = !DILocation(line: 120, column: 28, scope: !1128)
!1137 = !{!1138, !1138, i64 0}
!1138 = !{!"int", !1023, i64 0}
!1139 = !DILocation(line: 120, column: 34, scope: !1128)
!1140 = !DILocation(line: 119, column: 7, scope: !1124)
!1141 = !DILocation(line: 122, column: 33, scope: !1127)
!1142 = !DILocation(line: 0, scope: !1127)
!1143 = !DILocation(line: 123, column: 11, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1127, file: !12, line: 123, column: 11)
!1145 = !DILocation(line: 0, scope: !1144)
!1146 = !DILocation(line: 123, column: 11, scope: !1127)
!1147 = !DILocation(line: 124, column: 36, scope: !1144)
!1148 = !DILocation(line: 124, column: 9, scope: !1144)
!1149 = !DILocation(line: 127, column: 9, scope: !1144)
!1150 = !DILocation(line: 129, column: 14, scope: !1127)
!1151 = !DILocation(line: 129, column: 7, scope: !1127)
!1152 = !DILocation(line: 134, column: 42, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1124, file: !12, line: 134, column: 7)
!1154 = !DILocation(line: 134, column: 28, scope: !1153)
!1155 = !DILocation(line: 134, column: 50, scope: !1153)
!1156 = !DILocation(line: 134, column: 7, scope: !1124)
!1157 = !DILocation(line: 135, column: 12, scope: !1153)
!1158 = !DILocation(line: 135, column: 5, scope: !1153)
!1159 = !DILocation(line: 136, column: 1, scope: !1124)
!1160 = distinct !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 39, type: !334, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DILocalVariable(name: "argv0", arg: 1, scope: !1160, file: !102, line: 39, type: !6)
!1163 = !DILocalVariable(name: "slash", scope: !1160, file: !102, line: 46, type: !6)
!1164 = !DILocalVariable(name: "base", scope: !1160, file: !102, line: 47, type: !6)
!1165 = !DILocation(line: 0, scope: !1160)
!1166 = !DILocation(line: 51, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !102, line: 51, column: 7)
!1168 = !DILocation(line: 51, column: 7, scope: !1160)
!1169 = !DILocation(line: 55, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !102, line: 52, column: 5)
!1171 = !DILocation(line: 54, column: 7, scope: !1170)
!1172 = !DILocation(line: 56, column: 7, scope: !1170)
!1173 = !DILocation(line: 59, column: 11, scope: !1160)
!1174 = !DILocation(line: 60, column: 17, scope: !1160)
!1175 = !DILocation(line: 60, column: 11, scope: !1160)
!1176 = !DILocation(line: 61, column: 12, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1160, file: !102, line: 61, column: 7)
!1178 = !DILocation(line: 61, column: 20, scope: !1177)
!1179 = !DILocation(line: 61, column: 25, scope: !1177)
!1180 = !DILocation(line: 61, column: 42, scope: !1177)
!1181 = !DILocation(line: 61, column: 28, scope: !1177)
!1182 = !DILocation(line: 61, column: 61, scope: !1177)
!1183 = !DILocation(line: 61, column: 7, scope: !1160)
!1184 = !DILocation(line: 64, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !102, line: 64, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1177, file: !102, line: 62, column: 5)
!1187 = !DILocation(line: 64, column: 36, scope: !1185)
!1188 = !DILocation(line: 64, column: 11, scope: !1186)
!1189 = !DILocation(line: 66, column: 24, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !102, line: 65, column: 9)
!1191 = !DILocation(line: 70, column: 41, scope: !1190)
!1192 = !DILocation(line: 72, column: 9, scope: !1190)
!1193 = !DILocation(line: 84, column: 16, scope: !1160)
!1194 = !DILocation(line: 90, column: 27, scope: !1160)
!1195 = !DILocation(line: 92, column: 1, scope: !1160)
!1196 = distinct !DISubprogram(name: "clone_quoting_options", scope: !144, file: !144, line: 122, type: !1197, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1200)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1199, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "o", arg: 1, scope: !1196, file: !144, line: 122, type: !1199)
!1202 = !DILocalVariable(name: "e", scope: !1196, file: !144, line: 124, type: !18)
!1203 = !DILocalVariable(name: "p", scope: !1196, file: !144, line: 125, type: !1199)
!1204 = !DILocation(line: 0, scope: !1196)
!1205 = !DILocation(line: 124, column: 11, scope: !1196)
!1206 = !DILocation(line: 125, column: 40, scope: !1196)
!1207 = !DILocation(line: 125, column: 31, scope: !1196)
!1208 = !DILocation(line: 127, column: 9, scope: !1196)
!1209 = !DILocation(line: 128, column: 3, scope: !1196)
!1210 = distinct !DISubprogram(name: "get_quoting_style", scope: !144, file: !144, line: 133, type: !1211, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!146, !191}
!1213 = !{!1214}
!1214 = !DILocalVariable(name: "o", arg: 1, scope: !1210, file: !144, line: 133, type: !191)
!1215 = !DILocation(line: 0, scope: !1210)
!1216 = !DILocation(line: 135, column: 11, scope: !1210)
!1217 = !DILocation(line: 135, column: 46, scope: !1210)
!1218 = !{!1219, !1023, i64 0}
!1219 = !{!"quoting_options", !1023, i64 0, !1138, i64 4, !1023, i64 8, !1022, i64 40, !1022, i64 48}
!1220 = !DILocation(line: 135, column: 3, scope: !1210)
!1221 = distinct !DISubprogram(name: "set_quoting_style", scope: !144, file: !144, line: 141, type: !1222, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1199, !146}
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "o", arg: 1, scope: !1221, file: !144, line: 141, type: !1199)
!1226 = !DILocalVariable(name: "s", arg: 2, scope: !1221, file: !144, line: 141, type: !146)
!1227 = !DILocation(line: 0, scope: !1221)
!1228 = !DILocation(line: 143, column: 4, scope: !1221)
!1229 = !DILocation(line: 143, column: 39, scope: !1221)
!1230 = !DILocation(line: 143, column: 45, scope: !1221)
!1231 = !DILocation(line: 144, column: 1, scope: !1221)
!1232 = distinct !DISubprogram(name: "set_char_quoting", scope: !144, file: !144, line: 152, type: !1233, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!18, !1199, !8, !18}
!1235 = !{!1236, !1237, !1238, !1239, !1241, !1243, !1244}
!1236 = !DILocalVariable(name: "o", arg: 1, scope: !1232, file: !144, line: 152, type: !1199)
!1237 = !DILocalVariable(name: "c", arg: 2, scope: !1232, file: !144, line: 152, type: !8)
!1238 = !DILocalVariable(name: "i", arg: 3, scope: !1232, file: !144, line: 152, type: !18)
!1239 = !DILocalVariable(name: "uc", scope: !1232, file: !144, line: 154, type: !1240)
!1240 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1241 = !DILocalVariable(name: "p", scope: !1232, file: !144, line: 155, type: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1243 = !DILocalVariable(name: "shift", scope: !1232, file: !144, line: 157, type: !18)
!1244 = !DILocalVariable(name: "r", scope: !1232, file: !144, line: 158, type: !18)
!1245 = !DILocation(line: 0, scope: !1232)
!1246 = !DILocation(line: 156, column: 6, scope: !1232)
!1247 = !DILocation(line: 156, column: 62, scope: !1232)
!1248 = !DILocation(line: 156, column: 57, scope: !1232)
!1249 = !DILocation(line: 157, column: 15, scope: !1232)
!1250 = !DILocation(line: 158, column: 12, scope: !1232)
!1251 = !DILocation(line: 158, column: 15, scope: !1232)
!1252 = !DILocation(line: 158, column: 25, scope: !1232)
!1253 = !DILocation(line: 159, column: 13, scope: !1232)
!1254 = !DILocation(line: 159, column: 18, scope: !1232)
!1255 = !DILocation(line: 159, column: 23, scope: !1232)
!1256 = !DILocation(line: 159, column: 6, scope: !1232)
!1257 = !DILocation(line: 160, column: 3, scope: !1232)
!1258 = distinct !DISubprogram(name: "set_quoting_flags", scope: !144, file: !144, line: 168, type: !1259, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!18, !1199, !18}
!1261 = !{!1262, !1263, !1264}
!1262 = !DILocalVariable(name: "o", arg: 1, scope: !1258, file: !144, line: 168, type: !1199)
!1263 = !DILocalVariable(name: "i", arg: 2, scope: !1258, file: !144, line: 168, type: !18)
!1264 = !DILocalVariable(name: "r", scope: !1258, file: !144, line: 170, type: !18)
!1265 = !DILocation(line: 0, scope: !1258)
!1266 = !DILocation(line: 171, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !144, line: 171, column: 7)
!1268 = !DILocation(line: 171, column: 7, scope: !1258)
!1269 = !DILocation(line: 173, column: 10, scope: !1258)
!1270 = !{!1219, !1138, i64 4}
!1271 = !DILocation(line: 174, column: 12, scope: !1258)
!1272 = !DILocation(line: 175, column: 3, scope: !1258)
!1273 = distinct !DISubprogram(name: "set_custom_quoting", scope: !144, file: !144, line: 179, type: !1274, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1199, !6, !6}
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "o", arg: 1, scope: !1273, file: !144, line: 179, type: !1199)
!1278 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1273, file: !144, line: 180, type: !6)
!1279 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1273, file: !144, line: 180, type: !6)
!1280 = !DILocation(line: 0, scope: !1273)
!1281 = !DILocation(line: 182, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1273, file: !144, line: 182, column: 7)
!1283 = !DILocation(line: 182, column: 7, scope: !1273)
!1284 = !DILocation(line: 184, column: 6, scope: !1273)
!1285 = !DILocation(line: 184, column: 12, scope: !1273)
!1286 = !DILocation(line: 185, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1273, file: !144, line: 185, column: 7)
!1288 = !DILocation(line: 185, column: 23, scope: !1287)
!1289 = !DILocation(line: 185, column: 19, scope: !1287)
!1290 = !DILocation(line: 186, column: 5, scope: !1287)
!1291 = !DILocation(line: 187, column: 6, scope: !1273)
!1292 = !DILocation(line: 187, column: 17, scope: !1273)
!1293 = !{!1219, !1022, i64 40}
!1294 = !DILocation(line: 188, column: 6, scope: !1273)
!1295 = !DILocation(line: 188, column: 18, scope: !1273)
!1296 = !{!1219, !1022, i64 48}
!1297 = !DILocation(line: 189, column: 1, scope: !1273)
!1298 = distinct !DISubprogram(name: "quotearg_buffer", scope: !144, file: !144, line: 784, type: !1299, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!69, !25, !69, !6, !69, !191}
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1302 = !DILocalVariable(name: "buffer", arg: 1, scope: !1298, file: !144, line: 784, type: !25)
!1303 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1298, file: !144, line: 784, type: !69)
!1304 = !DILocalVariable(name: "arg", arg: 3, scope: !1298, file: !144, line: 785, type: !6)
!1305 = !DILocalVariable(name: "argsize", arg: 4, scope: !1298, file: !144, line: 785, type: !69)
!1306 = !DILocalVariable(name: "o", arg: 5, scope: !1298, file: !144, line: 786, type: !191)
!1307 = !DILocalVariable(name: "p", scope: !1298, file: !144, line: 788, type: !191)
!1308 = !DILocalVariable(name: "e", scope: !1298, file: !144, line: 789, type: !18)
!1309 = !DILocalVariable(name: "r", scope: !1298, file: !144, line: 790, type: !69)
!1310 = !DILocation(line: 0, scope: !1298)
!1311 = !DILocation(line: 788, column: 37, scope: !1298)
!1312 = !DILocation(line: 789, column: 11, scope: !1298)
!1313 = !DILocation(line: 791, column: 43, scope: !1298)
!1314 = !DILocation(line: 791, column: 53, scope: !1298)
!1315 = !DILocation(line: 791, column: 60, scope: !1298)
!1316 = !DILocation(line: 792, column: 43, scope: !1298)
!1317 = !DILocation(line: 792, column: 58, scope: !1298)
!1318 = !DILocation(line: 790, column: 14, scope: !1298)
!1319 = !DILocation(line: 793, column: 9, scope: !1298)
!1320 = !DILocation(line: 794, column: 3, scope: !1298)
!1321 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !144, file: !144, line: 256, type: !1322, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1326)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!69, !25, !69, !6, !69, !146, !18, !1324, !6, !6}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1351, !1352, !1353, !1354, !1355, !1358, !1359, !1365, !1368, !1369, !1376, !1379, !1380, !1381, !1382, !1383, !1384}
!1327 = !DILocalVariable(name: "buffer", arg: 1, scope: !1321, file: !144, line: 256, type: !25)
!1328 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1321, file: !144, line: 256, type: !69)
!1329 = !DILocalVariable(name: "arg", arg: 3, scope: !1321, file: !144, line: 257, type: !6)
!1330 = !DILocalVariable(name: "argsize", arg: 4, scope: !1321, file: !144, line: 257, type: !69)
!1331 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1321, file: !144, line: 258, type: !146)
!1332 = !DILocalVariable(name: "flags", arg: 6, scope: !1321, file: !144, line: 258, type: !18)
!1333 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1321, file: !144, line: 259, type: !1324)
!1334 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1321, file: !144, line: 260, type: !6)
!1335 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1321, file: !144, line: 261, type: !6)
!1336 = !DILocalVariable(name: "i", scope: !1321, file: !144, line: 263, type: !69)
!1337 = !DILocalVariable(name: "len", scope: !1321, file: !144, line: 264, type: !69)
!1338 = !DILocalVariable(name: "orig_buffersize", scope: !1321, file: !144, line: 265, type: !69)
!1339 = !DILocalVariable(name: "quote_string", scope: !1321, file: !144, line: 266, type: !6)
!1340 = !DILocalVariable(name: "quote_string_len", scope: !1321, file: !144, line: 267, type: !69)
!1341 = !DILocalVariable(name: "backslash_escapes", scope: !1321, file: !144, line: 268, type: !92)
!1342 = !DILocalVariable(name: "unibyte_locale", scope: !1321, file: !144, line: 269, type: !92)
!1343 = !DILocalVariable(name: "elide_outer_quotes", scope: !1321, file: !144, line: 270, type: !92)
!1344 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1321, file: !144, line: 271, type: !92)
!1345 = !DILocalVariable(name: "encountered_single_quote", scope: !1321, file: !144, line: 272, type: !92)
!1346 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1321, file: !144, line: 273, type: !92)
!1347 = !DILocalVariable(name: "c", scope: !1348, file: !144, line: 402, type: !1240)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !144, line: 401, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !144, line: 400, column: 3)
!1350 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 400, column: 3)
!1351 = !DILocalVariable(name: "esc", scope: !1348, file: !144, line: 403, type: !1240)
!1352 = !DILocalVariable(name: "is_right_quote", scope: !1348, file: !144, line: 404, type: !92)
!1353 = !DILocalVariable(name: "escaping", scope: !1348, file: !144, line: 405, type: !92)
!1354 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1348, file: !144, line: 406, type: !92)
!1355 = !DILocalVariable(name: "m", scope: !1356, file: !144, line: 610, type: !69)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 608, column: 11)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 426, column: 9)
!1358 = !DILocalVariable(name: "printable", scope: !1356, file: !144, line: 612, type: !92)
!1359 = !DILocalVariable(name: "mbstate", scope: !1360, file: !144, line: 621, type: !1362)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !144, line: 620, column: 15)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !144, line: 614, column: 17)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1363, line: 6, baseType: !1364)
!1363 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !216)
!1365 = !DILocalVariable(name: "w", scope: !1366, file: !144, line: 631, type: !1367)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !144, line: 630, column: 19)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1368 = !DILocalVariable(name: "bytes", scope: !1366, file: !144, line: 632, type: !69)
!1369 = !DILocalVariable(name: "j", scope: !1370, file: !144, line: 657, type: !69)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !144, line: 656, column: 27)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !144, line: 654, column: 29)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 649, column: 23)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !144, line: 641, column: 30)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !144, line: 636, column: 30)
!1375 = distinct !DILexicalBlock(scope: !1366, file: !144, line: 634, column: 25)
!1376 = !DILocalVariable(name: "ilim", scope: !1377, file: !144, line: 684, type: !69)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !144, line: 681, column: 15)
!1378 = distinct !DILexicalBlock(scope: !1356, file: !144, line: 680, column: 17)
!1379 = !DILabel(scope: !1321, name: "process_input", file: !144, line: 314)
!1380 = !DILabel(scope: !1357, name: "c_and_shell_escape", file: !144, line: 512)
!1381 = !DILabel(scope: !1357, name: "c_escape", file: !144, line: 517)
!1382 = !DILabel(scope: !1348, name: "store_escape", file: !144, line: 719)
!1383 = !DILabel(scope: !1348, name: "store_c", file: !144, line: 722)
!1384 = !DILabel(scope: !1321, name: "force_outer_quoting_style", file: !144, line: 763)
!1385 = !DILocation(line: 0, scope: !1321)
!1386 = !DILocation(line: 269, column: 25, scope: !1321)
!1387 = !DILocation(line: 269, column: 36, scope: !1321)
!1388 = !DILocation(line: 270, column: 8, scope: !1321)
!1389 = !DILocation(line: 0, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 526, column: 15)
!1391 = !DILocation(line: 0, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !144, line: 462, column: 19)
!1393 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 455, column: 13)
!1394 = !DILocation(line: 0, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !144, line: 449, column: 20)
!1396 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 428, column: 15)
!1397 = !DILocation(line: 0, scope: !1360)
!1398 = !DILocation(line: 0, scope: !1366)
!1399 = !DILocation(line: 0, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 712, column: 11)
!1401 = !DILocation(line: 273, column: 3, scope: !1321)
!1402 = !DILocation(line: 265, column: 10, scope: !1321)
!1403 = !DILocation(line: 266, column: 15, scope: !1321)
!1404 = !DILocation(line: 267, column: 10, scope: !1321)
!1405 = !DILocation(line: 268, column: 8, scope: !1321)
!1406 = !DILocation(line: 271, column: 8, scope: !1321)
!1407 = !DILocation(line: 272, column: 8, scope: !1321)
!1408 = !DILocation(line: 273, column: 8, scope: !1321)
!1409 = !DILocation(line: 314, column: 2, scope: !1321)
!1410 = !DILocation(line: 316, column: 3, scope: !1321)
!1411 = !DILocation(line: 323, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 317, column: 5)
!1413 = !DILocation(line: 323, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !144, line: 323, column: 11)
!1415 = !DILocation(line: 324, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !144, line: 324, column: 9)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !144, line: 324, column: 9)
!1418 = !DILocation(line: 324, column: 9, scope: !1417)
!1419 = !{!1023, !1023, i64 0}
!1420 = !DILocation(line: 362, column: 26, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !144, line: 340, column: 11)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !144, line: 339, column: 13)
!1423 = distinct !DILexicalBlock(scope: !1412, file: !144, line: 338, column: 7)
!1424 = !DILocation(line: 363, column: 27, scope: !1421)
!1425 = !DILocation(line: 364, column: 11, scope: !1421)
!1426 = !DILocation(line: 365, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !144, line: 365, column: 13)
!1428 = !DILocation(line: 365, column: 13, scope: !1423)
!1429 = !DILocation(line: 366, column: 43, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !144, line: 366, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !144, line: 366, column: 11)
!1432 = !DILocation(line: 366, column: 11, scope: !1431)
!1433 = !DILocation(line: 367, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !144, line: 367, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !144, line: 367, column: 13)
!1436 = !DILocation(line: 367, column: 13, scope: !1435)
!1437 = !DILocation(line: 366, column: 70, scope: !1430)
!1438 = distinct !{!1438, !1432, !1439}
!1439 = !DILocation(line: 367, column: 13, scope: !1431)
!1440 = !DILocation(line: 264, column: 10, scope: !1321)
!1441 = !DILocation(line: 370, column: 28, scope: !1423)
!1442 = !DILocation(line: 372, column: 7, scope: !1412)
!1443 = !DILocation(line: 376, column: 7, scope: !1412)
!1444 = !DILocation(line: 379, column: 7, scope: !1412)
!1445 = !DILocation(line: 381, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1412, file: !144, line: 381, column: 11)
!1447 = !DILocation(line: 381, column: 11, scope: !1412)
!1448 = !DILocation(line: 386, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1412, file: !144, line: 386, column: 11)
!1450 = !DILocation(line: 386, column: 11, scope: !1412)
!1451 = !DILocation(line: 387, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !144, line: 387, column: 9)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !144, line: 387, column: 9)
!1454 = !DILocation(line: 387, column: 9, scope: !1453)
!1455 = !DILocation(line: 394, column: 7, scope: !1412)
!1456 = !DILocation(line: 397, column: 7, scope: !1412)
!1457 = !DILocation(line: 0, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 408, column: 11)
!1459 = !DILocation(line: 0, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !144, line: 419, column: 15)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !144, line: 418, column: 9)
!1462 = !DILocation(line: 0, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 556, column: 15)
!1464 = !DILocation(line: 0, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 548, column: 15)
!1466 = !DILocation(line: 0, scope: !1371)
!1467 = !DILocation(line: 0, scope: !1378)
!1468 = !DILocation(line: 0, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 509, column: 15)
!1470 = !DILocation(line: 400, column: 8, scope: !1350)
!1471 = !DILocation(line: 0, scope: !1350)
!1472 = !DILocation(line: 400, column: 27, scope: !1349)
!1473 = !DILocation(line: 400, column: 19, scope: !1349)
!1474 = !DILocation(line: 400, column: 41, scope: !1349)
!1475 = !DILocation(line: 400, column: 48, scope: !1349)
!1476 = !DILocation(line: 400, column: 3, scope: !1350)
!1477 = !DILocation(line: 400, column: 60, scope: !1349)
!1478 = !DILocation(line: 0, scope: !1348)
!1479 = !DILocation(line: 409, column: 11, scope: !1458)
!1480 = !DILocation(line: 411, column: 17, scope: !1458)
!1481 = !DILocation(line: 412, column: 39, scope: !1458)
!1482 = !DILocation(line: 416, column: 32, scope: !1458)
!1483 = !DILocation(line: 412, column: 19, scope: !1458)
!1484 = !DILocation(line: 412, column: 15, scope: !1458)
!1485 = !DILocation(line: 417, column: 11, scope: !1458)
!1486 = !DILocation(line: 417, column: 26, scope: !1458)
!1487 = !DILocation(line: 417, column: 14, scope: !1458)
!1488 = !DILocation(line: 417, column: 63, scope: !1458)
!1489 = !DILocation(line: 408, column: 11, scope: !1348)
!1490 = !DILocation(line: 424, column: 11, scope: !1348)
!1491 = !DILocation(line: 425, column: 7, scope: !1348)
!1492 = !DILocation(line: 428, column: 15, scope: !1357)
!1493 = !DILocation(line: 430, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !144, line: 430, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1396, file: !144, line: 429, column: 13)
!1496 = !DILocation(line: 430, column: 15, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !144, line: 430, column: 15)
!1498 = !DILocation(line: 430, column: 15, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !144, line: 430, column: 15)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !144, line: 430, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !144, line: 430, column: 15)
!1502 = !DILocation(line: 430, column: 15, scope: !1500)
!1503 = !DILocation(line: 430, column: 15, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !144, line: 430, column: 15)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !144, line: 430, column: 15)
!1506 = !DILocation(line: 430, column: 15, scope: !1505)
!1507 = !DILocation(line: 430, column: 15, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !144, line: 430, column: 15)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !144, line: 430, column: 15)
!1510 = !DILocation(line: 430, column: 15, scope: !1509)
!1511 = !DILocation(line: 430, column: 15, scope: !1501)
!1512 = !DILocation(line: 430, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !144, line: 430, column: 15)
!1514 = distinct !DILexicalBlock(scope: !1494, file: !144, line: 430, column: 15)
!1515 = !DILocation(line: 430, column: 15, scope: !1514)
!1516 = !DILocation(line: 438, column: 19, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1495, file: !144, line: 437, column: 19)
!1518 = !DILocation(line: 438, column: 24, scope: !1517)
!1519 = !DILocation(line: 438, column: 28, scope: !1517)
!1520 = !DILocation(line: 438, column: 38, scope: !1517)
!1521 = !DILocation(line: 438, column: 48, scope: !1517)
!1522 = !DILocation(line: 438, column: 59, scope: !1517)
!1523 = !DILocation(line: 440, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 440, column: 19)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !144, line: 440, column: 19)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !144, line: 439, column: 17)
!1527 = !DILocation(line: 440, column: 19, scope: !1525)
!1528 = !DILocation(line: 441, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !144, line: 441, column: 19)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !144, line: 441, column: 19)
!1531 = !DILocation(line: 441, column: 19, scope: !1530)
!1532 = !DILocation(line: 442, column: 17, scope: !1526)
!1533 = !DILocation(line: 449, column: 20, scope: !1396)
!1534 = !DILocation(line: 454, column: 11, scope: !1357)
!1535 = !DILocation(line: 457, column: 19, scope: !1393)
!1536 = !DILocation(line: 463, column: 19, scope: !1392)
!1537 = !DILocation(line: 463, column: 24, scope: !1392)
!1538 = !DILocation(line: 463, column: 28, scope: !1392)
!1539 = !DILocation(line: 463, column: 38, scope: !1392)
!1540 = !DILocation(line: 463, column: 47, scope: !1392)
!1541 = !DILocation(line: 463, column: 41, scope: !1392)
!1542 = !DILocation(line: 463, column: 52, scope: !1392)
!1543 = !DILocation(line: 462, column: 19, scope: !1393)
!1544 = !DILocation(line: 464, column: 25, scope: !1392)
!1545 = !DILocation(line: 464, column: 17, scope: !1392)
!1546 = !DILocation(line: 471, column: 25, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1392, file: !144, line: 465, column: 19)
!1548 = !DILocation(line: 475, column: 21, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !144, line: 475, column: 21)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !144, line: 475, column: 21)
!1551 = !DILocation(line: 475, column: 21, scope: !1550)
!1552 = !DILocation(line: 476, column: 21, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !144, line: 476, column: 21)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !144, line: 476, column: 21)
!1555 = !DILocation(line: 476, column: 21, scope: !1554)
!1556 = !DILocation(line: 477, column: 21, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !144, line: 477, column: 21)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !144, line: 477, column: 21)
!1559 = !DILocation(line: 477, column: 21, scope: !1558)
!1560 = !DILocation(line: 478, column: 21, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !144, line: 478, column: 21)
!1562 = distinct !DILexicalBlock(scope: !1547, file: !144, line: 478, column: 21)
!1563 = !DILocation(line: 478, column: 21, scope: !1562)
!1564 = !DILocation(line: 479, column: 21, scope: !1547)
!1565 = !DILocation(line: 492, column: 31, scope: !1357)
!1566 = !DILocation(line: 493, column: 31, scope: !1357)
!1567 = !DILocation(line: 495, column: 31, scope: !1357)
!1568 = !DILocation(line: 496, column: 31, scope: !1357)
!1569 = !DILocation(line: 497, column: 31, scope: !1357)
!1570 = !DILocation(line: 500, column: 15, scope: !1357)
!1571 = !DILocation(line: 502, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !144, line: 501, column: 13)
!1573 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 500, column: 15)
!1574 = !DILocation(line: 509, column: 33, scope: !1469)
!1575 = !DILocation(line: 0, scope: !1357)
!1576 = !DILocation(line: 512, column: 9, scope: !1357)
!1577 = !DILocation(line: 514, column: 15, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 513, column: 15)
!1579 = !DILocation(line: 517, column: 9, scope: !1357)
!1580 = !DILocation(line: 518, column: 15, scope: !1357)
!1581 = !DILocation(line: 526, column: 15, scope: !1357)
!1582 = !DILocation(line: 526, column: 40, scope: !1390)
!1583 = !DILocation(line: 526, column: 47, scope: !1390)
!1584 = !DILocation(line: 526, column: 18, scope: !1390)
!1585 = !DILocation(line: 530, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1357, file: !144, line: 530, column: 15)
!1587 = !DILocation(line: 530, column: 15, scope: !1357)
!1588 = !DILocation(line: 535, column: 11, scope: !1357)
!1589 = !DILocation(line: 549, column: 15, scope: !1465)
!1590 = !DILocation(line: 556, column: 15, scope: !1357)
!1591 = !DILocation(line: 558, column: 19, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1463, file: !144, line: 557, column: 13)
!1593 = !DILocation(line: 561, column: 19, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1592, file: !144, line: 561, column: 19)
!1595 = !DILocation(line: 561, column: 35, scope: !1594)
!1596 = !DILocation(line: 561, column: 30, scope: !1594)
!1597 = !DILocation(line: 570, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !144, line: 570, column: 15)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !144, line: 570, column: 15)
!1600 = !DILocation(line: 570, column: 15, scope: !1599)
!1601 = !DILocation(line: 571, column: 15, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !144, line: 571, column: 15)
!1603 = distinct !DILexicalBlock(scope: !1592, file: !144, line: 571, column: 15)
!1604 = !DILocation(line: 571, column: 15, scope: !1603)
!1605 = !DILocation(line: 572, column: 15, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !144, line: 572, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1592, file: !144, line: 572, column: 15)
!1608 = !DILocation(line: 572, column: 15, scope: !1607)
!1609 = !DILocation(line: 574, column: 13, scope: !1592)
!1610 = !DILocation(line: 614, column: 17, scope: !1356)
!1611 = !DILocation(line: 0, scope: !1356)
!1612 = !DILocation(line: 617, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1361, file: !144, line: 615, column: 15)
!1614 = !{!1615, !1615, i64 0}
!1615 = !{!"short", !1023, i64 0}
!1616 = !DILocation(line: 617, column: 27, scope: !1613)
!1617 = !DILocation(line: 618, column: 15, scope: !1613)
!1618 = !DILocation(line: 621, column: 17, scope: !1360)
!1619 = !DILocation(line: 621, column: 27, scope: !1360)
!1620 = !DILocalVariable(name: "__dest", arg: 1, scope: !1621, file: !1622, line: 59, type: !67)
!1621 = distinct !DISubprogram(name: "memset", scope: !1622, file: !1622, line: 59, type: !1623, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1625)
!1622 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!67, !67, !18, !69}
!1625 = !{!1620, !1626, !1627}
!1626 = !DILocalVariable(name: "__ch", arg: 2, scope: !1621, file: !1622, line: 59, type: !18)
!1627 = !DILocalVariable(name: "__len", arg: 3, scope: !1621, file: !1622, line: 59, type: !69)
!1628 = !DILocation(line: 0, scope: !1621, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 622, column: 17, scope: !1360)
!1630 = !DILocation(line: 71, column: 10, scope: !1621, inlinedAt: !1629)
!1631 = !DILocation(line: 626, column: 29, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1360, file: !144, line: 626, column: 21)
!1633 = !DILocation(line: 626, column: 21, scope: !1360)
!1634 = !DILocation(line: 627, column: 29, scope: !1632)
!1635 = !DILocation(line: 627, column: 19, scope: !1632)
!1636 = !DILocation(line: 629, column: 17, scope: !1360)
!1637 = !DILocation(line: 624, column: 19, scope: !1360)
!1638 = !DILocation(line: 625, column: 27, scope: !1360)
!1639 = !DILocation(line: 631, column: 21, scope: !1366)
!1640 = !DILocation(line: 632, column: 56, scope: !1366)
!1641 = !DILocation(line: 632, column: 50, scope: !1366)
!1642 = !DILocation(line: 633, column: 53, scope: !1366)
!1643 = !DILocation(line: 632, column: 36, scope: !1366)
!1644 = !DILocation(line: 634, column: 25, scope: !1366)
!1645 = !DILocation(line: 644, column: 38, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 642, column: 23)
!1647 = !DILocation(line: 644, column: 48, scope: !1646)
!1648 = !DILocation(line: 644, column: 25, scope: !1646)
!1649 = !DILocation(line: 644, column: 51, scope: !1646)
!1650 = !DILocation(line: 645, column: 28, scope: !1646)
!1651 = !DILocation(line: 644, column: 34, scope: !1646)
!1652 = distinct !{!1652, !1648, !1650}
!1653 = !DILocation(line: 658, column: 43, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !144, line: 658, column: 29)
!1655 = distinct !DILexicalBlock(scope: !1370, file: !144, line: 658, column: 29)
!1656 = !DILocation(line: 655, column: 29, scope: !1371)
!1657 = !DILocation(line: 0, scope: !1370)
!1658 = !DILocation(line: 659, column: 49, scope: !1654)
!1659 = !DILocation(line: 659, column: 39, scope: !1654)
!1660 = !DILocation(line: 659, column: 31, scope: !1654)
!1661 = !DILocation(line: 658, column: 53, scope: !1654)
!1662 = !DILocation(line: 658, column: 29, scope: !1655)
!1663 = distinct !{!1663, !1662, !1664}
!1664 = !DILocation(line: 667, column: 33, scope: !1655)
!1665 = !DILocation(line: 674, column: 19, scope: !1360)
!1666 = !DILocation(line: 670, column: 41, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1372, file: !144, line: 670, column: 29)
!1668 = !DILocation(line: 670, column: 31, scope: !1667)
!1669 = !DILocation(line: 670, column: 29, scope: !1372)
!1670 = !DILocation(line: 672, column: 27, scope: !1372)
!1671 = !DILocation(line: 675, column: 26, scope: !1360)
!1672 = !DILocation(line: 675, column: 24, scope: !1360)
!1673 = !DILocation(line: 674, column: 19, scope: !1366)
!1674 = distinct !{!1674, !1636, !1675}
!1675 = !DILocation(line: 675, column: 44, scope: !1360)
!1676 = !DILocation(line: 676, column: 15, scope: !1361)
!1677 = !DILocation(line: 0, scope: !1361)
!1678 = !DILocation(line: 678, column: 40, scope: !1356)
!1679 = !DILocation(line: 680, column: 19, scope: !1378)
!1680 = !DILocation(line: 680, column: 45, scope: !1378)
!1681 = !DILocation(line: 680, column: 23, scope: !1378)
!1682 = !DILocation(line: 684, column: 33, scope: !1377)
!1683 = !DILocation(line: 0, scope: !1377)
!1684 = !DILocation(line: 686, column: 17, scope: !1377)
!1685 = !DILocation(line: 405, column: 12, scope: !1348)
!1686 = !DILocation(line: 688, column: 43, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 688, column: 25)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !144, line: 687, column: 19)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !144, line: 686, column: 17)
!1690 = distinct !DILexicalBlock(scope: !1377, file: !144, line: 686, column: 17)
!1691 = !DILocation(line: 690, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !144, line: 690, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1687, file: !144, line: 689, column: 23)
!1694 = !DILocation(line: 690, column: 25, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !144, line: 690, column: 25)
!1696 = !DILocation(line: 690, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !144, line: 690, column: 25)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !144, line: 690, column: 25)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !144, line: 690, column: 25)
!1700 = !DILocation(line: 690, column: 25, scope: !1698)
!1701 = !DILocation(line: 690, column: 25, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !144, line: 690, column: 25)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !144, line: 690, column: 25)
!1704 = !DILocation(line: 690, column: 25, scope: !1703)
!1705 = !DILocation(line: 690, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !144, line: 690, column: 25)
!1707 = distinct !DILexicalBlock(scope: !1699, file: !144, line: 690, column: 25)
!1708 = !DILocation(line: 690, column: 25, scope: !1707)
!1709 = !DILocation(line: 690, column: 25, scope: !1699)
!1710 = !DILocation(line: 690, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !144, line: 690, column: 25)
!1712 = distinct !DILexicalBlock(scope: !1692, file: !144, line: 690, column: 25)
!1713 = !DILocation(line: 690, column: 25, scope: !1712)
!1714 = !DILocation(line: 691, column: 25, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !144, line: 691, column: 25)
!1716 = distinct !DILexicalBlock(scope: !1693, file: !144, line: 691, column: 25)
!1717 = !DILocation(line: 691, column: 25, scope: !1716)
!1718 = !DILocation(line: 692, column: 25, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !144, line: 692, column: 25)
!1720 = distinct !DILexicalBlock(scope: !1693, file: !144, line: 692, column: 25)
!1721 = !DILocation(line: 692, column: 25, scope: !1720)
!1722 = !DILocation(line: 693, column: 38, scope: !1693)
!1723 = !DILocation(line: 693, column: 33, scope: !1693)
!1724 = !DILocation(line: 694, column: 23, scope: !1693)
!1725 = !DILocation(line: 695, column: 30, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1687, file: !144, line: 695, column: 30)
!1727 = !DILocation(line: 695, column: 30, scope: !1687)
!1728 = !DILocation(line: 697, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !144, line: 697, column: 25)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !144, line: 697, column: 25)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !144, line: 696, column: 23)
!1732 = !DILocation(line: 697, column: 25, scope: !1730)
!1733 = !DILocation(line: 699, column: 23, scope: !1731)
!1734 = !DILocation(line: 700, column: 35, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 700, column: 25)
!1736 = !DILocation(line: 700, column: 30, scope: !1735)
!1737 = !DILocation(line: 700, column: 25, scope: !1688)
!1738 = !DILocation(line: 702, column: 21, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !144, line: 702, column: 21)
!1740 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 702, column: 21)
!1741 = !DILocation(line: 702, column: 21, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !144, line: 702, column: 21)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !144, line: 702, column: 21)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !144, line: 702, column: 21)
!1745 = !DILocation(line: 702, column: 21, scope: !1743)
!1746 = !DILocation(line: 702, column: 21, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !144, line: 702, column: 21)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !144, line: 702, column: 21)
!1749 = !DILocation(line: 702, column: 21, scope: !1748)
!1750 = !DILocation(line: 702, column: 21, scope: !1744)
!1751 = !DILocation(line: 0, scope: !1688)
!1752 = !DILocation(line: 703, column: 21, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !144, line: 703, column: 21)
!1754 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 703, column: 21)
!1755 = !DILocation(line: 703, column: 21, scope: !1754)
!1756 = !DILocation(line: 704, column: 25, scope: !1688)
!1757 = !DILocation(line: 686, column: 17, scope: !1689)
!1758 = distinct !{!1758, !1759, !1760}
!1759 = !DILocation(line: 686, column: 17, scope: !1690)
!1760 = !DILocation(line: 705, column: 19, scope: !1690)
!1761 = !DILocation(line: 416, column: 30, scope: !1458)
!1762 = !DILocation(line: 712, column: 34, scope: !1400)
!1763 = !DILocation(line: 715, column: 35, scope: !1400)
!1764 = !DILocation(line: 715, column: 17, scope: !1400)
!1765 = !DILocation(line: 715, column: 47, scope: !1400)
!1766 = !DILocation(line: 715, column: 65, scope: !1400)
!1767 = !DILocation(line: 716, column: 15, scope: !1400)
!1768 = !DILocation(line: 716, column: 11, scope: !1400)
!1769 = !DILocation(line: 712, column: 11, scope: !1348)
!1770 = !DILocation(line: 400, column: 10, scope: !1350)
!1771 = !DILocation(line: 719, column: 5, scope: !1348)
!1772 = !DILocation(line: 720, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 720, column: 7)
!1774 = !DILocation(line: 720, column: 7, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !144, line: 720, column: 7)
!1776 = !DILocation(line: 720, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !144, line: 720, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !144, line: 720, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !144, line: 720, column: 7)
!1780 = !DILocation(line: 720, column: 7, scope: !1778)
!1781 = !DILocation(line: 720, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !144, line: 720, column: 7)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !144, line: 720, column: 7)
!1784 = !DILocation(line: 720, column: 7, scope: !1783)
!1785 = !DILocation(line: 720, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !144, line: 720, column: 7)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !144, line: 720, column: 7)
!1788 = !DILocation(line: 720, column: 7, scope: !1787)
!1789 = !DILocation(line: 720, column: 7, scope: !1779)
!1790 = !DILocation(line: 720, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !144, line: 720, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1773, file: !144, line: 720, column: 7)
!1793 = !DILocation(line: 720, column: 7, scope: !1792)
!1794 = !DILocation(line: 722, column: 5, scope: !1348)
!1795 = !DILocation(line: 723, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !144, line: 723, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 723, column: 7)
!1798 = !DILocation(line: 424, column: 9, scope: !1348)
!1799 = !DILocation(line: 723, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !144, line: 723, column: 7)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 723, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1796, file: !144, line: 723, column: 7)
!1803 = !DILocation(line: 723, column: 7, scope: !1801)
!1804 = !DILocation(line: 723, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !144, line: 723, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 723, column: 7)
!1807 = !DILocation(line: 723, column: 7, scope: !1806)
!1808 = !DILocation(line: 723, column: 7, scope: !1802)
!1809 = !DILocation(line: 724, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !144, line: 724, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 724, column: 7)
!1812 = !DILocation(line: 724, column: 7, scope: !1811)
!1813 = !DILocation(line: 726, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1348, file: !144, line: 726, column: 11)
!1815 = !DILocation(line: 726, column: 11, scope: !1348)
!1816 = !DILocation(line: 728, column: 5, scope: !1349)
!1817 = !DILocation(line: 400, column: 75, scope: !1349)
!1818 = !DILocation(line: 400, column: 3, scope: !1349)
!1819 = distinct !{!1819, !1476, !1820}
!1820 = !DILocation(line: 728, column: 5, scope: !1350)
!1821 = !DILocation(line: 730, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 730, column: 7)
!1823 = !DILocation(line: 730, column: 16, scope: !1822)
!1824 = !DILocation(line: 738, column: 51, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 738, column: 7)
!1826 = !DILocation(line: 739, column: 10, scope: !1825)
!1827 = !DILocation(line: 741, column: 11, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !144, line: 741, column: 11)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !144, line: 740, column: 5)
!1830 = !DILocation(line: 741, column: 11, scope: !1829)
!1831 = !DILocation(line: 742, column: 16, scope: !1828)
!1832 = !DILocation(line: 742, column: 9, scope: !1828)
!1833 = !DILocation(line: 746, column: 18, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !144, line: 746, column: 16)
!1835 = !DILocation(line: 746, column: 32, scope: !1834)
!1836 = !DILocation(line: 746, column: 29, scope: !1834)
!1837 = !DILocation(line: 755, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 755, column: 7)
!1839 = !DILocation(line: 755, column: 20, scope: !1838)
!1840 = !DILocation(line: 756, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !144, line: 756, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !144, line: 756, column: 5)
!1843 = !DILocation(line: 756, column: 5, scope: !1842)
!1844 = !DILocation(line: 757, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !144, line: 757, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !144, line: 757, column: 7)
!1847 = !DILocation(line: 757, column: 7, scope: !1846)
!1848 = !DILocation(line: 756, column: 39, scope: !1841)
!1849 = distinct !{!1849, !1843, !1850}
!1850 = !DILocation(line: 757, column: 7, scope: !1842)
!1851 = !DILocation(line: 759, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 759, column: 7)
!1853 = !DILocation(line: 759, column: 7, scope: !1321)
!1854 = !DILocation(line: 760, column: 5, scope: !1852)
!1855 = !DILocation(line: 760, column: 17, scope: !1852)
!1856 = !DILocation(line: 763, column: 2, scope: !1321)
!1857 = !DILocation(line: 766, column: 51, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1321, file: !144, line: 766, column: 7)
!1859 = !DILocation(line: 766, column: 21, scope: !1858)
!1860 = !DILocation(line: 770, column: 42, scope: !1321)
!1861 = !DILocation(line: 768, column: 10, scope: !1321)
!1862 = !DILocation(line: 768, column: 3, scope: !1321)
!1863 = !DILocation(line: 772, column: 1, scope: !1321)
!1864 = distinct !DISubprogram(name: "gettext_quote", scope: !144, file: !144, line: 207, type: !1865, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!6, !6, !146}
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DILocalVariable(name: "msgid", arg: 1, scope: !1864, file: !144, line: 207, type: !6)
!1869 = !DILocalVariable(name: "s", arg: 2, scope: !1864, file: !144, line: 207, type: !146)
!1870 = !DILocalVariable(name: "translation", scope: !1864, file: !144, line: 209, type: !6)
!1871 = !DILocalVariable(name: "locale_code", scope: !1864, file: !144, line: 210, type: !6)
!1872 = !DILocation(line: 0, scope: !1864)
!1873 = !DILocation(line: 209, column: 29, scope: !1864)
!1874 = !DILocation(line: 212, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1864, file: !144, line: 212, column: 7)
!1876 = !DILocation(line: 212, column: 7, scope: !1864)
!1877 = !DILocation(line: 233, column: 17, scope: !1864)
!1878 = !DILocalVariable(name: "s1", arg: 1, scope: !1879, file: !1880, line: 160, type: !6)
!1879 = distinct !DISubprogram(name: "strcaseeq0", scope: !1880, file: !1880, line: 160, type: !1881, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1883)
!1880 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1883 = !{!1878, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1884 = !DILocalVariable(name: "s2", arg: 2, scope: !1879, file: !1880, line: 160, type: !6)
!1885 = !DILocalVariable(name: "s20", arg: 3, scope: !1879, file: !1880, line: 160, type: !8)
!1886 = !DILocalVariable(name: "s21", arg: 4, scope: !1879, file: !1880, line: 160, type: !8)
!1887 = !DILocalVariable(name: "s22", arg: 5, scope: !1879, file: !1880, line: 160, type: !8)
!1888 = !DILocalVariable(name: "s23", arg: 6, scope: !1879, file: !1880, line: 160, type: !8)
!1889 = !DILocalVariable(name: "s24", arg: 7, scope: !1879, file: !1880, line: 160, type: !8)
!1890 = !DILocalVariable(name: "s25", arg: 8, scope: !1879, file: !1880, line: 160, type: !8)
!1891 = !DILocalVariable(name: "s26", arg: 9, scope: !1879, file: !1880, line: 160, type: !8)
!1892 = !DILocalVariable(name: "s27", arg: 10, scope: !1879, file: !1880, line: 160, type: !8)
!1893 = !DILocalVariable(name: "s28", arg: 11, scope: !1879, file: !1880, line: 160, type: !8)
!1894 = !DILocation(line: 0, scope: !1879, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 234, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1864, file: !144, line: 234, column: 7)
!1897 = !DILocation(line: 162, column: 7, scope: !1898, inlinedAt: !1895)
!1898 = distinct !DILexicalBlock(scope: !1879, file: !1880, line: 162, column: 7)
!1899 = !DILocalVariable(name: "s1", arg: 1, scope: !1900, file: !1880, line: 146, type: !6)
!1900 = distinct !DISubprogram(name: "strcaseeq1", scope: !1880, file: !1880, line: 146, type: !1901, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1903 = !{!1899, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912}
!1904 = !DILocalVariable(name: "s2", arg: 2, scope: !1900, file: !1880, line: 146, type: !6)
!1905 = !DILocalVariable(name: "s21", arg: 3, scope: !1900, file: !1880, line: 146, type: !8)
!1906 = !DILocalVariable(name: "s22", arg: 4, scope: !1900, file: !1880, line: 146, type: !8)
!1907 = !DILocalVariable(name: "s23", arg: 5, scope: !1900, file: !1880, line: 146, type: !8)
!1908 = !DILocalVariable(name: "s24", arg: 6, scope: !1900, file: !1880, line: 146, type: !8)
!1909 = !DILocalVariable(name: "s25", arg: 7, scope: !1900, file: !1880, line: 146, type: !8)
!1910 = !DILocalVariable(name: "s26", arg: 8, scope: !1900, file: !1880, line: 146, type: !8)
!1911 = !DILocalVariable(name: "s27", arg: 9, scope: !1900, file: !1880, line: 146, type: !8)
!1912 = !DILocalVariable(name: "s28", arg: 10, scope: !1900, file: !1880, line: 146, type: !8)
!1913 = !DILocation(line: 0, scope: !1900, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 167, column: 16, scope: !1915, inlinedAt: !1895)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !1880, line: 164, column: 11)
!1916 = distinct !DILexicalBlock(scope: !1898, file: !1880, line: 163, column: 5)
!1917 = !DILocation(line: 148, column: 7, scope: !1918, inlinedAt: !1914)
!1918 = distinct !DILexicalBlock(scope: !1900, file: !1880, line: 148, column: 7)
!1919 = !DILocalVariable(name: "s1", arg: 1, scope: !1920, file: !1880, line: 132, type: !6)
!1920 = distinct !DISubprogram(name: "strcaseeq2", scope: !1880, file: !1880, line: 132, type: !1921, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1923 = !{!1919, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1924 = !DILocalVariable(name: "s2", arg: 2, scope: !1920, file: !1880, line: 132, type: !6)
!1925 = !DILocalVariable(name: "s22", arg: 3, scope: !1920, file: !1880, line: 132, type: !8)
!1926 = !DILocalVariable(name: "s23", arg: 4, scope: !1920, file: !1880, line: 132, type: !8)
!1927 = !DILocalVariable(name: "s24", arg: 5, scope: !1920, file: !1880, line: 132, type: !8)
!1928 = !DILocalVariable(name: "s25", arg: 6, scope: !1920, file: !1880, line: 132, type: !8)
!1929 = !DILocalVariable(name: "s26", arg: 7, scope: !1920, file: !1880, line: 132, type: !8)
!1930 = !DILocalVariable(name: "s27", arg: 8, scope: !1920, file: !1880, line: 132, type: !8)
!1931 = !DILocalVariable(name: "s28", arg: 9, scope: !1920, file: !1880, line: 132, type: !8)
!1932 = !DILocation(line: 0, scope: !1920, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 153, column: 16, scope: !1934, inlinedAt: !1914)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1880, line: 150, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1918, file: !1880, line: 149, column: 5)
!1936 = !DILocation(line: 134, column: 7, scope: !1937, inlinedAt: !1933)
!1937 = distinct !DILexicalBlock(scope: !1920, file: !1880, line: 134, column: 7)
!1938 = !DILocalVariable(name: "s1", arg: 1, scope: !1939, file: !1880, line: 118, type: !6)
!1939 = distinct !DISubprogram(name: "strcaseeq3", scope: !1880, file: !1880, line: 118, type: !1940, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!1942 = !{!1938, !1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1943 = !DILocalVariable(name: "s2", arg: 2, scope: !1939, file: !1880, line: 118, type: !6)
!1944 = !DILocalVariable(name: "s23", arg: 3, scope: !1939, file: !1880, line: 118, type: !8)
!1945 = !DILocalVariable(name: "s24", arg: 4, scope: !1939, file: !1880, line: 118, type: !8)
!1946 = !DILocalVariable(name: "s25", arg: 5, scope: !1939, file: !1880, line: 118, type: !8)
!1947 = !DILocalVariable(name: "s26", arg: 6, scope: !1939, file: !1880, line: 118, type: !8)
!1948 = !DILocalVariable(name: "s27", arg: 7, scope: !1939, file: !1880, line: 118, type: !8)
!1949 = !DILocalVariable(name: "s28", arg: 8, scope: !1939, file: !1880, line: 118, type: !8)
!1950 = !DILocation(line: 0, scope: !1939, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 139, column: 16, scope: !1952, inlinedAt: !1933)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1880, line: 136, column: 11)
!1953 = distinct !DILexicalBlock(scope: !1937, file: !1880, line: 135, column: 5)
!1954 = !DILocation(line: 120, column: 7, scope: !1955, inlinedAt: !1951)
!1955 = distinct !DILexicalBlock(scope: !1939, file: !1880, line: 120, column: 7)
!1956 = !DILocation(line: 120, column: 7, scope: !1939, inlinedAt: !1951)
!1957 = !DILocalVariable(name: "s1", arg: 1, scope: !1958, file: !1880, line: 104, type: !6)
!1958 = distinct !DISubprogram(name: "strcaseeq4", scope: !1880, file: !1880, line: 104, type: !1959, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!1961 = !{!1957, !1962, !1963, !1964, !1965, !1966, !1967}
!1962 = !DILocalVariable(name: "s2", arg: 2, scope: !1958, file: !1880, line: 104, type: !6)
!1963 = !DILocalVariable(name: "s24", arg: 3, scope: !1958, file: !1880, line: 104, type: !8)
!1964 = !DILocalVariable(name: "s25", arg: 4, scope: !1958, file: !1880, line: 104, type: !8)
!1965 = !DILocalVariable(name: "s26", arg: 5, scope: !1958, file: !1880, line: 104, type: !8)
!1966 = !DILocalVariable(name: "s27", arg: 6, scope: !1958, file: !1880, line: 104, type: !8)
!1967 = !DILocalVariable(name: "s28", arg: 7, scope: !1958, file: !1880, line: 104, type: !8)
!1968 = !DILocation(line: 0, scope: !1958, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 125, column: 16, scope: !1970, inlinedAt: !1951)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !1880, line: 122, column: 11)
!1971 = distinct !DILexicalBlock(scope: !1955, file: !1880, line: 121, column: 5)
!1972 = !DILocation(line: 106, column: 7, scope: !1973, inlinedAt: !1969)
!1973 = distinct !DILexicalBlock(scope: !1958, file: !1880, line: 106, column: 7)
!1974 = !DILocation(line: 106, column: 7, scope: !1958, inlinedAt: !1969)
!1975 = !DILocalVariable(name: "s1", arg: 1, scope: !1976, file: !1880, line: 90, type: !6)
!1976 = distinct !DISubprogram(name: "strcaseeq5", scope: !1880, file: !1880, line: 90, type: !1977, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!18, !6, !6, !8, !8, !8, !8}
!1979 = !{!1975, !1980, !1981, !1982, !1983, !1984}
!1980 = !DILocalVariable(name: "s2", arg: 2, scope: !1976, file: !1880, line: 90, type: !6)
!1981 = !DILocalVariable(name: "s25", arg: 3, scope: !1976, file: !1880, line: 90, type: !8)
!1982 = !DILocalVariable(name: "s26", arg: 4, scope: !1976, file: !1880, line: 90, type: !8)
!1983 = !DILocalVariable(name: "s27", arg: 5, scope: !1976, file: !1880, line: 90, type: !8)
!1984 = !DILocalVariable(name: "s28", arg: 6, scope: !1976, file: !1880, line: 90, type: !8)
!1985 = !DILocation(line: 0, scope: !1976, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 111, column: 16, scope: !1987, inlinedAt: !1969)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !1880, line: 108, column: 11)
!1988 = distinct !DILexicalBlock(scope: !1973, file: !1880, line: 107, column: 5)
!1989 = !DILocation(line: 92, column: 7, scope: !1990, inlinedAt: !1986)
!1990 = distinct !DILexicalBlock(scope: !1976, file: !1880, line: 92, column: 7)
!1991 = !DILocation(line: 92, column: 7, scope: !1976, inlinedAt: !1986)
!1992 = !DILocation(line: 235, column: 12, scope: !1896)
!1993 = !DILocation(line: 235, column: 21, scope: !1896)
!1994 = !DILocation(line: 235, column: 5, scope: !1896)
!1995 = !DILocation(line: 0, scope: !1900, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 167, column: 16, scope: !1915, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 236, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1864, file: !144, line: 236, column: 7)
!1999 = !DILocation(line: 148, column: 7, scope: !1918, inlinedAt: !1996)
!2000 = !DILocation(line: 0, scope: !1920, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 153, column: 16, scope: !1934, inlinedAt: !1996)
!2002 = !DILocation(line: 134, column: 7, scope: !1937, inlinedAt: !2001)
!2003 = !DILocation(line: 134, column: 7, scope: !1920, inlinedAt: !2001)
!2004 = !DILocation(line: 0, scope: !1939, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 139, column: 16, scope: !1952, inlinedAt: !2001)
!2006 = !DILocation(line: 120, column: 7, scope: !1955, inlinedAt: !2005)
!2007 = !DILocation(line: 120, column: 7, scope: !1939, inlinedAt: !2005)
!2008 = !DILocation(line: 0, scope: !1958, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 125, column: 16, scope: !1970, inlinedAt: !2005)
!2010 = !DILocation(line: 106, column: 7, scope: !1973, inlinedAt: !2009)
!2011 = !DILocation(line: 106, column: 7, scope: !1958, inlinedAt: !2009)
!2012 = !DILocation(line: 0, scope: !1976, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 111, column: 16, scope: !1987, inlinedAt: !2009)
!2014 = !DILocation(line: 92, column: 7, scope: !1990, inlinedAt: !2013)
!2015 = !DILocation(line: 92, column: 7, scope: !1976, inlinedAt: !2013)
!2016 = !DILocalVariable(name: "s1", arg: 1, scope: !2017, file: !1880, line: 76, type: !6)
!2017 = distinct !DISubprogram(name: "strcaseeq6", scope: !1880, file: !1880, line: 76, type: !2018, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!18, !6, !6, !8, !8, !8}
!2020 = !{!2016, !2021, !2022, !2023, !2024}
!2021 = !DILocalVariable(name: "s2", arg: 2, scope: !2017, file: !1880, line: 76, type: !6)
!2022 = !DILocalVariable(name: "s26", arg: 3, scope: !2017, file: !1880, line: 76, type: !8)
!2023 = !DILocalVariable(name: "s27", arg: 4, scope: !2017, file: !1880, line: 76, type: !8)
!2024 = !DILocalVariable(name: "s28", arg: 5, scope: !2017, file: !1880, line: 76, type: !8)
!2025 = !DILocation(line: 0, scope: !2017, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 97, column: 16, scope: !2027, inlinedAt: !2013)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1880, line: 94, column: 11)
!2028 = distinct !DILexicalBlock(scope: !1990, file: !1880, line: 93, column: 5)
!2029 = !DILocation(line: 78, column: 7, scope: !2030, inlinedAt: !2026)
!2030 = distinct !DILexicalBlock(scope: !2017, file: !1880, line: 78, column: 7)
!2031 = !DILocation(line: 78, column: 7, scope: !2017, inlinedAt: !2026)
!2032 = !DILocalVariable(name: "s1", arg: 1, scope: !2033, file: !1880, line: 62, type: !6)
!2033 = distinct !DISubprogram(name: "strcaseeq7", scope: !1880, file: !1880, line: 62, type: !2034, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!18, !6, !6, !8, !8}
!2036 = !{!2032, !2037, !2038, !2039}
!2037 = !DILocalVariable(name: "s2", arg: 2, scope: !2033, file: !1880, line: 62, type: !6)
!2038 = !DILocalVariable(name: "s27", arg: 3, scope: !2033, file: !1880, line: 62, type: !8)
!2039 = !DILocalVariable(name: "s28", arg: 4, scope: !2033, file: !1880, line: 62, type: !8)
!2040 = !DILocation(line: 0, scope: !2033, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 83, column: 16, scope: !2042, inlinedAt: !2026)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !1880, line: 80, column: 11)
!2043 = distinct !DILexicalBlock(scope: !2030, file: !1880, line: 79, column: 5)
!2044 = !DILocation(line: 64, column: 7, scope: !2045, inlinedAt: !2041)
!2045 = distinct !DILexicalBlock(scope: !2033, file: !1880, line: 64, column: 7)
!2046 = !DILocation(line: 236, column: 7, scope: !1864)
!2047 = !DILocation(line: 237, column: 12, scope: !1998)
!2048 = !DILocation(line: 237, column: 21, scope: !1998)
!2049 = !DILocation(line: 237, column: 5, scope: !1998)
!2050 = !DILocation(line: 239, column: 13, scope: !1864)
!2051 = !DILocation(line: 239, column: 11, scope: !1864)
!2052 = !DILocation(line: 239, column: 3, scope: !1864)
!2053 = !DILocation(line: 240, column: 1, scope: !1864)
!2054 = distinct !DISubprogram(name: "quotearg_alloc", scope: !144, file: !144, line: 799, type: !2055, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!25, !6, !69, !191}
!2057 = !{!2058, !2059, !2060}
!2058 = !DILocalVariable(name: "arg", arg: 1, scope: !2054, file: !144, line: 799, type: !6)
!2059 = !DILocalVariable(name: "argsize", arg: 2, scope: !2054, file: !144, line: 799, type: !69)
!2060 = !DILocalVariable(name: "o", arg: 3, scope: !2054, file: !144, line: 800, type: !191)
!2061 = !DILocation(line: 0, scope: !2054)
!2062 = !DILocalVariable(name: "arg", arg: 1, scope: !2063, file: !144, line: 812, type: !6)
!2063 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !144, file: !144, line: 812, type: !2064, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!25, !6, !69, !401, !191}
!2066 = !{!2062, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2067 = !DILocalVariable(name: "argsize", arg: 2, scope: !2063, file: !144, line: 812, type: !69)
!2068 = !DILocalVariable(name: "size", arg: 3, scope: !2063, file: !144, line: 812, type: !401)
!2069 = !DILocalVariable(name: "o", arg: 4, scope: !2063, file: !144, line: 813, type: !191)
!2070 = !DILocalVariable(name: "p", scope: !2063, file: !144, line: 815, type: !191)
!2071 = !DILocalVariable(name: "e", scope: !2063, file: !144, line: 816, type: !18)
!2072 = !DILocalVariable(name: "flags", scope: !2063, file: !144, line: 818, type: !18)
!2073 = !DILocalVariable(name: "bufsize", scope: !2063, file: !144, line: 819, type: !69)
!2074 = !DILocalVariable(name: "buf", scope: !2063, file: !144, line: 823, type: !25)
!2075 = !DILocation(line: 0, scope: !2063, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 802, column: 10, scope: !2054)
!2077 = !DILocation(line: 815, column: 37, scope: !2063, inlinedAt: !2076)
!2078 = !DILocation(line: 816, column: 11, scope: !2063, inlinedAt: !2076)
!2079 = !DILocation(line: 818, column: 18, scope: !2063, inlinedAt: !2076)
!2080 = !DILocation(line: 818, column: 24, scope: !2063, inlinedAt: !2076)
!2081 = !DILocation(line: 819, column: 69, scope: !2063, inlinedAt: !2076)
!2082 = !DILocation(line: 820, column: 53, scope: !2063, inlinedAt: !2076)
!2083 = !DILocation(line: 821, column: 49, scope: !2063, inlinedAt: !2076)
!2084 = !DILocation(line: 822, column: 49, scope: !2063, inlinedAt: !2076)
!2085 = !DILocation(line: 819, column: 20, scope: !2063, inlinedAt: !2076)
!2086 = !DILocation(line: 822, column: 62, scope: !2063, inlinedAt: !2076)
!2087 = !DILocalVariable(name: "n", arg: 1, scope: !2088, file: !182, line: 216, type: !69)
!2088 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2089, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!25, !69}
!2091 = !{!2087}
!2092 = !DILocation(line: 0, scope: !2088, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 823, column: 15, scope: !2063, inlinedAt: !2076)
!2094 = !DILocation(line: 218, column: 10, scope: !2088, inlinedAt: !2093)
!2095 = !DILocation(line: 824, column: 60, scope: !2063, inlinedAt: !2076)
!2096 = !DILocation(line: 826, column: 32, scope: !2063, inlinedAt: !2076)
!2097 = !DILocation(line: 826, column: 47, scope: !2063, inlinedAt: !2076)
!2098 = !DILocation(line: 824, column: 3, scope: !2063, inlinedAt: !2076)
!2099 = !DILocation(line: 827, column: 9, scope: !2063, inlinedAt: !2076)
!2100 = !DILocation(line: 802, column: 3, scope: !2054)
!2101 = !DILocation(line: 0, scope: !2063)
!2102 = !DILocation(line: 815, column: 37, scope: !2063)
!2103 = !DILocation(line: 816, column: 11, scope: !2063)
!2104 = !DILocation(line: 818, column: 18, scope: !2063)
!2105 = !DILocation(line: 818, column: 27, scope: !2063)
!2106 = !DILocation(line: 818, column: 24, scope: !2063)
!2107 = !DILocation(line: 819, column: 69, scope: !2063)
!2108 = !DILocation(line: 820, column: 53, scope: !2063)
!2109 = !DILocation(line: 821, column: 49, scope: !2063)
!2110 = !DILocation(line: 822, column: 49, scope: !2063)
!2111 = !DILocation(line: 819, column: 20, scope: !2063)
!2112 = !DILocation(line: 822, column: 62, scope: !2063)
!2113 = !DILocation(line: 0, scope: !2088, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 823, column: 15, scope: !2063)
!2115 = !DILocation(line: 218, column: 10, scope: !2088, inlinedAt: !2114)
!2116 = !DILocation(line: 824, column: 60, scope: !2063)
!2117 = !DILocation(line: 826, column: 32, scope: !2063)
!2118 = !DILocation(line: 826, column: 47, scope: !2063)
!2119 = !DILocation(line: 824, column: 3, scope: !2063)
!2120 = !DILocation(line: 827, column: 9, scope: !2063)
!2121 = !DILocation(line: 828, column: 7, scope: !2063)
!2122 = !DILocation(line: 829, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2063, file: !144, line: 828, column: 7)
!2124 = !{!2125, !2125, i64 0}
!2125 = !{!"long", !1023, i64 0}
!2126 = !DILocation(line: 829, column: 5, scope: !2123)
!2127 = !DILocation(line: 830, column: 3, scope: !2063)
!2128 = distinct !DISubprogram(name: "quotearg_free", scope: !144, file: !144, line: 848, type: !250, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2129)
!2129 = !{!2130, !2131}
!2130 = !DILocalVariable(name: "sv", scope: !2128, file: !144, line: 850, type: !273)
!2131 = !DILocalVariable(name: "i", scope: !2128, file: !144, line: 851, type: !18)
!2132 = !DILocation(line: 850, column: 24, scope: !2128)
!2133 = !DILocation(line: 0, scope: !2128)
!2134 = !DILocation(line: 852, column: 19, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !144, line: 852, column: 3)
!2136 = distinct !DILexicalBlock(scope: !2128, file: !144, line: 852, column: 3)
!2137 = !DILocation(line: 852, column: 17, scope: !2135)
!2138 = !DILocation(line: 852, column: 3, scope: !2136)
!2139 = !DILocation(line: 853, column: 17, scope: !2135)
!2140 = !{!2141, !1022, i64 8}
!2141 = !{!"slotvec", !2125, i64 0, !1022, i64 8}
!2142 = !DILocation(line: 853, column: 5, scope: !2135)
!2143 = !DILocation(line: 852, column: 28, scope: !2135)
!2144 = distinct !{!2144, !2138, !2145}
!2145 = !DILocation(line: 853, column: 20, scope: !2136)
!2146 = !DILocation(line: 854, column: 13, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2128, file: !144, line: 854, column: 7)
!2148 = !DILocation(line: 854, column: 17, scope: !2147)
!2149 = !DILocation(line: 854, column: 7, scope: !2128)
!2150 = !DILocation(line: 856, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !144, line: 855, column: 5)
!2152 = !DILocation(line: 857, column: 21, scope: !2151)
!2153 = !{!2141, !2125, i64 0}
!2154 = !DILocation(line: 858, column: 20, scope: !2151)
!2155 = !DILocation(line: 859, column: 5, scope: !2151)
!2156 = !DILocation(line: 860, column: 10, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2128, file: !144, line: 860, column: 7)
!2158 = !DILocation(line: 860, column: 7, scope: !2128)
!2159 = !DILocation(line: 862, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !144, line: 861, column: 5)
!2161 = !DILocation(line: 862, column: 7, scope: !2160)
!2162 = !DILocation(line: 863, column: 15, scope: !2160)
!2163 = !DILocation(line: 864, column: 5, scope: !2160)
!2164 = !DILocation(line: 865, column: 10, scope: !2128)
!2165 = !DILocation(line: 866, column: 1, scope: !2128)
!2166 = distinct !DISubprogram(name: "quotearg_n", scope: !144, file: !144, line: 931, type: !338, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2167)
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "n", arg: 1, scope: !2166, file: !144, line: 931, type: !18)
!2169 = !DILocalVariable(name: "arg", arg: 2, scope: !2166, file: !144, line: 931, type: !6)
!2170 = !DILocation(line: 0, scope: !2166)
!2171 = !DILocation(line: 933, column: 10, scope: !2166)
!2172 = !DILocation(line: 933, column: 3, scope: !2166)
!2173 = distinct !DISubprogram(name: "quotearg_n_options", scope: !144, file: !144, line: 877, type: !2174, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!25, !18, !6, !69, !191}
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2186, !2187, !2189, !2190, !2191}
!2177 = !DILocalVariable(name: "n", arg: 1, scope: !2173, file: !144, line: 877, type: !18)
!2178 = !DILocalVariable(name: "arg", arg: 2, scope: !2173, file: !144, line: 877, type: !6)
!2179 = !DILocalVariable(name: "argsize", arg: 3, scope: !2173, file: !144, line: 877, type: !69)
!2180 = !DILocalVariable(name: "options", arg: 4, scope: !2173, file: !144, line: 878, type: !191)
!2181 = !DILocalVariable(name: "e", scope: !2173, file: !144, line: 880, type: !18)
!2182 = !DILocalVariable(name: "sv", scope: !2173, file: !144, line: 882, type: !273)
!2183 = !DILocalVariable(name: "preallocated", scope: !2184, file: !144, line: 889, type: !92)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !144, line: 888, column: 5)
!2185 = distinct !DILexicalBlock(scope: !2173, file: !144, line: 887, column: 7)
!2186 = !DILocalVariable(name: "nmax", scope: !2184, file: !144, line: 890, type: !18)
!2187 = !DILocalVariable(name: "size", scope: !2188, file: !144, line: 903, type: !69)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !144, line: 902, column: 3)
!2189 = !DILocalVariable(name: "val", scope: !2188, file: !144, line: 904, type: !25)
!2190 = !DILocalVariable(name: "flags", scope: !2188, file: !144, line: 906, type: !18)
!2191 = !DILocalVariable(name: "qsize", scope: !2188, file: !144, line: 907, type: !69)
!2192 = !DILocation(line: 0, scope: !2173)
!2193 = !DILocation(line: 880, column: 11, scope: !2173)
!2194 = !DILocation(line: 882, column: 24, scope: !2173)
!2195 = !DILocation(line: 884, column: 9, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2173, file: !144, line: 884, column: 7)
!2197 = !DILocation(line: 884, column: 7, scope: !2173)
!2198 = !DILocation(line: 885, column: 5, scope: !2196)
!2199 = !DILocation(line: 887, column: 7, scope: !2185)
!2200 = !DILocation(line: 887, column: 14, scope: !2185)
!2201 = !DILocation(line: 887, column: 7, scope: !2173)
!2202 = !DILocation(line: 889, column: 31, scope: !2184)
!2203 = !DILocation(line: 0, scope: !2184)
!2204 = !DILocation(line: 892, column: 16, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2184, file: !144, line: 892, column: 11)
!2206 = !DILocation(line: 892, column: 11, scope: !2184)
!2207 = !DILocation(line: 893, column: 9, scope: !2205)
!2208 = !DILocation(line: 895, column: 32, scope: !2184)
!2209 = !DILocation(line: 895, column: 61, scope: !2184)
!2210 = !DILocation(line: 895, column: 58, scope: !2184)
!2211 = !DILocation(line: 895, column: 66, scope: !2184)
!2212 = !DILocation(line: 895, column: 22, scope: !2184)
!2213 = !DILocation(line: 895, column: 15, scope: !2184)
!2214 = !DILocation(line: 896, column: 11, scope: !2184)
!2215 = !DILocation(line: 897, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2184, file: !144, line: 896, column: 11)
!2217 = !{i64 0, i64 8, !2124, i64 8, i64 8, !1021}
!2218 = !DILocation(line: 897, column: 9, scope: !2216)
!2219 = !DILocation(line: 898, column: 20, scope: !2184)
!2220 = !DILocation(line: 898, column: 18, scope: !2184)
!2221 = !DILocation(line: 898, column: 15, scope: !2184)
!2222 = !DILocation(line: 898, column: 38, scope: !2184)
!2223 = !DILocation(line: 898, column: 31, scope: !2184)
!2224 = !DILocation(line: 898, column: 48, scope: !2184)
!2225 = !DILocation(line: 0, scope: !1621, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 898, column: 7, scope: !2184)
!2227 = !DILocation(line: 71, column: 10, scope: !1621, inlinedAt: !2226)
!2228 = !DILocation(line: 899, column: 14, scope: !2184)
!2229 = !DILocation(line: 900, column: 5, scope: !2184)
!2230 = !DILocation(line: 903, column: 19, scope: !2188)
!2231 = !DILocation(line: 903, column: 25, scope: !2188)
!2232 = !DILocation(line: 0, scope: !2188)
!2233 = !DILocation(line: 904, column: 23, scope: !2188)
!2234 = !DILocation(line: 906, column: 26, scope: !2188)
!2235 = !DILocation(line: 906, column: 32, scope: !2188)
!2236 = !DILocation(line: 908, column: 55, scope: !2188)
!2237 = !DILocation(line: 909, column: 46, scope: !2188)
!2238 = !DILocation(line: 910, column: 55, scope: !2188)
!2239 = !DILocation(line: 911, column: 55, scope: !2188)
!2240 = !DILocation(line: 907, column: 20, scope: !2188)
!2241 = !DILocation(line: 913, column: 14, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2188, file: !144, line: 913, column: 9)
!2243 = !DILocation(line: 913, column: 9, scope: !2188)
!2244 = !DILocation(line: 915, column: 35, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !144, line: 914, column: 7)
!2246 = !DILocation(line: 915, column: 20, scope: !2245)
!2247 = !DILocation(line: 916, column: 17, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !144, line: 916, column: 13)
!2249 = !DILocation(line: 916, column: 13, scope: !2245)
!2250 = !DILocation(line: 917, column: 11, scope: !2248)
!2251 = !DILocation(line: 0, scope: !2088, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 918, column: 27, scope: !2245)
!2253 = !DILocation(line: 218, column: 10, scope: !2088, inlinedAt: !2252)
!2254 = !DILocation(line: 918, column: 19, scope: !2245)
!2255 = !DILocation(line: 919, column: 69, scope: !2245)
!2256 = !DILocation(line: 921, column: 44, scope: !2245)
!2257 = !DILocation(line: 922, column: 44, scope: !2245)
!2258 = !DILocation(line: 919, column: 9, scope: !2245)
!2259 = !DILocation(line: 923, column: 7, scope: !2245)
!2260 = !DILocation(line: 925, column: 11, scope: !2188)
!2261 = !DILocation(line: 926, column: 5, scope: !2188)
!2262 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !144, file: !144, line: 937, type: !2263, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!25, !18, !6, !69}
!2265 = !{!2266, !2267, !2268}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !144, line: 937, type: !18)
!2267 = !DILocalVariable(name: "arg", arg: 2, scope: !2262, file: !144, line: 937, type: !6)
!2268 = !DILocalVariable(name: "argsize", arg: 3, scope: !2262, file: !144, line: 937, type: !69)
!2269 = !DILocation(line: 0, scope: !2262)
!2270 = !DILocation(line: 939, column: 10, scope: !2262)
!2271 = !DILocation(line: 939, column: 3, scope: !2262)
!2272 = distinct !DISubprogram(name: "quotearg", scope: !144, file: !144, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2273)
!2273 = !{!2274}
!2274 = !DILocalVariable(name: "arg", arg: 1, scope: !2272, file: !144, line: 943, type: !6)
!2275 = !DILocation(line: 0, scope: !2272)
!2276 = !DILocation(line: 0, scope: !2166, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 945, column: 10, scope: !2272)
!2278 = !DILocation(line: 933, column: 10, scope: !2166, inlinedAt: !2277)
!2279 = !DILocation(line: 945, column: 3, scope: !2272)
!2280 = distinct !DISubprogram(name: "quotearg_mem", scope: !144, file: !144, line: 949, type: !2281, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!25, !6, !69}
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "arg", arg: 1, scope: !2280, file: !144, line: 949, type: !6)
!2285 = !DILocalVariable(name: "argsize", arg: 2, scope: !2280, file: !144, line: 949, type: !69)
!2286 = !DILocation(line: 0, scope: !2280)
!2287 = !DILocation(line: 0, scope: !2262, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 951, column: 10, scope: !2280)
!2289 = !DILocation(line: 939, column: 10, scope: !2262, inlinedAt: !2288)
!2290 = !DILocation(line: 951, column: 3, scope: !2280)
!2291 = distinct !DISubprogram(name: "quotearg_n_style", scope: !144, file: !144, line: 955, type: !2292, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!25, !18, !146, !6}
!2294 = !{!2295, !2296, !2297, !2298}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !144, line: 955, type: !18)
!2296 = !DILocalVariable(name: "s", arg: 2, scope: !2291, file: !144, line: 955, type: !146)
!2297 = !DILocalVariable(name: "arg", arg: 3, scope: !2291, file: !144, line: 955, type: !6)
!2298 = !DILocalVariable(name: "o", scope: !2291, file: !144, line: 957, type: !192)
!2299 = !DILocation(line: 0, scope: !2291)
!2300 = !DILocation(line: 957, column: 3, scope: !2291)
!2301 = !DILocation(line: 957, column: 32, scope: !2291)
!2302 = !DILocalVariable(name: "style", arg: 1, scope: !2303, file: !144, line: 193, type: !146)
!2303 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !144, file: !144, line: 193, type: !2304, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!193, !146}
!2306 = !{!2302, !2307}
!2307 = !DILocalVariable(name: "o", scope: !2303, file: !144, line: 195, type: !193)
!2308 = !DILocation(line: 0, scope: !2303, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 957, column: 36, scope: !2291)
!2310 = !DILocation(line: 195, column: 26, scope: !2303, inlinedAt: !2309)
!2311 = !{!2312}
!2312 = distinct !{!2312, !2313, !"quoting_options_from_style: argument 0"}
!2313 = distinct !{!2313, !"quoting_options_from_style"}
!2314 = !DILocation(line: 196, column: 13, scope: !2315, inlinedAt: !2309)
!2315 = distinct !DILexicalBlock(scope: !2303, file: !144, line: 196, column: 7)
!2316 = !DILocation(line: 196, column: 7, scope: !2303, inlinedAt: !2309)
!2317 = !DILocation(line: 197, column: 5, scope: !2315, inlinedAt: !2309)
!2318 = !DILocation(line: 198, column: 5, scope: !2303, inlinedAt: !2309)
!2319 = !DILocation(line: 198, column: 11, scope: !2303, inlinedAt: !2309)
!2320 = !DILocation(line: 958, column: 10, scope: !2291)
!2321 = !DILocation(line: 959, column: 1, scope: !2291)
!2322 = !DILocation(line: 958, column: 3, scope: !2291)
!2323 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !144, file: !144, line: 962, type: !2324, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!25, !18, !146, !6, !69}
!2326 = !{!2327, !2328, !2329, !2330, !2331}
!2327 = !DILocalVariable(name: "n", arg: 1, scope: !2323, file: !144, line: 962, type: !18)
!2328 = !DILocalVariable(name: "s", arg: 2, scope: !2323, file: !144, line: 962, type: !146)
!2329 = !DILocalVariable(name: "arg", arg: 3, scope: !2323, file: !144, line: 963, type: !6)
!2330 = !DILocalVariable(name: "argsize", arg: 4, scope: !2323, file: !144, line: 963, type: !69)
!2331 = !DILocalVariable(name: "o", scope: !2323, file: !144, line: 965, type: !192)
!2332 = !DILocation(line: 0, scope: !2323)
!2333 = !DILocation(line: 965, column: 3, scope: !2323)
!2334 = !DILocation(line: 965, column: 32, scope: !2323)
!2335 = !DILocation(line: 0, scope: !2303, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 965, column: 36, scope: !2323)
!2337 = !DILocation(line: 195, column: 26, scope: !2303, inlinedAt: !2336)
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"quoting_options_from_style: argument 0"}
!2340 = distinct !{!2340, !"quoting_options_from_style"}
!2341 = !DILocation(line: 196, column: 13, scope: !2315, inlinedAt: !2336)
!2342 = !DILocation(line: 196, column: 7, scope: !2303, inlinedAt: !2336)
!2343 = !DILocation(line: 197, column: 5, scope: !2315, inlinedAt: !2336)
!2344 = !DILocation(line: 198, column: 5, scope: !2303, inlinedAt: !2336)
!2345 = !DILocation(line: 198, column: 11, scope: !2303, inlinedAt: !2336)
!2346 = !DILocation(line: 966, column: 10, scope: !2323)
!2347 = !DILocation(line: 967, column: 1, scope: !2323)
!2348 = !DILocation(line: 966, column: 3, scope: !2323)
!2349 = distinct !DISubprogram(name: "quotearg_style", scope: !144, file: !144, line: 970, type: !2350, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!25, !146, !6}
!2352 = !{!2353, !2354}
!2353 = !DILocalVariable(name: "s", arg: 1, scope: !2349, file: !144, line: 970, type: !146)
!2354 = !DILocalVariable(name: "arg", arg: 2, scope: !2349, file: !144, line: 970, type: !6)
!2355 = !DILocation(line: 195, column: 26, scope: !2303, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 957, column: 36, scope: !2291, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 972, column: 10, scope: !2349)
!2358 = !DILocation(line: 957, column: 32, scope: !2291, inlinedAt: !2357)
!2359 = !DILocation(line: 0, scope: !2349)
!2360 = !DILocation(line: 0, scope: !2291, inlinedAt: !2357)
!2361 = !DILocation(line: 957, column: 3, scope: !2291, inlinedAt: !2357)
!2362 = !DILocation(line: 0, scope: !2303, inlinedAt: !2356)
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"quoting_options_from_style: argument 0"}
!2365 = distinct !{!2365, !"quoting_options_from_style"}
!2366 = !DILocation(line: 196, column: 13, scope: !2315, inlinedAt: !2356)
!2367 = !DILocation(line: 196, column: 7, scope: !2303, inlinedAt: !2356)
!2368 = !DILocation(line: 197, column: 5, scope: !2315, inlinedAt: !2356)
!2369 = !DILocation(line: 198, column: 5, scope: !2303, inlinedAt: !2356)
!2370 = !DILocation(line: 198, column: 11, scope: !2303, inlinedAt: !2356)
!2371 = !DILocation(line: 958, column: 10, scope: !2291, inlinedAt: !2357)
!2372 = !DILocation(line: 959, column: 1, scope: !2291, inlinedAt: !2357)
!2373 = !DILocation(line: 972, column: 3, scope: !2349)
!2374 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !144, file: !144, line: 976, type: !2375, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!25, !146, !6, !69}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "s", arg: 1, scope: !2374, file: !144, line: 976, type: !146)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2374, file: !144, line: 976, type: !6)
!2380 = !DILocalVariable(name: "argsize", arg: 3, scope: !2374, file: !144, line: 976, type: !69)
!2381 = !DILocation(line: 195, column: 26, scope: !2303, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 965, column: 36, scope: !2323, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 978, column: 10, scope: !2374)
!2384 = !DILocation(line: 965, column: 32, scope: !2323, inlinedAt: !2383)
!2385 = !DILocation(line: 0, scope: !2374)
!2386 = !DILocation(line: 0, scope: !2323, inlinedAt: !2383)
!2387 = !DILocation(line: 965, column: 3, scope: !2323, inlinedAt: !2383)
!2388 = !DILocation(line: 0, scope: !2303, inlinedAt: !2382)
!2389 = !{!2390}
!2390 = distinct !{!2390, !2391, !"quoting_options_from_style: argument 0"}
!2391 = distinct !{!2391, !"quoting_options_from_style"}
!2392 = !DILocation(line: 196, column: 13, scope: !2315, inlinedAt: !2382)
!2393 = !DILocation(line: 196, column: 7, scope: !2303, inlinedAt: !2382)
!2394 = !DILocation(line: 197, column: 5, scope: !2315, inlinedAt: !2382)
!2395 = !DILocation(line: 198, column: 5, scope: !2303, inlinedAt: !2382)
!2396 = !DILocation(line: 198, column: 11, scope: !2303, inlinedAt: !2382)
!2397 = !DILocation(line: 966, column: 10, scope: !2323, inlinedAt: !2383)
!2398 = !DILocation(line: 967, column: 1, scope: !2323, inlinedAt: !2383)
!2399 = !DILocation(line: 978, column: 3, scope: !2374)
!2400 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !144, file: !144, line: 982, type: !2401, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!25, !6, !69, !8}
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DILocalVariable(name: "arg", arg: 1, scope: !2400, file: !144, line: 982, type: !6)
!2405 = !DILocalVariable(name: "argsize", arg: 2, scope: !2400, file: !144, line: 982, type: !69)
!2406 = !DILocalVariable(name: "ch", arg: 3, scope: !2400, file: !144, line: 982, type: !8)
!2407 = !DILocalVariable(name: "options", scope: !2400, file: !144, line: 984, type: !193)
!2408 = !DILocation(line: 0, scope: !2400)
!2409 = !DILocation(line: 984, column: 3, scope: !2400)
!2410 = !DILocation(line: 984, column: 26, scope: !2400)
!2411 = !DILocation(line: 985, column: 13, scope: !2400)
!2412 = !{i64 0, i64 4, !1419, i64 4, i64 4, !1137, i64 8, i64 32, !1419, i64 40, i64 8, !1021, i64 48, i64 8, !1021}
!2413 = !DILocation(line: 0, scope: !1232, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 986, column: 3, scope: !2400)
!2415 = !DILocation(line: 156, column: 62, scope: !1232, inlinedAt: !2414)
!2416 = !DILocation(line: 156, column: 57, scope: !1232, inlinedAt: !2414)
!2417 = !DILocation(line: 157, column: 15, scope: !1232, inlinedAt: !2414)
!2418 = !DILocation(line: 158, column: 12, scope: !1232, inlinedAt: !2414)
!2419 = !DILocation(line: 158, column: 15, scope: !1232, inlinedAt: !2414)
!2420 = !DILocation(line: 158, column: 25, scope: !1232, inlinedAt: !2414)
!2421 = !DILocation(line: 159, column: 18, scope: !1232, inlinedAt: !2414)
!2422 = !DILocation(line: 159, column: 23, scope: !1232, inlinedAt: !2414)
!2423 = !DILocation(line: 159, column: 6, scope: !1232, inlinedAt: !2414)
!2424 = !DILocation(line: 987, column: 10, scope: !2400)
!2425 = !DILocation(line: 988, column: 1, scope: !2400)
!2426 = !DILocation(line: 987, column: 3, scope: !2400)
!2427 = distinct !DISubprogram(name: "quotearg_char", scope: !144, file: !144, line: 991, type: !2428, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!25, !6, !8}
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "arg", arg: 1, scope: !2427, file: !144, line: 991, type: !6)
!2432 = !DILocalVariable(name: "ch", arg: 2, scope: !2427, file: !144, line: 991, type: !8)
!2433 = !DILocation(line: 984, column: 26, scope: !2400, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 993, column: 10, scope: !2427)
!2435 = !DILocation(line: 0, scope: !2427)
!2436 = !DILocation(line: 0, scope: !2400, inlinedAt: !2434)
!2437 = !DILocation(line: 984, column: 3, scope: !2400, inlinedAt: !2434)
!2438 = !DILocation(line: 985, column: 13, scope: !2400, inlinedAt: !2434)
!2439 = !DILocation(line: 0, scope: !1232, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 986, column: 3, scope: !2400, inlinedAt: !2434)
!2441 = !DILocation(line: 156, column: 62, scope: !1232, inlinedAt: !2440)
!2442 = !DILocation(line: 156, column: 57, scope: !1232, inlinedAt: !2440)
!2443 = !DILocation(line: 157, column: 15, scope: !1232, inlinedAt: !2440)
!2444 = !DILocation(line: 158, column: 12, scope: !1232, inlinedAt: !2440)
!2445 = !DILocation(line: 158, column: 15, scope: !1232, inlinedAt: !2440)
!2446 = !DILocation(line: 158, column: 25, scope: !1232, inlinedAt: !2440)
!2447 = !DILocation(line: 159, column: 18, scope: !1232, inlinedAt: !2440)
!2448 = !DILocation(line: 159, column: 23, scope: !1232, inlinedAt: !2440)
!2449 = !DILocation(line: 159, column: 6, scope: !1232, inlinedAt: !2440)
!2450 = !DILocation(line: 987, column: 10, scope: !2400, inlinedAt: !2434)
!2451 = !DILocation(line: 988, column: 1, scope: !2400, inlinedAt: !2434)
!2452 = !DILocation(line: 993, column: 3, scope: !2427)
!2453 = distinct !DISubprogram(name: "quotearg_colon", scope: !144, file: !144, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2454)
!2454 = !{!2455}
!2455 = !DILocalVariable(name: "arg", arg: 1, scope: !2453, file: !144, line: 997, type: !6)
!2456 = !DILocation(line: 984, column: 26, scope: !2400, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 993, column: 10, scope: !2427, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 999, column: 10, scope: !2453)
!2459 = !DILocation(line: 0, scope: !2453)
!2460 = !DILocation(line: 0, scope: !2427, inlinedAt: !2458)
!2461 = !DILocation(line: 0, scope: !2400, inlinedAt: !2457)
!2462 = !DILocation(line: 984, column: 3, scope: !2400, inlinedAt: !2457)
!2463 = !DILocation(line: 985, column: 13, scope: !2400, inlinedAt: !2457)
!2464 = !DILocation(line: 0, scope: !1232, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 986, column: 3, scope: !2400, inlinedAt: !2457)
!2466 = !DILocation(line: 156, column: 57, scope: !1232, inlinedAt: !2465)
!2467 = !DILocation(line: 158, column: 12, scope: !1232, inlinedAt: !2465)
!2468 = !DILocation(line: 159, column: 6, scope: !1232, inlinedAt: !2465)
!2469 = !DILocation(line: 987, column: 10, scope: !2400, inlinedAt: !2457)
!2470 = !DILocation(line: 988, column: 1, scope: !2400, inlinedAt: !2457)
!2471 = !DILocation(line: 999, column: 3, scope: !2453)
!2472 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !144, file: !144, line: 1003, type: !2281, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2473)
!2473 = !{!2474, !2475}
!2474 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !144, line: 1003, type: !6)
!2475 = !DILocalVariable(name: "argsize", arg: 2, scope: !2472, file: !144, line: 1003, type: !69)
!2476 = !DILocation(line: 984, column: 26, scope: !2400, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1005, column: 10, scope: !2472)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2400, inlinedAt: !2477)
!2480 = !DILocation(line: 984, column: 3, scope: !2400, inlinedAt: !2477)
!2481 = !DILocation(line: 985, column: 13, scope: !2400, inlinedAt: !2477)
!2482 = !DILocation(line: 0, scope: !1232, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 986, column: 3, scope: !2400, inlinedAt: !2477)
!2484 = !DILocation(line: 156, column: 57, scope: !1232, inlinedAt: !2483)
!2485 = !DILocation(line: 158, column: 12, scope: !1232, inlinedAt: !2483)
!2486 = !DILocation(line: 159, column: 6, scope: !1232, inlinedAt: !2483)
!2487 = !DILocation(line: 987, column: 10, scope: !2400, inlinedAt: !2477)
!2488 = !DILocation(line: 988, column: 1, scope: !2400, inlinedAt: !2477)
!2489 = !DILocation(line: 1005, column: 3, scope: !2472)
!2490 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !144, file: !144, line: 1009, type: !2292, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2491)
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "n", arg: 1, scope: !2490, file: !144, line: 1009, type: !18)
!2493 = !DILocalVariable(name: "s", arg: 2, scope: !2490, file: !144, line: 1009, type: !146)
!2494 = !DILocalVariable(name: "arg", arg: 3, scope: !2490, file: !144, line: 1009, type: !6)
!2495 = !DILocalVariable(name: "options", scope: !2490, file: !144, line: 1011, type: !193)
!2496 = !DILocation(line: 195, column: 26, scope: !2303, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1012, column: 13, scope: !2490)
!2498 = !DILocation(line: 0, scope: !2490)
!2499 = !DILocation(line: 1011, column: 3, scope: !2490)
!2500 = !DILocation(line: 1011, column: 26, scope: !2490)
!2501 = !DILocation(line: 1012, column: 13, scope: !2490)
!2502 = !DILocation(line: 0, scope: !2303, inlinedAt: !2497)
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"quoting_options_from_style: argument 0"}
!2505 = distinct !{!2505, !"quoting_options_from_style"}
!2506 = !DILocation(line: 196, column: 13, scope: !2315, inlinedAt: !2497)
!2507 = !DILocation(line: 196, column: 7, scope: !2303, inlinedAt: !2497)
!2508 = !DILocation(line: 197, column: 5, scope: !2315, inlinedAt: !2497)
!2509 = !DILocation(line: 0, scope: !1232, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1013, column: 3, scope: !2490)
!2511 = !DILocation(line: 156, column: 57, scope: !1232, inlinedAt: !2510)
!2512 = !DILocation(line: 158, column: 12, scope: !1232, inlinedAt: !2510)
!2513 = !DILocation(line: 159, column: 6, scope: !1232, inlinedAt: !2510)
!2514 = !DILocation(line: 1014, column: 10, scope: !2490)
!2515 = !DILocation(line: 1015, column: 1, scope: !2490)
!2516 = !DILocation(line: 1014, column: 3, scope: !2490)
!2517 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !144, file: !144, line: 1018, type: !2518, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!25, !18, !6, !6, !6}
!2520 = !{!2521, !2522, !2523, !2524}
!2521 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !144, line: 1018, type: !18)
!2522 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2517, file: !144, line: 1018, type: !6)
!2523 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2517, file: !144, line: 1019, type: !6)
!2524 = !DILocalVariable(name: "arg", arg: 4, scope: !2517, file: !144, line: 1019, type: !6)
!2525 = !DILocalVariable(name: "o", scope: !2526, file: !144, line: 1030, type: !193)
!2526 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !144, file: !144, line: 1026, type: !2527, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!25, !18, !6, !6, !6, !69}
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2525}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !144, line: 1026, type: !18)
!2531 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2526, file: !144, line: 1026, type: !6)
!2532 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2526, file: !144, line: 1027, type: !6)
!2533 = !DILocalVariable(name: "arg", arg: 4, scope: !2526, file: !144, line: 1028, type: !6)
!2534 = !DILocalVariable(name: "argsize", arg: 5, scope: !2526, file: !144, line: 1028, type: !69)
!2535 = !DILocation(line: 1030, column: 26, scope: !2526, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 1021, column: 10, scope: !2517)
!2537 = !DILocation(line: 0, scope: !2517)
!2538 = !DILocation(line: 0, scope: !2526, inlinedAt: !2536)
!2539 = !DILocation(line: 1030, column: 3, scope: !2526, inlinedAt: !2536)
!2540 = !DILocation(line: 1030, column: 30, scope: !2526, inlinedAt: !2536)
!2541 = !DILocation(line: 0, scope: !1273, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 1031, column: 3, scope: !2526, inlinedAt: !2536)
!2543 = !DILocation(line: 184, column: 6, scope: !1273, inlinedAt: !2542)
!2544 = !DILocation(line: 184, column: 12, scope: !1273, inlinedAt: !2542)
!2545 = !DILocation(line: 185, column: 8, scope: !1287, inlinedAt: !2542)
!2546 = !DILocation(line: 185, column: 23, scope: !1287, inlinedAt: !2542)
!2547 = !DILocation(line: 185, column: 19, scope: !1287, inlinedAt: !2542)
!2548 = !DILocation(line: 186, column: 5, scope: !1287, inlinedAt: !2542)
!2549 = !DILocation(line: 187, column: 6, scope: !1273, inlinedAt: !2542)
!2550 = !DILocation(line: 187, column: 17, scope: !1273, inlinedAt: !2542)
!2551 = !DILocation(line: 188, column: 6, scope: !1273, inlinedAt: !2542)
!2552 = !DILocation(line: 188, column: 18, scope: !1273, inlinedAt: !2542)
!2553 = !DILocation(line: 1032, column: 10, scope: !2526, inlinedAt: !2536)
!2554 = !DILocation(line: 1033, column: 1, scope: !2526, inlinedAt: !2536)
!2555 = !DILocation(line: 1021, column: 3, scope: !2517)
!2556 = !DILocation(line: 0, scope: !2526)
!2557 = !DILocation(line: 1030, column: 3, scope: !2526)
!2558 = !DILocation(line: 1030, column: 26, scope: !2526)
!2559 = !DILocation(line: 1030, column: 30, scope: !2526)
!2560 = !DILocation(line: 0, scope: !1273, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 1031, column: 3, scope: !2526)
!2562 = !DILocation(line: 184, column: 6, scope: !1273, inlinedAt: !2561)
!2563 = !DILocation(line: 184, column: 12, scope: !1273, inlinedAt: !2561)
!2564 = !DILocation(line: 185, column: 8, scope: !1287, inlinedAt: !2561)
!2565 = !DILocation(line: 185, column: 23, scope: !1287, inlinedAt: !2561)
!2566 = !DILocation(line: 185, column: 19, scope: !1287, inlinedAt: !2561)
!2567 = !DILocation(line: 186, column: 5, scope: !1287, inlinedAt: !2561)
!2568 = !DILocation(line: 187, column: 6, scope: !1273, inlinedAt: !2561)
!2569 = !DILocation(line: 187, column: 17, scope: !1273, inlinedAt: !2561)
!2570 = !DILocation(line: 188, column: 6, scope: !1273, inlinedAt: !2561)
!2571 = !DILocation(line: 188, column: 18, scope: !1273, inlinedAt: !2561)
!2572 = !DILocation(line: 1032, column: 10, scope: !2526)
!2573 = !DILocation(line: 1033, column: 1, scope: !2526)
!2574 = !DILocation(line: 1032, column: 3, scope: !2526)
!2575 = distinct !DISubprogram(name: "quotearg_custom", scope: !144, file: !144, line: 1036, type: !2576, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!25, !6, !6, !6}
!2578 = !{!2579, !2580, !2581}
!2579 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2575, file: !144, line: 1036, type: !6)
!2580 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2575, file: !144, line: 1036, type: !6)
!2581 = !DILocalVariable(name: "arg", arg: 3, scope: !2575, file: !144, line: 1037, type: !6)
!2582 = !DILocation(line: 1030, column: 26, scope: !2526, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 1021, column: 10, scope: !2517, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1039, column: 10, scope: !2575)
!2585 = !DILocation(line: 0, scope: !2575)
!2586 = !DILocation(line: 0, scope: !2517, inlinedAt: !2584)
!2587 = !DILocation(line: 0, scope: !2526, inlinedAt: !2583)
!2588 = !DILocation(line: 1030, column: 3, scope: !2526, inlinedAt: !2583)
!2589 = !DILocation(line: 1030, column: 30, scope: !2526, inlinedAt: !2583)
!2590 = !DILocation(line: 0, scope: !1273, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1031, column: 3, scope: !2526, inlinedAt: !2583)
!2592 = !DILocation(line: 184, column: 6, scope: !1273, inlinedAt: !2591)
!2593 = !DILocation(line: 184, column: 12, scope: !1273, inlinedAt: !2591)
!2594 = !DILocation(line: 185, column: 8, scope: !1287, inlinedAt: !2591)
!2595 = !DILocation(line: 185, column: 23, scope: !1287, inlinedAt: !2591)
!2596 = !DILocation(line: 185, column: 19, scope: !1287, inlinedAt: !2591)
!2597 = !DILocation(line: 186, column: 5, scope: !1287, inlinedAt: !2591)
!2598 = !DILocation(line: 187, column: 6, scope: !1273, inlinedAt: !2591)
!2599 = !DILocation(line: 187, column: 17, scope: !1273, inlinedAt: !2591)
!2600 = !DILocation(line: 188, column: 6, scope: !1273, inlinedAt: !2591)
!2601 = !DILocation(line: 188, column: 18, scope: !1273, inlinedAt: !2591)
!2602 = !DILocation(line: 1032, column: 10, scope: !2526, inlinedAt: !2583)
!2603 = !DILocation(line: 1033, column: 1, scope: !2526, inlinedAt: !2583)
!2604 = !DILocation(line: 1039, column: 3, scope: !2575)
!2605 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !144, file: !144, line: 1043, type: !2606, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!25, !6, !6, !6, !69}
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2605, file: !144, line: 1043, type: !6)
!2610 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2605, file: !144, line: 1043, type: !6)
!2611 = !DILocalVariable(name: "arg", arg: 3, scope: !2605, file: !144, line: 1044, type: !6)
!2612 = !DILocalVariable(name: "argsize", arg: 4, scope: !2605, file: !144, line: 1044, type: !69)
!2613 = !DILocation(line: 1030, column: 26, scope: !2526, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1046, column: 10, scope: !2605)
!2615 = !DILocation(line: 0, scope: !2605)
!2616 = !DILocation(line: 0, scope: !2526, inlinedAt: !2614)
!2617 = !DILocation(line: 1030, column: 3, scope: !2526, inlinedAt: !2614)
!2618 = !DILocation(line: 1030, column: 30, scope: !2526, inlinedAt: !2614)
!2619 = !DILocation(line: 0, scope: !1273, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1031, column: 3, scope: !2526, inlinedAt: !2614)
!2621 = !DILocation(line: 184, column: 6, scope: !1273, inlinedAt: !2620)
!2622 = !DILocation(line: 184, column: 12, scope: !1273, inlinedAt: !2620)
!2623 = !DILocation(line: 185, column: 8, scope: !1287, inlinedAt: !2620)
!2624 = !DILocation(line: 185, column: 23, scope: !1287, inlinedAt: !2620)
!2625 = !DILocation(line: 185, column: 19, scope: !1287, inlinedAt: !2620)
!2626 = !DILocation(line: 186, column: 5, scope: !1287, inlinedAt: !2620)
!2627 = !DILocation(line: 187, column: 6, scope: !1273, inlinedAt: !2620)
!2628 = !DILocation(line: 187, column: 17, scope: !1273, inlinedAt: !2620)
!2629 = !DILocation(line: 188, column: 6, scope: !1273, inlinedAt: !2620)
!2630 = !DILocation(line: 188, column: 18, scope: !1273, inlinedAt: !2620)
!2631 = !DILocation(line: 1032, column: 10, scope: !2526, inlinedAt: !2614)
!2632 = !DILocation(line: 1033, column: 1, scope: !2526, inlinedAt: !2614)
!2633 = !DILocation(line: 1046, column: 3, scope: !2605)
!2634 = distinct !DISubprogram(name: "quote_n_mem", scope: !144, file: !144, line: 1061, type: !2635, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!6, !18, !6, !69}
!2637 = !{!2638, !2639, !2640}
!2638 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !144, line: 1061, type: !18)
!2639 = !DILocalVariable(name: "arg", arg: 2, scope: !2634, file: !144, line: 1061, type: !6)
!2640 = !DILocalVariable(name: "argsize", arg: 3, scope: !2634, file: !144, line: 1061, type: !69)
!2641 = !DILocation(line: 0, scope: !2634)
!2642 = !DILocation(line: 1063, column: 10, scope: !2634)
!2643 = !DILocation(line: 1063, column: 3, scope: !2634)
!2644 = distinct !DISubprogram(name: "quote_mem", scope: !144, file: !144, line: 1067, type: !2645, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!6, !6, !69}
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "arg", arg: 1, scope: !2644, file: !144, line: 1067, type: !6)
!2649 = !DILocalVariable(name: "argsize", arg: 2, scope: !2644, file: !144, line: 1067, type: !69)
!2650 = !DILocation(line: 0, scope: !2644)
!2651 = !DILocation(line: 0, scope: !2634, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1069, column: 10, scope: !2644)
!2653 = !DILocation(line: 1063, column: 10, scope: !2634, inlinedAt: !2652)
!2654 = !DILocation(line: 1069, column: 3, scope: !2644)
!2655 = distinct !DISubprogram(name: "quote_n", scope: !144, file: !144, line: 1073, type: !2656, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!6, !18, !6}
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "n", arg: 1, scope: !2655, file: !144, line: 1073, type: !18)
!2660 = !DILocalVariable(name: "arg", arg: 2, scope: !2655, file: !144, line: 1073, type: !6)
!2661 = !DILocation(line: 0, scope: !2655)
!2662 = !DILocation(line: 0, scope: !2634, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1075, column: 10, scope: !2655)
!2664 = !DILocation(line: 1063, column: 10, scope: !2634, inlinedAt: !2663)
!2665 = !DILocation(line: 1075, column: 3, scope: !2655)
!2666 = distinct !DISubprogram(name: "quote", scope: !144, file: !144, line: 1079, type: !2667, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!6, !6}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !144, line: 1079, type: !6)
!2671 = !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 0, scope: !2655, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1081, column: 10, scope: !2666)
!2674 = !DILocation(line: 0, scope: !2634, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1075, column: 10, scope: !2655, inlinedAt: !2673)
!2676 = !DILocation(line: 1063, column: 10, scope: !2634, inlinedAt: !2675)
!2677 = !DILocation(line: 1081, column: 3, scope: !2666)
!2678 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2679, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2685)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2681, !6, !6, !6, !2684, !69}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2683, line: 7, baseType: !363)
!2683 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691}
!2686 = !DILocalVariable(name: "stream", arg: 1, scope: !2678, file: !353, line: 61, type: !2681)
!2687 = !DILocalVariable(name: "command_name", arg: 2, scope: !2678, file: !353, line: 62, type: !6)
!2688 = !DILocalVariable(name: "package", arg: 3, scope: !2678, file: !353, line: 62, type: !6)
!2689 = !DILocalVariable(name: "version", arg: 4, scope: !2678, file: !353, line: 63, type: !6)
!2690 = !DILocalVariable(name: "authors", arg: 5, scope: !2678, file: !353, line: 64, type: !2684)
!2691 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2678, file: !353, line: 64, type: !69)
!2692 = !DILocation(line: 0, scope: !2678)
!2693 = !DILocation(line: 66, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2678, file: !353, line: 66, column: 7)
!2695 = !DILocation(line: 66, column: 7, scope: !2678)
!2696 = !DILocation(line: 67, column: 5, scope: !2694)
!2697 = !DILocation(line: 69, column: 5, scope: !2694)
!2698 = !DILocation(line: 83, column: 3, scope: !2678)
!2699 = !DILocation(line: 85, column: 3, scope: !2678)
!2700 = !DILocation(line: 88, column: 3, scope: !2678)
!2701 = !DILocation(line: 95, column: 3, scope: !2678)
!2702 = !DILocation(line: 97, column: 3, scope: !2678)
!2703 = !DILocation(line: 105, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2678, file: !353, line: 98, column: 5)
!2705 = !DILocation(line: 106, column: 7, scope: !2704)
!2706 = !DILocation(line: 109, column: 7, scope: !2704)
!2707 = !DILocation(line: 110, column: 7, scope: !2704)
!2708 = !DILocation(line: 113, column: 7, scope: !2704)
!2709 = !DILocation(line: 115, column: 7, scope: !2704)
!2710 = !DILocation(line: 120, column: 7, scope: !2704)
!2711 = !DILocation(line: 122, column: 7, scope: !2704)
!2712 = !DILocation(line: 127, column: 7, scope: !2704)
!2713 = !DILocation(line: 129, column: 7, scope: !2704)
!2714 = !DILocation(line: 134, column: 7, scope: !2704)
!2715 = !DILocation(line: 137, column: 7, scope: !2704)
!2716 = !DILocation(line: 142, column: 7, scope: !2704)
!2717 = !DILocation(line: 145, column: 7, scope: !2704)
!2718 = !DILocation(line: 150, column: 7, scope: !2704)
!2719 = !DILocation(line: 154, column: 7, scope: !2704)
!2720 = !DILocation(line: 159, column: 7, scope: !2704)
!2721 = !DILocation(line: 163, column: 7, scope: !2704)
!2722 = !DILocation(line: 170, column: 7, scope: !2704)
!2723 = !DILocation(line: 174, column: 7, scope: !2704)
!2724 = !DILocation(line: 176, column: 1, scope: !2678)
!2725 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2726, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2681, !6, !6, !6, !2684}
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734}
!2729 = !DILocalVariable(name: "stream", arg: 1, scope: !2725, file: !353, line: 183, type: !2681)
!2730 = !DILocalVariable(name: "command_name", arg: 2, scope: !2725, file: !353, line: 184, type: !6)
!2731 = !DILocalVariable(name: "package", arg: 3, scope: !2725, file: !353, line: 184, type: !6)
!2732 = !DILocalVariable(name: "version", arg: 4, scope: !2725, file: !353, line: 185, type: !6)
!2733 = !DILocalVariable(name: "authors", arg: 5, scope: !2725, file: !353, line: 185, type: !2684)
!2734 = !DILocalVariable(name: "n_authors", scope: !2725, file: !353, line: 187, type: !69)
!2735 = !DILocation(line: 0, scope: !2725)
!2736 = !DILocation(line: 189, column: 8, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2725, file: !353, line: 189, column: 3)
!2738 = !DILocation(line: 0, scope: !2737)
!2739 = !DILocation(line: 189, column: 23, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2737, file: !353, line: 189, column: 3)
!2741 = !DILocation(line: 189, column: 3, scope: !2737)
!2742 = !DILocation(line: 189, column: 52, scope: !2740)
!2743 = distinct !{!2743, !2741, !2744}
!2744 = !DILocation(line: 190, column: 5, scope: !2737)
!2745 = !DILocation(line: 191, column: 3, scope: !2725)
!2746 = !DILocation(line: 192, column: 1, scope: !2725)
!2747 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2748, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2757)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2681, !6, !6, !6, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !353, line: 192, size: 192, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2751, file: !353, line: 192, baseType: !147, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2751, file: !353, line: 192, baseType: !147, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2751, file: !353, line: 192, baseType: !67, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2751, file: !353, line: 192, baseType: !67, size: 64, offset: 128)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2758 = !DILocalVariable(name: "stream", arg: 1, scope: !2747, file: !353, line: 199, type: !2681)
!2759 = !DILocalVariable(name: "command_name", arg: 2, scope: !2747, file: !353, line: 200, type: !6)
!2760 = !DILocalVariable(name: "package", arg: 3, scope: !2747, file: !353, line: 200, type: !6)
!2761 = !DILocalVariable(name: "version", arg: 4, scope: !2747, file: !353, line: 201, type: !6)
!2762 = !DILocalVariable(name: "authors", arg: 5, scope: !2747, file: !353, line: 201, type: !2750)
!2763 = !DILocalVariable(name: "n_authors", scope: !2747, file: !353, line: 203, type: !69)
!2764 = !DILocalVariable(name: "authtab", scope: !2747, file: !353, line: 204, type: !2765)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !260)
!2766 = !DILocation(line: 0, scope: !2747)
!2767 = !DILocation(line: 204, column: 3, scope: !2747)
!2768 = !DILocation(line: 204, column: 15, scope: !2747)
!2769 = !DILocation(line: 0, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !353, line: 206, column: 3)
!2771 = distinct !DILexicalBlock(scope: !2747, file: !353, line: 206, column: 3)
!2772 = !DILocation(line: 208, column: 35, scope: !2770)
!2773 = !DILocation(line: 208, column: 14, scope: !2770)
!2774 = !DILocation(line: 208, column: 33, scope: !2770)
!2775 = !DILocation(line: 208, column: 67, scope: !2770)
!2776 = !DILocation(line: 206, column: 3, scope: !2771)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = !DILocation(line: 211, column: 3, scope: !2747)
!2779 = !DILocation(line: 213, column: 1, scope: !2747)
!2780 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2781, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2681, !6, !6, !6, null}
!2783 = !{!2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "stream", arg: 1, scope: !2780, file: !353, line: 230, type: !2681)
!2785 = !DILocalVariable(name: "command_name", arg: 2, scope: !2780, file: !353, line: 231, type: !6)
!2786 = !DILocalVariable(name: "package", arg: 3, scope: !2780, file: !353, line: 231, type: !6)
!2787 = !DILocalVariable(name: "version", arg: 4, scope: !2780, file: !353, line: 232, type: !6)
!2788 = !DILocalVariable(name: "authors", scope: !2780, file: !353, line: 234, type: !2789)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !105, line: 52, baseType: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2791, line: 32, baseType: !2792)
!2791 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !353, line: 234, baseType: !2793)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2751, size: 192, elements: !52)
!2794 = !DILocation(line: 0, scope: !2780)
!2795 = !DILocation(line: 234, column: 3, scope: !2780)
!2796 = !DILocation(line: 234, column: 11, scope: !2780)
!2797 = !DILocation(line: 236, column: 3, scope: !2780)
!2798 = !DILocation(line: 237, column: 3, scope: !2780)
!2799 = !DILocation(line: 238, column: 3, scope: !2780)
!2800 = !DILocation(line: 239, column: 1, scope: !2780)
!2801 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 242, type: !250, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !4)
!2802 = !DILocation(line: 244, column: 3, scope: !2801)
!2803 = !DILocation(line: 249, column: 3, scope: !2801)
!2804 = !DILocation(line: 255, column: 3, scope: !2801)
!2805 = !DILocation(line: 260, column: 3, scope: !2801)
!2806 = !DILocation(line: 262, column: 1, scope: !2801)
!2807 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !2808, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!67, !69, !69}
!2810 = !{!2811, !2812}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2807, file: !182, line: 99, type: !69)
!2812 = !DILocalVariable(name: "s", arg: 2, scope: !2807, file: !182, line: 99, type: !69)
!2813 = !DILocation(line: 0, scope: !2807)
!2814 = !DILocation(line: 101, column: 7, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2807, file: !182, line: 101, column: 7)
!2816 = !DILocation(line: 101, column: 7, scope: !2807)
!2817 = !DILocation(line: 102, column: 5, scope: !2815)
!2818 = !DILocation(line: 103, column: 21, scope: !2807)
!2819 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !395, line: 39, type: !69)
!2820 = distinct !DISubprogram(name: "xmalloc", scope: !395, file: !395, line: 39, type: !2821, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!67, !69}
!2823 = !{!2819, !2824}
!2824 = !DILocalVariable(name: "p", scope: !2820, file: !395, line: 41, type: !67)
!2825 = !DILocation(line: 0, scope: !2820, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 103, column: 10, scope: !2807)
!2827 = !DILocation(line: 41, column: 13, scope: !2820, inlinedAt: !2826)
!2828 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !2826)
!2829 = distinct !DILexicalBlock(scope: !2820, file: !395, line: 42, column: 7)
!2830 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !2826)
!2831 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !2826)
!2832 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !2826)
!2833 = !DILocation(line: 103, column: 3, scope: !2807)
!2834 = !DILocation(line: 0, scope: !2820)
!2835 = !DILocation(line: 41, column: 13, scope: !2820)
!2836 = !DILocation(line: 42, column: 8, scope: !2829)
!2837 = !DILocation(line: 42, column: 15, scope: !2829)
!2838 = !DILocation(line: 42, column: 10, scope: !2829)
!2839 = !DILocation(line: 43, column: 5, scope: !2829)
!2840 = !DILocation(line: 44, column: 3, scope: !2820)
!2841 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !2842, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!67, !67, !69, !69}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "p", arg: 1, scope: !2841, file: !182, line: 112, type: !67)
!2846 = !DILocalVariable(name: "n", arg: 2, scope: !2841, file: !182, line: 112, type: !69)
!2847 = !DILocalVariable(name: "s", arg: 3, scope: !2841, file: !182, line: 112, type: !69)
!2848 = !DILocation(line: 0, scope: !2841)
!2849 = !DILocation(line: 114, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2841, file: !182, line: 114, column: 7)
!2851 = !DILocation(line: 114, column: 7, scope: !2841)
!2852 = !DILocation(line: 115, column: 5, scope: !2850)
!2853 = !DILocation(line: 116, column: 25, scope: !2841)
!2854 = !DILocalVariable(name: "p", arg: 1, scope: !2855, file: !395, line: 51, type: !67)
!2855 = distinct !DISubprogram(name: "xrealloc", scope: !395, file: !395, line: 51, type: !2856, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!67, !67, !69}
!2858 = !{!2854, !2859}
!2859 = !DILocalVariable(name: "n", arg: 2, scope: !2855, file: !395, line: 51, type: !69)
!2860 = !DILocation(line: 0, scope: !2855, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 116, column: 10, scope: !2841)
!2862 = !DILocation(line: 53, column: 8, scope: !2863, inlinedAt: !2861)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !395, line: 53, column: 7)
!2864 = !DILocation(line: 53, column: 13, scope: !2863, inlinedAt: !2861)
!2865 = !DILocation(line: 53, column: 10, scope: !2863, inlinedAt: !2861)
!2866 = !DILocation(line: 57, column: 7, scope: !2867, inlinedAt: !2861)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !395, line: 54, column: 5)
!2868 = !DILocation(line: 58, column: 7, scope: !2867, inlinedAt: !2861)
!2869 = !DILocation(line: 61, column: 7, scope: !2855, inlinedAt: !2861)
!2870 = !DILocation(line: 62, column: 8, scope: !2871, inlinedAt: !2861)
!2871 = distinct !DILexicalBlock(scope: !2855, file: !395, line: 62, column: 7)
!2872 = !DILocation(line: 62, column: 13, scope: !2871, inlinedAt: !2861)
!2873 = !DILocation(line: 62, column: 10, scope: !2871, inlinedAt: !2861)
!2874 = !DILocation(line: 63, column: 5, scope: !2871, inlinedAt: !2861)
!2875 = !DILocation(line: 116, column: 3, scope: !2841)
!2876 = !DILocation(line: 0, scope: !2855)
!2877 = !DILocation(line: 53, column: 8, scope: !2863)
!2878 = !DILocation(line: 53, column: 13, scope: !2863)
!2879 = !DILocation(line: 53, column: 10, scope: !2863)
!2880 = !DILocation(line: 57, column: 7, scope: !2867)
!2881 = !DILocation(line: 58, column: 7, scope: !2867)
!2882 = !DILocation(line: 61, column: 7, scope: !2855)
!2883 = !DILocation(line: 62, column: 8, scope: !2871)
!2884 = !DILocation(line: 62, column: 13, scope: !2871)
!2885 = !DILocation(line: 62, column: 10, scope: !2871)
!2886 = !DILocation(line: 63, column: 5, scope: !2871)
!2887 = !DILocation(line: 65, column: 1, scope: !2855)
!2888 = !DILocation(line: 0, scope: !398)
!2889 = !DILocation(line: 176, column: 14, scope: !398)
!2890 = !DILocation(line: 178, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !398, file: !182, line: 178, column: 7)
!2892 = !DILocation(line: 178, column: 7, scope: !398)
!2893 = !DILocation(line: 180, column: 13, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !182, line: 180, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !182, line: 179, column: 5)
!2896 = !DILocation(line: 180, column: 11, scope: !2895)
!2897 = !DILocation(line: 188, column: 30, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !182, line: 181, column: 9)
!2899 = !DILocation(line: 189, column: 16, scope: !2898)
!2900 = !DILocation(line: 189, column: 13, scope: !2898)
!2901 = !DILocation(line: 190, column: 9, scope: !2898)
!2902 = !DILocation(line: 191, column: 11, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2895, file: !182, line: 191, column: 11)
!2904 = !DILocation(line: 191, column: 11, scope: !2895)
!2905 = !DILocation(line: 206, column: 7, scope: !398)
!2906 = !DILocation(line: 207, column: 25, scope: !398)
!2907 = !DILocation(line: 0, scope: !2855, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 207, column: 10, scope: !398)
!2909 = !DILocation(line: 53, column: 10, scope: !2863, inlinedAt: !2908)
!2910 = !DILocation(line: 192, column: 9, scope: !2903)
!2911 = !DILocation(line: 200, column: 69, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !182, line: 200, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2891, file: !182, line: 195, column: 5)
!2914 = !DILocation(line: 201, column: 11, scope: !2912)
!2915 = !DILocation(line: 200, column: 11, scope: !2913)
!2916 = !DILocation(line: 202, column: 9, scope: !2912)
!2917 = !DILocation(line: 203, column: 14, scope: !2913)
!2918 = !DILocation(line: 203, column: 18, scope: !2913)
!2919 = !DILocation(line: 203, column: 9, scope: !2913)
!2920 = !DILocation(line: 53, column: 8, scope: !2863, inlinedAt: !2908)
!2921 = !DILocation(line: 57, column: 7, scope: !2867, inlinedAt: !2908)
!2922 = !DILocation(line: 58, column: 7, scope: !2867, inlinedAt: !2908)
!2923 = !DILocation(line: 61, column: 7, scope: !2855, inlinedAt: !2908)
!2924 = !DILocation(line: 62, column: 8, scope: !2871, inlinedAt: !2908)
!2925 = !DILocation(line: 62, column: 13, scope: !2871, inlinedAt: !2908)
!2926 = !DILocation(line: 62, column: 10, scope: !2871, inlinedAt: !2908)
!2927 = !DILocation(line: 63, column: 5, scope: !2871, inlinedAt: !2908)
!2928 = !DILocation(line: 207, column: 3, scope: !398)
!2929 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2089, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2930)
!2930 = !{!2931}
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !182, line: 216, type: !69)
!2932 = !DILocation(line: 0, scope: !2929)
!2933 = !DILocation(line: 0, scope: !2820, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 218, column: 10, scope: !2929)
!2935 = !DILocation(line: 41, column: 13, scope: !2820, inlinedAt: !2934)
!2936 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !2934)
!2937 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !2934)
!2938 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !2934)
!2939 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !2934)
!2940 = !DILocation(line: 218, column: 3, scope: !2929)
!2941 = distinct !DISubprogram(name: "x2realloc", scope: !395, file: !395, line: 74, type: !2942, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!67, !67, !401}
!2944 = !{!2945, !2946}
!2945 = !DILocalVariable(name: "p", arg: 1, scope: !2941, file: !395, line: 74, type: !67)
!2946 = !DILocalVariable(name: "pn", arg: 2, scope: !2941, file: !395, line: 74, type: !401)
!2947 = !DILocation(line: 0, scope: !2941)
!2948 = !DILocation(line: 0, scope: !398, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 76, column: 10, scope: !2941)
!2950 = !DILocation(line: 176, column: 14, scope: !398, inlinedAt: !2949)
!2951 = !DILocation(line: 178, column: 9, scope: !2891, inlinedAt: !2949)
!2952 = !DILocation(line: 178, column: 7, scope: !398, inlinedAt: !2949)
!2953 = !DILocation(line: 180, column: 13, scope: !2894, inlinedAt: !2949)
!2954 = !DILocation(line: 180, column: 11, scope: !2895, inlinedAt: !2949)
!2955 = !DILocation(line: 191, column: 11, scope: !2903, inlinedAt: !2949)
!2956 = !DILocation(line: 191, column: 11, scope: !2895, inlinedAt: !2949)
!2957 = !DILocation(line: 206, column: 7, scope: !398, inlinedAt: !2949)
!2958 = !DILocation(line: 0, scope: !2855, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 207, column: 10, scope: !398, inlinedAt: !2949)
!2960 = !DILocation(line: 53, column: 10, scope: !2863, inlinedAt: !2959)
!2961 = !DILocation(line: 192, column: 9, scope: !2903, inlinedAt: !2949)
!2962 = !DILocation(line: 201, column: 11, scope: !2912, inlinedAt: !2949)
!2963 = !DILocation(line: 200, column: 11, scope: !2913, inlinedAt: !2949)
!2964 = !DILocation(line: 202, column: 9, scope: !2912, inlinedAt: !2949)
!2965 = !DILocation(line: 203, column: 14, scope: !2913, inlinedAt: !2949)
!2966 = !DILocation(line: 203, column: 18, scope: !2913, inlinedAt: !2949)
!2967 = !DILocation(line: 203, column: 9, scope: !2913, inlinedAt: !2949)
!2968 = !DILocation(line: 53, column: 8, scope: !2863, inlinedAt: !2959)
!2969 = !DILocation(line: 57, column: 7, scope: !2867, inlinedAt: !2959)
!2970 = !DILocation(line: 58, column: 7, scope: !2867, inlinedAt: !2959)
!2971 = !DILocation(line: 61, column: 7, scope: !2855, inlinedAt: !2959)
!2972 = !DILocation(line: 62, column: 8, scope: !2871, inlinedAt: !2959)
!2973 = !DILocation(line: 62, column: 13, scope: !2871, inlinedAt: !2959)
!2974 = !DILocation(line: 62, column: 10, scope: !2871, inlinedAt: !2959)
!2975 = !DILocation(line: 63, column: 5, scope: !2871, inlinedAt: !2959)
!2976 = !DILocation(line: 76, column: 3, scope: !2941)
!2977 = distinct !DISubprogram(name: "xzalloc", scope: !395, file: !395, line: 84, type: !2821, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !395, line: 84, type: !69)
!2980 = !DILocation(line: 0, scope: !2977)
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !395, line: 93, type: !69)
!2982 = distinct !DISubprogram(name: "xcalloc", scope: !395, file: !395, line: 93, type: !2808, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !2983)
!2983 = !{!2981, !2984, !2985}
!2984 = !DILocalVariable(name: "s", arg: 2, scope: !2982, file: !395, line: 93, type: !69)
!2985 = !DILocalVariable(name: "p", scope: !2982, file: !395, line: 95, type: !67)
!2986 = !DILocation(line: 0, scope: !2982, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 86, column: 10, scope: !2977)
!2988 = !DILocation(line: 100, column: 7, scope: !2989, inlinedAt: !2987)
!2989 = distinct !DILexicalBlock(scope: !2982, file: !395, line: 100, column: 7)
!2990 = !DILocation(line: 101, column: 7, scope: !2989, inlinedAt: !2987)
!2991 = !DILocation(line: 101, column: 18, scope: !2989, inlinedAt: !2987)
!2992 = !DILocation(line: 101, column: 16, scope: !2989, inlinedAt: !2987)
!2993 = !DILocation(line: 100, column: 7, scope: !2982, inlinedAt: !2987)
!2994 = !DILocation(line: 102, column: 5, scope: !2989, inlinedAt: !2987)
!2995 = !DILocation(line: 86, column: 3, scope: !2977)
!2996 = !DILocation(line: 0, scope: !2982)
!2997 = !DILocation(line: 100, column: 7, scope: !2989)
!2998 = !DILocation(line: 101, column: 7, scope: !2989)
!2999 = !DILocation(line: 101, column: 18, scope: !2989)
!3000 = !DILocation(line: 101, column: 16, scope: !2989)
!3001 = !DILocation(line: 100, column: 7, scope: !2982)
!3002 = !DILocation(line: 102, column: 5, scope: !2989)
!3003 = !DILocation(line: 103, column: 3, scope: !2982)
!3004 = distinct !DISubprogram(name: "xmemdup", scope: !395, file: !395, line: 111, type: !3005, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!67, !185, !69}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "p", arg: 1, scope: !3004, file: !395, line: 111, type: !185)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !395, line: 111, type: !69)
!3010 = !DILocation(line: 0, scope: !3004)
!3011 = !DILocation(line: 0, scope: !2820, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 113, column: 18, scope: !3004)
!3013 = !DILocation(line: 41, column: 13, scope: !2820, inlinedAt: !3012)
!3014 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !3012)
!3015 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !3012)
!3016 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !3012)
!3017 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !3012)
!3018 = !DILocalVariable(name: "__dest", arg: 1, scope: !3019, file: !1622, line: 31, type: !3022)
!3019 = distinct !DISubprogram(name: "memcpy", scope: !1622, file: !1622, line: 31, type: !3020, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3024)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!67, !3022, !3023, !69}
!3022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!3024 = !{!3018, !3025, !3026}
!3025 = !DILocalVariable(name: "__src", arg: 2, scope: !3019, file: !1622, line: 31, type: !3023)
!3026 = !DILocalVariable(name: "__len", arg: 3, scope: !3019, file: !1622, line: 31, type: !69)
!3027 = !DILocation(line: 0, scope: !3019, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 113, column: 10, scope: !3004)
!3029 = !DILocation(line: 34, column: 10, scope: !3019, inlinedAt: !3028)
!3030 = !DILocation(line: 113, column: 3, scope: !3004)
!3031 = distinct !DISubprogram(name: "xstrdup", scope: !395, file: !395, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3032)
!3032 = !{!3033}
!3033 = !DILocalVariable(name: "string", arg: 1, scope: !3031, file: !395, line: 119, type: !6)
!3034 = !DILocation(line: 0, scope: !3031)
!3035 = !DILocation(line: 121, column: 27, scope: !3031)
!3036 = !DILocation(line: 121, column: 43, scope: !3031)
!3037 = !DILocation(line: 0, scope: !3004, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 121, column: 10, scope: !3031)
!3039 = !DILocation(line: 0, scope: !2820, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 113, column: 18, scope: !3004, inlinedAt: !3038)
!3041 = !DILocation(line: 41, column: 13, scope: !2820, inlinedAt: !3040)
!3042 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !3040)
!3043 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !3040)
!3044 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !3040)
!3045 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !3040)
!3046 = !DILocation(line: 0, scope: !3019, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 113, column: 10, scope: !3004, inlinedAt: !3038)
!3048 = !DILocation(line: 34, column: 10, scope: !3019, inlinedAt: !3047)
!3049 = !DILocation(line: 121, column: 3, scope: !3031)
!3050 = distinct !DISubprogram(name: "xalloc_die", scope: !416, file: !416, line: 32, type: !250, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4)
!3051 = !DILocation(line: 34, column: 10, scope: !3050)
!3052 = !DILocation(line: 34, column: 33, scope: !3050)
!3053 = !DILocation(line: 34, column: 3, scope: !3050)
!3054 = !DILocation(line: 40, column: 3, scope: !3050)
!3055 = distinct !DISubprogram(name: "rpl_calloc", scope: !419, file: !419, line: 42, type: !2808, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DILocalVariable(name: "n", arg: 1, scope: !3055, file: !419, line: 42, type: !69)
!3058 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !419, line: 42, type: !69)
!3059 = !DILocalVariable(name: "result", scope: !3055, file: !419, line: 44, type: !67)
!3060 = !DILocalVariable(name: "bytes", scope: !3061, file: !419, line: 56, type: !69)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !419, line: 53, column: 5)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !419, line: 47, column: 7)
!3063 = !DILocation(line: 0, scope: !3055)
!3064 = !DILocation(line: 47, column: 9, scope: !3062)
!3065 = !DILocation(line: 47, column: 19, scope: !3062)
!3066 = !DILocation(line: 47, column: 14, scope: !3062)
!3067 = !DILocation(line: 0, scope: !3061)
!3068 = !DILocation(line: 57, column: 21, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3061, file: !419, line: 57, column: 11)
!3070 = !DILocation(line: 57, column: 11, scope: !3061)
!3071 = !DILocation(line: 59, column: 11, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !419, line: 58, column: 9)
!3073 = !DILocation(line: 59, column: 17, scope: !3072)
!3074 = !DILocation(line: 65, column: 12, scope: !3055)
!3075 = !DILocation(line: 72, column: 3, scope: !3055)
!3076 = !DILocation(line: 73, column: 1, scope: !3055)
!3077 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !422, file: !422, line: 86, type: !3078, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3084)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!69, !3080, !6, !69, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1363, line: 6, baseType: !3083)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !428)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090, !3091}
!3085 = !DILocalVariable(name: "pwc", arg: 1, scope: !3077, file: !422, line: 86, type: !3080)
!3086 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !422, line: 86, type: !6)
!3087 = !DILocalVariable(name: "n", arg: 3, scope: !3077, file: !422, line: 86, type: !69)
!3088 = !DILocalVariable(name: "ps", arg: 4, scope: !3077, file: !422, line: 86, type: !3081)
!3089 = !DILocalVariable(name: "ret", scope: !3077, file: !422, line: 88, type: !69)
!3090 = !DILocalVariable(name: "wc", scope: !3077, file: !422, line: 89, type: !1367)
!3091 = !DILocalVariable(name: "uc", scope: !3092, file: !422, line: 156, type: !1240)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !422, line: 155, column: 5)
!3093 = distinct !DILexicalBlock(scope: !3077, file: !422, line: 154, column: 7)
!3094 = !DILocation(line: 0, scope: !3077)
!3095 = !DILocation(line: 89, column: 3, scope: !3077)
!3096 = !DILocation(line: 105, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3077, file: !422, line: 105, column: 7)
!3098 = !DILocation(line: 105, column: 7, scope: !3077)
!3099 = !DILocation(line: 145, column: 9, scope: !3077)
!3100 = !DILocation(line: 154, column: 19, scope: !3093)
!3101 = !DILocation(line: 154, column: 31, scope: !3093)
!3102 = !DILocation(line: 154, column: 26, scope: !3093)
!3103 = !DILocation(line: 154, column: 41, scope: !3093)
!3104 = !DILocation(line: 154, column: 7, scope: !3077)
!3105 = !DILocation(line: 156, column: 26, scope: !3092)
!3106 = !DILocation(line: 0, scope: !3092)
!3107 = !DILocation(line: 157, column: 14, scope: !3092)
!3108 = !DILocation(line: 157, column: 12, scope: !3092)
!3109 = !DILocation(line: 163, column: 1, scope: !3077)
!3110 = distinct !DISubprogram(name: "close_stream", scope: !441, file: !441, line: 56, type: !3111, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3115)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!18, !3113}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2683, line: 7, baseType: !448)
!3115 = !{!3116, !3117, !3119, !3120}
!3116 = !DILocalVariable(name: "stream", arg: 1, scope: !3110, file: !441, line: 56, type: !3113)
!3117 = !DILocalVariable(name: "some_pending", scope: !3110, file: !441, line: 58, type: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3119 = !DILocalVariable(name: "prev_fail", scope: !3110, file: !441, line: 59, type: !3118)
!3120 = !DILocalVariable(name: "fclose_fail", scope: !3110, file: !441, line: 60, type: !3118)
!3121 = !DILocation(line: 0, scope: !3110)
!3122 = !DILocation(line: 58, column: 30, scope: !3110)
!3123 = !DILocalVariable(name: "__stream", arg: 1, scope: !3124, file: !3125, line: 135, type: !3113)
!3124 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3125, file: !3125, line: 135, type: !3111, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3126)
!3125 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3126 = !{!3123}
!3127 = !DILocation(line: 0, scope: !3124, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 59, column: 27, scope: !3110)
!3129 = !DILocation(line: 137, column: 10, scope: !3124, inlinedAt: !3128)
!3130 = !{!3131, !1138, i64 0}
!3131 = !{!"_IO_FILE", !1138, i64 0, !1022, i64 8, !1022, i64 16, !1022, i64 24, !1022, i64 32, !1022, i64 40, !1022, i64 48, !1022, i64 56, !1022, i64 64, !1022, i64 72, !1022, i64 80, !1022, i64 88, !1022, i64 96, !1022, i64 104, !1138, i64 112, !1138, i64 116, !2125, i64 120, !1615, i64 128, !1023, i64 130, !1023, i64 131, !1022, i64 136, !2125, i64 144, !1022, i64 152, !1022, i64 160, !1022, i64 168, !1022, i64 176, !2125, i64 184, !1138, i64 192, !1023, i64 196}
!3132 = !DILocation(line: 59, column: 43, scope: !3110)
!3133 = !DILocation(line: 60, column: 29, scope: !3110)
!3134 = !DILocation(line: 60, column: 45, scope: !3110)
!3135 = !DILocation(line: 70, column: 17, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3110, file: !441, line: 70, column: 7)
!3137 = !DILocation(line: 58, column: 50, scope: !3110)
!3138 = !DILocation(line: 70, column: 33, scope: !3136)
!3139 = !DILocation(line: 70, column: 53, scope: !3136)
!3140 = !DILocation(line: 70, column: 59, scope: !3136)
!3141 = !DILocation(line: 70, column: 7, scope: !3110)
!3142 = !DILocation(line: 72, column: 11, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3136, file: !441, line: 71, column: 5)
!3144 = !DILocation(line: 73, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3143, file: !441, line: 72, column: 11)
!3146 = !DILocation(line: 73, column: 15, scope: !3145)
!3147 = !DILocation(line: 78, column: 1, scope: !3110)
!3148 = distinct !DISubprogram(name: "hard_locale", scope: !480, file: !480, line: 27, type: !438, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !3149)
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "category", arg: 1, scope: !3148, file: !480, line: 27, type: !18)
!3151 = !DILocalVariable(name: "locale", scope: !3148, file: !480, line: 29, type: !3152)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3153)
!3153 = !{!3154}
!3154 = !DISubrange(count: 257)
!3155 = !DILocation(line: 0, scope: !3148)
!3156 = !DILocation(line: 29, column: 3, scope: !3148)
!3157 = !DILocation(line: 29, column: 8, scope: !3148)
!3158 = !DILocation(line: 31, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3148, file: !480, line: 31, column: 7)
!3160 = !DILocation(line: 31, column: 7, scope: !3148)
!3161 = !DILocation(line: 34, column: 12, scope: !3148)
!3162 = !DILocation(line: 34, column: 38, scope: !3148)
!3163 = !DILocation(line: 34, column: 41, scope: !3148)
!3164 = !DILocation(line: 34, column: 66, scope: !3148)
!3165 = !DILocation(line: 35, column: 1, scope: !3148)
!3166 = distinct !DISubprogram(name: "locale_charset", scope: !487, file: !487, line: 831, type: !240, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3167)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "codeset", scope: !3166, file: !487, line: 833, type: !6)
!3169 = !DILocation(line: 847, column: 13, scope: !3166)
!3170 = !DILocation(line: 0, scope: !3166)
!3171 = !DILocation(line: 911, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3166, file: !487, line: 911, column: 7)
!3173 = !DILocation(line: 911, column: 7, scope: !3166)
!3174 = !DILocation(line: 1070, column: 13, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !487, line: 1070, column: 13)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !487, line: 1060, column: 7)
!3177 = distinct !DILexicalBlock(scope: !3166, file: !487, line: 1019, column: 3)
!3178 = !DILocation(line: 1070, column: 24, scope: !3175)
!3179 = !DILocation(line: 1070, column: 13, scope: !3176)
!3180 = !DILocation(line: 1158, column: 3, scope: !3166)
!3181 = distinct !DISubprogram(name: "setlocale_null_r", scope: !880, file: !880, line: 269, type: !3182, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!18, !18, !25, !69}
!3184 = !{!3185, !3186, !3187}
!3185 = !DILocalVariable(name: "category", arg: 1, scope: !3181, file: !880, line: 269, type: !18)
!3186 = !DILocalVariable(name: "buf", arg: 2, scope: !3181, file: !880, line: 269, type: !25)
!3187 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3181, file: !880, line: 269, type: !69)
!3188 = !DILocation(line: 0, scope: !3181)
!3189 = !DILocalVariable(name: "category", arg: 1, scope: !3190, file: !880, line: 91, type: !18)
!3190 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !880, file: !880, line: 91, type: !3182, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3191)
!3191 = !{!3189, !3192, !3193, !3194, !3195}
!3192 = !DILocalVariable(name: "buf", arg: 2, scope: !3190, file: !880, line: 91, type: !25)
!3193 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3190, file: !880, line: 91, type: !69)
!3194 = !DILocalVariable(name: "result", scope: !3190, file: !880, line: 140, type: !6)
!3195 = !DILocalVariable(name: "length", scope: !3196, file: !880, line: 154, type: !69)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !880, line: 153, column: 5)
!3197 = distinct !DILexicalBlock(scope: !3190, file: !880, line: 142, column: 7)
!3198 = !DILocation(line: 0, scope: !3190, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 274, column: 10, scope: !3181)
!3200 = !DILocalVariable(name: "category", arg: 1, scope: !3201, file: !880, line: 60, type: !18)
!3201 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !880, file: !880, line: 60, type: !3202, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!6, !18}
!3204 = !{!3200, !3205}
!3205 = !DILocalVariable(name: "result", scope: !3201, file: !880, line: 62, type: !6)
!3206 = !DILocation(line: 0, scope: !3201, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 140, column: 24, scope: !3190, inlinedAt: !3199)
!3208 = !DILocation(line: 62, column: 24, scope: !3201, inlinedAt: !3207)
!3209 = !DILocation(line: 142, column: 14, scope: !3197, inlinedAt: !3199)
!3210 = !DILocation(line: 142, column: 7, scope: !3190, inlinedAt: !3199)
!3211 = !DILocation(line: 145, column: 19, scope: !3212, inlinedAt: !3199)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !880, line: 145, column: 11)
!3213 = distinct !DILexicalBlock(scope: !3197, file: !880, line: 143, column: 5)
!3214 = !DILocation(line: 145, column: 11, scope: !3213, inlinedAt: !3199)
!3215 = !DILocation(line: 149, column: 16, scope: !3212, inlinedAt: !3199)
!3216 = !DILocation(line: 149, column: 9, scope: !3212, inlinedAt: !3199)
!3217 = !DILocation(line: 154, column: 23, scope: !3196, inlinedAt: !3199)
!3218 = !DILocation(line: 0, scope: !3196, inlinedAt: !3199)
!3219 = !DILocation(line: 155, column: 18, scope: !3220, inlinedAt: !3199)
!3220 = distinct !DILexicalBlock(scope: !3196, file: !880, line: 155, column: 11)
!3221 = !DILocation(line: 155, column: 11, scope: !3196, inlinedAt: !3199)
!3222 = !DILocation(line: 157, column: 39, scope: !3223, inlinedAt: !3199)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !880, line: 156, column: 9)
!3224 = !DILocalVariable(name: "__dest", arg: 1, scope: !3225, file: !1622, line: 31, type: !3022)
!3225 = distinct !DISubprogram(name: "memcpy", scope: !1622, file: !1622, line: 31, type: !3020, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3226)
!3226 = !{!3224, !3227, !3228}
!3227 = !DILocalVariable(name: "__src", arg: 2, scope: !3225, file: !1622, line: 31, type: !3023)
!3228 = !DILocalVariable(name: "__len", arg: 3, scope: !3225, file: !1622, line: 31, type: !69)
!3229 = !DILocation(line: 0, scope: !3225, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 157, column: 11, scope: !3223, inlinedAt: !3199)
!3231 = !DILocation(line: 34, column: 10, scope: !3225, inlinedAt: !3230)
!3232 = !DILocation(line: 158, column: 11, scope: !3223, inlinedAt: !3199)
!3233 = !DILocation(line: 162, column: 23, scope: !3234, inlinedAt: !3199)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !880, line: 162, column: 15)
!3235 = distinct !DILexicalBlock(scope: !3220, file: !880, line: 161, column: 9)
!3236 = !DILocation(line: 162, column: 15, scope: !3235, inlinedAt: !3199)
!3237 = !DILocation(line: 167, column: 44, scope: !3238, inlinedAt: !3199)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !880, line: 163, column: 13)
!3239 = !DILocation(line: 0, scope: !3225, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 167, column: 15, scope: !3238, inlinedAt: !3199)
!3241 = !DILocation(line: 34, column: 10, scope: !3225, inlinedAt: !3240)
!3242 = !DILocation(line: 168, column: 15, scope: !3238, inlinedAt: !3199)
!3243 = !DILocation(line: 168, column: 32, scope: !3238, inlinedAt: !3199)
!3244 = !DILocation(line: 169, column: 13, scope: !3238, inlinedAt: !3199)
!3245 = !DILocation(line: 0, scope: !3197, inlinedAt: !3199)
!3246 = !DILocation(line: 274, column: 3, scope: !3181)
!3247 = distinct !DISubprogram(name: "setlocale_null", scope: !880, file: !880, line: 301, type: !3202, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !3248)
!3248 = !{!3249}
!3249 = !DILocalVariable(name: "category", arg: 1, scope: !3247, file: !880, line: 301, type: !18)
!3250 = !DILocation(line: 0, scope: !3247)
!3251 = !DILocation(line: 0, scope: !3201, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 304, column: 10, scope: !3247)
!3253 = !DILocation(line: 62, column: 24, scope: !3201, inlinedAt: !3252)
!3254 = !DILocation(line: 304, column: 3, scope: !3247)
!3255 = distinct !DISubprogram(name: "rpl_fclose", scope: !883, file: !883, line: 58, type: !3256, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3260)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!18, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2683, line: 7, baseType: !889)
!3260 = !{!3261, !3262, !3263, !3264}
!3261 = !DILocalVariable(name: "fp", arg: 1, scope: !3255, file: !883, line: 58, type: !3258)
!3262 = !DILocalVariable(name: "saved_errno", scope: !3255, file: !883, line: 60, type: !18)
!3263 = !DILocalVariable(name: "fd", scope: !3255, file: !883, line: 61, type: !18)
!3264 = !DILocalVariable(name: "result", scope: !3255, file: !883, line: 62, type: !18)
!3265 = !DILocation(line: 0, scope: !3255)
!3266 = !DILocation(line: 65, column: 8, scope: !3255)
!3267 = !DILocation(line: 66, column: 10, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3255, file: !883, line: 66, column: 7)
!3269 = !DILocation(line: 66, column: 7, scope: !3255)
!3270 = !DILocation(line: 67, column: 12, scope: !3268)
!3271 = !DILocation(line: 67, column: 5, scope: !3268)
!3272 = !DILocation(line: 72, column: 9, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3255, file: !883, line: 72, column: 7)
!3274 = !DILocation(line: 72, column: 23, scope: !3273)
!3275 = !DILocation(line: 72, column: 33, scope: !3273)
!3276 = !DILocation(line: 72, column: 26, scope: !3273)
!3277 = !DILocation(line: 72, column: 59, scope: !3273)
!3278 = !DILocation(line: 73, column: 7, scope: !3273)
!3279 = !DILocation(line: 73, column: 10, scope: !3273)
!3280 = !DILocation(line: 72, column: 7, scope: !3255)
!3281 = !DILocation(line: 100, column: 12, scope: !3255)
!3282 = !DILocation(line: 105, column: 7, scope: !3255)
!3283 = !DILocation(line: 74, column: 19, scope: !3273)
!3284 = !DILocation(line: 105, column: 19, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3255, file: !883, line: 105, column: 7)
!3286 = !DILocation(line: 107, column: 13, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3285, file: !883, line: 106, column: 5)
!3288 = !DILocation(line: 109, column: 5, scope: !3287)
!3289 = !DILocation(line: 112, column: 1, scope: !3255)
!3290 = distinct !DISubprogram(name: "rpl_fflush", scope: !927, file: !927, line: 129, type: !3291, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !3295)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!18, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2683, line: 7, baseType: !933)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "stream", arg: 1, scope: !3290, file: !927, line: 129, type: !3293)
!3297 = !DILocation(line: 0, scope: !3290)
!3298 = !DILocation(line: 150, column: 14, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !927, line: 150, column: 7)
!3300 = !DILocation(line: 150, column: 22, scope: !3299)
!3301 = !DILocation(line: 150, column: 27, scope: !3299)
!3302 = !DILocation(line: 150, column: 7, scope: !3290)
!3303 = !DILocation(line: 151, column: 12, scope: !3299)
!3304 = !DILocation(line: 151, column: 5, scope: !3299)
!3305 = !DILocalVariable(name: "fp", arg: 1, scope: !3306, file: !927, line: 41, type: !3293)
!3306 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !927, file: !927, line: 41, type: !3307, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3293}
!3309 = !{!3305}
!3310 = !DILocation(line: 0, scope: !3306, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 156, column: 3, scope: !3290)
!3312 = !DILocation(line: 43, column: 11, scope: !3313, inlinedAt: !3311)
!3313 = distinct !DILexicalBlock(scope: !3306, file: !927, line: 43, column: 7)
!3314 = !DILocation(line: 43, column: 18, scope: !3313, inlinedAt: !3311)
!3315 = !DILocation(line: 43, column: 7, scope: !3306, inlinedAt: !3311)
!3316 = !DILocation(line: 45, column: 5, scope: !3313, inlinedAt: !3311)
!3317 = !DILocation(line: 158, column: 10, scope: !3290)
!3318 = !DILocation(line: 158, column: 3, scope: !3290)
!3319 = !DILocation(line: 235, column: 1, scope: !3290)
!3320 = distinct !DISubprogram(name: "rpl_fseeko", scope: !968, file: !968, line: 28, type: !3321, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !3326)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!18, !3323, !3325, !18}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2683, line: 7, baseType: !974)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !105, line: 63, baseType: !43)
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DILocalVariable(name: "fp", arg: 1, scope: !3320, file: !968, line: 28, type: !3323)
!3328 = !DILocalVariable(name: "offset", arg: 2, scope: !3320, file: !968, line: 28, type: !3325)
!3329 = !DILocalVariable(name: "whence", arg: 3, scope: !3320, file: !968, line: 28, type: !18)
!3330 = !DILocalVariable(name: "pos", scope: !3331, file: !968, line: 117, type: !3325)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !968, line: 113, column: 5)
!3332 = distinct !DILexicalBlock(scope: !3320, file: !968, line: 52, column: 7)
!3333 = !DILocation(line: 0, scope: !3320)
!3334 = !DILocation(line: 52, column: 11, scope: !3332)
!3335 = !{!3131, !1022, i64 16}
!3336 = !DILocation(line: 52, column: 31, scope: !3332)
!3337 = !{!3131, !1022, i64 8}
!3338 = !DILocation(line: 52, column: 24, scope: !3332)
!3339 = !DILocation(line: 53, column: 7, scope: !3332)
!3340 = !DILocation(line: 53, column: 14, scope: !3332)
!3341 = !{!3131, !1022, i64 40}
!3342 = !DILocation(line: 53, column: 35, scope: !3332)
!3343 = !{!3131, !1022, i64 32}
!3344 = !DILocation(line: 53, column: 28, scope: !3332)
!3345 = !DILocation(line: 54, column: 7, scope: !3332)
!3346 = !DILocation(line: 54, column: 14, scope: !3332)
!3347 = !{!3131, !1022, i64 72}
!3348 = !DILocation(line: 54, column: 28, scope: !3332)
!3349 = !DILocation(line: 52, column: 7, scope: !3320)
!3350 = !DILocation(line: 117, column: 26, scope: !3331)
!3351 = !DILocation(line: 117, column: 19, scope: !3331)
!3352 = !DILocation(line: 0, scope: !3331)
!3353 = !DILocation(line: 118, column: 15, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3331, file: !968, line: 118, column: 11)
!3355 = !DILocation(line: 118, column: 11, scope: !3331)
!3356 = !DILocation(line: 129, column: 11, scope: !3331)
!3357 = !DILocation(line: 129, column: 18, scope: !3331)
!3358 = !DILocation(line: 130, column: 11, scope: !3331)
!3359 = !DILocation(line: 130, column: 19, scope: !3331)
!3360 = !{!3131, !2125, i64 144}
!3361 = !DILocation(line: 161, column: 7, scope: !3331)
!3362 = !DILocation(line: 163, column: 10, scope: !3320)
!3363 = !DILocation(line: 163, column: 3, scope: !3320)
!3364 = !DILocation(line: 164, column: 1, scope: !3320)
