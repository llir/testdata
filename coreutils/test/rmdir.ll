; ModuleID = 'coreutils-8.32/src/rmdir.bc'
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
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [187 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A      --ignore-fail-on-non-empty\0A                  ignore each failure that is solely because a directory\0A                    is non-empty\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [200 x i8] c"  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\0A                    similar to 'rmdir a/b/c a/b a'\0A  -v, --verbose   output a diagnostic for every directory processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
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
@remove_empty_parents = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !191
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !196
@ignore_fail_on_non_empty = internal unnamed_addr global i1 false, align 1, !dbg !197
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), align 8, !dbg !198
@.str.41 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !203
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !246
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !248
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !254
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !295
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !392
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !398
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !400
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !404
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !411
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !402
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !413
@.str.79 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.101 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.102 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.103 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !419
@.str.1.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1136 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1141, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %0, metadata !1140, metadata !DIExpression()), !dbg !1160
  %3 = icmp eq i32 %0, 0, !dbg !1161
  br i1 %3, label %9, label %4, !dbg !1162

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1163, !tbaa !1165
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !1163
  %7 = load i8*, i8** @program_name, align 8, !dbg !1163, !tbaa !1165
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !1163
  br label %61, !dbg !1163

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1169
  %11 = load i8*, i8** @program_name, align 8, !dbg !1169, !tbaa !1165
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !1169
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !1170
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !1165
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1170
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !1171
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !1165
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1171
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !1172
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !1165
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1172
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !1173
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !1165
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1173
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1145, metadata !DIExpression()) #10, !dbg !1174
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #10, !dbg !1175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !1156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !1146, metadata !DIExpression()) #10, !dbg !1174
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  br label %27, !dbg !1177

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #22, !dbg !1178
  %31 = icmp eq i32 %30, 0, !dbg !1178
  br i1 %31, label %37, label %32, !dbg !1177

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !1180
  %35 = load i8*, i8** %34, align 8, !dbg !1180, !tbaa !1181
  %36 = icmp eq i8* %35, null, !dbg !1183
  br i1 %36, label %37, label %27, !dbg !1184, !llvm.loop !1185

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1147, metadata !DIExpression()) #10, !dbg !1174
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !1186
  %40 = load i8*, i8** %39, align 8, !dbg !1186, !tbaa !1188
  %41 = icmp eq i8* %40, null, !dbg !1189
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %42, metadata !1146, metadata !DIExpression()) #10, !dbg !1174
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !1191
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1191
  %45 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %45, metadata !1154, metadata !DIExpression()) #10, !dbg !1174
  %46 = icmp eq i8* %45, null, !dbg !1193
  br i1 %46, label %54, label %47, !dbg !1195

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #22, !dbg !1196
  %49 = icmp eq i32 %48, 0, !dbg !1196
  br i1 %49, label %54, label %50, !dbg !1197

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1198
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1198, !tbaa !1165
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #10, !dbg !1198
  br label %54, !dbg !1200

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1201
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1201
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1202
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !1202
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1202
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #10, !dbg !1202
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #10, !dbg !1203
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #23, !dbg !1204
  unreachable, !dbg !1204
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !21 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !31 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !96 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1210, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8** %1, metadata !1211, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8 1, metadata !1212, metadata !DIExpression()), !dbg !1221
  %3 = load i8*, i8** %1, align 8, !dbg !1222, !tbaa !1165
  tail call void @set_program_name(i8* %3) #10, !dbg !1223
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1224
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1225
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1226
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !1227
  store i1 false, i1* @remove_empty_parents, align 1, !dbg !1228
  br label %8, !dbg !1229

8:                                                ; preds = %17, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %9, metadata !1213, metadata !DIExpression()), !dbg !1221
  switch i32 %9, label %16 [
    i32 -1, label %19
    i32 112, label %17
    i32 128, label %10
    i32 118, label %11
    i32 -130, label %12
    i32 -131, label %13
  ], !dbg !1229

10:                                               ; preds = %8
  br label %17, !dbg !1231

11:                                               ; preds = %8
  br label %17, !dbg !1234

12:                                               ; preds = %8
  tail call void @usage(i32 0) #24, !dbg !1235
  unreachable, !dbg !1235

13:                                               ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1236, !tbaa !1165
  %15 = load i8*, i8** @Version, align 8, !dbg !1236, !tbaa !1165
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !1236
  tail call void @exit(i32 0) #23, !dbg !1236
  unreachable, !dbg !1236

16:                                               ; preds = %8
  tail call void @usage(i32 1) #24, !dbg !1237
  unreachable, !dbg !1237

17:                                               ; preds = %8, %11, %10
  %18 = phi i1* [ @verbose, %11 ], [ @ignore_fail_on_non_empty, %10 ], [ @remove_empty_parents, %8 ]
  store i1 true, i1* %18, align 1, !dbg !1238
  br label %8, !dbg !1229, !llvm.loop !1239

19:                                               ; preds = %8
  %20 = load i32, i32* @optind, align 4, !dbg !1241, !tbaa !1243
  %21 = icmp eq i32 %20, %0, !dbg !1245
  br i1 %21, label %24, label %22, !dbg !1246

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8 1, metadata !1212, metadata !DIExpression()), !dbg !1221
  %23 = icmp slt i32 %20, %0, !dbg !1247
  br i1 %23, label %26, label %89, !dbg !1248

24:                                               ; preds = %19
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !1249
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25) #10, !dbg !1251
  tail call void @usage(i32 1) #24, !dbg !1252
  unreachable, !dbg !1252

26:                                               ; preds = %22, %84
  %27 = phi i32 [ %87, %84 ], [ %20, %22 ]
  %28 = phi i8 [ %85, %84 ], [ 1, %22 ]
  call void @llvm.dbg.value(metadata i8 %28, metadata !1212, metadata !DIExpression()), !dbg !1221
  %29 = sext i32 %27 to i64, !dbg !1253
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !1253
  %31 = load i8*, i8** %30, align 8, !dbg !1253, !tbaa !1165
  call void @llvm.dbg.value(metadata i8* %31, metadata !1214, metadata !DIExpression()), !dbg !1254
  %32 = load i1, i1* @verbose, align 1, !dbg !1255
  br i1 %32, label %33, label %37, !dbg !1257

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1258, !tbaa !1165
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1259
  %36 = tail call i8* @quotearg_style(i32 4, i8* %31) #10, !dbg !1260
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %34, i8* %35, i8* %36) #10, !dbg !1261
  br label %37, !dbg !1261

37:                                               ; preds = %33, %26
  %38 = tail call i32 @rmdir(i8* %31) #10, !dbg !1262
  %39 = icmp eq i32 %38, 0, !dbg !1263
  br i1 %39, label %47, label %40, !dbg !1264

40:                                               ; preds = %37
  %41 = tail call i32* @__errno_location() #25, !dbg !1265
  %42 = load i32, i32* %41, align 4, !dbg !1265, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %42, metadata !1218, metadata !DIExpression()), !dbg !1266
  %43 = tail call fastcc zeroext i1 @ignorable_failure(i32 %42, i8* %31), !dbg !1267
  br i1 %43, label %84, label %44, !dbg !1269

44:                                               ; preds = %40
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !1270
  %46 = tail call i8* @quotearg_style(i32 4, i8* %31) #10, !dbg !1271
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %42, i8* %45, i8* %46) #10, !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, metadata !1212, metadata !DIExpression()), !dbg !1221
  br label %84, !dbg !1273

47:                                               ; preds = %37
  %48 = load i1, i1* @remove_empty_parents, align 1, !dbg !1274
  br i1 %48, label %49, label %84, !dbg !1276

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8* %31, metadata !1277, metadata !DIExpression()) #10, !dbg !1284
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()) #10, !dbg !1284
  %50 = tail call zeroext i1 @strip_trailing_slashes(i8* %31) #10, !dbg !1287
  br label %51, !dbg !1288

51:                                               ; preds = %71, %49
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()) #10, !dbg !1284
  %52 = tail call i8* @strrchr(i8* nonnull dereferenceable(1) %31, i32 47) #22, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %52, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  %53 = icmp eq i8* %52, null, !dbg !1290
  br i1 %53, label %81, label %54, !dbg !1292

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  %55 = icmp ugt i8* %52, %31, !dbg !1293
  br i1 %55, label %56, label %63, !dbg !1294

56:                                               ; preds = %54, %60
  %57 = phi i8* [ %61, %60 ], [ %52, %54 ]
  call void @llvm.dbg.value(metadata i8* %57, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  %58 = load i8, i8* %57, align 1, !dbg !1295, !tbaa !1296
  %59 = icmp eq i8 %58, 47, !dbg !1297
  br i1 %59, label %60, label %63, !dbg !1298

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %57, i64 -1, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %61, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  %62 = icmp ugt i8* %61, %31, !dbg !1293
  br i1 %62, label %56, label %63, !dbg !1294, !llvm.loop !1300

63:                                               ; preds = %60, %56, %54
  %64 = phi i8* [ %52, %54 ], [ %57, %56 ], [ %61, %60 ], !dbg !1302
  call void @llvm.dbg.value(metadata i8* %64, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %64, metadata !1280, metadata !DIExpression()) #10, !dbg !1284
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1303
  store i8 0, i8* %65, align 1, !dbg !1304, !tbaa !1296
  %66 = load i1, i1* @verbose, align 1, !dbg !1305
  br i1 %66, label %67, label %71, !dbg !1307

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1308, !tbaa !1165
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1309
  %70 = tail call i8* @quotearg_style(i32 4, i8* %31) #10, !dbg !1310
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %68, i8* %69, i8* %70) #10, !dbg !1311
  br label %71, !dbg !1311

71:                                               ; preds = %67, %63
  %72 = tail call i32 @rmdir(i8* %31) #10, !dbg !1312
  %73 = icmp eq i32 %72, 0, !dbg !1313
  call void @llvm.dbg.value(metadata i1 %73, metadata !1281, metadata !DIExpression()) #10, !dbg !1284
  %74 = tail call i32* @__errno_location() #25, !dbg !1314
  %75 = load i32, i32* %74, align 4, !dbg !1314, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %75, metadata !1282, metadata !DIExpression()) #10, !dbg !1302
  br i1 %73, label %51, label %76, !dbg !1315

76:                                               ; preds = %71
  %77 = tail call fastcc zeroext i1 @ignorable_failure(i32 %75, i8* %31) #10, !dbg !1316
  br i1 %77, label %81, label %78, !dbg !1320

78:                                               ; preds = %76
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1321
  %80 = tail call i8* @quotearg_style(i32 4, i8* %31) #10, !dbg !1323
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %79, i8* %80) #10, !dbg !1324
  br label %81

81:                                               ; preds = %51, %76, %78
  %82 = phi i8 [ 1, %76 ], [ 0, %78 ], [ 1, %51 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1281, metadata !DIExpression()) #10, !dbg !1284
  %83 = and i8 %82, %28, !dbg !1325
  call void @llvm.dbg.value(metadata i8 %83, metadata !1212, metadata !DIExpression()), !dbg !1221
  br label %84, !dbg !1326

84:                                               ; preds = %44, %40, %81, %47
  %85 = phi i8 [ %83, %81 ], [ %28, %47 ], [ 0, %44 ], [ %28, %40 ], !dbg !1327
  call void @llvm.dbg.value(metadata i8 %85, metadata !1212, metadata !DIExpression()), !dbg !1221
  %86 = load i32, i32* @optind, align 4, !dbg !1328, !tbaa !1243
  %87 = add nsw i32 %86, 1, !dbg !1328
  store i32 %87, i32* @optind, align 4, !dbg !1328, !tbaa !1243
  %88 = icmp slt i32 %87, %0, !dbg !1247
  br i1 %88, label %26, label %89, !dbg !1248, !llvm.loop !1329

89:                                               ; preds = %84, %22
  %90 = phi i8 [ 1, %22 ], [ %85, %84 ], !dbg !1327
  call void @llvm.dbg.value(metadata i8 %90, metadata !1212, metadata !DIExpression()), !dbg !1221
  %91 = and i8 %90, 1, !dbg !1331
  %92 = xor i8 %91, 1, !dbg !1331
  %93 = zext i8 %92 to i32, !dbg !1331
  ret i32 %93, !dbg !1332
}

; Function Attrs: nounwind
declare !dbg !100 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !103 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !106 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !113 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !132 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !143 i32 @rmdir(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32 %0, i8* %1) unnamed_addr #8 !dbg !1333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1337, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %1, metadata !1338, metadata !DIExpression()), !dbg !1339
  %3 = load i1, i1* @ignore_fail_on_non_empty, align 1, !dbg !1340
  br i1 %3, label %4, label %44, !dbg !1341

4:                                                ; preds = %2
  switch i32 %0, label %43 [
    i32 39, label %44
    i32 17, label %44
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !1342

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !1343, metadata !DIExpression()) #10, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %1, metadata !1346, metadata !DIExpression()) #10, !dbg !1355
  %6 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %1, i32 198912) #10, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %6, metadata !1354, metadata !DIExpression()) #10, !dbg !1355
  %7 = icmp slt i32 %6, 0, !dbg !1358
  br i1 %7, label %39, label %8, !dbg !1360

8:                                                ; preds = %5
  %9 = tail call %struct.__dirstream* @fdopendir(i32 %6) #10, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !1347, metadata !DIExpression()) #10, !dbg !1355
  %10 = icmp eq %struct.__dirstream* %9, null, !dbg !1362
  br i1 %10, label %11, label %13, !dbg !1364

11:                                               ; preds = %8
  %12 = tail call i32 @close(i32 %6) #10, !dbg !1365
  br label %39, !dbg !1367

13:                                               ; preds = %8
  %14 = tail call i32* @__errno_location() #25, !dbg !1368
  store i32 0, i32* %14, align 4, !dbg !1369, !tbaa !1243
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !1370, metadata !DIExpression()) #10, !dbg !1377
  %15 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #10, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.dirent* %15, metadata !1375, metadata !DIExpression()) #10, !dbg !1380
  %16 = icmp eq %struct.dirent* %15, null, !dbg !1381
  br i1 %16, label %32, label %17, !dbg !1383

17:                                               ; preds = %13, %29
  %18 = phi %struct.dirent* [ %30, %29 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 0, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %19, metadata !1385, metadata !DIExpression()) #10, !dbg !1393
  %20 = load i8, i8* %19, align 1, !dbg !1395, !tbaa !1296
  %21 = icmp eq i8 %20, 46, !dbg !1396
  br i1 %21, label %22, label %32, !dbg !1397

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 1, !dbg !1398
  %24 = load i8, i8* %23, align 1, !dbg !1398, !tbaa !1296
  %25 = icmp eq i8 %24, 46, !dbg !1399
  %26 = select i1 %25, i64 2, i64 1, !dbg !1400
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 %26, !dbg !1400
  %28 = load i8, i8* %27, align 1, !dbg !1400, !tbaa !1296
  call void @llvm.dbg.value(metadata i8 %28, metadata !1390, metadata !DIExpression()) #10, !dbg !1401
  switch i8 %28, label %32 [
    i8 47, label %29
    i8 0, label %29
  ], !dbg !1402

29:                                               ; preds = %22, %22
  %30 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #10, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.dirent* %30, metadata !1375, metadata !DIExpression()) #10, !dbg !1380
  %31 = icmp eq %struct.dirent* %30, null, !dbg !1381
  br i1 %31, label %32, label %17, !dbg !1383

32:                                               ; preds = %17, %22, %29, %13
  %33 = phi %struct.dirent* [ null, %13 ], [ %18, %22 ], [ %18, %17 ], [ null, %29 ], !dbg !1379
  call void @llvm.dbg.value(metadata %struct.dirent* %33, metadata !1350, metadata !DIExpression()) #10, !dbg !1355
  %34 = load i32, i32* %14, align 4, !dbg !1403, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %34, metadata !1353, metadata !DIExpression()) #10, !dbg !1355
  %35 = tail call i32 @closedir(%struct.__dirstream* nonnull %9) #10, !dbg !1404
  store i32 %34, i32* %14, align 4, !dbg !1405, !tbaa !1243
  %36 = icmp eq %struct.dirent* %33, null, !dbg !1406
  %37 = icmp eq i32 %34, 0, !dbg !1408
  %38 = and i1 %36, %37, !dbg !1409
  br i1 %38, label %44, label %39, !dbg !1410

39:                                               ; preds = %5, %11, %32
  %40 = tail call i32* @__errno_location() #25, !dbg !1411
  %41 = load i32, i32* %40, align 4, !dbg !1411, !tbaa !1243
  %42 = icmp eq i32 %41, 0, !dbg !1412
  br label %44

43:                                               ; preds = %4
  br label %44, !dbg !1413

44:                                               ; preds = %4, %4, %43, %39, %32, %2
  %45 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %32 ], [ %42, %39 ], [ true, %4 ], [ false, %43 ], !dbg !1339
  ret i1 %45, !dbg !1413
}

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

declare !dbg !147 i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare !dbg !151 %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare !dbg !157 i32 @close(i32) local_unnamed_addr #3

declare !dbg !163 %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !160 i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* %0, i8* %1, ...) local_unnamed_addr #8 !dbg !1414 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %1, metadata !1422, metadata !DIExpression()), !dbg !1435
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1436
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !1436
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1423, metadata !DIExpression()), !dbg !1437
  %5 = load i8*, i8** @program_name, align 8, !dbg !1438, !tbaa !1165
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !1438
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !1439
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1440
  call void @llvm.va_start(i8* nonnull %4), !dbg !1440
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1441, metadata !DIExpression()) #10, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %1, metadata !1450, metadata !DIExpression()) #10, !dbg !1452
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !1451, metadata !DIExpression()) #10, !dbg !1452
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #10, !dbg !1454
  call void @llvm.va_end(i8* nonnull %4), !dbg !1455
  call void @llvm.dbg.value(metadata i32 10, metadata !1456, metadata !DIExpression()) #10, !dbg !1463
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1462, metadata !DIExpression()) #10, !dbg !1463
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1465
  %11 = load i8*, i8** %10, align 8, !dbg !1465, !tbaa !1466
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1465
  %13 = load i8*, i8** %12, align 8, !dbg !1465, !tbaa !1470
  %14 = icmp ult i8* %11, %13, !dbg !1465
  br i1 %14, label %17, label %15, !dbg !1465, !prof !1471, !misexpect !1472

15:                                               ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #10, !dbg !1465
  br label %19, !dbg !1465

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1465
  store i8* %18, i8** %10, align 8, !dbg !1465, !tbaa !1466
  store i8 10, i8* %11, align 1, !dbg !1465, !tbaa !1296
  br label %19, !dbg !1465

19:                                               ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i8* %0, i8** @file_name, align 8, !dbg !1478, !tbaa !1165
  ret void, !dbg !1479
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1480 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1486, !tbaa !1487
  ret void, !dbg !1489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1490 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1495, !tbaa !1165
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1496
  %3 = icmp eq i32 %2, 0, !dbg !1497
  br i1 %3, label %22, label %4, !dbg !1498

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1499, !tbaa !1487, !range !1500
  %6 = icmp eq i8 %5, 0, !dbg !1499
  br i1 %6, label %11, label %7, !dbg !1501

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1502
  %9 = load i32, i32* %8, align 4, !dbg !1502, !tbaa !1243
  %10 = icmp eq i32 %9, 32, !dbg !1503
  br i1 %10, label %22, label %11, !dbg !1504

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %12, metadata !1492, metadata !DIExpression()), !dbg !1506
  %13 = load i8*, i8** @file_name, align 8, !dbg !1507, !tbaa !1165
  %14 = icmp eq i8* %13, null, !dbg !1507
  %15 = tail call i32* @__errno_location() #25, !dbg !1509
  %16 = load i32, i32* %15, align 4, !dbg !1509, !tbaa !1243
  br i1 %14, label %19, label %17, !dbg !1510

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1511
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1512
  br label %20, !dbg !1512

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #10, !dbg !1513
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1514, !tbaa !1243
  tail call void @_exit(i32 %21) #23, !dbg !1515
  unreachable, !dbg !1515

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1516, !tbaa !1165
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1518
  %25 = icmp eq i32 %24, 0, !dbg !1519
  br i1 %25, label %28, label %26, !dbg !1520

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1521, !tbaa !1243
  tail call void @_exit(i32 %27) #23, !dbg !1522
  unreachable, !dbg !1522

28:                                               ; preds = %22
  ret void, !dbg !1523
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local zeroext i1 @strip_trailing_slashes(i8* %0) local_unnamed_addr #13 !dbg !1524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()), !dbg !1530
  %2 = tail call i8* @last_component(i8* %0) #22, !dbg !1531
  call void @llvm.dbg.value(metadata i8* %2, metadata !1527, metadata !DIExpression()), !dbg !1530
  %3 = load i8, i8* %2, align 1, !dbg !1532, !tbaa !1296
  %4 = icmp eq i8 %3, 0, !dbg !1532
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %5, metadata !1527, metadata !DIExpression()), !dbg !1530
  %6 = tail call i64 @base_len(i8* %5) #22, !dbg !1535
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %7, metadata !1528, metadata !DIExpression()), !dbg !1530
  %8 = load i8, i8* %7, align 1, !dbg !1537, !tbaa !1296
  %9 = icmp ne i8 %8, 0, !dbg !1538
  call void @llvm.dbg.value(metadata i1 %9, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i8 0, i8* %7, align 1, !dbg !1539, !tbaa !1296
  ret i1 %9, !dbg !1540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1541 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  %2 = icmp eq i8* %0, null, !dbg !1547
  br i1 %2, label %3, label %6, !dbg !1549

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1550, !tbaa !1165
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1552
  tail call void @abort() #23, !dbg !1553
  unreachable, !dbg !1553

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %7, metadata !1544, metadata !DIExpression()), !dbg !1546
  %8 = icmp eq i8* %7, null, !dbg !1555
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1556
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %10, metadata !1545, metadata !DIExpression()), !dbg !1546
  %11 = ptrtoint i8* %10 to i64, !dbg !1557
  %12 = ptrtoint i8* %0 to i64, !dbg !1557
  %13 = sub i64 %11, %12, !dbg !1557
  %14 = icmp sgt i64 %13, 6, !dbg !1559
  br i1 %14, label %15, label %24, !dbg !1560

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1561
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #22, !dbg !1562
  %18 = icmp eq i32 %17, 0, !dbg !1563
  br i1 %18, label %19, label %24, !dbg !1564

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1543, metadata !DIExpression()), !dbg !1546
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #22, !dbg !1565
  %21 = icmp eq i32 %20, 0, !dbg !1568
  br i1 %21, label %22, label %24, !dbg !1569

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %23, metadata !1543, metadata !DIExpression()), !dbg !1546
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1572, !tbaa !1165
  br label %24, !dbg !1573

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1543, metadata !DIExpression()), !dbg !1546
  store i8* %25, i8** @program_name, align 8, !dbg !1574, !tbaa !1165
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1575, !tbaa !1165
  ret void, !dbg !1576
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1577 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1582, metadata !DIExpression()), !dbg !1585
  %2 = tail call i32* @__errno_location() #25, !dbg !1586
  %3 = load i32, i32* %2, align 4, !dbg !1586, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %3, metadata !1583, metadata !DIExpression()), !dbg !1585
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1587
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1587
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1587
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1588
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i32 %3, i32* %2, align 4, !dbg !1589, !tbaa !1243
  ret %struct.quoting_options* %8, !dbg !1590
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1591 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1595, metadata !DIExpression()), !dbg !1596
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1597
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1597
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1598
  %5 = load i32, i32* %4, align 8, !dbg !1598, !tbaa !1599
  ret i32 %5, !dbg !1601
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1602 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1606, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i32 %1, metadata !1607, metadata !DIExpression()), !dbg !1608
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1609
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1609
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1610
  store i32 %1, i32* %5, align 8, !dbg !1611, !tbaa !1599
  ret void, !dbg !1612
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1613 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1617, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1618, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %2, metadata !1619, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1620, metadata !DIExpression()), !dbg !1625
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1626
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1626
  %6 = lshr i8 %1, 5, !dbg !1627
  %7 = zext i8 %6 to i64, !dbg !1627
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1628
  call void @llvm.dbg.value(metadata i32* %8, metadata !1621, metadata !DIExpression()), !dbg !1625
  %9 = and i8 %1, 31, !dbg !1629
  %10 = zext i8 %9 to i32, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %10, metadata !1623, metadata !DIExpression()), !dbg !1625
  %11 = load i32, i32* %8, align 4, !dbg !1630, !tbaa !1243
  %12 = lshr i32 %11, %10, !dbg !1631
  %13 = and i32 %12, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %13, metadata !1624, metadata !DIExpression()), !dbg !1625
  %14 = and i32 %2, 1, !dbg !1633
  %15 = xor i32 %13, %14, !dbg !1634
  %16 = shl i32 %15, %10, !dbg !1635
  %17 = xor i32 %16, %11, !dbg !1636
  store i32 %17, i32* %8, align 4, !dbg !1636, !tbaa !1243
  ret i32 %13, !dbg !1637
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1638 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1642, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %1, metadata !1643, metadata !DIExpression()), !dbg !1645
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1646
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1642, metadata !DIExpression()), !dbg !1645
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1649
  %6 = load i32, i32* %5, align 4, !dbg !1649, !tbaa !1650
  call void @llvm.dbg.value(metadata i32 %6, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i32 %1, i32* %5, align 4, !dbg !1651, !tbaa !1650
  ret i32 %6, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1653 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1657, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %1, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %2, metadata !1659, metadata !DIExpression()), !dbg !1660
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1661
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1657, metadata !DIExpression()), !dbg !1660
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1664
  store i32 10, i32* %6, align 8, !dbg !1665, !tbaa !1599
  %7 = icmp ne i8* %1, null, !dbg !1666
  %8 = icmp ne i8* %2, null, !dbg !1668
  %9 = and i1 %7, %8, !dbg !1669
  br i1 %9, label %11, label %10, !dbg !1669

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1670
  unreachable, !dbg !1670

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1671
  store i8* %1, i8** %12, align 8, !dbg !1672, !tbaa !1673
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1674
  store i8* %2, i8** %13, align 8, !dbg !1675, !tbaa !1676
  ret void, !dbg !1677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1678 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1682, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %1, metadata !1683, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %2, metadata !1684, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %3, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1686, metadata !DIExpression()), !dbg !1690
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1691
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1687, metadata !DIExpression()), !dbg !1690
  %8 = tail call i32* @__errno_location() #25, !dbg !1692
  %9 = load i32, i32* %8, align 4, !dbg !1692, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %9, metadata !1688, metadata !DIExpression()), !dbg !1690
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1693
  %11 = load i32, i32* %10, align 8, !dbg !1693, !tbaa !1599
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1694
  %13 = load i32, i32* %12, align 4, !dbg !1694, !tbaa !1650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1695
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1696
  %16 = load i8*, i8** %15, align 8, !dbg !1696, !tbaa !1673
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1697
  %18 = load i8*, i8** %17, align 8, !dbg !1697, !tbaa !1676
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %19, metadata !1689, metadata !DIExpression()), !dbg !1690
  store i32 %9, i32* %8, align 4, !dbg !1699, !tbaa !1243
  ret i64 %19, !dbg !1700
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1701 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1707, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %1, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %2, metadata !1709, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %3, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %4, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %5, metadata !1712, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32* %6, metadata !1713, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %7, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %8, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* null, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1720, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1721, metadata !DIExpression()), !dbg !1765
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1766
  %14 = icmp eq i64 %13, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i1 %14, metadata !1722, metadata !DIExpression()), !dbg !1765
  %15 = lshr i32 %5, 1, !dbg !1768
  %16 = trunc i32 %15 to i8, !dbg !1768
  %17 = and i8 %16, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %17, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1726, metadata !DIExpression()), !dbg !1765
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1769
  %19 = and i32 %5, 4, !dbg !1771
  %20 = icmp eq i32 %19, 0, !dbg !1771
  %21 = and i32 %5, 1, !dbg !1774
  %22 = icmp eq i32 %21, 0, !dbg !1774
  %23 = bitcast i64* %10 to i8*, !dbg !1777
  %24 = bitcast i32* %12 to i8*, !dbg !1778
  %25 = icmp eq i32* %6, null, !dbg !1779
  br label %26, !dbg !1781

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1782
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1783
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1784
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1785
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1765
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1786
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1787
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1788
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %38, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %37, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %36, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %35, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %34, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %33, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %32, metadata !1720, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %31, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %30, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %29, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %28, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %27, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1759), !dbg !1789
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
  ], !dbg !1790

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %35, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 5, metadata !1711, metadata !DIExpression()), !dbg !1765
  br label %92, !dbg !1791

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 5, metadata !1711, metadata !DIExpression()), !dbg !1765
  %42 = and i8 %35, 1, !dbg !1793
  %43 = icmp eq i8 %42, 0, !dbg !1793
  br i1 %43, label %44, label %92, !dbg !1791

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1795
  br i1 %45, label %92, label %46, !dbg !1798

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1795, !tbaa !1296
  br label %92, !dbg !1795

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %27), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %48, metadata !1714, metadata !DIExpression()), !dbg !1765
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %27), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %49, metadata !1715, metadata !DIExpression()), !dbg !1765
  br label %50, !dbg !1804

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %51, metadata !1714, metadata !DIExpression()), !dbg !1765
  %53 = and i8 %35, 1, !dbg !1805
  %54 = icmp eq i8 %53, 0, !dbg !1805
  br i1 %54, label %55, label %70, !dbg !1807

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1765
  %56 = load i8, i8* %51, align 1, !dbg !1808, !tbaa !1296
  %57 = icmp eq i8 %56, 0, !dbg !1811
  br i1 %57, label %70, label %58, !dbg !1811

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %61, metadata !1717, metadata !DIExpression()), !dbg !1765
  %62 = icmp ult i64 %61, %39, !dbg !1812
  br i1 %62, label %63, label %65, !dbg !1815

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1812
  store i8 %59, i8* %64, align 1, !dbg !1812, !tbaa !1296
  br label %65, !dbg !1812

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %66, metadata !1717, metadata !DIExpression()), !dbg !1765
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %67, metadata !1719, metadata !DIExpression()), !dbg !1765
  %68 = load i8, i8* %67, align 1, !dbg !1808, !tbaa !1296
  %69 = icmp eq i8 %68, 0, !dbg !1811
  br i1 %69, label %70, label %58, !dbg !1811, !llvm.loop !1817

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1819
  call void @llvm.dbg.value(metadata i64 %71, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %52, metadata !1719, metadata !DIExpression()), !dbg !1765
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %72, metadata !1720, metadata !DIExpression()), !dbg !1765
  br label %92, !dbg !1821

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1721, metadata !DIExpression()), !dbg !1765
  br label %74, !dbg !1822

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %75, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1723, metadata !DIExpression()), !dbg !1765
  br label %76, !dbg !1823

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1785
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %78, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %77, metadata !1721, metadata !DIExpression()), !dbg !1765
  %79 = and i8 %78, 1, !dbg !1824
  %80 = icmp eq i8 %79, 0, !dbg !1824
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1826
  br label %82, !dbg !1826

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1765
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1768
  call void @llvm.dbg.value(metadata i8 %84, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %83, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  %85 = and i8 %84, 1, !dbg !1827
  %86 = icmp eq i8 %85, 0, !dbg !1827
  br i1 %86, label %87, label %92, !dbg !1829

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1830
  br i1 %88, label %92, label %89, !dbg !1833

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1830, !tbaa !1296
  br label %92, !dbg !1830

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1723, metadata !DIExpression()), !dbg !1765
  br label %92, !dbg !1834

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1835
  unreachable, !dbg !1835

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1819
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %40 ], !dbg !1765
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1765
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1765
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %100, metadata !1723, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %98, metadata !1720, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %96, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %93, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1765
  %101 = and i8 %99, 1, !dbg !1836
  %102 = icmp ne i8 %101, 0, !dbg !1836
  %103 = icmp ne i32 %93, 2, !dbg !1836
  %104 = and i1 %103, %102, !dbg !1836
  %105 = icmp ne i64 %98, 0, !dbg !1836
  %106 = and i1 %105, %104, !dbg !1836
  %107 = icmp ugt i64 %98, 1, !dbg !1836
  %108 = and i8 %100, 1, !dbg !1838
  %109 = icmp eq i8 %108, 0, !dbg !1838
  %110 = icmp eq i32 %93, 2, !dbg !1841
  %111 = or i1 %103, %109, !dbg !1843
  %112 = icmp ne i8 %108, 0, !dbg !1845
  %113 = and i1 %110, %112, !dbg !1845
  %114 = xor i1 %102, true, !dbg !1846
  %115 = xor i1 %104, true, !dbg !1779
  %116 = and i1 %109, %115, !dbg !1779
  %117 = or i1 %25, %116, !dbg !1779
  %118 = and i8 %99, %100, !dbg !1847
  %119 = and i8 %118, 1, !dbg !1847
  %120 = icmp ne i8 %119, 0, !dbg !1847
  %121 = and i1 %120, %105, !dbg !1847
  br label %122, !dbg !1849

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1850
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1819
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1782
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1786
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1787
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1788
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %126, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %123, metadata !1716, metadata !DIExpression()), !dbg !1765
  %131 = icmp eq i64 %126, -1, !dbg !1851
  br i1 %131, label %132, label %136, !dbg !1852

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1853
  %134 = load i8, i8* %133, align 1, !dbg !1853, !tbaa !1296
  %135 = icmp eq i8 %134, 0, !dbg !1854
  br i1 %135, label %581, label %138, !dbg !1855

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1856
  br i1 %137, label %581, label %138, !dbg !1855

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1857
  br i1 %106, label %139, label %154, !dbg !1858

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1859
  %141 = and i1 %107, %131, !dbg !1860
  br i1 %141, label %142, label %144, !dbg !1860

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %143, metadata !1710, metadata !DIExpression()), !dbg !1765
  br label %144, !dbg !1862

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1710, metadata !DIExpression()), !dbg !1765
  %146 = icmp ugt i64 %140, %145, !dbg !1863
  br i1 %146, label %154, label %147, !dbg !1864

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1865
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1866
  %150 = icmp ne i32 %149, 0, !dbg !1867
  %151 = or i1 %150, %109, !dbg !1868
  %152 = xor i1 %150, true, !dbg !1868
  %153 = zext i1 %152 to i8, !dbg !1868
  br i1 %151, label %154, label %639, !dbg !1868

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8 %156, metadata !1732, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %155, metadata !1710, metadata !DIExpression()), !dbg !1765
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1869
  %158 = load i8, i8* %157, align 1, !dbg !1869, !tbaa !1296
  call void @llvm.dbg.value(metadata i8 %158, metadata !1727, metadata !DIExpression()), !dbg !1857
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
  ], !dbg !1870

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1871

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1872

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1857
  %162 = and i8 %127, 1, !dbg !1875
  %163 = icmp eq i8 %162, 0, !dbg !1875
  %164 = and i1 %110, %163, !dbg !1875
  br i1 %164, label %165, label %181, !dbg !1875

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1877
  br i1 %166, label %167, label %169, !dbg !1881

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1877
  store i8 39, i8* %168, align 1, !dbg !1877, !tbaa !1296
  br label %169, !dbg !1877

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %170, metadata !1717, metadata !DIExpression()), !dbg !1765
  %171 = icmp ult i64 %170, %130, !dbg !1882
  br i1 %171, label %172, label %174, !dbg !1885

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1882
  store i8 36, i8* %173, align 1, !dbg !1882, !tbaa !1296
  br label %174, !dbg !1882

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %175, metadata !1717, metadata !DIExpression()), !dbg !1765
  %176 = icmp ult i64 %175, %130, !dbg !1886
  br i1 %176, label %177, label %179, !dbg !1889

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1886
  store i8 39, i8* %178, align 1, !dbg !1886, !tbaa !1296
  br label %179, !dbg !1886

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %180, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %181, !dbg !1890

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1765
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %183, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %182, metadata !1717, metadata !DIExpression()), !dbg !1765
  %184 = icmp ult i64 %182, %130, !dbg !1891
  br i1 %184, label %185, label %187, !dbg !1894

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1891
  store i8 92, i8* %186, align 1, !dbg !1891, !tbaa !1296
  br label %187, !dbg !1891

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %188, metadata !1717, metadata !DIExpression()), !dbg !1765
  br i1 %103, label %189, label %463, !dbg !1895

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1897
  %191 = icmp ult i64 %190, %155, !dbg !1898
  br i1 %191, label %192, label %463, !dbg !1899

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1900
  %194 = load i8, i8* %193, align 1, !dbg !1900, !tbaa !1296
  %195 = add i8 %194, -48, !dbg !1901
  %196 = icmp ult i8 %195, 10, !dbg !1901
  br i1 %196, label %197, label %463, !dbg !1901

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1902
  br i1 %198, label %199, label %201, !dbg !1906

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1902
  store i8 48, i8* %200, align 1, !dbg !1902, !tbaa !1296
  br label %201, !dbg !1902

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %202, metadata !1717, metadata !DIExpression()), !dbg !1765
  %203 = icmp ult i64 %202, %130, !dbg !1907
  br i1 %203, label %204, label %206, !dbg !1910

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1907
  store i8 48, i8* %205, align 1, !dbg !1907, !tbaa !1296
  br label %206, !dbg !1907

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %207, metadata !1717, metadata !DIExpression()), !dbg !1765
  br label %463, !dbg !1911

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1912

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1913

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1914

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1915

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1916
  %214 = icmp ult i64 %213, %155, !dbg !1917
  br i1 %214, label %215, label %463, !dbg !1918

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1919
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1920
  %218 = load i8, i8* %217, align 1, !dbg !1920, !tbaa !1296
  %219 = icmp eq i8 %218, 63, !dbg !1921
  br i1 %219, label %220, label %463, !dbg !1922

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1923
  %222 = load i8, i8* %221, align 1, !dbg !1923, !tbaa !1296
  %223 = sext i8 %222 to i32, !dbg !1923
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
  ], !dbg !1924

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1925

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %213, metadata !1716, metadata !DIExpression()), !dbg !1765
  %226 = icmp ult i64 %124, %130, !dbg !1927
  br i1 %226, label %227, label %229, !dbg !1930

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1927
  store i8 63, i8* %228, align 1, !dbg !1927, !tbaa !1296
  br label %229, !dbg !1927

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %230, metadata !1717, metadata !DIExpression()), !dbg !1765
  %231 = icmp ult i64 %230, %130, !dbg !1931
  br i1 %231, label %232, label %234, !dbg !1934

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1931
  store i8 34, i8* %233, align 1, !dbg !1931, !tbaa !1296
  br label %234, !dbg !1931

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %235, metadata !1717, metadata !DIExpression()), !dbg !1765
  %236 = icmp ult i64 %235, %130, !dbg !1935
  br i1 %236, label %237, label %239, !dbg !1938

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1935
  store i8 34, i8* %238, align 1, !dbg !1935, !tbaa !1296
  br label %239, !dbg !1935

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %240, metadata !1717, metadata !DIExpression()), !dbg !1765
  %241 = icmp ult i64 %240, %130, !dbg !1939
  br i1 %241, label %242, label %244, !dbg !1942

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1939
  store i8 63, i8* %243, align 1, !dbg !1939, !tbaa !1296
  br label %244, !dbg !1939

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %245, metadata !1717, metadata !DIExpression()), !dbg !1765
  br label %463, !dbg !1943

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1731, metadata !DIExpression()), !dbg !1857
  br label %256, !dbg !1944

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1731, metadata !DIExpression()), !dbg !1857
  br label %256, !dbg !1945

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1731, metadata !DIExpression()), !dbg !1857
  br label %254, !dbg !1946

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1731, metadata !DIExpression()), !dbg !1857
  br label %254, !dbg !1947

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1731, metadata !DIExpression()), !dbg !1857
  br label %256, !dbg !1948

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1731, metadata !DIExpression()), !dbg !1857
  br i1 %110, label %252, label %253, !dbg !1949

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1950

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1953

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %255, metadata !1731, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.label(metadata !1760), !dbg !1955
  br i1 %111, label %256, label %625, !dbg !1956

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %257, metadata !1731, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.label(metadata !1761), !dbg !1958
  br i1 %102, label %488, label %463, !dbg !1959

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1960

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1961, !tbaa !1296
  %261 = icmp eq i8 %260, 0, !dbg !1962
  br i1 %261, label %262, label %463, !dbg !1963

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1964
  br i1 %263, label %264, label %463, !dbg !1966

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1857
  br label %265, !dbg !1967

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8 %266, metadata !1734, metadata !DIExpression()), !dbg !1857
  br i1 %111, label %463, label %625, !dbg !1968

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1857
  br i1 %110, label %268, label %463, !dbg !1969

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1970

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1972
  %271 = icmp ne i64 %125, 0, !dbg !1974
  %272 = or i1 %271, %270, !dbg !1975
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1975
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %274, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %273, metadata !1718, metadata !DIExpression()), !dbg !1765
  %275 = icmp ult i64 %124, %274, !dbg !1976
  br i1 %275, label %276, label %278, !dbg !1979

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1976
  store i8 39, i8* %277, align 1, !dbg !1976, !tbaa !1296
  br label %278, !dbg !1976

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %279, metadata !1717, metadata !DIExpression()), !dbg !1765
  %280 = icmp ult i64 %279, %274, !dbg !1980
  br i1 %280, label %281, label %283, !dbg !1983

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1980
  store i8 92, i8* %282, align 1, !dbg !1980, !tbaa !1296
  br label %283, !dbg !1980

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %284, metadata !1717, metadata !DIExpression()), !dbg !1765
  %285 = icmp ult i64 %284, %274, !dbg !1984
  br i1 %285, label %286, label %288, !dbg !1987

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1984
  store i8 39, i8* %287, align 1, !dbg !1984, !tbaa !1296
  br label %288, !dbg !1984

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %289, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %463, !dbg !1988

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1989

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1735, metadata !DIExpression()), !dbg !1990
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !1991
  %293 = load i16*, i16** %292, align 8, !dbg !1991, !tbaa !1165
  %294 = zext i8 %158 to i64, !dbg !1991
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1991
  %296 = load i16, i16* %295, align 2, !dbg !1991, !tbaa !1993
  %297 = lshr i16 %296, 14, !dbg !1994
  %298 = trunc i16 %297 to i8, !dbg !1994
  %299 = and i8 %298, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i8 %299, metadata !1738, metadata !DIExpression()), !dbg !1990
  br label %355, !dbg !1995

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #10, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1739, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %23, metadata !1998, metadata !DIExpression()) #10, !dbg !2006
  call void @llvm.dbg.value(metadata i32 0, metadata !2004, metadata !DIExpression()) #10, !dbg !2006
  call void @llvm.dbg.value(metadata i64 8, metadata !2005, metadata !DIExpression()) #10, !dbg !2006
  store i64 0, i64* %10, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 1, metadata !1738, metadata !DIExpression()), !dbg !1990
  %301 = icmp eq i64 %155, -1, !dbg !2009
  br i1 %301, label %302, label %304, !dbg !2011

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %303, metadata !1710, metadata !DIExpression()), !dbg !1765
  br label %304, !dbg !2013

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1857
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  br label %306, !dbg !2014

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2015
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2016
  call void @llvm.dbg.value(metadata i8 %308, metadata !1738, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2017
  %309 = add i64 %307, %123, !dbg !2018
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2019
  %311 = sub i64 %305, %309, !dbg !2020
  call void @llvm.dbg.value(metadata i32* %12, metadata !1745, metadata !DIExpression(DW_OP_deref)), !dbg !1778
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #10, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %312, metadata !1748, metadata !DIExpression()), !dbg !1778
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2022

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  %314 = icmp ugt i64 %305, %309, !dbg !2023
  br i1 %314, label %315, label %340, !dbg !2025

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2026
  br label %317, !dbg !2026

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1735, metadata !DIExpression()), !dbg !1990
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2027
  %321 = load i8, i8* %320, align 1, !dbg !2027, !tbaa !1296
  %322 = icmp eq i8 %321, 0, !dbg !2025
  br i1 %322, label %340, label %323, !dbg !2026

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %324, metadata !1735, metadata !DIExpression()), !dbg !1990
  %325 = add i64 %324, %123, !dbg !2029
  %326 = icmp ult i64 %325, %305, !dbg !2023
  br i1 %326, label %317, label %340, !dbg !2025, !llvm.loop !2030

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2031
  %329 = and i1 %113, %328, !dbg !2034
  call void @llvm.dbg.value(metadata i64 1, metadata !1749, metadata !DIExpression()), !dbg !2035
  br i1 %329, label %330, label %343, !dbg !2034

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1749, metadata !DIExpression()), !dbg !2035
  %332 = add i64 %331, %309, !dbg !2036
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2037
  %334 = load i8, i8* %333, align 1, !dbg !2037, !tbaa !1296
  %335 = sext i8 %334 to i32, !dbg !2037
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2038

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %337, metadata !1749, metadata !DIExpression()), !dbg !2035
  %338 = icmp eq i64 %337, %312, !dbg !2031
  br i1 %338, label %343, label %330, !dbg !2040, !llvm.loop !2041

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 %308, metadata !1738, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %307, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 %308, metadata !1738, metadata !DIExpression()), !dbg !1990
  br label %340, !dbg !2043

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2043
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2044, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %344, metadata !1745, metadata !DIExpression()), !dbg !1778
  %345 = call i32 @iswprint(i32 %344) #10, !dbg !2046
  %346 = icmp eq i32 %345, 0, !dbg !2046
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2047
  call void @llvm.dbg.value(metadata i8 %347, metadata !1738, metadata !DIExpression()), !dbg !1990
  %348 = add i64 %312, %307, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %348, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 %347, metadata !1738, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %348, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2043
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2049
  %350 = icmp eq i32 %349, 0, !dbg !2050
  br i1 %350, label %306, label %351, !dbg !2051, !llvm.loop !2052

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !2054
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1711, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %99, metadata !1721, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %305, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !2054
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1857
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2055
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2055
  call void @llvm.dbg.value(metadata i8 %358, metadata !1738, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %357, metadata !1735, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %356, metadata !1710, metadata !DIExpression()), !dbg !1765
  %359 = and i8 %358, 1, !dbg !2056
  %360 = icmp ne i8 %359, 0, !dbg !2056
  call void @llvm.dbg.value(metadata i8 %359, metadata !1734, metadata !DIExpression()), !dbg !1857
  %361 = icmp ult i64 %357, 2, !dbg !2057
  %362 = or i1 %360, %114, !dbg !2058
  %363 = and i1 %361, %362, !dbg !2059
  br i1 %363, label %463, label %364, !dbg !2059

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %365, metadata !1756, metadata !DIExpression()), !dbg !2061
  br label %366, !dbg !2062

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1850
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1765
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1786
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1857
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1857
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %372, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %371, metadata !1732, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %370, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %369, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %368, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %367, metadata !1716, metadata !DIExpression()), !dbg !1765
  br i1 %362, label %419, label %373, !dbg !2064

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2069

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1857
  %375 = and i8 %369, 1, !dbg !2072
  %376 = icmp eq i8 %375, 0, !dbg !2072
  %377 = and i1 %110, %376, !dbg !2072
  br i1 %377, label %378, label %394, !dbg !2072

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2074
  br i1 %379, label %380, label %382, !dbg !2078

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2074
  store i8 39, i8* %381, align 1, !dbg !2074, !tbaa !1296
  br label %382, !dbg !2074

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %383, metadata !1717, metadata !DIExpression()), !dbg !1765
  %384 = icmp ult i64 %383, %130, !dbg !2079
  br i1 %384, label %385, label %387, !dbg !2082

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2079
  store i8 36, i8* %386, align 1, !dbg !2079, !tbaa !1296
  br label %387, !dbg !2079

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %388, metadata !1717, metadata !DIExpression()), !dbg !1765
  %389 = icmp ult i64 %388, %130, !dbg !2083
  br i1 %389, label %390, label %392, !dbg !2086

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2083
  store i8 39, i8* %391, align 1, !dbg !2083, !tbaa !1296
  br label %392, !dbg !2083

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %393, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %394, !dbg !2087

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1765
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %396, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %395, metadata !1717, metadata !DIExpression()), !dbg !1765
  %397 = icmp ult i64 %395, %130, !dbg !2088
  br i1 %397, label %398, label %400, !dbg !2091

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2088
  store i8 92, i8* %399, align 1, !dbg !2088, !tbaa !1296
  br label %400, !dbg !2088

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %401, metadata !1717, metadata !DIExpression()), !dbg !1765
  %402 = icmp ult i64 %401, %130, !dbg !2092
  br i1 %402, label %403, label %407, !dbg !2095

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2092
  %405 = or i8 %404, 48, !dbg !2092
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2092
  store i8 %405, i8* %406, align 1, !dbg !2092, !tbaa !1296
  br label %407, !dbg !2092

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %408, metadata !1717, metadata !DIExpression()), !dbg !1765
  %409 = icmp ult i64 %408, %130, !dbg !2096
  br i1 %409, label %410, label %415, !dbg !2099

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2096
  %412 = and i8 %411, 7, !dbg !2096
  %413 = or i8 %412, 48, !dbg !2096
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2096
  store i8 %413, i8* %414, align 1, !dbg !2096, !tbaa !1296
  br label %415, !dbg !2096

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %416, metadata !1717, metadata !DIExpression()), !dbg !1765
  %417 = and i8 %370, 7, !dbg !2100
  %418 = or i8 %417, 48, !dbg !2101
  call void @llvm.dbg.value(metadata i8 %418, metadata !1727, metadata !DIExpression()), !dbg !1857
  br label %428, !dbg !2102

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2103
  %421 = icmp eq i8 %420, 0, !dbg !2103
  br i1 %421, label %428, label %422, !dbg !2105

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2106
  br i1 %423, label %424, label %426, !dbg !2110

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2106
  store i8 92, i8* %425, align 1, !dbg !2106, !tbaa !1296
  br label %426, !dbg !2106

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %427, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1857
  br label %428, !dbg !2111

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1765
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1786
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1857
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1857
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8 %433, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %432, metadata !1732, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %431, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %430, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %429, metadata !1717, metadata !DIExpression()), !dbg !1765
  %434 = add i64 %367, 1, !dbg !2112
  %435 = icmp ugt i64 %365, %434, !dbg !2114
  br i1 %435, label %436, label %526, !dbg !2115

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2116
  %438 = icmp ne i8 %437, 0, !dbg !2116
  %439 = and i8 %433, 1, !dbg !2116
  %440 = icmp eq i8 %439, 0, !dbg !2116
  %441 = and i1 %438, %440, !dbg !2116
  br i1 %441, label %442, label %453, !dbg !2116

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2119
  br i1 %443, label %444, label %446, !dbg !2123

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2119
  store i8 39, i8* %445, align 1, !dbg !2119, !tbaa !1296
  br label %446, !dbg !2119

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %447, metadata !1717, metadata !DIExpression()), !dbg !1765
  %448 = icmp ult i64 %447, %130, !dbg !2124
  br i1 %448, label %449, label %451, !dbg !2127

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2124
  store i8 39, i8* %450, align 1, !dbg !2124, !tbaa !1296
  br label %451, !dbg !2124

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %452, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %453, !dbg !2128

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2129
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %455, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %454, metadata !1717, metadata !DIExpression()), !dbg !1765
  %456 = icmp ult i64 %454, %130, !dbg !2130
  br i1 %456, label %457, label %459, !dbg !2133

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2130
  store i8 %431, i8* %458, align 1, !dbg !2130, !tbaa !1296
  br label %459, !dbg !2130

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %460, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %434, metadata !1716, metadata !DIExpression()), !dbg !1765
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2134
  %462 = load i8, i8* %461, align 1, !dbg !2134, !tbaa !1296
  call void @llvm.dbg.value(metadata i8 %462, metadata !1727, metadata !DIExpression()), !dbg !1857
  br label %366, !dbg !2135, !llvm.loop !2136

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1850
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1765
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1782
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2139
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1765
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1765
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1857
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1857
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1857
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %472, metadata !1734, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %471, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %156, metadata !1732, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %470, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %469, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %468, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %467, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %466, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %465, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %464, metadata !1716, metadata !DIExpression()), !dbg !1765
  br i1 %117, label %486, label %474, !dbg !2140

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2141
  %476 = zext i8 %475 to i64, !dbg !2141
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2142
  %478 = load i32, i32* %477, align 4, !dbg !2142, !tbaa !1243
  %479 = and i8 %470, 31, !dbg !2143
  %480 = zext i8 %479 to i32, !dbg !2143
  %481 = shl nuw i32 1, %480, !dbg !2144
  %482 = and i32 %478, %481, !dbg !2144
  %483 = icmp eq i32 %482, 0, !dbg !2144
  %484 = icmp eq i8 %156, 0, !dbg !2145
  %485 = and i1 %484, %483, !dbg !2146
  br i1 %485, label %526, label %488, !dbg !2146

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2145
  br i1 %487, label %526, label %488, !dbg !2147

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2148
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1765
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1782
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2139
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1786
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1787
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1857
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1857
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %496, metadata !1734, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %495, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %494, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %493, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %492, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %491, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %490, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %489, metadata !1716, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1762), !dbg !2149
  br i1 %109, label %498, label %629, !dbg !2150

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1857
  %499 = and i8 %493, 1, !dbg !2152
  %500 = icmp eq i8 %499, 0, !dbg !2152
  %501 = and i1 %110, %500, !dbg !2152
  br i1 %501, label %502, label %518, !dbg !2152

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2154
  br i1 %503, label %504, label %506, !dbg !2158

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2154
  store i8 39, i8* %505, align 1, !dbg !2154, !tbaa !1296
  br label %506, !dbg !2154

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %507, metadata !1717, metadata !DIExpression()), !dbg !1765
  %508 = icmp ult i64 %507, %497, !dbg !2159
  br i1 %508, label %509, label %511, !dbg !2162

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2159
  store i8 36, i8* %510, align 1, !dbg !2159, !tbaa !1296
  br label %511, !dbg !2159

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %512, metadata !1717, metadata !DIExpression()), !dbg !1765
  %513 = icmp ult i64 %512, %497, !dbg !2163
  br i1 %513, label %514, label %516, !dbg !2166

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2163
  store i8 39, i8* %515, align 1, !dbg !2163, !tbaa !1296
  br label %516, !dbg !2163

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %517, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %518, !dbg !2167

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1857
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %520, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %519, metadata !1717, metadata !DIExpression()), !dbg !1765
  %521 = icmp ult i64 %519, %497, !dbg !2168
  br i1 %521, label %522, label %524, !dbg !2171

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2168
  store i8 92, i8* %523, align 1, !dbg !2168, !tbaa !1296
  br label %524, !dbg !2168

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %525, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %536, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %535, metadata !1734, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %534, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %533, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %532, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %531, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %530, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %529, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %528, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %527, metadata !1716, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1763), !dbg !2172
  br label %553, !dbg !2173

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2148
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1765
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1782
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2139
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1786
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1787
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2176
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1857
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1857
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %535, metadata !1734, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %534, metadata !1733, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %533, metadata !1727, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %532, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %531, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %530, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %529, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %528, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %527, metadata !1716, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1763), !dbg !2172
  %537 = and i8 %531, 1, !dbg !2173
  %538 = icmp ne i8 %537, 0, !dbg !2173
  %539 = and i8 %534, 1, !dbg !2173
  %540 = icmp eq i8 %539, 0, !dbg !2173
  %541 = and i1 %538, %540, !dbg !2173
  br i1 %541, label %542, label %553, !dbg !2173

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2177
  br i1 %543, label %544, label %546, !dbg !2181

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2177
  store i8 39, i8* %545, align 1, !dbg !2177, !tbaa !1296
  br label %546, !dbg !2177

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %547, metadata !1717, metadata !DIExpression()), !dbg !1765
  %548 = icmp ult i64 %547, %536, !dbg !2182
  br i1 %548, label %549, label %551, !dbg !2185

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2182
  store i8 39, i8* %550, align 1, !dbg !2182, !tbaa !1296
  br label %551, !dbg !2182

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %552, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1765
  br label %553, !dbg !2186

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1857
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %562, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %561, metadata !1717, metadata !DIExpression()), !dbg !1765
  %563 = icmp ult i64 %561, %554, !dbg !2187
  br i1 %563, label %564, label %566, !dbg !2190

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2187
  store i8 %556, i8* %565, align 1, !dbg !2187, !tbaa !1296
  br label %566, !dbg !2187

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %567, metadata !1717, metadata !DIExpression()), !dbg !1765
  %568 = and i8 %555, 1, !dbg !2191
  %569 = icmp eq i8 %568, 0, !dbg !2191
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2193
  call void @llvm.dbg.value(metadata i8 %570, metadata !1726, metadata !DIExpression()), !dbg !1765
  br label %571, !dbg !2194

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2148
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1765
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1782
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2139
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1786
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1765
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1788
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %578, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %577, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %576, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %575, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %574, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %573, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %572, metadata !1716, metadata !DIExpression()), !dbg !1765
  %580 = add i64 %572, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %580, metadata !1716, metadata !DIExpression()), !dbg !1765
  br label %122, !dbg !2196, !llvm.loop !2197

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %127, metadata !1724, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %128, metadata !1725, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %129, metadata !1726, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  %583 = icmp eq i64 %124, 0, !dbg !2199
  %584 = and i1 %110, %583, !dbg !2201
  %585 = xor i1 %584, true, !dbg !2201
  %586 = or i1 %109, %585, !dbg !2201
  br i1 %586, label %587, label %629, !dbg !2201

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2202
  %589 = xor i1 %588, true, !dbg !2202
  %590 = and i8 %128, 1, !dbg !2204
  %591 = icmp eq i8 %590, 0, !dbg !2204
  %592 = or i1 %591, %589, !dbg !2202
  br i1 %592, label %602, label %593, !dbg !2202

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2205
  %595 = icmp eq i8 %594, 0, !dbg !2205
  br i1 %595, label %598, label %596, !dbg !2208

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %94, metadata !1714, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %95, metadata !1715, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %125, metadata !1718, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %582, metadata !1710, metadata !DIExpression()), !dbg !1765
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2209
  br label %645, !dbg !2210

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2211
  %600 = icmp ne i64 %125, 0, !dbg !2213
  %601 = and i1 %600, %599, !dbg !2214
  br i1 %601, label %26, label %602, !dbg !2214

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %130, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  %603 = icmp ne i8* %97, null, !dbg !2215
  %604 = and i1 %603, %109, !dbg !2217
  br i1 %604, label %605, label %620, !dbg !2217

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %124, metadata !1717, metadata !DIExpression()), !dbg !1765
  %606 = load i8, i8* %97, align 1, !dbg !2218, !tbaa !1296
  %607 = icmp eq i8 %606, 0, !dbg !2221
  br i1 %607, label %620, label %608, !dbg !2221

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1719, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %611, metadata !1717, metadata !DIExpression()), !dbg !1765
  %612 = icmp ult i64 %611, %130, !dbg !2222
  br i1 %612, label %613, label %615, !dbg !2225

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2222
  store i8 %609, i8* %614, align 1, !dbg !2222, !tbaa !1296
  br label %615, !dbg !2222

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %616, metadata !1717, metadata !DIExpression()), !dbg !1765
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %617, metadata !1719, metadata !DIExpression()), !dbg !1765
  %618 = load i8, i8* %617, align 1, !dbg !2218, !tbaa !1296
  %619 = icmp eq i8 %618, 0, !dbg !2221
  br i1 %619, label %620, label %608, !dbg !2221, !llvm.loop !2227

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1819
  call void @llvm.dbg.value(metadata i64 %621, metadata !1717, metadata !DIExpression()), !dbg !1765
  %622 = icmp ult i64 %621, %130, !dbg !2229
  br i1 %622, label %623, label %645, !dbg !2231

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2232
  store i8 0, i8* %624, align 1, !dbg !2233, !tbaa !1296
  br label %645, !dbg !2232

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %630, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1764), !dbg !2234
  %627 = icmp eq i8 %101, 0, !dbg !2235
  %628 = select i1 %627, i32 2, i32 4, !dbg !2235
  br label %635, !dbg !2235

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1708, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %630, metadata !1710, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1764), !dbg !2234
  %632 = icmp eq i32 %93, 2, !dbg !2237
  %633 = icmp eq i8 %101, 0, !dbg !2235
  %634 = select i1 %633, i32 2, i32 4, !dbg !2235
  br i1 %632, label %635, label %639, !dbg !2235

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2235

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1711, metadata !DIExpression()), !dbg !1765
  %643 = and i32 %5, -3, !dbg !2238
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2239
  br label %645, !dbg !2240

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2241
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %1, metadata !2247, metadata !DIExpression()), !dbg !2250
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2251
  call void @llvm.dbg.value(metadata i8* %3, metadata !2248, metadata !DIExpression()), !dbg !2250
  %4 = icmp eq i8* %3, %0, !dbg !2252
  br i1 %4, label %5, label %71, !dbg !2254

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2255
  call void @llvm.dbg.value(metadata i8* %6, metadata !2249, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %6, metadata !2256, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* undef, metadata !2262, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 85, metadata !2263, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 84, metadata !2264, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 70, metadata !2265, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 45, metadata !2266, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 56, metadata !2267, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 0, metadata !2271, metadata !DIExpression()), !dbg !2272
  %7 = load i8, i8* %6, align 1, !dbg !2275, !tbaa !1296
  %8 = and i8 %7, -33, !dbg !2275
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2275

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2277, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* undef, metadata !2282, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 84, metadata !2283, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 70, metadata !2284, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 45, metadata !2285, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 56, metadata !2286, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2287, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2291
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2295
  %11 = load i8, i8* %10, align 1, !dbg !2295, !tbaa !1296
  %12 = and i8 %11, -33, !dbg !2295
  %13 = icmp eq i8 %12, 84, !dbg !2295
  br i1 %13, label %14, label %68, !dbg !2295

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2297, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* undef, metadata !2302, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 70, metadata !2303, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 45, metadata !2304, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 56, metadata !2305, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2310
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2314
  %16 = load i8, i8* %15, align 1, !dbg !2314, !tbaa !1296
  %17 = and i8 %16, -33, !dbg !2314
  %18 = icmp eq i8 %17, 70, !dbg !2314
  br i1 %18, label %19, label %68, !dbg !2314

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2316, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* undef, metadata !2321, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 45, metadata !2322, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 56, metadata !2323, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2328
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2332
  %21 = load i8, i8* %20, align 1, !dbg !2332, !tbaa !1296
  %22 = icmp eq i8 %21, 45, !dbg !2332
  br i1 %22, label %23, label %68, !dbg !2334

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2335, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* undef, metadata !2340, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 56, metadata !2341, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2350
  %25 = load i8, i8* %24, align 1, !dbg !2350, !tbaa !1296
  %26 = icmp eq i8 %25, 56, !dbg !2350
  br i1 %26, label %27, label %68, !dbg !2352

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2353, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* undef, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2367
  %29 = load i8, i8* %28, align 1, !dbg !2367, !tbaa !1296
  %30 = icmp eq i8 %29, 0, !dbg !2367
  br i1 %30, label %31, label %68, !dbg !2369

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2370, !tbaa !1296
  %33 = icmp eq i8 %32, 96, !dbg !2371
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2370
  br label %71, !dbg !2372

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2277, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* undef, metadata !2282, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 66, metadata !2283, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 49, metadata !2284, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 56, metadata !2285, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 48, metadata !2286, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 51, metadata !2287, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 48, metadata !2288, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2373
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2377
  %37 = load i8, i8* %36, align 1, !dbg !2377, !tbaa !1296
  %38 = and i8 %37, -33, !dbg !2377
  %39 = icmp eq i8 %38, 66, !dbg !2377
  br i1 %39, label %40, label %68, !dbg !2377

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2297, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* undef, metadata !2302, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 49, metadata !2303, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 56, metadata !2304, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 48, metadata !2305, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 51, metadata !2306, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 48, metadata !2307, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2378
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2380
  %42 = load i8, i8* %41, align 1, !dbg !2380, !tbaa !1296
  %43 = icmp eq i8 %42, 49, !dbg !2380
  br i1 %43, label %44, label %68, !dbg !2381

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2316, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* undef, metadata !2321, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 56, metadata !2322, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 48, metadata !2323, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 51, metadata !2324, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 48, metadata !2325, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2382
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2384
  %46 = load i8, i8* %45, align 1, !dbg !2384, !tbaa !1296
  %47 = icmp eq i8 %46, 56, !dbg !2384
  br i1 %47, label %48, label %68, !dbg !2385

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2335, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* undef, metadata !2340, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 48, metadata !2341, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 51, metadata !2342, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 48, metadata !2343, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2386
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2388
  %50 = load i8, i8* %49, align 1, !dbg !2388, !tbaa !1296
  %51 = icmp eq i8 %50, 48, !dbg !2388
  br i1 %51, label %52, label %68, !dbg !2389

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2353, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* undef, metadata !2358, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 51, metadata !2359, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 48, metadata !2360, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2390
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2392
  %54 = load i8, i8* %53, align 1, !dbg !2392, !tbaa !1296
  %55 = icmp eq i8 %54, 51, !dbg !2392
  br i1 %55, label %56, label %68, !dbg !2393

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2394, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* undef, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 48, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2402, metadata !DIExpression()), !dbg !2403
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2407
  %58 = load i8, i8* %57, align 1, !dbg !2407, !tbaa !1296
  %59 = icmp eq i8 %58, 48, !dbg !2407
  br i1 %59, label %60, label %68, !dbg !2409

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2410, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* undef, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2418
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2422
  %62 = load i8, i8* %61, align 1, !dbg !2422, !tbaa !1296
  %63 = icmp eq i8 %62, 0, !dbg !2422
  br i1 %63, label %64, label %68, !dbg !2424

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2425, !tbaa !1296
  %66 = icmp eq i8 %65, 96, !dbg !2426
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2425
  br label %71, !dbg !2427

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2428
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2429
  br label %71, !dbg !2430

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2250
  ret i8* %72, !dbg !2431
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #17

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !366 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !370 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* %0, metadata !2440, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %1, metadata !2445, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i64* null, metadata !2446, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2447, metadata !DIExpression()) #10, !dbg !2453
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2455
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2448, metadata !DIExpression()) #10, !dbg !2453
  %6 = tail call i32* @__errno_location() #25, !dbg !2456
  %7 = load i32, i32* %6, align 4, !dbg !2456, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %7, metadata !2449, metadata !DIExpression()) #10, !dbg !2453
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2457
  %9 = load i32, i32* %8, align 4, !dbg !2457, !tbaa !1650
  %10 = or i32 %9, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %10, metadata !2450, metadata !DIExpression()) #10, !dbg !2453
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2459
  %12 = load i32, i32* %11, align 8, !dbg !2459, !tbaa !1599
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2460
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2461
  %15 = load i8*, i8** %14, align 8, !dbg !2461, !tbaa !1673
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2462
  %17 = load i8*, i8** %16, align 8, !dbg !2462, !tbaa !1676
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2463
  %19 = add i64 %18, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %19, metadata !2451, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %19, metadata !2465, metadata !DIExpression()) #10, !dbg !2470
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %20, metadata !2452, metadata !DIExpression()) #10, !dbg !2453
  %21 = load i32, i32* %11, align 8, !dbg !2473, !tbaa !1599
  %22 = load i8*, i8** %14, align 8, !dbg !2474, !tbaa !1673
  %23 = load i8*, i8** %16, align 8, !dbg !2475, !tbaa !1676
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2476
  store i32 %7, i32* %6, align 4, !dbg !2477, !tbaa !1243
  ret i8* %20, !dbg !2478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2440, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2445, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64* %2, metadata !2446, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2447, metadata !DIExpression()), !dbg !2479
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2480
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2448, metadata !DIExpression()), !dbg !2479
  %7 = tail call i32* @__errno_location() #25, !dbg !2481
  %8 = load i32, i32* %7, align 4, !dbg !2481, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %8, metadata !2449, metadata !DIExpression()), !dbg !2479
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2482
  %10 = load i32, i32* %9, align 4, !dbg !2482, !tbaa !1650
  %11 = icmp ne i64* %2, null, !dbg !2483
  %12 = xor i1 %11, true, !dbg !2483
  %13 = zext i1 %12 to i32, !dbg !2483
  %14 = or i32 %10, %13, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %14, metadata !2450, metadata !DIExpression()), !dbg !2479
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2485
  %16 = load i32, i32* %15, align 8, !dbg !2485, !tbaa !1599
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2486
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2487
  %19 = load i8*, i8** %18, align 8, !dbg !2487, !tbaa !1673
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2488
  %21 = load i8*, i8** %20, align 8, !dbg !2488, !tbaa !1676
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2489
  %23 = add i64 %22, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %23, metadata !2451, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %23, metadata !2465, metadata !DIExpression()) #10, !dbg !2491
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %24, metadata !2452, metadata !DIExpression()), !dbg !2479
  %25 = load i32, i32* %15, align 8, !dbg !2494, !tbaa !1599
  %26 = load i8*, i8** %18, align 8, !dbg !2495, !tbaa !1673
  %27 = load i8*, i8** %20, align 8, !dbg !2496, !tbaa !1676
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2497
  store i32 %8, i32* %7, align 4, !dbg !2498, !tbaa !1243
  br i1 %11, label %29, label %30, !dbg !2499

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2500, !tbaa !2502
  br label %30, !dbg !2503

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2505 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2509, !tbaa !1165
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !2508, metadata !DIExpression()), !dbg !2510
  %2 = load i32, i32* @nslots, align 4, !dbg !2511, !tbaa !1243
  %3 = icmp sgt i32 %2, 1, !dbg !2514
  br i1 %3, label %4, label %12, !dbg !2515

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2508, metadata !DIExpression()), !dbg !2510
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2516
  %7 = load i8*, i8** %6, align 8, !dbg !2516, !tbaa !2517
  tail call void @free(i8* %7) #10, !dbg !2519
  %8 = add nuw nsw i64 %5, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %8, metadata !2508, metadata !DIExpression()), !dbg !2510
  %9 = load i32, i32* @nslots, align 4, !dbg !2511, !tbaa !1243
  %10 = sext i32 %9 to i64, !dbg !2514
  %11 = icmp slt i64 %8, %10, !dbg !2514
  br i1 %11, label %4, label %12, !dbg !2515, !llvm.loop !2521

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2523
  %14 = load i8*, i8** %13, align 8, !dbg !2523, !tbaa !2517
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2525
  br i1 %15, label %17, label %16, !dbg !2526

16:                                               ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2527
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2529, !tbaa !2530
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2531, !tbaa !2517
  br label %17, !dbg !2532

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2533
  br i1 %18, label %21, label %19, !dbg !2535

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2536
  tail call void @free(i8* %20) #10, !dbg !2538
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2539, !tbaa !1165
  br label %21, !dbg !2540

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2541, !tbaa !1243
  ret void, !dbg !2542
}

; Function Attrs: nounwind
declare !dbg !343 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2548
  ret i8* %3, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %2, metadata !2556, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2569
  %5 = tail call i32* @__errno_location() #25, !dbg !2570
  %6 = load i32, i32* %5, align 4, !dbg !2570, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %6, metadata !2558, metadata !DIExpression()), !dbg !2569
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2571, !tbaa !1165
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2559, metadata !DIExpression()), !dbg !2569
  %8 = icmp slt i32 %0, 0, !dbg !2572
  br i1 %8, label %9, label %10, !dbg !2574

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2575
  unreachable, !dbg !2575

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2576, !tbaa !1243
  %12 = icmp sgt i32 %11, %0, !dbg !2577
  br i1 %12, label %34, label %13, !dbg !2578

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2579
  call void @llvm.dbg.value(metadata i1 %14, metadata !2560, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2563, metadata !DIExpression()), !dbg !2580
  %15 = icmp eq i32 %0, 2147483647, !dbg !2581
  br i1 %15, label %16, label %17, !dbg !2583

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2584
  unreachable, !dbg !2584

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2585
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2585
  %20 = add nuw nsw i32 %0, 1, !dbg !2586
  %21 = sext i32 %20 to i64, !dbg !2587
  %22 = shl nuw nsw i64 %21, 4, !dbg !2588
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2589
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2559, metadata !DIExpression()), !dbg !2569
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2590, !tbaa !1165
  br i1 %14, label %25, label %26, !dbg !2591

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2592, !tbaa.struct !2594
  br label %26, !dbg !2595

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2596, !tbaa !1243
  %28 = sext i32 %27 to i64, !dbg !2597
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2597
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2598
  %31 = sub nsw i32 %20, %27, !dbg !2599
  %32 = sext i32 %31 to i64, !dbg !2600
  %33 = shl nsw i64 %32, 4, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %30, metadata !1998, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i32 0, metadata !2004, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %33, metadata !2005, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #10, !dbg !2604
  store i32 %20, i32* @nslots, align 4, !dbg !2605, !tbaa !1243
  br label %34, !dbg !2606

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2569
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2559, metadata !DIExpression()), !dbg !2569
  %36 = zext i32 %0 to i64, !dbg !2607
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2608
  %38 = load i64, i64* %37, align 8, !dbg !2608, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %38, metadata !2564, metadata !DIExpression()), !dbg !2609
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2610
  %40 = load i8*, i8** %39, align 8, !dbg !2610, !tbaa !2517
  call void @llvm.dbg.value(metadata i8* %40, metadata !2566, metadata !DIExpression()), !dbg !2609
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2611
  %42 = load i32, i32* %41, align 4, !dbg !2611, !tbaa !1650
  %43 = or i32 %42, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %43, metadata !2567, metadata !DIExpression()), !dbg !2609
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2613
  %45 = load i32, i32* %44, align 8, !dbg !2613, !tbaa !1599
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2614
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2615
  %48 = load i8*, i8** %47, align 8, !dbg !2615, !tbaa !1673
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2616
  %50 = load i8*, i8** %49, align 8, !dbg !2616, !tbaa !1676
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %51, metadata !2568, metadata !DIExpression()), !dbg !2609
  %52 = icmp ugt i64 %38, %51, !dbg !2618
  br i1 %52, label %63, label %53, !dbg !2620

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %54, metadata !2564, metadata !DIExpression()), !dbg !2609
  store i64 %54, i64* %37, align 8, !dbg !2623, !tbaa !2530
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2624
  br i1 %55, label %57, label %56, !dbg !2626

56:                                               ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2627
  br label %57, !dbg !2627

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2465, metadata !DIExpression()) #10, !dbg !2628
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %58, metadata !2566, metadata !DIExpression()), !dbg !2609
  store i8* %58, i8** %39, align 8, !dbg !2631, !tbaa !2517
  %59 = load i32, i32* %44, align 8, !dbg !2632, !tbaa !1599
  %60 = load i8*, i8** %47, align 8, !dbg !2633, !tbaa !1673
  %61 = load i8*, i8** %49, align 8, !dbg !2634, !tbaa !1676
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2635
  br label %63, !dbg !2636

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2609
  call void @llvm.dbg.value(metadata i8* %64, metadata !2566, metadata !DIExpression()), !dbg !2609
  store i32 %6, i32* %5, align 4, !dbg !2637, !tbaa !1243
  ret i8* %64, !dbg !2638
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %1, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()), !dbg !2646
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2647
  ret i8* %4, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()) #10, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()) #10, !dbg !2653
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2655
  ret i8* %2, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2644, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2645, metadata !DIExpression()) #10, !dbg !2664
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2666
  ret i8* %3, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2668 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %2, metadata !2674, metadata !DIExpression()), !dbg !2676
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2677
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2675, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1, metadata !2679, metadata !DIExpression()) #10, !dbg !2685
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2684, metadata !DIExpression()) #10, !dbg !2687
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #10, !dbg !2687, !alias.scope !2688
  %6 = icmp eq i32 %1, 10, !dbg !2691
  br i1 %6, label %7, label %8, !dbg !2693

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2694, !noalias !2688
  unreachable, !dbg !2694

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2695
  store i32 %1, i32* %9, align 8, !dbg !2696, !tbaa !1599, !alias.scope !2688
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2697
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2698
  ret i8* %10, !dbg !2699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2700 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %1, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %3, metadata !2707, metadata !DIExpression()), !dbg !2709
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %1, metadata !2679, metadata !DIExpression()) #10, !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2684, metadata !DIExpression()) #10, !dbg !2714
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #10, !dbg !2714, !alias.scope !2715
  %7 = icmp eq i32 %1, 10, !dbg !2718
  br i1 %7, label %8, label %9, !dbg !2719

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2720, !noalias !2715
  unreachable, !dbg !2720

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2721
  store i32 %1, i32* %10, align 8, !dbg !2722, !tbaa !1599, !alias.scope !2715
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2724
  ret i8* %11, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2726 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2684, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2675, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2729, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()) #10, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %0, metadata !2673, metadata !DIExpression()) #10, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2674, metadata !DIExpression()) #10, !dbg !2735
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()) #10, !dbg !2737
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #10, !dbg !2730, !alias.scope !2738
  %5 = icmp eq i32 %0, 10, !dbg !2741
  br i1 %5, label %6, label %7, !dbg !2742

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2743, !noalias !2738
  unreachable, !dbg !2743

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2744
  store i32 %0, i32* %8, align 8, !dbg !2745, !tbaa !1599, !alias.scope !2738
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2746
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2747
  ret i8* %9, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2749 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2684, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2708, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %2, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2704, metadata !DIExpression()) #10, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()) #10, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2706, metadata !DIExpression()) #10, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %2, metadata !2707, metadata !DIExpression()) #10, !dbg !2761
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()) #10, !dbg !2763
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #10, !dbg !2756, !alias.scope !2764
  %6 = icmp eq i32 %0, 10, !dbg !2767
  br i1 %6, label %7, label %8, !dbg !2768

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2769, !noalias !2764
  unreachable, !dbg !2769

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2770
  store i32 %0, i32* %9, align 8, !dbg !2771, !tbaa !1599, !alias.scope !2764
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2772
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2773
  ret i8* %10, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2775 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8 %2, metadata !2781, metadata !DIExpression()), !dbg !2783
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2784
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2784
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2786, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1617, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %2, metadata !1618, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %2, metadata !1620, metadata !DIExpression()), !dbg !2788
  %6 = lshr i8 %2, 5, !dbg !2790
  %7 = zext i8 %6 to i64, !dbg !2790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2791
  call void @llvm.dbg.value(metadata i32* %8, metadata !1621, metadata !DIExpression()), !dbg !2788
  %9 = and i8 %2, 31, !dbg !2792
  %10 = zext i8 %9 to i32, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %10, metadata !1623, metadata !DIExpression()), !dbg !2788
  %11 = load i32, i32* %8, align 4, !dbg !2793, !tbaa !1243
  %12 = lshr i32 %11, %10, !dbg !2794
  %13 = and i32 %12, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %13, metadata !1624, metadata !DIExpression()), !dbg !2788
  %14 = xor i32 %13, 1, !dbg !2796
  %15 = shl i32 %14, %10, !dbg !2797
  %16 = xor i32 %15, %11, !dbg !2798
  store i32 %16, i32* %8, align 4, !dbg !2798, !tbaa !1243
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2799
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2800
  ret i8* %17, !dbg !2801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2802 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2782, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %1, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #10, !dbg !2811
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #10, !dbg !2811
  call void @llvm.dbg.value(metadata i8 %1, metadata !2781, metadata !DIExpression()) #10, !dbg !2811
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2813, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1617, metadata !DIExpression()) #10, !dbg !2814
  call void @llvm.dbg.value(metadata i8 %1, metadata !1618, metadata !DIExpression()) #10, !dbg !2814
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()) #10, !dbg !2814
  call void @llvm.dbg.value(metadata i8 %1, metadata !1620, metadata !DIExpression()) #10, !dbg !2814
  %5 = lshr i8 %1, 5, !dbg !2816
  %6 = zext i8 %5 to i64, !dbg !2816
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2817
  call void @llvm.dbg.value(metadata i32* %7, metadata !1621, metadata !DIExpression()) #10, !dbg !2814
  %8 = and i8 %1, 31, !dbg !2818
  %9 = zext i8 %8 to i32, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1623, metadata !DIExpression()) #10, !dbg !2814
  %10 = load i32, i32* %7, align 4, !dbg !2819, !tbaa !1243
  %11 = lshr i32 %10, %9, !dbg !2820
  %12 = and i32 %11, 1, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %12, metadata !1624, metadata !DIExpression()) #10, !dbg !2814
  %13 = xor i32 %12, 1, !dbg !2822
  %14 = shl i32 %13, %9, !dbg !2823
  %15 = xor i32 %14, %10, !dbg !2824
  store i32 %15, i32* %7, align 4, !dbg !2824, !tbaa !1243
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2825
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2826
  ret i8* %16, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2828 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2782, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()) #10, !dbg !2835
  call void @llvm.dbg.value(metadata i8 58, metadata !2807, metadata !DIExpression()) #10, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #10, !dbg !2836
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #10, !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()) #10, !dbg !2836
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2837
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2838, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1617, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()) #10, !dbg !2839
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2841
  call void @llvm.dbg.value(metadata i32* %4, metadata !1621, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()) #10, !dbg !2839
  %5 = load i32, i32* %4, align 4, !dbg !2842, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %5, metadata !1624, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #10, !dbg !2839
  %6 = or i32 %5, 67108864, !dbg !2843
  store i32 %6, i32* %4, align 4, !dbg !2843, !tbaa !1243
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2845
  ret i8* %7, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2847 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2782, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %1, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #10, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()) #10, !dbg !2854
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()) #10, !dbg !2854
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2856, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1617, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()) #10, !dbg !2857
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2859
  call void @llvm.dbg.value(metadata i32* %5, metadata !1621, metadata !DIExpression()) #10, !dbg !2857
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()) #10, !dbg !2857
  %6 = load i32, i32* %5, align 4, !dbg !2860, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %6, metadata !1624, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #10, !dbg !2857
  %7 = or i32 %6, 67108864, !dbg !2861
  store i32 %7, i32* %5, align 4, !dbg !2861, !tbaa !1243
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2863
  ret i8* %8, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2865 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2684, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !2869, metadata !DIExpression()), !dbg !2873
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2874
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2870, metadata !DIExpression()), !dbg !2875
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %1, metadata !2679, metadata !DIExpression()) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i32 0, metadata !2684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2877
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2871, !alias.scope !2878
  %8 = icmp eq i32 %1, 10, !dbg !2881
  br i1 %8, label %9, label %10, !dbg !2882

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2883, !noalias !2878
  unreachable, !dbg !2883

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2877
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2876
  store i32 %1, i32* %11, align 8, !dbg !2876, !tbaa.struct !2787
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2876
  %13 = bitcast i32* %12 to i8*, !dbg !2876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2876, !tbaa.struct !2787
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1617, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1618, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1620, metadata !DIExpression()), !dbg !2884
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2886
  call void @llvm.dbg.value(metadata i32* %14, metadata !1621, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 26, metadata !1623, metadata !DIExpression()), !dbg !2884
  %15 = load i32, i32* %14, align 4, !dbg !2887, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %15, metadata !1624, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2884
  %16 = or i32 %15, 67108864, !dbg !2888
  store i32 %16, i32* %14, align 4, !dbg !2888, !tbaa !1243
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2890
  ret i8* %17, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2892 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2900, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %0, metadata !2896, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !2897, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %3, metadata !2899, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #10, !dbg !2913
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2915, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1657, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !1658, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %2, metadata !1659, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1657, metadata !DIExpression()) #10, !dbg !2916
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2918
  store i32 10, i32* %7, align 8, !dbg !2919, !tbaa !1599
  %8 = icmp ne i8* %1, null, !dbg !2920
  %9 = icmp ne i8* %2, null, !dbg !2921
  %10 = and i1 %8, %9, !dbg !2922
  br i1 %10, label %12, label %11, !dbg !2922

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2923
  unreachable, !dbg !2923

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2924
  store i8* %1, i8** %13, align 8, !dbg !2925, !tbaa !1673
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2926
  store i8* %2, i8** %14, align 8, !dbg !2927, !tbaa !1676
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2928
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2929
  ret i8* %15, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2901 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %4, metadata !2909, metadata !DIExpression()), !dbg !2931
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2932
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2900, metadata !DIExpression()), !dbg !2933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2934, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1657, metadata !DIExpression()) #10, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %1, metadata !1658, metadata !DIExpression()) #10, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %2, metadata !1659, metadata !DIExpression()) #10, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1657, metadata !DIExpression()) #10, !dbg !2935
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2937
  store i32 10, i32* %8, align 8, !dbg !2938, !tbaa !1599
  %9 = icmp ne i8* %1, null, !dbg !2939
  %10 = icmp ne i8* %2, null, !dbg !2940
  %11 = and i1 %9, %10, !dbg !2941
  br i1 %11, label %13, label %12, !dbg !2941

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2942
  unreachable, !dbg !2942

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2943
  store i8* %1, i8** %14, align 8, !dbg !2944, !tbaa !1673
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2945
  store i8* %2, i8** %15, align 8, !dbg !2946, !tbaa !1676
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2948
  ret i8* %16, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2900, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2955, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %2, metadata !2956, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2896, metadata !DIExpression()) #10, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()) #10, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2898, metadata !DIExpression()) #10, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %2, metadata !2899, metadata !DIExpression()) #10, !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #10, !dbg !2962
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2964, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1657, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !1658, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1657, metadata !DIExpression()) #10, !dbg !2965
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2967
  store i32 10, i32* %6, align 8, !dbg !2968, !tbaa !1599
  %7 = icmp ne i8* %0, null, !dbg !2969
  %8 = icmp ne i8* %1, null, !dbg !2970
  %9 = and i1 %7, %8, !dbg !2971
  br i1 %9, label %11, label %10, !dbg !2971

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2972
  unreachable, !dbg !2972

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2973
  store i8* %0, i8** %12, align 8, !dbg !2974, !tbaa !1673
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2975
  store i8* %1, i8** %13, align 8, !dbg !2976, !tbaa !1676
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2978
  ret i8* %14, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2980 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2900, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2985, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #10, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %3, metadata !2909, metadata !DIExpression()) #10, !dbg !2991
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2993, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1657, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %0, metadata !1658, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1657, metadata !DIExpression()) #10, !dbg !2994
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2996
  store i32 10, i32* %7, align 8, !dbg !2997, !tbaa !1599
  %8 = icmp ne i8* %0, null, !dbg !2998
  %9 = icmp ne i8* %1, null, !dbg !2999
  %10 = and i1 %8, %9, !dbg !3000
  br i1 %10, label %12, label %11, !dbg !3000

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3001
  unreachable, !dbg !3001

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3002
  store i8* %0, i8** %13, align 8, !dbg !3003, !tbaa !1673
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3004
  store i8* %1, i8** %14, align 8, !dbg !3005, !tbaa !1676
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3007
  ret i8* %15, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !3015, metadata !DIExpression()), !dbg !3016
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3017
  ret i8* %4, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #10, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #10, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()) #10, !dbg !3026
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3028
  ret i8* %3, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %1, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #10, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()) #10, !dbg !3037
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #10, !dbg !3037
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3039
  ret i8* %3, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()) #10, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #10, !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #10, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #10, !dbg !3049
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #10, !dbg !3049
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3051
  ret i8* %2, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3053 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3060, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %2, metadata !3062, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %3, metadata !3063, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8** %4, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %5, metadata !3065, metadata !DIExpression()), !dbg !3066
  %7 = icmp eq i8* %1, null, !dbg !3067
  br i1 %7, label %10, label %8, !dbg !3069

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3070
  br label %12, !dbg !3070

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.80, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3071
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i32 5) #10, !dbg !3072
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #10, !dbg !3072
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3073
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.83, i64 0, i64 0), i32 5) #10, !dbg !3074
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.84, i64 0, i64 0)) #10, !dbg !3074
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3075
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
  ], !dbg !3076

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.85, i64 0, i64 0), i32 5) #10, !dbg !3077
  %21 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !1165
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #10, !dbg !3077
  br label %147, !dbg !3079

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.86, i64 0, i64 0), i32 5) #10, !dbg !3080
  %25 = load i8*, i8** %4, align 8, !dbg !3080, !tbaa !1165
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3080
  %27 = load i8*, i8** %26, align 8, !dbg !3080, !tbaa !1165
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #10, !dbg !3080
  br label %147, !dbg !3081

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.87, i64 0, i64 0), i32 5) #10, !dbg !3082
  %31 = load i8*, i8** %4, align 8, !dbg !3082, !tbaa !1165
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3082
  %33 = load i8*, i8** %32, align 8, !dbg !3082, !tbaa !1165
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3082
  %35 = load i8*, i8** %34, align 8, !dbg !3082, !tbaa !1165
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #10, !dbg !3082
  br label %147, !dbg !3083

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.88, i64 0, i64 0), i32 5) #10, !dbg !3084
  %39 = load i8*, i8** %4, align 8, !dbg !3084, !tbaa !1165
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3084
  %41 = load i8*, i8** %40, align 8, !dbg !3084, !tbaa !1165
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3084
  %43 = load i8*, i8** %42, align 8, !dbg !3084, !tbaa !1165
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3084
  %45 = load i8*, i8** %44, align 8, !dbg !3084, !tbaa !1165
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #10, !dbg !3084
  br label %147, !dbg !3085

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.89, i64 0, i64 0), i32 5) #10, !dbg !3086
  %49 = load i8*, i8** %4, align 8, !dbg !3086, !tbaa !1165
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3086
  %51 = load i8*, i8** %50, align 8, !dbg !3086, !tbaa !1165
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3086
  %53 = load i8*, i8** %52, align 8, !dbg !3086, !tbaa !1165
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3086
  %55 = load i8*, i8** %54, align 8, !dbg !3086, !tbaa !1165
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3086
  %57 = load i8*, i8** %56, align 8, !dbg !3086, !tbaa !1165
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #10, !dbg !3086
  br label %147, !dbg !3087

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.90, i64 0, i64 0), i32 5) #10, !dbg !3088
  %61 = load i8*, i8** %4, align 8, !dbg !3088, !tbaa !1165
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3088
  %63 = load i8*, i8** %62, align 8, !dbg !3088, !tbaa !1165
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3088
  %65 = load i8*, i8** %64, align 8, !dbg !3088, !tbaa !1165
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3088
  %67 = load i8*, i8** %66, align 8, !dbg !3088, !tbaa !1165
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3088
  %69 = load i8*, i8** %68, align 8, !dbg !3088, !tbaa !1165
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3088
  %71 = load i8*, i8** %70, align 8, !dbg !3088, !tbaa !1165
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #10, !dbg !3088
  br label %147, !dbg !3089

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.91, i64 0, i64 0), i32 5) #10, !dbg !3090
  %75 = load i8*, i8** %4, align 8, !dbg !3090, !tbaa !1165
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3090
  %77 = load i8*, i8** %76, align 8, !dbg !3090, !tbaa !1165
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3090
  %79 = load i8*, i8** %78, align 8, !dbg !3090, !tbaa !1165
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3090
  %81 = load i8*, i8** %80, align 8, !dbg !3090, !tbaa !1165
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3090
  %83 = load i8*, i8** %82, align 8, !dbg !3090, !tbaa !1165
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3090
  %85 = load i8*, i8** %84, align 8, !dbg !3090, !tbaa !1165
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3090
  %87 = load i8*, i8** %86, align 8, !dbg !3090, !tbaa !1165
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #10, !dbg !3090
  br label %147, !dbg !3091

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.92, i64 0, i64 0), i32 5) #10, !dbg !3092
  %91 = load i8*, i8** %4, align 8, !dbg !3092, !tbaa !1165
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3092
  %93 = load i8*, i8** %92, align 8, !dbg !3092, !tbaa !1165
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3092
  %95 = load i8*, i8** %94, align 8, !dbg !3092, !tbaa !1165
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3092
  %97 = load i8*, i8** %96, align 8, !dbg !3092, !tbaa !1165
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3092
  %99 = load i8*, i8** %98, align 8, !dbg !3092, !tbaa !1165
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3092
  %101 = load i8*, i8** %100, align 8, !dbg !3092, !tbaa !1165
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3092
  %103 = load i8*, i8** %102, align 8, !dbg !3092, !tbaa !1165
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3092
  %105 = load i8*, i8** %104, align 8, !dbg !3092, !tbaa !1165
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #10, !dbg !3092
  br label %147, !dbg !3093

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.93, i64 0, i64 0), i32 5) #10, !dbg !3094
  %109 = load i8*, i8** %4, align 8, !dbg !3094, !tbaa !1165
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3094
  %111 = load i8*, i8** %110, align 8, !dbg !3094, !tbaa !1165
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3094
  %113 = load i8*, i8** %112, align 8, !dbg !3094, !tbaa !1165
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3094
  %115 = load i8*, i8** %114, align 8, !dbg !3094, !tbaa !1165
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3094
  %117 = load i8*, i8** %116, align 8, !dbg !3094, !tbaa !1165
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3094
  %119 = load i8*, i8** %118, align 8, !dbg !3094, !tbaa !1165
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3094
  %121 = load i8*, i8** %120, align 8, !dbg !3094, !tbaa !1165
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3094
  %123 = load i8*, i8** %122, align 8, !dbg !3094, !tbaa !1165
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3094
  %125 = load i8*, i8** %124, align 8, !dbg !3094, !tbaa !1165
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #10, !dbg !3094
  br label %147, !dbg !3095

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.94, i64 0, i64 0), i32 5) #10, !dbg !3096
  %129 = load i8*, i8** %4, align 8, !dbg !3096, !tbaa !1165
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3096
  %131 = load i8*, i8** %130, align 8, !dbg !3096, !tbaa !1165
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3096
  %133 = load i8*, i8** %132, align 8, !dbg !3096, !tbaa !1165
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3096
  %135 = load i8*, i8** %134, align 8, !dbg !3096, !tbaa !1165
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3096
  %137 = load i8*, i8** %136, align 8, !dbg !3096, !tbaa !1165
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3096
  %139 = load i8*, i8** %138, align 8, !dbg !3096, !tbaa !1165
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3096
  %141 = load i8*, i8** %140, align 8, !dbg !3096, !tbaa !1165
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3096
  %143 = load i8*, i8** %142, align 8, !dbg !3096, !tbaa !1165
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3096
  %145 = load i8*, i8** %144, align 8, !dbg !3096, !tbaa !1165
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #10, !dbg !3096
  br label %147, !dbg !3097

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3098
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3099 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3103, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3104, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %3, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8** %4, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 0, metadata !3108, metadata !DIExpression()), !dbg !3109
  br label %6, !dbg !3110

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3112
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3113
  %9 = load i8*, i8** %8, align 8, !dbg !3113, !tbaa !1165
  %10 = icmp eq i8* %9, null, !dbg !3115
  %11 = add i64 %7, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %11, metadata !3108, metadata !DIExpression()), !dbg !3109
  br i1 %10, label %12, label %6, !dbg !3115, !llvm.loop !3117

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3108, metadata !DIExpression()), !dbg !3109
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3119
  ret void, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3121 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3132, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3133, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3134, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %3, metadata !3135, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3136, metadata !DIExpression()), !dbg !3140
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3141
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3138, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 0, metadata !3137, metadata !DIExpression()), !dbg !3140
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3143
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3143
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3143
  %11 = load i32, i32* %8, align 8, !dbg !3146
  %12 = icmp ult i32 %11, 41, !dbg !3146
  br i1 %12, label %13, label %18, !dbg !3146

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3146
  %15 = zext i32 %11 to i64, !dbg !3146
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3146
  %17 = add nuw nsw i32 %11, 8, !dbg !3146
  store i32 %17, i32* %8, align 8, !dbg !3146
  br label %21, !dbg !3146

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3146
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3146
  store i8* %20, i8** %9, align 8, !dbg !3146
  br label %21, !dbg !3146

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3146
  %25 = load i8*, i8** %24, align 8, !dbg !3146
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3147
  store i8* %25, i8** %26, align 16, !dbg !3148, !tbaa !1165
  %27 = icmp eq i8* %25, null, !dbg !3149
  br i1 %27, label %30, label %28, !dbg !3150

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3137, metadata !DIExpression()), !dbg !3140
  %29 = icmp ult i32 %22, 41, !dbg !3146
  br i1 %29, label %35, label %32, !dbg !3146

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3151
  call void @llvm.dbg.value(metadata i64 %31, metadata !3137, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %31, metadata !3137, metadata !DIExpression()), !dbg !3140
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3153
  ret void, !dbg !3153

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3146
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3146
  store i8* %34, i8** %9, align 8, !dbg !3146
  br label %40, !dbg !3146

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3146
  %37 = zext i32 %22 to i64, !dbg !3146
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3146
  %39 = add nuw nsw i32 %22, 8, !dbg !3146
  store i32 %39, i32* %8, align 8, !dbg !3146
  br label %40, !dbg !3146

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3146
  %44 = load i8*, i8** %43, align 8, !dbg !3146
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3147
  store i8* %44, i8** %45, align 8, !dbg !3148, !tbaa !1165
  %46 = icmp eq i8* %44, null, !dbg !3149
  br i1 %46, label %30, label %47, !dbg !3150

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3137, metadata !DIExpression()), !dbg !3140
  %48 = icmp ult i32 %41, 41, !dbg !3146
  br i1 %48, label %52, label %49, !dbg !3146

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3146
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3146
  store i8* %51, i8** %9, align 8, !dbg !3146
  br label %57, !dbg !3146

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3146
  %54 = zext i32 %41 to i64, !dbg !3146
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3146
  %56 = add nuw nsw i32 %41, 8, !dbg !3146
  store i32 %56, i32* %8, align 8, !dbg !3146
  br label %57, !dbg !3146

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3146
  %61 = load i8*, i8** %60, align 8, !dbg !3146
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3147
  store i8* %61, i8** %62, align 16, !dbg !3148, !tbaa !1165
  %63 = icmp eq i8* %61, null, !dbg !3149
  br i1 %63, label %30, label %64, !dbg !3150

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3137, metadata !DIExpression()), !dbg !3140
  %65 = icmp ult i32 %58, 41, !dbg !3146
  br i1 %65, label %69, label %66, !dbg !3146

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3146
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3146
  store i8* %68, i8** %9, align 8, !dbg !3146
  br label %74, !dbg !3146

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3146
  %71 = zext i32 %58 to i64, !dbg !3146
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3146
  %73 = add nuw nsw i32 %58, 8, !dbg !3146
  store i32 %73, i32* %8, align 8, !dbg !3146
  br label %74, !dbg !3146

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3146
  %78 = load i8*, i8** %77, align 8, !dbg !3146
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3147
  store i8* %78, i8** %79, align 8, !dbg !3148, !tbaa !1165
  %80 = icmp eq i8* %78, null, !dbg !3149
  br i1 %80, label %30, label %81, !dbg !3150

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3137, metadata !DIExpression()), !dbg !3140
  %82 = icmp ult i32 %75, 41, !dbg !3146
  br i1 %82, label %86, label %83, !dbg !3146

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3146
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3146
  store i8* %85, i8** %9, align 8, !dbg !3146
  br label %91, !dbg !3146

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3146
  %88 = zext i32 %75 to i64, !dbg !3146
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3146
  %90 = add nuw nsw i32 %75, 8, !dbg !3146
  store i32 %90, i32* %8, align 8, !dbg !3146
  br label %91, !dbg !3146

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3146
  %95 = load i8*, i8** %94, align 8, !dbg !3146
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3147
  store i8* %95, i8** %96, align 16, !dbg !3148, !tbaa !1165
  %97 = icmp eq i8* %95, null, !dbg !3149
  br i1 %97, label %30, label %98, !dbg !3150

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3137, metadata !DIExpression()), !dbg !3140
  %99 = icmp ult i32 %92, 41, !dbg !3146
  br i1 %99, label %103, label %100, !dbg !3146

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3146
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3146
  store i8* %102, i8** %9, align 8, !dbg !3146
  br label %108, !dbg !3146

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3146
  %105 = zext i32 %92 to i64, !dbg !3146
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3146
  %107 = add nuw nsw i32 %92, 8, !dbg !3146
  store i32 %107, i32* %8, align 8, !dbg !3146
  br label %108, !dbg !3146

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3146
  %111 = load i8*, i8** %110, align 8, !dbg !3146
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3147
  store i8* %111, i8** %112, align 8, !dbg !3148, !tbaa !1165
  %113 = icmp eq i8* %111, null, !dbg !3149
  br i1 %113, label %30, label %114, !dbg !3150

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3137, metadata !DIExpression()), !dbg !3140
  %115 = load i8*, i8** %9, align 8, !dbg !3146
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3146
  store i8* %116, i8** %9, align 8, !dbg !3146
  %117 = bitcast i8* %115 to i8**, !dbg !3146
  %118 = load i8*, i8** %117, align 8, !dbg !3146
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3147
  store i8* %118, i8** %119, align 16, !dbg !3148, !tbaa !1165
  %120 = icmp eq i8* %118, null, !dbg !3149
  br i1 %120, label %30, label %121, !dbg !3150

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3137, metadata !DIExpression()), !dbg !3140
  %122 = load i8*, i8** %9, align 8, !dbg !3146
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3146
  store i8* %123, i8** %9, align 8, !dbg !3146
  %124 = bitcast i8* %122 to i8**, !dbg !3146
  %125 = load i8*, i8** %124, align 8, !dbg !3146
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3147
  store i8* %125, i8** %126, align 8, !dbg !3148, !tbaa !1165
  %127 = icmp eq i8* %125, null, !dbg !3149
  br i1 %127, label %30, label %128, !dbg !3150

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3137, metadata !DIExpression()), !dbg !3140
  %129 = load i8*, i8** %9, align 8, !dbg !3146
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3146
  store i8* %130, i8** %9, align 8, !dbg !3146
  %131 = bitcast i8* %129 to i8**, !dbg !3146
  %132 = load i8*, i8** %131, align 8, !dbg !3146
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3147
  store i8* %132, i8** %133, align 16, !dbg !3148, !tbaa !1165
  %134 = icmp eq i8* %132, null, !dbg !3149
  br i1 %134, label %30, label %135, !dbg !3150

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3137, metadata !DIExpression()), !dbg !3140
  %136 = load i8*, i8** %9, align 8, !dbg !3146
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3146
  store i8* %137, i8** %9, align 8, !dbg !3146
  %138 = bitcast i8* %136 to i8**, !dbg !3146
  %139 = load i8*, i8** %138, align 8, !dbg !3146
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3147
  store i8* %139, i8** %140, align 8, !dbg !3148, !tbaa !1165
  %141 = icmp eq i8* %139, null, !dbg !3149
  %142 = select i1 %141, i64 9, i64 10, !dbg !3150
  br label %30, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3154 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3158, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %1, metadata !3159, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %3, metadata !3161, metadata !DIExpression()), !dbg !3167
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3168
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3162, metadata !DIExpression()), !dbg !3169
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3170
  call void @llvm.va_start(i8* nonnull %6), !dbg !3170
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3171
  call void @llvm.va_end(i8* nonnull %6), !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3173
  ret void, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3174 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3175, !tbaa !1165
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3175
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.97, i64 0, i64 0), i32 5) #10, !dbg !3176
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.98, i64 0, i64 0)) #10, !dbg !3176
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.99, i64 0, i64 0), i32 5) #10, !dbg !3177
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.100, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.101, i64 0, i64 0)) #10, !dbg !3177
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.102, i64 0, i64 0), i32 5) #10, !dbg !3178
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.103, i64 0, i64 0)) #10, !dbg !3178
  ret void, !dbg !3179
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  %3 = udiv i64 9223372036854775807, %1, !dbg !3187
  %4 = icmp ult i64 %3, %0, !dbg !3187
  br i1 %4, label %5, label %6, !dbg !3189

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3190
  unreachable, !dbg !3190

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %7, metadata !3192, metadata !DIExpression()) #10, !dbg !3198
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %8, metadata !3197, metadata !DIExpression()) #10, !dbg !3198
  %9 = icmp eq i8* %8, null, !dbg !3201
  %10 = icmp ne i64 %7, 0, !dbg !3203
  %11 = and i1 %10, %9, !dbg !3204
  br i1 %11, label %12, label %13, !dbg !3204

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3205
  unreachable, !dbg !3205

13:                                               ; preds = %6
  ret i8* %8, !dbg !3206
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3193 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3192, metadata !DIExpression()), !dbg !3207
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()), !dbg !3207
  %3 = icmp eq i8* %2, null, !dbg !3209
  %4 = icmp ne i64 %0, 0, !dbg !3210
  %5 = and i1 %4, %3, !dbg !3211
  br i1 %5, label %6, label %7, !dbg !3211

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3212
  unreachable, !dbg !3212

7:                                                ; preds = %1
  ret i8* %2, !dbg !3213
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %2, metadata !3220, metadata !DIExpression()), !dbg !3221
  %4 = udiv i64 9223372036854775807, %2, !dbg !3222
  %5 = icmp ult i64 %4, %1, !dbg !3222
  br i1 %5, label %6, label %7, !dbg !3224

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3225
  unreachable, !dbg !3225

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #10, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %8, metadata !3232, metadata !DIExpression()) #10, !dbg !3233
  %9 = icmp eq i64 %8, 0, !dbg !3235
  %10 = icmp ne i8* %0, null, !dbg !3237
  %11 = and i1 %10, %9, !dbg !3238
  br i1 %11, label %12, label %13, !dbg !3238

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3239
  br label %19, !dbg !3241

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %14, metadata !3227, metadata !DIExpression()) #10, !dbg !3233
  %15 = icmp eq i8* %14, null, !dbg !3243
  %16 = icmp ne i64 %8, 0, !dbg !3245
  %17 = and i1 %16, %15, !dbg !3246
  br i1 %17, label %18, label %19, !dbg !3246

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3247
  unreachable, !dbg !3247

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3233
  ret i8* %20, !dbg !3248
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3232, metadata !DIExpression()), !dbg !3249
  %3 = icmp eq i64 %1, 0, !dbg !3250
  %4 = icmp ne i8* %0, null, !dbg !3251
  %5 = and i1 %4, %3, !dbg !3252
  br i1 %5, label %6, label %7, !dbg !3252

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3253
  br label %13, !dbg !3254

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %8, metadata !3227, metadata !DIExpression()), !dbg !3249
  %9 = icmp eq i8* %8, null, !dbg !3256
  %10 = icmp ne i64 %1, 0, !dbg !3257
  %11 = and i1 %10, %9, !dbg !3258
  br i1 %11, label %12, label %13, !dbg !3258

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3259
  unreachable, !dbg !3259

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3249
  ret i8* %14, !dbg !3260
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !523, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64* %1, metadata !524, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %2, metadata !525, metadata !DIExpression()), !dbg !3261
  %4 = load i64, i64* %1, align 8, !dbg !3262, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %4, metadata !526, metadata !DIExpression()), !dbg !3261
  %5 = icmp eq i8* %0, null, !dbg !3263
  br i1 %5, label %6, label %20, !dbg !3265

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3266
  br i1 %7, label %8, label %13, !dbg !3269

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %9, metadata !526, metadata !DIExpression()), !dbg !3261
  %10 = icmp ugt i64 %2, 128, !dbg !3272
  %11 = zext i1 %10 to i64, !dbg !3272
  %12 = add nuw nsw i64 %9, %11, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %12, metadata !526, metadata !DIExpression()), !dbg !3261
  br label %13, !dbg !3274

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3261
  call void @llvm.dbg.value(metadata i64 %14, metadata !526, metadata !DIExpression()), !dbg !3261
  %15 = udiv i64 9223372036854775807, %2, !dbg !3275
  %16 = icmp ult i64 %15, %14, !dbg !3275
  br i1 %16, label %19, label %17, !dbg !3277

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !526, metadata !DIExpression()), !dbg !3261
  store i64 %14, i64* %1, align 8, !dbg !3278, !tbaa !2502
  %18 = mul i64 %14, %2, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %28, metadata !3232, metadata !DIExpression()) #10, !dbg !3280
  br label %31, !dbg !3282

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3283
  unreachable, !dbg !3283

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3284
  %22 = icmp ugt i64 %21, %4, !dbg !3287
  br i1 %22, label %24, label %23, !dbg !3288

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3289
  unreachable, !dbg !3289

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3290
  %26 = add nuw i64 %4, 1, !dbg !3291
  %27 = add i64 %26, %25, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %27, metadata !526, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %27, metadata !526, metadata !DIExpression()), !dbg !3261
  store i64 %27, i64* %1, align 8, !dbg !3278, !tbaa !2502
  %28 = mul i64 %27, %2, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #10, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %28, metadata !3232, metadata !DIExpression()) #10, !dbg !3280
  %29 = icmp eq i64 %28, 0, !dbg !3293
  br i1 %29, label %30, label %31, !dbg !3282

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3294
  br label %38, !dbg !3295

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %33, metadata !3227, metadata !DIExpression()) #10, !dbg !3280
  %34 = icmp eq i8* %33, null, !dbg !3297
  %35 = icmp ne i64 %32, 0, !dbg !3298
  %36 = and i1 %35, %34, !dbg !3299
  br i1 %36, label %37, label %38, !dbg !3299

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3300
  unreachable, !dbg !3300

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3280
  ret i8* %39, !dbg !3301
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !3302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %0, metadata !3192, metadata !DIExpression()) #10, !dbg !3306
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #10, !dbg !3306
  %3 = icmp eq i8* %2, null, !dbg !3309
  %4 = icmp ne i64 %0, 0, !dbg !3310
  %5 = and i1 %4, %3, !dbg !3311
  br i1 %5, label %6, label %7, !dbg !3311

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3312
  unreachable, !dbg !3312

7:                                                ; preds = %1
  ret i8* %2, !dbg !3313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64* %1, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %0, metadata !523, metadata !DIExpression()) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i64* %1, metadata !524, metadata !DIExpression()) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i64 1, metadata !525, metadata !DIExpression()) #10, !dbg !3321
  %3 = load i64, i64* %1, align 8, !dbg !3323, !tbaa !2502
  call void @llvm.dbg.value(metadata i64 %3, metadata !526, metadata !DIExpression()) #10, !dbg !3321
  %4 = icmp eq i8* %0, null, !dbg !3324
  br i1 %4, label %5, label %12, !dbg !3325

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3326
  br i1 %6, label %9, label %7, !dbg !3327

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !526, metadata !DIExpression()) #10, !dbg !3321
  %8 = icmp slt i64 %3, 0, !dbg !3328
  br i1 %8, label %11, label %9, !dbg !3329

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !526, metadata !DIExpression()) #10, !dbg !3321
  store i64 %10, i64* %1, align 8, !dbg !3330, !tbaa !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #10, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %18, metadata !3232, metadata !DIExpression()) #10, !dbg !3331
  br label %21, !dbg !3333

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3334
  unreachable, !dbg !3334

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3335
  br i1 %13, label %15, label %14, !dbg !3336

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3337
  unreachable, !dbg !3337

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3338
  %17 = add nuw nsw i64 %3, 1, !dbg !3339
  %18 = add nuw nsw i64 %17, %16, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %18, metadata !526, metadata !DIExpression()) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %18, metadata !526, metadata !DIExpression()) #10, !dbg !3321
  store i64 %18, i64* %1, align 8, !dbg !3330, !tbaa !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()) #10, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %18, metadata !3232, metadata !DIExpression()) #10, !dbg !3331
  %19 = icmp eq i64 %18, 0, !dbg !3341
  br i1 %19, label %20, label %21, !dbg !3333

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3342
  br label %28, !dbg !3343

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %23, metadata !3227, metadata !DIExpression()) #10, !dbg !3331
  %24 = icmp eq i8* %23, null, !dbg !3345
  %25 = icmp ne i64 %22, 0, !dbg !3346
  %26 = and i1 %25, %24, !dbg !3347
  br i1 %26, label %27, label %28, !dbg !3347

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3348
  unreachable, !dbg !3348

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3331
  ret i8* %29, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()) #10, !dbg !3359
  call void @llvm.dbg.value(metadata i64 1, metadata !3357, metadata !DIExpression()) #10, !dbg !3359
  %2 = icmp slt i64 %0, 0, !dbg !3361
  br i1 %2, label %6, label %3, !dbg !3363

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #10, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %4, metadata !3358, metadata !DIExpression()) #10, !dbg !3359
  %5 = icmp eq i8* %4, null, !dbg !3365
  br i1 %5, label %6, label %7, !dbg !3366

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3367
  unreachable, !dbg !3367

7:                                                ; preds = %3
  ret i8* %4, !dbg !3368
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3355 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3369
  %3 = udiv i64 9223372036854775807, %1, !dbg !3370
  %4 = icmp ult i64 %3, %0, !dbg !3370
  br i1 %4, label %8, label %5, !dbg !3371

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %6, metadata !3358, metadata !DIExpression()), !dbg !3369
  %7 = icmp eq i8* %6, null, !dbg !3373
  br i1 %7, label %8, label %9, !dbg !3374

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3375
  unreachable, !dbg !3375

9:                                                ; preds = %5
  ret i8* %6, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()) #10, !dbg !3384
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()) #10, !dbg !3384
  %4 = icmp eq i8* %3, null, !dbg !3387
  %5 = icmp ne i64 %1, 0, !dbg !3388
  %6 = and i1 %5, %4, !dbg !3389
  br i1 %6, label %7, label %8, !dbg !3389

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3390
  unreachable, !dbg !3390

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3391, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()) #10, !dbg !3400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #10, !dbg !3402
  ret i8* %3, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3406, metadata !DIExpression()), !dbg !3407
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3408
  %3 = add i64 %2, 1, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #10, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %3, metadata !3382, metadata !DIExpression()) #10, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %3, metadata !3192, metadata !DIExpression()) #10, !dbg !3412
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %4, metadata !3197, metadata !DIExpression()) #10, !dbg !3412
  %5 = icmp eq i8* %4, null, !dbg !3415
  %6 = icmp ne i64 %3, 0, !dbg !3416
  %7 = and i1 %6, %5, !dbg !3417
  br i1 %7, label %8, label %9, !dbg !3417

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3418
  unreachable, !dbg !3418

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3391, metadata !DIExpression()) #10, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #10, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %3, metadata !3399, metadata !DIExpression()) #10, !dbg !3419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #10, !dbg !3421
  ret i8* %4, !dbg !3422
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3423 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3424, !tbaa !1243
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.114, i64 0, i64 0), i32 5) #10, !dbg !3425
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), i8* %2) #10, !dbg !3426
  tail call void @abort() #23, !dbg !3427
  unreachable, !dbg !3427
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #13 !dbg !3428 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3436
  %3 = icmp eq i64 %0, 0, !dbg !3437
  %4 = icmp eq i64 %1, 0, !dbg !3438
  %5 = or i1 %3, %4, !dbg !3439
  br i1 %5, label %11, label %6, !dbg !3439

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3433, metadata !DIExpression()), !dbg !3440
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3441
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3441
  br i1 %8, label %9, label %11, !dbg !3443

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3444
  store i32 12, i32* %10, align 4, !dbg !3446, !tbaa !1243
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3430, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %12, metadata !3431, metadata !DIExpression()), !dbg !3436
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #10, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %14, metadata !3432, metadata !DIExpression()), !dbg !3436
  br label %15, !dbg !3448

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3436
  ret i8* %16, !dbg !3449
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3450 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3458, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3459, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %2, metadata !3460, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3461, metadata !DIExpression()), !dbg !3467
  %6 = bitcast i32* %5 to i8*, !dbg !3468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3468
  %7 = icmp eq i32* %0, null, !dbg !3469
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %8, metadata !3458, metadata !DIExpression()), !dbg !3467
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %9, metadata !3462, metadata !DIExpression()), !dbg !3467
  %10 = icmp ugt i64 %9, -3, !dbg !3473
  %11 = icmp ne i64 %2, 0, !dbg !3474
  %12 = and i1 %11, %10, !dbg !3475
  br i1 %12, label %13, label %18, !dbg !3475

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3476
  br i1 %14, label %18, label %15, !dbg !3477

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3478, !tbaa !1296
  call void @llvm.dbg.value(metadata i8 %16, metadata !3464, metadata !DIExpression()), !dbg !3479
  %17 = zext i8 %16 to i32, !dbg !3480
  store i32 %17, i32* %8, align 4, !dbg !3481, !tbaa !1243
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3467
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3482
  ret i64 %19, !dbg !3482
}

; Function Attrs: nounwind
declare !dbg !544 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3483 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3489, metadata !DIExpression()), !dbg !3494
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3495
  call void @llvm.dbg.value(metadata i1 undef, metadata !3490, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3499
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3501
  %4 = load i32, i32* %3, align 8, !dbg !3501, !tbaa !3502
  %5 = and i32 %4, 32, !dbg !3501
  %6 = icmp eq i32 %5, 0, !dbg !3503
  call void @llvm.dbg.value(metadata i1 %6, metadata !3492, metadata !DIExpression()), !dbg !3494
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3504
  %8 = icmp ne i32 %7, 0, !dbg !3505
  call void @llvm.dbg.value(metadata i1 %8, metadata !3493, metadata !DIExpression()), !dbg !3494
  br i1 %6, label %9, label %19, !dbg !3506

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3508
  call void @llvm.dbg.value(metadata i1 %10, metadata !3490, metadata !DIExpression()), !dbg !3494
  %11 = xor i1 %8, true, !dbg !3509
  %12 = or i1 %10, %11, !dbg !3509
  %13 = sext i1 %8 to i32, !dbg !3509
  br i1 %12, label %22, label %14, !dbg !3509

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3510
  %16 = load i32, i32* %15, align 4, !dbg !3510, !tbaa !1243
  %17 = icmp ne i32 %16, 9, !dbg !3511
  %18 = sext i1 %17 to i32, !dbg !3512
  br label %22, !dbg !3512

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3513

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3515
  store i32 0, i32* %21, align 4, !dbg !3517, !tbaa !1243
  br label %22, !dbg !3515

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3494
  ret i32 %23, !dbg !3518
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #15 !dbg !3519 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8 0, metadata !3524, metadata !DIExpression()), !dbg !3525
  br label %2, !dbg !3526

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3525
  call void @llvm.dbg.value(metadata i8* %3, metadata !3522, metadata !DIExpression()), !dbg !3525
  %4 = load i8, i8* %3, align 1, !dbg !3527, !tbaa !1296
  %5 = icmp eq i8 %4, 47, !dbg !3527
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %6, metadata !3522, metadata !DIExpression()), !dbg !3525
  br i1 %5, label %2, label %7, !dbg !3526, !llvm.loop !3529

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3530
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3533
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3534
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3525
  call void @llvm.dbg.value(metadata i8 %11, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %10, metadata !3523, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3535

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !3536
  %14 = icmp eq i8 %13, 0, !dbg !3536
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3540
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3540
  br label %17, !dbg !3540

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3525
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3525
  call void @llvm.dbg.value(metadata i8 %19, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %18, metadata !3522, metadata !DIExpression()), !dbg !3525
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %20, metadata !3523, metadata !DIExpression()), !dbg !3525
  %21 = load i8, i8* %20, align 1, !dbg !3530, !tbaa !1296
  br label %7, !dbg !3542, !llvm.loop !3543

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %9, metadata !3522, metadata !DIExpression()), !dbg !3525
  ret i8* %9, !dbg !3545
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #21 !dbg !3546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3550, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 0, metadata !3552, metadata !DIExpression()), !dbg !3553
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %2, metadata !3551, metadata !DIExpression()), !dbg !3553
  br label %3, !dbg !3556

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !3557
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  %5 = icmp ugt i64 %4, 1, !dbg !3558
  br i1 %5, label %6, label %11, !dbg !3560

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !3561
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !3561
  %9 = load i8, i8* %8, align 1, !dbg !3561, !tbaa !1296
  %10 = icmp eq i8 %9, 47, !dbg !3561
  br i1 %10, label %3, label %11, !dbg !3562, !llvm.loop !3563

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3553
  ret i64 %4, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3566 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()), !dbg !3573
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3574
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #10, !dbg !3574
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3569, metadata !DIExpression()), !dbg !3575
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #10, !dbg !3576
  %5 = icmp eq i32 %4, 0, !dbg !3576
  br i1 %5, label %6, label %13, !dbg !3578

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3579
  %8 = load i16, i16* %7, align 16, !dbg !3579
  %9 = icmp eq i16 %8, 67, !dbg !3579
  br i1 %9, label %13, label %10, !dbg !3580

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3581
  %12 = icmp ne i32 %11, 0, !dbg !3582
  br label %13, !dbg !3580

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #10, !dbg !3583
  ret i1 %14, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3584 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3586, metadata !DIExpression()), !dbg !3588
  %2 = icmp eq i8* %1, null, !dbg !3589
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %3, metadata !3586, metadata !DIExpression()), !dbg !3588
  %4 = load i8, i8* %3, align 1, !dbg !3592, !tbaa !1296
  %5 = icmp eq i8 %4, 0, !dbg !3596
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %6, metadata !3586, metadata !DIExpression()), !dbg !3588
  ret i8* %6, !dbg !3598
}

; Function Attrs: nounwind
declare !dbg !999 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3599 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %1, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %2, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 %0, metadata !3607, metadata !DIExpression()) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %2, metadata !3611, metadata !DIExpression()) #10, !dbg !3616
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #10, !dbg !3624
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %4, metadata !3623, metadata !DIExpression()) #10, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %4, metadata !3612, metadata !DIExpression()) #10, !dbg !3616
  %5 = icmp eq i8* %4, null, !dbg !3627
  br i1 %5, label %6, label %9, !dbg !3628

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3629
  br i1 %7, label %19, label %8, !dbg !3632

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3633, !tbaa !1296
  br label %19, !dbg !3634

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %10, metadata !3613, metadata !DIExpression()) #10, !dbg !3636
  %11 = icmp ult i64 %10, %2, !dbg !3637
  br i1 %11, label %12, label %14, !dbg !3639

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %1, metadata !3642, metadata !DIExpression()) #10, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %4, metadata !3645, metadata !DIExpression()) #10, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %13, metadata !3646, metadata !DIExpression()) #10, !dbg !3647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #10, !dbg !3649
  br label %19, !dbg !3650

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3651
  br i1 %15, label %19, label %16, !dbg !3654

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %1, metadata !3642, metadata !DIExpression()) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i8* %4, metadata !3645, metadata !DIExpression()) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %17, metadata !3646, metadata !DIExpression()) #10, !dbg !3657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #10, !dbg !3659
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3660
  store i8 0, i8* %18, align 1, !dbg !3661, !tbaa !1296
  br label %19, !dbg !3662

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3663
  ret i32 %20, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3667, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #10, !dbg !3669
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %2, metadata !3623, metadata !DIExpression()) #10, !dbg !3669
  ret i8* %2, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3673 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3679, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3683
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3684
  call void @llvm.dbg.value(metadata i32 %2, metadata !3681, metadata !DIExpression()), !dbg !3683
  %3 = icmp slt i32 %2, 0, !dbg !3685
  br i1 %3, label %4, label %6, !dbg !3687

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3688
  br label %24, !dbg !3689

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3690
  %8 = icmp eq i32 %7, 0, !dbg !3690
  br i1 %8, label %13, label %9, !dbg !3692

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3693
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3694
  %12 = icmp eq i64 %11, -1, !dbg !3695
  br i1 %12, label %16, label %13, !dbg !3696

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3697
  %15 = icmp eq i32 %14, 0, !dbg !3697
  br i1 %15, label %16, label %18, !dbg !3698

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %21, metadata !3682, metadata !DIExpression()), !dbg !3683
  br label %24, !dbg !3700

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3701
  %20 = load i32, i32* %19, align 4, !dbg !3701, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %21, metadata !3682, metadata !DIExpression()), !dbg !3683
  %22 = icmp eq i32 %20, 0, !dbg !3702
  br i1 %22, label %24, label %23, !dbg !3700

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3704, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 -1, metadata !3682, metadata !DIExpression()), !dbg !3683
  br label %24, !dbg !3706

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3683
  ret i32 %25, !dbg !3707
}

; Function Attrs: nofree nounwind
declare !dbg !1008 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1043 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1044 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3708 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3714, metadata !DIExpression()), !dbg !3715
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3716
  br i1 %2, label %6, label %3, !dbg !3718

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3719
  %5 = icmp eq i32 %4, 0, !dbg !3719
  br i1 %5, label %6, label %8, !dbg !3720

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3721
  br label %17, !dbg !3722

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3723, metadata !DIExpression()) #10, !dbg !3728
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3730
  %10 = load i32, i32* %9, align 8, !dbg !3730, !tbaa !3502
  %11 = and i32 %10, 256, !dbg !3732
  %12 = icmp eq i32 %11, 0, !dbg !3732
  br i1 %12, label %15, label %13, !dbg !3733

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3734
  br label %15, !dbg !3734

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3735
  br label %17, !dbg !3736

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3715
  ret i32 %18, !dbg !3737
}

; Function Attrs: nofree nounwind
declare !dbg !1051 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

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
  %11 = load i8*, i8** %10, align 8, !dbg !3758, !tbaa !1466
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3759
  %13 = load i8*, i8** %12, align 8, !dbg !3759, !tbaa !3760
  %14 = icmp eq i8* %11, %13, !dbg !3761
  br i1 %14, label %15, label %28, !dbg !3762

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3763
  %17 = load i8*, i8** %16, align 8, !dbg !3763, !tbaa !3764
  %18 = icmp eq i8* %17, null, !dbg !3765
  br i1 %18, label %19, label %28, !dbg !3766

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3767
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %21, metadata !3748, metadata !DIExpression()), !dbg !3769
  %22 = icmp eq i64 %21, -1, !dbg !3770
  br i1 %22, label %30, label %23, !dbg !3772

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3773
  %25 = load i32, i32* %24, align 8, !dbg !3774, !tbaa !3502
  %26 = and i32 %25, -17, !dbg !3774
  store i32 %26, i32* %24, align 8, !dbg !3774, !tbaa !3502
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3775
  store i64 %21, i64* %27, align 8, !dbg !3776, !tbaa !3777
  br label %30, !dbg !3778

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3779
  br label %30, !dbg !3780

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3751
  ret i32 %31, !dbg !3781
}

; Function Attrs: nofree nounwind
declare !dbg !1127 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nounwind }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !427, !200, !205, !465, !250, !256, !297, !472, !421, !514, !535, !538, !541, !560, !599, !602, !609, !1002, !1005, !1048, !1089}
!llvm.ident = !{!1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130, !1130}
!llvm.module.flags = !{!1131, !1132, !1133, !1134, !1135}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !185, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
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
!20 = !{!21, !31, !92, !96, !100, !103, !106, !113, !25, !82, !128, !132, !136, !139, !143, !147, !151, !157, !160, !163, !180}
!21 = !DISubprogram(name: "dcgettext", scope: !22, file: !22, line: 51, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!22 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !27, !27, !29}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{}
!31 = !DISubprogram(name: "fputs_unlocked", scope: !32, file: !32, line: 662, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!33 = !DISubroutineType(types: !34)
!34 = !{!29, !27, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !38)
!37 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !55, !56, !57, !61, !63, !65, !69, !72, !74, !77, !80, !81, !83, !87, !88}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !37, line: 51, baseType: !29, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !36, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !36, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !36, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !36, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !36, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !36, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !36, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !36, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !36, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !36, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !36, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !36, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !37, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !36, file: !37, line: 70, baseType: !35, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !36, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !36, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !59, line: 152, baseType: !60)
!59 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!60 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !36, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !36, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!64 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !36, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !37, line: 43, baseType: null)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !59, line: 153, baseType: !60)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !36, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !37, line: 37, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !36, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !37, line: 38, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !36, file: !37, line: 93, baseType: !35, size: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !36, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !36, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !36, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !36, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DISubprogram(name: "set_program_name", scope: !93, file: !93, line: 37, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!93 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !DISubroutineType(types: !95)
!95 = !{null, !27}
!96 = !DISubprogram(name: "setlocale", scope: !97, file: !97, line: 122, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!97 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!98 = !DISubroutineType(types: !99)
!99 = !{!25, !29, !27}
!100 = !DISubprogram(name: "bindtextdomain", scope: !22, file: !22, line: 86, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!101 = !DISubroutineType(types: !102)
!102 = !{!25, !27, !27}
!103 = !DISubprogram(name: "textdomain", scope: !22, file: !22, line: 82, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!104 = !DISubroutineType(types: !105)
!105 = !{!25, !27}
!106 = !DISubprogram(name: "atexit", scope: !107, file: !107, line: 595, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!107 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!108 = !DISubroutineType(types: !109)
!109 = !{!29, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null}
!113 = !DISubprogram(name: "getopt_long", scope: !114, file: !114, line: 66, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!114 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!115 = !DISubroutineType(types: !116)
!116 = !{!29, !29, !117, !27, !119, !126}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !114, line: 50, size: 256, elements: !122)
!122 = !{!123, !124, !125, !127}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !114, line: 52, baseType: !27, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !121, file: !114, line: 55, baseType: !29, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !121, file: !114, line: 56, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !121, file: !114, line: 57, baseType: !29, size: 32, offset: 192)
!128 = !DISubprogram(name: "version_etc", scope: !129, file: !129, line: 69, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!129 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !35, !27, !27, !27, null}
!132 = !DISubprogram(name: "error", scope: !133, file: !133, line: 52, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!133 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !29, !29, !27, null}
!136 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!137 = !DISubroutineType(types: !138)
!138 = !{!25, !5, !27}
!139 = !DISubprogram(name: "prog_fprintf", scope: !140, file: !140, line: 22, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!140 = !DIFile(filename: "src/prog-fprintf.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!141 = !DISubroutineType(types: !142)
!142 = !{null, !35, !27, null}
!143 = !DISubprogram(name: "rmdir", scope: !144, file: !144, line: 834, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!144 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!145 = !DISubroutineType(types: !146)
!146 = !{!29, !27}
!147 = !DISubprogram(name: "openat", scope: !148, file: !148, line: 220, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!148 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!149 = !DISubroutineType(types: !150)
!150 = !{!29, !29, !27, !29, null}
!151 = !DISubprogram(name: "fdopendir", scope: !152, file: !152, line: 141, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!152 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !29}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !152, line: 127, flags: DIFlagFwdDecl)
!157 = !DISubprogram(name: "close", scope: !144, file: !144, line: 353, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!158 = !DISubroutineType(types: !159)
!159 = !{!29, !29}
!160 = !DISubprogram(name: "closedir", scope: !152, file: !152, line: 149, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!161 = !DISubroutineType(types: !162)
!162 = !{!29, !155}
!163 = !DISubprogram(name: "readdir", scope: !152, file: !152, line: 162, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !155}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !168, line: 22, size: 2240, elements: !169)
!168 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!169 = !{!170, !172, !173, !174, !176}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !167, file: !168, line: 25, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !59, line: 148, baseType: !86)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !167, file: !168, line: 26, baseType: !58, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !167, file: !168, line: 31, baseType: !62, size: 16, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !167, file: !168, line: 32, baseType: !175, size: 8, offset: 144)
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !167, file: !168, line: 33, baseType: !177, size: 2048, offset: 152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 256)
!180 = !DISubprogram(name: "strip_trailing_slashes", scope: !181, file: !181, line: 48, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!181 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !25}
!184 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!185 = !{!186, !187, !189, !191}
!186 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !184, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !184, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1792, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 7)
!196 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!197 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "Version", scope: !200, file: !201, line: 2, type: !27, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!198}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "file_name", scope: !205, file: !206, line: 46, type: !27, isLocal: true, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !207, globals: !245, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!208, !21, !244, !132}
!208 = !DISubprogram(name: "close_stream", scope: !209, file: !209, line: 2, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!209 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !DISubroutineType(types: !211)
!211 = !{!29, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !213, file: !37, line: 51, baseType: !29, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !213, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !213, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !213, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !213, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !213, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !213, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !213, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !213, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !213, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !213, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !213, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !213, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !213, file: !37, line: 70, baseType: !212, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !213, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !213, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !213, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !213, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !213, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !213, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !213, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !213, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !213, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !213, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !213, file: !37, line: 93, baseType: !212, size: 64, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !213, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !213, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !213, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !213, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!244 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!245 = !{!203, !246}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !205, file: !206, line: 56, type: !184, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "exit_failure", scope: !250, file: !251, line: 24, type: !253, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !252, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!248}
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "program_name", scope: !256, file: !257, line: 33, type: !27, isLocal: false, isDefinition: true)
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !258, globals: !294, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!258 = !{!82, !259, !25}
!259 = !DISubprogram(name: "fputs", scope: !32, file: !32, line: 626, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!260 = !DISubroutineType(types: !261)
!261 = !{!29, !27, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !263, file: !37, line: 51, baseType: !29, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !263, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !263, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !263, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !263, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !263, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !263, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !263, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !263, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !263, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !263, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !263, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !263, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !263, file: !37, line: 70, baseType: !262, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !263, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !263, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !263, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !263, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !263, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !263, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !263, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !263, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !263, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !263, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !263, file: !37, line: 93, baseType: !262, size: 64, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !263, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !263, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !263, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !263, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!294 = !{!254}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !297, file: !298, line: 85, type: !415, isLocal: false, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !320, globals: !391, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !{!5, !300, !305}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !301)
!301 = !{!302, !303, !304}
!302 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!303 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!304 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !306, line: 46, baseType: !7, size: 32, elements: !307)
!306 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!308 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!309 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!310 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!311 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!312 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!313 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!314 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!315 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!316 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!317 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!318 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!319 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!320 = !{!321, !327, !343, !346, !29, !62, !349, !84, !366, !370, !21, !376, !380, !25, !384, !387, !388}
!321 = !DISubprogram(name: "xmemdup", scope: !322, file: !322, line: 62, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!322 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!323 = !DISubroutineType(types: !324)
!324 = !{!82, !325, !86}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!327 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!328 = !DISubroutineType(types: !329)
!329 = !{!25, !27, !86, !330, !331}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !298, line: 65, size: 448, elements: !334)
!334 = !{!335, !336, !337, !341, !342}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !333, file: !298, line: 68, baseType: !5, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !298, line: 71, baseType: !29, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !333, file: !298, line: 75, baseType: !338, size: 256, offset: 64)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !333, file: !298, line: 78, baseType: !27, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !333, file: !298, line: 81, baseType: !27, size: 64, offset: 384)
!343 = !DISubprogram(name: "free", scope: !107, file: !107, line: 565, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !82}
!346 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!347 = !DISubroutineType(types: !348)
!348 = !{!25, !29, !27, !27, !27, !86}
!349 = !DISubprogram(name: "rpl_mbrtowc", scope: !350, file: !350, line: 717, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!350 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!351 = !DISubroutineType(types: !352)
!352 = !{!86, !126, !27, !86, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 13, size: 64, elements: !356)
!355 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !354, file: !355, line: 15, baseType: !29, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !354, file: !355, line: 20, baseType: !359, size: 32, offset: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 16, size: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !359, file: !355, line: 18, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !359, file: !355, line: 19, baseType: !363, size: 32)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 4)
!366 = !DISubprogram(name: "iswprint", scope: !367, file: !367, line: 120, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!367 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!368 = !DISubroutineType(types: !369)
!369 = !{!29, !7}
!370 = !DISubprogram(name: "mbsinit", scope: !371, file: !371, line: 292, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!371 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!372 = !DISubroutineType(types: !373)
!373 = !{!29, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!376 = !DISubprogram(name: "locale_charset", scope: !377, file: !377, line: 35, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!377 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!378 = !DISubroutineType(types: !379)
!379 = !{!27}
!380 = !DISubprogram(name: "c_strcasecmp", scope: !381, file: !381, line: 42, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!381 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!382 = !DISubroutineType(types: !383)
!383 = !{!29, !27, !27}
!384 = !DISubprogram(name: "xmalloc", scope: !322, file: !322, line: 53, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!385 = !DISubroutineType(types: !386)
!386 = !{!82, !86}
!387 = !DISubprogram(name: "xalloc_die", scope: !322, file: !322, line: 51, type: !111, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !30)
!388 = !DISubprogram(name: "xrealloc", scope: !322, file: !322, line: 59, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!389 = !DISubroutineType(types: !390)
!390 = !{!82, !82, !86}
!391 = !{!295, !392, !398, !400, !402, !404, !411, !413}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !297, file: !298, line: 101, type: !394, isLocal: false, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 320, elements: !396)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!396 = !{!397}
!397 = !DISubrange(count: 10)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !297, file: !298, line: 1052, type: !333, isLocal: false, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !297, file: !298, line: 116, type: !333, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "slot0", scope: !297, file: !298, line: 842, type: !177, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "slotvec", scope: !297, file: !298, line: 845, type: !406, isLocal: true, isDefinition: true)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !298, line: 834, size: 128, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !407, file: !298, line: 836, baseType: !84, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !298, line: 837, baseType: !25, size: 64, offset: 64)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "nslots", scope: !297, file: !298, line: 843, type: !29, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "slotvec0", scope: !297, file: !298, line: 844, type: !407, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 704, elements: !417)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!417 = !{!418}
!418 = !DISubrange(count: 11)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !421, file: !422, line: 26, type: !424, isLocal: false, isDefinition: true)
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !423, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !{!419}
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 376, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 47)
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !429, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!429 = !{!430, !175}
!430 = !DISubprogram(name: "fputs_unlocked", scope: !32, file: !32, line: 662, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!431 = !DISubroutineType(types: !432)
!432 = !{!29, !27, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !434, file: !37, line: 51, baseType: !29, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !434, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !434, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !434, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !434, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !434, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !434, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !434, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !434, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !434, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !434, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !434, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !434, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !434, file: !37, line: 70, baseType: !433, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !434, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !434, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !434, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !434, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !434, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !434, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !434, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !434, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !434, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !434, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !434, file: !37, line: 93, baseType: !433, size: 64, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !434, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !434, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !434, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !434, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!468, !469}
!468 = !DISubprogram(name: "last_component", scope: !181, file: !181, line: 46, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!469 = !DISubprogram(name: "base_len", scope: !181, file: !181, line: 44, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!470 = !DISubroutineType(types: !471)
!471 = !{!86, !27}
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !474, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!474 = !{!475}
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !473, line: 40, baseType: !7, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!478 = !{!21, !479, !82}
!479 = !DISubprogram(name: "fputs_unlocked", scope: !32, file: !32, line: 662, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!480 = !DISubroutineType(types: !481)
!481 = !{!29, !27, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !483, file: !37, line: 51, baseType: !29, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !483, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !483, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !483, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !483, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !483, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !483, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !483, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !483, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !483, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !483, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !483, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !483, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !483, file: !37, line: 70, baseType: !482, size: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !483, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !483, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !483, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !483, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !483, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !483, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !483, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !483, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !483, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !483, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !483, file: !37, line: 93, baseType: !482, size: 64, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !483, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !483, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !483, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !483, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!514 = distinct !DICompileUnit(language: DW_LANG_C99, file: !515, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !516, retainedTypes: !529, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!516 = !{!517}
!517 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !518, file: !322, line: 186, baseType: !7, size: 32, elements: !527)
!518 = distinct !DISubprogram(name: "x2nrealloc", scope: !322, file: !322, line: 174, type: !519, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !522)
!519 = !DISubroutineType(types: !520)
!520 = !{!82, !82, !521, !84}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!522 = !{!523, !524, !525, !526}
!523 = !DILocalVariable(name: "p", arg: 1, scope: !518, file: !322, line: 174, type: !82)
!524 = !DILocalVariable(name: "pn", arg: 2, scope: !518, file: !322, line: 174, type: !521)
!525 = !DILocalVariable(name: "s", arg: 3, scope: !518, file: !322, line: 174, type: !84)
!526 = !DILocalVariable(name: "n", scope: !518, file: !322, line: 176, type: !84)
!527 = !{!528}
!528 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!529 = !{!84, !387, !384, !388, !25, !343, !82, !530, !533}
!530 = !DISubprogram(name: "xcalloc", scope: !322, file: !322, line: 57, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!531 = !DISubroutineType(types: !532)
!532 = !{!82, !86, !86}
!533 = !DISubprogram(name: "rpl_calloc", scope: !534, file: !534, line: 688, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!534 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !537, splitDebugInlining: false, nameTableKind: None)
!536 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!537 = !{!21, !132}
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !540, splitDebugInlining: false, nameTableKind: None)
!539 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!540 = !{!82}
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !543, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!543 = !{!544, !84, !556}
!544 = !DISubprogram(name: "mbrtowc", scope: !371, file: !371, line: 296, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!545 = !DISubroutineType(types: !546)
!546 = !{!86, !126, !27, !86, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 13, size: 64, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !548, file: !355, line: 15, baseType: !29, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !548, file: !355, line: 20, baseType: !552, size: 32, offset: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !355, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !552, file: !355, line: 18, baseType: !7, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !552, file: !355, line: 19, baseType: !363, size: 32)
!556 = !DISubprogram(name: "hard_locale", scope: !557, file: !557, line: 26, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!557 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!558 = !DISubroutineType(types: !559)
!559 = !{!184, !29}
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !562, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !{!563}
!563 = !DISubprogram(name: "rpl_fclose", scope: !564, file: !564, line: 672, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!564 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !DISubroutineType(types: !566)
!566 = !{!29, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !568, file: !37, line: 51, baseType: !29, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !568, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !568, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !568, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !568, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !568, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !568, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !568, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !568, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !568, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !568, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !568, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !568, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !568, file: !37, line: 70, baseType: !567, size: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !568, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !568, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !568, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !568, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !568, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !568, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !568, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !568, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !568, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !568, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !568, file: !37, line: 93, baseType: !567, size: 64, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !568, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !568, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !568, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !568, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !601, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !{!25}
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !604, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!604 = !{!605}
!605 = !DISubprogram(name: "setlocale_null_r", scope: !606, file: !606, line: 64, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!606 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !DISubroutineType(types: !608)
!608 = !{!29, !29, !25, !86}
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !998, splitDebugInlining: false, nameTableKind: None)
!610 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!611 = !{!612}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 41, baseType: !7, size: 32, elements: !614)
!613 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!615 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!616 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!617 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!618 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!619 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!620 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!621 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!622 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!623 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!624 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!625 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!626 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!627 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!628 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!629 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!630 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!631 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!632 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!633 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!634 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!635 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!636 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!637 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!638 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!639 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!640 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!641 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!642 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!643 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!644 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!645 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!646 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!647 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!648 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!649 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!650 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!651 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!652 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!653 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!654 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!655 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!656 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!657 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!658 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!659 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!660 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!661 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!662 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!663 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!664 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!723 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!726 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!727 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!728 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!729 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!730 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!731 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!732 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!733 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!734 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!735 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!736 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!737 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!810 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!883 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!884 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!885 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!886 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!887 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!888 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!889 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!890 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!891 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!892 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!893 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!894 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!895 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!896 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!897 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!899 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!900 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!901 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!902 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!903 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!904 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!930 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!931 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!932 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!933 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!934 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!939 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!940 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!941 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!942 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!998 = !{!999, !82}
!999 = !DISubprogram(name: "nl_langinfo", scope: !613, file: !613, line: 661, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!25, !29}
!1002 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1003, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!1003 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1004 = !{!82, !96}
!1005 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1006, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1007 = !{!1008, !1043, !1044, !1047}
!1008 = !DISubprogram(name: "fileno", scope: !32, file: !32, line: 786, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!29, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1012, file: !37, line: 51, baseType: !29, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1012, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1012, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1012, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1012, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1012, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1012, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1012, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1012, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1012, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1012, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1012, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1012, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1012, file: !37, line: 70, baseType: !1011, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1012, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1012, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1012, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1012, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1012, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1012, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1012, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1012, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1012, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1012, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1012, file: !37, line: 93, baseType: !1011, size: 64, offset: 1344)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1012, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1012, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1012, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1012, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1043 = !DISubprogram(name: "fclose", scope: !32, file: !32, line: 213, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1044 = !DISubprogram(name: "lseek", scope: !144, file: !144, line: 334, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!60, !29, !60, !29}
!1047 = !DISubprogram(name: "rpl_fflush", scope: !564, file: !564, line: 718, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1048 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1049, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1050, splitDebugInlining: false, nameTableKind: None)
!1049 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1050 = !{!82, !1051, !1086}
!1051 = !DISubprogram(name: "fflush", scope: !32, file: !32, line: 218, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!29, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1055, file: !37, line: 51, baseType: !29, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1055, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1055, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1055, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1055, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1055, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1055, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1055, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1055, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1055, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1055, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1055, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1055, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1055, file: !37, line: 70, baseType: !1054, size: 64, offset: 832)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1055, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1055, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1055, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1055, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1055, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1055, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1055, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1055, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1055, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1055, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1055, file: !37, line: 93, baseType: !1054, size: 64, offset: 1344)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1055, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1055, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1055, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1055, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1086 = !DISubprogram(name: "rpl_fseeko", scope: !564, file: !564, line: 1034, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!29, !1054, !60, !29}
!1089 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1090, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1091, splitDebugInlining: false, nameTableKind: None)
!1090 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1091 = !{!82, !1092, !1044, !1127}
!1092 = !DISubprogram(name: "fileno", scope: !32, file: !32, line: 786, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!29, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1096, file: !37, line: 51, baseType: !29, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1096, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1096, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1096, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1096, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1096, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1096, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1096, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1096, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1096, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1096, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1096, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1096, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1096, file: !37, line: 70, baseType: !1095, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1096, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1096, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1096, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1096, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1096, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1096, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1096, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1096, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1096, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1096, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1096, file: !37, line: 93, baseType: !1095, size: 64, offset: 1344)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1096, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1096, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1096, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1096, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1127 = !DISubprogram(name: "fseeko", scope: !32, file: !32, line: 707, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!29, !1095, !60, !29}
!1130 = !{!"clang version 10.0.0 "}
!1131 = !{i32 7, !"Dwarf Version", i32 4}
!1132 = !{i32 2, !"Debug Info Version", i32 3}
!1133 = !{i32 1, !"wchar_size", i32 4}
!1134 = !{i32 7, !"PIC Level", i32 2}
!1135 = !{i32 7, !"PIE Level", i32 2}
!1136 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 158, type: !1137, scopeLine: 159, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !29}
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "status", arg: 1, scope: !1136, file: !3, line: 158, type: !29)
!1141 = !DILocalVariable(name: "infomap", scope: !1142, file: !1143, line: 636, type: !1155)
!1142 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1143, file: !1143, line: 634, type: !94, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1143 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1144 = !{!1145, !1141, !1146, !1147, !1154}
!1145 = !DILocalVariable(name: "program", arg: 1, scope: !1142, file: !1143, line: 634, type: !27)
!1146 = !DILocalVariable(name: "node", scope: !1142, file: !1143, line: 646, type: !27)
!1147 = !DILocalVariable(name: "map_prog", scope: !1142, file: !1143, line: 647, type: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1142, file: !1143, line: 636, size: 128, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1150, file: !1143, line: 636, baseType: !27, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1150, file: !1143, line: 636, baseType: !27, size: 64, offset: 64)
!1154 = !DILocalVariable(name: "lc_messages", scope: !1142, file: !1143, line: 659, type: !27)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 896, elements: !194)
!1156 = !DILocation(line: 636, column: 67, scope: !1142, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 180, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 163, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 160, column: 7)
!1160 = !DILocation(line: 0, scope: !1136)
!1161 = !DILocation(line: 160, column: 14, scope: !1159)
!1162 = !DILocation(line: 160, column: 7, scope: !1136)
!1163 = !DILocation(line: 161, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 161, column: 5)
!1165 = !{!1166, !1166, i64 0}
!1166 = !{!"any pointer", !1167, i64 0}
!1167 = !{!"omnipotent char", !1168, i64 0}
!1168 = !{!"Simple C/C++ TBAA"}
!1169 = !DILocation(line: 164, column: 7, scope: !1158)
!1170 = !DILocation(line: 165, column: 7, scope: !1158)
!1171 = !DILocation(line: 172, column: 7, scope: !1158)
!1172 = !DILocation(line: 178, column: 7, scope: !1158)
!1173 = !DILocation(line: 179, column: 7, scope: !1158)
!1174 = !DILocation(line: 0, scope: !1142, inlinedAt: !1157)
!1175 = !DILocation(line: 636, column: 3, scope: !1142, inlinedAt: !1157)
!1176 = !DILocation(line: 647, column: 36, scope: !1142, inlinedAt: !1157)
!1177 = !DILocation(line: 649, column: 3, scope: !1142, inlinedAt: !1157)
!1178 = !DILocation(line: 649, column: 33, scope: !1142, inlinedAt: !1157)
!1179 = !DILocation(line: 650, column: 13, scope: !1142, inlinedAt: !1157)
!1180 = !DILocation(line: 649, column: 20, scope: !1142, inlinedAt: !1157)
!1181 = !{!1182, !1166, i64 0}
!1182 = !{!"infomap", !1166, i64 0, !1166, i64 8}
!1183 = !DILocation(line: 649, column: 10, scope: !1142, inlinedAt: !1157)
!1184 = !DILocation(line: 649, column: 28, scope: !1142, inlinedAt: !1157)
!1185 = distinct !{!1185, !1177, !1179}
!1186 = !DILocation(line: 652, column: 17, scope: !1187, inlinedAt: !1157)
!1187 = distinct !DILexicalBlock(scope: !1142, file: !1143, line: 652, column: 7)
!1188 = !{!1182, !1166, i64 8}
!1189 = !DILocation(line: 652, column: 7, scope: !1187, inlinedAt: !1157)
!1190 = !DILocation(line: 652, column: 7, scope: !1142, inlinedAt: !1157)
!1191 = !DILocation(line: 655, column: 3, scope: !1142, inlinedAt: !1157)
!1192 = !DILocation(line: 659, column: 29, scope: !1142, inlinedAt: !1157)
!1193 = !DILocation(line: 660, column: 7, scope: !1194, inlinedAt: !1157)
!1194 = distinct !DILexicalBlock(scope: !1142, file: !1143, line: 660, column: 7)
!1195 = !DILocation(line: 660, column: 19, scope: !1194, inlinedAt: !1157)
!1196 = !DILocation(line: 660, column: 22, scope: !1194, inlinedAt: !1157)
!1197 = !DILocation(line: 660, column: 7, scope: !1142, inlinedAt: !1157)
!1198 = !DILocation(line: 666, column: 7, scope: !1199, inlinedAt: !1157)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !1143, line: 661, column: 5)
!1200 = !DILocation(line: 668, column: 5, scope: !1199, inlinedAt: !1157)
!1201 = !DILocation(line: 669, column: 3, scope: !1142, inlinedAt: !1157)
!1202 = !DILocation(line: 671, column: 3, scope: !1142, inlinedAt: !1157)
!1203 = !DILocation(line: 673, column: 1, scope: !1142, inlinedAt: !1157)
!1204 = !DILocation(line: 182, column: 3, scope: !1136)
!1205 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 186, type: !1206, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!29, !29, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1218}
!1210 = !DILocalVariable(name: "argc", arg: 1, scope: !1205, file: !3, line: 186, type: !29)
!1211 = !DILocalVariable(name: "argv", arg: 2, scope: !1205, file: !3, line: 186, type: !1208)
!1212 = !DILocalVariable(name: "ok", scope: !1205, file: !3, line: 188, type: !184)
!1213 = !DILocalVariable(name: "optc", scope: !1205, file: !3, line: 189, type: !29)
!1214 = !DILocalVariable(name: "dir", scope: !1215, file: !3, line: 229, type: !25)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 228, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 227, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 227, column: 3)
!1218 = !DILocalVariable(name: "rmdir_errno", scope: !1219, file: !3, line: 237, type: !29)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 236, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 235, column: 11)
!1221 = !DILocation(line: 0, scope: !1205)
!1222 = !DILocation(line: 192, column: 21, scope: !1205)
!1223 = !DILocation(line: 192, column: 3, scope: !1205)
!1224 = !DILocation(line: 193, column: 3, scope: !1205)
!1225 = !DILocation(line: 194, column: 3, scope: !1205)
!1226 = !DILocation(line: 195, column: 3, scope: !1205)
!1227 = !DILocation(line: 197, column: 3, scope: !1205)
!1228 = !DILocation(line: 199, column: 24, scope: !1205)
!1229 = !DILocation(line: 201, column: 3, scope: !1205)
!1230 = !DILocation(line: 201, column: 18, scope: !1205)
!1231 = !DILocation(line: 210, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 204, column: 9)
!1233 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 202, column: 5)
!1234 = !DILocation(line: 213, column: 11, scope: !1232)
!1235 = !DILocation(line: 214, column: 9, scope: !1232)
!1236 = !DILocation(line: 215, column: 9, scope: !1232)
!1237 = !DILocation(line: 217, column: 11, scope: !1232)
!1238 = !DILocation(line: 0, scope: !1232)
!1239 = distinct !{!1239, !1229, !1240}
!1240 = !DILocation(line: 219, column: 5, scope: !1205)
!1241 = !DILocation(line: 221, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 221, column: 7)
!1243 = !{!1244, !1244, i64 0}
!1244 = !{!"int", !1167, i64 0}
!1245 = !DILocation(line: 221, column: 14, scope: !1242)
!1246 = !DILocation(line: 221, column: 7, scope: !1205)
!1247 = !DILocation(line: 227, column: 17, scope: !1216)
!1248 = !DILocation(line: 227, column: 3, scope: !1217)
!1249 = !DILocation(line: 223, column: 20, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 222, column: 5)
!1251 = !DILocation(line: 223, column: 7, scope: !1250)
!1252 = !DILocation(line: 224, column: 7, scope: !1250)
!1253 = !DILocation(line: 229, column: 19, scope: !1215)
!1254 = !DILocation(line: 0, scope: !1215)
!1255 = !DILocation(line: 232, column: 11, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 232, column: 11)
!1257 = !DILocation(line: 232, column: 11, scope: !1215)
!1258 = !DILocation(line: 233, column: 23, scope: !1256)
!1259 = !DILocation(line: 233, column: 31, scope: !1256)
!1260 = !DILocation(line: 233, column: 60, scope: !1256)
!1261 = !DILocation(line: 233, column: 9, scope: !1256)
!1262 = !DILocation(line: 235, column: 11, scope: !1220)
!1263 = !DILocation(line: 235, column: 23, scope: !1220)
!1264 = !DILocation(line: 235, column: 11, scope: !1215)
!1265 = !DILocation(line: 237, column: 29, scope: !1219)
!1266 = !DILocation(line: 0, scope: !1219)
!1267 = !DILocation(line: 238, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 238, column: 15)
!1269 = !DILocation(line: 238, column: 15, scope: !1219)
!1270 = !DILocation(line: 243, column: 34, scope: !1219)
!1271 = !DILocation(line: 243, column: 60, scope: !1219)
!1272 = !DILocation(line: 243, column: 11, scope: !1219)
!1273 = !DILocation(line: 245, column: 9, scope: !1220)
!1274 = !DILocation(line: 246, column: 16, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 246, column: 16)
!1276 = !DILocation(line: 246, column: 16, scope: !1220)
!1277 = !DILocalVariable(name: "dir", arg: 1, scope: !1278, file: !3, line: 114, type: !25)
!1278 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 114, type: !182, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1279 = !{!1277, !1280, !1281, !1282}
!1280 = !DILocalVariable(name: "slash", scope: !1278, file: !3, line: 116, type: !25)
!1281 = !DILocalVariable(name: "ok", scope: !1278, file: !3, line: 117, type: !184)
!1282 = !DILocalVariable(name: "rmdir_errno", scope: !1283, file: !3, line: 136, type: !29)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 121, column: 5)
!1284 = !DILocation(line: 0, scope: !1278, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 248, column: 17, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 247, column: 9)
!1287 = !DILocation(line: 119, column: 3, scope: !1278, inlinedAt: !1285)
!1288 = !DILocation(line: 120, column: 3, scope: !1278, inlinedAt: !1285)
!1289 = !DILocation(line: 122, column: 15, scope: !1283, inlinedAt: !1285)
!1290 = !DILocation(line: 123, column: 17, scope: !1291, inlinedAt: !1285)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 123, column: 11)
!1292 = !DILocation(line: 123, column: 11, scope: !1283, inlinedAt: !1285)
!1293 = !DILocation(line: 127, column: 20, scope: !1283, inlinedAt: !1285)
!1294 = !DILocation(line: 127, column: 26, scope: !1283, inlinedAt: !1285)
!1295 = !DILocation(line: 127, column: 29, scope: !1283, inlinedAt: !1285)
!1296 = !{!1167, !1167, i64 0}
!1297 = !DILocation(line: 127, column: 36, scope: !1283, inlinedAt: !1285)
!1298 = !DILocation(line: 127, column: 7, scope: !1283, inlinedAt: !1285)
!1299 = !DILocation(line: 128, column: 9, scope: !1283, inlinedAt: !1285)
!1300 = distinct !{!1300, !1298, !1301}
!1301 = !DILocation(line: 128, column: 11, scope: !1283, inlinedAt: !1285)
!1302 = !DILocation(line: 0, scope: !1283, inlinedAt: !1285)
!1303 = !DILocation(line: 129, column: 7, scope: !1283, inlinedAt: !1285)
!1304 = !DILocation(line: 129, column: 16, scope: !1283, inlinedAt: !1285)
!1305 = !DILocation(line: 132, column: 11, scope: !1306, inlinedAt: !1285)
!1306 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 132, column: 11)
!1307 = !DILocation(line: 132, column: 11, scope: !1283, inlinedAt: !1285)
!1308 = !DILocation(line: 133, column: 23, scope: !1306, inlinedAt: !1285)
!1309 = !DILocation(line: 133, column: 31, scope: !1306, inlinedAt: !1285)
!1310 = !DILocation(line: 133, column: 60, scope: !1306, inlinedAt: !1285)
!1311 = !DILocation(line: 133, column: 9, scope: !1306, inlinedAt: !1285)
!1312 = !DILocation(line: 135, column: 13, scope: !1283, inlinedAt: !1285)
!1313 = !DILocation(line: 135, column: 25, scope: !1283, inlinedAt: !1285)
!1314 = !DILocation(line: 136, column: 25, scope: !1283, inlinedAt: !1285)
!1315 = !DILocation(line: 138, column: 11, scope: !1283, inlinedAt: !1285)
!1316 = !DILocation(line: 141, column: 15, scope: !1317, inlinedAt: !1285)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 141, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 139, column: 9)
!1319 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 138, column: 11)
!1320 = !DILocation(line: 141, column: 15, scope: !1318, inlinedAt: !1285)
!1321 = !DILocation(line: 148, column: 38, scope: !1322, inlinedAt: !1285)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 146, column: 13)
!1323 = !DILocation(line: 149, column: 22, scope: !1322, inlinedAt: !1285)
!1324 = !DILocation(line: 148, column: 15, scope: !1322, inlinedAt: !1285)
!1325 = !DILocation(line: 248, column: 14, scope: !1286)
!1326 = !DILocation(line: 249, column: 9, scope: !1286)
!1327 = !DILocation(line: 188, column: 8, scope: !1205)
!1328 = !DILocation(line: 227, column: 25, scope: !1216)
!1329 = distinct !{!1329, !1248, !1330}
!1330 = !DILocation(line: 250, column: 5, scope: !1217)
!1331 = !DILocation(line: 252, column: 10, scope: !1205)
!1332 = !DILocation(line: 253, column: 1, scope: !1205)
!1333 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 99, type: !1334, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!184, !29, !27}
!1336 = !{!1337, !1338}
!1337 = !DILocalVariable(name: "error_number", arg: 1, scope: !1333, file: !3, line: 99, type: !29)
!1338 = !DILocalVariable(name: "dir", arg: 2, scope: !1333, file: !3, line: 99, type: !27)
!1339 = !DILocation(line: 0, scope: !1333)
!1340 = !DILocation(line: 101, column: 11, scope: !1333)
!1341 = !DILocation(line: 102, column: 11, scope: !1333)
!1342 = !DILocation(line: 103, column: 15, scope: !1333)
!1343 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !1344, file: !1143, line: 292, type: !29)
!1344 = distinct !DISubprogram(name: "is_empty_dir", scope: !1143, file: !1143, line: 292, type: !1334, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1345)
!1345 = !{!1343, !1346, !1347, !1350, !1353, !1354}
!1346 = !DILocalVariable(name: "dir", arg: 2, scope: !1344, file: !1143, line: 292, type: !27)
!1347 = !DILocalVariable(name: "dirp", scope: !1344, file: !1143, line: 294, type: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !152, line: 127, baseType: !156)
!1350 = !DILocalVariable(name: "dp", scope: !1344, file: !1143, line: 295, type: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1353 = !DILocalVariable(name: "saved_errno", scope: !1344, file: !1143, line: 296, type: !29)
!1354 = !DILocalVariable(name: "fd", scope: !1344, file: !1143, line: 297, type: !29)
!1355 = !DILocation(line: 0, scope: !1344, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 104, column: 24, scope: !1333)
!1357 = !DILocation(line: 297, column: 12, scope: !1344, inlinedAt: !1356)
!1358 = !DILocation(line: 301, column: 10, scope: !1359, inlinedAt: !1356)
!1359 = distinct !DILexicalBlock(scope: !1344, file: !1143, line: 301, column: 7)
!1360 = !DILocation(line: 301, column: 7, scope: !1344, inlinedAt: !1356)
!1361 = !DILocation(line: 304, column: 10, scope: !1344, inlinedAt: !1356)
!1362 = !DILocation(line: 305, column: 12, scope: !1363, inlinedAt: !1356)
!1363 = distinct !DILexicalBlock(scope: !1344, file: !1143, line: 305, column: 7)
!1364 = !DILocation(line: 305, column: 7, scope: !1344, inlinedAt: !1356)
!1365 = !DILocation(line: 307, column: 7, scope: !1366, inlinedAt: !1356)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !1143, line: 306, column: 5)
!1367 = !DILocation(line: 308, column: 7, scope: !1366, inlinedAt: !1356)
!1368 = !DILocation(line: 311, column: 3, scope: !1344, inlinedAt: !1356)
!1369 = !DILocation(line: 311, column: 9, scope: !1344, inlinedAt: !1356)
!1370 = !DILocalVariable(name: "dirp", arg: 1, scope: !1371, file: !1143, line: 278, type: !1348)
!1371 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !1143, file: !1143, line: 278, type: !1372, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1351, !1348}
!1374 = !{!1370, !1375}
!1375 = !DILocalVariable(name: "dp", scope: !1376, file: !1143, line: 282, type: !1351)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !1143, line: 281, column: 5)
!1377 = !DILocation(line: 0, scope: !1371, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 312, column: 8, scope: !1344, inlinedAt: !1356)
!1379 = !DILocation(line: 282, column: 33, scope: !1376, inlinedAt: !1378)
!1380 = !DILocation(line: 0, scope: !1376, inlinedAt: !1378)
!1381 = !DILocation(line: 283, column: 14, scope: !1382, inlinedAt: !1378)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !1143, line: 283, column: 11)
!1383 = !DILocation(line: 283, column: 22, scope: !1382, inlinedAt: !1378)
!1384 = !DILocation(line: 283, column: 42, scope: !1382, inlinedAt: !1378)
!1385 = !DILocalVariable(name: "file_name", arg: 1, scope: !1386, file: !1143, line: 265, type: !27)
!1386 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !1143, file: !1143, line: 265, type: !1387, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!184, !27}
!1389 = !{!1385, !1390}
!1390 = !DILocalVariable(name: "sep", scope: !1391, file: !1143, line: 269, type: !26)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1143, line: 268, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !1143, line: 267, column: 7)
!1393 = !DILocation(line: 0, scope: !1386, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 283, column: 27, scope: !1382, inlinedAt: !1378)
!1395 = !DILocation(line: 267, column: 7, scope: !1392, inlinedAt: !1394)
!1396 = !DILocation(line: 267, column: 20, scope: !1392, inlinedAt: !1394)
!1397 = !DILocation(line: 267, column: 7, scope: !1386, inlinedAt: !1394)
!1398 = !DILocation(line: 269, column: 29, scope: !1391, inlinedAt: !1394)
!1399 = !DILocation(line: 269, column: 42, scope: !1391, inlinedAt: !1394)
!1400 = !DILocation(line: 269, column: 18, scope: !1391, inlinedAt: !1394)
!1401 = !DILocation(line: 0, scope: !1391, inlinedAt: !1394)
!1402 = !DILocation(line: 283, column: 11, scope: !1376, inlinedAt: !1378)
!1403 = !DILocation(line: 313, column: 17, scope: !1344, inlinedAt: !1356)
!1404 = !DILocation(line: 314, column: 3, scope: !1344, inlinedAt: !1356)
!1405 = !DILocation(line: 315, column: 9, scope: !1344, inlinedAt: !1356)
!1406 = !DILocation(line: 316, column: 10, scope: !1407, inlinedAt: !1356)
!1407 = distinct !DILexicalBlock(scope: !1344, file: !1143, line: 316, column: 7)
!1408 = !DILocation(line: 318, column: 22, scope: !1344, inlinedAt: !1356)
!1409 = !DILocation(line: 316, column: 7, scope: !1344, inlinedAt: !1356)
!1410 = !DILocation(line: 105, column: 19, scope: !1333)
!1411 = !DILocation(line: 105, column: 22, scope: !1333)
!1412 = !DILocation(line: 105, column: 28, scope: !1333)
!1413 = !DILocation(line: 101, column: 3, scope: !1333)
!1414 = distinct !DISubprogram(name: "prog_fprintf", scope: !428, file: !428, line: 28, type: !1415, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1420)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !1417, !27, null}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !434)
!1419 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "fp", arg: 1, scope: !1414, file: !428, line: 28, type: !1417)
!1422 = !DILocalVariable(name: "fmt", arg: 2, scope: !1414, file: !428, line: 28, type: !27)
!1423 = !DILocalVariable(name: "ap", scope: !1414, file: !428, line: 30, type: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 52, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1426, line: 32, baseType: !1427)
!1426 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !428, line: 30, baseType: !1428)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 192, elements: !67)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !428, line: 30, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1429, file: !428, line: 30, baseType: !7, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1429, file: !428, line: 30, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1429, file: !428, line: 30, baseType: !82, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1429, file: !428, line: 30, baseType: !82, size: 64, offset: 128)
!1435 = !DILocation(line: 0, scope: !1414)
!1436 = !DILocation(line: 30, column: 3, scope: !1414)
!1437 = !DILocation(line: 30, column: 11, scope: !1414)
!1438 = !DILocation(line: 31, column: 3, scope: !1414)
!1439 = !DILocation(line: 32, column: 3, scope: !1414)
!1440 = !DILocation(line: 33, column: 3, scope: !1414)
!1441 = !DILocalVariable(name: "__stream", arg: 1, scope: !1442, file: !1443, line: 127, type: !1446)
!1442 = distinct !DISubprogram(name: "vfprintf", scope: !1443, file: !1443, line: 127, type: !1444, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1449)
!1443 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!29, !1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1417)
!1447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1449 = !{!1441, !1450, !1451}
!1450 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1442, file: !1443, line: 128, type: !1447)
!1451 = !DILocalVariable(name: "__ap", arg: 3, scope: !1442, file: !1443, line: 128, type: !1448)
!1452 = !DILocation(line: 0, scope: !1442, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 34, column: 3, scope: !1414)
!1454 = !DILocation(line: 130, column: 10, scope: !1442, inlinedAt: !1453)
!1455 = !DILocation(line: 35, column: 3, scope: !1414)
!1456 = !DILocalVariable(name: "__c", arg: 1, scope: !1457, file: !1458, line: 91, type: !29)
!1457 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1458, file: !1458, line: 91, type: !1459, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1461)
!1458 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!29, !29, !1417}
!1461 = !{!1456, !1462}
!1462 = !DILocalVariable(name: "__stream", arg: 2, scope: !1457, file: !1458, line: 91, type: !1417)
!1463 = !DILocation(line: 0, scope: !1457, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 36, column: 3, scope: !1414)
!1465 = !DILocation(line: 93, column: 10, scope: !1457, inlinedAt: !1464)
!1466 = !{!1467, !1166, i64 40}
!1467 = !{!"_IO_FILE", !1244, i64 0, !1166, i64 8, !1166, i64 16, !1166, i64 24, !1166, i64 32, !1166, i64 40, !1166, i64 48, !1166, i64 56, !1166, i64 64, !1166, i64 72, !1166, i64 80, !1166, i64 88, !1166, i64 96, !1166, i64 104, !1244, i64 112, !1244, i64 116, !1468, i64 120, !1469, i64 128, !1167, i64 130, !1167, i64 131, !1166, i64 136, !1468, i64 144, !1166, i64 152, !1166, i64 160, !1166, i64 168, !1166, i64 176, !1468, i64 184, !1244, i64 192, !1167, i64 196}
!1468 = !{!"long", !1167, i64 0}
!1469 = !{!"short", !1167, i64 0}
!1470 = !{!1467, !1166, i64 48}
!1471 = !{!"branch_weights", i32 2000, i32 1}
!1472 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1473 = !DILocation(line: 37, column: 1, scope: !1414)
!1474 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !206, file: !206, line: 51, type: !94, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1475)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "file", arg: 1, scope: !1474, file: !206, line: 51, type: !27)
!1477 = !DILocation(line: 0, scope: !1474)
!1478 = !DILocation(line: 53, column: 13, scope: !1474)
!1479 = !DILocation(line: 54, column: 1, scope: !1474)
!1480 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !206, file: !206, line: 88, type: !1481, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !184}
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "ignore", arg: 1, scope: !1480, file: !206, line: 88, type: !184)
!1485 = !DILocation(line: 0, scope: !1480)
!1486 = !DILocation(line: 90, column: 16, scope: !1480)
!1487 = !{!1488, !1488, i64 0}
!1488 = !{!"_Bool", !1167, i64 0}
!1489 = !DILocation(line: 91, column: 1, scope: !1480)
!1490 = distinct !DISubprogram(name: "close_stdout", scope: !206, file: !206, line: 117, type: !111, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1491)
!1491 = !{!1492}
!1492 = !DILocalVariable(name: "write_error", scope: !1493, file: !206, line: 122, type: !27)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !206, line: 121, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !206, line: 119, column: 7)
!1495 = !DILocation(line: 119, column: 21, scope: !1494)
!1496 = !DILocation(line: 119, column: 7, scope: !1494)
!1497 = !DILocation(line: 119, column: 29, scope: !1494)
!1498 = !DILocation(line: 120, column: 7, scope: !1494)
!1499 = !DILocation(line: 120, column: 12, scope: !1494)
!1500 = !{i8 0, i8 2}
!1501 = !DILocation(line: 120, column: 25, scope: !1494)
!1502 = !DILocation(line: 120, column: 28, scope: !1494)
!1503 = !DILocation(line: 120, column: 34, scope: !1494)
!1504 = !DILocation(line: 119, column: 7, scope: !1490)
!1505 = !DILocation(line: 122, column: 33, scope: !1493)
!1506 = !DILocation(line: 0, scope: !1493)
!1507 = !DILocation(line: 123, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1493, file: !206, line: 123, column: 11)
!1509 = !DILocation(line: 0, scope: !1508)
!1510 = !DILocation(line: 123, column: 11, scope: !1493)
!1511 = !DILocation(line: 124, column: 36, scope: !1508)
!1512 = !DILocation(line: 124, column: 9, scope: !1508)
!1513 = !DILocation(line: 127, column: 9, scope: !1508)
!1514 = !DILocation(line: 129, column: 14, scope: !1493)
!1515 = !DILocation(line: 129, column: 7, scope: !1493)
!1516 = !DILocation(line: 134, column: 42, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1490, file: !206, line: 134, column: 7)
!1518 = !DILocation(line: 134, column: 28, scope: !1517)
!1519 = !DILocation(line: 134, column: 50, scope: !1517)
!1520 = !DILocation(line: 134, column: 7, scope: !1490)
!1521 = !DILocation(line: 135, column: 12, scope: !1517)
!1522 = !DILocation(line: 135, column: 5, scope: !1517)
!1523 = !DILocation(line: 136, column: 1, scope: !1490)
!1524 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !466, file: !466, line: 31, type: !182, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529}
!1526 = !DILocalVariable(name: "file", arg: 1, scope: !1524, file: !466, line: 31, type: !25)
!1527 = !DILocalVariable(name: "base", scope: !1524, file: !466, line: 33, type: !25)
!1528 = !DILocalVariable(name: "base_lim", scope: !1524, file: !466, line: 34, type: !25)
!1529 = !DILocalVariable(name: "had_slash", scope: !1524, file: !466, line: 35, type: !184)
!1530 = !DILocation(line: 0, scope: !1524)
!1531 = !DILocation(line: 33, column: 16, scope: !1524)
!1532 = !DILocation(line: 39, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !466, line: 39, column: 7)
!1534 = !DILocation(line: 39, column: 7, scope: !1524)
!1535 = !DILocation(line: 41, column: 21, scope: !1524)
!1536 = !DILocation(line: 41, column: 19, scope: !1524)
!1537 = !DILocation(line: 42, column: 16, scope: !1524)
!1538 = !DILocation(line: 42, column: 26, scope: !1524)
!1539 = !DILocation(line: 43, column: 13, scope: !1524)
!1540 = !DILocation(line: 44, column: 3, scope: !1524)
!1541 = distinct !DISubprogram(name: "set_program_name", scope: !257, file: !257, line: 39, type: !94, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "argv0", arg: 1, scope: !1541, file: !257, line: 39, type: !27)
!1544 = !DILocalVariable(name: "slash", scope: !1541, file: !257, line: 46, type: !27)
!1545 = !DILocalVariable(name: "base", scope: !1541, file: !257, line: 47, type: !27)
!1546 = !DILocation(line: 0, scope: !1541)
!1547 = !DILocation(line: 51, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1541, file: !257, line: 51, column: 7)
!1549 = !DILocation(line: 51, column: 7, scope: !1541)
!1550 = !DILocation(line: 55, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !257, line: 52, column: 5)
!1552 = !DILocation(line: 54, column: 7, scope: !1551)
!1553 = !DILocation(line: 56, column: 7, scope: !1551)
!1554 = !DILocation(line: 59, column: 11, scope: !1541)
!1555 = !DILocation(line: 60, column: 17, scope: !1541)
!1556 = !DILocation(line: 60, column: 11, scope: !1541)
!1557 = !DILocation(line: 61, column: 12, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1541, file: !257, line: 61, column: 7)
!1559 = !DILocation(line: 61, column: 20, scope: !1558)
!1560 = !DILocation(line: 61, column: 25, scope: !1558)
!1561 = !DILocation(line: 61, column: 42, scope: !1558)
!1562 = !DILocation(line: 61, column: 28, scope: !1558)
!1563 = !DILocation(line: 61, column: 61, scope: !1558)
!1564 = !DILocation(line: 61, column: 7, scope: !1541)
!1565 = !DILocation(line: 64, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !257, line: 64, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1558, file: !257, line: 62, column: 5)
!1568 = !DILocation(line: 64, column: 36, scope: !1566)
!1569 = !DILocation(line: 64, column: 11, scope: !1567)
!1570 = !DILocation(line: 66, column: 24, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !257, line: 65, column: 9)
!1572 = !DILocation(line: 70, column: 41, scope: !1571)
!1573 = !DILocation(line: 72, column: 9, scope: !1571)
!1574 = !DILocation(line: 84, column: 16, scope: !1541)
!1575 = !DILocation(line: 90, column: 27, scope: !1541)
!1576 = !DILocation(line: 92, column: 1, scope: !1541)
!1577 = distinct !DISubprogram(name: "clone_quoting_options", scope: !298, file: !298, line: 122, type: !1578, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1581)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1581 = !{!1582, !1583, !1584}
!1582 = !DILocalVariable(name: "o", arg: 1, scope: !1577, file: !298, line: 122, type: !1580)
!1583 = !DILocalVariable(name: "e", scope: !1577, file: !298, line: 124, type: !29)
!1584 = !DILocalVariable(name: "p", scope: !1577, file: !298, line: 125, type: !1580)
!1585 = !DILocation(line: 0, scope: !1577)
!1586 = !DILocation(line: 124, column: 11, scope: !1577)
!1587 = !DILocation(line: 125, column: 40, scope: !1577)
!1588 = !DILocation(line: 125, column: 31, scope: !1577)
!1589 = !DILocation(line: 127, column: 9, scope: !1577)
!1590 = !DILocation(line: 128, column: 3, scope: !1577)
!1591 = distinct !DISubprogram(name: "get_quoting_style", scope: !298, file: !298, line: 133, type: !1592, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!5, !331}
!1594 = !{!1595}
!1595 = !DILocalVariable(name: "o", arg: 1, scope: !1591, file: !298, line: 133, type: !331)
!1596 = !DILocation(line: 0, scope: !1591)
!1597 = !DILocation(line: 135, column: 11, scope: !1591)
!1598 = !DILocation(line: 135, column: 46, scope: !1591)
!1599 = !{!1600, !1167, i64 0}
!1600 = !{!"quoting_options", !1167, i64 0, !1244, i64 4, !1167, i64 8, !1166, i64 40, !1166, i64 48}
!1601 = !DILocation(line: 135, column: 3, scope: !1591)
!1602 = distinct !DISubprogram(name: "set_quoting_style", scope: !298, file: !298, line: 141, type: !1603, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1580, !5}
!1605 = !{!1606, !1607}
!1606 = !DILocalVariable(name: "o", arg: 1, scope: !1602, file: !298, line: 141, type: !1580)
!1607 = !DILocalVariable(name: "s", arg: 2, scope: !1602, file: !298, line: 141, type: !5)
!1608 = !DILocation(line: 0, scope: !1602)
!1609 = !DILocation(line: 143, column: 4, scope: !1602)
!1610 = !DILocation(line: 143, column: 39, scope: !1602)
!1611 = !DILocation(line: 143, column: 45, scope: !1602)
!1612 = !DILocation(line: 144, column: 1, scope: !1602)
!1613 = distinct !DISubprogram(name: "set_char_quoting", scope: !298, file: !298, line: 152, type: !1614, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!29, !1580, !26, !29}
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1623, !1624}
!1617 = !DILocalVariable(name: "o", arg: 1, scope: !1613, file: !298, line: 152, type: !1580)
!1618 = !DILocalVariable(name: "c", arg: 2, scope: !1613, file: !298, line: 152, type: !26)
!1619 = !DILocalVariable(name: "i", arg: 3, scope: !1613, file: !298, line: 152, type: !29)
!1620 = !DILocalVariable(name: "uc", scope: !1613, file: !298, line: 154, type: !175)
!1621 = !DILocalVariable(name: "p", scope: !1613, file: !298, line: 155, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1623 = !DILocalVariable(name: "shift", scope: !1613, file: !298, line: 157, type: !29)
!1624 = !DILocalVariable(name: "r", scope: !1613, file: !298, line: 158, type: !29)
!1625 = !DILocation(line: 0, scope: !1613)
!1626 = !DILocation(line: 156, column: 6, scope: !1613)
!1627 = !DILocation(line: 156, column: 62, scope: !1613)
!1628 = !DILocation(line: 156, column: 57, scope: !1613)
!1629 = !DILocation(line: 157, column: 15, scope: !1613)
!1630 = !DILocation(line: 158, column: 12, scope: !1613)
!1631 = !DILocation(line: 158, column: 15, scope: !1613)
!1632 = !DILocation(line: 158, column: 25, scope: !1613)
!1633 = !DILocation(line: 159, column: 13, scope: !1613)
!1634 = !DILocation(line: 159, column: 18, scope: !1613)
!1635 = !DILocation(line: 159, column: 23, scope: !1613)
!1636 = !DILocation(line: 159, column: 6, scope: !1613)
!1637 = !DILocation(line: 160, column: 3, scope: !1613)
!1638 = distinct !DISubprogram(name: "set_quoting_flags", scope: !298, file: !298, line: 168, type: !1639, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!29, !1580, !29}
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1638, file: !298, line: 168, type: !1580)
!1643 = !DILocalVariable(name: "i", arg: 2, scope: !1638, file: !298, line: 168, type: !29)
!1644 = !DILocalVariable(name: "r", scope: !1638, file: !298, line: 170, type: !29)
!1645 = !DILocation(line: 0, scope: !1638)
!1646 = !DILocation(line: 171, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1638, file: !298, line: 171, column: 7)
!1648 = !DILocation(line: 171, column: 7, scope: !1638)
!1649 = !DILocation(line: 173, column: 10, scope: !1638)
!1650 = !{!1600, !1244, i64 4}
!1651 = !DILocation(line: 174, column: 12, scope: !1638)
!1652 = !DILocation(line: 175, column: 3, scope: !1638)
!1653 = distinct !DISubprogram(name: "set_custom_quoting", scope: !298, file: !298, line: 179, type: !1654, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1580, !27, !27}
!1656 = !{!1657, !1658, !1659}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !298, line: 179, type: !1580)
!1658 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1653, file: !298, line: 180, type: !27)
!1659 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1653, file: !298, line: 180, type: !27)
!1660 = !DILocation(line: 0, scope: !1653)
!1661 = !DILocation(line: 182, column: 8, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !298, line: 182, column: 7)
!1663 = !DILocation(line: 182, column: 7, scope: !1653)
!1664 = !DILocation(line: 184, column: 6, scope: !1653)
!1665 = !DILocation(line: 184, column: 12, scope: !1653)
!1666 = !DILocation(line: 185, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1653, file: !298, line: 185, column: 7)
!1668 = !DILocation(line: 185, column: 23, scope: !1667)
!1669 = !DILocation(line: 185, column: 19, scope: !1667)
!1670 = !DILocation(line: 186, column: 5, scope: !1667)
!1671 = !DILocation(line: 187, column: 6, scope: !1653)
!1672 = !DILocation(line: 187, column: 17, scope: !1653)
!1673 = !{!1600, !1166, i64 40}
!1674 = !DILocation(line: 188, column: 6, scope: !1653)
!1675 = !DILocation(line: 188, column: 18, scope: !1653)
!1676 = !{!1600, !1166, i64 48}
!1677 = !DILocation(line: 189, column: 1, scope: !1653)
!1678 = distinct !DISubprogram(name: "quotearg_buffer", scope: !298, file: !298, line: 784, type: !1679, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!84, !25, !84, !27, !84, !331}
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1682 = !DILocalVariable(name: "buffer", arg: 1, scope: !1678, file: !298, line: 784, type: !25)
!1683 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1678, file: !298, line: 784, type: !84)
!1684 = !DILocalVariable(name: "arg", arg: 3, scope: !1678, file: !298, line: 785, type: !27)
!1685 = !DILocalVariable(name: "argsize", arg: 4, scope: !1678, file: !298, line: 785, type: !84)
!1686 = !DILocalVariable(name: "o", arg: 5, scope: !1678, file: !298, line: 786, type: !331)
!1687 = !DILocalVariable(name: "p", scope: !1678, file: !298, line: 788, type: !331)
!1688 = !DILocalVariable(name: "e", scope: !1678, file: !298, line: 789, type: !29)
!1689 = !DILocalVariable(name: "r", scope: !1678, file: !298, line: 790, type: !84)
!1690 = !DILocation(line: 0, scope: !1678)
!1691 = !DILocation(line: 788, column: 37, scope: !1678)
!1692 = !DILocation(line: 789, column: 11, scope: !1678)
!1693 = !DILocation(line: 791, column: 43, scope: !1678)
!1694 = !DILocation(line: 791, column: 53, scope: !1678)
!1695 = !DILocation(line: 791, column: 60, scope: !1678)
!1696 = !DILocation(line: 792, column: 43, scope: !1678)
!1697 = !DILocation(line: 792, column: 58, scope: !1678)
!1698 = !DILocation(line: 790, column: 14, scope: !1678)
!1699 = !DILocation(line: 793, column: 9, scope: !1678)
!1700 = !DILocation(line: 794, column: 3, scope: !1678)
!1701 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !298, file: !298, line: 256, type: !1702, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1706)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!84, !25, !84, !27, !84, !5, !29, !1704, !27, !27}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1731, !1732, !1733, !1734, !1735, !1738, !1739, !1745, !1748, !1749, !1756, !1759, !1760, !1761, !1762, !1763, !1764}
!1707 = !DILocalVariable(name: "buffer", arg: 1, scope: !1701, file: !298, line: 256, type: !25)
!1708 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1701, file: !298, line: 256, type: !84)
!1709 = !DILocalVariable(name: "arg", arg: 3, scope: !1701, file: !298, line: 257, type: !27)
!1710 = !DILocalVariable(name: "argsize", arg: 4, scope: !1701, file: !298, line: 257, type: !84)
!1711 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1701, file: !298, line: 258, type: !5)
!1712 = !DILocalVariable(name: "flags", arg: 6, scope: !1701, file: !298, line: 258, type: !29)
!1713 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1701, file: !298, line: 259, type: !1704)
!1714 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1701, file: !298, line: 260, type: !27)
!1715 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1701, file: !298, line: 261, type: !27)
!1716 = !DILocalVariable(name: "i", scope: !1701, file: !298, line: 263, type: !84)
!1717 = !DILocalVariable(name: "len", scope: !1701, file: !298, line: 264, type: !84)
!1718 = !DILocalVariable(name: "orig_buffersize", scope: !1701, file: !298, line: 265, type: !84)
!1719 = !DILocalVariable(name: "quote_string", scope: !1701, file: !298, line: 266, type: !27)
!1720 = !DILocalVariable(name: "quote_string_len", scope: !1701, file: !298, line: 267, type: !84)
!1721 = !DILocalVariable(name: "backslash_escapes", scope: !1701, file: !298, line: 268, type: !184)
!1722 = !DILocalVariable(name: "unibyte_locale", scope: !1701, file: !298, line: 269, type: !184)
!1723 = !DILocalVariable(name: "elide_outer_quotes", scope: !1701, file: !298, line: 270, type: !184)
!1724 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1701, file: !298, line: 271, type: !184)
!1725 = !DILocalVariable(name: "encountered_single_quote", scope: !1701, file: !298, line: 272, type: !184)
!1726 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1701, file: !298, line: 273, type: !184)
!1727 = !DILocalVariable(name: "c", scope: !1728, file: !298, line: 402, type: !175)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !298, line: 401, column: 5)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !298, line: 400, column: 3)
!1730 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 400, column: 3)
!1731 = !DILocalVariable(name: "esc", scope: !1728, file: !298, line: 403, type: !175)
!1732 = !DILocalVariable(name: "is_right_quote", scope: !1728, file: !298, line: 404, type: !184)
!1733 = !DILocalVariable(name: "escaping", scope: !1728, file: !298, line: 405, type: !184)
!1734 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1728, file: !298, line: 406, type: !184)
!1735 = !DILocalVariable(name: "m", scope: !1736, file: !298, line: 610, type: !84)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 608, column: 11)
!1737 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 426, column: 9)
!1738 = !DILocalVariable(name: "printable", scope: !1736, file: !298, line: 612, type: !184)
!1739 = !DILocalVariable(name: "mbstate", scope: !1740, file: !298, line: 621, type: !1742)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !298, line: 620, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !298, line: 614, column: 17)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1743, line: 6, baseType: !1744)
!1743 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !355, line: 21, baseType: !354)
!1745 = !DILocalVariable(name: "w", scope: !1746, file: !298, line: 631, type: !1747)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !298, line: 630, column: 19)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !85, line: 74, baseType: !29)
!1748 = !DILocalVariable(name: "bytes", scope: !1746, file: !298, line: 632, type: !84)
!1749 = !DILocalVariable(name: "j", scope: !1750, file: !298, line: 657, type: !84)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !298, line: 656, column: 27)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !298, line: 654, column: 29)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !298, line: 649, column: 23)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !298, line: 641, column: 30)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !298, line: 636, column: 30)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !298, line: 634, column: 25)
!1756 = !DILocalVariable(name: "ilim", scope: !1757, file: !298, line: 684, type: !84)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !298, line: 681, column: 15)
!1758 = distinct !DILexicalBlock(scope: !1736, file: !298, line: 680, column: 17)
!1759 = !DILabel(scope: !1701, name: "process_input", file: !298, line: 314)
!1760 = !DILabel(scope: !1737, name: "c_and_shell_escape", file: !298, line: 512)
!1761 = !DILabel(scope: !1737, name: "c_escape", file: !298, line: 517)
!1762 = !DILabel(scope: !1728, name: "store_escape", file: !298, line: 719)
!1763 = !DILabel(scope: !1728, name: "store_c", file: !298, line: 722)
!1764 = !DILabel(scope: !1701, name: "force_outer_quoting_style", file: !298, line: 763)
!1765 = !DILocation(line: 0, scope: !1701)
!1766 = !DILocation(line: 269, column: 25, scope: !1701)
!1767 = !DILocation(line: 269, column: 36, scope: !1701)
!1768 = !DILocation(line: 270, column: 8, scope: !1701)
!1769 = !DILocation(line: 0, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 526, column: 15)
!1771 = !DILocation(line: 0, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !298, line: 462, column: 19)
!1773 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 455, column: 13)
!1774 = !DILocation(line: 0, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !298, line: 449, column: 20)
!1776 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 428, column: 15)
!1777 = !DILocation(line: 0, scope: !1740)
!1778 = !DILocation(line: 0, scope: !1746)
!1779 = !DILocation(line: 0, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 712, column: 11)
!1781 = !DILocation(line: 273, column: 3, scope: !1701)
!1782 = !DILocation(line: 265, column: 10, scope: !1701)
!1783 = !DILocation(line: 266, column: 15, scope: !1701)
!1784 = !DILocation(line: 267, column: 10, scope: !1701)
!1785 = !DILocation(line: 268, column: 8, scope: !1701)
!1786 = !DILocation(line: 271, column: 8, scope: !1701)
!1787 = !DILocation(line: 272, column: 8, scope: !1701)
!1788 = !DILocation(line: 273, column: 8, scope: !1701)
!1789 = !DILocation(line: 314, column: 2, scope: !1701)
!1790 = !DILocation(line: 316, column: 3, scope: !1701)
!1791 = !DILocation(line: 323, column: 11, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 317, column: 5)
!1793 = !DILocation(line: 323, column: 12, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1792, file: !298, line: 323, column: 11)
!1795 = !DILocation(line: 324, column: 9, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !298, line: 324, column: 9)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !298, line: 324, column: 9)
!1798 = !DILocation(line: 324, column: 9, scope: !1797)
!1799 = !DILocation(line: 362, column: 26, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !298, line: 340, column: 11)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !298, line: 339, column: 13)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !298, line: 338, column: 7)
!1803 = !DILocation(line: 363, column: 27, scope: !1800)
!1804 = !DILocation(line: 364, column: 11, scope: !1800)
!1805 = !DILocation(line: 365, column: 14, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !298, line: 365, column: 13)
!1807 = !DILocation(line: 365, column: 13, scope: !1802)
!1808 = !DILocation(line: 366, column: 43, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !298, line: 366, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !298, line: 366, column: 11)
!1811 = !DILocation(line: 366, column: 11, scope: !1810)
!1812 = !DILocation(line: 367, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !298, line: 367, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !298, line: 367, column: 13)
!1815 = !DILocation(line: 367, column: 13, scope: !1814)
!1816 = !DILocation(line: 366, column: 70, scope: !1809)
!1817 = distinct !{!1817, !1811, !1818}
!1818 = !DILocation(line: 367, column: 13, scope: !1810)
!1819 = !DILocation(line: 264, column: 10, scope: !1701)
!1820 = !DILocation(line: 370, column: 28, scope: !1802)
!1821 = !DILocation(line: 372, column: 7, scope: !1792)
!1822 = !DILocation(line: 376, column: 7, scope: !1792)
!1823 = !DILocation(line: 379, column: 7, scope: !1792)
!1824 = !DILocation(line: 381, column: 12, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1792, file: !298, line: 381, column: 11)
!1826 = !DILocation(line: 381, column: 11, scope: !1792)
!1827 = !DILocation(line: 386, column: 12, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1792, file: !298, line: 386, column: 11)
!1829 = !DILocation(line: 386, column: 11, scope: !1792)
!1830 = !DILocation(line: 387, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !298, line: 387, column: 9)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !298, line: 387, column: 9)
!1833 = !DILocation(line: 387, column: 9, scope: !1832)
!1834 = !DILocation(line: 394, column: 7, scope: !1792)
!1835 = !DILocation(line: 397, column: 7, scope: !1792)
!1836 = !DILocation(line: 0, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 408, column: 11)
!1838 = !DILocation(line: 0, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !298, line: 419, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !298, line: 418, column: 9)
!1841 = !DILocation(line: 0, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 556, column: 15)
!1843 = !DILocation(line: 0, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 548, column: 15)
!1845 = !DILocation(line: 0, scope: !1751)
!1846 = !DILocation(line: 0, scope: !1758)
!1847 = !DILocation(line: 0, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 509, column: 15)
!1849 = !DILocation(line: 400, column: 8, scope: !1730)
!1850 = !DILocation(line: 0, scope: !1730)
!1851 = !DILocation(line: 400, column: 27, scope: !1729)
!1852 = !DILocation(line: 400, column: 19, scope: !1729)
!1853 = !DILocation(line: 400, column: 41, scope: !1729)
!1854 = !DILocation(line: 400, column: 48, scope: !1729)
!1855 = !DILocation(line: 400, column: 3, scope: !1730)
!1856 = !DILocation(line: 400, column: 60, scope: !1729)
!1857 = !DILocation(line: 0, scope: !1728)
!1858 = !DILocation(line: 409, column: 11, scope: !1837)
!1859 = !DILocation(line: 411, column: 17, scope: !1837)
!1860 = !DILocation(line: 412, column: 39, scope: !1837)
!1861 = !DILocation(line: 416, column: 32, scope: !1837)
!1862 = !DILocation(line: 412, column: 19, scope: !1837)
!1863 = !DILocation(line: 412, column: 15, scope: !1837)
!1864 = !DILocation(line: 417, column: 11, scope: !1837)
!1865 = !DILocation(line: 417, column: 26, scope: !1837)
!1866 = !DILocation(line: 417, column: 14, scope: !1837)
!1867 = !DILocation(line: 417, column: 63, scope: !1837)
!1868 = !DILocation(line: 408, column: 11, scope: !1728)
!1869 = !DILocation(line: 424, column: 11, scope: !1728)
!1870 = !DILocation(line: 425, column: 7, scope: !1728)
!1871 = !DILocation(line: 428, column: 15, scope: !1737)
!1872 = !DILocation(line: 430, column: 15, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !298, line: 430, column: 15)
!1874 = distinct !DILexicalBlock(scope: !1776, file: !298, line: 429, column: 13)
!1875 = !DILocation(line: 430, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !298, line: 430, column: 15)
!1877 = !DILocation(line: 430, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !298, line: 430, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !298, line: 430, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !298, line: 430, column: 15)
!1881 = !DILocation(line: 430, column: 15, scope: !1879)
!1882 = !DILocation(line: 430, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !298, line: 430, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !298, line: 430, column: 15)
!1885 = !DILocation(line: 430, column: 15, scope: !1884)
!1886 = !DILocation(line: 430, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !298, line: 430, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !298, line: 430, column: 15)
!1889 = !DILocation(line: 430, column: 15, scope: !1888)
!1890 = !DILocation(line: 430, column: 15, scope: !1880)
!1891 = !DILocation(line: 430, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !298, line: 430, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1873, file: !298, line: 430, column: 15)
!1894 = !DILocation(line: 430, column: 15, scope: !1893)
!1895 = !DILocation(line: 438, column: 19, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1874, file: !298, line: 437, column: 19)
!1897 = !DILocation(line: 438, column: 24, scope: !1896)
!1898 = !DILocation(line: 438, column: 28, scope: !1896)
!1899 = !DILocation(line: 438, column: 38, scope: !1896)
!1900 = !DILocation(line: 438, column: 48, scope: !1896)
!1901 = !DILocation(line: 438, column: 59, scope: !1896)
!1902 = !DILocation(line: 440, column: 19, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !298, line: 440, column: 19)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !298, line: 440, column: 19)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !298, line: 439, column: 17)
!1906 = !DILocation(line: 440, column: 19, scope: !1904)
!1907 = !DILocation(line: 441, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !298, line: 441, column: 19)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !298, line: 441, column: 19)
!1910 = !DILocation(line: 441, column: 19, scope: !1909)
!1911 = !DILocation(line: 442, column: 17, scope: !1905)
!1912 = !DILocation(line: 449, column: 20, scope: !1776)
!1913 = !DILocation(line: 454, column: 11, scope: !1737)
!1914 = !DILocation(line: 457, column: 19, scope: !1773)
!1915 = !DILocation(line: 463, column: 19, scope: !1772)
!1916 = !DILocation(line: 463, column: 24, scope: !1772)
!1917 = !DILocation(line: 463, column: 28, scope: !1772)
!1918 = !DILocation(line: 463, column: 38, scope: !1772)
!1919 = !DILocation(line: 463, column: 47, scope: !1772)
!1920 = !DILocation(line: 463, column: 41, scope: !1772)
!1921 = !DILocation(line: 463, column: 52, scope: !1772)
!1922 = !DILocation(line: 462, column: 19, scope: !1773)
!1923 = !DILocation(line: 464, column: 25, scope: !1772)
!1924 = !DILocation(line: 464, column: 17, scope: !1772)
!1925 = !DILocation(line: 471, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1772, file: !298, line: 465, column: 19)
!1927 = !DILocation(line: 475, column: 21, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !298, line: 475, column: 21)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !298, line: 475, column: 21)
!1930 = !DILocation(line: 475, column: 21, scope: !1929)
!1931 = !DILocation(line: 476, column: 21, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !298, line: 476, column: 21)
!1933 = distinct !DILexicalBlock(scope: !1926, file: !298, line: 476, column: 21)
!1934 = !DILocation(line: 476, column: 21, scope: !1933)
!1935 = !DILocation(line: 477, column: 21, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !298, line: 477, column: 21)
!1937 = distinct !DILexicalBlock(scope: !1926, file: !298, line: 477, column: 21)
!1938 = !DILocation(line: 477, column: 21, scope: !1937)
!1939 = !DILocation(line: 478, column: 21, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !298, line: 478, column: 21)
!1941 = distinct !DILexicalBlock(scope: !1926, file: !298, line: 478, column: 21)
!1942 = !DILocation(line: 478, column: 21, scope: !1941)
!1943 = !DILocation(line: 479, column: 21, scope: !1926)
!1944 = !DILocation(line: 492, column: 31, scope: !1737)
!1945 = !DILocation(line: 493, column: 31, scope: !1737)
!1946 = !DILocation(line: 495, column: 31, scope: !1737)
!1947 = !DILocation(line: 496, column: 31, scope: !1737)
!1948 = !DILocation(line: 497, column: 31, scope: !1737)
!1949 = !DILocation(line: 500, column: 15, scope: !1737)
!1950 = !DILocation(line: 502, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !298, line: 501, column: 13)
!1952 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 500, column: 15)
!1953 = !DILocation(line: 509, column: 33, scope: !1848)
!1954 = !DILocation(line: 0, scope: !1737)
!1955 = !DILocation(line: 512, column: 9, scope: !1737)
!1956 = !DILocation(line: 514, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 513, column: 15)
!1958 = !DILocation(line: 517, column: 9, scope: !1737)
!1959 = !DILocation(line: 518, column: 15, scope: !1737)
!1960 = !DILocation(line: 526, column: 15, scope: !1737)
!1961 = !DILocation(line: 526, column: 40, scope: !1770)
!1962 = !DILocation(line: 526, column: 47, scope: !1770)
!1963 = !DILocation(line: 526, column: 18, scope: !1770)
!1964 = !DILocation(line: 530, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1737, file: !298, line: 530, column: 15)
!1966 = !DILocation(line: 530, column: 15, scope: !1737)
!1967 = !DILocation(line: 535, column: 11, scope: !1737)
!1968 = !DILocation(line: 549, column: 15, scope: !1844)
!1969 = !DILocation(line: 556, column: 15, scope: !1737)
!1970 = !DILocation(line: 558, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1842, file: !298, line: 557, column: 13)
!1972 = !DILocation(line: 561, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !298, line: 561, column: 19)
!1974 = !DILocation(line: 561, column: 35, scope: !1973)
!1975 = !DILocation(line: 561, column: 30, scope: !1973)
!1976 = !DILocation(line: 570, column: 15, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !298, line: 570, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1971, file: !298, line: 570, column: 15)
!1979 = !DILocation(line: 570, column: 15, scope: !1978)
!1980 = !DILocation(line: 571, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !298, line: 571, column: 15)
!1982 = distinct !DILexicalBlock(scope: !1971, file: !298, line: 571, column: 15)
!1983 = !DILocation(line: 571, column: 15, scope: !1982)
!1984 = !DILocation(line: 572, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !298, line: 572, column: 15)
!1986 = distinct !DILexicalBlock(scope: !1971, file: !298, line: 572, column: 15)
!1987 = !DILocation(line: 572, column: 15, scope: !1986)
!1988 = !DILocation(line: 574, column: 13, scope: !1971)
!1989 = !DILocation(line: 614, column: 17, scope: !1736)
!1990 = !DILocation(line: 0, scope: !1736)
!1991 = !DILocation(line: 617, column: 29, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1741, file: !298, line: 615, column: 15)
!1993 = !{!1469, !1469, i64 0}
!1994 = !DILocation(line: 617, column: 27, scope: !1992)
!1995 = !DILocation(line: 618, column: 15, scope: !1992)
!1996 = !DILocation(line: 621, column: 17, scope: !1740)
!1997 = !DILocation(line: 621, column: 27, scope: !1740)
!1998 = !DILocalVariable(name: "__dest", arg: 1, scope: !1999, file: !2000, line: 59, type: !82)
!1999 = distinct !DISubprogram(name: "memset", scope: !2000, file: !2000, line: 59, type: !2001, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2003)
!2000 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!82, !82, !29, !84}
!2003 = !{!1998, !2004, !2005}
!2004 = !DILocalVariable(name: "__ch", arg: 2, scope: !1999, file: !2000, line: 59, type: !29)
!2005 = !DILocalVariable(name: "__len", arg: 3, scope: !1999, file: !2000, line: 59, type: !84)
!2006 = !DILocation(line: 0, scope: !1999, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 622, column: 17, scope: !1740)
!2008 = !DILocation(line: 71, column: 10, scope: !1999, inlinedAt: !2007)
!2009 = !DILocation(line: 626, column: 29, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1740, file: !298, line: 626, column: 21)
!2011 = !DILocation(line: 626, column: 21, scope: !1740)
!2012 = !DILocation(line: 627, column: 29, scope: !2010)
!2013 = !DILocation(line: 627, column: 19, scope: !2010)
!2014 = !DILocation(line: 629, column: 17, scope: !1740)
!2015 = !DILocation(line: 624, column: 19, scope: !1740)
!2016 = !DILocation(line: 625, column: 27, scope: !1740)
!2017 = !DILocation(line: 631, column: 21, scope: !1746)
!2018 = !DILocation(line: 632, column: 56, scope: !1746)
!2019 = !DILocation(line: 632, column: 50, scope: !1746)
!2020 = !DILocation(line: 633, column: 53, scope: !1746)
!2021 = !DILocation(line: 632, column: 36, scope: !1746)
!2022 = !DILocation(line: 634, column: 25, scope: !1746)
!2023 = !DILocation(line: 644, column: 38, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1753, file: !298, line: 642, column: 23)
!2025 = !DILocation(line: 644, column: 48, scope: !2024)
!2026 = !DILocation(line: 644, column: 25, scope: !2024)
!2027 = !DILocation(line: 644, column: 51, scope: !2024)
!2028 = !DILocation(line: 645, column: 28, scope: !2024)
!2029 = !DILocation(line: 644, column: 34, scope: !2024)
!2030 = distinct !{!2030, !2026, !2028}
!2031 = !DILocation(line: 658, column: 43, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !298, line: 658, column: 29)
!2033 = distinct !DILexicalBlock(scope: !1750, file: !298, line: 658, column: 29)
!2034 = !DILocation(line: 655, column: 29, scope: !1751)
!2035 = !DILocation(line: 0, scope: !1750)
!2036 = !DILocation(line: 659, column: 49, scope: !2032)
!2037 = !DILocation(line: 659, column: 39, scope: !2032)
!2038 = !DILocation(line: 659, column: 31, scope: !2032)
!2039 = !DILocation(line: 658, column: 53, scope: !2032)
!2040 = !DILocation(line: 658, column: 29, scope: !2033)
!2041 = distinct !{!2041, !2040, !2042}
!2042 = !DILocation(line: 667, column: 33, scope: !2033)
!2043 = !DILocation(line: 674, column: 19, scope: !1740)
!2044 = !DILocation(line: 670, column: 41, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1752, file: !298, line: 670, column: 29)
!2046 = !DILocation(line: 670, column: 31, scope: !2045)
!2047 = !DILocation(line: 670, column: 29, scope: !1752)
!2048 = !DILocation(line: 672, column: 27, scope: !1752)
!2049 = !DILocation(line: 675, column: 26, scope: !1740)
!2050 = !DILocation(line: 675, column: 24, scope: !1740)
!2051 = !DILocation(line: 674, column: 19, scope: !1746)
!2052 = distinct !{!2052, !2014, !2053}
!2053 = !DILocation(line: 675, column: 44, scope: !1740)
!2054 = !DILocation(line: 676, column: 15, scope: !1741)
!2055 = !DILocation(line: 0, scope: !1741)
!2056 = !DILocation(line: 678, column: 40, scope: !1736)
!2057 = !DILocation(line: 680, column: 19, scope: !1758)
!2058 = !DILocation(line: 680, column: 45, scope: !1758)
!2059 = !DILocation(line: 680, column: 23, scope: !1758)
!2060 = !DILocation(line: 684, column: 33, scope: !1757)
!2061 = !DILocation(line: 0, scope: !1757)
!2062 = !DILocation(line: 686, column: 17, scope: !1757)
!2063 = !DILocation(line: 405, column: 12, scope: !1728)
!2064 = !DILocation(line: 688, column: 43, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !298, line: 688, column: 25)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !298, line: 687, column: 19)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !298, line: 686, column: 17)
!2068 = distinct !DILexicalBlock(scope: !1757, file: !298, line: 686, column: 17)
!2069 = !DILocation(line: 690, column: 25, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !298, line: 690, column: 25)
!2071 = distinct !DILexicalBlock(scope: !2065, file: !298, line: 689, column: 23)
!2072 = !DILocation(line: 690, column: 25, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !298, line: 690, column: 25)
!2074 = !DILocation(line: 690, column: 25, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !298, line: 690, column: 25)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !298, line: 690, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !298, line: 690, column: 25)
!2078 = !DILocation(line: 690, column: 25, scope: !2076)
!2079 = !DILocation(line: 690, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !298, line: 690, column: 25)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !298, line: 690, column: 25)
!2082 = !DILocation(line: 690, column: 25, scope: !2081)
!2083 = !DILocation(line: 690, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !298, line: 690, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2077, file: !298, line: 690, column: 25)
!2086 = !DILocation(line: 690, column: 25, scope: !2085)
!2087 = !DILocation(line: 690, column: 25, scope: !2077)
!2088 = !DILocation(line: 690, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !298, line: 690, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2070, file: !298, line: 690, column: 25)
!2091 = !DILocation(line: 690, column: 25, scope: !2090)
!2092 = !DILocation(line: 691, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !298, line: 691, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2071, file: !298, line: 691, column: 25)
!2095 = !DILocation(line: 691, column: 25, scope: !2094)
!2096 = !DILocation(line: 692, column: 25, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !298, line: 692, column: 25)
!2098 = distinct !DILexicalBlock(scope: !2071, file: !298, line: 692, column: 25)
!2099 = !DILocation(line: 692, column: 25, scope: !2098)
!2100 = !DILocation(line: 693, column: 38, scope: !2071)
!2101 = !DILocation(line: 693, column: 33, scope: !2071)
!2102 = !DILocation(line: 694, column: 23, scope: !2071)
!2103 = !DILocation(line: 695, column: 30, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2065, file: !298, line: 695, column: 30)
!2105 = !DILocation(line: 695, column: 30, scope: !2065)
!2106 = !DILocation(line: 697, column: 25, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !298, line: 697, column: 25)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !298, line: 697, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !298, line: 696, column: 23)
!2110 = !DILocation(line: 697, column: 25, scope: !2108)
!2111 = !DILocation(line: 699, column: 23, scope: !2109)
!2112 = !DILocation(line: 700, column: 35, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2066, file: !298, line: 700, column: 25)
!2114 = !DILocation(line: 700, column: 30, scope: !2113)
!2115 = !DILocation(line: 700, column: 25, scope: !2066)
!2116 = !DILocation(line: 702, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !298, line: 702, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2066, file: !298, line: 702, column: 21)
!2119 = !DILocation(line: 702, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !298, line: 702, column: 21)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !298, line: 702, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !298, line: 702, column: 21)
!2123 = !DILocation(line: 702, column: 21, scope: !2121)
!2124 = !DILocation(line: 702, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !298, line: 702, column: 21)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !298, line: 702, column: 21)
!2127 = !DILocation(line: 702, column: 21, scope: !2126)
!2128 = !DILocation(line: 702, column: 21, scope: !2122)
!2129 = !DILocation(line: 0, scope: !2066)
!2130 = !DILocation(line: 703, column: 21, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !298, line: 703, column: 21)
!2132 = distinct !DILexicalBlock(scope: !2066, file: !298, line: 703, column: 21)
!2133 = !DILocation(line: 703, column: 21, scope: !2132)
!2134 = !DILocation(line: 704, column: 25, scope: !2066)
!2135 = !DILocation(line: 686, column: 17, scope: !2067)
!2136 = distinct !{!2136, !2137, !2138}
!2137 = !DILocation(line: 686, column: 17, scope: !2068)
!2138 = !DILocation(line: 705, column: 19, scope: !2068)
!2139 = !DILocation(line: 416, column: 30, scope: !1837)
!2140 = !DILocation(line: 712, column: 34, scope: !1780)
!2141 = !DILocation(line: 715, column: 35, scope: !1780)
!2142 = !DILocation(line: 715, column: 17, scope: !1780)
!2143 = !DILocation(line: 715, column: 47, scope: !1780)
!2144 = !DILocation(line: 715, column: 65, scope: !1780)
!2145 = !DILocation(line: 716, column: 15, scope: !1780)
!2146 = !DILocation(line: 716, column: 11, scope: !1780)
!2147 = !DILocation(line: 712, column: 11, scope: !1728)
!2148 = !DILocation(line: 400, column: 10, scope: !1730)
!2149 = !DILocation(line: 719, column: 5, scope: !1728)
!2150 = !DILocation(line: 720, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 720, column: 7)
!2152 = !DILocation(line: 720, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !298, line: 720, column: 7)
!2154 = !DILocation(line: 720, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !298, line: 720, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !298, line: 720, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !298, line: 720, column: 7)
!2158 = !DILocation(line: 720, column: 7, scope: !2156)
!2159 = !DILocation(line: 720, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !298, line: 720, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !298, line: 720, column: 7)
!2162 = !DILocation(line: 720, column: 7, scope: !2161)
!2163 = !DILocation(line: 720, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !298, line: 720, column: 7)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !298, line: 720, column: 7)
!2166 = !DILocation(line: 720, column: 7, scope: !2165)
!2167 = !DILocation(line: 720, column: 7, scope: !2157)
!2168 = !DILocation(line: 720, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !298, line: 720, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2151, file: !298, line: 720, column: 7)
!2171 = !DILocation(line: 720, column: 7, scope: !2170)
!2172 = !DILocation(line: 722, column: 5, scope: !1728)
!2173 = !DILocation(line: 723, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !298, line: 723, column: 7)
!2175 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 723, column: 7)
!2176 = !DILocation(line: 424, column: 9, scope: !1728)
!2177 = !DILocation(line: 723, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !298, line: 723, column: 7)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !298, line: 723, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !298, line: 723, column: 7)
!2181 = !DILocation(line: 723, column: 7, scope: !2179)
!2182 = !DILocation(line: 723, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !298, line: 723, column: 7)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !298, line: 723, column: 7)
!2185 = !DILocation(line: 723, column: 7, scope: !2184)
!2186 = !DILocation(line: 723, column: 7, scope: !2180)
!2187 = !DILocation(line: 724, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !298, line: 724, column: 7)
!2189 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 724, column: 7)
!2190 = !DILocation(line: 724, column: 7, scope: !2189)
!2191 = !DILocation(line: 726, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1728, file: !298, line: 726, column: 11)
!2193 = !DILocation(line: 726, column: 11, scope: !1728)
!2194 = !DILocation(line: 728, column: 5, scope: !1729)
!2195 = !DILocation(line: 400, column: 75, scope: !1729)
!2196 = !DILocation(line: 400, column: 3, scope: !1729)
!2197 = distinct !{!2197, !1855, !2198}
!2198 = !DILocation(line: 728, column: 5, scope: !1730)
!2199 = !DILocation(line: 730, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 730, column: 7)
!2201 = !DILocation(line: 730, column: 16, scope: !2200)
!2202 = !DILocation(line: 738, column: 51, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 738, column: 7)
!2204 = !DILocation(line: 739, column: 10, scope: !2203)
!2205 = !DILocation(line: 741, column: 11, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !298, line: 741, column: 11)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !298, line: 740, column: 5)
!2208 = !DILocation(line: 741, column: 11, scope: !2207)
!2209 = !DILocation(line: 742, column: 16, scope: !2206)
!2210 = !DILocation(line: 742, column: 9, scope: !2206)
!2211 = !DILocation(line: 746, column: 18, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2206, file: !298, line: 746, column: 16)
!2213 = !DILocation(line: 746, column: 32, scope: !2212)
!2214 = !DILocation(line: 746, column: 29, scope: !2212)
!2215 = !DILocation(line: 755, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 755, column: 7)
!2217 = !DILocation(line: 755, column: 20, scope: !2216)
!2218 = !DILocation(line: 756, column: 12, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !298, line: 756, column: 5)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !298, line: 756, column: 5)
!2221 = !DILocation(line: 756, column: 5, scope: !2220)
!2222 = !DILocation(line: 757, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !298, line: 757, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !298, line: 757, column: 7)
!2225 = !DILocation(line: 757, column: 7, scope: !2224)
!2226 = !DILocation(line: 756, column: 39, scope: !2219)
!2227 = distinct !{!2227, !2221, !2228}
!2228 = !DILocation(line: 757, column: 7, scope: !2220)
!2229 = !DILocation(line: 759, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 759, column: 7)
!2231 = !DILocation(line: 759, column: 7, scope: !1701)
!2232 = !DILocation(line: 760, column: 5, scope: !2230)
!2233 = !DILocation(line: 760, column: 17, scope: !2230)
!2234 = !DILocation(line: 763, column: 2, scope: !1701)
!2235 = !DILocation(line: 766, column: 51, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1701, file: !298, line: 766, column: 7)
!2237 = !DILocation(line: 766, column: 21, scope: !2236)
!2238 = !DILocation(line: 770, column: 42, scope: !1701)
!2239 = !DILocation(line: 768, column: 10, scope: !1701)
!2240 = !DILocation(line: 768, column: 3, scope: !1701)
!2241 = !DILocation(line: 772, column: 1, scope: !1701)
!2242 = distinct !DISubprogram(name: "gettext_quote", scope: !298, file: !298, line: 207, type: !2243, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!27, !27, !5}
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "msgid", arg: 1, scope: !2242, file: !298, line: 207, type: !27)
!2247 = !DILocalVariable(name: "s", arg: 2, scope: !2242, file: !298, line: 207, type: !5)
!2248 = !DILocalVariable(name: "translation", scope: !2242, file: !298, line: 209, type: !27)
!2249 = !DILocalVariable(name: "locale_code", scope: !2242, file: !298, line: 210, type: !27)
!2250 = !DILocation(line: 0, scope: !2242)
!2251 = !DILocation(line: 209, column: 29, scope: !2242)
!2252 = !DILocation(line: 212, column: 19, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2242, file: !298, line: 212, column: 7)
!2254 = !DILocation(line: 212, column: 7, scope: !2242)
!2255 = !DILocation(line: 233, column: 17, scope: !2242)
!2256 = !DILocalVariable(name: "s1", arg: 1, scope: !2257, file: !2258, line: 160, type: !27)
!2257 = distinct !DISubprogram(name: "strcaseeq0", scope: !2258, file: !2258, line: 160, type: !2259, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2261)
!2258 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2261 = !{!2256, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2262 = !DILocalVariable(name: "s2", arg: 2, scope: !2257, file: !2258, line: 160, type: !27)
!2263 = !DILocalVariable(name: "s20", arg: 3, scope: !2257, file: !2258, line: 160, type: !26)
!2264 = !DILocalVariable(name: "s21", arg: 4, scope: !2257, file: !2258, line: 160, type: !26)
!2265 = !DILocalVariable(name: "s22", arg: 5, scope: !2257, file: !2258, line: 160, type: !26)
!2266 = !DILocalVariable(name: "s23", arg: 6, scope: !2257, file: !2258, line: 160, type: !26)
!2267 = !DILocalVariable(name: "s24", arg: 7, scope: !2257, file: !2258, line: 160, type: !26)
!2268 = !DILocalVariable(name: "s25", arg: 8, scope: !2257, file: !2258, line: 160, type: !26)
!2269 = !DILocalVariable(name: "s26", arg: 9, scope: !2257, file: !2258, line: 160, type: !26)
!2270 = !DILocalVariable(name: "s27", arg: 10, scope: !2257, file: !2258, line: 160, type: !26)
!2271 = !DILocalVariable(name: "s28", arg: 11, scope: !2257, file: !2258, line: 160, type: !26)
!2272 = !DILocation(line: 0, scope: !2257, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 234, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2242, file: !298, line: 234, column: 7)
!2275 = !DILocation(line: 162, column: 7, scope: !2276, inlinedAt: !2273)
!2276 = distinct !DILexicalBlock(scope: !2257, file: !2258, line: 162, column: 7)
!2277 = !DILocalVariable(name: "s1", arg: 1, scope: !2278, file: !2258, line: 146, type: !27)
!2278 = distinct !DISubprogram(name: "strcaseeq1", scope: !2258, file: !2258, line: 146, type: !2279, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26, !26}
!2281 = !{!2277, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2282 = !DILocalVariable(name: "s2", arg: 2, scope: !2278, file: !2258, line: 146, type: !27)
!2283 = !DILocalVariable(name: "s21", arg: 3, scope: !2278, file: !2258, line: 146, type: !26)
!2284 = !DILocalVariable(name: "s22", arg: 4, scope: !2278, file: !2258, line: 146, type: !26)
!2285 = !DILocalVariable(name: "s23", arg: 5, scope: !2278, file: !2258, line: 146, type: !26)
!2286 = !DILocalVariable(name: "s24", arg: 6, scope: !2278, file: !2258, line: 146, type: !26)
!2287 = !DILocalVariable(name: "s25", arg: 7, scope: !2278, file: !2258, line: 146, type: !26)
!2288 = !DILocalVariable(name: "s26", arg: 8, scope: !2278, file: !2258, line: 146, type: !26)
!2289 = !DILocalVariable(name: "s27", arg: 9, scope: !2278, file: !2258, line: 146, type: !26)
!2290 = !DILocalVariable(name: "s28", arg: 10, scope: !2278, file: !2258, line: 146, type: !26)
!2291 = !DILocation(line: 0, scope: !2278, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 167, column: 16, scope: !2293, inlinedAt: !2273)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !2258, line: 164, column: 11)
!2294 = distinct !DILexicalBlock(scope: !2276, file: !2258, line: 163, column: 5)
!2295 = !DILocation(line: 148, column: 7, scope: !2296, inlinedAt: !2292)
!2296 = distinct !DILexicalBlock(scope: !2278, file: !2258, line: 148, column: 7)
!2297 = !DILocalVariable(name: "s1", arg: 1, scope: !2298, file: !2258, line: 132, type: !27)
!2298 = distinct !DISubprogram(name: "strcaseeq2", scope: !2258, file: !2258, line: 132, type: !2299, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26}
!2301 = !{!2297, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2302 = !DILocalVariable(name: "s2", arg: 2, scope: !2298, file: !2258, line: 132, type: !27)
!2303 = !DILocalVariable(name: "s22", arg: 3, scope: !2298, file: !2258, line: 132, type: !26)
!2304 = !DILocalVariable(name: "s23", arg: 4, scope: !2298, file: !2258, line: 132, type: !26)
!2305 = !DILocalVariable(name: "s24", arg: 5, scope: !2298, file: !2258, line: 132, type: !26)
!2306 = !DILocalVariable(name: "s25", arg: 6, scope: !2298, file: !2258, line: 132, type: !26)
!2307 = !DILocalVariable(name: "s26", arg: 7, scope: !2298, file: !2258, line: 132, type: !26)
!2308 = !DILocalVariable(name: "s27", arg: 8, scope: !2298, file: !2258, line: 132, type: !26)
!2309 = !DILocalVariable(name: "s28", arg: 9, scope: !2298, file: !2258, line: 132, type: !26)
!2310 = !DILocation(line: 0, scope: !2298, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 153, column: 16, scope: !2312, inlinedAt: !2292)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !2258, line: 150, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2296, file: !2258, line: 149, column: 5)
!2314 = !DILocation(line: 134, column: 7, scope: !2315, inlinedAt: !2311)
!2315 = distinct !DILexicalBlock(scope: !2298, file: !2258, line: 134, column: 7)
!2316 = !DILocalVariable(name: "s1", arg: 1, scope: !2317, file: !2258, line: 118, type: !27)
!2317 = distinct !DISubprogram(name: "strcaseeq3", scope: !2258, file: !2258, line: 118, type: !2318, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26}
!2320 = !{!2316, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2321 = !DILocalVariable(name: "s2", arg: 2, scope: !2317, file: !2258, line: 118, type: !27)
!2322 = !DILocalVariable(name: "s23", arg: 3, scope: !2317, file: !2258, line: 118, type: !26)
!2323 = !DILocalVariable(name: "s24", arg: 4, scope: !2317, file: !2258, line: 118, type: !26)
!2324 = !DILocalVariable(name: "s25", arg: 5, scope: !2317, file: !2258, line: 118, type: !26)
!2325 = !DILocalVariable(name: "s26", arg: 6, scope: !2317, file: !2258, line: 118, type: !26)
!2326 = !DILocalVariable(name: "s27", arg: 7, scope: !2317, file: !2258, line: 118, type: !26)
!2327 = !DILocalVariable(name: "s28", arg: 8, scope: !2317, file: !2258, line: 118, type: !26)
!2328 = !DILocation(line: 0, scope: !2317, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 139, column: 16, scope: !2330, inlinedAt: !2311)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2258, line: 136, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2315, file: !2258, line: 135, column: 5)
!2332 = !DILocation(line: 120, column: 7, scope: !2333, inlinedAt: !2329)
!2333 = distinct !DILexicalBlock(scope: !2317, file: !2258, line: 120, column: 7)
!2334 = !DILocation(line: 120, column: 7, scope: !2317, inlinedAt: !2329)
!2335 = !DILocalVariable(name: "s1", arg: 1, scope: !2336, file: !2258, line: 104, type: !27)
!2336 = distinct !DISubprogram(name: "strcaseeq4", scope: !2258, file: !2258, line: 104, type: !2337, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!29, !27, !27, !26, !26, !26, !26, !26}
!2339 = !{!2335, !2340, !2341, !2342, !2343, !2344, !2345}
!2340 = !DILocalVariable(name: "s2", arg: 2, scope: !2336, file: !2258, line: 104, type: !27)
!2341 = !DILocalVariable(name: "s24", arg: 3, scope: !2336, file: !2258, line: 104, type: !26)
!2342 = !DILocalVariable(name: "s25", arg: 4, scope: !2336, file: !2258, line: 104, type: !26)
!2343 = !DILocalVariable(name: "s26", arg: 5, scope: !2336, file: !2258, line: 104, type: !26)
!2344 = !DILocalVariable(name: "s27", arg: 6, scope: !2336, file: !2258, line: 104, type: !26)
!2345 = !DILocalVariable(name: "s28", arg: 7, scope: !2336, file: !2258, line: 104, type: !26)
!2346 = !DILocation(line: 0, scope: !2336, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 125, column: 16, scope: !2348, inlinedAt: !2329)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2258, line: 122, column: 11)
!2349 = distinct !DILexicalBlock(scope: !2333, file: !2258, line: 121, column: 5)
!2350 = !DILocation(line: 106, column: 7, scope: !2351, inlinedAt: !2347)
!2351 = distinct !DILexicalBlock(scope: !2336, file: !2258, line: 106, column: 7)
!2352 = !DILocation(line: 106, column: 7, scope: !2336, inlinedAt: !2347)
!2353 = !DILocalVariable(name: "s1", arg: 1, scope: !2354, file: !2258, line: 90, type: !27)
!2354 = distinct !DISubprogram(name: "strcaseeq5", scope: !2258, file: !2258, line: 90, type: !2355, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!29, !27, !27, !26, !26, !26, !26}
!2357 = !{!2353, !2358, !2359, !2360, !2361, !2362}
!2358 = !DILocalVariable(name: "s2", arg: 2, scope: !2354, file: !2258, line: 90, type: !27)
!2359 = !DILocalVariable(name: "s25", arg: 3, scope: !2354, file: !2258, line: 90, type: !26)
!2360 = !DILocalVariable(name: "s26", arg: 4, scope: !2354, file: !2258, line: 90, type: !26)
!2361 = !DILocalVariable(name: "s27", arg: 5, scope: !2354, file: !2258, line: 90, type: !26)
!2362 = !DILocalVariable(name: "s28", arg: 6, scope: !2354, file: !2258, line: 90, type: !26)
!2363 = !DILocation(line: 0, scope: !2354, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 111, column: 16, scope: !2365, inlinedAt: !2347)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !2258, line: 108, column: 11)
!2366 = distinct !DILexicalBlock(scope: !2351, file: !2258, line: 107, column: 5)
!2367 = !DILocation(line: 92, column: 7, scope: !2368, inlinedAt: !2364)
!2368 = distinct !DILexicalBlock(scope: !2354, file: !2258, line: 92, column: 7)
!2369 = !DILocation(line: 92, column: 7, scope: !2354, inlinedAt: !2364)
!2370 = !DILocation(line: 235, column: 12, scope: !2274)
!2371 = !DILocation(line: 235, column: 21, scope: !2274)
!2372 = !DILocation(line: 235, column: 5, scope: !2274)
!2373 = !DILocation(line: 0, scope: !2278, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 167, column: 16, scope: !2293, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 236, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2242, file: !298, line: 236, column: 7)
!2377 = !DILocation(line: 148, column: 7, scope: !2296, inlinedAt: !2374)
!2378 = !DILocation(line: 0, scope: !2298, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 153, column: 16, scope: !2312, inlinedAt: !2374)
!2380 = !DILocation(line: 134, column: 7, scope: !2315, inlinedAt: !2379)
!2381 = !DILocation(line: 134, column: 7, scope: !2298, inlinedAt: !2379)
!2382 = !DILocation(line: 0, scope: !2317, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 139, column: 16, scope: !2330, inlinedAt: !2379)
!2384 = !DILocation(line: 120, column: 7, scope: !2333, inlinedAt: !2383)
!2385 = !DILocation(line: 120, column: 7, scope: !2317, inlinedAt: !2383)
!2386 = !DILocation(line: 0, scope: !2336, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 125, column: 16, scope: !2348, inlinedAt: !2383)
!2388 = !DILocation(line: 106, column: 7, scope: !2351, inlinedAt: !2387)
!2389 = !DILocation(line: 106, column: 7, scope: !2336, inlinedAt: !2387)
!2390 = !DILocation(line: 0, scope: !2354, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 111, column: 16, scope: !2365, inlinedAt: !2387)
!2392 = !DILocation(line: 92, column: 7, scope: !2368, inlinedAt: !2391)
!2393 = !DILocation(line: 92, column: 7, scope: !2354, inlinedAt: !2391)
!2394 = !DILocalVariable(name: "s1", arg: 1, scope: !2395, file: !2258, line: 76, type: !27)
!2395 = distinct !DISubprogram(name: "strcaseeq6", scope: !2258, file: !2258, line: 76, type: !2396, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!29, !27, !27, !26, !26, !26}
!2398 = !{!2394, !2399, !2400, !2401, !2402}
!2399 = !DILocalVariable(name: "s2", arg: 2, scope: !2395, file: !2258, line: 76, type: !27)
!2400 = !DILocalVariable(name: "s26", arg: 3, scope: !2395, file: !2258, line: 76, type: !26)
!2401 = !DILocalVariable(name: "s27", arg: 4, scope: !2395, file: !2258, line: 76, type: !26)
!2402 = !DILocalVariable(name: "s28", arg: 5, scope: !2395, file: !2258, line: 76, type: !26)
!2403 = !DILocation(line: 0, scope: !2395, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 97, column: 16, scope: !2405, inlinedAt: !2391)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !2258, line: 94, column: 11)
!2406 = distinct !DILexicalBlock(scope: !2368, file: !2258, line: 93, column: 5)
!2407 = !DILocation(line: 78, column: 7, scope: !2408, inlinedAt: !2404)
!2408 = distinct !DILexicalBlock(scope: !2395, file: !2258, line: 78, column: 7)
!2409 = !DILocation(line: 78, column: 7, scope: !2395, inlinedAt: !2404)
!2410 = !DILocalVariable(name: "s1", arg: 1, scope: !2411, file: !2258, line: 62, type: !27)
!2411 = distinct !DISubprogram(name: "strcaseeq7", scope: !2258, file: !2258, line: 62, type: !2412, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!29, !27, !27, !26, !26}
!2414 = !{!2410, !2415, !2416, !2417}
!2415 = !DILocalVariable(name: "s2", arg: 2, scope: !2411, file: !2258, line: 62, type: !27)
!2416 = !DILocalVariable(name: "s27", arg: 3, scope: !2411, file: !2258, line: 62, type: !26)
!2417 = !DILocalVariable(name: "s28", arg: 4, scope: !2411, file: !2258, line: 62, type: !26)
!2418 = !DILocation(line: 0, scope: !2411, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 83, column: 16, scope: !2420, inlinedAt: !2404)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !2258, line: 80, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2408, file: !2258, line: 79, column: 5)
!2422 = !DILocation(line: 64, column: 7, scope: !2423, inlinedAt: !2419)
!2423 = distinct !DILexicalBlock(scope: !2411, file: !2258, line: 64, column: 7)
!2424 = !DILocation(line: 236, column: 7, scope: !2242)
!2425 = !DILocation(line: 237, column: 12, scope: !2376)
!2426 = !DILocation(line: 237, column: 21, scope: !2376)
!2427 = !DILocation(line: 237, column: 5, scope: !2376)
!2428 = !DILocation(line: 239, column: 13, scope: !2242)
!2429 = !DILocation(line: 239, column: 11, scope: !2242)
!2430 = !DILocation(line: 239, column: 3, scope: !2242)
!2431 = !DILocation(line: 240, column: 1, scope: !2242)
!2432 = distinct !DISubprogram(name: "quotearg_alloc", scope: !298, file: !298, line: 799, type: !2433, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!25, !27, !84, !331}
!2435 = !{!2436, !2437, !2438}
!2436 = !DILocalVariable(name: "arg", arg: 1, scope: !2432, file: !298, line: 799, type: !27)
!2437 = !DILocalVariable(name: "argsize", arg: 2, scope: !2432, file: !298, line: 799, type: !84)
!2438 = !DILocalVariable(name: "o", arg: 3, scope: !2432, file: !298, line: 800, type: !331)
!2439 = !DILocation(line: 0, scope: !2432)
!2440 = !DILocalVariable(name: "arg", arg: 1, scope: !2441, file: !298, line: 812, type: !27)
!2441 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !298, file: !298, line: 812, type: !2442, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!25, !27, !84, !521, !331}
!2444 = !{!2440, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2445 = !DILocalVariable(name: "argsize", arg: 2, scope: !2441, file: !298, line: 812, type: !84)
!2446 = !DILocalVariable(name: "size", arg: 3, scope: !2441, file: !298, line: 812, type: !521)
!2447 = !DILocalVariable(name: "o", arg: 4, scope: !2441, file: !298, line: 813, type: !331)
!2448 = !DILocalVariable(name: "p", scope: !2441, file: !298, line: 815, type: !331)
!2449 = !DILocalVariable(name: "e", scope: !2441, file: !298, line: 816, type: !29)
!2450 = !DILocalVariable(name: "flags", scope: !2441, file: !298, line: 818, type: !29)
!2451 = !DILocalVariable(name: "bufsize", scope: !2441, file: !298, line: 819, type: !84)
!2452 = !DILocalVariable(name: "buf", scope: !2441, file: !298, line: 823, type: !25)
!2453 = !DILocation(line: 0, scope: !2441, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 802, column: 10, scope: !2432)
!2455 = !DILocation(line: 815, column: 37, scope: !2441, inlinedAt: !2454)
!2456 = !DILocation(line: 816, column: 11, scope: !2441, inlinedAt: !2454)
!2457 = !DILocation(line: 818, column: 18, scope: !2441, inlinedAt: !2454)
!2458 = !DILocation(line: 818, column: 24, scope: !2441, inlinedAt: !2454)
!2459 = !DILocation(line: 819, column: 69, scope: !2441, inlinedAt: !2454)
!2460 = !DILocation(line: 820, column: 53, scope: !2441, inlinedAt: !2454)
!2461 = !DILocation(line: 821, column: 49, scope: !2441, inlinedAt: !2454)
!2462 = !DILocation(line: 822, column: 49, scope: !2441, inlinedAt: !2454)
!2463 = !DILocation(line: 819, column: 20, scope: !2441, inlinedAt: !2454)
!2464 = !DILocation(line: 822, column: 62, scope: !2441, inlinedAt: !2454)
!2465 = !DILocalVariable(name: "n", arg: 1, scope: !2466, file: !322, line: 216, type: !84)
!2466 = distinct !DISubprogram(name: "xcharalloc", scope: !322, file: !322, line: 216, type: !2467, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!25, !84}
!2469 = !{!2465}
!2470 = !DILocation(line: 0, scope: !2466, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 823, column: 15, scope: !2441, inlinedAt: !2454)
!2472 = !DILocation(line: 218, column: 10, scope: !2466, inlinedAt: !2471)
!2473 = !DILocation(line: 824, column: 60, scope: !2441, inlinedAt: !2454)
!2474 = !DILocation(line: 826, column: 32, scope: !2441, inlinedAt: !2454)
!2475 = !DILocation(line: 826, column: 47, scope: !2441, inlinedAt: !2454)
!2476 = !DILocation(line: 824, column: 3, scope: !2441, inlinedAt: !2454)
!2477 = !DILocation(line: 827, column: 9, scope: !2441, inlinedAt: !2454)
!2478 = !DILocation(line: 802, column: 3, scope: !2432)
!2479 = !DILocation(line: 0, scope: !2441)
!2480 = !DILocation(line: 815, column: 37, scope: !2441)
!2481 = !DILocation(line: 816, column: 11, scope: !2441)
!2482 = !DILocation(line: 818, column: 18, scope: !2441)
!2483 = !DILocation(line: 818, column: 27, scope: !2441)
!2484 = !DILocation(line: 818, column: 24, scope: !2441)
!2485 = !DILocation(line: 819, column: 69, scope: !2441)
!2486 = !DILocation(line: 820, column: 53, scope: !2441)
!2487 = !DILocation(line: 821, column: 49, scope: !2441)
!2488 = !DILocation(line: 822, column: 49, scope: !2441)
!2489 = !DILocation(line: 819, column: 20, scope: !2441)
!2490 = !DILocation(line: 822, column: 62, scope: !2441)
!2491 = !DILocation(line: 0, scope: !2466, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 823, column: 15, scope: !2441)
!2493 = !DILocation(line: 218, column: 10, scope: !2466, inlinedAt: !2492)
!2494 = !DILocation(line: 824, column: 60, scope: !2441)
!2495 = !DILocation(line: 826, column: 32, scope: !2441)
!2496 = !DILocation(line: 826, column: 47, scope: !2441)
!2497 = !DILocation(line: 824, column: 3, scope: !2441)
!2498 = !DILocation(line: 827, column: 9, scope: !2441)
!2499 = !DILocation(line: 828, column: 7, scope: !2441)
!2500 = !DILocation(line: 829, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2441, file: !298, line: 828, column: 7)
!2502 = !{!1468, !1468, i64 0}
!2503 = !DILocation(line: 829, column: 5, scope: !2501)
!2504 = !DILocation(line: 830, column: 3, scope: !2441)
!2505 = distinct !DISubprogram(name: "quotearg_free", scope: !298, file: !298, line: 848, type: !111, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "sv", scope: !2505, file: !298, line: 850, type: !406)
!2508 = !DILocalVariable(name: "i", scope: !2505, file: !298, line: 851, type: !29)
!2509 = !DILocation(line: 850, column: 24, scope: !2505)
!2510 = !DILocation(line: 0, scope: !2505)
!2511 = !DILocation(line: 852, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !298, line: 852, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !298, line: 852, column: 3)
!2514 = !DILocation(line: 852, column: 17, scope: !2512)
!2515 = !DILocation(line: 852, column: 3, scope: !2513)
!2516 = !DILocation(line: 853, column: 17, scope: !2512)
!2517 = !{!2518, !1166, i64 8}
!2518 = !{!"slotvec", !1468, i64 0, !1166, i64 8}
!2519 = !DILocation(line: 853, column: 5, scope: !2512)
!2520 = !DILocation(line: 852, column: 28, scope: !2512)
!2521 = distinct !{!2521, !2515, !2522}
!2522 = !DILocation(line: 853, column: 20, scope: !2513)
!2523 = !DILocation(line: 854, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2505, file: !298, line: 854, column: 7)
!2525 = !DILocation(line: 854, column: 17, scope: !2524)
!2526 = !DILocation(line: 854, column: 7, scope: !2505)
!2527 = !DILocation(line: 856, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !298, line: 855, column: 5)
!2529 = !DILocation(line: 857, column: 21, scope: !2528)
!2530 = !{!2518, !1468, i64 0}
!2531 = !DILocation(line: 858, column: 20, scope: !2528)
!2532 = !DILocation(line: 859, column: 5, scope: !2528)
!2533 = !DILocation(line: 860, column: 10, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2505, file: !298, line: 860, column: 7)
!2535 = !DILocation(line: 860, column: 7, scope: !2505)
!2536 = !DILocation(line: 862, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !298, line: 861, column: 5)
!2538 = !DILocation(line: 862, column: 7, scope: !2537)
!2539 = !DILocation(line: 863, column: 15, scope: !2537)
!2540 = !DILocation(line: 864, column: 5, scope: !2537)
!2541 = !DILocation(line: 865, column: 10, scope: !2505)
!2542 = !DILocation(line: 866, column: 1, scope: !2505)
!2543 = distinct !DISubprogram(name: "quotearg_n", scope: !298, file: !298, line: 931, type: !98, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !298, line: 931, type: !29)
!2546 = !DILocalVariable(name: "arg", arg: 2, scope: !2543, file: !298, line: 931, type: !27)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 933, column: 10, scope: !2543)
!2549 = !DILocation(line: 933, column: 3, scope: !2543)
!2550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !298, file: !298, line: 877, type: !2551, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!25, !29, !27, !84, !331}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2563, !2564, !2566, !2567, !2568}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !298, line: 877, type: !29)
!2555 = !DILocalVariable(name: "arg", arg: 2, scope: !2550, file: !298, line: 877, type: !27)
!2556 = !DILocalVariable(name: "argsize", arg: 3, scope: !2550, file: !298, line: 877, type: !84)
!2557 = !DILocalVariable(name: "options", arg: 4, scope: !2550, file: !298, line: 878, type: !331)
!2558 = !DILocalVariable(name: "e", scope: !2550, file: !298, line: 880, type: !29)
!2559 = !DILocalVariable(name: "sv", scope: !2550, file: !298, line: 882, type: !406)
!2560 = !DILocalVariable(name: "preallocated", scope: !2561, file: !298, line: 889, type: !184)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !298, line: 888, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !298, line: 887, column: 7)
!2563 = !DILocalVariable(name: "nmax", scope: !2561, file: !298, line: 890, type: !29)
!2564 = !DILocalVariable(name: "size", scope: !2565, file: !298, line: 903, type: !84)
!2565 = distinct !DILexicalBlock(scope: !2550, file: !298, line: 902, column: 3)
!2566 = !DILocalVariable(name: "val", scope: !2565, file: !298, line: 904, type: !25)
!2567 = !DILocalVariable(name: "flags", scope: !2565, file: !298, line: 906, type: !29)
!2568 = !DILocalVariable(name: "qsize", scope: !2565, file: !298, line: 907, type: !84)
!2569 = !DILocation(line: 0, scope: !2550)
!2570 = !DILocation(line: 880, column: 11, scope: !2550)
!2571 = !DILocation(line: 882, column: 24, scope: !2550)
!2572 = !DILocation(line: 884, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2550, file: !298, line: 884, column: 7)
!2574 = !DILocation(line: 884, column: 7, scope: !2550)
!2575 = !DILocation(line: 885, column: 5, scope: !2573)
!2576 = !DILocation(line: 887, column: 7, scope: !2562)
!2577 = !DILocation(line: 887, column: 14, scope: !2562)
!2578 = !DILocation(line: 887, column: 7, scope: !2550)
!2579 = !DILocation(line: 889, column: 31, scope: !2561)
!2580 = !DILocation(line: 0, scope: !2561)
!2581 = !DILocation(line: 892, column: 16, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2561, file: !298, line: 892, column: 11)
!2583 = !DILocation(line: 892, column: 11, scope: !2561)
!2584 = !DILocation(line: 893, column: 9, scope: !2582)
!2585 = !DILocation(line: 895, column: 32, scope: !2561)
!2586 = !DILocation(line: 895, column: 61, scope: !2561)
!2587 = !DILocation(line: 895, column: 58, scope: !2561)
!2588 = !DILocation(line: 895, column: 66, scope: !2561)
!2589 = !DILocation(line: 895, column: 22, scope: !2561)
!2590 = !DILocation(line: 895, column: 15, scope: !2561)
!2591 = !DILocation(line: 896, column: 11, scope: !2561)
!2592 = !DILocation(line: 897, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2561, file: !298, line: 896, column: 11)
!2594 = !{i64 0, i64 8, !2502, i64 8, i64 8, !1165}
!2595 = !DILocation(line: 897, column: 9, scope: !2593)
!2596 = !DILocation(line: 898, column: 20, scope: !2561)
!2597 = !DILocation(line: 898, column: 18, scope: !2561)
!2598 = !DILocation(line: 898, column: 15, scope: !2561)
!2599 = !DILocation(line: 898, column: 38, scope: !2561)
!2600 = !DILocation(line: 898, column: 31, scope: !2561)
!2601 = !DILocation(line: 898, column: 48, scope: !2561)
!2602 = !DILocation(line: 0, scope: !1999, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 898, column: 7, scope: !2561)
!2604 = !DILocation(line: 71, column: 10, scope: !1999, inlinedAt: !2603)
!2605 = !DILocation(line: 899, column: 14, scope: !2561)
!2606 = !DILocation(line: 900, column: 5, scope: !2561)
!2607 = !DILocation(line: 903, column: 19, scope: !2565)
!2608 = !DILocation(line: 903, column: 25, scope: !2565)
!2609 = !DILocation(line: 0, scope: !2565)
!2610 = !DILocation(line: 904, column: 23, scope: !2565)
!2611 = !DILocation(line: 906, column: 26, scope: !2565)
!2612 = !DILocation(line: 906, column: 32, scope: !2565)
!2613 = !DILocation(line: 908, column: 55, scope: !2565)
!2614 = !DILocation(line: 909, column: 46, scope: !2565)
!2615 = !DILocation(line: 910, column: 55, scope: !2565)
!2616 = !DILocation(line: 911, column: 55, scope: !2565)
!2617 = !DILocation(line: 907, column: 20, scope: !2565)
!2618 = !DILocation(line: 913, column: 14, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2565, file: !298, line: 913, column: 9)
!2620 = !DILocation(line: 913, column: 9, scope: !2565)
!2621 = !DILocation(line: 915, column: 35, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !298, line: 914, column: 7)
!2623 = !DILocation(line: 915, column: 20, scope: !2622)
!2624 = !DILocation(line: 916, column: 17, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !298, line: 916, column: 13)
!2626 = !DILocation(line: 916, column: 13, scope: !2622)
!2627 = !DILocation(line: 917, column: 11, scope: !2625)
!2628 = !DILocation(line: 0, scope: !2466, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 918, column: 27, scope: !2622)
!2630 = !DILocation(line: 218, column: 10, scope: !2466, inlinedAt: !2629)
!2631 = !DILocation(line: 918, column: 19, scope: !2622)
!2632 = !DILocation(line: 919, column: 69, scope: !2622)
!2633 = !DILocation(line: 921, column: 44, scope: !2622)
!2634 = !DILocation(line: 922, column: 44, scope: !2622)
!2635 = !DILocation(line: 919, column: 9, scope: !2622)
!2636 = !DILocation(line: 923, column: 7, scope: !2622)
!2637 = !DILocation(line: 925, column: 11, scope: !2565)
!2638 = !DILocation(line: 926, column: 5, scope: !2565)
!2639 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !298, file: !298, line: 937, type: !2640, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!25, !29, !27, !84}
!2642 = !{!2643, !2644, !2645}
!2643 = !DILocalVariable(name: "n", arg: 1, scope: !2639, file: !298, line: 937, type: !29)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !298, line: 937, type: !27)
!2645 = !DILocalVariable(name: "argsize", arg: 3, scope: !2639, file: !298, line: 937, type: !84)
!2646 = !DILocation(line: 0, scope: !2639)
!2647 = !DILocation(line: 939, column: 10, scope: !2639)
!2648 = !DILocation(line: 939, column: 3, scope: !2639)
!2649 = distinct !DISubprogram(name: "quotearg", scope: !298, file: !298, line: 943, type: !104, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2650)
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !298, line: 943, type: !27)
!2652 = !DILocation(line: 0, scope: !2649)
!2653 = !DILocation(line: 0, scope: !2543, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 945, column: 10, scope: !2649)
!2655 = !DILocation(line: 933, column: 10, scope: !2543, inlinedAt: !2654)
!2656 = !DILocation(line: 945, column: 3, scope: !2649)
!2657 = distinct !DISubprogram(name: "quotearg_mem", scope: !298, file: !298, line: 949, type: !2658, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!25, !27, !84}
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2657, file: !298, line: 949, type: !27)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2657, file: !298, line: 949, type: !84)
!2663 = !DILocation(line: 0, scope: !2657)
!2664 = !DILocation(line: 0, scope: !2639, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 951, column: 10, scope: !2657)
!2666 = !DILocation(line: 939, column: 10, scope: !2639, inlinedAt: !2665)
!2667 = !DILocation(line: 951, column: 3, scope: !2657)
!2668 = distinct !DISubprogram(name: "quotearg_n_style", scope: !298, file: !298, line: 955, type: !2669, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!25, !29, !5, !27}
!2671 = !{!2672, !2673, !2674, !2675}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !298, line: 955, type: !29)
!2673 = !DILocalVariable(name: "s", arg: 2, scope: !2668, file: !298, line: 955, type: !5)
!2674 = !DILocalVariable(name: "arg", arg: 3, scope: !2668, file: !298, line: 955, type: !27)
!2675 = !DILocalVariable(name: "o", scope: !2668, file: !298, line: 957, type: !332)
!2676 = !DILocation(line: 0, scope: !2668)
!2677 = !DILocation(line: 957, column: 3, scope: !2668)
!2678 = !DILocation(line: 957, column: 32, scope: !2668)
!2679 = !DILocalVariable(name: "style", arg: 1, scope: !2680, file: !298, line: 193, type: !5)
!2680 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !298, file: !298, line: 193, type: !2681, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!333, !5}
!2683 = !{!2679, !2684}
!2684 = !DILocalVariable(name: "o", scope: !2680, file: !298, line: 195, type: !333)
!2685 = !DILocation(line: 0, scope: !2680, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 957, column: 36, scope: !2668)
!2687 = !DILocation(line: 195, column: 26, scope: !2680, inlinedAt: !2686)
!2688 = !{!2689}
!2689 = distinct !{!2689, !2690, !"quoting_options_from_style: argument 0"}
!2690 = distinct !{!2690, !"quoting_options_from_style"}
!2691 = !DILocation(line: 196, column: 13, scope: !2692, inlinedAt: !2686)
!2692 = distinct !DILexicalBlock(scope: !2680, file: !298, line: 196, column: 7)
!2693 = !DILocation(line: 196, column: 7, scope: !2680, inlinedAt: !2686)
!2694 = !DILocation(line: 197, column: 5, scope: !2692, inlinedAt: !2686)
!2695 = !DILocation(line: 198, column: 5, scope: !2680, inlinedAt: !2686)
!2696 = !DILocation(line: 198, column: 11, scope: !2680, inlinedAt: !2686)
!2697 = !DILocation(line: 958, column: 10, scope: !2668)
!2698 = !DILocation(line: 959, column: 1, scope: !2668)
!2699 = !DILocation(line: 958, column: 3, scope: !2668)
!2700 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !298, file: !298, line: 962, type: !2701, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!25, !29, !5, !27, !84}
!2703 = !{!2704, !2705, !2706, !2707, !2708}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !298, line: 962, type: !29)
!2705 = !DILocalVariable(name: "s", arg: 2, scope: !2700, file: !298, line: 962, type: !5)
!2706 = !DILocalVariable(name: "arg", arg: 3, scope: !2700, file: !298, line: 963, type: !27)
!2707 = !DILocalVariable(name: "argsize", arg: 4, scope: !2700, file: !298, line: 963, type: !84)
!2708 = !DILocalVariable(name: "o", scope: !2700, file: !298, line: 965, type: !332)
!2709 = !DILocation(line: 0, scope: !2700)
!2710 = !DILocation(line: 965, column: 3, scope: !2700)
!2711 = !DILocation(line: 965, column: 32, scope: !2700)
!2712 = !DILocation(line: 0, scope: !2680, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 965, column: 36, scope: !2700)
!2714 = !DILocation(line: 195, column: 26, scope: !2680, inlinedAt: !2713)
!2715 = !{!2716}
!2716 = distinct !{!2716, !2717, !"quoting_options_from_style: argument 0"}
!2717 = distinct !{!2717, !"quoting_options_from_style"}
!2718 = !DILocation(line: 196, column: 13, scope: !2692, inlinedAt: !2713)
!2719 = !DILocation(line: 196, column: 7, scope: !2680, inlinedAt: !2713)
!2720 = !DILocation(line: 197, column: 5, scope: !2692, inlinedAt: !2713)
!2721 = !DILocation(line: 198, column: 5, scope: !2680, inlinedAt: !2713)
!2722 = !DILocation(line: 198, column: 11, scope: !2680, inlinedAt: !2713)
!2723 = !DILocation(line: 966, column: 10, scope: !2700)
!2724 = !DILocation(line: 967, column: 1, scope: !2700)
!2725 = !DILocation(line: 966, column: 3, scope: !2700)
!2726 = distinct !DISubprogram(name: "quotearg_style", scope: !298, file: !298, line: 970, type: !137, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2727)
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "s", arg: 1, scope: !2726, file: !298, line: 970, type: !5)
!2729 = !DILocalVariable(name: "arg", arg: 2, scope: !2726, file: !298, line: 970, type: !27)
!2730 = !DILocation(line: 195, column: 26, scope: !2680, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 957, column: 36, scope: !2668, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 972, column: 10, scope: !2726)
!2733 = !DILocation(line: 957, column: 32, scope: !2668, inlinedAt: !2732)
!2734 = !DILocation(line: 0, scope: !2726)
!2735 = !DILocation(line: 0, scope: !2668, inlinedAt: !2732)
!2736 = !DILocation(line: 957, column: 3, scope: !2668, inlinedAt: !2732)
!2737 = !DILocation(line: 0, scope: !2680, inlinedAt: !2731)
!2738 = !{!2739}
!2739 = distinct !{!2739, !2740, !"quoting_options_from_style: argument 0"}
!2740 = distinct !{!2740, !"quoting_options_from_style"}
!2741 = !DILocation(line: 196, column: 13, scope: !2692, inlinedAt: !2731)
!2742 = !DILocation(line: 196, column: 7, scope: !2680, inlinedAt: !2731)
!2743 = !DILocation(line: 197, column: 5, scope: !2692, inlinedAt: !2731)
!2744 = !DILocation(line: 198, column: 5, scope: !2680, inlinedAt: !2731)
!2745 = !DILocation(line: 198, column: 11, scope: !2680, inlinedAt: !2731)
!2746 = !DILocation(line: 958, column: 10, scope: !2668, inlinedAt: !2732)
!2747 = !DILocation(line: 959, column: 1, scope: !2668, inlinedAt: !2732)
!2748 = !DILocation(line: 972, column: 3, scope: !2726)
!2749 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !298, file: !298, line: 976, type: !2750, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!25, !5, !27, !84}
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "s", arg: 1, scope: !2749, file: !298, line: 976, type: !5)
!2754 = !DILocalVariable(name: "arg", arg: 2, scope: !2749, file: !298, line: 976, type: !27)
!2755 = !DILocalVariable(name: "argsize", arg: 3, scope: !2749, file: !298, line: 976, type: !84)
!2756 = !DILocation(line: 195, column: 26, scope: !2680, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 965, column: 36, scope: !2700, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 978, column: 10, scope: !2749)
!2759 = !DILocation(line: 965, column: 32, scope: !2700, inlinedAt: !2758)
!2760 = !DILocation(line: 0, scope: !2749)
!2761 = !DILocation(line: 0, scope: !2700, inlinedAt: !2758)
!2762 = !DILocation(line: 965, column: 3, scope: !2700, inlinedAt: !2758)
!2763 = !DILocation(line: 0, scope: !2680, inlinedAt: !2757)
!2764 = !{!2765}
!2765 = distinct !{!2765, !2766, !"quoting_options_from_style: argument 0"}
!2766 = distinct !{!2766, !"quoting_options_from_style"}
!2767 = !DILocation(line: 196, column: 13, scope: !2692, inlinedAt: !2757)
!2768 = !DILocation(line: 196, column: 7, scope: !2680, inlinedAt: !2757)
!2769 = !DILocation(line: 197, column: 5, scope: !2692, inlinedAt: !2757)
!2770 = !DILocation(line: 198, column: 5, scope: !2680, inlinedAt: !2757)
!2771 = !DILocation(line: 198, column: 11, scope: !2680, inlinedAt: !2757)
!2772 = !DILocation(line: 966, column: 10, scope: !2700, inlinedAt: !2758)
!2773 = !DILocation(line: 967, column: 1, scope: !2700, inlinedAt: !2758)
!2774 = !DILocation(line: 978, column: 3, scope: !2749)
!2775 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !298, file: !298, line: 982, type: !2776, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!25, !27, !84, !26}
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "arg", arg: 1, scope: !2775, file: !298, line: 982, type: !27)
!2780 = !DILocalVariable(name: "argsize", arg: 2, scope: !2775, file: !298, line: 982, type: !84)
!2781 = !DILocalVariable(name: "ch", arg: 3, scope: !2775, file: !298, line: 982, type: !26)
!2782 = !DILocalVariable(name: "options", scope: !2775, file: !298, line: 984, type: !333)
!2783 = !DILocation(line: 0, scope: !2775)
!2784 = !DILocation(line: 984, column: 3, scope: !2775)
!2785 = !DILocation(line: 984, column: 26, scope: !2775)
!2786 = !DILocation(line: 985, column: 13, scope: !2775)
!2787 = !{i64 0, i64 4, !1296, i64 4, i64 4, !1243, i64 8, i64 32, !1296, i64 40, i64 8, !1165, i64 48, i64 8, !1165}
!2788 = !DILocation(line: 0, scope: !1613, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 986, column: 3, scope: !2775)
!2790 = !DILocation(line: 156, column: 62, scope: !1613, inlinedAt: !2789)
!2791 = !DILocation(line: 156, column: 57, scope: !1613, inlinedAt: !2789)
!2792 = !DILocation(line: 157, column: 15, scope: !1613, inlinedAt: !2789)
!2793 = !DILocation(line: 158, column: 12, scope: !1613, inlinedAt: !2789)
!2794 = !DILocation(line: 158, column: 15, scope: !1613, inlinedAt: !2789)
!2795 = !DILocation(line: 158, column: 25, scope: !1613, inlinedAt: !2789)
!2796 = !DILocation(line: 159, column: 18, scope: !1613, inlinedAt: !2789)
!2797 = !DILocation(line: 159, column: 23, scope: !1613, inlinedAt: !2789)
!2798 = !DILocation(line: 159, column: 6, scope: !1613, inlinedAt: !2789)
!2799 = !DILocation(line: 987, column: 10, scope: !2775)
!2800 = !DILocation(line: 988, column: 1, scope: !2775)
!2801 = !DILocation(line: 987, column: 3, scope: !2775)
!2802 = distinct !DISubprogram(name: "quotearg_char", scope: !298, file: !298, line: 991, type: !2803, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!25, !27, !26}
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "arg", arg: 1, scope: !2802, file: !298, line: 991, type: !27)
!2807 = !DILocalVariable(name: "ch", arg: 2, scope: !2802, file: !298, line: 991, type: !26)
!2808 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 993, column: 10, scope: !2802)
!2810 = !DILocation(line: 0, scope: !2802)
!2811 = !DILocation(line: 0, scope: !2775, inlinedAt: !2809)
!2812 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2809)
!2813 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2809)
!2814 = !DILocation(line: 0, scope: !1613, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2809)
!2816 = !DILocation(line: 156, column: 62, scope: !1613, inlinedAt: !2815)
!2817 = !DILocation(line: 156, column: 57, scope: !1613, inlinedAt: !2815)
!2818 = !DILocation(line: 157, column: 15, scope: !1613, inlinedAt: !2815)
!2819 = !DILocation(line: 158, column: 12, scope: !1613, inlinedAt: !2815)
!2820 = !DILocation(line: 158, column: 15, scope: !1613, inlinedAt: !2815)
!2821 = !DILocation(line: 158, column: 25, scope: !1613, inlinedAt: !2815)
!2822 = !DILocation(line: 159, column: 18, scope: !1613, inlinedAt: !2815)
!2823 = !DILocation(line: 159, column: 23, scope: !1613, inlinedAt: !2815)
!2824 = !DILocation(line: 159, column: 6, scope: !1613, inlinedAt: !2815)
!2825 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2809)
!2826 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2809)
!2827 = !DILocation(line: 993, column: 3, scope: !2802)
!2828 = distinct !DISubprogram(name: "quotearg_colon", scope: !298, file: !298, line: 997, type: !104, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2829)
!2829 = !{!2830}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !298, line: 997, type: !27)
!2831 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 993, column: 10, scope: !2802, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 999, column: 10, scope: !2828)
!2834 = !DILocation(line: 0, scope: !2828)
!2835 = !DILocation(line: 0, scope: !2802, inlinedAt: !2833)
!2836 = !DILocation(line: 0, scope: !2775, inlinedAt: !2832)
!2837 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2832)
!2838 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2832)
!2839 = !DILocation(line: 0, scope: !1613, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2832)
!2841 = !DILocation(line: 156, column: 57, scope: !1613, inlinedAt: !2840)
!2842 = !DILocation(line: 158, column: 12, scope: !1613, inlinedAt: !2840)
!2843 = !DILocation(line: 159, column: 6, scope: !1613, inlinedAt: !2840)
!2844 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2832)
!2845 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2832)
!2846 = !DILocation(line: 999, column: 3, scope: !2828)
!2847 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !298, file: !298, line: 1003, type: !2658, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2848)
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !298, line: 1003, type: !27)
!2850 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !298, line: 1003, type: !84)
!2851 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1005, column: 10, scope: !2847)
!2853 = !DILocation(line: 0, scope: !2847)
!2854 = !DILocation(line: 0, scope: !2775, inlinedAt: !2852)
!2855 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2852)
!2856 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2852)
!2857 = !DILocation(line: 0, scope: !1613, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2852)
!2859 = !DILocation(line: 156, column: 57, scope: !1613, inlinedAt: !2858)
!2860 = !DILocation(line: 158, column: 12, scope: !1613, inlinedAt: !2858)
!2861 = !DILocation(line: 159, column: 6, scope: !1613, inlinedAt: !2858)
!2862 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2852)
!2863 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2852)
!2864 = !DILocation(line: 1005, column: 3, scope: !2847)
!2865 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !298, file: !298, line: 1009, type: !2669, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869, !2870}
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !298, line: 1009, type: !29)
!2868 = !DILocalVariable(name: "s", arg: 2, scope: !2865, file: !298, line: 1009, type: !5)
!2869 = !DILocalVariable(name: "arg", arg: 3, scope: !2865, file: !298, line: 1009, type: !27)
!2870 = !DILocalVariable(name: "options", scope: !2865, file: !298, line: 1011, type: !333)
!2871 = !DILocation(line: 195, column: 26, scope: !2680, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1012, column: 13, scope: !2865)
!2873 = !DILocation(line: 0, scope: !2865)
!2874 = !DILocation(line: 1011, column: 3, scope: !2865)
!2875 = !DILocation(line: 1011, column: 26, scope: !2865)
!2876 = !DILocation(line: 1012, column: 13, scope: !2865)
!2877 = !DILocation(line: 0, scope: !2680, inlinedAt: !2872)
!2878 = !{!2879}
!2879 = distinct !{!2879, !2880, !"quoting_options_from_style: argument 0"}
!2880 = distinct !{!2880, !"quoting_options_from_style"}
!2881 = !DILocation(line: 196, column: 13, scope: !2692, inlinedAt: !2872)
!2882 = !DILocation(line: 196, column: 7, scope: !2680, inlinedAt: !2872)
!2883 = !DILocation(line: 197, column: 5, scope: !2692, inlinedAt: !2872)
!2884 = !DILocation(line: 0, scope: !1613, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1013, column: 3, scope: !2865)
!2886 = !DILocation(line: 156, column: 57, scope: !1613, inlinedAt: !2885)
!2887 = !DILocation(line: 158, column: 12, scope: !1613, inlinedAt: !2885)
!2888 = !DILocation(line: 159, column: 6, scope: !1613, inlinedAt: !2885)
!2889 = !DILocation(line: 1014, column: 10, scope: !2865)
!2890 = !DILocation(line: 1015, column: 1, scope: !2865)
!2891 = !DILocation(line: 1014, column: 3, scope: !2865)
!2892 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !298, file: !298, line: 1018, type: !2893, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!25, !29, !27, !27, !27}
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !298, line: 1018, type: !29)
!2897 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2892, file: !298, line: 1018, type: !27)
!2898 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2892, file: !298, line: 1019, type: !27)
!2899 = !DILocalVariable(name: "arg", arg: 4, scope: !2892, file: !298, line: 1019, type: !27)
!2900 = !DILocalVariable(name: "o", scope: !2901, file: !298, line: 1030, type: !333)
!2901 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !298, file: !298, line: 1026, type: !2902, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!25, !29, !27, !27, !27, !84}
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2900}
!2905 = !DILocalVariable(name: "n", arg: 1, scope: !2901, file: !298, line: 1026, type: !29)
!2906 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2901, file: !298, line: 1026, type: !27)
!2907 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2901, file: !298, line: 1027, type: !27)
!2908 = !DILocalVariable(name: "arg", arg: 4, scope: !2901, file: !298, line: 1028, type: !27)
!2909 = !DILocalVariable(name: "argsize", arg: 5, scope: !2901, file: !298, line: 1028, type: !84)
!2910 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 1021, column: 10, scope: !2892)
!2912 = !DILocation(line: 0, scope: !2892)
!2913 = !DILocation(line: 0, scope: !2901, inlinedAt: !2911)
!2914 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2911)
!2915 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2911)
!2916 = !DILocation(line: 0, scope: !1653, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2911)
!2918 = !DILocation(line: 184, column: 6, scope: !1653, inlinedAt: !2917)
!2919 = !DILocation(line: 184, column: 12, scope: !1653, inlinedAt: !2917)
!2920 = !DILocation(line: 185, column: 8, scope: !1667, inlinedAt: !2917)
!2921 = !DILocation(line: 185, column: 23, scope: !1667, inlinedAt: !2917)
!2922 = !DILocation(line: 185, column: 19, scope: !1667, inlinedAt: !2917)
!2923 = !DILocation(line: 186, column: 5, scope: !1667, inlinedAt: !2917)
!2924 = !DILocation(line: 187, column: 6, scope: !1653, inlinedAt: !2917)
!2925 = !DILocation(line: 187, column: 17, scope: !1653, inlinedAt: !2917)
!2926 = !DILocation(line: 188, column: 6, scope: !1653, inlinedAt: !2917)
!2927 = !DILocation(line: 188, column: 18, scope: !1653, inlinedAt: !2917)
!2928 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2911)
!2929 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2911)
!2930 = !DILocation(line: 1021, column: 3, scope: !2892)
!2931 = !DILocation(line: 0, scope: !2901)
!2932 = !DILocation(line: 1030, column: 3, scope: !2901)
!2933 = !DILocation(line: 1030, column: 26, scope: !2901)
!2934 = !DILocation(line: 1030, column: 30, scope: !2901)
!2935 = !DILocation(line: 0, scope: !1653, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1031, column: 3, scope: !2901)
!2937 = !DILocation(line: 184, column: 6, scope: !1653, inlinedAt: !2936)
!2938 = !DILocation(line: 184, column: 12, scope: !1653, inlinedAt: !2936)
!2939 = !DILocation(line: 185, column: 8, scope: !1667, inlinedAt: !2936)
!2940 = !DILocation(line: 185, column: 23, scope: !1667, inlinedAt: !2936)
!2941 = !DILocation(line: 185, column: 19, scope: !1667, inlinedAt: !2936)
!2942 = !DILocation(line: 186, column: 5, scope: !1667, inlinedAt: !2936)
!2943 = !DILocation(line: 187, column: 6, scope: !1653, inlinedAt: !2936)
!2944 = !DILocation(line: 187, column: 17, scope: !1653, inlinedAt: !2936)
!2945 = !DILocation(line: 188, column: 6, scope: !1653, inlinedAt: !2936)
!2946 = !DILocation(line: 188, column: 18, scope: !1653, inlinedAt: !2936)
!2947 = !DILocation(line: 1032, column: 10, scope: !2901)
!2948 = !DILocation(line: 1033, column: 1, scope: !2901)
!2949 = !DILocation(line: 1032, column: 3, scope: !2901)
!2950 = distinct !DISubprogram(name: "quotearg_custom", scope: !298, file: !298, line: 1036, type: !2951, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!25, !27, !27, !27}
!2953 = !{!2954, !2955, !2956}
!2954 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2950, file: !298, line: 1036, type: !27)
!2955 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2950, file: !298, line: 1036, type: !27)
!2956 = !DILocalVariable(name: "arg", arg: 3, scope: !2950, file: !298, line: 1037, type: !27)
!2957 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 1021, column: 10, scope: !2892, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1039, column: 10, scope: !2950)
!2960 = !DILocation(line: 0, scope: !2950)
!2961 = !DILocation(line: 0, scope: !2892, inlinedAt: !2959)
!2962 = !DILocation(line: 0, scope: !2901, inlinedAt: !2958)
!2963 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2958)
!2964 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2958)
!2965 = !DILocation(line: 0, scope: !1653, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2958)
!2967 = !DILocation(line: 184, column: 6, scope: !1653, inlinedAt: !2966)
!2968 = !DILocation(line: 184, column: 12, scope: !1653, inlinedAt: !2966)
!2969 = !DILocation(line: 185, column: 8, scope: !1667, inlinedAt: !2966)
!2970 = !DILocation(line: 185, column: 23, scope: !1667, inlinedAt: !2966)
!2971 = !DILocation(line: 185, column: 19, scope: !1667, inlinedAt: !2966)
!2972 = !DILocation(line: 186, column: 5, scope: !1667, inlinedAt: !2966)
!2973 = !DILocation(line: 187, column: 6, scope: !1653, inlinedAt: !2966)
!2974 = !DILocation(line: 187, column: 17, scope: !1653, inlinedAt: !2966)
!2975 = !DILocation(line: 188, column: 6, scope: !1653, inlinedAt: !2966)
!2976 = !DILocation(line: 188, column: 18, scope: !1653, inlinedAt: !2966)
!2977 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2958)
!2978 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2958)
!2979 = !DILocation(line: 1039, column: 3, scope: !2950)
!2980 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !298, file: !298, line: 1043, type: !2981, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!25, !27, !27, !27, !84}
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2980, file: !298, line: 1043, type: !27)
!2985 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2980, file: !298, line: 1043, type: !27)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2980, file: !298, line: 1044, type: !27)
!2987 = !DILocalVariable(name: "argsize", arg: 4, scope: !2980, file: !298, line: 1044, type: !84)
!2988 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1046, column: 10, scope: !2980)
!2990 = !DILocation(line: 0, scope: !2980)
!2991 = !DILocation(line: 0, scope: !2901, inlinedAt: !2989)
!2992 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2989)
!2993 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2989)
!2994 = !DILocation(line: 0, scope: !1653, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2989)
!2996 = !DILocation(line: 184, column: 6, scope: !1653, inlinedAt: !2995)
!2997 = !DILocation(line: 184, column: 12, scope: !1653, inlinedAt: !2995)
!2998 = !DILocation(line: 185, column: 8, scope: !1667, inlinedAt: !2995)
!2999 = !DILocation(line: 185, column: 23, scope: !1667, inlinedAt: !2995)
!3000 = !DILocation(line: 185, column: 19, scope: !1667, inlinedAt: !2995)
!3001 = !DILocation(line: 186, column: 5, scope: !1667, inlinedAt: !2995)
!3002 = !DILocation(line: 187, column: 6, scope: !1653, inlinedAt: !2995)
!3003 = !DILocation(line: 187, column: 17, scope: !1653, inlinedAt: !2995)
!3004 = !DILocation(line: 188, column: 6, scope: !1653, inlinedAt: !2995)
!3005 = !DILocation(line: 188, column: 18, scope: !1653, inlinedAt: !2995)
!3006 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2989)
!3007 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2989)
!3008 = !DILocation(line: 1046, column: 3, scope: !2980)
!3009 = distinct !DISubprogram(name: "quote_n_mem", scope: !298, file: !298, line: 1061, type: !3010, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!27, !29, !27, !84}
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !298, line: 1061, type: !29)
!3014 = !DILocalVariable(name: "arg", arg: 2, scope: !3009, file: !298, line: 1061, type: !27)
!3015 = !DILocalVariable(name: "argsize", arg: 3, scope: !3009, file: !298, line: 1061, type: !84)
!3016 = !DILocation(line: 0, scope: !3009)
!3017 = !DILocation(line: 1063, column: 10, scope: !3009)
!3018 = !DILocation(line: 1063, column: 3, scope: !3009)
!3019 = distinct !DISubprogram(name: "quote_mem", scope: !298, file: !298, line: 1067, type: !3020, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!27, !27, !84}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "arg", arg: 1, scope: !3019, file: !298, line: 1067, type: !27)
!3024 = !DILocalVariable(name: "argsize", arg: 2, scope: !3019, file: !298, line: 1067, type: !84)
!3025 = !DILocation(line: 0, scope: !3019)
!3026 = !DILocation(line: 0, scope: !3009, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1069, column: 10, scope: !3019)
!3028 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3027)
!3029 = !DILocation(line: 1069, column: 3, scope: !3019)
!3030 = distinct !DISubprogram(name: "quote_n", scope: !298, file: !298, line: 1073, type: !3031, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!27, !29, !27}
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !298, line: 1073, type: !29)
!3035 = !DILocalVariable(name: "arg", arg: 2, scope: !3030, file: !298, line: 1073, type: !27)
!3036 = !DILocation(line: 0, scope: !3030)
!3037 = !DILocation(line: 0, scope: !3009, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1075, column: 10, scope: !3030)
!3039 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3038)
!3040 = !DILocation(line: 1075, column: 3, scope: !3030)
!3041 = distinct !DISubprogram(name: "quote", scope: !298, file: !298, line: 1079, type: !3042, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!27, !27}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !298, line: 1079, type: !27)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocation(line: 0, scope: !3030, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1081, column: 10, scope: !3041)
!3049 = !DILocation(line: 0, scope: !3009, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1075, column: 10, scope: !3030, inlinedAt: !3048)
!3051 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3050)
!3052 = !DILocation(line: 1081, column: 3, scope: !3041)
!3053 = distinct !DISubprogram(name: "version_etc_arn", scope: !473, file: !473, line: 61, type: !3054, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3059)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3056, !27, !27, !27, !3058, !84}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !483)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065}
!3060 = !DILocalVariable(name: "stream", arg: 1, scope: !3053, file: !473, line: 61, type: !3056)
!3061 = !DILocalVariable(name: "command_name", arg: 2, scope: !3053, file: !473, line: 62, type: !27)
!3062 = !DILocalVariable(name: "package", arg: 3, scope: !3053, file: !473, line: 62, type: !27)
!3063 = !DILocalVariable(name: "version", arg: 4, scope: !3053, file: !473, line: 63, type: !27)
!3064 = !DILocalVariable(name: "authors", arg: 5, scope: !3053, file: !473, line: 64, type: !3058)
!3065 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3053, file: !473, line: 64, type: !84)
!3066 = !DILocation(line: 0, scope: !3053)
!3067 = !DILocation(line: 66, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3053, file: !473, line: 66, column: 7)
!3069 = !DILocation(line: 66, column: 7, scope: !3053)
!3070 = !DILocation(line: 67, column: 5, scope: !3068)
!3071 = !DILocation(line: 69, column: 5, scope: !3068)
!3072 = !DILocation(line: 83, column: 3, scope: !3053)
!3073 = !DILocation(line: 85, column: 3, scope: !3053)
!3074 = !DILocation(line: 88, column: 3, scope: !3053)
!3075 = !DILocation(line: 95, column: 3, scope: !3053)
!3076 = !DILocation(line: 97, column: 3, scope: !3053)
!3077 = !DILocation(line: 105, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3053, file: !473, line: 98, column: 5)
!3079 = !DILocation(line: 106, column: 7, scope: !3078)
!3080 = !DILocation(line: 109, column: 7, scope: !3078)
!3081 = !DILocation(line: 110, column: 7, scope: !3078)
!3082 = !DILocation(line: 113, column: 7, scope: !3078)
!3083 = !DILocation(line: 115, column: 7, scope: !3078)
!3084 = !DILocation(line: 120, column: 7, scope: !3078)
!3085 = !DILocation(line: 122, column: 7, scope: !3078)
!3086 = !DILocation(line: 127, column: 7, scope: !3078)
!3087 = !DILocation(line: 129, column: 7, scope: !3078)
!3088 = !DILocation(line: 134, column: 7, scope: !3078)
!3089 = !DILocation(line: 137, column: 7, scope: !3078)
!3090 = !DILocation(line: 142, column: 7, scope: !3078)
!3091 = !DILocation(line: 145, column: 7, scope: !3078)
!3092 = !DILocation(line: 150, column: 7, scope: !3078)
!3093 = !DILocation(line: 154, column: 7, scope: !3078)
!3094 = !DILocation(line: 159, column: 7, scope: !3078)
!3095 = !DILocation(line: 163, column: 7, scope: !3078)
!3096 = !DILocation(line: 170, column: 7, scope: !3078)
!3097 = !DILocation(line: 174, column: 7, scope: !3078)
!3098 = !DILocation(line: 176, column: 1, scope: !3053)
!3099 = distinct !DISubprogram(name: "version_etc_ar", scope: !473, file: !473, line: 183, type: !3100, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3056, !27, !27, !27, !3058}
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108}
!3103 = !DILocalVariable(name: "stream", arg: 1, scope: !3099, file: !473, line: 183, type: !3056)
!3104 = !DILocalVariable(name: "command_name", arg: 2, scope: !3099, file: !473, line: 184, type: !27)
!3105 = !DILocalVariable(name: "package", arg: 3, scope: !3099, file: !473, line: 184, type: !27)
!3106 = !DILocalVariable(name: "version", arg: 4, scope: !3099, file: !473, line: 185, type: !27)
!3107 = !DILocalVariable(name: "authors", arg: 5, scope: !3099, file: !473, line: 185, type: !3058)
!3108 = !DILocalVariable(name: "n_authors", scope: !3099, file: !473, line: 187, type: !84)
!3109 = !DILocation(line: 0, scope: !3099)
!3110 = !DILocation(line: 189, column: 8, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3099, file: !473, line: 189, column: 3)
!3112 = !DILocation(line: 0, scope: !3111)
!3113 = !DILocation(line: 189, column: 23, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3111, file: !473, line: 189, column: 3)
!3115 = !DILocation(line: 189, column: 3, scope: !3111)
!3116 = !DILocation(line: 189, column: 52, scope: !3114)
!3117 = distinct !{!3117, !3115, !3118}
!3118 = !DILocation(line: 190, column: 5, scope: !3111)
!3119 = !DILocation(line: 191, column: 3, scope: !3099)
!3120 = !DILocation(line: 192, column: 1, scope: !3099)
!3121 = distinct !DISubprogram(name: "version_etc_va", scope: !473, file: !473, line: 199, type: !3122, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3131)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !3056, !27, !27, !27, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !473, line: 192, size: 192, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3130}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3125, file: !473, line: 192, baseType: !7, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3125, file: !473, line: 192, baseType: !7, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3125, file: !473, line: 192, baseType: !82, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3125, file: !473, line: 192, baseType: !82, size: 64, offset: 128)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3132 = !DILocalVariable(name: "stream", arg: 1, scope: !3121, file: !473, line: 199, type: !3056)
!3133 = !DILocalVariable(name: "command_name", arg: 2, scope: !3121, file: !473, line: 200, type: !27)
!3134 = !DILocalVariable(name: "package", arg: 3, scope: !3121, file: !473, line: 200, type: !27)
!3135 = !DILocalVariable(name: "version", arg: 4, scope: !3121, file: !473, line: 201, type: !27)
!3136 = !DILocalVariable(name: "authors", arg: 5, scope: !3121, file: !473, line: 201, type: !3124)
!3137 = !DILocalVariable(name: "n_authors", scope: !3121, file: !473, line: 203, type: !84)
!3138 = !DILocalVariable(name: "authtab", scope: !3121, file: !473, line: 204, type: !3139)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 640, elements: !396)
!3140 = !DILocation(line: 0, scope: !3121)
!3141 = !DILocation(line: 204, column: 3, scope: !3121)
!3142 = !DILocation(line: 204, column: 15, scope: !3121)
!3143 = !DILocation(line: 0, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !473, line: 206, column: 3)
!3145 = distinct !DILexicalBlock(scope: !3121, file: !473, line: 206, column: 3)
!3146 = !DILocation(line: 208, column: 35, scope: !3144)
!3147 = !DILocation(line: 208, column: 14, scope: !3144)
!3148 = !DILocation(line: 208, column: 33, scope: !3144)
!3149 = !DILocation(line: 208, column: 67, scope: !3144)
!3150 = !DILocation(line: 206, column: 3, scope: !3145)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 211, column: 3, scope: !3121)
!3153 = !DILocation(line: 213, column: 1, scope: !3121)
!3154 = distinct !DISubprogram(name: "version_etc", scope: !473, file: !473, line: 230, type: !3155, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3056, !27, !27, !27, null}
!3157 = !{!3158, !3159, !3160, !3161, !3162}
!3158 = !DILocalVariable(name: "stream", arg: 1, scope: !3154, file: !473, line: 230, type: !3056)
!3159 = !DILocalVariable(name: "command_name", arg: 2, scope: !3154, file: !473, line: 231, type: !27)
!3160 = !DILocalVariable(name: "package", arg: 3, scope: !3154, file: !473, line: 231, type: !27)
!3161 = !DILocalVariable(name: "version", arg: 4, scope: !3154, file: !473, line: 232, type: !27)
!3162 = !DILocalVariable(name: "authors", scope: !3154, file: !473, line: 234, type: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 52, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1426, line: 32, baseType: !3165)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !473, line: 234, baseType: !3166)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3125, size: 192, elements: !67)
!3167 = !DILocation(line: 0, scope: !3154)
!3168 = !DILocation(line: 234, column: 3, scope: !3154)
!3169 = !DILocation(line: 234, column: 11, scope: !3154)
!3170 = !DILocation(line: 236, column: 3, scope: !3154)
!3171 = !DILocation(line: 237, column: 3, scope: !3154)
!3172 = !DILocation(line: 238, column: 3, scope: !3154)
!3173 = !DILocation(line: 239, column: 1, scope: !3154)
!3174 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !473, file: !473, line: 242, type: !111, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !30)
!3175 = !DILocation(line: 244, column: 3, scope: !3174)
!3176 = !DILocation(line: 249, column: 3, scope: !3174)
!3177 = !DILocation(line: 255, column: 3, scope: !3174)
!3178 = !DILocation(line: 260, column: 3, scope: !3174)
!3179 = !DILocation(line: 262, column: 1, scope: !3174)
!3180 = distinct !DISubprogram(name: "xnmalloc", scope: !322, file: !322, line: 99, type: !3181, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!82, !84, !84}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !322, line: 99, type: !84)
!3185 = !DILocalVariable(name: "s", arg: 2, scope: !3180, file: !322, line: 99, type: !84)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 101, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3180, file: !322, line: 101, column: 7)
!3189 = !DILocation(line: 101, column: 7, scope: !3180)
!3190 = !DILocation(line: 102, column: 5, scope: !3188)
!3191 = !DILocation(line: 103, column: 21, scope: !3180)
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !515, line: 39, type: !84)
!3193 = distinct !DISubprogram(name: "xmalloc", scope: !515, file: !515, line: 39, type: !3194, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!82, !84}
!3196 = !{!3192, !3197}
!3197 = !DILocalVariable(name: "p", scope: !3193, file: !515, line: 41, type: !82)
!3198 = !DILocation(line: 0, scope: !3193, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 103, column: 10, scope: !3180)
!3200 = !DILocation(line: 41, column: 13, scope: !3193, inlinedAt: !3199)
!3201 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3199)
!3202 = distinct !DILexicalBlock(scope: !3193, file: !515, line: 42, column: 7)
!3203 = !DILocation(line: 42, column: 15, scope: !3202, inlinedAt: !3199)
!3204 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3199)
!3205 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3199)
!3206 = !DILocation(line: 103, column: 3, scope: !3180)
!3207 = !DILocation(line: 0, scope: !3193)
!3208 = !DILocation(line: 41, column: 13, scope: !3193)
!3209 = !DILocation(line: 42, column: 8, scope: !3202)
!3210 = !DILocation(line: 42, column: 15, scope: !3202)
!3211 = !DILocation(line: 42, column: 10, scope: !3202)
!3212 = !DILocation(line: 43, column: 5, scope: !3202)
!3213 = !DILocation(line: 44, column: 3, scope: !3193)
!3214 = distinct !DISubprogram(name: "xnrealloc", scope: !322, file: !322, line: 112, type: !3215, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!82, !82, !84, !84}
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3214, file: !322, line: 112, type: !82)
!3219 = !DILocalVariable(name: "n", arg: 2, scope: !3214, file: !322, line: 112, type: !84)
!3220 = !DILocalVariable(name: "s", arg: 3, scope: !3214, file: !322, line: 112, type: !84)
!3221 = !DILocation(line: 0, scope: !3214)
!3222 = !DILocation(line: 114, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3214, file: !322, line: 114, column: 7)
!3224 = !DILocation(line: 114, column: 7, scope: !3214)
!3225 = !DILocation(line: 115, column: 5, scope: !3223)
!3226 = !DILocation(line: 116, column: 25, scope: !3214)
!3227 = !DILocalVariable(name: "p", arg: 1, scope: !3228, file: !515, line: 51, type: !82)
!3228 = distinct !DISubprogram(name: "xrealloc", scope: !515, file: !515, line: 51, type: !3229, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!82, !82, !84}
!3231 = !{!3227, !3232}
!3232 = !DILocalVariable(name: "n", arg: 2, scope: !3228, file: !515, line: 51, type: !84)
!3233 = !DILocation(line: 0, scope: !3228, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 116, column: 10, scope: !3214)
!3235 = !DILocation(line: 53, column: 8, scope: !3236, inlinedAt: !3234)
!3236 = distinct !DILexicalBlock(scope: !3228, file: !515, line: 53, column: 7)
!3237 = !DILocation(line: 53, column: 13, scope: !3236, inlinedAt: !3234)
!3238 = !DILocation(line: 53, column: 10, scope: !3236, inlinedAt: !3234)
!3239 = !DILocation(line: 57, column: 7, scope: !3240, inlinedAt: !3234)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !515, line: 54, column: 5)
!3241 = !DILocation(line: 58, column: 7, scope: !3240, inlinedAt: !3234)
!3242 = !DILocation(line: 61, column: 7, scope: !3228, inlinedAt: !3234)
!3243 = !DILocation(line: 62, column: 8, scope: !3244, inlinedAt: !3234)
!3244 = distinct !DILexicalBlock(scope: !3228, file: !515, line: 62, column: 7)
!3245 = !DILocation(line: 62, column: 13, scope: !3244, inlinedAt: !3234)
!3246 = !DILocation(line: 62, column: 10, scope: !3244, inlinedAt: !3234)
!3247 = !DILocation(line: 63, column: 5, scope: !3244, inlinedAt: !3234)
!3248 = !DILocation(line: 116, column: 3, scope: !3214)
!3249 = !DILocation(line: 0, scope: !3228)
!3250 = !DILocation(line: 53, column: 8, scope: !3236)
!3251 = !DILocation(line: 53, column: 13, scope: !3236)
!3252 = !DILocation(line: 53, column: 10, scope: !3236)
!3253 = !DILocation(line: 57, column: 7, scope: !3240)
!3254 = !DILocation(line: 58, column: 7, scope: !3240)
!3255 = !DILocation(line: 61, column: 7, scope: !3228)
!3256 = !DILocation(line: 62, column: 8, scope: !3244)
!3257 = !DILocation(line: 62, column: 13, scope: !3244)
!3258 = !DILocation(line: 62, column: 10, scope: !3244)
!3259 = !DILocation(line: 63, column: 5, scope: !3244)
!3260 = !DILocation(line: 65, column: 1, scope: !3228)
!3261 = !DILocation(line: 0, scope: !518)
!3262 = !DILocation(line: 176, column: 14, scope: !518)
!3263 = !DILocation(line: 178, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !518, file: !322, line: 178, column: 7)
!3265 = !DILocation(line: 178, column: 7, scope: !518)
!3266 = !DILocation(line: 180, column: 13, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !322, line: 180, column: 11)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !322, line: 179, column: 5)
!3269 = !DILocation(line: 180, column: 11, scope: !3268)
!3270 = !DILocation(line: 188, column: 30, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !322, line: 181, column: 9)
!3272 = !DILocation(line: 189, column: 16, scope: !3271)
!3273 = !DILocation(line: 189, column: 13, scope: !3271)
!3274 = !DILocation(line: 190, column: 9, scope: !3271)
!3275 = !DILocation(line: 191, column: 11, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3268, file: !322, line: 191, column: 11)
!3277 = !DILocation(line: 191, column: 11, scope: !3268)
!3278 = !DILocation(line: 206, column: 7, scope: !518)
!3279 = !DILocation(line: 207, column: 25, scope: !518)
!3280 = !DILocation(line: 0, scope: !3228, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 207, column: 10, scope: !518)
!3282 = !DILocation(line: 53, column: 10, scope: !3236, inlinedAt: !3281)
!3283 = !DILocation(line: 192, column: 9, scope: !3276)
!3284 = !DILocation(line: 200, column: 69, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !322, line: 200, column: 11)
!3286 = distinct !DILexicalBlock(scope: !3264, file: !322, line: 195, column: 5)
!3287 = !DILocation(line: 201, column: 11, scope: !3285)
!3288 = !DILocation(line: 200, column: 11, scope: !3286)
!3289 = !DILocation(line: 202, column: 9, scope: !3285)
!3290 = !DILocation(line: 203, column: 14, scope: !3286)
!3291 = !DILocation(line: 203, column: 18, scope: !3286)
!3292 = !DILocation(line: 203, column: 9, scope: !3286)
!3293 = !DILocation(line: 53, column: 8, scope: !3236, inlinedAt: !3281)
!3294 = !DILocation(line: 57, column: 7, scope: !3240, inlinedAt: !3281)
!3295 = !DILocation(line: 58, column: 7, scope: !3240, inlinedAt: !3281)
!3296 = !DILocation(line: 61, column: 7, scope: !3228, inlinedAt: !3281)
!3297 = !DILocation(line: 62, column: 8, scope: !3244, inlinedAt: !3281)
!3298 = !DILocation(line: 62, column: 13, scope: !3244, inlinedAt: !3281)
!3299 = !DILocation(line: 62, column: 10, scope: !3244, inlinedAt: !3281)
!3300 = !DILocation(line: 63, column: 5, scope: !3244, inlinedAt: !3281)
!3301 = !DILocation(line: 207, column: 3, scope: !518)
!3302 = distinct !DISubprogram(name: "xcharalloc", scope: !322, file: !322, line: 216, type: !2467, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !322, line: 216, type: !84)
!3305 = !DILocation(line: 0, scope: !3302)
!3306 = !DILocation(line: 0, scope: !3193, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 218, column: 10, scope: !3302)
!3308 = !DILocation(line: 41, column: 13, scope: !3193, inlinedAt: !3307)
!3309 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3307)
!3310 = !DILocation(line: 42, column: 15, scope: !3202, inlinedAt: !3307)
!3311 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3307)
!3312 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3307)
!3313 = !DILocation(line: 218, column: 3, scope: !3302)
!3314 = distinct !DISubprogram(name: "x2realloc", scope: !515, file: !515, line: 74, type: !3315, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!82, !82, !521}
!3317 = !{!3318, !3319}
!3318 = !DILocalVariable(name: "p", arg: 1, scope: !3314, file: !515, line: 74, type: !82)
!3319 = !DILocalVariable(name: "pn", arg: 2, scope: !3314, file: !515, line: 74, type: !521)
!3320 = !DILocation(line: 0, scope: !3314)
!3321 = !DILocation(line: 0, scope: !518, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 76, column: 10, scope: !3314)
!3323 = !DILocation(line: 176, column: 14, scope: !518, inlinedAt: !3322)
!3324 = !DILocation(line: 178, column: 9, scope: !3264, inlinedAt: !3322)
!3325 = !DILocation(line: 178, column: 7, scope: !518, inlinedAt: !3322)
!3326 = !DILocation(line: 180, column: 13, scope: !3267, inlinedAt: !3322)
!3327 = !DILocation(line: 180, column: 11, scope: !3268, inlinedAt: !3322)
!3328 = !DILocation(line: 191, column: 11, scope: !3276, inlinedAt: !3322)
!3329 = !DILocation(line: 191, column: 11, scope: !3268, inlinedAt: !3322)
!3330 = !DILocation(line: 206, column: 7, scope: !518, inlinedAt: !3322)
!3331 = !DILocation(line: 0, scope: !3228, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 207, column: 10, scope: !518, inlinedAt: !3322)
!3333 = !DILocation(line: 53, column: 10, scope: !3236, inlinedAt: !3332)
!3334 = !DILocation(line: 192, column: 9, scope: !3276, inlinedAt: !3322)
!3335 = !DILocation(line: 201, column: 11, scope: !3285, inlinedAt: !3322)
!3336 = !DILocation(line: 200, column: 11, scope: !3286, inlinedAt: !3322)
!3337 = !DILocation(line: 202, column: 9, scope: !3285, inlinedAt: !3322)
!3338 = !DILocation(line: 203, column: 14, scope: !3286, inlinedAt: !3322)
!3339 = !DILocation(line: 203, column: 18, scope: !3286, inlinedAt: !3322)
!3340 = !DILocation(line: 203, column: 9, scope: !3286, inlinedAt: !3322)
!3341 = !DILocation(line: 53, column: 8, scope: !3236, inlinedAt: !3332)
!3342 = !DILocation(line: 57, column: 7, scope: !3240, inlinedAt: !3332)
!3343 = !DILocation(line: 58, column: 7, scope: !3240, inlinedAt: !3332)
!3344 = !DILocation(line: 61, column: 7, scope: !3228, inlinedAt: !3332)
!3345 = !DILocation(line: 62, column: 8, scope: !3244, inlinedAt: !3332)
!3346 = !DILocation(line: 62, column: 13, scope: !3244, inlinedAt: !3332)
!3347 = !DILocation(line: 62, column: 10, scope: !3244, inlinedAt: !3332)
!3348 = !DILocation(line: 63, column: 5, scope: !3244, inlinedAt: !3332)
!3349 = !DILocation(line: 76, column: 3, scope: !3314)
!3350 = distinct !DISubprogram(name: "xzalloc", scope: !515, file: !515, line: 84, type: !3194, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "n", arg: 1, scope: !3350, file: !515, line: 84, type: !84)
!3353 = !DILocation(line: 0, scope: !3350)
!3354 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !515, line: 93, type: !84)
!3355 = distinct !DISubprogram(name: "xcalloc", scope: !515, file: !515, line: 93, type: !3181, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3356)
!3356 = !{!3354, !3357, !3358}
!3357 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !515, line: 93, type: !84)
!3358 = !DILocalVariable(name: "p", scope: !3355, file: !515, line: 95, type: !82)
!3359 = !DILocation(line: 0, scope: !3355, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 86, column: 10, scope: !3350)
!3361 = !DILocation(line: 100, column: 7, scope: !3362, inlinedAt: !3360)
!3362 = distinct !DILexicalBlock(scope: !3355, file: !515, line: 100, column: 7)
!3363 = !DILocation(line: 101, column: 7, scope: !3362, inlinedAt: !3360)
!3364 = !DILocation(line: 101, column: 18, scope: !3362, inlinedAt: !3360)
!3365 = !DILocation(line: 101, column: 16, scope: !3362, inlinedAt: !3360)
!3366 = !DILocation(line: 100, column: 7, scope: !3355, inlinedAt: !3360)
!3367 = !DILocation(line: 102, column: 5, scope: !3362, inlinedAt: !3360)
!3368 = !DILocation(line: 86, column: 3, scope: !3350)
!3369 = !DILocation(line: 0, scope: !3355)
!3370 = !DILocation(line: 100, column: 7, scope: !3362)
!3371 = !DILocation(line: 101, column: 7, scope: !3362)
!3372 = !DILocation(line: 101, column: 18, scope: !3362)
!3373 = !DILocation(line: 101, column: 16, scope: !3362)
!3374 = !DILocation(line: 100, column: 7, scope: !3355)
!3375 = !DILocation(line: 102, column: 5, scope: !3362)
!3376 = !DILocation(line: 103, column: 3, scope: !3355)
!3377 = distinct !DISubprogram(name: "xmemdup", scope: !515, file: !515, line: 111, type: !3378, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!82, !325, !84}
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "p", arg: 1, scope: !3377, file: !515, line: 111, type: !325)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3377, file: !515, line: 111, type: !84)
!3383 = !DILocation(line: 0, scope: !3377)
!3384 = !DILocation(line: 0, scope: !3193, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 113, column: 18, scope: !3377)
!3386 = !DILocation(line: 41, column: 13, scope: !3193, inlinedAt: !3385)
!3387 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3385)
!3388 = !DILocation(line: 42, column: 15, scope: !3202, inlinedAt: !3385)
!3389 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3385)
!3390 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3385)
!3391 = !DILocalVariable(name: "__dest", arg: 1, scope: !3392, file: !2000, line: 31, type: !3395)
!3392 = distinct !DISubprogram(name: "memcpy", scope: !2000, file: !2000, line: 31, type: !3393, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3397)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!82, !3395, !3396, !84}
!3395 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!3396 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!3397 = !{!3391, !3398, !3399}
!3398 = !DILocalVariable(name: "__src", arg: 2, scope: !3392, file: !2000, line: 31, type: !3396)
!3399 = !DILocalVariable(name: "__len", arg: 3, scope: !3392, file: !2000, line: 31, type: !84)
!3400 = !DILocation(line: 0, scope: !3392, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 113, column: 10, scope: !3377)
!3402 = !DILocation(line: 34, column: 10, scope: !3392, inlinedAt: !3401)
!3403 = !DILocation(line: 113, column: 3, scope: !3377)
!3404 = distinct !DISubprogram(name: "xstrdup", scope: !515, file: !515, line: 119, type: !104, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3405)
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "string", arg: 1, scope: !3404, file: !515, line: 119, type: !27)
!3407 = !DILocation(line: 0, scope: !3404)
!3408 = !DILocation(line: 121, column: 27, scope: !3404)
!3409 = !DILocation(line: 121, column: 43, scope: !3404)
!3410 = !DILocation(line: 0, scope: !3377, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 121, column: 10, scope: !3404)
!3412 = !DILocation(line: 0, scope: !3193, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 113, column: 18, scope: !3377, inlinedAt: !3411)
!3414 = !DILocation(line: 41, column: 13, scope: !3193, inlinedAt: !3413)
!3415 = !DILocation(line: 42, column: 8, scope: !3202, inlinedAt: !3413)
!3416 = !DILocation(line: 42, column: 15, scope: !3202, inlinedAt: !3413)
!3417 = !DILocation(line: 42, column: 10, scope: !3202, inlinedAt: !3413)
!3418 = !DILocation(line: 43, column: 5, scope: !3202, inlinedAt: !3413)
!3419 = !DILocation(line: 0, scope: !3392, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 113, column: 10, scope: !3377, inlinedAt: !3411)
!3421 = !DILocation(line: 34, column: 10, scope: !3392, inlinedAt: !3420)
!3422 = !DILocation(line: 121, column: 3, scope: !3404)
!3423 = distinct !DISubprogram(name: "xalloc_die", scope: !536, file: !536, line: 32, type: !111, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !30)
!3424 = !DILocation(line: 34, column: 10, scope: !3423)
!3425 = !DILocation(line: 34, column: 33, scope: !3423)
!3426 = !DILocation(line: 34, column: 3, scope: !3423)
!3427 = !DILocation(line: 40, column: 3, scope: !3423)
!3428 = distinct !DISubprogram(name: "rpl_calloc", scope: !539, file: !539, line: 42, type: !3181, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !538, retainedNodes: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !539, line: 42, type: !84)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !539, line: 42, type: !84)
!3432 = !DILocalVariable(name: "result", scope: !3428, file: !539, line: 44, type: !82)
!3433 = !DILocalVariable(name: "bytes", scope: !3434, file: !539, line: 56, type: !84)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !539, line: 53, column: 5)
!3435 = distinct !DILexicalBlock(scope: !3428, file: !539, line: 47, column: 7)
!3436 = !DILocation(line: 0, scope: !3428)
!3437 = !DILocation(line: 47, column: 9, scope: !3435)
!3438 = !DILocation(line: 47, column: 19, scope: !3435)
!3439 = !DILocation(line: 47, column: 14, scope: !3435)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 57, column: 21, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3434, file: !539, line: 57, column: 11)
!3443 = !DILocation(line: 57, column: 11, scope: !3434)
!3444 = !DILocation(line: 59, column: 11, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !539, line: 58, column: 9)
!3446 = !DILocation(line: 59, column: 17, scope: !3445)
!3447 = !DILocation(line: 65, column: 12, scope: !3428)
!3448 = !DILocation(line: 72, column: 3, scope: !3428)
!3449 = !DILocation(line: 73, column: 1, scope: !3428)
!3450 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !542, file: !542, line: 86, type: !3451, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3457)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!84, !3453, !27, !84, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1743, line: 6, baseType: !3456)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !355, line: 21, baseType: !548)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463, !3464}
!3458 = !DILocalVariable(name: "pwc", arg: 1, scope: !3450, file: !542, line: 86, type: !3453)
!3459 = !DILocalVariable(name: "s", arg: 2, scope: !3450, file: !542, line: 86, type: !27)
!3460 = !DILocalVariable(name: "n", arg: 3, scope: !3450, file: !542, line: 86, type: !84)
!3461 = !DILocalVariable(name: "ps", arg: 4, scope: !3450, file: !542, line: 86, type: !3454)
!3462 = !DILocalVariable(name: "ret", scope: !3450, file: !542, line: 88, type: !84)
!3463 = !DILocalVariable(name: "wc", scope: !3450, file: !542, line: 89, type: !1747)
!3464 = !DILocalVariable(name: "uc", scope: !3465, file: !542, line: 156, type: !175)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !542, line: 155, column: 5)
!3466 = distinct !DILexicalBlock(scope: !3450, file: !542, line: 154, column: 7)
!3467 = !DILocation(line: 0, scope: !3450)
!3468 = !DILocation(line: 89, column: 3, scope: !3450)
!3469 = !DILocation(line: 105, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3450, file: !542, line: 105, column: 7)
!3471 = !DILocation(line: 105, column: 7, scope: !3450)
!3472 = !DILocation(line: 145, column: 9, scope: !3450)
!3473 = !DILocation(line: 154, column: 19, scope: !3466)
!3474 = !DILocation(line: 154, column: 31, scope: !3466)
!3475 = !DILocation(line: 154, column: 26, scope: !3466)
!3476 = !DILocation(line: 154, column: 41, scope: !3466)
!3477 = !DILocation(line: 154, column: 7, scope: !3450)
!3478 = !DILocation(line: 156, column: 26, scope: !3465)
!3479 = !DILocation(line: 0, scope: !3465)
!3480 = !DILocation(line: 157, column: 14, scope: !3465)
!3481 = !DILocation(line: 157, column: 12, scope: !3465)
!3482 = !DILocation(line: 163, column: 1, scope: !3450)
!3483 = distinct !DISubprogram(name: "close_stream", scope: !561, file: !561, line: 56, type: !3484, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3488)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!29, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !568)
!3488 = !{!3489, !3490, !3492, !3493}
!3489 = !DILocalVariable(name: "stream", arg: 1, scope: !3483, file: !561, line: 56, type: !3486)
!3490 = !DILocalVariable(name: "some_pending", scope: !3483, file: !561, line: 58, type: !3491)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3492 = !DILocalVariable(name: "prev_fail", scope: !3483, file: !561, line: 59, type: !3491)
!3493 = !DILocalVariable(name: "fclose_fail", scope: !3483, file: !561, line: 60, type: !3491)
!3494 = !DILocation(line: 0, scope: !3483)
!3495 = !DILocation(line: 58, column: 30, scope: !3483)
!3496 = !DILocalVariable(name: "__stream", arg: 1, scope: !3497, file: !1458, line: 135, type: !3486)
!3497 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1458, file: !1458, line: 135, type: !3484, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3498)
!3498 = !{!3496}
!3499 = !DILocation(line: 0, scope: !3497, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 59, column: 27, scope: !3483)
!3501 = !DILocation(line: 137, column: 10, scope: !3497, inlinedAt: !3500)
!3502 = !{!1467, !1244, i64 0}
!3503 = !DILocation(line: 59, column: 43, scope: !3483)
!3504 = !DILocation(line: 60, column: 29, scope: !3483)
!3505 = !DILocation(line: 60, column: 45, scope: !3483)
!3506 = !DILocation(line: 70, column: 17, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3483, file: !561, line: 70, column: 7)
!3508 = !DILocation(line: 58, column: 50, scope: !3483)
!3509 = !DILocation(line: 70, column: 33, scope: !3507)
!3510 = !DILocation(line: 70, column: 53, scope: !3507)
!3511 = !DILocation(line: 70, column: 59, scope: !3507)
!3512 = !DILocation(line: 70, column: 7, scope: !3483)
!3513 = !DILocation(line: 72, column: 11, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3507, file: !561, line: 71, column: 5)
!3515 = !DILocation(line: 73, column: 9, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3514, file: !561, line: 72, column: 11)
!3517 = !DILocation(line: 73, column: 15, scope: !3516)
!3518 = !DILocation(line: 78, column: 1, scope: !3483)
!3519 = distinct !DISubprogram(name: "last_component", scope: !600, file: !600, line: 30, type: !104, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !3520)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DILocalVariable(name: "name", arg: 1, scope: !3519, file: !600, line: 30, type: !27)
!3522 = !DILocalVariable(name: "base", scope: !3519, file: !600, line: 32, type: !27)
!3523 = !DILocalVariable(name: "p", scope: !3519, file: !600, line: 33, type: !27)
!3524 = !DILocalVariable(name: "saw_slash", scope: !3519, file: !600, line: 34, type: !184)
!3525 = !DILocation(line: 0, scope: !3519)
!3526 = !DILocation(line: 36, column: 3, scope: !3519)
!3527 = !DILocation(line: 36, column: 10, scope: !3519)
!3528 = !DILocation(line: 37, column: 9, scope: !3519)
!3529 = distinct !{!3529, !3526, !3528}
!3530 = !DILocation(line: 39, column: 18, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !600, line: 39, column: 3)
!3532 = distinct !DILexicalBlock(scope: !3519, file: !600, line: 39, column: 3)
!3533 = !DILocation(line: 32, column: 15, scope: !3519)
!3534 = !DILocation(line: 0, scope: !3532)
!3535 = !DILocation(line: 39, column: 3, scope: !3532)
!3536 = !DILocation(line: 43, column: 16, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !600, line: 43, column: 16)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !600, line: 41, column: 11)
!3539 = distinct !DILexicalBlock(scope: !3531, file: !600, line: 40, column: 5)
!3540 = !DILocation(line: 43, column: 16, scope: !3538)
!3541 = !DILocation(line: 39, column: 23, scope: !3531)
!3542 = !DILocation(line: 39, column: 3, scope: !3531)
!3543 = distinct !{!3543, !3535, !3544}
!3544 = !DILocation(line: 48, column: 5, scope: !3532)
!3545 = !DILocation(line: 50, column: 3, scope: !3519)
!3546 = distinct !DISubprogram(name: "base_len", scope: !600, file: !600, line: 58, type: !3547, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!84, !27}
!3549 = !{!3550, !3551, !3552}
!3550 = !DILocalVariable(name: "name", arg: 1, scope: !3546, file: !600, line: 58, type: !27)
!3551 = !DILocalVariable(name: "len", scope: !3546, file: !600, line: 60, type: !84)
!3552 = !DILocalVariable(name: "prefix_len", scope: !3546, file: !600, line: 61, type: !84)
!3553 = !DILocation(line: 0, scope: !3546)
!3554 = !DILocation(line: 63, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3546, file: !600, line: 63, column: 3)
!3556 = !DILocation(line: 63, column: 8, scope: !3555)
!3557 = !DILocation(line: 0, scope: !3555)
!3558 = !DILocation(line: 63, column: 32, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !600, line: 63, column: 3)
!3560 = !DILocation(line: 63, column: 38, scope: !3559)
!3561 = !DILocation(line: 63, column: 41, scope: !3559)
!3562 = !DILocation(line: 63, column: 3, scope: !3555)
!3563 = distinct !{!3563, !3562, !3564}
!3564 = !DILocation(line: 64, column: 5, scope: !3555)
!3565 = !DILocation(line: 74, column: 3, scope: !3546)
!3566 = distinct !DISubprogram(name: "hard_locale", scope: !603, file: !603, line: 27, type: !558, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3567)
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "category", arg: 1, scope: !3566, file: !603, line: 27, type: !29)
!3569 = !DILocalVariable(name: "locale", scope: !3566, file: !603, line: 29, type: !3570)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 257)
!3573 = !DILocation(line: 0, scope: !3566)
!3574 = !DILocation(line: 29, column: 3, scope: !3566)
!3575 = !DILocation(line: 29, column: 8, scope: !3566)
!3576 = !DILocation(line: 31, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !603, line: 31, column: 7)
!3578 = !DILocation(line: 31, column: 7, scope: !3566)
!3579 = !DILocation(line: 34, column: 12, scope: !3566)
!3580 = !DILocation(line: 34, column: 38, scope: !3566)
!3581 = !DILocation(line: 34, column: 41, scope: !3566)
!3582 = !DILocation(line: 34, column: 66, scope: !3566)
!3583 = !DILocation(line: 35, column: 1, scope: !3566)
!3584 = distinct !DISubprogram(name: "locale_charset", scope: !610, file: !610, line: 831, type: !378, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3585)
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "codeset", scope: !3584, file: !610, line: 833, type: !27)
!3587 = !DILocation(line: 847, column: 13, scope: !3584)
!3588 = !DILocation(line: 0, scope: !3584)
!3589 = !DILocation(line: 911, column: 15, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3584, file: !610, line: 911, column: 7)
!3591 = !DILocation(line: 911, column: 7, scope: !3584)
!3592 = !DILocation(line: 1070, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !610, line: 1070, column: 13)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !610, line: 1060, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3584, file: !610, line: 1019, column: 3)
!3596 = !DILocation(line: 1070, column: 24, scope: !3593)
!3597 = !DILocation(line: 1070, column: 13, scope: !3594)
!3598 = !DILocation(line: 1158, column: 3, scope: !3584)
!3599 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1003, file: !1003, line: 269, type: !3600, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!29, !29, !25, !84}
!3602 = !{!3603, !3604, !3605}
!3603 = !DILocalVariable(name: "category", arg: 1, scope: !3599, file: !1003, line: 269, type: !29)
!3604 = !DILocalVariable(name: "buf", arg: 2, scope: !3599, file: !1003, line: 269, type: !25)
!3605 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3599, file: !1003, line: 269, type: !84)
!3606 = !DILocation(line: 0, scope: !3599)
!3607 = !DILocalVariable(name: "category", arg: 1, scope: !3608, file: !1003, line: 91, type: !29)
!3608 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1003, file: !1003, line: 91, type: !3600, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !3609)
!3609 = !{!3607, !3610, !3611, !3612, !3613}
!3610 = !DILocalVariable(name: "buf", arg: 2, scope: !3608, file: !1003, line: 91, type: !25)
!3611 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3608, file: !1003, line: 91, type: !84)
!3612 = !DILocalVariable(name: "result", scope: !3608, file: !1003, line: 140, type: !27)
!3613 = !DILocalVariable(name: "length", scope: !3614, file: !1003, line: 154, type: !84)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !1003, line: 153, column: 5)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !1003, line: 142, column: 7)
!3616 = !DILocation(line: 0, scope: !3608, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 274, column: 10, scope: !3599)
!3618 = !DILocalVariable(name: "category", arg: 1, scope: !3619, file: !1003, line: 60, type: !29)
!3619 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1003, file: !1003, line: 60, type: !3620, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!27, !29}
!3622 = !{!3618, !3623}
!3623 = !DILocalVariable(name: "result", scope: !3619, file: !1003, line: 62, type: !27)
!3624 = !DILocation(line: 0, scope: !3619, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 140, column: 24, scope: !3608, inlinedAt: !3617)
!3626 = !DILocation(line: 62, column: 24, scope: !3619, inlinedAt: !3625)
!3627 = !DILocation(line: 142, column: 14, scope: !3615, inlinedAt: !3617)
!3628 = !DILocation(line: 142, column: 7, scope: !3608, inlinedAt: !3617)
!3629 = !DILocation(line: 145, column: 19, scope: !3630, inlinedAt: !3617)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !1003, line: 145, column: 11)
!3631 = distinct !DILexicalBlock(scope: !3615, file: !1003, line: 143, column: 5)
!3632 = !DILocation(line: 145, column: 11, scope: !3631, inlinedAt: !3617)
!3633 = !DILocation(line: 149, column: 16, scope: !3630, inlinedAt: !3617)
!3634 = !DILocation(line: 149, column: 9, scope: !3630, inlinedAt: !3617)
!3635 = !DILocation(line: 154, column: 23, scope: !3614, inlinedAt: !3617)
!3636 = !DILocation(line: 0, scope: !3614, inlinedAt: !3617)
!3637 = !DILocation(line: 155, column: 18, scope: !3638, inlinedAt: !3617)
!3638 = distinct !DILexicalBlock(scope: !3614, file: !1003, line: 155, column: 11)
!3639 = !DILocation(line: 155, column: 11, scope: !3614, inlinedAt: !3617)
!3640 = !DILocation(line: 157, column: 39, scope: !3641, inlinedAt: !3617)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !1003, line: 156, column: 9)
!3642 = !DILocalVariable(name: "__dest", arg: 1, scope: !3643, file: !2000, line: 31, type: !3395)
!3643 = distinct !DISubprogram(name: "memcpy", scope: !2000, file: !2000, line: 31, type: !3393, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !3644)
!3644 = !{!3642, !3645, !3646}
!3645 = !DILocalVariable(name: "__src", arg: 2, scope: !3643, file: !2000, line: 31, type: !3396)
!3646 = !DILocalVariable(name: "__len", arg: 3, scope: !3643, file: !2000, line: 31, type: !84)
!3647 = !DILocation(line: 0, scope: !3643, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 157, column: 11, scope: !3641, inlinedAt: !3617)
!3649 = !DILocation(line: 34, column: 10, scope: !3643, inlinedAt: !3648)
!3650 = !DILocation(line: 158, column: 11, scope: !3641, inlinedAt: !3617)
!3651 = !DILocation(line: 162, column: 23, scope: !3652, inlinedAt: !3617)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !1003, line: 162, column: 15)
!3653 = distinct !DILexicalBlock(scope: !3638, file: !1003, line: 161, column: 9)
!3654 = !DILocation(line: 162, column: 15, scope: !3653, inlinedAt: !3617)
!3655 = !DILocation(line: 167, column: 44, scope: !3656, inlinedAt: !3617)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !1003, line: 163, column: 13)
!3657 = !DILocation(line: 0, scope: !3643, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 167, column: 15, scope: !3656, inlinedAt: !3617)
!3659 = !DILocation(line: 34, column: 10, scope: !3643, inlinedAt: !3658)
!3660 = !DILocation(line: 168, column: 15, scope: !3656, inlinedAt: !3617)
!3661 = !DILocation(line: 168, column: 32, scope: !3656, inlinedAt: !3617)
!3662 = !DILocation(line: 169, column: 13, scope: !3656, inlinedAt: !3617)
!3663 = !DILocation(line: 0, scope: !3615, inlinedAt: !3617)
!3664 = !DILocation(line: 274, column: 3, scope: !3599)
!3665 = distinct !DISubprogram(name: "setlocale_null", scope: !1003, file: !1003, line: 301, type: !3620, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !3666)
!3666 = !{!3667}
!3667 = !DILocalVariable(name: "category", arg: 1, scope: !3665, file: !1003, line: 301, type: !29)
!3668 = !DILocation(line: 0, scope: !3665)
!3669 = !DILocation(line: 0, scope: !3619, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 304, column: 10, scope: !3665)
!3671 = !DILocation(line: 62, column: 24, scope: !3619, inlinedAt: !3670)
!3672 = !DILocation(line: 304, column: 3, scope: !3665)
!3673 = distinct !DISubprogram(name: "rpl_fclose", scope: !1006, file: !1006, line: 58, type: !3674, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !3678)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!29, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !1012)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DILocalVariable(name: "fp", arg: 1, scope: !3673, file: !1006, line: 58, type: !3676)
!3680 = !DILocalVariable(name: "saved_errno", scope: !3673, file: !1006, line: 60, type: !29)
!3681 = !DILocalVariable(name: "fd", scope: !3673, file: !1006, line: 61, type: !29)
!3682 = !DILocalVariable(name: "result", scope: !3673, file: !1006, line: 62, type: !29)
!3683 = !DILocation(line: 0, scope: !3673)
!3684 = !DILocation(line: 65, column: 8, scope: !3673)
!3685 = !DILocation(line: 66, column: 10, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3673, file: !1006, line: 66, column: 7)
!3687 = !DILocation(line: 66, column: 7, scope: !3673)
!3688 = !DILocation(line: 67, column: 12, scope: !3686)
!3689 = !DILocation(line: 67, column: 5, scope: !3686)
!3690 = !DILocation(line: 72, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3673, file: !1006, line: 72, column: 7)
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
!3703 = distinct !DILexicalBlock(scope: !3673, file: !1006, line: 105, column: 7)
!3704 = !DILocation(line: 107, column: 13, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3703, file: !1006, line: 106, column: 5)
!3706 = !DILocation(line: 109, column: 5, scope: !3705)
!3707 = !DILocation(line: 112, column: 1, scope: !3673)
!3708 = distinct !DISubprogram(name: "rpl_fflush", scope: !1049, file: !1049, line: 129, type: !3709, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !3713)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!29, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !1055)
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "stream", arg: 1, scope: !3708, file: !1049, line: 129, type: !3711)
!3715 = !DILocation(line: 0, scope: !3708)
!3716 = !DILocation(line: 150, column: 14, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3708, file: !1049, line: 150, column: 7)
!3718 = !DILocation(line: 150, column: 22, scope: !3717)
!3719 = !DILocation(line: 150, column: 27, scope: !3717)
!3720 = !DILocation(line: 150, column: 7, scope: !3708)
!3721 = !DILocation(line: 151, column: 12, scope: !3717)
!3722 = !DILocation(line: 151, column: 5, scope: !3717)
!3723 = !DILocalVariable(name: "fp", arg: 1, scope: !3724, file: !1049, line: 41, type: !3711)
!3724 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1049, file: !1049, line: 41, type: !3725, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3711}
!3727 = !{!3723}
!3728 = !DILocation(line: 0, scope: !3724, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 156, column: 3, scope: !3708)
!3730 = !DILocation(line: 43, column: 11, scope: !3731, inlinedAt: !3729)
!3731 = distinct !DILexicalBlock(scope: !3724, file: !1049, line: 43, column: 7)
!3732 = !DILocation(line: 43, column: 18, scope: !3731, inlinedAt: !3729)
!3733 = !DILocation(line: 43, column: 7, scope: !3724, inlinedAt: !3729)
!3734 = !DILocation(line: 45, column: 5, scope: !3731, inlinedAt: !3729)
!3735 = !DILocation(line: 158, column: 10, scope: !3708)
!3736 = !DILocation(line: 158, column: 3, scope: !3708)
!3737 = !DILocation(line: 235, column: 1, scope: !3708)
!3738 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1090, file: !1090, line: 28, type: !3739, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1089, retainedNodes: !3744)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!29, !3741, !3743, !29}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !1096)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !32, line: 63, baseType: !58)
!3744 = !{!3745, !3746, !3747, !3748}
!3745 = !DILocalVariable(name: "fp", arg: 1, scope: !3738, file: !1090, line: 28, type: !3741)
!3746 = !DILocalVariable(name: "offset", arg: 2, scope: !3738, file: !1090, line: 28, type: !3743)
!3747 = !DILocalVariable(name: "whence", arg: 3, scope: !3738, file: !1090, line: 28, type: !29)
!3748 = !DILocalVariable(name: "pos", scope: !3749, file: !1090, line: 117, type: !3743)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !1090, line: 113, column: 5)
!3750 = distinct !DILexicalBlock(scope: !3738, file: !1090, line: 52, column: 7)
!3751 = !DILocation(line: 0, scope: !3738)
!3752 = !DILocation(line: 52, column: 11, scope: !3750)
!3753 = !{!1467, !1166, i64 16}
!3754 = !DILocation(line: 52, column: 31, scope: !3750)
!3755 = !{!1467, !1166, i64 8}
!3756 = !DILocation(line: 52, column: 24, scope: !3750)
!3757 = !DILocation(line: 53, column: 7, scope: !3750)
!3758 = !DILocation(line: 53, column: 14, scope: !3750)
!3759 = !DILocation(line: 53, column: 35, scope: !3750)
!3760 = !{!1467, !1166, i64 32}
!3761 = !DILocation(line: 53, column: 28, scope: !3750)
!3762 = !DILocation(line: 54, column: 7, scope: !3750)
!3763 = !DILocation(line: 54, column: 14, scope: !3750)
!3764 = !{!1467, !1166, i64 72}
!3765 = !DILocation(line: 54, column: 28, scope: !3750)
!3766 = !DILocation(line: 52, column: 7, scope: !3738)
!3767 = !DILocation(line: 117, column: 26, scope: !3749)
!3768 = !DILocation(line: 117, column: 19, scope: !3749)
!3769 = !DILocation(line: 0, scope: !3749)
!3770 = !DILocation(line: 118, column: 15, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3749, file: !1090, line: 118, column: 11)
!3772 = !DILocation(line: 118, column: 11, scope: !3749)
!3773 = !DILocation(line: 129, column: 11, scope: !3749)
!3774 = !DILocation(line: 129, column: 18, scope: !3749)
!3775 = !DILocation(line: 130, column: 11, scope: !3749)
!3776 = !DILocation(line: 130, column: 19, scope: !3749)
!3777 = !{!1467, !1468, i64 144}
!3778 = !DILocation(line: 161, column: 7, scope: !3749)
!3779 = !DILocation(line: 163, column: 10, scope: !3738)
!3780 = !DILocation(line: 163, column: 3, scope: !3738)
!3781 = !DILocation(line: 164, column: 1, scope: !3738)
