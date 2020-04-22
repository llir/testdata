; ModuleID = 'coreutils-8.32/src/mkfifo.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !172
@.str.16 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !177
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !220
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !222
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !228
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !269
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !363
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !369
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !371
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !378
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !385
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !373
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !387
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.100 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.101 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.102 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !393
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lchmod.fmt = internal constant [17 x i8] c"/proc/self/fd/%d\00", align 16, !dbg !401
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1147 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1152, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %0, metadata !1151, metadata !DIExpression()), !dbg !1173
  %3 = icmp eq i32 %0, 0, !dbg !1174
  br i1 %3, label %9, label %4, !dbg !1175

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1176, !tbaa !1178
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1176
  %7 = load i8*, i8** @program_name, align 8, !dbg !1176, !tbaa !1178
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1176
  br label %67, !dbg !1176

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1182
  %11 = load i8*, i8** @program_name, align 8, !dbg !1182, !tbaa !1178
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1182
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1183
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !1178
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1183
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #18, !dbg !1184
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1184, !tbaa !1178
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1184
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1187
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1187, !tbaa !1178
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1187
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1188
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1188, !tbaa !1178
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1188
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1189
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1189, !tbaa !1178
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1189
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1190
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1190, !tbaa !1178
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1190
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1156, metadata !DIExpression()) #18, !dbg !1191
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1169
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1157, metadata !DIExpression()) #18, !dbg !1191
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1193
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  br label %33, !dbg !1194

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #22, !dbg !1195
  %37 = icmp eq i32 %36, 0, !dbg !1195
  br i1 %37, label %43, label %38, !dbg !1194

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1196
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1197
  %41 = load i8*, i8** %40, align 8, !dbg !1197, !tbaa !1198
  %42 = icmp eq i8* %41, null, !dbg !1200
  br i1 %42, label %43, label %33, !dbg !1201, !llvm.loop !1202

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1158, metadata !DIExpression()) #18, !dbg !1191
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1203
  %46 = load i8*, i8** %45, align 8, !dbg !1203, !tbaa !1205
  %47 = icmp eq i8* %46, null, !dbg !1206
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %48, metadata !1157, metadata !DIExpression()) #18, !dbg !1191
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1208
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #18, !dbg !1208
  %51 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %51, metadata !1165, metadata !DIExpression()) #18, !dbg !1191
  %52 = icmp eq i8* %51, null, !dbg !1210
  br i1 %52, label %60, label %53, !dbg !1212

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #22, !dbg !1213
  %55 = icmp eq i32 %54, 0, !dbg !1213
  br i1 %55, label %60, label %56, !dbg !1214

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1215
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1215, !tbaa !1178
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #18, !dbg !1215
  br label %60, !dbg !1217

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1218
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1218
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !1219
  %64 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !1219
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1219
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #18, !dbg !1219
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1220
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #23, !dbg !1221
  unreachable, !dbg !1221
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1227, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8** %1, metadata !1228, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* null, metadata !1230, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1231, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* null, metadata !1233, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8 0, metadata !1234, metadata !DIExpression()), !dbg !1242
  %3 = load i8*, i8** %1, align 8, !dbg !1243, !tbaa !1178
  tail call void @set_program_name(i8* %3) #18, !dbg !1244
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1245
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1246
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1247
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1248
  br label %8, !dbg !1249

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !1249

10:                                               ; preds = %17, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !1230, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* null, metadata !1233, metadata !DIExpression()), !dbg !1242
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %11, metadata !1232, metadata !DIExpression()), !dbg !1242
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !1249

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !1251, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %13, metadata !1230, metadata !DIExpression()), !dbg !1242
  br label %8, !dbg !1254, !llvm.loop !1255

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !1257, !tbaa !1178
  %16 = icmp eq i8* %15, null, !dbg !1259
  br i1 %16, label %17, label %18, !dbg !1262

17:                                               ; preds = %14, %18
  br label %10, !dbg !1242, !llvm.loop !1255

18:                                               ; preds = %14
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1263
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #18, !dbg !1265
  br label %17, !dbg !1266

20:                                               ; preds = %10
  tail call void @usage(i32 0) #24, !dbg !1267
  unreachable, !dbg !1267

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1268, !tbaa !1178
  %23 = load i8*, i8** @Version, align 8, !dbg !1268, !tbaa !1178
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #18, !dbg !1268
  tail call void @exit(i32 0) #23, !dbg !1268
  unreachable, !dbg !1268

24:                                               ; preds = %10
  tail call void @usage(i32 1) #24, !dbg !1269
  unreachable, !dbg !1269

25:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %9, metadata !1230, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %9, metadata !1230, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %9, metadata !1230, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %9, metadata !1230, metadata !DIExpression()), !dbg !1242
  %26 = load i32, i32* @optind, align 4, !dbg !1270, !tbaa !1272
  %27 = icmp eq i32 %26, %0, !dbg !1274
  br i1 %27, label %28, label %30, !dbg !1275

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1276
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #18, !dbg !1278
  tail call void @usage(i32 1) #24, !dbg !1279
  unreachable, !dbg !1279

30:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 438, metadata !1229, metadata !DIExpression()), !dbg !1242
  %31 = icmp ne i8* %9, null, !dbg !1280
  br i1 %31, label %32, label %47, !dbg !1281

32:                                               ; preds = %30
  %33 = tail call %struct.mode_change* @mode_compile(i8* nonnull %9) #18, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.mode_change* %33, metadata !1241, metadata !DIExpression()), !dbg !1283
  %34 = icmp eq %struct.mode_change* %33, null, !dbg !1284
  br i1 %34, label %35, label %37, !dbg !1286

35:                                               ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 5) #18, !dbg !1287
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36) #18, !dbg !1287
  unreachable, !dbg !1287

37:                                               ; preds = %32
  %38 = tail call i32 @umask(i32 0) #18, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %38, metadata !1238, metadata !DIExpression()), !dbg !1283
  %39 = tail call i32 @umask(i32 %38) #18, !dbg !1289
  %40 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %38, %struct.mode_change* nonnull %33, i32* null) #18, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %40, metadata !1229, metadata !DIExpression()), !dbg !1242
  %41 = bitcast %struct.mode_change* %33 to i8*, !dbg !1291
  tail call void @free(i8* %41) #18, !dbg !1292
  %42 = icmp ugt i32 %40, 511, !dbg !1293
  br i1 %42, label %45, label %43, !dbg !1295

43:                                               ; preds = %37
  %44 = load i32, i32* @optind, align 4, !dbg !1296, !tbaa !1272
  br label %47, !dbg !1295

45:                                               ; preds = %37
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1299
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46) #18, !dbg !1299
  unreachable, !dbg !1299

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %26, %30 ], [ %44, %43 ], !dbg !1296
  %49 = phi i32 [ 438, %30 ], [ %40, %43 ], !dbg !1242
  call void @llvm.dbg.value(metadata i32 %49, metadata !1229, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1231, metadata !DIExpression()), !dbg !1242
  %50 = icmp slt i32 %48, %0, !dbg !1300
  br i1 %50, label %51, label %90, !dbg !1301

51:                                               ; preds = %47, %85
  %52 = phi i32 [ %88, %85 ], [ %48, %47 ]
  %53 = phi i32 [ %86, %85 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !1231, metadata !DIExpression()), !dbg !1242
  %54 = sext i32 %52 to i64, !dbg !1302
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !1302
  %56 = load i8*, i8** %55, align 8, !dbg !1302, !tbaa !1178
  %57 = tail call i32 @mkfifo(i8* %56, i32 %49) #18, !dbg !1305
  %58 = icmp eq i32 %57, 0, !dbg !1306
  br i1 %58, label %68, label %59, !dbg !1307

59:                                               ; preds = %51
  %60 = tail call i32* @__errno_location() #25, !dbg !1308
  %61 = load i32, i32* %60, align 4, !dbg !1308, !tbaa !1272
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1310
  %63 = load i32, i32* @optind, align 4, !dbg !1311, !tbaa !1272
  %64 = sext i32 %63 to i64, !dbg !1311
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !1311
  %66 = load i8*, i8** %65, align 8, !dbg !1311, !tbaa !1178
  %67 = tail call i8* @quotearg_style(i32 4, i8* %66) #18, !dbg !1311
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %61, i8* %62, i8* %67) #18, !dbg !1312
  call void @llvm.dbg.value(metadata i32 1, metadata !1231, metadata !DIExpression()), !dbg !1242
  br label %85, !dbg !1313

68:                                               ; preds = %51
  br i1 %31, label %69, label %85, !dbg !1314

69:                                               ; preds = %68
  %70 = load i32, i32* @optind, align 4, !dbg !1316, !tbaa !1272
  %71 = sext i32 %70 to i64, !dbg !1317
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !1317
  %73 = load i8*, i8** %72, align 8, !dbg !1317, !tbaa !1178
  %74 = tail call i32 @lchmod(i8* %73, i32 %49) #18, !dbg !1318
  %75 = icmp eq i32 %74, 0, !dbg !1319
  br i1 %75, label %85, label %76, !dbg !1320

76:                                               ; preds = %69
  %77 = tail call i32* @__errno_location() #25, !dbg !1321
  %78 = load i32, i32* %77, align 4, !dbg !1321, !tbaa !1272
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1323
  %80 = load i32, i32* @optind, align 4, !dbg !1324, !tbaa !1272
  %81 = sext i32 %80 to i64, !dbg !1324
  %82 = getelementptr inbounds i8*, i8** %1, i64 %81, !dbg !1324
  %83 = load i8*, i8** %82, align 8, !dbg !1324, !tbaa !1178
  %84 = tail call i8* @quotearg_style(i32 4, i8* %83) #18, !dbg !1324
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %78, i8* %79, i8* %84) #18, !dbg !1325
  call void @llvm.dbg.value(metadata i32 1, metadata !1231, metadata !DIExpression()), !dbg !1242
  br label %85, !dbg !1326

85:                                               ; preds = %69, %59, %76, %68
  %86 = phi i32 [ 1, %59 ], [ 1, %76 ], [ %53, %69 ], [ %53, %68 ], !dbg !1242
  call void @llvm.dbg.value(metadata i32 %86, metadata !1231, metadata !DIExpression()), !dbg !1242
  %87 = load i32, i32* @optind, align 4, !dbg !1327, !tbaa !1272
  %88 = add nsw i32 %87, 1, !dbg !1327
  store i32 %88, i32* @optind, align 4, !dbg !1327, !tbaa !1272
  %89 = icmp slt i32 %88, %0, !dbg !1300
  br i1 %89, label %51, label %90, !dbg !1301, !llvm.loop !1328

90:                                               ; preds = %85, %47
  %91 = phi i32 [ 0, %47 ], [ %86, %85 ], !dbg !1242
  call void @llvm.dbg.value(metadata i32 %91, metadata !1231, metadata !DIExpression()), !dbg !1242
  ret i32 %91, !dbg !1330
}

; Function Attrs: nounwind
declare !dbg !100 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !103 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !106 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !113 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !128 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !146 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !157 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !160 i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1331 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1333, metadata !DIExpression()), !dbg !1334
  store i8* %0, i8** @file_name, align 8, !dbg !1335, !tbaa !1178
  ret void, !dbg !1336
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1337 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1341, metadata !DIExpression()), !dbg !1342
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1343, !tbaa !1344
  ret void, !dbg !1346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1347 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !1178
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1353
  %3 = icmp eq i32 %2, 0, !dbg !1354
  br i1 %3, label %22, label %4, !dbg !1355

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1356, !tbaa !1344, !range !1357
  %6 = icmp eq i8 %5, 0, !dbg !1356
  br i1 %6, label %11, label %7, !dbg !1358

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1359
  %9 = load i32, i32* %8, align 4, !dbg !1359, !tbaa !1272
  %10 = icmp eq i32 %9, 32, !dbg !1360
  br i1 %10, label %22, label %11, !dbg !1361

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %12, metadata !1349, metadata !DIExpression()), !dbg !1363
  %13 = load i8*, i8** @file_name, align 8, !dbg !1364, !tbaa !1178
  %14 = icmp eq i8* %13, null, !dbg !1364
  %15 = tail call i32* @__errno_location() #25, !dbg !1366
  %16 = load i32, i32* %15, align 4, !dbg !1366, !tbaa !1272
  br i1 %14, label %19, label %17, !dbg !1367

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1368
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1369
  br label %20, !dbg !1369

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #18, !dbg !1370
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1371, !tbaa !1272
  tail call void @_exit(i32 %21) #23, !dbg !1372
  unreachable, !dbg !1372

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1373, !tbaa !1178
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1375
  %25 = icmp eq i32 %24, 0, !dbg !1376
  br i1 %25, label %28, label %26, !dbg !1377

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1378, !tbaa !1272
  tail call void @_exit(i32 %27) #23, !dbg !1379
  unreachable, !dbg !1379

28:                                               ; preds = %22
  ret void, !dbg !1380
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !1381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1393, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 0, metadata !1395, metadata !DIExpression()), !dbg !1420
  %2 = load i8, i8* %0, align 1, !dbg !1421, !tbaa !1422
  %3 = and i8 %2, -8, !dbg !1423
  %4 = icmp eq i8 %3, 48, !dbg !1423
  br i1 %4, label %5, label %39, !dbg !1423

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1424
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1426
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8* %8, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %7, metadata !1397, metadata !DIExpression()), !dbg !1426
  %9 = shl i32 %7, 3, !dbg !1427
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %10, metadata !1396, metadata !DIExpression()), !dbg !1420
  %11 = sext i8 %6 to i32, !dbg !1424
  %12 = add i32 %9, -48, !dbg !1429
  %13 = add i32 %12, %11, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %13, metadata !1397, metadata !DIExpression()), !dbg !1426
  %14 = icmp ugt i32 %13, 4095, !dbg !1431
  br i1 %14, label %149, label %15, !dbg !1433

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1434, !tbaa !1422
  %17 = and i8 %16, -8, !dbg !1435
  %18 = icmp eq i8 %17, 48, !dbg !1435
  br i1 %18, label %5, label %19, !dbg !1435, !llvm.loop !1436

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1439
  br i1 %20, label %21, label %149, !dbg !1441

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1400, metadata !DIExpression()), !dbg !1426
  %22 = ptrtoint i8* %10 to i64, !dbg !1442
  %23 = ptrtoint i8* %0 to i64, !dbg !1442
  %24 = sub i64 %22, %23, !dbg !1442
  %25 = icmp slt i64 %24, 5, !dbg !1443
  %26 = and i32 %13, 3072, !dbg !1444
  %27 = or i32 %26, 1023, !dbg !1444
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %28, metadata !1401, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %13, metadata !1445, metadata !DIExpression()) #18, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %28, metadata !1450, metadata !DIExpression()) #18, !dbg !1452
  %29 = tail call noalias i8* @xmalloc(i64 32) #18, !dbg !1454
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1454
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1451, metadata !DIExpression()) #18, !dbg !1452
  store i8 61, i8* %29, align 4, !dbg !1455, !tbaa !1456
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1458
  store i8 1, i8* %31, align 1, !dbg !1459, !tbaa !1460
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1461
  %33 = bitcast i8* %32 to i32*, !dbg !1461
  store i32 4095, i32* %33, align 4, !dbg !1462, !tbaa !1463
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1464
  %35 = bitcast i8* %34 to i32*, !dbg !1464
  store i32 %13, i32* %35, align 4, !dbg !1465, !tbaa !1466
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1467
  %37 = bitcast i8* %36 to i32*, !dbg !1467
  store i32 %28, i32* %37, align 4, !dbg !1468, !tbaa !1469
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1470
  store i8 0, i8* %38, align 1, !dbg !1471, !tbaa !1460
  br label %149, !dbg !1472

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1473
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1476
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %41, metadata !1396, metadata !DIExpression()), !dbg !1420
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1478

43:                                               ; preds = %39
  br label %44, !dbg !1479

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %46, metadata !1402, metadata !DIExpression()), !dbg !1477
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1481
  call void @llvm.dbg.value(metadata i8* %47, metadata !1396, metadata !DIExpression()), !dbg !1420
  %48 = load i8, i8* %47, align 1, !dbg !1473, !tbaa !1422
  br label %39, !dbg !1482, !llvm.loop !1483

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1402, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %42, metadata !1485, metadata !DIExpression()) #18, !dbg !1491
  call void @llvm.dbg.value(metadata i64 16, metadata !1490, metadata !DIExpression()) #18, !dbg !1491
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1493
  br i1 %50, label %51, label %52, !dbg !1495

51:                                               ; preds = %49
  tail call void @xalloc_die() #23, !dbg !1496
  unreachable, !dbg !1496

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !1497
  %54 = tail call noalias i8* @xmalloc(i64 %53) #18, !dbg !1498
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1499
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1394, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %0, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %56, !dbg !1500

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !1501
  %58 = phi i64 [ 0, %52 ], [ %131, %144 ], !dbg !1502
  call void @llvm.dbg.value(metadata i64 %58, metadata !1395, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %57, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1503
  br label %59, !dbg !1504

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1501
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1503
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  %62 = load i8, i8* %60, align 1, !dbg !1505, !tbaa !1422
  %63 = sext i8 %62 to i32, !dbg !1505
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1508

64:                                               ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %60, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %61, metadata !1404, metadata !DIExpression()), !dbg !1503
  br label %72, !dbg !1509

65:                                               ; preds = %59
  br label %68, !dbg !1510

66:                                               ; preds = %59
  br label %68, !dbg !1512

67:                                               ; preds = %59
  br label %68, !dbg !1513

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %70, metadata !1404, metadata !DIExpression()), !dbg !1503
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %71, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %59, !dbg !1516, !llvm.loop !1517

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !1520
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !1501
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !1521
  %76 = phi i64 [ %58, %64 ], [ %131, %143 ], !dbg !1420
  call void @llvm.dbg.value(metadata i64 %76, metadata !1395, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %75, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %74, metadata !1396, metadata !DIExpression()), !dbg !1420
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %77, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %73, metadata !1408, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 0, metadata !1411, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 3, metadata !1412, metadata !DIExpression()), !dbg !1523
  %78 = load i8, i8* %77, align 1, !dbg !1524, !tbaa !1422
  %79 = sext i8 %78 to i32, !dbg !1524
  switch i32 %79, label %104 [
    i32 48, label %80
    i32 49, label %80
    i32 50, label %80
    i32 51, label %80
    i32 52, label %80
    i32 53, label %80
    i32 54, label %80
    i32 55, label %80
    i32 117, label %98
    i32 103, label %100
    i32 111, label %102
  ], !dbg !1509

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1525

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1526
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1523
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %84, metadata !1414, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %83, metadata !1396, metadata !DIExpression()), !dbg !1420
  %85 = shl i32 %84, 3, !dbg !1529
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %86, metadata !1396, metadata !DIExpression()), !dbg !1420
  %87 = sext i8 %82 to i32, !dbg !1526
  %88 = add i32 %85, -48, !dbg !1531
  %89 = add i32 %88, %87, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %89, metadata !1414, metadata !DIExpression()), !dbg !1528
  %90 = icmp ugt i32 %89, 4095, !dbg !1533
  br i1 %90, label %148, label %91, !dbg !1535

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1536, !tbaa !1422
  %93 = and i8 %92, -8, !dbg !1537
  %94 = icmp eq i8 %93, 48, !dbg !1537
  br i1 %94, label %81, label %95, !dbg !1537, !llvm.loop !1538

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1540
  br i1 %96, label %97, label %148, !dbg !1542

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1543

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1410, metadata !DIExpression()), !dbg !1523
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %99, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %125, !dbg !1545

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1410, metadata !DIExpression()), !dbg !1523
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %101, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %125, !dbg !1547

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1410, metadata !DIExpression()), !dbg !1523
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %103, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %125, !dbg !1549

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1550
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1523
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1553
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %108, metadata !1412, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %107, metadata !1410, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %106, metadata !1396, metadata !DIExpression()), !dbg !1420
  %109 = sext i8 %105 to i32, !dbg !1550
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1555

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %111, metadata !1410, metadata !DIExpression()), !dbg !1523
  br label %120, !dbg !1558

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %113, metadata !1410, metadata !DIExpression()), !dbg !1523
  br label %120, !dbg !1560

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !1561
  call void @llvm.dbg.value(metadata i32 %115, metadata !1410, metadata !DIExpression()), !dbg !1523
  br label %120, !dbg !1562

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %117, metadata !1410, metadata !DIExpression()), !dbg !1523
  br label %120, !dbg !1564

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %119, metadata !1410, metadata !DIExpression()), !dbg !1523
  br label %120, !dbg !1566

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1553
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1553
  call void @llvm.dbg.value(metadata i8 %122, metadata !1412, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %121, metadata !1410, metadata !DIExpression()), !dbg !1523
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1567
  call void @llvm.dbg.value(metadata i8* %123, metadata !1396, metadata !DIExpression()), !dbg !1420
  %124 = load i8, i8* %123, align 1, !dbg !1550, !tbaa !1422
  br label %104, !dbg !1568, !llvm.loop !1569

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1523
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1521
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1572
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %130, metadata !1412, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %129, metadata !1411, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %128, metadata !1410, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %127, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  %131 = add i64 %76, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %131, metadata !1395, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !1413, metadata !DIExpression()), !dbg !1523
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1574
  store i8 %73, i8* %132, align 4, !dbg !1575, !tbaa !1456
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1576
  store i8 %130, i8* %133, align 1, !dbg !1577, !tbaa !1460
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1578
  store i32 %127, i32* %134, align 4, !dbg !1579, !tbaa !1463
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1580
  store i32 %128, i32* %135, align 4, !dbg !1581, !tbaa !1466
  %136 = icmp eq i32 %129, 0, !dbg !1582
  %137 = icmp eq i32 %127, 0, !dbg !1582
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !1582
  %139 = and i32 %138, %128, !dbg !1582
  %140 = select i1 %136, i32 %139, i32 %129, !dbg !1582
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1583
  store i32 %140, i32* %141, align 4, !dbg !1584, !tbaa !1469
  call void @llvm.dbg.value(metadata i64 %76, metadata !1395, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 %75, metadata !1404, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %86, metadata !1396, metadata !DIExpression()), !dbg !1420
  %142 = load i8, i8* %126, align 1, !dbg !1585, !tbaa !1422
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !1586

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !1420

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %131, metadata !1395, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %126, metadata !1396, metadata !DIExpression()), !dbg !1420
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %145, metadata !1396, metadata !DIExpression()), !dbg !1420
  br label %56, !dbg !1588, !llvm.loop !1589

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !1592
  store i8 0, i8* %147, align 1, !dbg !1595, !tbaa !1460
  br label %149, !dbg !1596

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !1419), !dbg !1597
  tail call void @free(i8* %54) #18, !dbg !1598
  br label %149, !dbg !1599

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !1600
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* %0) local_unnamed_addr #8 !dbg !1601 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1626
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #18, !dbg !1627
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1604, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %0, metadata !1629, metadata !DIExpression()) #18, !dbg !1636
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1635, metadata !DIExpression()) #18, !dbg !1636
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #18, !dbg !1639
  %5 = icmp eq i32 %4, 0, !dbg !1640
  br i1 %5, label %6, label %19, !dbg !1641

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1642
  %8 = load i32, i32* %7, align 8, !dbg !1642, !tbaa !1643
  call void @llvm.dbg.value(metadata i32 %8, metadata !1445, metadata !DIExpression()) #18, !dbg !1647
  call void @llvm.dbg.value(metadata i32 4095, metadata !1450, metadata !DIExpression()) #18, !dbg !1647
  %9 = call noalias i8* @xmalloc(i64 32) #18, !dbg !1649
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1451, metadata !DIExpression()) #18, !dbg !1647
  store i8 61, i8* %9, align 4, !dbg !1650, !tbaa !1456
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1651
  store i8 1, i8* %11, align 1, !dbg !1652, !tbaa !1460
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1653
  %13 = bitcast i8* %12 to i32*, !dbg !1653
  store i32 4095, i32* %13, align 4, !dbg !1654, !tbaa !1463
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1655
  %15 = bitcast i8* %14 to i32*, !dbg !1655
  store i32 %8, i32* %15, align 4, !dbg !1656, !tbaa !1466
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1657
  %17 = bitcast i8* %16 to i32*, !dbg !1657
  store i32 4095, i32* %17, align 4, !dbg !1658, !tbaa !1469
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1659
  store i8 0, i8* %18, align 1, !dbg !1660, !tbaa !1460
  br label %19, !dbg !1661

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1626
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #18, !dbg !1662
  ret %struct.mode_change* %20, !dbg !1662
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #12 !dbg !1663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1670, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i1 %1, metadata !1671, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %2, metadata !1672, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1673, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32* %4, metadata !1674, metadata !DIExpression()), !dbg !1686
  %6 = and i32 %0, 4095, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %6, metadata !1675, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 0, metadata !1676, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1673, metadata !DIExpression()), !dbg !1686
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1688
  %8 = load i8, i8* %7, align 1, !dbg !1688, !tbaa !1460
  %9 = icmp eq i8 %8, 0, !dbg !1689
  br i1 %9, label %81, label %10, !dbg !1690

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0, !dbg !1691
  %12 = zext i1 %1 to i32, !dbg !1692
  %13 = xor i32 %2, -1, !dbg !1691
  br label %14, !dbg !1690

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1673, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %17, metadata !1675, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %18, metadata !1676, metadata !DIExpression()), !dbg !1686
  %19 = sext i8 %15 to i32, !dbg !1695
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1696
  %21 = load i32, i32* %20, align 4, !dbg !1696, !tbaa !1463
  call void @llvm.dbg.value(metadata i32 %21, metadata !1677, metadata !DIExpression()), !dbg !1691
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1697
  %23 = load i32, i32* %22, align 4, !dbg !1697, !tbaa !1469
  %24 = xor i32 %23, -1, !dbg !1698
  %25 = and i32 %11, %24, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %25, metadata !1681, metadata !DIExpression()), !dbg !1691
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1700
  %27 = load i32, i32* %26, align 4, !dbg !1700, !tbaa !1466
  call void @llvm.dbg.value(metadata i32 %27, metadata !1682, metadata !DIExpression()), !dbg !1691
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1701

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %29, metadata !1682, metadata !DIExpression()), !dbg !1691
  %30 = and i32 %29, 292, !dbg !1703
  %31 = icmp eq i32 %30, 0, !dbg !1704
  %32 = select i1 %31, i32 0, i32 292, !dbg !1704
  %33 = and i32 %29, 146, !dbg !1705
  %34 = icmp eq i32 %33, 0, !dbg !1706
  %35 = select i1 %34, i32 0, i32 146, !dbg !1706
  %36 = and i32 %29, 73, !dbg !1707
  %37 = icmp eq i32 %36, 0, !dbg !1708
  %38 = select i1 %37, i32 0, i32 73, !dbg !1708
  %39 = or i32 %35, %29, !dbg !1709
  %40 = or i32 %39, %32, !dbg !1710
  %41 = or i32 %40, %38, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %41, metadata !1682, metadata !DIExpression()), !dbg !1691
  br label %48, !dbg !1712

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1713
  %44 = or i32 %43, %12, !dbg !1714
  %45 = icmp eq i32 %44, 0, !dbg !1714
  %46 = or i32 %27, 73, !dbg !1715
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1716
  br label %48, !dbg !1716

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1691
  call void @llvm.dbg.value(metadata i32 %49, metadata !1682, metadata !DIExpression()), !dbg !1691
  %50 = icmp ne i32 %21, 0, !dbg !1717
  %51 = select i1 %50, i32 %21, i32 %13, !dbg !1717
  %52 = xor i32 %25, -1, !dbg !1718
  %53 = and i32 %51, %52, !dbg !1719
  %54 = and i32 %53, %49, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %54, metadata !1682, metadata !DIExpression()), !dbg !1691
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1721
  %56 = load i8, i8* %55, align 4, !dbg !1721, !tbaa !1456
  %57 = sext i8 %56 to i32, !dbg !1722
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1723

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1724
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1724
  %61 = or i32 %60, %25, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %61, metadata !1683, metadata !DIExpression()), !dbg !1726
  %62 = and i32 %61, 4095, !dbg !1727
  %63 = xor i32 %62, 4095, !dbg !1727
  %64 = or i32 %63, %18, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %64, metadata !1676, metadata !DIExpression()), !dbg !1686
  %65 = and i32 %61, %17, !dbg !1729
  %66 = or i32 %54, %65, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %66, metadata !1675, metadata !DIExpression()), !dbg !1686
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %68, metadata !1676, metadata !DIExpression()), !dbg !1686
  %69 = or i32 %54, %17, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %69, metadata !1675, metadata !DIExpression()), !dbg !1686
  br label %74, !dbg !1733

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %71, metadata !1676, metadata !DIExpression()), !dbg !1686
  %72 = xor i32 %54, -1, !dbg !1735
  %73 = and i32 %17, %72, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %73, metadata !1675, metadata !DIExpression()), !dbg !1686
  br label %74, !dbg !1737

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1686
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1686
  call void @llvm.dbg.value(metadata i32 %76, metadata !1675, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %75, metadata !1676, metadata !DIExpression()), !dbg !1686
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1673, metadata !DIExpression()), !dbg !1686
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1688
  %79 = load i8, i8* %78, align 1, !dbg !1688, !tbaa !1460
  %80 = icmp eq i8 %79, 0, !dbg !1689
  br i1 %80, label %81, label %14, !dbg !1690, !llvm.loop !1739

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1741
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1742
  call void @llvm.dbg.value(metadata i32 %82, metadata !1676, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 %83, metadata !1675, metadata !DIExpression()), !dbg !1686
  %84 = icmp eq i32* %4, null, !dbg !1743
  br i1 %84, label %86, label %85, !dbg !1745

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1746, !tbaa !1272
  br label %86, !dbg !1747

86:                                               ; preds = %81, %85
  ret i32 %83, !dbg !1748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1751, metadata !DIExpression()), !dbg !1754
  %2 = icmp eq i8* %0, null, !dbg !1755
  br i1 %2, label %3, label %6, !dbg !1757

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1758, !tbaa !1178
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1760
  tail call void @abort() #23, !dbg !1761
  unreachable, !dbg !1761

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %7, metadata !1752, metadata !DIExpression()), !dbg !1754
  %8 = icmp eq i8* %7, null, !dbg !1763
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1764
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %10, metadata !1753, metadata !DIExpression()), !dbg !1754
  %11 = ptrtoint i8* %10 to i64, !dbg !1765
  %12 = ptrtoint i8* %0 to i64, !dbg !1765
  %13 = sub i64 %11, %12, !dbg !1765
  %14 = icmp sgt i64 %13, 6, !dbg !1767
  br i1 %14, label %15, label %24, !dbg !1768

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1769
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #22, !dbg !1770
  %18 = icmp eq i32 %17, 0, !dbg !1771
  br i1 %18, label %19, label %24, !dbg !1772

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1751, metadata !DIExpression()), !dbg !1754
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #22, !dbg !1773
  %21 = icmp eq i32 %20, 0, !dbg !1776
  br i1 %21, label %22, label %24, !dbg !1777

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %23, metadata !1751, metadata !DIExpression()), !dbg !1754
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1780, !tbaa !1178
  br label %24, !dbg !1781

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1751, metadata !DIExpression()), !dbg !1754
  store i8* %25, i8** @program_name, align 8, !dbg !1782, !tbaa !1178
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1783, !tbaa !1178
  ret void, !dbg !1784
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1785 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1790, metadata !DIExpression()), !dbg !1793
  %2 = tail call i32* @__errno_location() #25, !dbg !1794
  %3 = load i32, i32* %2, align 4, !dbg !1794, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %3, metadata !1791, metadata !DIExpression()), !dbg !1793
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1795
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1795
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1795
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1796
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1792, metadata !DIExpression()), !dbg !1793
  store i32 %3, i32* %2, align 4, !dbg !1797, !tbaa !1272
  ret %struct.quoting_options* %8, !dbg !1798
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1799 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1803, metadata !DIExpression()), !dbg !1804
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1805
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1805
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1806
  %5 = load i32, i32* %4, align 8, !dbg !1806, !tbaa !1807
  ret i32 %5, !dbg !1809
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1810 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1, metadata !1815, metadata !DIExpression()), !dbg !1816
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1817
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1817
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1818
  store i32 %1, i32* %5, align 8, !dbg !1819, !tbaa !1807
  ret void, !dbg !1820
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #12 !dbg !1821 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1825, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 %1, metadata !1826, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i32 %2, metadata !1827, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 %1, metadata !1828, metadata !DIExpression()), !dbg !1833
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1834
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1834
  %6 = lshr i8 %1, 5, !dbg !1835
  %7 = zext i8 %6 to i64, !dbg !1835
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1836
  call void @llvm.dbg.value(metadata i32* %8, metadata !1830, metadata !DIExpression()), !dbg !1833
  %9 = and i8 %1, 31, !dbg !1837
  %10 = zext i8 %9 to i32, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %10, metadata !1831, metadata !DIExpression()), !dbg !1833
  %11 = load i32, i32* %8, align 4, !dbg !1838, !tbaa !1272
  %12 = lshr i32 %11, %10, !dbg !1839
  %13 = and i32 %12, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %13, metadata !1832, metadata !DIExpression()), !dbg !1833
  %14 = and i32 %2, 1, !dbg !1841
  %15 = xor i32 %13, %14, !dbg !1842
  %16 = shl i32 %15, %10, !dbg !1843
  %17 = xor i32 %16, %11, !dbg !1844
  store i32 %17, i32* %8, align 4, !dbg !1844, !tbaa !1272
  ret i32 %13, !dbg !1845
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1846 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !1851, metadata !DIExpression()), !dbg !1853
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1854
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1850, metadata !DIExpression()), !dbg !1853
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1857
  %6 = load i32, i32* %5, align 4, !dbg !1857, !tbaa !1858
  call void @llvm.dbg.value(metadata i32 %6, metadata !1852, metadata !DIExpression()), !dbg !1853
  store i32 %1, i32* %5, align 4, !dbg !1859, !tbaa !1858
  ret i32 %6, !dbg !1860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1861 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1865, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %1, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %2, metadata !1867, metadata !DIExpression()), !dbg !1868
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1869
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1871
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1865, metadata !DIExpression()), !dbg !1868
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1872
  store i32 10, i32* %6, align 8, !dbg !1873, !tbaa !1807
  %7 = icmp ne i8* %1, null, !dbg !1874
  %8 = icmp ne i8* %2, null, !dbg !1876
  %9 = and i1 %7, %8, !dbg !1877
  br i1 %9, label %11, label %10, !dbg !1877

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1878
  unreachable, !dbg !1878

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1879
  store i8* %1, i8** %12, align 8, !dbg !1880, !tbaa !1881
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1882
  store i8* %2, i8** %13, align 8, !dbg !1883, !tbaa !1884
  ret void, !dbg !1885
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1886 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1890, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %1, metadata !1891, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %2, metadata !1892, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %3, metadata !1893, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1894, metadata !DIExpression()), !dbg !1898
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1899
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1899
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1895, metadata !DIExpression()), !dbg !1898
  %8 = tail call i32* @__errno_location() #25, !dbg !1900
  %9 = load i32, i32* %8, align 4, !dbg !1900, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %9, metadata !1896, metadata !DIExpression()), !dbg !1898
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1901
  %11 = load i32, i32* %10, align 8, !dbg !1901, !tbaa !1807
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1902
  %13 = load i32, i32* %12, align 4, !dbg !1902, !tbaa !1858
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1903
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1904
  %16 = load i8*, i8** %15, align 8, !dbg !1904, !tbaa !1881
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1905
  %18 = load i8*, i8** %17, align 8, !dbg !1905, !tbaa !1884
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %19, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i32 %9, i32* %8, align 4, !dbg !1907, !tbaa !1272
  ret i64 %19, !dbg !1908
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1909 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1915, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %1, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %2, metadata !1917, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %3, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %4, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %5, metadata !1920, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32* %6, metadata !1921, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %7, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %8, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* null, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1928, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1973
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1974
  %14 = icmp eq i64 %13, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i1 %14, metadata !1930, metadata !DIExpression()), !dbg !1973
  %15 = lshr i32 %5, 1, !dbg !1976
  %16 = trunc i32 %15 to i8, !dbg !1976
  %17 = and i8 %16, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i8 %17, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1934, metadata !DIExpression()), !dbg !1973
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1977
  %19 = and i32 %5, 4, !dbg !1979
  %20 = icmp eq i32 %19, 0, !dbg !1979
  %21 = and i32 %5, 1, !dbg !1982
  %22 = icmp eq i32 %21, 0, !dbg !1982
  %23 = bitcast i64* %10 to i8*, !dbg !1985
  %24 = bitcast i32* %12 to i8*, !dbg !1986
  %25 = icmp eq i32* %6, null, !dbg !1987
  br label %26, !dbg !1989

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1990
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1991
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1992
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1993
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1973
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1994
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1995
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1996
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %38, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %37, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %36, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %35, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %34, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %33, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %32, metadata !1928, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %31, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %30, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %29, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %28, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %27, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1967), !dbg !1997
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
  ], !dbg !1998

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %35, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1919, metadata !DIExpression()), !dbg !1973
  br label %92, !dbg !1999

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 5, metadata !1919, metadata !DIExpression()), !dbg !1973
  %42 = and i8 %35, 1, !dbg !2001
  %43 = icmp eq i8 %42, 0, !dbg !2001
  br i1 %43, label %44, label %92, !dbg !1999

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2003
  br i1 %45, label %92, label %46, !dbg !2006

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2003, !tbaa !1422
  br label %92, !dbg !2003

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %27), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %48, metadata !1922, metadata !DIExpression()), !dbg !1973
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %27), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %49, metadata !1923, metadata !DIExpression()), !dbg !1973
  br label %50, !dbg !2012

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %51, metadata !1922, metadata !DIExpression()), !dbg !1973
  %53 = and i8 %35, 1, !dbg !2013
  %54 = icmp eq i8 %53, 0, !dbg !2013
  br i1 %54, label %55, label %70, !dbg !2015

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1973
  %56 = load i8, i8* %51, align 1, !dbg !2016, !tbaa !1422
  %57 = icmp eq i8 %56, 0, !dbg !2019
  br i1 %57, label %70, label %58, !dbg !2019

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %61, metadata !1925, metadata !DIExpression()), !dbg !1973
  %62 = icmp ult i64 %61, %39, !dbg !2020
  br i1 %62, label %63, label %65, !dbg !2023

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2020
  store i8 %59, i8* %64, align 1, !dbg !2020, !tbaa !1422
  br label %65, !dbg !2020

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %66, metadata !1925, metadata !DIExpression()), !dbg !1973
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %67, metadata !1927, metadata !DIExpression()), !dbg !1973
  %68 = load i8, i8* %67, align 1, !dbg !2016, !tbaa !1422
  %69 = icmp eq i8 %68, 0, !dbg !2019
  br i1 %69, label %70, label %58, !dbg !2019, !llvm.loop !2025

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2027
  call void @llvm.dbg.value(metadata i64 %71, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %52, metadata !1927, metadata !DIExpression()), !dbg !1973
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %72, metadata !1928, metadata !DIExpression()), !dbg !1973
  br label %92, !dbg !2029

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1973
  br label %74, !dbg !2030

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %75, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1931, metadata !DIExpression()), !dbg !1973
  br label %76, !dbg !2031

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1993
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %78, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %77, metadata !1929, metadata !DIExpression()), !dbg !1973
  %79 = and i8 %78, 1, !dbg !2032
  %80 = icmp eq i8 %79, 0, !dbg !2032
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2034
  br label %82, !dbg !2034

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1973
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1976
  call void @llvm.dbg.value(metadata i8 %84, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %83, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  %85 = and i8 %84, 1, !dbg !2035
  %86 = icmp eq i8 %85, 0, !dbg !2035
  br i1 %86, label %87, label %92, !dbg !2037

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2038
  br i1 %88, label %92, label %89, !dbg !2041

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2038, !tbaa !1422
  br label %92, !dbg !2038

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1973
  br label %92, !dbg !2042

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2043
  unreachable, !dbg !2043

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2027
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %40 ], !dbg !1973
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1973
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1973
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1931, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %98, metadata !1928, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %96, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %93, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !1973
  %101 = and i8 %99, 1, !dbg !2044
  %102 = icmp ne i8 %101, 0, !dbg !2044
  %103 = icmp ne i32 %93, 2, !dbg !2044
  %104 = and i1 %103, %102, !dbg !2044
  %105 = icmp ne i64 %98, 0, !dbg !2044
  %106 = and i1 %105, %104, !dbg !2044
  %107 = icmp ugt i64 %98, 1, !dbg !2044
  %108 = and i8 %100, 1, !dbg !2046
  %109 = icmp eq i8 %108, 0, !dbg !2046
  %110 = icmp eq i32 %93, 2, !dbg !2049
  %111 = or i1 %103, %109, !dbg !2051
  %112 = icmp ne i8 %108, 0, !dbg !2053
  %113 = and i1 %110, %112, !dbg !2053
  %114 = xor i1 %102, true, !dbg !2054
  %115 = xor i1 %104, true, !dbg !1987
  %116 = and i1 %109, %115, !dbg !1987
  %117 = or i1 %25, %116, !dbg !1987
  %118 = and i8 %99, %100, !dbg !2055
  %119 = and i8 %118, 1, !dbg !2055
  %120 = icmp ne i8 %119, 0, !dbg !2055
  %121 = and i1 %120, %105, !dbg !2055
  br label %122, !dbg !2057

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2058
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2027
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1990
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1994
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1995
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1996
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %126, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %123, metadata !1924, metadata !DIExpression()), !dbg !1973
  %131 = icmp eq i64 %126, -1, !dbg !2059
  br i1 %131, label %132, label %136, !dbg !2060

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2061
  %134 = load i8, i8* %133, align 1, !dbg !2061, !tbaa !1422
  %135 = icmp eq i8 %134, 0, !dbg !2062
  br i1 %135, label %581, label %138, !dbg !2063

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2064
  br i1 %137, label %581, label %138, !dbg !2063

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !1942, metadata !DIExpression()), !dbg !2065
  br i1 %106, label %139, label %154, !dbg !2066

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2067
  %141 = and i1 %107, %131, !dbg !2068
  br i1 %141, label %142, label %144, !dbg !2068

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %143, metadata !1918, metadata !DIExpression()), !dbg !1973
  br label %144, !dbg !2070

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1918, metadata !DIExpression()), !dbg !1973
  %146 = icmp ugt i64 %140, %145, !dbg !2071
  br i1 %146, label %154, label %147, !dbg !2072

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2073
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2074
  %150 = icmp ne i32 %149, 0, !dbg !2075
  %151 = or i1 %150, %109, !dbg !2076
  %152 = xor i1 %150, true, !dbg !2076
  %153 = zext i1 %152 to i8, !dbg !2076
  br i1 %151, label %154, label %639, !dbg !2076

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2065
  call void @llvm.dbg.value(metadata i8 %156, metadata !1940, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %155, metadata !1918, metadata !DIExpression()), !dbg !1973
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2077
  %158 = load i8, i8* %157, align 1, !dbg !2077, !tbaa !1422
  call void @llvm.dbg.value(metadata i8 %158, metadata !1935, metadata !DIExpression()), !dbg !2065
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
  ], !dbg !2078

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2079

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2080

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2065
  %162 = and i8 %127, 1, !dbg !2083
  %163 = icmp eq i8 %162, 0, !dbg !2083
  %164 = and i1 %110, %163, !dbg !2083
  br i1 %164, label %165, label %181, !dbg !2083

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2085
  br i1 %166, label %167, label %169, !dbg !2089

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2085
  store i8 39, i8* %168, align 1, !dbg !2085, !tbaa !1422
  br label %169, !dbg !2085

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %170, metadata !1925, metadata !DIExpression()), !dbg !1973
  %171 = icmp ult i64 %170, %130, !dbg !2090
  br i1 %171, label %172, label %174, !dbg !2093

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2090
  store i8 36, i8* %173, align 1, !dbg !2090, !tbaa !1422
  br label %174, !dbg !2090

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %175, metadata !1925, metadata !DIExpression()), !dbg !1973
  %176 = icmp ult i64 %175, %130, !dbg !2094
  br i1 %176, label %177, label %179, !dbg !2097

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2094
  store i8 39, i8* %178, align 1, !dbg !2094, !tbaa !1422
  br label %179, !dbg !2094

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %180, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %181, !dbg !2098

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1973
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %183, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %182, metadata !1925, metadata !DIExpression()), !dbg !1973
  %184 = icmp ult i64 %182, %130, !dbg !2099
  br i1 %184, label %185, label %187, !dbg !2102

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2099
  store i8 92, i8* %186, align 1, !dbg !2099, !tbaa !1422
  br label %187, !dbg !2099

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %188, metadata !1925, metadata !DIExpression()), !dbg !1973
  br i1 %103, label %189, label %463, !dbg !2103

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2105
  %191 = icmp ult i64 %190, %155, !dbg !2106
  br i1 %191, label %192, label %463, !dbg !2107

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2108
  %194 = load i8, i8* %193, align 1, !dbg !2108, !tbaa !1422
  %195 = add i8 %194, -48, !dbg !2109
  %196 = icmp ult i8 %195, 10, !dbg !2109
  br i1 %196, label %197, label %463, !dbg !2109

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2110
  br i1 %198, label %199, label %201, !dbg !2114

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2110
  store i8 48, i8* %200, align 1, !dbg !2110, !tbaa !1422
  br label %201, !dbg !2110

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %202, metadata !1925, metadata !DIExpression()), !dbg !1973
  %203 = icmp ult i64 %202, %130, !dbg !2115
  br i1 %203, label %204, label %206, !dbg !2118

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2115
  store i8 48, i8* %205, align 1, !dbg !2115, !tbaa !1422
  br label %206, !dbg !2115

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %207, metadata !1925, metadata !DIExpression()), !dbg !1973
  br label %463, !dbg !2119

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2120

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2121

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2122

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2123

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2124
  %214 = icmp ult i64 %213, %155, !dbg !2125
  br i1 %214, label %215, label %463, !dbg !2126

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2127
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2128
  %218 = load i8, i8* %217, align 1, !dbg !2128, !tbaa !1422
  %219 = icmp eq i8 %218, 63, !dbg !2129
  br i1 %219, label %220, label %463, !dbg !2130

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2131
  %222 = load i8, i8* %221, align 1, !dbg !2131, !tbaa !1422
  %223 = sext i8 %222 to i32, !dbg !2131
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
  ], !dbg !2132

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2133

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %213, metadata !1924, metadata !DIExpression()), !dbg !1973
  %226 = icmp ult i64 %124, %130, !dbg !2135
  br i1 %226, label %227, label %229, !dbg !2138

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2135
  store i8 63, i8* %228, align 1, !dbg !2135, !tbaa !1422
  br label %229, !dbg !2135

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %230, metadata !1925, metadata !DIExpression()), !dbg !1973
  %231 = icmp ult i64 %230, %130, !dbg !2139
  br i1 %231, label %232, label %234, !dbg !2142

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2139
  store i8 34, i8* %233, align 1, !dbg !2139, !tbaa !1422
  br label %234, !dbg !2139

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %235, metadata !1925, metadata !DIExpression()), !dbg !1973
  %236 = icmp ult i64 %235, %130, !dbg !2143
  br i1 %236, label %237, label %239, !dbg !2146

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2143
  store i8 34, i8* %238, align 1, !dbg !2143, !tbaa !1422
  br label %239, !dbg !2143

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %240, metadata !1925, metadata !DIExpression()), !dbg !1973
  %241 = icmp ult i64 %240, %130, !dbg !2147
  br i1 %241, label %242, label %244, !dbg !2150

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2147
  store i8 63, i8* %243, align 1, !dbg !2147, !tbaa !1422
  br label %244, !dbg !2147

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %245, metadata !1925, metadata !DIExpression()), !dbg !1973
  br label %463, !dbg !2151

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1939, metadata !DIExpression()), !dbg !2065
  br label %256, !dbg !2152

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1939, metadata !DIExpression()), !dbg !2065
  br label %256, !dbg !2153

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1939, metadata !DIExpression()), !dbg !2065
  br label %254, !dbg !2154

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1939, metadata !DIExpression()), !dbg !2065
  br label %254, !dbg !2155

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1939, metadata !DIExpression()), !dbg !2065
  br label %256, !dbg !2156

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1939, metadata !DIExpression()), !dbg !2065
  br i1 %110, label %252, label %253, !dbg !2157

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2158

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2161

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2162
  call void @llvm.dbg.value(metadata i8 %255, metadata !1939, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.label(metadata !1968), !dbg !2163
  br i1 %111, label %256, label %625, !dbg !2164

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2162
  call void @llvm.dbg.value(metadata i8 %257, metadata !1939, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.label(metadata !1969), !dbg !2166
  br i1 %102, label %488, label %463, !dbg !2167

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2168

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2169, !tbaa !1422
  %261 = icmp eq i8 %260, 0, !dbg !2170
  br i1 %261, label %262, label %463, !dbg !2171

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2172
  br i1 %263, label %264, label %463, !dbg !2174

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1942, metadata !DIExpression()), !dbg !2065
  br label %265, !dbg !2175

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2065
  call void @llvm.dbg.value(metadata i8 %266, metadata !1942, metadata !DIExpression()), !dbg !2065
  br i1 %111, label %463, label %625, !dbg !2176

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1942, metadata !DIExpression()), !dbg !2065
  br i1 %110, label %268, label %463, !dbg !2177

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2178

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2180
  %271 = icmp ne i64 %125, 0, !dbg !2182
  %272 = or i1 %271, %270, !dbg !2183
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2183
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %274, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %273, metadata !1926, metadata !DIExpression()), !dbg !1973
  %275 = icmp ult i64 %124, %274, !dbg !2184
  br i1 %275, label %276, label %278, !dbg !2187

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2184
  store i8 39, i8* %277, align 1, !dbg !2184, !tbaa !1422
  br label %278, !dbg !2184

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %279, metadata !1925, metadata !DIExpression()), !dbg !1973
  %280 = icmp ult i64 %279, %274, !dbg !2188
  br i1 %280, label %281, label %283, !dbg !2191

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2188
  store i8 92, i8* %282, align 1, !dbg !2188, !tbaa !1422
  br label %283, !dbg !2188

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %284, metadata !1925, metadata !DIExpression()), !dbg !1973
  %285 = icmp ult i64 %284, %274, !dbg !2192
  br i1 %285, label %286, label %288, !dbg !2195

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2192
  store i8 39, i8* %287, align 1, !dbg !2192, !tbaa !1422
  br label %288, !dbg !2192

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %289, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %463, !dbg !2196

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2197

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1943, metadata !DIExpression()), !dbg !2198
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2199
  %293 = load i16*, i16** %292, align 8, !dbg !2199, !tbaa !1178
  %294 = zext i8 %158 to i64, !dbg !2199
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2199
  %296 = load i16, i16* %295, align 2, !dbg !2199, !tbaa !2201
  %297 = lshr i16 %296, 14, !dbg !2203
  %298 = trunc i16 %297 to i8, !dbg !2203
  %299 = and i8 %298, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i8 %299, metadata !1946, metadata !DIExpression()), !dbg !2198
  br label %355, !dbg !2204

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1947, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %23, metadata !2207, metadata !DIExpression()) #18, !dbg !2215
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #18, !dbg !2215
  call void @llvm.dbg.value(metadata i64 8, metadata !2214, metadata !DIExpression()) #18, !dbg !2215
  store i64 0, i64* %10, align 8, !dbg !2217
  call void @llvm.dbg.value(metadata i64 0, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 1, metadata !1946, metadata !DIExpression()), !dbg !2198
  %301 = icmp eq i64 %155, -1, !dbg !2218
  br i1 %301, label %302, label %304, !dbg !2220

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %303, metadata !1918, metadata !DIExpression()), !dbg !1973
  br label %304, !dbg !2222

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2065
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  br label %306, !dbg !2223

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2224
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2225
  call void @llvm.dbg.value(metadata i8 %308, metadata !1946, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2226
  %309 = add i64 %307, %123, !dbg !2227
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2228
  %311 = sub i64 %305, %309, !dbg !2229
  call void @llvm.dbg.value(metadata i32* %12, metadata !1953, metadata !DIExpression(DW_OP_deref)), !dbg !1986
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %312, metadata !1956, metadata !DIExpression()), !dbg !1986
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2231

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  %314 = icmp ugt i64 %305, %309, !dbg !2232
  br i1 %314, label %315, label %340, !dbg !2234

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2235
  br label %317, !dbg !2235

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1943, metadata !DIExpression()), !dbg !2198
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2236
  %321 = load i8, i8* %320, align 1, !dbg !2236, !tbaa !1422
  %322 = icmp eq i8 %321, 0, !dbg !2234
  br i1 %322, label %340, label %323, !dbg !2235

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %324, metadata !1943, metadata !DIExpression()), !dbg !2198
  %325 = add i64 %324, %123, !dbg !2238
  %326 = icmp ult i64 %325, %305, !dbg !2232
  br i1 %326, label %317, label %340, !dbg !2234, !llvm.loop !2239

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2240
  %329 = and i1 %113, %328, !dbg !2243
  call void @llvm.dbg.value(metadata i64 1, metadata !1957, metadata !DIExpression()), !dbg !2244
  br i1 %329, label %330, label %343, !dbg !2243

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1957, metadata !DIExpression()), !dbg !2244
  %332 = add i64 %331, %309, !dbg !2245
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2246
  %334 = load i8, i8* %333, align 1, !dbg !2246, !tbaa !1422
  %335 = sext i8 %334 to i32, !dbg !2246
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2247

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %337, metadata !1957, metadata !DIExpression()), !dbg !2244
  %338 = icmp eq i64 %337, %312, !dbg !2240
  br i1 %338, label %343, label %330, !dbg !2249, !llvm.loop !2250

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %308, metadata !1946, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %307, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %308, metadata !1946, metadata !DIExpression()), !dbg !2198
  br label %340, !dbg !2252

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2252
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2253, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %344, metadata !1953, metadata !DIExpression()), !dbg !1986
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2255
  %346 = icmp eq i32 %345, 0, !dbg !2255
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2256
  call void @llvm.dbg.value(metadata i8 %347, metadata !1946, metadata !DIExpression()), !dbg !2198
  %348 = add i64 %312, %307, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %348, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %347, metadata !1946, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %348, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2252
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2258
  %350 = icmp eq i32 %349, 0, !dbg !2259
  br i1 %350, label %306, label %351, !dbg !2260, !llvm.loop !2261

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2263
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1919, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %99, metadata !1929, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %305, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2252
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2263
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2065
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2264
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2264
  call void @llvm.dbg.value(metadata i8 %358, metadata !1946, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %357, metadata !1943, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %356, metadata !1918, metadata !DIExpression()), !dbg !1973
  %359 = and i8 %358, 1, !dbg !2265
  %360 = icmp ne i8 %359, 0, !dbg !2265
  call void @llvm.dbg.value(metadata i8 %359, metadata !1942, metadata !DIExpression()), !dbg !2065
  %361 = icmp ult i64 %357, 2, !dbg !2266
  %362 = or i1 %360, %114, !dbg !2267
  %363 = and i1 %361, %362, !dbg !2268
  br i1 %363, label %463, label %364, !dbg !2268

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %365, metadata !1964, metadata !DIExpression()), !dbg !2270
  br label %366, !dbg !2271

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2058
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1973
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1994
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2065
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2065
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2272
  call void @llvm.dbg.value(metadata i8 %372, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %371, metadata !1940, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %370, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %369, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %368, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %367, metadata !1924, metadata !DIExpression()), !dbg !1973
  br i1 %362, label %419, label %373, !dbg !2273

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2278

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2065
  %375 = and i8 %369, 1, !dbg !2281
  %376 = icmp eq i8 %375, 0, !dbg !2281
  %377 = and i1 %110, %376, !dbg !2281
  br i1 %377, label %378, label %394, !dbg !2281

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2283
  br i1 %379, label %380, label %382, !dbg !2287

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2283
  store i8 39, i8* %381, align 1, !dbg !2283, !tbaa !1422
  br label %382, !dbg !2283

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %383, metadata !1925, metadata !DIExpression()), !dbg !1973
  %384 = icmp ult i64 %383, %130, !dbg !2288
  br i1 %384, label %385, label %387, !dbg !2291

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2288
  store i8 36, i8* %386, align 1, !dbg !2288, !tbaa !1422
  br label %387, !dbg !2288

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %388, metadata !1925, metadata !DIExpression()), !dbg !1973
  %389 = icmp ult i64 %388, %130, !dbg !2292
  br i1 %389, label %390, label %392, !dbg !2295

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2292
  store i8 39, i8* %391, align 1, !dbg !2292, !tbaa !1422
  br label %392, !dbg !2292

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %393, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %394, !dbg !2296

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1973
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %396, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %395, metadata !1925, metadata !DIExpression()), !dbg !1973
  %397 = icmp ult i64 %395, %130, !dbg !2297
  br i1 %397, label %398, label %400, !dbg !2300

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2297
  store i8 92, i8* %399, align 1, !dbg !2297, !tbaa !1422
  br label %400, !dbg !2297

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %401, metadata !1925, metadata !DIExpression()), !dbg !1973
  %402 = icmp ult i64 %401, %130, !dbg !2301
  br i1 %402, label %403, label %407, !dbg !2304

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2301
  %405 = or i8 %404, 48, !dbg !2301
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2301
  store i8 %405, i8* %406, align 1, !dbg !2301, !tbaa !1422
  br label %407, !dbg !2301

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %408, metadata !1925, metadata !DIExpression()), !dbg !1973
  %409 = icmp ult i64 %408, %130, !dbg !2305
  br i1 %409, label %410, label %415, !dbg !2308

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2305
  %412 = and i8 %411, 7, !dbg !2305
  %413 = or i8 %412, 48, !dbg !2305
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2305
  store i8 %413, i8* %414, align 1, !dbg !2305, !tbaa !1422
  br label %415, !dbg !2305

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %416, metadata !1925, metadata !DIExpression()), !dbg !1973
  %417 = and i8 %370, 7, !dbg !2309
  %418 = or i8 %417, 48, !dbg !2310
  call void @llvm.dbg.value(metadata i8 %418, metadata !1935, metadata !DIExpression()), !dbg !2065
  br label %428, !dbg !2311

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2312
  %421 = icmp eq i8 %420, 0, !dbg !2312
  br i1 %421, label %428, label %422, !dbg !2314

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2315
  br i1 %423, label %424, label %426, !dbg !2319

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2315
  store i8 92, i8* %425, align 1, !dbg !2315, !tbaa !1422
  br label %426, !dbg !2315

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %427, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !2065
  br label %428, !dbg !2320

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1973
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1994
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2065
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2065
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2065
  call void @llvm.dbg.value(metadata i8 %433, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %432, metadata !1940, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %431, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %430, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %429, metadata !1925, metadata !DIExpression()), !dbg !1973
  %434 = add i64 %367, 1, !dbg !2321
  %435 = icmp ugt i64 %365, %434, !dbg !2323
  br i1 %435, label %436, label %526, !dbg !2324

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2325
  %438 = icmp ne i8 %437, 0, !dbg !2325
  %439 = and i8 %433, 1, !dbg !2325
  %440 = icmp eq i8 %439, 0, !dbg !2325
  %441 = and i1 %438, %440, !dbg !2325
  br i1 %441, label %442, label %453, !dbg !2325

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2328
  br i1 %443, label %444, label %446, !dbg !2332

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2328
  store i8 39, i8* %445, align 1, !dbg !2328, !tbaa !1422
  br label %446, !dbg !2328

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %447, metadata !1925, metadata !DIExpression()), !dbg !1973
  %448 = icmp ult i64 %447, %130, !dbg !2333
  br i1 %448, label %449, label %451, !dbg !2336

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2333
  store i8 39, i8* %450, align 1, !dbg !2333, !tbaa !1422
  br label %451, !dbg !2333

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %452, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %453, !dbg !2337

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2338
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %455, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %454, metadata !1925, metadata !DIExpression()), !dbg !1973
  %456 = icmp ult i64 %454, %130, !dbg !2339
  br i1 %456, label %457, label %459, !dbg !2342

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2339
  store i8 %431, i8* %458, align 1, !dbg !2339, !tbaa !1422
  br label %459, !dbg !2339

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %460, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %434, metadata !1924, metadata !DIExpression()), !dbg !1973
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2343
  %462 = load i8, i8* %461, align 1, !dbg !2343, !tbaa !1422
  call void @llvm.dbg.value(metadata i8 %462, metadata !1935, metadata !DIExpression()), !dbg !2065
  br label %366, !dbg !2344, !llvm.loop !2345

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2058
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1973
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1990
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2348
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1973
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1973
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2065
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2065
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2065
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %472, metadata !1942, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %471, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %156, metadata !1940, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %470, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %469, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %468, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %467, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %466, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %465, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %464, metadata !1924, metadata !DIExpression()), !dbg !1973
  br i1 %117, label %486, label %474, !dbg !2349

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2350
  %476 = zext i8 %475 to i64, !dbg !2350
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2351
  %478 = load i32, i32* %477, align 4, !dbg !2351, !tbaa !1272
  %479 = and i8 %470, 31, !dbg !2352
  %480 = zext i8 %479 to i32, !dbg !2352
  %481 = shl nuw i32 1, %480, !dbg !2353
  %482 = and i32 %478, %481, !dbg !2353
  %483 = icmp eq i32 %482, 0, !dbg !2353
  %484 = icmp eq i8 %156, 0, !dbg !2354
  %485 = and i1 %484, %483, !dbg !2355
  br i1 %485, label %526, label %488, !dbg !2355

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2354
  br i1 %487, label %526, label %488, !dbg !2356

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2357
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1973
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1990
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2348
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1994
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1995
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2065
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2065
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %496, metadata !1942, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %495, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %494, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %493, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %492, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %491, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %490, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %489, metadata !1924, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1970), !dbg !2358
  br i1 %109, label %498, label %629, !dbg !2359

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1941, metadata !DIExpression()), !dbg !2065
  %499 = and i8 %493, 1, !dbg !2361
  %500 = icmp eq i8 %499, 0, !dbg !2361
  %501 = and i1 %110, %500, !dbg !2361
  br i1 %501, label %502, label %518, !dbg !2361

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2363
  br i1 %503, label %504, label %506, !dbg !2367

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2363
  store i8 39, i8* %505, align 1, !dbg !2363, !tbaa !1422
  br label %506, !dbg !2363

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %507, metadata !1925, metadata !DIExpression()), !dbg !1973
  %508 = icmp ult i64 %507, %497, !dbg !2368
  br i1 %508, label %509, label %511, !dbg !2371

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2368
  store i8 36, i8* %510, align 1, !dbg !2368, !tbaa !1422
  br label %511, !dbg !2368

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %512, metadata !1925, metadata !DIExpression()), !dbg !1973
  %513 = icmp ult i64 %512, %497, !dbg !2372
  br i1 %513, label %514, label %516, !dbg !2375

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2372
  store i8 39, i8* %515, align 1, !dbg !2372, !tbaa !1422
  br label %516, !dbg !2372

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %517, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %518, !dbg !2376

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2065
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %520, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %519, metadata !1925, metadata !DIExpression()), !dbg !1973
  %521 = icmp ult i64 %519, %497, !dbg !2377
  br i1 %521, label %522, label %524, !dbg !2380

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2377
  store i8 92, i8* %523, align 1, !dbg !2377, !tbaa !1422
  br label %524, !dbg !2377

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %525, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %536, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %535, metadata !1942, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %534, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %533, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %532, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %531, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %530, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %529, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %528, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %527, metadata !1924, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1971), !dbg !2381
  br label %553, !dbg !2382

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2357
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1973
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1990
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2348
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1994
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1995
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2385
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2065
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2065
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %535, metadata !1942, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %534, metadata !1941, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %533, metadata !1935, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %532, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %531, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %530, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %529, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %528, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %527, metadata !1924, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1971), !dbg !2381
  %537 = and i8 %531, 1, !dbg !2382
  %538 = icmp ne i8 %537, 0, !dbg !2382
  %539 = and i8 %534, 1, !dbg !2382
  %540 = icmp eq i8 %539, 0, !dbg !2382
  %541 = and i1 %538, %540, !dbg !2382
  br i1 %541, label %542, label %553, !dbg !2382

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2386
  br i1 %543, label %544, label %546, !dbg !2390

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2386
  store i8 39, i8* %545, align 1, !dbg !2386, !tbaa !1422
  br label %546, !dbg !2386

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %547, metadata !1925, metadata !DIExpression()), !dbg !1973
  %548 = icmp ult i64 %547, %536, !dbg !2391
  br i1 %548, label %549, label %551, !dbg !2394

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2391
  store i8 39, i8* %550, align 1, !dbg !2391, !tbaa !1422
  br label %551, !dbg !2391

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %552, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1973
  br label %553, !dbg !2395

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2065
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %562, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %561, metadata !1925, metadata !DIExpression()), !dbg !1973
  %563 = icmp ult i64 %561, %554, !dbg !2396
  br i1 %563, label %564, label %566, !dbg !2399

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2396
  store i8 %556, i8* %565, align 1, !dbg !2396, !tbaa !1422
  br label %566, !dbg !2396

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %567, metadata !1925, metadata !DIExpression()), !dbg !1973
  %568 = and i8 %555, 1, !dbg !2400
  %569 = icmp eq i8 %568, 0, !dbg !2400
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2402
  call void @llvm.dbg.value(metadata i8 %570, metadata !1934, metadata !DIExpression()), !dbg !1973
  br label %571, !dbg !2403

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2357
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1973
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1990
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2348
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1994
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1973
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1996
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %578, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %577, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %576, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %575, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %574, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %573, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %572, metadata !1924, metadata !DIExpression()), !dbg !1973
  %580 = add i64 %572, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %580, metadata !1924, metadata !DIExpression()), !dbg !1973
  br label %122, !dbg !2405, !llvm.loop !2406

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %127, metadata !1932, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %128, metadata !1933, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %129, metadata !1934, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  %583 = icmp eq i64 %124, 0, !dbg !2408
  %584 = and i1 %110, %583, !dbg !2410
  %585 = xor i1 %584, true, !dbg !2410
  %586 = or i1 %109, %585, !dbg !2410
  br i1 %586, label %587, label %629, !dbg !2410

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2411
  %589 = xor i1 %588, true, !dbg !2411
  %590 = and i8 %128, 1, !dbg !2413
  %591 = icmp eq i8 %590, 0, !dbg !2413
  %592 = or i1 %591, %589, !dbg !2411
  br i1 %592, label %602, label %593, !dbg !2411

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2414
  %595 = icmp eq i8 %594, 0, !dbg !2414
  br i1 %595, label %598, label %596, !dbg !2417

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %94, metadata !1922, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %95, metadata !1923, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %125, metadata !1926, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %582, metadata !1918, metadata !DIExpression()), !dbg !1973
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2418
  br label %645, !dbg !2419

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2420
  %600 = icmp ne i64 %125, 0, !dbg !2422
  %601 = and i1 %600, %599, !dbg !2423
  br i1 %601, label %26, label %602, !dbg !2423

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %130, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  %603 = icmp ne i8* %97, null, !dbg !2424
  %604 = and i1 %603, %109, !dbg !2426
  br i1 %604, label %605, label %620, !dbg !2426

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %124, metadata !1925, metadata !DIExpression()), !dbg !1973
  %606 = load i8, i8* %97, align 1, !dbg !2427, !tbaa !1422
  %607 = icmp eq i8 %606, 0, !dbg !2430
  br i1 %607, label %620, label %608, !dbg !2430

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1927, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %611, metadata !1925, metadata !DIExpression()), !dbg !1973
  %612 = icmp ult i64 %611, %130, !dbg !2431
  br i1 %612, label %613, label %615, !dbg !2434

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2431
  store i8 %609, i8* %614, align 1, !dbg !2431, !tbaa !1422
  br label %615, !dbg !2431

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %616, metadata !1925, metadata !DIExpression()), !dbg !1973
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %617, metadata !1927, metadata !DIExpression()), !dbg !1973
  %618 = load i8, i8* %617, align 1, !dbg !2427, !tbaa !1422
  %619 = icmp eq i8 %618, 0, !dbg !2430
  br i1 %619, label %620, label %608, !dbg !2430, !llvm.loop !2436

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2027
  call void @llvm.dbg.value(metadata i64 %621, metadata !1925, metadata !DIExpression()), !dbg !1973
  %622 = icmp ult i64 %621, %130, !dbg !2438
  br i1 %622, label %623, label %645, !dbg !2440

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2441
  store i8 0, i8* %624, align 1, !dbg !2442, !tbaa !1422
  br label %645, !dbg !2441

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %630, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1972), !dbg !2443
  %627 = icmp eq i8 %101, 0, !dbg !2444
  %628 = select i1 %627, i32 2, i32 4, !dbg !2444
  br label %635, !dbg !2444

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1916, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %630, metadata !1918, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.label(metadata !1972), !dbg !2443
  %632 = icmp eq i32 %93, 2, !dbg !2446
  %633 = icmp eq i8 %101, 0, !dbg !2444
  %634 = select i1 %633, i32 2, i32 4, !dbg !2444
  br i1 %632, label %635, label %639, !dbg !2444

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2444

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1919, metadata !DIExpression()), !dbg !1973
  %643 = and i32 %5, -3, !dbg !2447
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2448
  br label %645, !dbg !2449

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2450
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1, metadata !2456, metadata !DIExpression()), !dbg !2459
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %3, metadata !2457, metadata !DIExpression()), !dbg !2459
  %4 = icmp eq i8* %3, %0, !dbg !2461
  br i1 %4, label %5, label %71, !dbg !2463

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %6, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %6, metadata !2465, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* undef, metadata !2471, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 85, metadata !2472, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 84, metadata !2473, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 70, metadata !2474, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 45, metadata !2475, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 56, metadata !2476, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2480, metadata !DIExpression()), !dbg !2481
  %7 = load i8, i8* %6, align 1, !dbg !2484, !tbaa !1422
  %8 = and i8 %7, -33, !dbg !2484
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2484

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2486, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* undef, metadata !2491, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 84, metadata !2492, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 70, metadata !2493, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 45, metadata !2494, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 56, metadata !2495, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2496, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2500
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2504
  %11 = load i8, i8* %10, align 1, !dbg !2504, !tbaa !1422
  %12 = and i8 %11, -33, !dbg !2504
  %13 = icmp eq i8 %12, 84, !dbg !2504
  br i1 %13, label %14, label %68, !dbg !2504

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2506, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* undef, metadata !2511, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 70, metadata !2512, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 45, metadata !2513, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 56, metadata !2514, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2519
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2523
  %16 = load i8, i8* %15, align 1, !dbg !2523, !tbaa !1422
  %17 = and i8 %16, -33, !dbg !2523
  %18 = icmp eq i8 %17, 70, !dbg !2523
  br i1 %18, label %19, label %68, !dbg !2523

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2525, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* undef, metadata !2530, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 45, metadata !2531, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 56, metadata !2532, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2537
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2541
  %21 = load i8, i8* %20, align 1, !dbg !2541, !tbaa !1422
  %22 = icmp eq i8 %21, 45, !dbg !2541
  br i1 %22, label %23, label %68, !dbg !2543

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* undef, metadata !2549, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 56, metadata !2550, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 0, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2555
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2559
  %25 = load i8, i8* %24, align 1, !dbg !2559, !tbaa !1422
  %26 = icmp eq i8 %25, 56, !dbg !2559
  br i1 %26, label %27, label %68, !dbg !2561

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2562, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* undef, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2572
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2576
  %29 = load i8, i8* %28, align 1, !dbg !2576, !tbaa !1422
  %30 = icmp eq i8 %29, 0, !dbg !2576
  br i1 %30, label %31, label %68, !dbg !2578

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2579, !tbaa !1422
  %33 = icmp eq i8 %32, 96, !dbg !2580
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2579
  br label %71, !dbg !2581

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2486, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* undef, metadata !2491, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 66, metadata !2492, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 49, metadata !2493, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 56, metadata !2494, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 48, metadata !2495, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 51, metadata !2496, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 48, metadata !2497, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2582
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2586
  %37 = load i8, i8* %36, align 1, !dbg !2586, !tbaa !1422
  %38 = and i8 %37, -33, !dbg !2586
  %39 = icmp eq i8 %38, 66, !dbg !2586
  br i1 %39, label %40, label %68, !dbg !2586

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2506, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* undef, metadata !2511, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 49, metadata !2512, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 56, metadata !2513, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 48, metadata !2514, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 51, metadata !2515, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 48, metadata !2516, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2517, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2587
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2589
  %42 = load i8, i8* %41, align 1, !dbg !2589, !tbaa !1422
  %43 = icmp eq i8 %42, 49, !dbg !2589
  br i1 %43, label %44, label %68, !dbg !2590

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2525, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* undef, metadata !2530, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 56, metadata !2531, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 48, metadata !2532, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 51, metadata !2533, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 48, metadata !2534, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2591
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2593
  %46 = load i8, i8* %45, align 1, !dbg !2593, !tbaa !1422
  %47 = icmp eq i8 %46, 56, !dbg !2593
  br i1 %47, label %48, label %68, !dbg !2594

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* undef, metadata !2549, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 48, metadata !2550, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 51, metadata !2551, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 48, metadata !2552, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2595
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2597
  %50 = load i8, i8* %49, align 1, !dbg !2597, !tbaa !1422
  %51 = icmp eq i8 %50, 48, !dbg !2597
  br i1 %51, label %52, label %68, !dbg !2598

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2562, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* undef, metadata !2567, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 51, metadata !2568, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 48, metadata !2569, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2599
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2601
  %54 = load i8, i8* %53, align 1, !dbg !2601, !tbaa !1422
  %55 = icmp eq i8 %54, 51, !dbg !2601
  br i1 %55, label %56, label %68, !dbg !2602

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2603, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8* undef, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 48, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2611, metadata !DIExpression()), !dbg !2612
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2616
  %58 = load i8, i8* %57, align 1, !dbg !2616, !tbaa !1422
  %59 = icmp eq i8 %58, 48, !dbg !2616
  br i1 %59, label %60, label %68, !dbg !2618

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2619, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* undef, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2627
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2631
  %62 = load i8, i8* %61, align 1, !dbg !2631, !tbaa !1422
  %63 = icmp eq i8 %62, 0, !dbg !2631
  br i1 %63, label %64, label %68, !dbg !2633

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2634, !tbaa !1422
  %66 = icmp eq i8 %65, 96, !dbg !2635
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2634
  br label %71, !dbg !2636

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2637
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2638
  br label %71, !dbg !2639

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2459
  ret i8* %72, !dbg !2640
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !337 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !341 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2641 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %1, metadata !2654, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i64* null, metadata !2655, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2656, metadata !DIExpression()) #18, !dbg !2662
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2664
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2657, metadata !DIExpression()) #18, !dbg !2662
  %6 = tail call i32* @__errno_location() #25, !dbg !2665
  %7 = load i32, i32* %6, align 4, !dbg !2665, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %7, metadata !2658, metadata !DIExpression()) #18, !dbg !2662
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2666
  %9 = load i32, i32* %8, align 4, !dbg !2666, !tbaa !1858
  %10 = or i32 %9, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %10, metadata !2659, metadata !DIExpression()) #18, !dbg !2662
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2668
  %12 = load i32, i32* %11, align 8, !dbg !2668, !tbaa !1807
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2669
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2670
  %15 = load i8*, i8** %14, align 8, !dbg !2670, !tbaa !1881
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2671
  %17 = load i8*, i8** %16, align 8, !dbg !2671, !tbaa !1884
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2672
  %19 = add i64 %18, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %19, metadata !2660, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %19, metadata !2674, metadata !DIExpression()) #18, !dbg !2679
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %20, metadata !2661, metadata !DIExpression()) #18, !dbg !2662
  %21 = load i32, i32* %11, align 8, !dbg !2682, !tbaa !1807
  %22 = load i8*, i8** %14, align 8, !dbg !2683, !tbaa !1881
  %23 = load i8*, i8** %16, align 8, !dbg !2684, !tbaa !1884
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2685
  store i32 %7, i32* %6, align 4, !dbg !2686, !tbaa !1272
  ret i8* %20, !dbg !2687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2650 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2654, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64* %2, metadata !2655, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2656, metadata !DIExpression()), !dbg !2688
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2689
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2657, metadata !DIExpression()), !dbg !2688
  %7 = tail call i32* @__errno_location() #25, !dbg !2690
  %8 = load i32, i32* %7, align 4, !dbg !2690, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %8, metadata !2658, metadata !DIExpression()), !dbg !2688
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2691
  %10 = load i32, i32* %9, align 4, !dbg !2691, !tbaa !1858
  %11 = icmp ne i64* %2, null, !dbg !2692
  %12 = xor i1 %11, true, !dbg !2692
  %13 = zext i1 %12 to i32, !dbg !2692
  %14 = or i32 %10, %13, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %14, metadata !2659, metadata !DIExpression()), !dbg !2688
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2694
  %16 = load i32, i32* %15, align 8, !dbg !2694, !tbaa !1807
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2695
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2696
  %19 = load i8*, i8** %18, align 8, !dbg !2696, !tbaa !1881
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2697
  %21 = load i8*, i8** %20, align 8, !dbg !2697, !tbaa !1884
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2698
  %23 = add i64 %22, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %23, metadata !2660, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %23, metadata !2674, metadata !DIExpression()) #18, !dbg !2700
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %24, metadata !2661, metadata !DIExpression()), !dbg !2688
  %25 = load i32, i32* %15, align 8, !dbg !2703, !tbaa !1807
  %26 = load i8*, i8** %18, align 8, !dbg !2704, !tbaa !1881
  %27 = load i8*, i8** %20, align 8, !dbg !2705, !tbaa !1884
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2706
  store i32 %8, i32* %7, align 4, !dbg !2707, !tbaa !1272
  br i1 %11, label %29, label %30, !dbg !2708

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2709, !tbaa !2711
  br label %30, !dbg !2712

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2713
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2714 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2718, !tbaa !1178
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 1, metadata !2717, metadata !DIExpression()), !dbg !2719
  %2 = load i32, i32* @nslots, align 4, !dbg !2720, !tbaa !1272
  %3 = icmp sgt i32 %2, 1, !dbg !2723
  br i1 %3, label %4, label %12, !dbg !2724

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2717, metadata !DIExpression()), !dbg !2719
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2725
  %7 = load i8*, i8** %6, align 8, !dbg !2725, !tbaa !2726
  tail call void @free(i8* %7) #18, !dbg !2728
  %8 = add nuw nsw i64 %5, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %8, metadata !2717, metadata !DIExpression()), !dbg !2719
  %9 = load i32, i32* @nslots, align 4, !dbg !2720, !tbaa !1272
  %10 = sext i32 %9 to i64, !dbg !2723
  %11 = icmp slt i64 %8, %10, !dbg !2723
  br i1 %11, label %4, label %12, !dbg !2724, !llvm.loop !2730

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2732
  %14 = load i8*, i8** %13, align 8, !dbg !2732, !tbaa !2726
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2734
  br i1 %15, label %17, label %16, !dbg !2735

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2736
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2738, !tbaa !2739
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2740, !tbaa !2726
  br label %17, !dbg !2741

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2742
  br i1 %18, label %21, label %19, !dbg !2744

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2745
  tail call void @free(i8* %20) #18, !dbg !2747
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2748, !tbaa !1178
  br label %21, !dbg !2749

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2750, !tbaa !1272
  ret void, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %1, metadata !2755, metadata !DIExpression()), !dbg !2756
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2757
  ret i8* %3, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %1, metadata !2764, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %2, metadata !2765, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2766, metadata !DIExpression()), !dbg !2778
  %5 = tail call i32* @__errno_location() #25, !dbg !2779
  %6 = load i32, i32* %5, align 4, !dbg !2779, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %6, metadata !2767, metadata !DIExpression()), !dbg !2778
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2780, !tbaa !1178
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2768, metadata !DIExpression()), !dbg !2778
  %8 = icmp slt i32 %0, 0, !dbg !2781
  br i1 %8, label %9, label %10, !dbg !2783

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2784
  unreachable, !dbg !2784

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2785, !tbaa !1272
  %12 = icmp sgt i32 %11, %0, !dbg !2786
  br i1 %12, label %34, label %13, !dbg !2787

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2788
  call void @llvm.dbg.value(metadata i1 %14, metadata !2769, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2772, metadata !DIExpression()), !dbg !2789
  %15 = icmp eq i32 %0, 2147483647, !dbg !2790
  br i1 %15, label %16, label %17, !dbg !2792

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2793
  unreachable, !dbg !2793

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2794
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2794
  %20 = add nuw nsw i32 %0, 1, !dbg !2795
  %21 = sext i32 %20 to i64, !dbg !2796
  %22 = shl nuw nsw i64 %21, 4, !dbg !2797
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2798
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2768, metadata !DIExpression()), !dbg !2778
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2799, !tbaa !1178
  br i1 %14, label %25, label %26, !dbg !2800

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2801, !tbaa.struct !2803
  br label %26, !dbg !2804

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2805, !tbaa !1272
  %28 = sext i32 %27 to i64, !dbg !2806
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2806
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2807
  %31 = sub nsw i32 %20, %27, !dbg !2808
  %32 = sext i32 %31 to i64, !dbg !2809
  %33 = shl nsw i64 %32, 4, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %30, metadata !2207, metadata !DIExpression()) #18, !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()) #18, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %33, metadata !2214, metadata !DIExpression()) #18, !dbg !2811
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2813
  store i32 %20, i32* @nslots, align 4, !dbg !2814, !tbaa !1272
  br label %34, !dbg !2815

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2778
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2768, metadata !DIExpression()), !dbg !2778
  %36 = zext i32 %0 to i64, !dbg !2816
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2817
  %38 = load i64, i64* %37, align 8, !dbg !2817, !tbaa !2739
  call void @llvm.dbg.value(metadata i64 %38, metadata !2773, metadata !DIExpression()), !dbg !2818
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2819
  %40 = load i8*, i8** %39, align 8, !dbg !2819, !tbaa !2726
  call void @llvm.dbg.value(metadata i8* %40, metadata !2775, metadata !DIExpression()), !dbg !2818
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2820
  %42 = load i32, i32* %41, align 4, !dbg !2820, !tbaa !1858
  %43 = or i32 %42, 1, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %43, metadata !2776, metadata !DIExpression()), !dbg !2818
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2822
  %45 = load i32, i32* %44, align 8, !dbg !2822, !tbaa !1807
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2823
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2824
  %48 = load i8*, i8** %47, align 8, !dbg !2824, !tbaa !1881
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2825
  %50 = load i8*, i8** %49, align 8, !dbg !2825, !tbaa !1884
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %51, metadata !2777, metadata !DIExpression()), !dbg !2818
  %52 = icmp ugt i64 %38, %51, !dbg !2827
  br i1 %52, label %63, label %53, !dbg !2829

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %54, metadata !2773, metadata !DIExpression()), !dbg !2818
  store i64 %54, i64* %37, align 8, !dbg !2832, !tbaa !2739
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2833
  br i1 %55, label %57, label %56, !dbg !2835

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2836
  br label %57, !dbg !2836

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2674, metadata !DIExpression()) #18, !dbg !2837
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %58, metadata !2775, metadata !DIExpression()), !dbg !2818
  store i8* %58, i8** %39, align 8, !dbg !2840, !tbaa !2726
  %59 = load i32, i32* %44, align 8, !dbg !2841, !tbaa !1807
  %60 = load i8*, i8** %47, align 8, !dbg !2842, !tbaa !1881
  %61 = load i8*, i8** %49, align 8, !dbg !2843, !tbaa !1884
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2844
  br label %63, !dbg !2845

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2818
  call void @llvm.dbg.value(metadata i8* %64, metadata !2775, metadata !DIExpression()), !dbg !2818
  store i32 %6, i32* %5, align 4, !dbg !2846, !tbaa !1272
  ret i8* %64, !dbg !2847
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %2, metadata !2854, metadata !DIExpression()), !dbg !2855
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2856
  ret i8* %4, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()) #18, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()) #18, !dbg !2862
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2864
  ret i8* %2, !dbg !2865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()) #18, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !2853, metadata !DIExpression()) #18, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()) #18, !dbg !2873
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2875
  ret i8* %3, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2877 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 %1, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %2, metadata !2883, metadata !DIExpression()), !dbg !2885
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()) #18, !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2893, metadata !DIExpression()) #18, !dbg !2896
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2896, !alias.scope !2897
  %6 = icmp eq i32 %1, 10, !dbg !2900
  br i1 %6, label %7, label %8, !dbg !2902

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2903, !noalias !2897
  unreachable, !dbg !2903

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2904
  store i32 %1, i32* %9, align 8, !dbg !2905, !tbaa !1807, !alias.scope !2897
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2907
  ret i8* %10, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2909 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 %1, metadata !2914, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %2, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %3, metadata !2916, metadata !DIExpression()), !dbg !2918
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2919
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()) #18, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2893, metadata !DIExpression()) #18, !dbg !2923
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2923, !alias.scope !2924
  %7 = icmp eq i32 %1, 10, !dbg !2927
  br i1 %7, label %8, label %9, !dbg !2928

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2929, !noalias !2924
  unreachable, !dbg !2929

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2930
  store i32 %1, i32* %10, align 8, !dbg !2931, !tbaa !1807, !alias.scope !2924
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2933
  ret i8* %11, !dbg !2934
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2935 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2893, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2884, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2938, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 0, metadata !2881, metadata !DIExpression()) #18, !dbg !2944
  call void @llvm.dbg.value(metadata i32 %0, metadata !2882, metadata !DIExpression()) #18, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2883, metadata !DIExpression()) #18, !dbg !2944
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2939, !alias.scope !2947
  %5 = icmp eq i32 %0, 10, !dbg !2950
  br i1 %5, label %6, label %7, !dbg !2951

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2952, !noalias !2947
  unreachable, !dbg !2952

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2953
  store i32 %0, i32* %8, align 8, !dbg !2954, !tbaa !1807, !alias.scope !2947
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2956
  ret i8* %9, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2958 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2893, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2917, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !2963, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %2, metadata !2964, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2915, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %2, metadata !2916, metadata !DIExpression()) #18, !dbg !2970
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()) #18, !dbg !2972
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2965, !alias.scope !2973
  %6 = icmp eq i32 %0, 10, !dbg !2976
  br i1 %6, label %7, label %8, !dbg !2977

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2978, !noalias !2973
  unreachable, !dbg !2978

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2979
  store i32 %0, i32* %9, align 8, !dbg !2980, !tbaa !1807, !alias.scope !2973
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2981
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2982
  ret i8* %10, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2984 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %2, metadata !2990, metadata !DIExpression()), !dbg !2992
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2993
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2991, metadata !DIExpression()), !dbg !2994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2995, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1825, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 %2, metadata !1826, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 %2, metadata !1828, metadata !DIExpression()), !dbg !2997
  %6 = lshr i8 %2, 5, !dbg !2999
  %7 = zext i8 %6 to i64, !dbg !2999
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3000
  call void @llvm.dbg.value(metadata i32* %8, metadata !1830, metadata !DIExpression()), !dbg !2997
  %9 = and i8 %2, 31, !dbg !3001
  %10 = zext i8 %9 to i32, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %10, metadata !1831, metadata !DIExpression()), !dbg !2997
  %11 = load i32, i32* %8, align 4, !dbg !3002, !tbaa !1272
  %12 = lshr i32 %11, %10, !dbg !3003
  %13 = and i32 %12, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %13, metadata !1832, metadata !DIExpression()), !dbg !2997
  %14 = xor i32 %13, 1, !dbg !3005
  %15 = shl i32 %14, %10, !dbg !3006
  %16 = xor i32 %15, %11, !dbg !3007
  store i32 %16, i32* %8, align 4, !dbg !3007, !tbaa !1272
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3008
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3009
  ret i8* %17, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3011 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2991, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %0, metadata !3015, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %1, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #18, !dbg !3020
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()) #18, !dbg !3020
  call void @llvm.dbg.value(metadata i8 %1, metadata !2990, metadata !DIExpression()) #18, !dbg !3020
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3022, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1825, metadata !DIExpression()) #18, !dbg !3023
  call void @llvm.dbg.value(metadata i8 %1, metadata !1826, metadata !DIExpression()) #18, !dbg !3023
  call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()) #18, !dbg !3023
  call void @llvm.dbg.value(metadata i8 %1, metadata !1828, metadata !DIExpression()) #18, !dbg !3023
  %5 = lshr i8 %1, 5, !dbg !3025
  %6 = zext i8 %5 to i64, !dbg !3025
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3026
  call void @llvm.dbg.value(metadata i32* %7, metadata !1830, metadata !DIExpression()) #18, !dbg !3023
  %8 = and i8 %1, 31, !dbg !3027
  %9 = zext i8 %8 to i32, !dbg !3027
  call void @llvm.dbg.value(metadata i32 %9, metadata !1831, metadata !DIExpression()) #18, !dbg !3023
  %10 = load i32, i32* %7, align 4, !dbg !3028, !tbaa !1272
  %11 = lshr i32 %10, %9, !dbg !3029
  %12 = and i32 %11, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %12, metadata !1832, metadata !DIExpression()) #18, !dbg !3023
  %13 = xor i32 %12, 1, !dbg !3031
  %14 = shl i32 %13, %9, !dbg !3032
  %15 = xor i32 %14, %10, !dbg !3033
  store i32 %15, i32* %7, align 4, !dbg !3033, !tbaa !1272
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3035
  ret i8* %16, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3037 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2991, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %0, metadata !3015, metadata !DIExpression()) #18, !dbg !3044
  call void @llvm.dbg.value(metadata i8 58, metadata !3016, metadata !DIExpression()) #18, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #18, !dbg !3045
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()) #18, !dbg !3045
  call void @llvm.dbg.value(metadata i8 58, metadata !2990, metadata !DIExpression()) #18, !dbg !3045
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3047, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1825, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i8 58, metadata !1828, metadata !DIExpression()) #18, !dbg !3048
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3050
  call void @llvm.dbg.value(metadata i32* %4, metadata !1830, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i32 26, metadata !1831, metadata !DIExpression()) #18, !dbg !3048
  %5 = load i32, i32* %4, align 4, !dbg !3051, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %5, metadata !1832, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3048
  %6 = or i32 %5, 67108864, !dbg !3052
  store i32 %6, i32* %4, align 4, !dbg !3052, !tbaa !1272
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3054
  ret i8* %7, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2991, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #18, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()) #18, !dbg !3063
  call void @llvm.dbg.value(metadata i8 58, metadata !2990, metadata !DIExpression()) #18, !dbg !3063
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3065, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1825, metadata !DIExpression()) #18, !dbg !3066
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()) #18, !dbg !3066
  call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()) #18, !dbg !3066
  call void @llvm.dbg.value(metadata i8 58, metadata !1828, metadata !DIExpression()) #18, !dbg !3066
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3068
  call void @llvm.dbg.value(metadata i32* %5, metadata !1830, metadata !DIExpression()) #18, !dbg !3066
  call void @llvm.dbg.value(metadata i32 26, metadata !1831, metadata !DIExpression()) #18, !dbg !3066
  %6 = load i32, i32* %5, align 4, !dbg !3069, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %6, metadata !1832, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3066
  %7 = or i32 %6, 67108864, !dbg !3070
  store i32 %7, i32* %5, align 4, !dbg !3070, !tbaa !1272
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3071
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3072
  ret i8* %8, !dbg !3073
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3074 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2893, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 %1, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %2, metadata !3078, metadata !DIExpression()), !dbg !3082
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3083
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3079, metadata !DIExpression()), !dbg !3084
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3085
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()) #18, !dbg !3086
  call void @llvm.dbg.value(metadata i32 0, metadata !2893, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3086
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3080, !alias.scope !3087
  %8 = icmp eq i32 %1, 10, !dbg !3090
  br i1 %8, label %9, label %10, !dbg !3091

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3092, !noalias !3087
  unreachable, !dbg !3092

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2893, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3086
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3085
  store i32 %1, i32* %11, align 8, !dbg !3085, !tbaa.struct !2996
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3085
  %13 = bitcast i32* %12 to i8*, !dbg !3085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3085, !tbaa.struct !2996
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1825, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 58, metadata !1826, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 58, metadata !1828, metadata !DIExpression()), !dbg !3093
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32* %14, metadata !1830, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 26, metadata !1831, metadata !DIExpression()), !dbg !3093
  %15 = load i32, i32* %14, align 4, !dbg !3096, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %15, metadata !1832, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3093
  %16 = or i32 %15, 67108864, !dbg !3097
  store i32 %16, i32* %14, align 4, !dbg !3097, !tbaa !1272
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3099
  ret i8* %17, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3101 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3109, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %2, metadata !3107, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %3, metadata !3108, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %0, metadata !3114, metadata !DIExpression()) #18, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %1, metadata !3115, metadata !DIExpression()) #18, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()) #18, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %3, metadata !3117, metadata !DIExpression()) #18, !dbg !3122
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()) #18, !dbg !3122
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3124, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1865, metadata !DIExpression()) #18, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !1866, metadata !DIExpression()) #18, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !1867, metadata !DIExpression()) #18, !dbg !3125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1865, metadata !DIExpression()) #18, !dbg !3125
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3127
  store i32 10, i32* %7, align 8, !dbg !3128, !tbaa !1807
  %8 = icmp ne i8* %1, null, !dbg !3129
  %9 = icmp ne i8* %2, null, !dbg !3130
  %10 = and i1 %8, %9, !dbg !3131
  br i1 %10, label %12, label %11, !dbg !3131

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3132
  unreachable, !dbg !3132

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3133
  store i8* %1, i8** %13, align 8, !dbg !3134, !tbaa !1881
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3135
  store i8* %2, i8** %14, align 8, !dbg !3136, !tbaa !1884
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3137
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3138
  ret i8* %15, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3110 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3114, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3115, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %3, metadata !3117, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %4, metadata !3118, metadata !DIExpression()), !dbg !3140
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3141
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3141
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3109, metadata !DIExpression()), !dbg !3142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3143, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1865, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %1, metadata !1866, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %2, metadata !1867, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1865, metadata !DIExpression()) #18, !dbg !3144
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3146
  store i32 10, i32* %8, align 8, !dbg !3147, !tbaa !1807
  %9 = icmp ne i8* %1, null, !dbg !3148
  %10 = icmp ne i8* %2, null, !dbg !3149
  %11 = and i1 %9, %10, !dbg !3150
  br i1 %11, label %13, label %12, !dbg !3150

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3151
  unreachable, !dbg !3151

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3152
  store i8* %1, i8** %14, align 8, !dbg !3153, !tbaa !1881
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3154
  store i8* %2, i8** %15, align 8, !dbg !3155, !tbaa !1884
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3157
  ret i8* %16, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3159 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3109, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %0, metadata !3163, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %2, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %2, metadata !3108, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()) #18, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()) #18, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %1, metadata !3116, metadata !DIExpression()) #18, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3117, metadata !DIExpression()) #18, !dbg !3171
  call void @llvm.dbg.value(metadata i64 -1, metadata !3118, metadata !DIExpression()) #18, !dbg !3171
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3173, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1865, metadata !DIExpression()) #18, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !1866, metadata !DIExpression()) #18, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %1, metadata !1867, metadata !DIExpression()) #18, !dbg !3174
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1865, metadata !DIExpression()) #18, !dbg !3174
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3176
  store i32 10, i32* %6, align 8, !dbg !3177, !tbaa !1807
  %7 = icmp ne i8* %0, null, !dbg !3178
  %8 = icmp ne i8* %1, null, !dbg !3179
  %9 = and i1 %7, %8, !dbg !3180
  br i1 %9, label %11, label %10, !dbg !3180

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3181
  unreachable, !dbg !3181

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3182
  store i8* %0, i8** %12, align 8, !dbg !3183, !tbaa !1881
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3184
  store i8* %1, i8** %13, align 8, !dbg !3185, !tbaa !1884
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3186
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3187
  ret i8* %14, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3189 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3109, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3194, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %2, metadata !3195, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %3, metadata !3196, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()) #18, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()) #18, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3116, metadata !DIExpression()) #18, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3117, metadata !DIExpression()) #18, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %3, metadata !3118, metadata !DIExpression()) #18, !dbg !3200
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3202, !tbaa.struct !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1865, metadata !DIExpression()) #18, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !1866, metadata !DIExpression()) #18, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %1, metadata !1867, metadata !DIExpression()) #18, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1865, metadata !DIExpression()) #18, !dbg !3203
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3205
  store i32 10, i32* %7, align 8, !dbg !3206, !tbaa !1807
  %8 = icmp ne i8* %0, null, !dbg !3207
  %9 = icmp ne i8* %1, null, !dbg !3208
  %10 = and i1 %8, %9, !dbg !3209
  br i1 %10, label %12, label %11, !dbg !3209

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3210
  unreachable, !dbg !3210

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3211
  store i8* %0, i8** %13, align 8, !dbg !3212, !tbaa !1881
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3213
  store i8* %1, i8** %14, align 8, !dbg !3214, !tbaa !1884
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3216
  ret i8* %15, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i8* %1, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %2, metadata !3224, metadata !DIExpression()), !dbg !3225
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3226
  ret i8* %4, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()) #18, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #18, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #18, !dbg !3235
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3237
  ret i8* %3, !dbg !3238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3223, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i64 -1, metadata !3224, metadata !DIExpression()) #18, !dbg !3246
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3248
  ret i8* %3, !dbg !3249
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3252, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3243, metadata !DIExpression()) #18, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()) #18, !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()) #18, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #18, !dbg !3256
  call void @llvm.dbg.value(metadata i64 -1, metadata !3224, metadata !DIExpression()) #18, !dbg !3256
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3258
  ret i8* %2, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3260 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3268, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %1, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %2, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %3, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8** %4, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %5, metadata !3273, metadata !DIExpression()), !dbg !3274
  %7 = icmp eq i8* %1, null, !dbg !3275
  br i1 %7, label %10, label %8, !dbg !3277

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3278
  br label %12, !dbg !3278

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3279
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #18, !dbg !3280
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3280
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3281
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #18, !dbg !3282
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #18, !dbg !3282
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3283
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
  ], !dbg !3284

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #18, !dbg !3285
  %21 = load i8*, i8** %4, align 8, !dbg !3285, !tbaa !1178
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3285
  br label %147, !dbg !3287

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #18, !dbg !3288
  %25 = load i8*, i8** %4, align 8, !dbg !3288, !tbaa !1178
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3288
  %27 = load i8*, i8** %26, align 8, !dbg !3288, !tbaa !1178
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3288
  br label %147, !dbg !3289

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #18, !dbg !3290
  %31 = load i8*, i8** %4, align 8, !dbg !3290, !tbaa !1178
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3290
  %33 = load i8*, i8** %32, align 8, !dbg !3290, !tbaa !1178
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3290
  %35 = load i8*, i8** %34, align 8, !dbg !3290, !tbaa !1178
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3290
  br label %147, !dbg !3291

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #18, !dbg !3292
  %39 = load i8*, i8** %4, align 8, !dbg !3292, !tbaa !1178
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3292
  %41 = load i8*, i8** %40, align 8, !dbg !3292, !tbaa !1178
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3292
  %43 = load i8*, i8** %42, align 8, !dbg !3292, !tbaa !1178
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3292
  %45 = load i8*, i8** %44, align 8, !dbg !3292, !tbaa !1178
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3292
  br label %147, !dbg !3293

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #18, !dbg !3294
  %49 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !1178
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %51 = load i8*, i8** %50, align 8, !dbg !3294, !tbaa !1178
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3294
  %53 = load i8*, i8** %52, align 8, !dbg !3294, !tbaa !1178
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3294
  %55 = load i8*, i8** %54, align 8, !dbg !3294, !tbaa !1178
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3294
  %57 = load i8*, i8** %56, align 8, !dbg !3294, !tbaa !1178
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3294
  br label %147, !dbg !3295

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #18, !dbg !3296
  %61 = load i8*, i8** %4, align 8, !dbg !3296, !tbaa !1178
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3296
  %63 = load i8*, i8** %62, align 8, !dbg !3296, !tbaa !1178
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3296
  %65 = load i8*, i8** %64, align 8, !dbg !3296, !tbaa !1178
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3296
  %67 = load i8*, i8** %66, align 8, !dbg !3296, !tbaa !1178
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3296
  %69 = load i8*, i8** %68, align 8, !dbg !3296, !tbaa !1178
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3296
  %71 = load i8*, i8** %70, align 8, !dbg !3296, !tbaa !1178
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3296
  br label %147, !dbg !3297

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #18, !dbg !3298
  %75 = load i8*, i8** %4, align 8, !dbg !3298, !tbaa !1178
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3298
  %77 = load i8*, i8** %76, align 8, !dbg !3298, !tbaa !1178
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3298
  %79 = load i8*, i8** %78, align 8, !dbg !3298, !tbaa !1178
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3298
  %81 = load i8*, i8** %80, align 8, !dbg !3298, !tbaa !1178
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3298
  %83 = load i8*, i8** %82, align 8, !dbg !3298, !tbaa !1178
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3298
  %85 = load i8*, i8** %84, align 8, !dbg !3298, !tbaa !1178
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3298
  %87 = load i8*, i8** %86, align 8, !dbg !3298, !tbaa !1178
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3298
  br label %147, !dbg !3299

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #18, !dbg !3300
  %91 = load i8*, i8** %4, align 8, !dbg !3300, !tbaa !1178
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3300
  %93 = load i8*, i8** %92, align 8, !dbg !3300, !tbaa !1178
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3300
  %95 = load i8*, i8** %94, align 8, !dbg !3300, !tbaa !1178
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3300
  %97 = load i8*, i8** %96, align 8, !dbg !3300, !tbaa !1178
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3300
  %99 = load i8*, i8** %98, align 8, !dbg !3300, !tbaa !1178
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3300
  %101 = load i8*, i8** %100, align 8, !dbg !3300, !tbaa !1178
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3300
  %103 = load i8*, i8** %102, align 8, !dbg !3300, !tbaa !1178
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3300
  %105 = load i8*, i8** %104, align 8, !dbg !3300, !tbaa !1178
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3300
  br label %147, !dbg !3301

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #18, !dbg !3302
  %109 = load i8*, i8** %4, align 8, !dbg !3302, !tbaa !1178
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3302
  %111 = load i8*, i8** %110, align 8, !dbg !3302, !tbaa !1178
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3302
  %113 = load i8*, i8** %112, align 8, !dbg !3302, !tbaa !1178
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3302
  %115 = load i8*, i8** %114, align 8, !dbg !3302, !tbaa !1178
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3302
  %117 = load i8*, i8** %116, align 8, !dbg !3302, !tbaa !1178
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3302
  %119 = load i8*, i8** %118, align 8, !dbg !3302, !tbaa !1178
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3302
  %121 = load i8*, i8** %120, align 8, !dbg !3302, !tbaa !1178
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3302
  %123 = load i8*, i8** %122, align 8, !dbg !3302, !tbaa !1178
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3302
  %125 = load i8*, i8** %124, align 8, !dbg !3302, !tbaa !1178
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3302
  br label %147, !dbg !3303

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #18, !dbg !3304
  %129 = load i8*, i8** %4, align 8, !dbg !3304, !tbaa !1178
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3304
  %131 = load i8*, i8** %130, align 8, !dbg !3304, !tbaa !1178
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3304
  %133 = load i8*, i8** %132, align 8, !dbg !3304, !tbaa !1178
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3304
  %135 = load i8*, i8** %134, align 8, !dbg !3304, !tbaa !1178
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3304
  %137 = load i8*, i8** %136, align 8, !dbg !3304, !tbaa !1178
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3304
  %139 = load i8*, i8** %138, align 8, !dbg !3304, !tbaa !1178
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3304
  %141 = load i8*, i8** %140, align 8, !dbg !3304, !tbaa !1178
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3304
  %143 = load i8*, i8** %142, align 8, !dbg !3304, !tbaa !1178
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3304
  %145 = load i8*, i8** %144, align 8, !dbg !3304, !tbaa !1178
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3304
  br label %147, !dbg !3305

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3307 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %2, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %3, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8** %4, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 0, metadata !3316, metadata !DIExpression()), !dbg !3317
  br label %6, !dbg !3318

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3320
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3321
  %9 = load i8*, i8** %8, align 8, !dbg !3321, !tbaa !1178
  %10 = icmp eq i8* %9, null, !dbg !3323
  %11 = add i64 %7, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %11, metadata !3316, metadata !DIExpression()), !dbg !3317
  br i1 %10, label %12, label %6, !dbg !3323, !llvm.loop !3325

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3327
  ret void, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3329 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3340, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !3341, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %2, metadata !3342, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %3, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3344, metadata !DIExpression()), !dbg !3348
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3349
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 0, metadata !3345, metadata !DIExpression()), !dbg !3348
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3351
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3351
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3351
  %11 = load i32, i32* %8, align 8, !dbg !3354
  %12 = icmp ult i32 %11, 41, !dbg !3354
  br i1 %12, label %13, label %18, !dbg !3354

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3354
  %15 = zext i32 %11 to i64, !dbg !3354
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3354
  %17 = add nuw nsw i32 %11, 8, !dbg !3354
  store i32 %17, i32* %8, align 8, !dbg !3354
  br label %21, !dbg !3354

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3354
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3354
  store i8* %20, i8** %9, align 8, !dbg !3354
  br label %21, !dbg !3354

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3354
  %25 = load i8*, i8** %24, align 8, !dbg !3354
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3355
  store i8* %25, i8** %26, align 16, !dbg !3356, !tbaa !1178
  %27 = icmp eq i8* %25, null, !dbg !3357
  br i1 %27, label %30, label %28, !dbg !3358

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3345, metadata !DIExpression()), !dbg !3348
  %29 = icmp ult i32 %22, 41, !dbg !3354
  br i1 %29, label %35, label %32, !dbg !3354

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3359
  call void @llvm.dbg.value(metadata i64 %31, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %31, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3361
  ret void, !dbg !3361

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3354
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3354
  store i8* %34, i8** %9, align 8, !dbg !3354
  br label %40, !dbg !3354

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3354
  %37 = zext i32 %22 to i64, !dbg !3354
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3354
  %39 = add nuw nsw i32 %22, 8, !dbg !3354
  store i32 %39, i32* %8, align 8, !dbg !3354
  br label %40, !dbg !3354

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3354
  %44 = load i8*, i8** %43, align 8, !dbg !3354
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3355
  store i8* %44, i8** %45, align 8, !dbg !3356, !tbaa !1178
  %46 = icmp eq i8* %44, null, !dbg !3357
  br i1 %46, label %30, label %47, !dbg !3358

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3345, metadata !DIExpression()), !dbg !3348
  %48 = icmp ult i32 %41, 41, !dbg !3354
  br i1 %48, label %52, label %49, !dbg !3354

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3354
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3354
  store i8* %51, i8** %9, align 8, !dbg !3354
  br label %57, !dbg !3354

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3354
  %54 = zext i32 %41 to i64, !dbg !3354
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3354
  %56 = add nuw nsw i32 %41, 8, !dbg !3354
  store i32 %56, i32* %8, align 8, !dbg !3354
  br label %57, !dbg !3354

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3354
  %61 = load i8*, i8** %60, align 8, !dbg !3354
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3355
  store i8* %61, i8** %62, align 16, !dbg !3356, !tbaa !1178
  %63 = icmp eq i8* %61, null, !dbg !3357
  br i1 %63, label %30, label %64, !dbg !3358

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3345, metadata !DIExpression()), !dbg !3348
  %65 = icmp ult i32 %58, 41, !dbg !3354
  br i1 %65, label %69, label %66, !dbg !3354

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3354
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3354
  store i8* %68, i8** %9, align 8, !dbg !3354
  br label %74, !dbg !3354

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3354
  %71 = zext i32 %58 to i64, !dbg !3354
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3354
  %73 = add nuw nsw i32 %58, 8, !dbg !3354
  store i32 %73, i32* %8, align 8, !dbg !3354
  br label %74, !dbg !3354

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3354
  %78 = load i8*, i8** %77, align 8, !dbg !3354
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3355
  store i8* %78, i8** %79, align 8, !dbg !3356, !tbaa !1178
  %80 = icmp eq i8* %78, null, !dbg !3357
  br i1 %80, label %30, label %81, !dbg !3358

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3345, metadata !DIExpression()), !dbg !3348
  %82 = icmp ult i32 %75, 41, !dbg !3354
  br i1 %82, label %86, label %83, !dbg !3354

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3354
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3354
  store i8* %85, i8** %9, align 8, !dbg !3354
  br label %91, !dbg !3354

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3354
  %88 = zext i32 %75 to i64, !dbg !3354
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3354
  %90 = add nuw nsw i32 %75, 8, !dbg !3354
  store i32 %90, i32* %8, align 8, !dbg !3354
  br label %91, !dbg !3354

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3354
  %95 = load i8*, i8** %94, align 8, !dbg !3354
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3355
  store i8* %95, i8** %96, align 16, !dbg !3356, !tbaa !1178
  %97 = icmp eq i8* %95, null, !dbg !3357
  br i1 %97, label %30, label %98, !dbg !3358

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3345, metadata !DIExpression()), !dbg !3348
  %99 = icmp ult i32 %92, 41, !dbg !3354
  br i1 %99, label %103, label %100, !dbg !3354

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3354
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3354
  store i8* %102, i8** %9, align 8, !dbg !3354
  br label %108, !dbg !3354

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3354
  %105 = zext i32 %92 to i64, !dbg !3354
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3354
  %107 = add nuw nsw i32 %92, 8, !dbg !3354
  store i32 %107, i32* %8, align 8, !dbg !3354
  br label %108, !dbg !3354

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3354
  %111 = load i8*, i8** %110, align 8, !dbg !3354
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3355
  store i8* %111, i8** %112, align 8, !dbg !3356, !tbaa !1178
  %113 = icmp eq i8* %111, null, !dbg !3357
  br i1 %113, label %30, label %114, !dbg !3358

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3345, metadata !DIExpression()), !dbg !3348
  %115 = load i8*, i8** %9, align 8, !dbg !3354
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3354
  store i8* %116, i8** %9, align 8, !dbg !3354
  %117 = bitcast i8* %115 to i8**, !dbg !3354
  %118 = load i8*, i8** %117, align 8, !dbg !3354
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3355
  store i8* %118, i8** %119, align 16, !dbg !3356, !tbaa !1178
  %120 = icmp eq i8* %118, null, !dbg !3357
  br i1 %120, label %30, label %121, !dbg !3358

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3345, metadata !DIExpression()), !dbg !3348
  %122 = load i8*, i8** %9, align 8, !dbg !3354
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3354
  store i8* %123, i8** %9, align 8, !dbg !3354
  %124 = bitcast i8* %122 to i8**, !dbg !3354
  %125 = load i8*, i8** %124, align 8, !dbg !3354
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3355
  store i8* %125, i8** %126, align 8, !dbg !3356, !tbaa !1178
  %127 = icmp eq i8* %125, null, !dbg !3357
  br i1 %127, label %30, label %128, !dbg !3358

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3345, metadata !DIExpression()), !dbg !3348
  %129 = load i8*, i8** %9, align 8, !dbg !3354
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3354
  store i8* %130, i8** %9, align 8, !dbg !3354
  %131 = bitcast i8* %129 to i8**, !dbg !3354
  %132 = load i8*, i8** %131, align 8, !dbg !3354
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3355
  store i8* %132, i8** %133, align 16, !dbg !3356, !tbaa !1178
  %134 = icmp eq i8* %132, null, !dbg !3357
  br i1 %134, label %30, label %135, !dbg !3358

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3345, metadata !DIExpression()), !dbg !3348
  %136 = load i8*, i8** %9, align 8, !dbg !3354
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3354
  store i8* %137, i8** %9, align 8, !dbg !3354
  %138 = bitcast i8* %136 to i8**, !dbg !3354
  %139 = load i8*, i8** %138, align 8, !dbg !3354
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3355
  store i8* %139, i8** %140, align 8, !dbg !3356, !tbaa !1178
  %141 = icmp eq i8* %139, null, !dbg !3357
  %142 = select i1 %141, i64 9, i64 10, !dbg !3358
  br label %30, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3362 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3366, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* %1, metadata !3367, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* %2, metadata !3368, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* %3, metadata !3369, metadata !DIExpression()), !dbg !3376
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3377
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3370, metadata !DIExpression()), !dbg !3378
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3379
  call void @llvm.va_start(i8* nonnull %6), !dbg !3379
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3380
  call void @llvm.va_end(i8* nonnull %6), !dbg !3381
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3382
  ret void, !dbg !3382
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3383 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3384, !tbaa !1178
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3384
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #18, !dbg !3385
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #18, !dbg !3385
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #18, !dbg !3386
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #18, !dbg !3386
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #18, !dbg !3387
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #18, !dbg !3387
  ret void, !dbg !3388
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3389 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  %3 = udiv i64 9223372036854775807, %1, !dbg !3394
  %4 = icmp ult i64 %3, %0, !dbg !3394
  br i1 %4, label %5, label %6, !dbg !3396

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3397
  unreachable, !dbg !3397

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %7, metadata !3399, metadata !DIExpression()) #18, !dbg !3405
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %8, metadata !3404, metadata !DIExpression()) #18, !dbg !3405
  %9 = icmp eq i8* %8, null, !dbg !3408
  %10 = icmp ne i64 %7, 0, !dbg !3410
  %11 = and i1 %10, %9, !dbg !3411
  br i1 %11, label %12, label %13, !dbg !3411

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3412
  unreachable, !dbg !3412

13:                                               ; preds = %6
  ret i8* %8, !dbg !3413
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3400 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3399, metadata !DIExpression()), !dbg !3414
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %2, metadata !3404, metadata !DIExpression()), !dbg !3414
  %3 = icmp eq i8* %2, null, !dbg !3416
  %4 = icmp ne i64 %0, 0, !dbg !3417
  %5 = and i1 %4, %3, !dbg !3418
  br i1 %5, label %6, label %7, !dbg !3418

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3419
  unreachable, !dbg !3419

7:                                                ; preds = %1
  ret i8* %2, !dbg !3420
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %2, metadata !3427, metadata !DIExpression()), !dbg !3428
  %4 = udiv i64 9223372036854775807, %2, !dbg !3429
  %5 = icmp ult i64 %4, %1, !dbg !3429
  br i1 %5, label %6, label %7, !dbg !3431

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3432
  unreachable, !dbg !3432

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()) #18, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %8, metadata !3439, metadata !DIExpression()) #18, !dbg !3440
  %9 = icmp eq i64 %8, 0, !dbg !3442
  %10 = icmp ne i8* %0, null, !dbg !3444
  %11 = and i1 %10, %9, !dbg !3445
  br i1 %11, label %12, label %13, !dbg !3445

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3446
  br label %19, !dbg !3448

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %14, metadata !3434, metadata !DIExpression()) #18, !dbg !3440
  %15 = icmp eq i8* %14, null, !dbg !3450
  %16 = icmp ne i64 %8, 0, !dbg !3452
  %17 = and i1 %16, %15, !dbg !3453
  br i1 %17, label %18, label %19, !dbg !3453

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3454
  unreachable, !dbg !3454

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3440
  ret i8* %20, !dbg !3455
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3435 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3456
  %3 = icmp eq i64 %1, 0, !dbg !3457
  %4 = icmp ne i8* %0, null, !dbg !3458
  %5 = and i1 %4, %3, !dbg !3459
  br i1 %5, label %6, label %7, !dbg !3459

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3460
  br label %13, !dbg !3461

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %8, metadata !3434, metadata !DIExpression()), !dbg !3456
  %9 = icmp eq i8* %8, null, !dbg !3463
  %10 = icmp ne i64 %1, 0, !dbg !3464
  %11 = and i1 %10, %9, !dbg !3465
  br i1 %11, label %12, label %13, !dbg !3465

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3466
  unreachable, !dbg !3466

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3456
  ret i8* %14, !dbg !3467
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !532 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !537, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64* %1, metadata !538, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %2, metadata !539, metadata !DIExpression()), !dbg !3468
  %4 = load i64, i64* %1, align 8, !dbg !3469, !tbaa !2711
  call void @llvm.dbg.value(metadata i64 %4, metadata !540, metadata !DIExpression()), !dbg !3468
  %5 = icmp eq i8* %0, null, !dbg !3470
  br i1 %5, label %6, label %20, !dbg !3472

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3473
  br i1 %7, label %8, label %13, !dbg !3476

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %9, metadata !540, metadata !DIExpression()), !dbg !3468
  %10 = icmp ugt i64 %2, 128, !dbg !3479
  %11 = zext i1 %10 to i64, !dbg !3479
  %12 = add nuw nsw i64 %9, %11, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %12, metadata !540, metadata !DIExpression()), !dbg !3468
  br label %13, !dbg !3481

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3468
  call void @llvm.dbg.value(metadata i64 %14, metadata !540, metadata !DIExpression()), !dbg !3468
  %15 = udiv i64 9223372036854775807, %2, !dbg !3482
  %16 = icmp ult i64 %15, %14, !dbg !3482
  br i1 %16, label %19, label %17, !dbg !3484

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !540, metadata !DIExpression()), !dbg !3468
  store i64 %14, i64* %1, align 8, !dbg !3485, !tbaa !2711
  %18 = mul i64 %14, %2, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()) #18, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %28, metadata !3439, metadata !DIExpression()) #18, !dbg !3487
  br label %31, !dbg !3489

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3490
  unreachable, !dbg !3490

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3491
  %22 = icmp ugt i64 %21, %4, !dbg !3494
  br i1 %22, label %24, label %23, !dbg !3495

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3496
  unreachable, !dbg !3496

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3497
  %26 = add nuw i64 %4, 1, !dbg !3498
  %27 = add i64 %26, %25, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %27, metadata !540, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %27, metadata !540, metadata !DIExpression()), !dbg !3468
  store i64 %27, i64* %1, align 8, !dbg !3485, !tbaa !2711
  %28 = mul i64 %27, %2, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()) #18, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %28, metadata !3439, metadata !DIExpression()) #18, !dbg !3487
  %29 = icmp eq i64 %28, 0, !dbg !3500
  br i1 %29, label %30, label %31, !dbg !3489

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3501
  br label %38, !dbg !3502

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %33, metadata !3434, metadata !DIExpression()) #18, !dbg !3487
  %34 = icmp eq i8* %33, null, !dbg !3504
  %35 = icmp ne i64 %32, 0, !dbg !3505
  %36 = and i1 %35, %34, !dbg !3506
  br i1 %36, label %37, label %38, !dbg !3506

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3507
  unreachable, !dbg !3507

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3487
  ret i8* %39, !dbg !3508
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3509 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %0, metadata !3399, metadata !DIExpression()) #18, !dbg !3513
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %2, metadata !3404, metadata !DIExpression()) #18, !dbg !3513
  %3 = icmp eq i8* %2, null, !dbg !3516
  %4 = icmp ne i64 %0, 0, !dbg !3517
  %5 = and i1 %4, %3, !dbg !3518
  br i1 %5, label %6, label %7, !dbg !3518

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3519
  unreachable, !dbg !3519

7:                                                ; preds = %1
  ret i8* %2, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64* %1, metadata !3526, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %0, metadata !537, metadata !DIExpression()) #18, !dbg !3528
  call void @llvm.dbg.value(metadata i64* %1, metadata !538, metadata !DIExpression()) #18, !dbg !3528
  call void @llvm.dbg.value(metadata i64 1, metadata !539, metadata !DIExpression()) #18, !dbg !3528
  %3 = load i64, i64* %1, align 8, !dbg !3530, !tbaa !2711
  call void @llvm.dbg.value(metadata i64 %3, metadata !540, metadata !DIExpression()) #18, !dbg !3528
  %4 = icmp eq i8* %0, null, !dbg !3531
  br i1 %4, label %5, label %12, !dbg !3532

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3533
  br i1 %6, label %9, label %7, !dbg !3534

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !540, metadata !DIExpression()) #18, !dbg !3528
  %8 = icmp slt i64 %3, 0, !dbg !3535
  br i1 %8, label %11, label %9, !dbg !3536

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !540, metadata !DIExpression()) #18, !dbg !3528
  store i64 %10, i64* %1, align 8, !dbg !3537, !tbaa !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()) #18, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %18, metadata !3439, metadata !DIExpression()) #18, !dbg !3538
  br label %21, !dbg !3540

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3541
  unreachable, !dbg !3541

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3542
  br i1 %13, label %15, label %14, !dbg !3543

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3544
  unreachable, !dbg !3544

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3545
  %17 = add nuw nsw i64 %3, 1, !dbg !3546
  %18 = add nuw nsw i64 %17, %16, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %18, metadata !540, metadata !DIExpression()) #18, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %18, metadata !540, metadata !DIExpression()) #18, !dbg !3528
  store i64 %18, i64* %1, align 8, !dbg !3537, !tbaa !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()) #18, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %18, metadata !3439, metadata !DIExpression()) #18, !dbg !3538
  %19 = icmp eq i64 %18, 0, !dbg !3548
  br i1 %19, label %20, label %21, !dbg !3540

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3549
  br label %28, !dbg !3550

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3551
  call void @llvm.dbg.value(metadata i8* %23, metadata !3434, metadata !DIExpression()) #18, !dbg !3538
  %24 = icmp eq i8* %23, null, !dbg !3552
  %25 = icmp ne i64 %22, 0, !dbg !3553
  %26 = and i1 %25, %24, !dbg !3554
  br i1 %26, label %27, label %28, !dbg !3554

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3555
  unreachable, !dbg !3555

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3538
  ret i8* %29, !dbg !3556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3557 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3559, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()) #18, !dbg !3566
  call void @llvm.dbg.value(metadata i64 1, metadata !3564, metadata !DIExpression()) #18, !dbg !3566
  %2 = icmp slt i64 %0, 0, !dbg !3568
  br i1 %2, label %6, label %3, !dbg !3570

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %4, metadata !3565, metadata !DIExpression()) #18, !dbg !3566
  %5 = icmp eq i8* %4, null, !dbg !3572
  br i1 %5, label %6, label %7, !dbg !3573

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3574
  unreachable, !dbg !3574

7:                                                ; preds = %3
  ret i8* %4, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3562 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()), !dbg !3576
  %3 = udiv i64 9223372036854775807, %1, !dbg !3577
  %4 = icmp ult i64 %3, %0, !dbg !3577
  br i1 %4, label %8, label %5, !dbg !3578

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %6, metadata !3565, metadata !DIExpression()), !dbg !3576
  %7 = icmp eq i8* %6, null, !dbg !3580
  br i1 %7, label %8, label %9, !dbg !3581

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3582
  unreachable, !dbg !3582

9:                                                ; preds = %5
  ret i8* %6, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %1, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()) #18, !dbg !3591
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %3, metadata !3404, metadata !DIExpression()) #18, !dbg !3591
  %4 = icmp eq i8* %3, null, !dbg !3594
  %5 = icmp ne i64 %1, 0, !dbg !3595
  %6 = and i1 %5, %4, !dbg !3596
  br i1 %6, label %7, label %8, !dbg !3596

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3597
  unreachable, !dbg !3597

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3598, metadata !DIExpression()) #18, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #18, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()) #18, !dbg !3607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3609
  ret i8* %3, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3615
  %3 = add i64 %2, 1, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %0, metadata !3588, metadata !DIExpression()) #18, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %3, metadata !3589, metadata !DIExpression()) #18, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %3, metadata !3399, metadata !DIExpression()) #18, !dbg !3619
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %4, metadata !3404, metadata !DIExpression()) #18, !dbg !3619
  %5 = icmp eq i8* %4, null, !dbg !3622
  %6 = icmp ne i64 %3, 0, !dbg !3623
  %7 = and i1 %6, %5, !dbg !3624
  br i1 %7, label %8, label %9, !dbg !3624

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3625
  unreachable, !dbg !3625

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3598, metadata !DIExpression()) #18, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #18, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %3, metadata !3606, metadata !DIExpression()) #18, !dbg !3626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3628
  ret i8* %4, !dbg !3629
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3630 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3631, !tbaa !1272
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #18, !dbg !3632
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #18, !dbg !3633
  tail call void @abort() #23, !dbg !3634
  unreachable, !dbg !3634
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3635 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3637, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3643
  %3 = icmp eq i64 %0, 0, !dbg !3644
  %4 = icmp eq i64 %1, 0, !dbg !3645
  %5 = or i1 %3, %4, !dbg !3646
  br i1 %5, label %11, label %6, !dbg !3646

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3640, metadata !DIExpression()), !dbg !3647
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3648
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3648
  br i1 %8, label %9, label %11, !dbg !3650

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3651
  store i32 12, i32* %10, align 4, !dbg !3653, !tbaa !1272
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3637, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %12, metadata !3638, metadata !DIExpression()), !dbg !3643
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %14, metadata !3639, metadata !DIExpression()), !dbg !3643
  br label %15, !dbg !3655

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3643
  ret i8* %16, !dbg !3656
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @lchmod(i8* nocapture nonnull readonly %0, i32 %1) local_unnamed_addr #8 !dbg !403 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [26 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !423, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !3657
  %5 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 2752512) #18, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %5, metadata !425, metadata !DIExpression()), !dbg !3657
  %6 = icmp slt i32 %5, 0, !dbg !3659
  br i1 %6, label %40, label %7, !dbg !3661

7:                                                ; preds = %2
  %8 = bitcast %struct.stat* %3 to i8*, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #18, !dbg !3662
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !426, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %5, metadata !3664, metadata !DIExpression()) #18, !dbg !3673
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), metadata !3670, metadata !DIExpression()) #18, !dbg !3673
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !3671, metadata !DIExpression()) #18, !dbg !3673
  call void @llvm.dbg.value(metadata i32 4096, metadata !3672, metadata !DIExpression()) #18, !dbg !3673
  %9 = call i32 @__fxstatat(i32 1, i32 %5, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), %struct.stat* nonnull %3, i32 4096) #18, !dbg !3675
  %10 = icmp eq i32 %9, 0, !dbg !3676
  br i1 %10, label %15, label %11, !dbg !3677

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #25, !dbg !3678
  %13 = load i32, i32* %12, align 4, !dbg !3678, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %13, metadata !462, metadata !DIExpression()), !dbg !3679
  %14 = call i32 @close(i32 %5) #18, !dbg !3680
  store i32 %13, i32* %12, align 4, !dbg !3681, !tbaa !1272
  br label %38

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !3682
  %17 = load i32, i32* %16, align 8, !dbg !3682, !tbaa !1643
  %18 = and i32 %17, 61440, !dbg !3682
  %19 = icmp eq i32 %18, 40960, !dbg !3682
  br i1 %19, label %20, label %23, !dbg !3684

20:                                               ; preds = %15
  %21 = call i32 @close(i32 %5) #18, !dbg !3685
  %22 = tail call i32* @__errno_location() #25, !dbg !3687
  store i32 95, i32* %22, align 4, !dbg !3688, !tbaa !1272
  br label %38, !dbg !3689

23:                                               ; preds = %15
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %4, i64 0, i64 0, !dbg !3690
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %24) #18, !dbg !3690
  call void @llvm.dbg.declare(metadata [26 x i8]* %4, metadata !465, metadata !DIExpression()), !dbg !3691
  %25 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %24, i32 1, i64 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @lchmod.fmt, i64 0, i64 0), i32 %5) #18, !dbg !3692
  %26 = call i32 @chmod(i8* nonnull %24, i32 %1) #18, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %26, metadata !469, metadata !DIExpression()), !dbg !3657
  %27 = tail call i32* @__errno_location() #25, !dbg !3694
  %28 = load i32, i32* %27, align 4, !dbg !3694, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %28, metadata !470, metadata !DIExpression()), !dbg !3657
  %29 = call i32 @close(i32 %5) #18, !dbg !3695
  %30 = icmp eq i32 %26, 0, !dbg !3696
  br i1 %30, label %36, label %31, !dbg !3698

31:                                               ; preds = %23
  %32 = icmp eq i32 %28, 2, !dbg !3699
  br i1 %32, label %34, label %33, !dbg !3701

33:                                               ; preds = %31
  store i32 %28, i32* %27, align 4, !dbg !3702, !tbaa !1272
  br label %36, !dbg !3704

34:                                               ; preds = %31
  %35 = call i32 @chmod(i8* nonnull %0, i32 %1) #18, !dbg !3705
  br label %36, !dbg !3706

36:                                               ; preds = %23, %34, %33
  %37 = phi i32 [ %26, %33 ], [ %35, %34 ], [ 0, %23 ], !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %24) #18, !dbg !3707
  br label %38

38:                                               ; preds = %36, %20, %11
  %39 = phi i32 [ -1, %11 ], [ -1, %20 ], [ %37, %36 ], !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #18, !dbg !3707
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ %39, %38 ], [ %5, %2 ], !dbg !3657
  ret i32 %41, !dbg !3707
}

; Function Attrs: nofree
declare !dbg !412 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

declare !dbg !416 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare !dbg !420 i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3708 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3716, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8* %1, metadata !3717, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %2, metadata !3718, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3719, metadata !DIExpression()), !dbg !3725
  %6 = bitcast i32* %5 to i8*, !dbg !3726
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3726
  %7 = icmp eq i32* %0, null, !dbg !3727
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3729
  call void @llvm.dbg.value(metadata i32* %8, metadata !3716, metadata !DIExpression()), !dbg !3725
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %9, metadata !3720, metadata !DIExpression()), !dbg !3725
  %10 = icmp ugt i64 %9, -3, !dbg !3731
  %11 = icmp ne i64 %2, 0, !dbg !3732
  %12 = and i1 %11, %10, !dbg !3733
  br i1 %12, label %13, label %18, !dbg !3733

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3734
  br i1 %14, label %18, label %15, !dbg !3735

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3736, !tbaa !1422
  call void @llvm.dbg.value(metadata i8 %16, metadata !3722, metadata !DIExpression()), !dbg !3737
  %17 = zext i8 %16 to i32, !dbg !3738
  store i32 %17, i32* %8, align 4, !dbg !3739, !tbaa !1272
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3725
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3740
  ret i64 %19, !dbg !3740
}

; Function Attrs: nounwind
declare !dbg !558 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3741 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3747, metadata !DIExpression()), !dbg !3752
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3753
  call void @llvm.dbg.value(metadata i1 undef, metadata !3748, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3754, metadata !DIExpression()), !dbg !3758
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3760
  %4 = load i32, i32* %3, align 8, !dbg !3760, !tbaa !3761
  %5 = and i32 %4, 32, !dbg !3760
  %6 = icmp eq i32 %5, 0, !dbg !3763
  call void @llvm.dbg.value(metadata i1 %6, metadata !3750, metadata !DIExpression()), !dbg !3752
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3764
  %8 = icmp ne i32 %7, 0, !dbg !3765
  call void @llvm.dbg.value(metadata i1 %8, metadata !3751, metadata !DIExpression()), !dbg !3752
  br i1 %6, label %9, label %19, !dbg !3766

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3768
  call void @llvm.dbg.value(metadata i1 %10, metadata !3748, metadata !DIExpression()), !dbg !3752
  %11 = xor i1 %8, true, !dbg !3769
  %12 = or i1 %10, %11, !dbg !3769
  %13 = sext i1 %8 to i32, !dbg !3769
  br i1 %12, label %22, label %14, !dbg !3769

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3770
  %16 = load i32, i32* %15, align 4, !dbg !3770, !tbaa !1272
  %17 = icmp ne i32 %16, 9, !dbg !3771
  %18 = sext i1 %17 to i32, !dbg !3772
  br label %22, !dbg !3772

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3773

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3775
  store i32 0, i32* %21, align 4, !dbg !3777, !tbaa !1272
  br label %22, !dbg !3775

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3752
  ret i32 %23, !dbg !3778
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3779 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3786
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3787
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3787
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3782, metadata !DIExpression()), !dbg !3788
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3789
  %5 = icmp eq i32 %4, 0, !dbg !3789
  br i1 %5, label %6, label %13, !dbg !3791

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3792
  %8 = load i16, i16* %7, align 16, !dbg !3792
  %9 = icmp eq i16 %8, 67, !dbg !3792
  br i1 %9, label %13, label %10, !dbg !3793

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i64 6), !dbg !3794
  %12 = icmp ne i32 %11, 0, !dbg !3795
  br label %13, !dbg !3793

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3786
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3796
  ret i1 %14, !dbg !3796
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3797 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %1, metadata !3799, metadata !DIExpression()), !dbg !3801
  %2 = icmp eq i8* %1, null, !dbg !3802
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %3, metadata !3799, metadata !DIExpression()), !dbg !3801
  %4 = load i8, i8* %3, align 1, !dbg !3805, !tbaa !1422
  %5 = icmp eq i8 %4, 0, !dbg !3809
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %6, metadata !3799, metadata !DIExpression()), !dbg !3801
  ret i8* %6, !dbg !3811
}

; Function Attrs: nounwind
declare !dbg !1010 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %2, metadata !3818, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()) #18, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %1, metadata !3823, metadata !DIExpression()) #18, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %2, metadata !3824, metadata !DIExpression()) #18, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()) #18, !dbg !3837
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %4, metadata !3836, metadata !DIExpression()) #18, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %4, metadata !3825, metadata !DIExpression()) #18, !dbg !3829
  %5 = icmp eq i8* %4, null, !dbg !3840
  br i1 %5, label %6, label %9, !dbg !3841

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3842
  br i1 %7, label %19, label %8, !dbg !3845

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3846, !tbaa !1422
  br label %19, !dbg !3847

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %10, metadata !3826, metadata !DIExpression()) #18, !dbg !3849
  %11 = icmp ult i64 %10, %2, !dbg !3850
  br i1 %11, label %12, label %14, !dbg !3852

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %1, metadata !3855, metadata !DIExpression()) #18, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %4, metadata !3858, metadata !DIExpression()) #18, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %13, metadata !3859, metadata !DIExpression()) #18, !dbg !3860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3862
  br label %19, !dbg !3863

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3864
  br i1 %15, label %19, label %16, !dbg !3867

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %1, metadata !3855, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %4, metadata !3858, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %17, metadata !3859, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3872
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3873
  store i8 0, i8* %18, align 1, !dbg !3874, !tbaa !1422
  br label %19, !dbg !3875

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3876
  ret i32 %20, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()) #18, !dbg !3882
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %2, metadata !3836, metadata !DIExpression()) #18, !dbg !3882
  ret i8* %2, !dbg !3885
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3886 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3892, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 0, metadata !3893, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 0, metadata !3895, metadata !DIExpression()), !dbg !3896
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %2, metadata !3894, metadata !DIExpression()), !dbg !3896
  %3 = icmp slt i32 %2, 0, !dbg !3898
  br i1 %3, label %4, label %6, !dbg !3900

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3901
  br label %24, !dbg !3902

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3903
  %8 = icmp eq i32 %7, 0, !dbg !3903
  br i1 %8, label %13, label %9, !dbg !3905

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3906
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3907
  %12 = icmp eq i64 %11, -1, !dbg !3908
  br i1 %12, label %16, label %13, !dbg !3909

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3910
  %15 = icmp eq i32 %14, 0, !dbg !3910
  br i1 %15, label %16, label %18, !dbg !3911

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3893, metadata !DIExpression()), !dbg !3896
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3912
  call void @llvm.dbg.value(metadata i32 %21, metadata !3895, metadata !DIExpression()), !dbg !3896
  br label %24, !dbg !3913

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3914
  %20 = load i32, i32* %19, align 4, !dbg !3914, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %20, metadata !3893, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %20, metadata !3893, metadata !DIExpression()), !dbg !3896
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3912
  call void @llvm.dbg.value(metadata i32 %21, metadata !3895, metadata !DIExpression()), !dbg !3896
  %22 = icmp eq i32 %20, 0, !dbg !3915
  br i1 %22, label %24, label %23, !dbg !3913

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3917, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 -1, metadata !3895, metadata !DIExpression()), !dbg !3896
  br label %24, !dbg !3919

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3896
  ret i32 %25, !dbg !3920
}

; Function Attrs: nofree nounwind
declare !dbg !1019 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1054 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1055 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3921 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3927, metadata !DIExpression()), !dbg !3928
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3929
  br i1 %2, label %6, label %3, !dbg !3931

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3932
  %5 = icmp eq i32 %4, 0, !dbg !3932
  br i1 %5, label %6, label %8, !dbg !3933

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3934
  br label %17, !dbg !3935

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3936, metadata !DIExpression()) #18, !dbg !3941
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3943
  %10 = load i32, i32* %9, align 8, !dbg !3943, !tbaa !3761
  %11 = and i32 %10, 256, !dbg !3945
  %12 = icmp eq i32 %11, 0, !dbg !3945
  br i1 %12, label %15, label %13, !dbg !3946

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3947
  br label %15, !dbg !3947

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3948
  br label %17, !dbg !3949

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3928
  ret i32 %18, !dbg !3950
}

; Function Attrs: nofree nounwind
declare !dbg !1062 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3951 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3958, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 %2, metadata !3960, metadata !DIExpression()), !dbg !3964
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3965
  %5 = load i8*, i8** %4, align 8, !dbg !3965, !tbaa !3966
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3967
  %7 = load i8*, i8** %6, align 8, !dbg !3967, !tbaa !3968
  %8 = icmp eq i8* %5, %7, !dbg !3969
  br i1 %8, label %9, label %28, !dbg !3970

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3971
  %11 = load i8*, i8** %10, align 8, !dbg !3971, !tbaa !3972
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3973
  %13 = load i8*, i8** %12, align 8, !dbg !3973, !tbaa !3974
  %14 = icmp eq i8* %11, %13, !dbg !3975
  br i1 %14, label %15, label %28, !dbg !3976

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3977
  %17 = load i8*, i8** %16, align 8, !dbg !3977, !tbaa !3978
  %18 = icmp eq i8* %17, null, !dbg !3979
  br i1 %18, label %19, label %28, !dbg !3980

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3981
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %21, metadata !3961, metadata !DIExpression()), !dbg !3983
  %22 = icmp eq i64 %21, -1, !dbg !3984
  br i1 %22, label %30, label %23, !dbg !3986

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3987
  %25 = load i32, i32* %24, align 8, !dbg !3988, !tbaa !3761
  %26 = and i32 %25, -17, !dbg !3988
  store i32 %26, i32* %24, align 8, !dbg !3988, !tbaa !3761
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3989
  store i64 %21, i64* %27, align 8, !dbg !3990, !tbaa !3991
  br label %30, !dbg !3992

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3993
  br label %30, !dbg !3994

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3964
  ret i32 %31, !dbg !3995
}

; Function Attrs: nofree nounwind
declare !dbg !1138 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #12 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !474, !174, !179, !224, !476, !230, !271, !486, !395, !528, !549, !552, !410, !555, !574, !613, !620, !1013, !1016, !1059, !1100}
!llvm.ident = !{!1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141, !1141}
!llvm.module.flags = !{!1142, !1143, !1144, !1145, !1146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 38, type: !169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !{!21, !31, !92, !96, !100, !103, !106, !113, !128, !25, !82, !132, !136, !140, !146, !150, !157, !160, !163, !166}
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
!128 = !DISubprogram(name: "error", scope: !129, file: !129, line: 52, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!129 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !29, !29, !27, null}
!132 = !DISubprogram(name: "version_etc", scope: !133, file: !133, line: 69, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!133 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !35, !27, !27, !27, null}
!136 = !DISubprogram(name: "quote", scope: !137, file: !137, line: 44, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!137 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!138 = !DISubroutineType(types: !139)
!139 = !{!27, !27}
!140 = !DISubprogram(name: "mode_compile", scope: !141, file: !141, line: 25, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!141 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !27}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !141, line: 25, flags: DIFlagFwdDecl)
!146 = !DISubprogram(name: "umask", scope: !147, file: !147, line: 308, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!147 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!148 = !DISubroutineType(types: !149)
!149 = !{!7, !7}
!150 = !DISubprogram(name: "mode_adjust", scope: !141, file: !141, line: 27, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!151 = !DISubroutineType(types: !152)
!152 = !{!7, !7, !153, !7, !154, !156}
!153 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!157 = !DISubprogram(name: "free", scope: !107, file: !107, line: 565, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !82}
!160 = !DISubprogram(name: "mkfifo", scope: !147, file: !147, line: 346, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!161 = !DISubroutineType(types: !162)
!162 = !{!29, !27, !7}
!163 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!164 = !DISubroutineType(types: !165)
!165 = !{!25, !5, !27}
!166 = !DISubprogram(name: "lchmod", scope: !167, file: !167, line: 993, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!167 = !DIFile(filename: "./lib/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = !{!0}
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1280, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 5)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "Version", scope: !174, file: !175, line: 2, type: !27, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !176, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !{!172}
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "file_name", scope: !179, file: !180, line: 46, type: !27, isLocal: true, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !181, globals: !219, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = !{!182, !21, !218, !128}
!182 = !DISubprogram(name: "close_stream", scope: !183, file: !183, line: 2, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!183 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !DISubroutineType(types: !185)
!185 = !{!29, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !187, file: !37, line: 51, baseType: !29, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !187, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !187, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !187, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !187, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !187, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !187, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !187, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !187, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !187, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !187, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !187, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !187, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !187, file: !37, line: 70, baseType: !186, size: 64, offset: 832)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !187, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !187, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !187, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !187, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !187, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !187, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !187, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !187, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !187, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !187, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !187, file: !37, line: 93, baseType: !186, size: 64, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !187, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !187, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !187, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !187, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!218 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!219 = !{!177, !220}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !179, file: !180, line: 56, type: !153, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "exit_failure", scope: !224, file: !225, line: 24, type: !227, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !226, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !{!222}
!227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "program_name", scope: !230, file: !231, line: 33, type: !27, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !232, globals: !268, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!82, !233, !25}
!233 = !DISubprogram(name: "fputs", scope: !32, file: !32, line: 626, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!234 = !DISubroutineType(types: !235)
!235 = !{!29, !27, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !237, file: !37, line: 51, baseType: !29, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !237, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !237, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !237, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !237, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !237, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !237, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !237, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !237, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !237, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !237, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !237, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !237, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !237, file: !37, line: 70, baseType: !236, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !237, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !237, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !237, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !237, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !237, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !237, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !237, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !237, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !237, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !237, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !237, file: !37, line: 93, baseType: !236, size: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !237, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !237, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !237, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !237, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!268 = !{!228}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !271, file: !272, line: 85, type: !389, isLocal: false, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !294, globals: !362, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !{!5, !274, !279}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!277 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!278 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 46, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!282 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!283 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!284 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!285 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!286 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!287 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!288 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!289 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!290 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!291 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!292 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!293 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!294 = !{!295, !301, !157, !317, !29, !62, !320, !84, !337, !341, !21, !347, !351, !25, !355, !358, !359}
!295 = !DISubprogram(name: "xmemdup", scope: !296, file: !296, line: 62, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!296 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = !DISubroutineType(types: !298)
!298 = !{!82, !299, !86}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!301 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!302 = !DISubroutineType(types: !303)
!303 = !{!25, !27, !86, !304, !305}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !272, line: 65, size: 448, elements: !308)
!308 = !{!309, !310, !311, !315, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !307, file: !272, line: 68, baseType: !5, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !272, line: 71, baseType: !29, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !307, file: !272, line: 75, baseType: !312, size: 256, offset: 64)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !307, file: !272, line: 78, baseType: !27, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !307, file: !272, line: 81, baseType: !27, size: 64, offset: 384)
!317 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!318 = !DISubroutineType(types: !319)
!319 = !{!25, !29, !27, !27, !27, !86}
!320 = !DISubprogram(name: "rpl_mbrtowc", scope: !321, file: !321, line: 717, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!321 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !DISubroutineType(types: !323)
!323 = !{!86, !126, !27, !86, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 13, size: 64, elements: !327)
!326 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !325, file: !326, line: 15, baseType: !29, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !325, file: !326, line: 20, baseType: !330, size: 32, offset: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !326, line: 16, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !330, file: !326, line: 18, baseType: !7, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !330, file: !326, line: 19, baseType: !334, size: 32)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 4)
!337 = !DISubprogram(name: "iswprint", scope: !338, file: !338, line: 120, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!338 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!339 = !DISubroutineType(types: !340)
!340 = !{!29, !7}
!341 = !DISubprogram(name: "mbsinit", scope: !342, file: !342, line: 292, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!342 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!343 = !DISubroutineType(types: !344)
!344 = !{!29, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!347 = !DISubprogram(name: "locale_charset", scope: !348, file: !348, line: 35, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!348 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!349 = !DISubroutineType(types: !350)
!350 = !{!27}
!351 = !DISubprogram(name: "c_strcasecmp", scope: !352, file: !352, line: 42, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!352 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!353 = !DISubroutineType(types: !354)
!354 = !{!29, !27, !27}
!355 = !DISubprogram(name: "xmalloc", scope: !296, file: !296, line: 53, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!356 = !DISubroutineType(types: !357)
!357 = !{!82, !86}
!358 = !DISubprogram(name: "xalloc_die", scope: !296, file: !296, line: 51, type: !111, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !30)
!359 = !DISubprogram(name: "xrealloc", scope: !296, file: !296, line: 59, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!360 = !DISubroutineType(types: !361)
!361 = !{!82, !82, !86}
!362 = !{!269, !363, !369, !371, !373, !378, !385, !387}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !271, file: !272, line: 101, type: !365, isLocal: false, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 320, elements: !367)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!367 = !{!368}
!368 = !DISubrange(count: 10)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !271, file: !272, line: 1052, type: !307, isLocal: false, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !271, file: !272, line: 116, type: !307, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "slot0", scope: !271, file: !272, line: 842, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "slotvec", scope: !271, file: !272, line: 845, type: !380, isLocal: true, isDefinition: true)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !272, line: 834, size: 128, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !381, file: !272, line: 836, baseType: !84, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !272, line: 837, baseType: !25, size: 64, offset: 64)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "nslots", scope: !271, file: !272, line: 843, type: !29, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "slotvec0", scope: !271, file: !272, line: 844, type: !381, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 704, elements: !391)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!391 = !{!392}
!392 = !DISubrange(count: 11)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !395, file: !396, line: 26, type: !398, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !397, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!397 = !{!393}
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 376, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 47)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "fmt", scope: !403, file: !404, line: 80, type: !471, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "lchmod", scope: !404, file: !404, line: 46, type: !405, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !422)
!404 = !DIFile(filename: "lib/lchmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!405 = !DISubroutineType(types: !406)
!406 = !{!29, !27, !407}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !408, line: 69, baseType: !409)
!408 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !59, line: 150, baseType: !7)
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !411, globals: !421, splitDebugInlining: false, nameTableKind: None)
!411 = !{!412, !416, !420}
!412 = !DISubprogram(name: "open", scope: !413, file: !413, line: 196, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!413 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!414 = !DISubroutineType(types: !415)
!415 = !{!29, !27, !29, null}
!416 = !DISubprogram(name: "close", scope: !417, file: !417, line: 353, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!417 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!418 = !DISubroutineType(types: !419)
!419 = !{!29, !29}
!420 = !DISubprogram(name: "chmod", scope: !147, file: !147, line: 280, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!421 = !{!401}
!422 = !{!423, !424, !425, !426, !462, !465, !469, !470}
!423 = !DILocalVariable(name: "file", arg: 1, scope: !403, file: !404, line: 46, type: !27)
!424 = !DILocalVariable(name: "mode", arg: 2, scope: !403, file: !404, line: 46, type: !407)
!425 = !DILocalVariable(name: "fd", scope: !403, file: !404, line: 53, type: !29)
!426 = !DILocalVariable(name: "st", scope: !403, file: !404, line: 64, type: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !428, line: 46, size: 1152, elements: !429)
!428 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!429 = !{!430, !432, !434, !436, !437, !439, !441, !442, !443, !444, !446, !448, !456, !457, !458}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !427, file: !428, line: 48, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !59, line: 145, baseType: !86)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !427, file: !428, line: 53, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !59, line: 148, baseType: !86)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !427, file: !428, line: 61, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !59, line: 151, baseType: !86)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !427, file: !428, line: 62, baseType: !409, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !427, file: !428, line: 64, baseType: !438, size: 32, offset: 224)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !59, line: 146, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !427, file: !428, line: 65, baseType: !440, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !59, line: 147, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !427, file: !428, line: 67, baseType: !29, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !427, file: !428, line: 69, baseType: !431, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !427, file: !428, line: 74, baseType: !58, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !427, file: !428, line: 78, baseType: !445, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !59, line: 174, baseType: !60)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !427, file: !428, line: 80, baseType: !447, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !59, line: 179, baseType: !60)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !427, file: !428, line: 91, baseType: !449, size: 128, offset: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !450, line: 10, size: 128, elements: !451)
!450 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!451 = !{!452, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !449, file: !450, line: 12, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !59, line: 160, baseType: !60)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !449, file: !450, line: 16, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !59, line: 196, baseType: !60)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !427, file: !428, line: 92, baseType: !449, size: 128, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !427, file: !428, line: 93, baseType: !449, size: 128, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !427, file: !428, line: 106, baseType: !459, size: 192, offset: 960)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 3)
!462 = !DILocalVariable(name: "stat_errno", scope: !463, file: !404, line: 67, type: !29)
!463 = distinct !DILexicalBlock(scope: !464, file: !404, line: 66, column: 5)
!464 = distinct !DILexicalBlock(scope: !403, file: !404, line: 65, column: 7)
!465 = !DILocalVariable(name: "buf", scope: !403, file: !404, line: 81, type: !466)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 208, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 26)
!469 = !DILocalVariable(name: "chmod_result", scope: !403, file: !404, line: 83, type: !29)
!470 = !DILocalVariable(name: "chmod_errno", scope: !403, file: !404, line: 84, type: !29)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 136, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 17)
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!478 = !{!479}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 78, baseType: !7, size: 32, elements: !480)
!480 = !{!481, !482, !483, !484}
!481 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!482 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!483 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!484 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!485 = !{!157, !355, !84, !358}
!486 = distinct !DICompileUnit(language: DW_LANG_C99, file: !487, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !488, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!487 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!488 = !{!489}
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 40, baseType: !7, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!492 = !{!21, !493, !82}
!493 = !DISubprogram(name: "fputs_unlocked", scope: !32, file: !32, line: 662, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!494 = !DISubroutineType(types: !495)
!495 = !{!29, !27, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !497, file: !37, line: 51, baseType: !29, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !497, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !497, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !497, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !497, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !497, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !497, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !497, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !497, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !497, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !497, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !497, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !497, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !497, file: !37, line: 70, baseType: !496, size: 64, offset: 832)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !497, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !497, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !497, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !497, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !497, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !497, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !497, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !497, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !497, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !497, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !497, file: !37, line: 93, baseType: !496, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !497, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !497, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !497, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !497, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !530, retainedTypes: !543, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!530 = !{!531}
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !532, file: !296, line: 186, baseType: !7, size: 32, elements: !541)
!532 = distinct !DISubprogram(name: "x2nrealloc", scope: !296, file: !296, line: 174, type: !533, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !536)
!533 = !DISubroutineType(types: !534)
!534 = !{!82, !82, !535, !84}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!536 = !{!537, !538, !539, !540}
!537 = !DILocalVariable(name: "p", arg: 1, scope: !532, file: !296, line: 174, type: !82)
!538 = !DILocalVariable(name: "pn", arg: 2, scope: !532, file: !296, line: 174, type: !535)
!539 = !DILocalVariable(name: "s", arg: 3, scope: !532, file: !296, line: 174, type: !84)
!540 = !DILocalVariable(name: "n", scope: !532, file: !296, line: 176, type: !84)
!541 = !{!542}
!542 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!543 = !{!84, !358, !355, !359, !25, !157, !82, !544, !547}
!544 = !DISubprogram(name: "xcalloc", scope: !296, file: !296, line: 57, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!545 = !DISubroutineType(types: !546)
!546 = !{!82, !86, !86}
!547 = !DISubprogram(name: "rpl_calloc", scope: !548, file: !548, line: 688, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!548 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !551, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!551 = !{!21, !128}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !554, splitDebugInlining: false, nameTableKind: None)
!553 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!554 = !{!82}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = !{!558, !84, !570}
!558 = !DISubprogram(name: "mbrtowc", scope: !342, file: !342, line: 296, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!559 = !DISubroutineType(types: !560)
!560 = !{!86, !126, !27, !86, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 13, size: 64, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !562, file: !326, line: 15, baseType: !29, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !562, file: !326, line: 20, baseType: !566, size: 32, offset: 32)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !326, line: 16, size: 32, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !566, file: !326, line: 18, baseType: !7, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !566, file: !326, line: 19, baseType: !334, size: 32)
!570 = !DISubprogram(name: "hard_locale", scope: !571, file: !571, line: 26, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!571 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !DISubroutineType(types: !573)
!573 = !{!153, !29}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !576, splitDebugInlining: false, nameTableKind: None)
!575 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !{!577}
!577 = !DISubprogram(name: "rpl_fclose", scope: !578, file: !578, line: 672, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!578 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = !DISubroutineType(types: !580)
!580 = !{!29, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !582, file: !37, line: 51, baseType: !29, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !582, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !582, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !582, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !582, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !582, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !582, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !582, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !582, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !582, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !582, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !582, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !582, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !582, file: !37, line: 70, baseType: !581, size: 64, offset: 832)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !582, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !582, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !582, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !582, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !582, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !582, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !582, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !582, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !582, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !582, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !582, file: !37, line: 93, baseType: !581, size: 64, offset: 1344)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !582, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !582, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !582, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !582, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !615, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = !{!616}
!616 = !DISubprogram(name: "setlocale_null_r", scope: !617, file: !617, line: 64, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!617 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!618 = !DISubroutineType(types: !619)
!619 = !{!29, !29, !25, !86}
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !622, retainedTypes: !1009, splitDebugInlining: false, nameTableKind: None)
!621 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!622 = !{!623}
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !624, line: 41, baseType: !7, size: 32, elements: !625)
!624 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!626 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!627 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!628 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!629 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!630 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!631 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!632 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!633 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!634 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!635 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!636 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!637 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!638 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!639 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!640 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!641 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!642 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!643 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!644 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!645 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!646 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!647 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!648 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!649 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!650 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!651 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!652 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!653 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!654 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!655 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!656 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!657 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!658 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!659 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!660 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!661 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!662 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!663 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!664 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!665 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!666 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!667 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!668 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!669 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!670 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!671 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!672 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!673 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!674 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!675 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!734 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!737 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!738 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!739 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!740 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!741 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!742 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!743 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!744 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!745 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!746 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!747 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!748 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!821 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!894 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!895 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!896 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!897 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!898 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!899 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!900 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!901 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!902 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!903 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!904 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!905 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!906 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!907 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!908 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!910 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!911 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!912 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!913 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!914 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!915 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!941 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!942 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!943 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!944 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!945 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!950 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!951 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!952 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!953 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1009 = !{!1010, !82}
!1010 = !DISubprogram(name: "nl_langinfo", scope: !624, file: !624, line: 661, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!25, !29}
!1013 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1014, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1015, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1015 = !{!82, !96}
!1016 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1017, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1018 = !{!1019, !1054, !1055, !1058}
!1019 = !DISubprogram(name: "fileno", scope: !32, file: !32, line: 786, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!29, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1023, file: !37, line: 51, baseType: !29, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1023, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1023, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1023, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1023, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1023, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1023, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1023, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1023, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1023, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1023, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1023, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1023, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1023, file: !37, line: 70, baseType: !1022, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1023, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1023, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1023, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1023, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1023, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1023, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1023, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1023, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1023, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1023, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1023, file: !37, line: 93, baseType: !1022, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1023, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1023, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1023, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1023, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1054 = !DISubprogram(name: "fclose", scope: !32, file: !32, line: 213, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1055 = !DISubprogram(name: "lseek", scope: !417, file: !417, line: 334, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!60, !29, !60, !29}
!1058 = !DISubprogram(name: "rpl_fflush", scope: !578, file: !578, line: 718, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1059 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1060, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1061, splitDebugInlining: false, nameTableKind: None)
!1060 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1061 = !{!82, !1062, !1097}
!1062 = !DISubprogram(name: "fflush", scope: !32, file: !32, line: 218, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!29, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1066, file: !37, line: 51, baseType: !29, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1066, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1066, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1066, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1066, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1066, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1066, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1066, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1066, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1066, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1066, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1066, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1066, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1066, file: !37, line: 70, baseType: !1065, size: 64, offset: 832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1066, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1066, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1066, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1066, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1066, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1066, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1066, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1066, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1066, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1066, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1066, file: !37, line: 93, baseType: !1065, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1066, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1066, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1066, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1066, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1097 = !DISubprogram(name: "rpl_fseeko", scope: !578, file: !578, line: 1034, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!29, !1065, !60, !29}
!1100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1101, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !1102, splitDebugInlining: false, nameTableKind: None)
!1101 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1102 = !{!82, !1103, !1055, !1138}
!1103 = !DISubprogram(name: "fileno", scope: !32, file: !32, line: 786, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!29, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1107, file: !37, line: 51, baseType: !29, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1107, file: !37, line: 54, baseType: !25, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1107, file: !37, line: 55, baseType: !25, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1107, file: !37, line: 56, baseType: !25, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1107, file: !37, line: 57, baseType: !25, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1107, file: !37, line: 58, baseType: !25, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1107, file: !37, line: 59, baseType: !25, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1107, file: !37, line: 60, baseType: !25, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1107, file: !37, line: 61, baseType: !25, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1107, file: !37, line: 64, baseType: !25, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1107, file: !37, line: 65, baseType: !25, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1107, file: !37, line: 66, baseType: !25, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1107, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1107, file: !37, line: 70, baseType: !1106, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1107, file: !37, line: 72, baseType: !29, size: 32, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1107, file: !37, line: 73, baseType: !29, size: 32, offset: 928)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1107, file: !37, line: 74, baseType: !58, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1107, file: !37, line: 77, baseType: !62, size: 16, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1107, file: !37, line: 78, baseType: !64, size: 8, offset: 1040)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1107, file: !37, line: 79, baseType: !66, size: 8, offset: 1048)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1107, file: !37, line: 81, baseType: !70, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1107, file: !37, line: 89, baseType: !73, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1107, file: !37, line: 91, baseType: !75, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1107, file: !37, line: 92, baseType: !78, size: 64, offset: 1280)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1107, file: !37, line: 93, baseType: !1106, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1107, file: !37, line: 94, baseType: !82, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1107, file: !37, line: 95, baseType: !84, size: 64, offset: 1472)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1107, file: !37, line: 96, baseType: !29, size: 32, offset: 1536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1107, file: !37, line: 98, baseType: !89, size: 160, offset: 1568)
!1138 = !DISubprogram(name: "fseeko", scope: !32, file: !32, line: 707, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !30)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!29, !1106, !60, !29}
!1141 = !{!"clang version 10.0.0 "}
!1142 = !{i32 7, !"Dwarf Version", i32 4}
!1143 = !{i32 2, !"Debug Info Version", i32 3}
!1144 = !{i32 1, !"wchar_size", i32 4}
!1145 = !{i32 7, !"PIC Level", i32 2}
!1146 = !{i32 7, !"PIE Level", i32 2}
!1147 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !1148, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !29}
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "status", arg: 1, scope: !1147, file: !3, line: 48, type: !29)
!1152 = !DILocalVariable(name: "infomap", scope: !1153, file: !1154, line: 636, type: !1166)
!1153 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1154, file: !1154, line: 634, type: !94, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1154 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1155 = !{!1156, !1152, !1157, !1158, !1165}
!1156 = !DILocalVariable(name: "program", arg: 1, scope: !1153, file: !1154, line: 634, type: !27)
!1157 = !DILocalVariable(name: "node", scope: !1153, file: !1154, line: 646, type: !27)
!1158 = !DILocalVariable(name: "map_prog", scope: !1153, file: !1154, line: 647, type: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1153, file: !1154, line: 636, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1161, file: !1154, line: 636, baseType: !27, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1161, file: !1154, line: 636, baseType: !27, size: 64, offset: 64)
!1165 = !DILocalVariable(name: "lc_messages", scope: !1153, file: !1154, line: 659, type: !27)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 896, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 7)
!1169 = !DILocation(line: 636, column: 67, scope: !1153, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 71, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 53, column: 5)
!1172 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 50, column: 7)
!1173 = !DILocation(line: 0, scope: !1147)
!1174 = !DILocation(line: 50, column: 14, scope: !1172)
!1175 = !DILocation(line: 50, column: 7, scope: !1147)
!1176 = !DILocation(line: 51, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 51, column: 5)
!1178 = !{!1179, !1179, i64 0}
!1179 = !{!"any pointer", !1180, i64 0}
!1180 = !{!"omnipotent char", !1181, i64 0}
!1181 = !{!"Simple C/C++ TBAA"}
!1182 = !DILocation(line: 54, column: 7, scope: !1171)
!1183 = !DILocation(line: 55, column: 7, scope: !1171)
!1184 = !DILocation(line: 590, column: 3, scope: !1185, inlinedAt: !1186)
!1185 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1154, file: !1154, line: 588, type: !111, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!1186 = distinct !DILocation(line: 59, column: 7, scope: !1171)
!1187 = !DILocation(line: 61, column: 7, scope: !1171)
!1188 = !DILocation(line: 64, column: 7, scope: !1171)
!1189 = !DILocation(line: 69, column: 7, scope: !1171)
!1190 = !DILocation(line: 70, column: 7, scope: !1171)
!1191 = !DILocation(line: 0, scope: !1153, inlinedAt: !1170)
!1192 = !DILocation(line: 636, column: 3, scope: !1153, inlinedAt: !1170)
!1193 = !DILocation(line: 647, column: 36, scope: !1153, inlinedAt: !1170)
!1194 = !DILocation(line: 649, column: 3, scope: !1153, inlinedAt: !1170)
!1195 = !DILocation(line: 649, column: 33, scope: !1153, inlinedAt: !1170)
!1196 = !DILocation(line: 650, column: 13, scope: !1153, inlinedAt: !1170)
!1197 = !DILocation(line: 649, column: 20, scope: !1153, inlinedAt: !1170)
!1198 = !{!1199, !1179, i64 0}
!1199 = !{!"infomap", !1179, i64 0, !1179, i64 8}
!1200 = !DILocation(line: 649, column: 10, scope: !1153, inlinedAt: !1170)
!1201 = !DILocation(line: 649, column: 28, scope: !1153, inlinedAt: !1170)
!1202 = distinct !{!1202, !1194, !1196}
!1203 = !DILocation(line: 652, column: 17, scope: !1204, inlinedAt: !1170)
!1204 = distinct !DILexicalBlock(scope: !1153, file: !1154, line: 652, column: 7)
!1205 = !{!1199, !1179, i64 8}
!1206 = !DILocation(line: 652, column: 7, scope: !1204, inlinedAt: !1170)
!1207 = !DILocation(line: 652, column: 7, scope: !1153, inlinedAt: !1170)
!1208 = !DILocation(line: 655, column: 3, scope: !1153, inlinedAt: !1170)
!1209 = !DILocation(line: 659, column: 29, scope: !1153, inlinedAt: !1170)
!1210 = !DILocation(line: 660, column: 7, scope: !1211, inlinedAt: !1170)
!1211 = distinct !DILexicalBlock(scope: !1153, file: !1154, line: 660, column: 7)
!1212 = !DILocation(line: 660, column: 19, scope: !1211, inlinedAt: !1170)
!1213 = !DILocation(line: 660, column: 22, scope: !1211, inlinedAt: !1170)
!1214 = !DILocation(line: 660, column: 7, scope: !1153, inlinedAt: !1170)
!1215 = !DILocation(line: 666, column: 7, scope: !1216, inlinedAt: !1170)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !1154, line: 661, column: 5)
!1217 = !DILocation(line: 668, column: 5, scope: !1216, inlinedAt: !1170)
!1218 = !DILocation(line: 669, column: 3, scope: !1153, inlinedAt: !1170)
!1219 = !DILocation(line: 671, column: 3, scope: !1153, inlinedAt: !1170)
!1220 = !DILocation(line: 673, column: 1, scope: !1153, inlinedAt: !1170)
!1221 = !DILocation(line: 73, column: 3, scope: !1147)
!1222 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !1223, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!29, !29, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1238, !1241}
!1227 = !DILocalVariable(name: "argc", arg: 1, scope: !1222, file: !3, line: 77, type: !29)
!1228 = !DILocalVariable(name: "argv", arg: 2, scope: !1222, file: !3, line: 77, type: !1225)
!1229 = !DILocalVariable(name: "newmode", scope: !1222, file: !3, line: 79, type: !407)
!1230 = !DILocalVariable(name: "specified_mode", scope: !1222, file: !3, line: 80, type: !27)
!1231 = !DILocalVariable(name: "exit_status", scope: !1222, file: !3, line: 81, type: !29)
!1232 = !DILocalVariable(name: "optc", scope: !1222, file: !3, line: 82, type: !29)
!1233 = !DILocalVariable(name: "scontext", scope: !1222, file: !3, line: 83, type: !27)
!1234 = !DILocalVariable(name: "set_security_context", scope: !1222, file: !3, line: 84, type: !153)
!1235 = !DILocalVariable(name: "ret", scope: !1236, file: !3, line: 136, type: !29)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 135, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 134, column: 7)
!1238 = !DILocalVariable(name: "umask_value", scope: !1239, file: !3, line: 151, type: !407)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 150, column: 5)
!1240 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 149, column: 7)
!1241 = !DILocalVariable(name: "change", scope: !1239, file: !3, line: 152, type: !144)
!1242 = !DILocation(line: 0, scope: !1222)
!1243 = !DILocation(line: 87, column: 21, scope: !1222)
!1244 = !DILocation(line: 87, column: 3, scope: !1222)
!1245 = !DILocation(line: 88, column: 3, scope: !1222)
!1246 = !DILocation(line: 89, column: 3, scope: !1222)
!1247 = !DILocation(line: 90, column: 3, scope: !1222)
!1248 = !DILocation(line: 92, column: 3, scope: !1222)
!1249 = !DILocation(line: 94, column: 3, scope: !1222)
!1250 = !DILocation(line: 94, column: 18, scope: !1222)
!1251 = !DILocation(line: 99, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 97, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 95, column: 5)
!1254 = !DILocation(line: 100, column: 11, scope: !1252)
!1255 = distinct !{!1255, !1249, !1256}
!1256 = !DILocation(line: 126, column: 5, scope: !1222)
!1257 = !DILocation(line: 0, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 102, column: 15)
!1259 = !DILocation(line: 114, column: 20, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 114, column: 20)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 107, column: 20)
!1262 = !DILocation(line: 114, column: 20, scope: !1261)
!1263 = !DILocation(line: 117, column: 22, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 115, column: 13)
!1265 = !DILocation(line: 116, column: 15, scope: !1264)
!1266 = !DILocation(line: 119, column: 13, scope: !1264)
!1267 = !DILocation(line: 121, column: 9, scope: !1252)
!1268 = !DILocation(line: 122, column: 9, scope: !1252)
!1269 = !DILocation(line: 124, column: 11, scope: !1252)
!1270 = !DILocation(line: 128, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 128, column: 7)
!1272 = !{!1273, !1273, i64 0}
!1273 = !{!"int", !1180, i64 0}
!1274 = !DILocation(line: 128, column: 14, scope: !1271)
!1275 = !DILocation(line: 128, column: 7, scope: !1222)
!1276 = !DILocation(line: 130, column: 20, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 129, column: 5)
!1278 = !DILocation(line: 130, column: 7, scope: !1277)
!1279 = !DILocation(line: 131, column: 7, scope: !1277)
!1280 = !DILocation(line: 149, column: 7, scope: !1240)
!1281 = !DILocation(line: 149, column: 7, scope: !1222)
!1282 = !DILocation(line: 152, column: 36, scope: !1239)
!1283 = !DILocation(line: 0, scope: !1239)
!1284 = !DILocation(line: 153, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 153, column: 11)
!1286 = !DILocation(line: 153, column: 11, scope: !1239)
!1287 = !DILocation(line: 154, column: 9, scope: !1285)
!1288 = !DILocation(line: 155, column: 21, scope: !1239)
!1289 = !DILocation(line: 156, column: 7, scope: !1239)
!1290 = !DILocation(line: 157, column: 17, scope: !1239)
!1291 = !DILocation(line: 158, column: 13, scope: !1239)
!1292 = !DILocation(line: 158, column: 7, scope: !1239)
!1293 = !DILocation(line: 159, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 159, column: 11)
!1295 = !DILocation(line: 159, column: 11, scope: !1239)
!1296 = !DILocation(line: 164, column: 10, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 164, column: 3)
!1298 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 164, column: 3)
!1299 = !DILocation(line: 160, column: 9, scope: !1294)
!1300 = !DILocation(line: 164, column: 17, scope: !1297)
!1301 = !DILocation(line: 164, column: 3, scope: !1298)
!1302 = !DILocation(line: 168, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 168, column: 11)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 165, column: 5)
!1305 = !DILocation(line: 168, column: 11, scope: !1303)
!1306 = !DILocation(line: 168, column: 42, scope: !1303)
!1307 = !DILocation(line: 168, column: 11, scope: !1304)
!1308 = !DILocation(line: 170, column: 21, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 169, column: 9)
!1310 = !DILocation(line: 170, column: 28, scope: !1309)
!1311 = !DILocation(line: 170, column: 56, scope: !1309)
!1312 = !DILocation(line: 170, column: 11, scope: !1309)
!1313 = !DILocation(line: 172, column: 9, scope: !1309)
!1314 = !DILocation(line: 173, column: 31, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 173, column: 16)
!1316 = !DILocation(line: 173, column: 47, scope: !1315)
!1317 = !DILocation(line: 173, column: 42, scope: !1315)
!1318 = !DILocation(line: 173, column: 34, scope: !1315)
!1319 = !DILocation(line: 173, column: 65, scope: !1315)
!1320 = !DILocation(line: 173, column: 16, scope: !1303)
!1321 = !DILocation(line: 175, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 174, column: 9)
!1323 = !DILocation(line: 175, column: 28, scope: !1322)
!1324 = !DILocation(line: 176, column: 18, scope: !1322)
!1325 = !DILocation(line: 175, column: 11, scope: !1322)
!1326 = !DILocation(line: 178, column: 9, scope: !1322)
!1327 = !DILocation(line: 164, column: 25, scope: !1297)
!1328 = distinct !{!1328, !1301, !1329}
!1329 = !DILocation(line: 179, column: 5, scope: !1298)
!1330 = !DILocation(line: 181, column: 3, scope: !1222)
!1331 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !180, file: !180, line: 51, type: !94, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1332)
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "file", arg: 1, scope: !1331, file: !180, line: 51, type: !27)
!1334 = !DILocation(line: 0, scope: !1331)
!1335 = !DILocation(line: 53, column: 13, scope: !1331)
!1336 = !DILocation(line: 54, column: 1, scope: !1331)
!1337 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !180, file: !180, line: 88, type: !1338, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !153}
!1340 = !{!1341}
!1341 = !DILocalVariable(name: "ignore", arg: 1, scope: !1337, file: !180, line: 88, type: !153)
!1342 = !DILocation(line: 0, scope: !1337)
!1343 = !DILocation(line: 90, column: 16, scope: !1337)
!1344 = !{!1345, !1345, i64 0}
!1345 = !{!"_Bool", !1180, i64 0}
!1346 = !DILocation(line: 91, column: 1, scope: !1337)
!1347 = distinct !DISubprogram(name: "close_stdout", scope: !180, file: !180, line: 117, type: !111, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1348)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "write_error", scope: !1350, file: !180, line: 122, type: !27)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !180, line: 121, column: 5)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !180, line: 119, column: 7)
!1352 = !DILocation(line: 119, column: 21, scope: !1351)
!1353 = !DILocation(line: 119, column: 7, scope: !1351)
!1354 = !DILocation(line: 119, column: 29, scope: !1351)
!1355 = !DILocation(line: 120, column: 7, scope: !1351)
!1356 = !DILocation(line: 120, column: 12, scope: !1351)
!1357 = !{i8 0, i8 2}
!1358 = !DILocation(line: 120, column: 25, scope: !1351)
!1359 = !DILocation(line: 120, column: 28, scope: !1351)
!1360 = !DILocation(line: 120, column: 34, scope: !1351)
!1361 = !DILocation(line: 119, column: 7, scope: !1347)
!1362 = !DILocation(line: 122, column: 33, scope: !1350)
!1363 = !DILocation(line: 0, scope: !1350)
!1364 = !DILocation(line: 123, column: 11, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1350, file: !180, line: 123, column: 11)
!1366 = !DILocation(line: 0, scope: !1365)
!1367 = !DILocation(line: 123, column: 11, scope: !1350)
!1368 = !DILocation(line: 124, column: 36, scope: !1365)
!1369 = !DILocation(line: 124, column: 9, scope: !1365)
!1370 = !DILocation(line: 127, column: 9, scope: !1365)
!1371 = !DILocation(line: 129, column: 14, scope: !1350)
!1372 = !DILocation(line: 129, column: 7, scope: !1350)
!1373 = !DILocation(line: 134, column: 42, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1347, file: !180, line: 134, column: 7)
!1375 = !DILocation(line: 134, column: 28, scope: !1374)
!1376 = !DILocation(line: 134, column: 50, scope: !1374)
!1377 = !DILocation(line: 134, column: 7, scope: !1347)
!1378 = !DILocation(line: 135, column: 12, scope: !1374)
!1379 = !DILocation(line: 135, column: 5, scope: !1374)
!1380 = !DILocation(line: 136, column: 1, scope: !1347)
!1381 = distinct !DISubprogram(name: "mode_compile", scope: !477, file: !477, line: 134, type: !1382, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1392)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1384, !27}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !477, line: 98, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1385, file: !477, line: 100, baseType: !26, size: 8)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1385, file: !477, line: 101, baseType: !26, size: 8, offset: 8)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1385, file: !477, line: 102, baseType: !407, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1385, file: !477, line: 103, baseType: !407, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1385, file: !477, line: 104, baseType: !407, size: 32, offset: 96)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1400, !1401, !1402, !1404, !1408, !1410, !1411, !1412, !1413, !1414, !1417, !1418, !1419}
!1393 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1381, file: !477, line: 134, type: !27)
!1394 = !DILocalVariable(name: "mc", scope: !1381, file: !477, line: 137, type: !1384)
!1395 = !DILocalVariable(name: "used", scope: !1381, file: !477, line: 138, type: !84)
!1396 = !DILocalVariable(name: "p", scope: !1381, file: !477, line: 139, type: !27)
!1397 = !DILocalVariable(name: "octal_mode", scope: !1398, file: !477, line: 143, type: !7)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !477, line: 142, column: 5)
!1399 = distinct !DILexicalBlock(scope: !1381, file: !477, line: 141, column: 7)
!1400 = !DILocalVariable(name: "mode", scope: !1398, file: !477, line: 144, type: !407)
!1401 = !DILocalVariable(name: "mentioned", scope: !1398, file: !477, line: 145, type: !407)
!1402 = !DILocalVariable(name: "needed", scope: !1403, file: !477, line: 168, type: !84)
!1403 = distinct !DILexicalBlock(scope: !1381, file: !477, line: 167, column: 3)
!1404 = !DILocalVariable(name: "affected", scope: !1405, file: !477, line: 179, type: !407)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !477, line: 177, column: 5)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !477, line: 176, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1381, file: !477, line: 176, column: 3)
!1408 = !DILocalVariable(name: "op", scope: !1409, file: !477, line: 206, type: !26)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !477, line: 205, column: 9)
!1410 = !DILocalVariable(name: "value", scope: !1409, file: !477, line: 207, type: !407)
!1411 = !DILocalVariable(name: "mentioned", scope: !1409, file: !477, line: 208, type: !407)
!1412 = !DILocalVariable(name: "flag", scope: !1409, file: !477, line: 209, type: !26)
!1413 = !DILocalVariable(name: "change", scope: !1409, file: !477, line: 210, type: !1384)
!1414 = !DILocalVariable(name: "octal_mode", scope: !1415, file: !477, line: 217, type: !7)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !477, line: 216, column: 15)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !477, line: 213, column: 13)
!1417 = !DILabel(scope: !1405, name: "no_more_affected", file: !477, line: 202)
!1418 = !DILabel(scope: !1416, name: "no_more_values", file: !477, line: 284)
!1419 = !DILabel(scope: !1381, name: "invalid", file: !477, line: 307)
!1420 = !DILocation(line: 0, scope: !1381)
!1421 = !DILocation(line: 141, column: 14, scope: !1399)
!1422 = !{!1180, !1180, i64 0}
!1423 = !DILocation(line: 141, column: 27, scope: !1399)
!1424 = !DILocation(line: 150, column: 41, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1398, file: !477, line: 149, column: 9)
!1426 = !DILocation(line: 0, scope: !1398)
!1427 = !DILocation(line: 150, column: 26, scope: !1425)
!1428 = !DILocation(line: 150, column: 43, scope: !1425)
!1429 = !DILocation(line: 150, column: 39, scope: !1425)
!1430 = !DILocation(line: 150, column: 46, scope: !1425)
!1431 = !DILocation(line: 151, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !477, line: 151, column: 15)
!1433 = !DILocation(line: 151, column: 15, scope: !1425)
!1434 = !DILocation(line: 154, column: 21, scope: !1398)
!1435 = !DILocation(line: 154, column: 24, scope: !1398)
!1436 = distinct !{!1436, !1437, !1438}
!1437 = !DILocation(line: 148, column: 7, scope: !1398)
!1438 = !DILocation(line: 154, column: 35, scope: !1398)
!1439 = !DILocation(line: 156, column: 11, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1398, file: !477, line: 156, column: 11)
!1441 = !DILocation(line: 156, column: 11, scope: !1398)
!1442 = !DILocation(line: 160, column: 22, scope: !1398)
!1443 = !DILocation(line: 160, column: 36, scope: !1398)
!1444 = !DILocation(line: 160, column: 20, scope: !1398)
!1445 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1446, file: !477, line: 112, type: !407)
!1446 = distinct !DISubprogram(name: "make_node_op_equals", scope: !477, file: !477, line: 112, type: !1447, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1384, !407, !407}
!1449 = !{!1445, !1450, !1451}
!1450 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1446, file: !477, line: 112, type: !407)
!1451 = !DILocalVariable(name: "p", scope: !1446, file: !477, line: 114, type: !1384)
!1452 = !DILocation(line: 0, scope: !1446, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 163, column: 14, scope: !1398)
!1454 = !DILocation(line: 114, column: 27, scope: !1446, inlinedAt: !1453)
!1455 = !DILocation(line: 115, column: 9, scope: !1446, inlinedAt: !1453)
!1456 = !{!1457, !1180, i64 0}
!1457 = !{!"mode_change", !1180, i64 0, !1180, i64 1, !1273, i64 4, !1273, i64 8, !1273, i64 12}
!1458 = !DILocation(line: 116, column: 6, scope: !1446, inlinedAt: !1453)
!1459 = !DILocation(line: 116, column: 11, scope: !1446, inlinedAt: !1453)
!1460 = !{!1457, !1180, i64 1}
!1461 = !DILocation(line: 117, column: 6, scope: !1446, inlinedAt: !1453)
!1462 = !DILocation(line: 117, column: 15, scope: !1446, inlinedAt: !1453)
!1463 = !{!1457, !1273, i64 4}
!1464 = !DILocation(line: 118, column: 6, scope: !1446, inlinedAt: !1453)
!1465 = !DILocation(line: 118, column: 12, scope: !1446, inlinedAt: !1453)
!1466 = !{!1457, !1273, i64 8}
!1467 = !DILocation(line: 119, column: 6, scope: !1446, inlinedAt: !1453)
!1468 = !DILocation(line: 119, column: 16, scope: !1446, inlinedAt: !1453)
!1469 = !{!1457, !1273, i64 12}
!1470 = !DILocation(line: 120, column: 8, scope: !1446, inlinedAt: !1453)
!1471 = !DILocation(line: 120, column: 13, scope: !1446, inlinedAt: !1453)
!1472 = !DILocation(line: 163, column: 7, scope: !1398)
!1473 = !DILocation(line: 169, column: 27, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !477, line: 169, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1403, file: !477, line: 169, column: 5)
!1476 = !DILocation(line: 0, scope: !1475)
!1477 = !DILocation(line: 0, scope: !1403)
!1478 = !DILocation(line: 169, column: 5, scope: !1475)
!1479 = !DILocation(line: 170, column: 41, scope: !1474)
!1480 = !DILocation(line: 170, column: 14, scope: !1474)
!1481 = !DILocation(line: 169, column: 32, scope: !1474)
!1482 = !DILocation(line: 169, column: 5, scope: !1474)
!1483 = distinct !{!1483, !1478, !1484}
!1484 = !DILocation(line: 170, column: 53, scope: !1475)
!1485 = !DILocalVariable(name: "n", arg: 1, scope: !1486, file: !296, line: 99, type: !84)
!1486 = distinct !DISubprogram(name: "xnmalloc", scope: !296, file: !296, line: 99, type: !1487, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!82, !84, !84}
!1489 = !{!1485, !1490}
!1490 = !DILocalVariable(name: "s", arg: 2, scope: !1486, file: !296, line: 99, type: !84)
!1491 = !DILocation(line: 0, scope: !1486, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 171, column: 10, scope: !1403)
!1493 = !DILocation(line: 101, column: 7, scope: !1494, inlinedAt: !1492)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !296, line: 101, column: 7)
!1495 = !DILocation(line: 101, column: 7, scope: !1486, inlinedAt: !1492)
!1496 = !DILocation(line: 102, column: 5, scope: !1494, inlinedAt: !1492)
!1497 = !DILocation(line: 103, column: 21, scope: !1486, inlinedAt: !1492)
!1498 = !DILocation(line: 103, column: 10, scope: !1486, inlinedAt: !1492)
!1499 = !DILocation(line: 171, column: 10, scope: !1403)
!1500 = !DILocation(line: 176, column: 8, scope: !1407)
!1501 = !DILocation(line: 0, scope: !1407)
!1502 = !DILocation(line: 138, column: 10, scope: !1381)
!1503 = !DILocation(line: 0, scope: !1405)
!1504 = !DILocation(line: 182, column: 7, scope: !1405)
!1505 = !DILocation(line: 183, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !477, line: 182, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1405, file: !477, line: 182, column: 7)
!1508 = !DILocation(line: 183, column: 9, scope: !1506)
!1509 = !DILocation(line: 212, column: 11, scope: !1409)
!1510 = !DILocation(line: 192, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !477, line: 184, column: 11)
!1512 = !DILocation(line: 195, column: 13, scope: !1511)
!1513 = !DILocation(line: 198, column: 13, scope: !1511)
!1514 = !DILocation(line: 0, scope: !1511)
!1515 = !DILocation(line: 182, column: 16, scope: !1506)
!1516 = !DILocation(line: 182, column: 7, scope: !1506)
!1517 = distinct !{!1517, !1518, !1519}
!1518 = !DILocation(line: 182, column: 7, scope: !1507)
!1519 = !DILocation(line: 201, column: 11, scope: !1507)
!1520 = !DILocation(line: 206, column: 21, scope: !1409)
!1521 = !DILocation(line: 179, column: 14, scope: !1405)
!1522 = !DILocation(line: 206, column: 23, scope: !1409)
!1523 = !DILocation(line: 0, scope: !1409)
!1524 = !DILocation(line: 212, column: 19, scope: !1409)
!1525 = !DILocation(line: 219, column: 17, scope: !1415)
!1526 = !DILocation(line: 221, column: 51, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1415, file: !477, line: 220, column: 19)
!1528 = !DILocation(line: 0, scope: !1415)
!1529 = !DILocation(line: 221, column: 36, scope: !1527)
!1530 = !DILocation(line: 221, column: 53, scope: !1527)
!1531 = !DILocation(line: 221, column: 49, scope: !1527)
!1532 = !DILocation(line: 221, column: 56, scope: !1527)
!1533 = !DILocation(line: 222, column: 30, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !477, line: 222, column: 25)
!1535 = !DILocation(line: 222, column: 25, scope: !1527)
!1536 = !DILocation(line: 225, column: 31, scope: !1415)
!1537 = !DILocation(line: 225, column: 34, scope: !1415)
!1538 = distinct !{!1538, !1525, !1539}
!1539 = !DILocation(line: 225, column: 45, scope: !1415)
!1540 = !DILocation(line: 227, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1415, file: !477, line: 227, column: 21)
!1542 = !DILocation(line: 227, column: 30, scope: !1541)
!1543 = !DILocation(line: 227, column: 37, scope: !1541)
!1544 = !DILocation(line: 239, column: 16, scope: !1416)
!1545 = !DILocation(line: 240, column: 15, scope: !1416)
!1546 = !DILocation(line: 245, column: 16, scope: !1416)
!1547 = !DILocation(line: 246, column: 15, scope: !1416)
!1548 = !DILocation(line: 251, column: 16, scope: !1416)
!1549 = !DILocation(line: 252, column: 15, scope: !1416)
!1550 = !DILocation(line: 259, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !477, line: 258, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1416, file: !477, line: 258, column: 15)
!1553 = !DILocation(line: 0, scope: !1416)
!1554 = !DILocation(line: 256, column: 20, scope: !1416)
!1555 = !DILocation(line: 259, column: 17, scope: !1551)
!1556 = !DILocation(line: 262, column: 27, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !477, line: 260, column: 19)
!1558 = !DILocation(line: 263, column: 21, scope: !1557)
!1559 = !DILocation(line: 265, column: 27, scope: !1557)
!1560 = !DILocation(line: 266, column: 21, scope: !1557)
!1561 = !DILocation(line: 268, column: 27, scope: !1557)
!1562 = !DILocation(line: 269, column: 21, scope: !1557)
!1563 = !DILocation(line: 275, column: 27, scope: !1557)
!1564 = !DILocation(line: 276, column: 21, scope: !1557)
!1565 = !DILocation(line: 279, column: 27, scope: !1557)
!1566 = !DILocation(line: 280, column: 21, scope: !1557)
!1567 = !DILocation(line: 258, column: 24, scope: !1551)
!1568 = !DILocation(line: 258, column: 15, scope: !1551)
!1569 = distinct !{!1569, !1570, !1571}
!1570 = !DILocation(line: 258, column: 15, scope: !1552)
!1571 = !DILocation(line: 283, column: 19, scope: !1552)
!1572 = !DILocation(line: 208, column: 18, scope: !1409)
!1573 = !DILocation(line: 287, column: 28, scope: !1409)
!1574 = !DILocation(line: 288, column: 19, scope: !1409)
!1575 = !DILocation(line: 288, column: 22, scope: !1409)
!1576 = !DILocation(line: 289, column: 19, scope: !1409)
!1577 = !DILocation(line: 289, column: 24, scope: !1409)
!1578 = !DILocation(line: 290, column: 19, scope: !1409)
!1579 = !DILocation(line: 290, column: 28, scope: !1409)
!1580 = !DILocation(line: 291, column: 19, scope: !1409)
!1581 = !DILocation(line: 291, column: 25, scope: !1409)
!1582 = !DILocation(line: 293, column: 14, scope: !1409)
!1583 = !DILocation(line: 292, column: 19, scope: !1409)
!1584 = !DILocation(line: 292, column: 29, scope: !1409)
!1585 = !DILocation(line: 295, column: 14, scope: !1405)
!1586 = !DILocation(line: 295, column: 24, scope: !1405)
!1587 = !DILocation(line: 176, column: 28, scope: !1406)
!1588 = !DILocation(line: 176, column: 3, scope: !1406)
!1589 = distinct !{!1589, !1590, !1591}
!1590 = !DILocation(line: 176, column: 3, scope: !1407)
!1591 = !DILocation(line: 299, column: 5, scope: !1407)
!1592 = !DILocation(line: 303, column: 16, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !477, line: 302, column: 5)
!1594 = distinct !DILexicalBlock(scope: !1381, file: !477, line: 301, column: 7)
!1595 = !DILocation(line: 303, column: 21, scope: !1593)
!1596 = !DILocation(line: 304, column: 7, scope: !1593)
!1597 = !DILocation(line: 307, column: 1, scope: !1381)
!1598 = !DILocation(line: 308, column: 3, scope: !1381)
!1599 = !DILocation(line: 309, column: 3, scope: !1381)
!1600 = !DILocation(line: 310, column: 1, scope: !1381)
!1601 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !477, file: !477, line: 316, type: !1382, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1602)
!1602 = !{!1603, !1604}
!1603 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1601, file: !477, line: 316, type: !27)
!1604 = !DILocalVariable(name: "ref_stats", scope: !1601, file: !477, line: 318, type: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !428, line: 46, size: 1152, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1623, !1624, !1625}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1605, file: !428, line: 48, baseType: !431, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1605, file: !428, line: 53, baseType: !433, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1605, file: !428, line: 61, baseType: !435, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1605, file: !428, line: 62, baseType: !409, size: 32, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1605, file: !428, line: 64, baseType: !438, size: 32, offset: 224)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1605, file: !428, line: 65, baseType: !440, size: 32, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1605, file: !428, line: 67, baseType: !29, size: 32, offset: 288)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1605, file: !428, line: 69, baseType: !431, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1605, file: !428, line: 74, baseType: !58, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1605, file: !428, line: 78, baseType: !445, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1605, file: !428, line: 80, baseType: !447, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1605, file: !428, line: 91, baseType: !1619, size: 128, offset: 576)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !450, line: 10, size: 128, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1619, file: !450, line: 12, baseType: !453, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1619, file: !450, line: 16, baseType: !455, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1605, file: !428, line: 92, baseType: !1619, size: 128, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1605, file: !428, line: 93, baseType: !1619, size: 128, offset: 832)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1605, file: !428, line: 106, baseType: !459, size: 192, offset: 960)
!1626 = !DILocation(line: 0, scope: !1601)
!1627 = !DILocation(line: 318, column: 3, scope: !1601)
!1628 = !DILocation(line: 318, column: 15, scope: !1601)
!1629 = !DILocalVariable(name: "__path", arg: 1, scope: !1630, file: !147, line: 453, type: !27)
!1630 = distinct !DISubprogram(name: "stat", scope: !147, file: !147, line: 453, type: !1631, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1634)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!29, !27, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1634 = !{!1629, !1635}
!1635 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1630, file: !147, line: 453, type: !1633)
!1636 = !DILocation(line: 0, scope: !1630, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 320, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1601, file: !477, line: 320, column: 7)
!1639 = !DILocation(line: 455, column: 10, scope: !1630, inlinedAt: !1637)
!1640 = !DILocation(line: 320, column: 35, scope: !1638)
!1641 = !DILocation(line: 320, column: 7, scope: !1601)
!1642 = !DILocation(line: 322, column: 41, scope: !1601)
!1643 = !{!1644, !1273, i64 24}
!1644 = !{!"stat", !1645, i64 0, !1645, i64 8, !1645, i64 16, !1273, i64 24, !1273, i64 28, !1273, i64 32, !1273, i64 36, !1645, i64 40, !1645, i64 48, !1645, i64 56, !1645, i64 64, !1646, i64 72, !1646, i64 88, !1646, i64 104, !1180, i64 120}
!1645 = !{!"long", !1180, i64 0}
!1646 = !{!"timespec", !1645, i64 0, !1645, i64 8}
!1647 = !DILocation(line: 0, scope: !1446, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 322, column: 10, scope: !1601)
!1649 = !DILocation(line: 114, column: 27, scope: !1446, inlinedAt: !1648)
!1650 = !DILocation(line: 115, column: 9, scope: !1446, inlinedAt: !1648)
!1651 = !DILocation(line: 116, column: 6, scope: !1446, inlinedAt: !1648)
!1652 = !DILocation(line: 116, column: 11, scope: !1446, inlinedAt: !1648)
!1653 = !DILocation(line: 117, column: 6, scope: !1446, inlinedAt: !1648)
!1654 = !DILocation(line: 117, column: 15, scope: !1446, inlinedAt: !1648)
!1655 = !DILocation(line: 118, column: 6, scope: !1446, inlinedAt: !1648)
!1656 = !DILocation(line: 118, column: 12, scope: !1446, inlinedAt: !1648)
!1657 = !DILocation(line: 119, column: 6, scope: !1446, inlinedAt: !1648)
!1658 = !DILocation(line: 119, column: 16, scope: !1446, inlinedAt: !1648)
!1659 = !DILocation(line: 120, column: 8, scope: !1446, inlinedAt: !1648)
!1660 = !DILocation(line: 120, column: 13, scope: !1446, inlinedAt: !1648)
!1661 = !DILocation(line: 322, column: 3, scope: !1601)
!1662 = !DILocation(line: 323, column: 1, scope: !1601)
!1663 = distinct !DISubprogram(name: "mode_adjust", scope: !477, file: !477, line: 339, type: !1664, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !1669)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!407, !407, !153, !407, !1666, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1681, !1682, !1683}
!1670 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1663, file: !477, line: 339, type: !407)
!1671 = !DILocalVariable(name: "dir", arg: 2, scope: !1663, file: !477, line: 339, type: !153)
!1672 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1663, file: !477, line: 339, type: !407)
!1673 = !DILocalVariable(name: "changes", arg: 4, scope: !1663, file: !477, line: 340, type: !1666)
!1674 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1663, file: !477, line: 340, type: !1668)
!1675 = !DILocalVariable(name: "newmode", scope: !1663, file: !477, line: 343, type: !407)
!1676 = !DILocalVariable(name: "mode_bits", scope: !1663, file: !477, line: 346, type: !407)
!1677 = !DILocalVariable(name: "affected", scope: !1678, file: !477, line: 350, type: !407)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !477, line: 349, column: 5)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !477, line: 348, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1663, file: !477, line: 348, column: 3)
!1681 = !DILocalVariable(name: "omit_change", scope: !1678, file: !477, line: 351, type: !407)
!1682 = !DILocalVariable(name: "value", scope: !1678, file: !477, line: 353, type: !407)
!1683 = !DILocalVariable(name: "preserved", scope: !1684, file: !477, line: 393, type: !407)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !477, line: 392, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !477, line: 387, column: 9)
!1686 = !DILocation(line: 0, scope: !1663)
!1687 = !DILocation(line: 343, column: 28, scope: !1663)
!1688 = !DILocation(line: 348, column: 19, scope: !1679)
!1689 = !DILocation(line: 348, column: 24, scope: !1679)
!1690 = !DILocation(line: 348, column: 3, scope: !1680)
!1691 = !DILocation(line: 0, scope: !1678)
!1692 = !DILocation(line: 0, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !477, line: 376, column: 15)
!1694 = distinct !DILexicalBlock(scope: !1678, file: !477, line: 356, column: 9)
!1695 = !DILocation(line: 348, column: 10, scope: !1679)
!1696 = !DILocation(line: 350, column: 34, scope: !1678)
!1697 = !DILocation(line: 352, column: 52, scope: !1678)
!1698 = !DILocation(line: 352, column: 41, scope: !1678)
!1699 = !DILocation(line: 352, column: 39, scope: !1678)
!1700 = !DILocation(line: 353, column: 31, scope: !1678)
!1701 = !DILocation(line: 355, column: 7, scope: !1678)
!1702 = !DILocation(line: 362, column: 17, scope: !1694)
!1703 = !DILocation(line: 365, column: 28, scope: !1694)
!1704 = !DILocation(line: 365, column: 22, scope: !1694)
!1705 = !DILocation(line: 367, column: 30, scope: !1694)
!1706 = !DILocation(line: 367, column: 24, scope: !1694)
!1707 = !DILocation(line: 369, column: 30, scope: !1694)
!1708 = !DILocation(line: 369, column: 24, scope: !1694)
!1709 = !DILocation(line: 367, column: 21, scope: !1694)
!1710 = !DILocation(line: 369, column: 21, scope: !1694)
!1711 = !DILocation(line: 365, column: 17, scope: !1694)
!1712 = !DILocation(line: 371, column: 11, scope: !1694)
!1713 = !DILocation(line: 376, column: 24, scope: !1693)
!1714 = !DILocation(line: 376, column: 57, scope: !1693)
!1715 = !DILocation(line: 377, column: 19, scope: !1693)
!1716 = !DILocation(line: 376, column: 15, scope: !1694)
!1717 = !DILocation(line: 384, column: 17, scope: !1678)
!1718 = !DILocation(line: 384, column: 55, scope: !1678)
!1719 = !DILocation(line: 384, column: 53, scope: !1678)
!1720 = !DILocation(line: 384, column: 13, scope: !1678)
!1721 = !DILocation(line: 386, column: 24, scope: !1678)
!1722 = !DILocation(line: 386, column: 15, scope: !1678)
!1723 = !DILocation(line: 386, column: 7, scope: !1678)
!1724 = !DILocation(line: 393, column: 33, scope: !1684)
!1725 = !DILocation(line: 393, column: 59, scope: !1684)
!1726 = !DILocation(line: 0, scope: !1684)
!1727 = !DILocation(line: 394, column: 42, scope: !1684)
!1728 = !DILocation(line: 394, column: 23, scope: !1684)
!1729 = !DILocation(line: 395, column: 32, scope: !1684)
!1730 = !DILocation(line: 395, column: 45, scope: !1684)
!1731 = !DILocation(line: 400, column: 21, scope: !1685)
!1732 = !DILocation(line: 401, column: 19, scope: !1685)
!1733 = !DILocation(line: 402, column: 11, scope: !1685)
!1734 = !DILocation(line: 405, column: 21, scope: !1685)
!1735 = !DILocation(line: 406, column: 22, scope: !1685)
!1736 = !DILocation(line: 406, column: 19, scope: !1685)
!1737 = !DILocation(line: 407, column: 11, scope: !1685)
!1738 = !DILocation(line: 348, column: 45, scope: !1679)
!1739 = distinct !{!1739, !1690, !1740}
!1740 = !DILocation(line: 409, column: 5, scope: !1680)
!1741 = !DILocation(line: 346, column: 10, scope: !1663)
!1742 = !DILocation(line: 343, column: 10, scope: !1663)
!1743 = !DILocation(line: 411, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1663, file: !477, line: 411, column: 7)
!1745 = !DILocation(line: 411, column: 7, scope: !1663)
!1746 = !DILocation(line: 412, column: 17, scope: !1744)
!1747 = !DILocation(line: 412, column: 5, scope: !1744)
!1748 = !DILocation(line: 413, column: 3, scope: !1663)
!1749 = distinct !DISubprogram(name: "set_program_name", scope: !231, file: !231, line: 39, type: !94, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1750)
!1750 = !{!1751, !1752, !1753}
!1751 = !DILocalVariable(name: "argv0", arg: 1, scope: !1749, file: !231, line: 39, type: !27)
!1752 = !DILocalVariable(name: "slash", scope: !1749, file: !231, line: 46, type: !27)
!1753 = !DILocalVariable(name: "base", scope: !1749, file: !231, line: 47, type: !27)
!1754 = !DILocation(line: 0, scope: !1749)
!1755 = !DILocation(line: 51, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !231, line: 51, column: 7)
!1757 = !DILocation(line: 51, column: 7, scope: !1749)
!1758 = !DILocation(line: 55, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !231, line: 52, column: 5)
!1760 = !DILocation(line: 54, column: 7, scope: !1759)
!1761 = !DILocation(line: 56, column: 7, scope: !1759)
!1762 = !DILocation(line: 59, column: 11, scope: !1749)
!1763 = !DILocation(line: 60, column: 17, scope: !1749)
!1764 = !DILocation(line: 60, column: 11, scope: !1749)
!1765 = !DILocation(line: 61, column: 12, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1749, file: !231, line: 61, column: 7)
!1767 = !DILocation(line: 61, column: 20, scope: !1766)
!1768 = !DILocation(line: 61, column: 25, scope: !1766)
!1769 = !DILocation(line: 61, column: 42, scope: !1766)
!1770 = !DILocation(line: 61, column: 28, scope: !1766)
!1771 = !DILocation(line: 61, column: 61, scope: !1766)
!1772 = !DILocation(line: 61, column: 7, scope: !1749)
!1773 = !DILocation(line: 64, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !231, line: 64, column: 11)
!1775 = distinct !DILexicalBlock(scope: !1766, file: !231, line: 62, column: 5)
!1776 = !DILocation(line: 64, column: 36, scope: !1774)
!1777 = !DILocation(line: 64, column: 11, scope: !1775)
!1778 = !DILocation(line: 66, column: 24, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !231, line: 65, column: 9)
!1780 = !DILocation(line: 70, column: 41, scope: !1779)
!1781 = !DILocation(line: 72, column: 9, scope: !1779)
!1782 = !DILocation(line: 84, column: 16, scope: !1749)
!1783 = !DILocation(line: 90, column: 27, scope: !1749)
!1784 = !DILocation(line: 92, column: 1, scope: !1749)
!1785 = distinct !DISubprogram(name: "clone_quoting_options", scope: !272, file: !272, line: 122, type: !1786, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1789)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1788, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1789 = !{!1790, !1791, !1792}
!1790 = !DILocalVariable(name: "o", arg: 1, scope: !1785, file: !272, line: 122, type: !1788)
!1791 = !DILocalVariable(name: "e", scope: !1785, file: !272, line: 124, type: !29)
!1792 = !DILocalVariable(name: "p", scope: !1785, file: !272, line: 125, type: !1788)
!1793 = !DILocation(line: 0, scope: !1785)
!1794 = !DILocation(line: 124, column: 11, scope: !1785)
!1795 = !DILocation(line: 125, column: 40, scope: !1785)
!1796 = !DILocation(line: 125, column: 31, scope: !1785)
!1797 = !DILocation(line: 127, column: 9, scope: !1785)
!1798 = !DILocation(line: 128, column: 3, scope: !1785)
!1799 = distinct !DISubprogram(name: "get_quoting_style", scope: !272, file: !272, line: 133, type: !1800, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!5, !305}
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "o", arg: 1, scope: !1799, file: !272, line: 133, type: !305)
!1804 = !DILocation(line: 0, scope: !1799)
!1805 = !DILocation(line: 135, column: 11, scope: !1799)
!1806 = !DILocation(line: 135, column: 46, scope: !1799)
!1807 = !{!1808, !1180, i64 0}
!1808 = !{!"quoting_options", !1180, i64 0, !1273, i64 4, !1180, i64 8, !1179, i64 40, !1179, i64 48}
!1809 = !DILocation(line: 135, column: 3, scope: !1799)
!1810 = distinct !DISubprogram(name: "set_quoting_style", scope: !272, file: !272, line: 141, type: !1811, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1788, !5}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "o", arg: 1, scope: !1810, file: !272, line: 141, type: !1788)
!1815 = !DILocalVariable(name: "s", arg: 2, scope: !1810, file: !272, line: 141, type: !5)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 143, column: 4, scope: !1810)
!1818 = !DILocation(line: 143, column: 39, scope: !1810)
!1819 = !DILocation(line: 143, column: 45, scope: !1810)
!1820 = !DILocation(line: 144, column: 1, scope: !1810)
!1821 = distinct !DISubprogram(name: "set_char_quoting", scope: !272, file: !272, line: 152, type: !1822, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!29, !1788, !26, !29}
!1824 = !{!1825, !1826, !1827, !1828, !1830, !1831, !1832}
!1825 = !DILocalVariable(name: "o", arg: 1, scope: !1821, file: !272, line: 152, type: !1788)
!1826 = !DILocalVariable(name: "c", arg: 2, scope: !1821, file: !272, line: 152, type: !26)
!1827 = !DILocalVariable(name: "i", arg: 3, scope: !1821, file: !272, line: 152, type: !29)
!1828 = !DILocalVariable(name: "uc", scope: !1821, file: !272, line: 154, type: !1829)
!1829 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1830 = !DILocalVariable(name: "p", scope: !1821, file: !272, line: 155, type: !156)
!1831 = !DILocalVariable(name: "shift", scope: !1821, file: !272, line: 157, type: !29)
!1832 = !DILocalVariable(name: "r", scope: !1821, file: !272, line: 158, type: !29)
!1833 = !DILocation(line: 0, scope: !1821)
!1834 = !DILocation(line: 156, column: 6, scope: !1821)
!1835 = !DILocation(line: 156, column: 62, scope: !1821)
!1836 = !DILocation(line: 156, column: 57, scope: !1821)
!1837 = !DILocation(line: 157, column: 15, scope: !1821)
!1838 = !DILocation(line: 158, column: 12, scope: !1821)
!1839 = !DILocation(line: 158, column: 15, scope: !1821)
!1840 = !DILocation(line: 158, column: 25, scope: !1821)
!1841 = !DILocation(line: 159, column: 13, scope: !1821)
!1842 = !DILocation(line: 159, column: 18, scope: !1821)
!1843 = !DILocation(line: 159, column: 23, scope: !1821)
!1844 = !DILocation(line: 159, column: 6, scope: !1821)
!1845 = !DILocation(line: 160, column: 3, scope: !1821)
!1846 = distinct !DISubprogram(name: "set_quoting_flags", scope: !272, file: !272, line: 168, type: !1847, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!29, !1788, !29}
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "o", arg: 1, scope: !1846, file: !272, line: 168, type: !1788)
!1851 = !DILocalVariable(name: "i", arg: 2, scope: !1846, file: !272, line: 168, type: !29)
!1852 = !DILocalVariable(name: "r", scope: !1846, file: !272, line: 170, type: !29)
!1853 = !DILocation(line: 0, scope: !1846)
!1854 = !DILocation(line: 171, column: 8, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !272, line: 171, column: 7)
!1856 = !DILocation(line: 171, column: 7, scope: !1846)
!1857 = !DILocation(line: 173, column: 10, scope: !1846)
!1858 = !{!1808, !1273, i64 4}
!1859 = !DILocation(line: 174, column: 12, scope: !1846)
!1860 = !DILocation(line: 175, column: 3, scope: !1846)
!1861 = distinct !DISubprogram(name: "set_custom_quoting", scope: !272, file: !272, line: 179, type: !1862, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1788, !27, !27}
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "o", arg: 1, scope: !1861, file: !272, line: 179, type: !1788)
!1866 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1861, file: !272, line: 180, type: !27)
!1867 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1861, file: !272, line: 180, type: !27)
!1868 = !DILocation(line: 0, scope: !1861)
!1869 = !DILocation(line: 182, column: 8, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1861, file: !272, line: 182, column: 7)
!1871 = !DILocation(line: 182, column: 7, scope: !1861)
!1872 = !DILocation(line: 184, column: 6, scope: !1861)
!1873 = !DILocation(line: 184, column: 12, scope: !1861)
!1874 = !DILocation(line: 185, column: 8, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1861, file: !272, line: 185, column: 7)
!1876 = !DILocation(line: 185, column: 23, scope: !1875)
!1877 = !DILocation(line: 185, column: 19, scope: !1875)
!1878 = !DILocation(line: 186, column: 5, scope: !1875)
!1879 = !DILocation(line: 187, column: 6, scope: !1861)
!1880 = !DILocation(line: 187, column: 17, scope: !1861)
!1881 = !{!1808, !1179, i64 40}
!1882 = !DILocation(line: 188, column: 6, scope: !1861)
!1883 = !DILocation(line: 188, column: 18, scope: !1861)
!1884 = !{!1808, !1179, i64 48}
!1885 = !DILocation(line: 189, column: 1, scope: !1861)
!1886 = distinct !DISubprogram(name: "quotearg_buffer", scope: !272, file: !272, line: 784, type: !1887, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!84, !25, !84, !27, !84, !305}
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1890 = !DILocalVariable(name: "buffer", arg: 1, scope: !1886, file: !272, line: 784, type: !25)
!1891 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1886, file: !272, line: 784, type: !84)
!1892 = !DILocalVariable(name: "arg", arg: 3, scope: !1886, file: !272, line: 785, type: !27)
!1893 = !DILocalVariable(name: "argsize", arg: 4, scope: !1886, file: !272, line: 785, type: !84)
!1894 = !DILocalVariable(name: "o", arg: 5, scope: !1886, file: !272, line: 786, type: !305)
!1895 = !DILocalVariable(name: "p", scope: !1886, file: !272, line: 788, type: !305)
!1896 = !DILocalVariable(name: "e", scope: !1886, file: !272, line: 789, type: !29)
!1897 = !DILocalVariable(name: "r", scope: !1886, file: !272, line: 790, type: !84)
!1898 = !DILocation(line: 0, scope: !1886)
!1899 = !DILocation(line: 788, column: 37, scope: !1886)
!1900 = !DILocation(line: 789, column: 11, scope: !1886)
!1901 = !DILocation(line: 791, column: 43, scope: !1886)
!1902 = !DILocation(line: 791, column: 53, scope: !1886)
!1903 = !DILocation(line: 791, column: 60, scope: !1886)
!1904 = !DILocation(line: 792, column: 43, scope: !1886)
!1905 = !DILocation(line: 792, column: 58, scope: !1886)
!1906 = !DILocation(line: 790, column: 14, scope: !1886)
!1907 = !DILocation(line: 793, column: 9, scope: !1886)
!1908 = !DILocation(line: 794, column: 3, scope: !1886)
!1909 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !272, file: !272, line: 256, type: !1910, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1914)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!84, !25, !84, !27, !84, !5, !29, !1912, !27, !27}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1939, !1940, !1941, !1942, !1943, !1946, !1947, !1953, !1956, !1957, !1964, !1967, !1968, !1969, !1970, !1971, !1972}
!1915 = !DILocalVariable(name: "buffer", arg: 1, scope: !1909, file: !272, line: 256, type: !25)
!1916 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1909, file: !272, line: 256, type: !84)
!1917 = !DILocalVariable(name: "arg", arg: 3, scope: !1909, file: !272, line: 257, type: !27)
!1918 = !DILocalVariable(name: "argsize", arg: 4, scope: !1909, file: !272, line: 257, type: !84)
!1919 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1909, file: !272, line: 258, type: !5)
!1920 = !DILocalVariable(name: "flags", arg: 6, scope: !1909, file: !272, line: 258, type: !29)
!1921 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1909, file: !272, line: 259, type: !1912)
!1922 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1909, file: !272, line: 260, type: !27)
!1923 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1909, file: !272, line: 261, type: !27)
!1924 = !DILocalVariable(name: "i", scope: !1909, file: !272, line: 263, type: !84)
!1925 = !DILocalVariable(name: "len", scope: !1909, file: !272, line: 264, type: !84)
!1926 = !DILocalVariable(name: "orig_buffersize", scope: !1909, file: !272, line: 265, type: !84)
!1927 = !DILocalVariable(name: "quote_string", scope: !1909, file: !272, line: 266, type: !27)
!1928 = !DILocalVariable(name: "quote_string_len", scope: !1909, file: !272, line: 267, type: !84)
!1929 = !DILocalVariable(name: "backslash_escapes", scope: !1909, file: !272, line: 268, type: !153)
!1930 = !DILocalVariable(name: "unibyte_locale", scope: !1909, file: !272, line: 269, type: !153)
!1931 = !DILocalVariable(name: "elide_outer_quotes", scope: !1909, file: !272, line: 270, type: !153)
!1932 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1909, file: !272, line: 271, type: !153)
!1933 = !DILocalVariable(name: "encountered_single_quote", scope: !1909, file: !272, line: 272, type: !153)
!1934 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1909, file: !272, line: 273, type: !153)
!1935 = !DILocalVariable(name: "c", scope: !1936, file: !272, line: 402, type: !1829)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !272, line: 401, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !272, line: 400, column: 3)
!1938 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 400, column: 3)
!1939 = !DILocalVariable(name: "esc", scope: !1936, file: !272, line: 403, type: !1829)
!1940 = !DILocalVariable(name: "is_right_quote", scope: !1936, file: !272, line: 404, type: !153)
!1941 = !DILocalVariable(name: "escaping", scope: !1936, file: !272, line: 405, type: !153)
!1942 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1936, file: !272, line: 406, type: !153)
!1943 = !DILocalVariable(name: "m", scope: !1944, file: !272, line: 610, type: !84)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 608, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 426, column: 9)
!1946 = !DILocalVariable(name: "printable", scope: !1944, file: !272, line: 612, type: !153)
!1947 = !DILocalVariable(name: "mbstate", scope: !1948, file: !272, line: 621, type: !1950)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !272, line: 620, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !272, line: 614, column: 17)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1951, line: 6, baseType: !1952)
!1951 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !326, line: 21, baseType: !325)
!1953 = !DILocalVariable(name: "w", scope: !1954, file: !272, line: 631, type: !1955)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !272, line: 630, column: 19)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !85, line: 74, baseType: !29)
!1956 = !DILocalVariable(name: "bytes", scope: !1954, file: !272, line: 632, type: !84)
!1957 = !DILocalVariable(name: "j", scope: !1958, file: !272, line: 657, type: !84)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !272, line: 656, column: 27)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !272, line: 654, column: 29)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !272, line: 649, column: 23)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !272, line: 641, column: 30)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !272, line: 636, column: 30)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !272, line: 634, column: 25)
!1964 = !DILocalVariable(name: "ilim", scope: !1965, file: !272, line: 684, type: !84)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !272, line: 681, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1944, file: !272, line: 680, column: 17)
!1967 = !DILabel(scope: !1909, name: "process_input", file: !272, line: 314)
!1968 = !DILabel(scope: !1945, name: "c_and_shell_escape", file: !272, line: 512)
!1969 = !DILabel(scope: !1945, name: "c_escape", file: !272, line: 517)
!1970 = !DILabel(scope: !1936, name: "store_escape", file: !272, line: 719)
!1971 = !DILabel(scope: !1936, name: "store_c", file: !272, line: 722)
!1972 = !DILabel(scope: !1909, name: "force_outer_quoting_style", file: !272, line: 763)
!1973 = !DILocation(line: 0, scope: !1909)
!1974 = !DILocation(line: 269, column: 25, scope: !1909)
!1975 = !DILocation(line: 269, column: 36, scope: !1909)
!1976 = !DILocation(line: 270, column: 8, scope: !1909)
!1977 = !DILocation(line: 0, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 526, column: 15)
!1979 = !DILocation(line: 0, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !272, line: 462, column: 19)
!1981 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 455, column: 13)
!1982 = !DILocation(line: 0, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !272, line: 449, column: 20)
!1984 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 428, column: 15)
!1985 = !DILocation(line: 0, scope: !1948)
!1986 = !DILocation(line: 0, scope: !1954)
!1987 = !DILocation(line: 0, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 712, column: 11)
!1989 = !DILocation(line: 273, column: 3, scope: !1909)
!1990 = !DILocation(line: 265, column: 10, scope: !1909)
!1991 = !DILocation(line: 266, column: 15, scope: !1909)
!1992 = !DILocation(line: 267, column: 10, scope: !1909)
!1993 = !DILocation(line: 268, column: 8, scope: !1909)
!1994 = !DILocation(line: 271, column: 8, scope: !1909)
!1995 = !DILocation(line: 272, column: 8, scope: !1909)
!1996 = !DILocation(line: 273, column: 8, scope: !1909)
!1997 = !DILocation(line: 314, column: 2, scope: !1909)
!1998 = !DILocation(line: 316, column: 3, scope: !1909)
!1999 = !DILocation(line: 323, column: 11, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 317, column: 5)
!2001 = !DILocation(line: 323, column: 12, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2000, file: !272, line: 323, column: 11)
!2003 = !DILocation(line: 324, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !272, line: 324, column: 9)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !272, line: 324, column: 9)
!2006 = !DILocation(line: 324, column: 9, scope: !2005)
!2007 = !DILocation(line: 362, column: 26, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !272, line: 340, column: 11)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !272, line: 339, column: 13)
!2010 = distinct !DILexicalBlock(scope: !2000, file: !272, line: 338, column: 7)
!2011 = !DILocation(line: 363, column: 27, scope: !2008)
!2012 = !DILocation(line: 364, column: 11, scope: !2008)
!2013 = !DILocation(line: 365, column: 14, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !272, line: 365, column: 13)
!2015 = !DILocation(line: 365, column: 13, scope: !2010)
!2016 = !DILocation(line: 366, column: 43, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !272, line: 366, column: 11)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !272, line: 366, column: 11)
!2019 = !DILocation(line: 366, column: 11, scope: !2018)
!2020 = !DILocation(line: 367, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !272, line: 367, column: 13)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !272, line: 367, column: 13)
!2023 = !DILocation(line: 367, column: 13, scope: !2022)
!2024 = !DILocation(line: 366, column: 70, scope: !2017)
!2025 = distinct !{!2025, !2019, !2026}
!2026 = !DILocation(line: 367, column: 13, scope: !2018)
!2027 = !DILocation(line: 264, column: 10, scope: !1909)
!2028 = !DILocation(line: 370, column: 28, scope: !2010)
!2029 = !DILocation(line: 372, column: 7, scope: !2000)
!2030 = !DILocation(line: 376, column: 7, scope: !2000)
!2031 = !DILocation(line: 379, column: 7, scope: !2000)
!2032 = !DILocation(line: 381, column: 12, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2000, file: !272, line: 381, column: 11)
!2034 = !DILocation(line: 381, column: 11, scope: !2000)
!2035 = !DILocation(line: 386, column: 12, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2000, file: !272, line: 386, column: 11)
!2037 = !DILocation(line: 386, column: 11, scope: !2000)
!2038 = !DILocation(line: 387, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !272, line: 387, column: 9)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !272, line: 387, column: 9)
!2041 = !DILocation(line: 387, column: 9, scope: !2040)
!2042 = !DILocation(line: 394, column: 7, scope: !2000)
!2043 = !DILocation(line: 397, column: 7, scope: !2000)
!2044 = !DILocation(line: 0, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 408, column: 11)
!2046 = !DILocation(line: 0, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !272, line: 419, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !272, line: 418, column: 9)
!2049 = !DILocation(line: 0, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 556, column: 15)
!2051 = !DILocation(line: 0, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 548, column: 15)
!2053 = !DILocation(line: 0, scope: !1959)
!2054 = !DILocation(line: 0, scope: !1966)
!2055 = !DILocation(line: 0, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 509, column: 15)
!2057 = !DILocation(line: 400, column: 8, scope: !1938)
!2058 = !DILocation(line: 0, scope: !1938)
!2059 = !DILocation(line: 400, column: 27, scope: !1937)
!2060 = !DILocation(line: 400, column: 19, scope: !1937)
!2061 = !DILocation(line: 400, column: 41, scope: !1937)
!2062 = !DILocation(line: 400, column: 48, scope: !1937)
!2063 = !DILocation(line: 400, column: 3, scope: !1938)
!2064 = !DILocation(line: 400, column: 60, scope: !1937)
!2065 = !DILocation(line: 0, scope: !1936)
!2066 = !DILocation(line: 409, column: 11, scope: !2045)
!2067 = !DILocation(line: 411, column: 17, scope: !2045)
!2068 = !DILocation(line: 412, column: 39, scope: !2045)
!2069 = !DILocation(line: 416, column: 32, scope: !2045)
!2070 = !DILocation(line: 412, column: 19, scope: !2045)
!2071 = !DILocation(line: 412, column: 15, scope: !2045)
!2072 = !DILocation(line: 417, column: 11, scope: !2045)
!2073 = !DILocation(line: 417, column: 26, scope: !2045)
!2074 = !DILocation(line: 417, column: 14, scope: !2045)
!2075 = !DILocation(line: 417, column: 63, scope: !2045)
!2076 = !DILocation(line: 408, column: 11, scope: !1936)
!2077 = !DILocation(line: 424, column: 11, scope: !1936)
!2078 = !DILocation(line: 425, column: 7, scope: !1936)
!2079 = !DILocation(line: 428, column: 15, scope: !1945)
!2080 = !DILocation(line: 430, column: 15, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !272, line: 430, column: 15)
!2082 = distinct !DILexicalBlock(scope: !1984, file: !272, line: 429, column: 13)
!2083 = !DILocation(line: 430, column: 15, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !272, line: 430, column: 15)
!2085 = !DILocation(line: 430, column: 15, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !272, line: 430, column: 15)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !272, line: 430, column: 15)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !272, line: 430, column: 15)
!2089 = !DILocation(line: 430, column: 15, scope: !2087)
!2090 = !DILocation(line: 430, column: 15, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !272, line: 430, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !272, line: 430, column: 15)
!2093 = !DILocation(line: 430, column: 15, scope: !2092)
!2094 = !DILocation(line: 430, column: 15, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !272, line: 430, column: 15)
!2096 = distinct !DILexicalBlock(scope: !2088, file: !272, line: 430, column: 15)
!2097 = !DILocation(line: 430, column: 15, scope: !2096)
!2098 = !DILocation(line: 430, column: 15, scope: !2088)
!2099 = !DILocation(line: 430, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !272, line: 430, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2081, file: !272, line: 430, column: 15)
!2102 = !DILocation(line: 430, column: 15, scope: !2101)
!2103 = !DILocation(line: 438, column: 19, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2082, file: !272, line: 437, column: 19)
!2105 = !DILocation(line: 438, column: 24, scope: !2104)
!2106 = !DILocation(line: 438, column: 28, scope: !2104)
!2107 = !DILocation(line: 438, column: 38, scope: !2104)
!2108 = !DILocation(line: 438, column: 48, scope: !2104)
!2109 = !DILocation(line: 438, column: 59, scope: !2104)
!2110 = !DILocation(line: 440, column: 19, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !272, line: 440, column: 19)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !272, line: 440, column: 19)
!2113 = distinct !DILexicalBlock(scope: !2104, file: !272, line: 439, column: 17)
!2114 = !DILocation(line: 440, column: 19, scope: !2112)
!2115 = !DILocation(line: 441, column: 19, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !272, line: 441, column: 19)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !272, line: 441, column: 19)
!2118 = !DILocation(line: 441, column: 19, scope: !2117)
!2119 = !DILocation(line: 442, column: 17, scope: !2113)
!2120 = !DILocation(line: 449, column: 20, scope: !1984)
!2121 = !DILocation(line: 454, column: 11, scope: !1945)
!2122 = !DILocation(line: 457, column: 19, scope: !1981)
!2123 = !DILocation(line: 463, column: 19, scope: !1980)
!2124 = !DILocation(line: 463, column: 24, scope: !1980)
!2125 = !DILocation(line: 463, column: 28, scope: !1980)
!2126 = !DILocation(line: 463, column: 38, scope: !1980)
!2127 = !DILocation(line: 463, column: 47, scope: !1980)
!2128 = !DILocation(line: 463, column: 41, scope: !1980)
!2129 = !DILocation(line: 463, column: 52, scope: !1980)
!2130 = !DILocation(line: 462, column: 19, scope: !1981)
!2131 = !DILocation(line: 464, column: 25, scope: !1980)
!2132 = !DILocation(line: 464, column: 17, scope: !1980)
!2133 = !DILocation(line: 471, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1980, file: !272, line: 465, column: 19)
!2135 = !DILocation(line: 475, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !272, line: 475, column: 21)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !272, line: 475, column: 21)
!2138 = !DILocation(line: 475, column: 21, scope: !2137)
!2139 = !DILocation(line: 476, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !272, line: 476, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !272, line: 476, column: 21)
!2142 = !DILocation(line: 476, column: 21, scope: !2141)
!2143 = !DILocation(line: 477, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !272, line: 477, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2134, file: !272, line: 477, column: 21)
!2146 = !DILocation(line: 477, column: 21, scope: !2145)
!2147 = !DILocation(line: 478, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !272, line: 478, column: 21)
!2149 = distinct !DILexicalBlock(scope: !2134, file: !272, line: 478, column: 21)
!2150 = !DILocation(line: 478, column: 21, scope: !2149)
!2151 = !DILocation(line: 479, column: 21, scope: !2134)
!2152 = !DILocation(line: 492, column: 31, scope: !1945)
!2153 = !DILocation(line: 493, column: 31, scope: !1945)
!2154 = !DILocation(line: 495, column: 31, scope: !1945)
!2155 = !DILocation(line: 496, column: 31, scope: !1945)
!2156 = !DILocation(line: 497, column: 31, scope: !1945)
!2157 = !DILocation(line: 500, column: 15, scope: !1945)
!2158 = !DILocation(line: 502, column: 19, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !272, line: 501, column: 13)
!2160 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 500, column: 15)
!2161 = !DILocation(line: 509, column: 33, scope: !2056)
!2162 = !DILocation(line: 0, scope: !1945)
!2163 = !DILocation(line: 512, column: 9, scope: !1945)
!2164 = !DILocation(line: 514, column: 15, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 513, column: 15)
!2166 = !DILocation(line: 517, column: 9, scope: !1945)
!2167 = !DILocation(line: 518, column: 15, scope: !1945)
!2168 = !DILocation(line: 526, column: 15, scope: !1945)
!2169 = !DILocation(line: 526, column: 40, scope: !1978)
!2170 = !DILocation(line: 526, column: 47, scope: !1978)
!2171 = !DILocation(line: 526, column: 18, scope: !1978)
!2172 = !DILocation(line: 530, column: 17, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1945, file: !272, line: 530, column: 15)
!2174 = !DILocation(line: 530, column: 15, scope: !1945)
!2175 = !DILocation(line: 535, column: 11, scope: !1945)
!2176 = !DILocation(line: 549, column: 15, scope: !2052)
!2177 = !DILocation(line: 556, column: 15, scope: !1945)
!2178 = !DILocation(line: 558, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2050, file: !272, line: 557, column: 13)
!2180 = !DILocation(line: 561, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2179, file: !272, line: 561, column: 19)
!2182 = !DILocation(line: 561, column: 35, scope: !2181)
!2183 = !DILocation(line: 561, column: 30, scope: !2181)
!2184 = !DILocation(line: 570, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !272, line: 570, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2179, file: !272, line: 570, column: 15)
!2187 = !DILocation(line: 570, column: 15, scope: !2186)
!2188 = !DILocation(line: 571, column: 15, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !272, line: 571, column: 15)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !272, line: 571, column: 15)
!2191 = !DILocation(line: 571, column: 15, scope: !2190)
!2192 = !DILocation(line: 572, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !272, line: 572, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2179, file: !272, line: 572, column: 15)
!2195 = !DILocation(line: 572, column: 15, scope: !2194)
!2196 = !DILocation(line: 574, column: 13, scope: !2179)
!2197 = !DILocation(line: 614, column: 17, scope: !1944)
!2198 = !DILocation(line: 0, scope: !1944)
!2199 = !DILocation(line: 617, column: 29, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1949, file: !272, line: 615, column: 15)
!2201 = !{!2202, !2202, i64 0}
!2202 = !{!"short", !1180, i64 0}
!2203 = !DILocation(line: 617, column: 27, scope: !2200)
!2204 = !DILocation(line: 618, column: 15, scope: !2200)
!2205 = !DILocation(line: 621, column: 17, scope: !1948)
!2206 = !DILocation(line: 621, column: 27, scope: !1948)
!2207 = !DILocalVariable(name: "__dest", arg: 1, scope: !2208, file: !2209, line: 59, type: !82)
!2208 = distinct !DISubprogram(name: "memset", scope: !2209, file: !2209, line: 59, type: !2210, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2212)
!2209 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!82, !82, !29, !84}
!2212 = !{!2207, !2213, !2214}
!2213 = !DILocalVariable(name: "__ch", arg: 2, scope: !2208, file: !2209, line: 59, type: !29)
!2214 = !DILocalVariable(name: "__len", arg: 3, scope: !2208, file: !2209, line: 59, type: !84)
!2215 = !DILocation(line: 0, scope: !2208, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 622, column: 17, scope: !1948)
!2217 = !DILocation(line: 71, column: 10, scope: !2208, inlinedAt: !2216)
!2218 = !DILocation(line: 626, column: 29, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1948, file: !272, line: 626, column: 21)
!2220 = !DILocation(line: 626, column: 21, scope: !1948)
!2221 = !DILocation(line: 627, column: 29, scope: !2219)
!2222 = !DILocation(line: 627, column: 19, scope: !2219)
!2223 = !DILocation(line: 629, column: 17, scope: !1948)
!2224 = !DILocation(line: 624, column: 19, scope: !1948)
!2225 = !DILocation(line: 625, column: 27, scope: !1948)
!2226 = !DILocation(line: 631, column: 21, scope: !1954)
!2227 = !DILocation(line: 632, column: 56, scope: !1954)
!2228 = !DILocation(line: 632, column: 50, scope: !1954)
!2229 = !DILocation(line: 633, column: 53, scope: !1954)
!2230 = !DILocation(line: 632, column: 36, scope: !1954)
!2231 = !DILocation(line: 634, column: 25, scope: !1954)
!2232 = !DILocation(line: 644, column: 38, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1961, file: !272, line: 642, column: 23)
!2234 = !DILocation(line: 644, column: 48, scope: !2233)
!2235 = !DILocation(line: 644, column: 25, scope: !2233)
!2236 = !DILocation(line: 644, column: 51, scope: !2233)
!2237 = !DILocation(line: 645, column: 28, scope: !2233)
!2238 = !DILocation(line: 644, column: 34, scope: !2233)
!2239 = distinct !{!2239, !2235, !2237}
!2240 = !DILocation(line: 658, column: 43, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !272, line: 658, column: 29)
!2242 = distinct !DILexicalBlock(scope: !1958, file: !272, line: 658, column: 29)
!2243 = !DILocation(line: 655, column: 29, scope: !1959)
!2244 = !DILocation(line: 0, scope: !1958)
!2245 = !DILocation(line: 659, column: 49, scope: !2241)
!2246 = !DILocation(line: 659, column: 39, scope: !2241)
!2247 = !DILocation(line: 659, column: 31, scope: !2241)
!2248 = !DILocation(line: 658, column: 53, scope: !2241)
!2249 = !DILocation(line: 658, column: 29, scope: !2242)
!2250 = distinct !{!2250, !2249, !2251}
!2251 = !DILocation(line: 667, column: 33, scope: !2242)
!2252 = !DILocation(line: 674, column: 19, scope: !1948)
!2253 = !DILocation(line: 670, column: 41, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1960, file: !272, line: 670, column: 29)
!2255 = !DILocation(line: 670, column: 31, scope: !2254)
!2256 = !DILocation(line: 670, column: 29, scope: !1960)
!2257 = !DILocation(line: 672, column: 27, scope: !1960)
!2258 = !DILocation(line: 675, column: 26, scope: !1948)
!2259 = !DILocation(line: 675, column: 24, scope: !1948)
!2260 = !DILocation(line: 674, column: 19, scope: !1954)
!2261 = distinct !{!2261, !2223, !2262}
!2262 = !DILocation(line: 675, column: 44, scope: !1948)
!2263 = !DILocation(line: 676, column: 15, scope: !1949)
!2264 = !DILocation(line: 0, scope: !1949)
!2265 = !DILocation(line: 678, column: 40, scope: !1944)
!2266 = !DILocation(line: 680, column: 19, scope: !1966)
!2267 = !DILocation(line: 680, column: 45, scope: !1966)
!2268 = !DILocation(line: 680, column: 23, scope: !1966)
!2269 = !DILocation(line: 684, column: 33, scope: !1965)
!2270 = !DILocation(line: 0, scope: !1965)
!2271 = !DILocation(line: 686, column: 17, scope: !1965)
!2272 = !DILocation(line: 405, column: 12, scope: !1936)
!2273 = !DILocation(line: 688, column: 43, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !272, line: 688, column: 25)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !272, line: 687, column: 19)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !272, line: 686, column: 17)
!2277 = distinct !DILexicalBlock(scope: !1965, file: !272, line: 686, column: 17)
!2278 = !DILocation(line: 690, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !272, line: 690, column: 25)
!2280 = distinct !DILexicalBlock(scope: !2274, file: !272, line: 689, column: 23)
!2281 = !DILocation(line: 690, column: 25, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !272, line: 690, column: 25)
!2283 = !DILocation(line: 690, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !272, line: 690, column: 25)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !272, line: 690, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !272, line: 690, column: 25)
!2287 = !DILocation(line: 690, column: 25, scope: !2285)
!2288 = !DILocation(line: 690, column: 25, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !272, line: 690, column: 25)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !272, line: 690, column: 25)
!2291 = !DILocation(line: 690, column: 25, scope: !2290)
!2292 = !DILocation(line: 690, column: 25, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !272, line: 690, column: 25)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !272, line: 690, column: 25)
!2295 = !DILocation(line: 690, column: 25, scope: !2294)
!2296 = !DILocation(line: 690, column: 25, scope: !2286)
!2297 = !DILocation(line: 690, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !272, line: 690, column: 25)
!2299 = distinct !DILexicalBlock(scope: !2279, file: !272, line: 690, column: 25)
!2300 = !DILocation(line: 690, column: 25, scope: !2299)
!2301 = !DILocation(line: 691, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !272, line: 691, column: 25)
!2303 = distinct !DILexicalBlock(scope: !2280, file: !272, line: 691, column: 25)
!2304 = !DILocation(line: 691, column: 25, scope: !2303)
!2305 = !DILocation(line: 692, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !272, line: 692, column: 25)
!2307 = distinct !DILexicalBlock(scope: !2280, file: !272, line: 692, column: 25)
!2308 = !DILocation(line: 692, column: 25, scope: !2307)
!2309 = !DILocation(line: 693, column: 38, scope: !2280)
!2310 = !DILocation(line: 693, column: 33, scope: !2280)
!2311 = !DILocation(line: 694, column: 23, scope: !2280)
!2312 = !DILocation(line: 695, column: 30, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2274, file: !272, line: 695, column: 30)
!2314 = !DILocation(line: 695, column: 30, scope: !2274)
!2315 = !DILocation(line: 697, column: 25, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !272, line: 697, column: 25)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !272, line: 697, column: 25)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !272, line: 696, column: 23)
!2319 = !DILocation(line: 697, column: 25, scope: !2317)
!2320 = !DILocation(line: 699, column: 23, scope: !2318)
!2321 = !DILocation(line: 700, column: 35, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2275, file: !272, line: 700, column: 25)
!2323 = !DILocation(line: 700, column: 30, scope: !2322)
!2324 = !DILocation(line: 700, column: 25, scope: !2275)
!2325 = !DILocation(line: 702, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !272, line: 702, column: 21)
!2327 = distinct !DILexicalBlock(scope: !2275, file: !272, line: 702, column: 21)
!2328 = !DILocation(line: 702, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !272, line: 702, column: 21)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !272, line: 702, column: 21)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !272, line: 702, column: 21)
!2332 = !DILocation(line: 702, column: 21, scope: !2330)
!2333 = !DILocation(line: 702, column: 21, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !272, line: 702, column: 21)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !272, line: 702, column: 21)
!2336 = !DILocation(line: 702, column: 21, scope: !2335)
!2337 = !DILocation(line: 702, column: 21, scope: !2331)
!2338 = !DILocation(line: 0, scope: !2275)
!2339 = !DILocation(line: 703, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !272, line: 703, column: 21)
!2341 = distinct !DILexicalBlock(scope: !2275, file: !272, line: 703, column: 21)
!2342 = !DILocation(line: 703, column: 21, scope: !2341)
!2343 = !DILocation(line: 704, column: 25, scope: !2275)
!2344 = !DILocation(line: 686, column: 17, scope: !2276)
!2345 = distinct !{!2345, !2346, !2347}
!2346 = !DILocation(line: 686, column: 17, scope: !2277)
!2347 = !DILocation(line: 705, column: 19, scope: !2277)
!2348 = !DILocation(line: 416, column: 30, scope: !2045)
!2349 = !DILocation(line: 712, column: 34, scope: !1988)
!2350 = !DILocation(line: 715, column: 35, scope: !1988)
!2351 = !DILocation(line: 715, column: 17, scope: !1988)
!2352 = !DILocation(line: 715, column: 47, scope: !1988)
!2353 = !DILocation(line: 715, column: 65, scope: !1988)
!2354 = !DILocation(line: 716, column: 15, scope: !1988)
!2355 = !DILocation(line: 716, column: 11, scope: !1988)
!2356 = !DILocation(line: 712, column: 11, scope: !1936)
!2357 = !DILocation(line: 400, column: 10, scope: !1938)
!2358 = !DILocation(line: 719, column: 5, scope: !1936)
!2359 = !DILocation(line: 720, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 720, column: 7)
!2361 = !DILocation(line: 720, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2360, file: !272, line: 720, column: 7)
!2363 = !DILocation(line: 720, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !272, line: 720, column: 7)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !272, line: 720, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !272, line: 720, column: 7)
!2367 = !DILocation(line: 720, column: 7, scope: !2365)
!2368 = !DILocation(line: 720, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !272, line: 720, column: 7)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !272, line: 720, column: 7)
!2371 = !DILocation(line: 720, column: 7, scope: !2370)
!2372 = !DILocation(line: 720, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !272, line: 720, column: 7)
!2374 = distinct !DILexicalBlock(scope: !2366, file: !272, line: 720, column: 7)
!2375 = !DILocation(line: 720, column: 7, scope: !2374)
!2376 = !DILocation(line: 720, column: 7, scope: !2366)
!2377 = !DILocation(line: 720, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !272, line: 720, column: 7)
!2379 = distinct !DILexicalBlock(scope: !2360, file: !272, line: 720, column: 7)
!2380 = !DILocation(line: 720, column: 7, scope: !2379)
!2381 = !DILocation(line: 722, column: 5, scope: !1936)
!2382 = !DILocation(line: 723, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !272, line: 723, column: 7)
!2384 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 723, column: 7)
!2385 = !DILocation(line: 424, column: 9, scope: !1936)
!2386 = !DILocation(line: 723, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !272, line: 723, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !272, line: 723, column: 7)
!2389 = distinct !DILexicalBlock(scope: !2383, file: !272, line: 723, column: 7)
!2390 = !DILocation(line: 723, column: 7, scope: !2388)
!2391 = !DILocation(line: 723, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !272, line: 723, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !272, line: 723, column: 7)
!2394 = !DILocation(line: 723, column: 7, scope: !2393)
!2395 = !DILocation(line: 723, column: 7, scope: !2389)
!2396 = !DILocation(line: 724, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !272, line: 724, column: 7)
!2398 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 724, column: 7)
!2399 = !DILocation(line: 724, column: 7, scope: !2398)
!2400 = !DILocation(line: 726, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1936, file: !272, line: 726, column: 11)
!2402 = !DILocation(line: 726, column: 11, scope: !1936)
!2403 = !DILocation(line: 728, column: 5, scope: !1937)
!2404 = !DILocation(line: 400, column: 75, scope: !1937)
!2405 = !DILocation(line: 400, column: 3, scope: !1937)
!2406 = distinct !{!2406, !2063, !2407}
!2407 = !DILocation(line: 728, column: 5, scope: !1938)
!2408 = !DILocation(line: 730, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 730, column: 7)
!2410 = !DILocation(line: 730, column: 16, scope: !2409)
!2411 = !DILocation(line: 738, column: 51, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 738, column: 7)
!2413 = !DILocation(line: 739, column: 10, scope: !2412)
!2414 = !DILocation(line: 741, column: 11, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !272, line: 741, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !272, line: 740, column: 5)
!2417 = !DILocation(line: 741, column: 11, scope: !2416)
!2418 = !DILocation(line: 742, column: 16, scope: !2415)
!2419 = !DILocation(line: 742, column: 9, scope: !2415)
!2420 = !DILocation(line: 746, column: 18, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !272, line: 746, column: 16)
!2422 = !DILocation(line: 746, column: 32, scope: !2421)
!2423 = !DILocation(line: 746, column: 29, scope: !2421)
!2424 = !DILocation(line: 755, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 755, column: 7)
!2426 = !DILocation(line: 755, column: 20, scope: !2425)
!2427 = !DILocation(line: 756, column: 12, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !272, line: 756, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !272, line: 756, column: 5)
!2430 = !DILocation(line: 756, column: 5, scope: !2429)
!2431 = !DILocation(line: 757, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !272, line: 757, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !272, line: 757, column: 7)
!2434 = !DILocation(line: 757, column: 7, scope: !2433)
!2435 = !DILocation(line: 756, column: 39, scope: !2428)
!2436 = distinct !{!2436, !2430, !2437}
!2437 = !DILocation(line: 757, column: 7, scope: !2429)
!2438 = !DILocation(line: 759, column: 11, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 759, column: 7)
!2440 = !DILocation(line: 759, column: 7, scope: !1909)
!2441 = !DILocation(line: 760, column: 5, scope: !2439)
!2442 = !DILocation(line: 760, column: 17, scope: !2439)
!2443 = !DILocation(line: 763, column: 2, scope: !1909)
!2444 = !DILocation(line: 766, column: 51, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !1909, file: !272, line: 766, column: 7)
!2446 = !DILocation(line: 766, column: 21, scope: !2445)
!2447 = !DILocation(line: 770, column: 42, scope: !1909)
!2448 = !DILocation(line: 768, column: 10, scope: !1909)
!2449 = !DILocation(line: 768, column: 3, scope: !1909)
!2450 = !DILocation(line: 772, column: 1, scope: !1909)
!2451 = distinct !DISubprogram(name: "gettext_quote", scope: !272, file: !272, line: 207, type: !2452, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!27, !27, !5}
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DILocalVariable(name: "msgid", arg: 1, scope: !2451, file: !272, line: 207, type: !27)
!2456 = !DILocalVariable(name: "s", arg: 2, scope: !2451, file: !272, line: 207, type: !5)
!2457 = !DILocalVariable(name: "translation", scope: !2451, file: !272, line: 209, type: !27)
!2458 = !DILocalVariable(name: "locale_code", scope: !2451, file: !272, line: 210, type: !27)
!2459 = !DILocation(line: 0, scope: !2451)
!2460 = !DILocation(line: 209, column: 29, scope: !2451)
!2461 = !DILocation(line: 212, column: 19, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2451, file: !272, line: 212, column: 7)
!2463 = !DILocation(line: 212, column: 7, scope: !2451)
!2464 = !DILocation(line: 233, column: 17, scope: !2451)
!2465 = !DILocalVariable(name: "s1", arg: 1, scope: !2466, file: !2467, line: 160, type: !27)
!2466 = distinct !DISubprogram(name: "strcaseeq0", scope: !2467, file: !2467, line: 160, type: !2468, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2470)
!2467 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2470 = !{!2465, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2471 = !DILocalVariable(name: "s2", arg: 2, scope: !2466, file: !2467, line: 160, type: !27)
!2472 = !DILocalVariable(name: "s20", arg: 3, scope: !2466, file: !2467, line: 160, type: !26)
!2473 = !DILocalVariable(name: "s21", arg: 4, scope: !2466, file: !2467, line: 160, type: !26)
!2474 = !DILocalVariable(name: "s22", arg: 5, scope: !2466, file: !2467, line: 160, type: !26)
!2475 = !DILocalVariable(name: "s23", arg: 6, scope: !2466, file: !2467, line: 160, type: !26)
!2476 = !DILocalVariable(name: "s24", arg: 7, scope: !2466, file: !2467, line: 160, type: !26)
!2477 = !DILocalVariable(name: "s25", arg: 8, scope: !2466, file: !2467, line: 160, type: !26)
!2478 = !DILocalVariable(name: "s26", arg: 9, scope: !2466, file: !2467, line: 160, type: !26)
!2479 = !DILocalVariable(name: "s27", arg: 10, scope: !2466, file: !2467, line: 160, type: !26)
!2480 = !DILocalVariable(name: "s28", arg: 11, scope: !2466, file: !2467, line: 160, type: !26)
!2481 = !DILocation(line: 0, scope: !2466, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 234, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2451, file: !272, line: 234, column: 7)
!2484 = !DILocation(line: 162, column: 7, scope: !2485, inlinedAt: !2482)
!2485 = distinct !DILexicalBlock(scope: !2466, file: !2467, line: 162, column: 7)
!2486 = !DILocalVariable(name: "s1", arg: 1, scope: !2487, file: !2467, line: 146, type: !27)
!2487 = distinct !DISubprogram(name: "strcaseeq1", scope: !2467, file: !2467, line: 146, type: !2488, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26, !26}
!2490 = !{!2486, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2491 = !DILocalVariable(name: "s2", arg: 2, scope: !2487, file: !2467, line: 146, type: !27)
!2492 = !DILocalVariable(name: "s21", arg: 3, scope: !2487, file: !2467, line: 146, type: !26)
!2493 = !DILocalVariable(name: "s22", arg: 4, scope: !2487, file: !2467, line: 146, type: !26)
!2494 = !DILocalVariable(name: "s23", arg: 5, scope: !2487, file: !2467, line: 146, type: !26)
!2495 = !DILocalVariable(name: "s24", arg: 6, scope: !2487, file: !2467, line: 146, type: !26)
!2496 = !DILocalVariable(name: "s25", arg: 7, scope: !2487, file: !2467, line: 146, type: !26)
!2497 = !DILocalVariable(name: "s26", arg: 8, scope: !2487, file: !2467, line: 146, type: !26)
!2498 = !DILocalVariable(name: "s27", arg: 9, scope: !2487, file: !2467, line: 146, type: !26)
!2499 = !DILocalVariable(name: "s28", arg: 10, scope: !2487, file: !2467, line: 146, type: !26)
!2500 = !DILocation(line: 0, scope: !2487, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 167, column: 16, scope: !2502, inlinedAt: !2482)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2467, line: 164, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2485, file: !2467, line: 163, column: 5)
!2504 = !DILocation(line: 148, column: 7, scope: !2505, inlinedAt: !2501)
!2505 = distinct !DILexicalBlock(scope: !2487, file: !2467, line: 148, column: 7)
!2506 = !DILocalVariable(name: "s1", arg: 1, scope: !2507, file: !2467, line: 132, type: !27)
!2507 = distinct !DISubprogram(name: "strcaseeq2", scope: !2467, file: !2467, line: 132, type: !2508, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26, !26}
!2510 = !{!2506, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2511 = !DILocalVariable(name: "s2", arg: 2, scope: !2507, file: !2467, line: 132, type: !27)
!2512 = !DILocalVariable(name: "s22", arg: 3, scope: !2507, file: !2467, line: 132, type: !26)
!2513 = !DILocalVariable(name: "s23", arg: 4, scope: !2507, file: !2467, line: 132, type: !26)
!2514 = !DILocalVariable(name: "s24", arg: 5, scope: !2507, file: !2467, line: 132, type: !26)
!2515 = !DILocalVariable(name: "s25", arg: 6, scope: !2507, file: !2467, line: 132, type: !26)
!2516 = !DILocalVariable(name: "s26", arg: 7, scope: !2507, file: !2467, line: 132, type: !26)
!2517 = !DILocalVariable(name: "s27", arg: 8, scope: !2507, file: !2467, line: 132, type: !26)
!2518 = !DILocalVariable(name: "s28", arg: 9, scope: !2507, file: !2467, line: 132, type: !26)
!2519 = !DILocation(line: 0, scope: !2507, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 153, column: 16, scope: !2521, inlinedAt: !2501)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !2467, line: 150, column: 11)
!2522 = distinct !DILexicalBlock(scope: !2505, file: !2467, line: 149, column: 5)
!2523 = !DILocation(line: 134, column: 7, scope: !2524, inlinedAt: !2520)
!2524 = distinct !DILexicalBlock(scope: !2507, file: !2467, line: 134, column: 7)
!2525 = !DILocalVariable(name: "s1", arg: 1, scope: !2526, file: !2467, line: 118, type: !27)
!2526 = distinct !DISubprogram(name: "strcaseeq3", scope: !2467, file: !2467, line: 118, type: !2527, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!29, !27, !27, !26, !26, !26, !26, !26, !26}
!2529 = !{!2525, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2530 = !DILocalVariable(name: "s2", arg: 2, scope: !2526, file: !2467, line: 118, type: !27)
!2531 = !DILocalVariable(name: "s23", arg: 3, scope: !2526, file: !2467, line: 118, type: !26)
!2532 = !DILocalVariable(name: "s24", arg: 4, scope: !2526, file: !2467, line: 118, type: !26)
!2533 = !DILocalVariable(name: "s25", arg: 5, scope: !2526, file: !2467, line: 118, type: !26)
!2534 = !DILocalVariable(name: "s26", arg: 6, scope: !2526, file: !2467, line: 118, type: !26)
!2535 = !DILocalVariable(name: "s27", arg: 7, scope: !2526, file: !2467, line: 118, type: !26)
!2536 = !DILocalVariable(name: "s28", arg: 8, scope: !2526, file: !2467, line: 118, type: !26)
!2537 = !DILocation(line: 0, scope: !2526, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 139, column: 16, scope: !2539, inlinedAt: !2520)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2467, line: 136, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !2467, line: 135, column: 5)
!2541 = !DILocation(line: 120, column: 7, scope: !2542, inlinedAt: !2538)
!2542 = distinct !DILexicalBlock(scope: !2526, file: !2467, line: 120, column: 7)
!2543 = !DILocation(line: 120, column: 7, scope: !2526, inlinedAt: !2538)
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2545, file: !2467, line: 104, type: !27)
!2545 = distinct !DISubprogram(name: "strcaseeq4", scope: !2467, file: !2467, line: 104, type: !2546, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!29, !27, !27, !26, !26, !26, !26, !26}
!2548 = !{!2544, !2549, !2550, !2551, !2552, !2553, !2554}
!2549 = !DILocalVariable(name: "s2", arg: 2, scope: !2545, file: !2467, line: 104, type: !27)
!2550 = !DILocalVariable(name: "s24", arg: 3, scope: !2545, file: !2467, line: 104, type: !26)
!2551 = !DILocalVariable(name: "s25", arg: 4, scope: !2545, file: !2467, line: 104, type: !26)
!2552 = !DILocalVariable(name: "s26", arg: 5, scope: !2545, file: !2467, line: 104, type: !26)
!2553 = !DILocalVariable(name: "s27", arg: 6, scope: !2545, file: !2467, line: 104, type: !26)
!2554 = !DILocalVariable(name: "s28", arg: 7, scope: !2545, file: !2467, line: 104, type: !26)
!2555 = !DILocation(line: 0, scope: !2545, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 125, column: 16, scope: !2557, inlinedAt: !2538)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2467, line: 122, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2542, file: !2467, line: 121, column: 5)
!2559 = !DILocation(line: 106, column: 7, scope: !2560, inlinedAt: !2556)
!2560 = distinct !DILexicalBlock(scope: !2545, file: !2467, line: 106, column: 7)
!2561 = !DILocation(line: 106, column: 7, scope: !2545, inlinedAt: !2556)
!2562 = !DILocalVariable(name: "s1", arg: 1, scope: !2563, file: !2467, line: 90, type: !27)
!2563 = distinct !DISubprogram(name: "strcaseeq5", scope: !2467, file: !2467, line: 90, type: !2564, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!29, !27, !27, !26, !26, !26, !26}
!2566 = !{!2562, !2567, !2568, !2569, !2570, !2571}
!2567 = !DILocalVariable(name: "s2", arg: 2, scope: !2563, file: !2467, line: 90, type: !27)
!2568 = !DILocalVariable(name: "s25", arg: 3, scope: !2563, file: !2467, line: 90, type: !26)
!2569 = !DILocalVariable(name: "s26", arg: 4, scope: !2563, file: !2467, line: 90, type: !26)
!2570 = !DILocalVariable(name: "s27", arg: 5, scope: !2563, file: !2467, line: 90, type: !26)
!2571 = !DILocalVariable(name: "s28", arg: 6, scope: !2563, file: !2467, line: 90, type: !26)
!2572 = !DILocation(line: 0, scope: !2563, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 111, column: 16, scope: !2574, inlinedAt: !2556)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !2467, line: 108, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2560, file: !2467, line: 107, column: 5)
!2576 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2573)
!2577 = distinct !DILexicalBlock(scope: !2563, file: !2467, line: 92, column: 7)
!2578 = !DILocation(line: 92, column: 7, scope: !2563, inlinedAt: !2573)
!2579 = !DILocation(line: 235, column: 12, scope: !2483)
!2580 = !DILocation(line: 235, column: 21, scope: !2483)
!2581 = !DILocation(line: 235, column: 5, scope: !2483)
!2582 = !DILocation(line: 0, scope: !2487, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 167, column: 16, scope: !2502, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 236, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2451, file: !272, line: 236, column: 7)
!2586 = !DILocation(line: 148, column: 7, scope: !2505, inlinedAt: !2583)
!2587 = !DILocation(line: 0, scope: !2507, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 153, column: 16, scope: !2521, inlinedAt: !2583)
!2589 = !DILocation(line: 134, column: 7, scope: !2524, inlinedAt: !2588)
!2590 = !DILocation(line: 134, column: 7, scope: !2507, inlinedAt: !2588)
!2591 = !DILocation(line: 0, scope: !2526, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 139, column: 16, scope: !2539, inlinedAt: !2588)
!2593 = !DILocation(line: 120, column: 7, scope: !2542, inlinedAt: !2592)
!2594 = !DILocation(line: 120, column: 7, scope: !2526, inlinedAt: !2592)
!2595 = !DILocation(line: 0, scope: !2545, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 125, column: 16, scope: !2557, inlinedAt: !2592)
!2597 = !DILocation(line: 106, column: 7, scope: !2560, inlinedAt: !2596)
!2598 = !DILocation(line: 106, column: 7, scope: !2545, inlinedAt: !2596)
!2599 = !DILocation(line: 0, scope: !2563, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 111, column: 16, scope: !2574, inlinedAt: !2596)
!2601 = !DILocation(line: 92, column: 7, scope: !2577, inlinedAt: !2600)
!2602 = !DILocation(line: 92, column: 7, scope: !2563, inlinedAt: !2600)
!2603 = !DILocalVariable(name: "s1", arg: 1, scope: !2604, file: !2467, line: 76, type: !27)
!2604 = distinct !DISubprogram(name: "strcaseeq6", scope: !2467, file: !2467, line: 76, type: !2605, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!29, !27, !27, !26, !26, !26}
!2607 = !{!2603, !2608, !2609, !2610, !2611}
!2608 = !DILocalVariable(name: "s2", arg: 2, scope: !2604, file: !2467, line: 76, type: !27)
!2609 = !DILocalVariable(name: "s26", arg: 3, scope: !2604, file: !2467, line: 76, type: !26)
!2610 = !DILocalVariable(name: "s27", arg: 4, scope: !2604, file: !2467, line: 76, type: !26)
!2611 = !DILocalVariable(name: "s28", arg: 5, scope: !2604, file: !2467, line: 76, type: !26)
!2612 = !DILocation(line: 0, scope: !2604, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 97, column: 16, scope: !2614, inlinedAt: !2600)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !2467, line: 94, column: 11)
!2615 = distinct !DILexicalBlock(scope: !2577, file: !2467, line: 93, column: 5)
!2616 = !DILocation(line: 78, column: 7, scope: !2617, inlinedAt: !2613)
!2617 = distinct !DILexicalBlock(scope: !2604, file: !2467, line: 78, column: 7)
!2618 = !DILocation(line: 78, column: 7, scope: !2604, inlinedAt: !2613)
!2619 = !DILocalVariable(name: "s1", arg: 1, scope: !2620, file: !2467, line: 62, type: !27)
!2620 = distinct !DISubprogram(name: "strcaseeq7", scope: !2467, file: !2467, line: 62, type: !2621, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!29, !27, !27, !26, !26}
!2623 = !{!2619, !2624, !2625, !2626}
!2624 = !DILocalVariable(name: "s2", arg: 2, scope: !2620, file: !2467, line: 62, type: !27)
!2625 = !DILocalVariable(name: "s27", arg: 3, scope: !2620, file: !2467, line: 62, type: !26)
!2626 = !DILocalVariable(name: "s28", arg: 4, scope: !2620, file: !2467, line: 62, type: !26)
!2627 = !DILocation(line: 0, scope: !2620, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 83, column: 16, scope: !2629, inlinedAt: !2613)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !2467, line: 80, column: 11)
!2630 = distinct !DILexicalBlock(scope: !2617, file: !2467, line: 79, column: 5)
!2631 = !DILocation(line: 64, column: 7, scope: !2632, inlinedAt: !2628)
!2632 = distinct !DILexicalBlock(scope: !2620, file: !2467, line: 64, column: 7)
!2633 = !DILocation(line: 236, column: 7, scope: !2451)
!2634 = !DILocation(line: 237, column: 12, scope: !2585)
!2635 = !DILocation(line: 237, column: 21, scope: !2585)
!2636 = !DILocation(line: 237, column: 5, scope: !2585)
!2637 = !DILocation(line: 239, column: 13, scope: !2451)
!2638 = !DILocation(line: 239, column: 11, scope: !2451)
!2639 = !DILocation(line: 239, column: 3, scope: !2451)
!2640 = !DILocation(line: 240, column: 1, scope: !2451)
!2641 = distinct !DISubprogram(name: "quotearg_alloc", scope: !272, file: !272, line: 799, type: !2642, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!25, !27, !84, !305}
!2644 = !{!2645, !2646, !2647}
!2645 = !DILocalVariable(name: "arg", arg: 1, scope: !2641, file: !272, line: 799, type: !27)
!2646 = !DILocalVariable(name: "argsize", arg: 2, scope: !2641, file: !272, line: 799, type: !84)
!2647 = !DILocalVariable(name: "o", arg: 3, scope: !2641, file: !272, line: 800, type: !305)
!2648 = !DILocation(line: 0, scope: !2641)
!2649 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !272, line: 812, type: !27)
!2650 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !272, file: !272, line: 812, type: !2651, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!25, !27, !84, !535, !305}
!2653 = !{!2649, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2654 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !272, line: 812, type: !84)
!2655 = !DILocalVariable(name: "size", arg: 3, scope: !2650, file: !272, line: 812, type: !535)
!2656 = !DILocalVariable(name: "o", arg: 4, scope: !2650, file: !272, line: 813, type: !305)
!2657 = !DILocalVariable(name: "p", scope: !2650, file: !272, line: 815, type: !305)
!2658 = !DILocalVariable(name: "e", scope: !2650, file: !272, line: 816, type: !29)
!2659 = !DILocalVariable(name: "flags", scope: !2650, file: !272, line: 818, type: !29)
!2660 = !DILocalVariable(name: "bufsize", scope: !2650, file: !272, line: 819, type: !84)
!2661 = !DILocalVariable(name: "buf", scope: !2650, file: !272, line: 823, type: !25)
!2662 = !DILocation(line: 0, scope: !2650, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 802, column: 10, scope: !2641)
!2664 = !DILocation(line: 815, column: 37, scope: !2650, inlinedAt: !2663)
!2665 = !DILocation(line: 816, column: 11, scope: !2650, inlinedAt: !2663)
!2666 = !DILocation(line: 818, column: 18, scope: !2650, inlinedAt: !2663)
!2667 = !DILocation(line: 818, column: 24, scope: !2650, inlinedAt: !2663)
!2668 = !DILocation(line: 819, column: 69, scope: !2650, inlinedAt: !2663)
!2669 = !DILocation(line: 820, column: 53, scope: !2650, inlinedAt: !2663)
!2670 = !DILocation(line: 821, column: 49, scope: !2650, inlinedAt: !2663)
!2671 = !DILocation(line: 822, column: 49, scope: !2650, inlinedAt: !2663)
!2672 = !DILocation(line: 819, column: 20, scope: !2650, inlinedAt: !2663)
!2673 = !DILocation(line: 822, column: 62, scope: !2650, inlinedAt: !2663)
!2674 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !296, line: 216, type: !84)
!2675 = distinct !DISubprogram(name: "xcharalloc", scope: !296, file: !296, line: 216, type: !2676, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!25, !84}
!2678 = !{!2674}
!2679 = !DILocation(line: 0, scope: !2675, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 823, column: 15, scope: !2650, inlinedAt: !2663)
!2681 = !DILocation(line: 218, column: 10, scope: !2675, inlinedAt: !2680)
!2682 = !DILocation(line: 824, column: 60, scope: !2650, inlinedAt: !2663)
!2683 = !DILocation(line: 826, column: 32, scope: !2650, inlinedAt: !2663)
!2684 = !DILocation(line: 826, column: 47, scope: !2650, inlinedAt: !2663)
!2685 = !DILocation(line: 824, column: 3, scope: !2650, inlinedAt: !2663)
!2686 = !DILocation(line: 827, column: 9, scope: !2650, inlinedAt: !2663)
!2687 = !DILocation(line: 802, column: 3, scope: !2641)
!2688 = !DILocation(line: 0, scope: !2650)
!2689 = !DILocation(line: 815, column: 37, scope: !2650)
!2690 = !DILocation(line: 816, column: 11, scope: !2650)
!2691 = !DILocation(line: 818, column: 18, scope: !2650)
!2692 = !DILocation(line: 818, column: 27, scope: !2650)
!2693 = !DILocation(line: 818, column: 24, scope: !2650)
!2694 = !DILocation(line: 819, column: 69, scope: !2650)
!2695 = !DILocation(line: 820, column: 53, scope: !2650)
!2696 = !DILocation(line: 821, column: 49, scope: !2650)
!2697 = !DILocation(line: 822, column: 49, scope: !2650)
!2698 = !DILocation(line: 819, column: 20, scope: !2650)
!2699 = !DILocation(line: 822, column: 62, scope: !2650)
!2700 = !DILocation(line: 0, scope: !2675, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 823, column: 15, scope: !2650)
!2702 = !DILocation(line: 218, column: 10, scope: !2675, inlinedAt: !2701)
!2703 = !DILocation(line: 824, column: 60, scope: !2650)
!2704 = !DILocation(line: 826, column: 32, scope: !2650)
!2705 = !DILocation(line: 826, column: 47, scope: !2650)
!2706 = !DILocation(line: 824, column: 3, scope: !2650)
!2707 = !DILocation(line: 827, column: 9, scope: !2650)
!2708 = !DILocation(line: 828, column: 7, scope: !2650)
!2709 = !DILocation(line: 829, column: 11, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2650, file: !272, line: 828, column: 7)
!2711 = !{!1645, !1645, i64 0}
!2712 = !DILocation(line: 829, column: 5, scope: !2710)
!2713 = !DILocation(line: 830, column: 3, scope: !2650)
!2714 = distinct !DISubprogram(name: "quotearg_free", scope: !272, file: !272, line: 848, type: !111, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2715)
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "sv", scope: !2714, file: !272, line: 850, type: !380)
!2717 = !DILocalVariable(name: "i", scope: !2714, file: !272, line: 851, type: !29)
!2718 = !DILocation(line: 850, column: 24, scope: !2714)
!2719 = !DILocation(line: 0, scope: !2714)
!2720 = !DILocation(line: 852, column: 19, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !272, line: 852, column: 3)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !272, line: 852, column: 3)
!2723 = !DILocation(line: 852, column: 17, scope: !2721)
!2724 = !DILocation(line: 852, column: 3, scope: !2722)
!2725 = !DILocation(line: 853, column: 17, scope: !2721)
!2726 = !{!2727, !1179, i64 8}
!2727 = !{!"slotvec", !1645, i64 0, !1179, i64 8}
!2728 = !DILocation(line: 853, column: 5, scope: !2721)
!2729 = !DILocation(line: 852, column: 28, scope: !2721)
!2730 = distinct !{!2730, !2724, !2731}
!2731 = !DILocation(line: 853, column: 20, scope: !2722)
!2732 = !DILocation(line: 854, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2714, file: !272, line: 854, column: 7)
!2734 = !DILocation(line: 854, column: 17, scope: !2733)
!2735 = !DILocation(line: 854, column: 7, scope: !2714)
!2736 = !DILocation(line: 856, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !272, line: 855, column: 5)
!2738 = !DILocation(line: 857, column: 21, scope: !2737)
!2739 = !{!2727, !1645, i64 0}
!2740 = !DILocation(line: 858, column: 20, scope: !2737)
!2741 = !DILocation(line: 859, column: 5, scope: !2737)
!2742 = !DILocation(line: 860, column: 10, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2714, file: !272, line: 860, column: 7)
!2744 = !DILocation(line: 860, column: 7, scope: !2714)
!2745 = !DILocation(line: 862, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !272, line: 861, column: 5)
!2747 = !DILocation(line: 862, column: 7, scope: !2746)
!2748 = !DILocation(line: 863, column: 15, scope: !2746)
!2749 = !DILocation(line: 864, column: 5, scope: !2746)
!2750 = !DILocation(line: 865, column: 10, scope: !2714)
!2751 = !DILocation(line: 866, column: 1, scope: !2714)
!2752 = distinct !DISubprogram(name: "quotearg_n", scope: !272, file: !272, line: 931, type: !98, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2753)
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !272, line: 931, type: !29)
!2755 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !272, line: 931, type: !27)
!2756 = !DILocation(line: 0, scope: !2752)
!2757 = !DILocation(line: 933, column: 10, scope: !2752)
!2758 = !DILocation(line: 933, column: 3, scope: !2752)
!2759 = distinct !DISubprogram(name: "quotearg_n_options", scope: !272, file: !272, line: 877, type: !2760, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!25, !29, !27, !84, !305}
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2772, !2773, !2775, !2776, !2777}
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !272, line: 877, type: !29)
!2764 = !DILocalVariable(name: "arg", arg: 2, scope: !2759, file: !272, line: 877, type: !27)
!2765 = !DILocalVariable(name: "argsize", arg: 3, scope: !2759, file: !272, line: 877, type: !84)
!2766 = !DILocalVariable(name: "options", arg: 4, scope: !2759, file: !272, line: 878, type: !305)
!2767 = !DILocalVariable(name: "e", scope: !2759, file: !272, line: 880, type: !29)
!2768 = !DILocalVariable(name: "sv", scope: !2759, file: !272, line: 882, type: !380)
!2769 = !DILocalVariable(name: "preallocated", scope: !2770, file: !272, line: 889, type: !153)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !272, line: 888, column: 5)
!2771 = distinct !DILexicalBlock(scope: !2759, file: !272, line: 887, column: 7)
!2772 = !DILocalVariable(name: "nmax", scope: !2770, file: !272, line: 890, type: !29)
!2773 = !DILocalVariable(name: "size", scope: !2774, file: !272, line: 903, type: !84)
!2774 = distinct !DILexicalBlock(scope: !2759, file: !272, line: 902, column: 3)
!2775 = !DILocalVariable(name: "val", scope: !2774, file: !272, line: 904, type: !25)
!2776 = !DILocalVariable(name: "flags", scope: !2774, file: !272, line: 906, type: !29)
!2777 = !DILocalVariable(name: "qsize", scope: !2774, file: !272, line: 907, type: !84)
!2778 = !DILocation(line: 0, scope: !2759)
!2779 = !DILocation(line: 880, column: 11, scope: !2759)
!2780 = !DILocation(line: 882, column: 24, scope: !2759)
!2781 = !DILocation(line: 884, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2759, file: !272, line: 884, column: 7)
!2783 = !DILocation(line: 884, column: 7, scope: !2759)
!2784 = !DILocation(line: 885, column: 5, scope: !2782)
!2785 = !DILocation(line: 887, column: 7, scope: !2771)
!2786 = !DILocation(line: 887, column: 14, scope: !2771)
!2787 = !DILocation(line: 887, column: 7, scope: !2759)
!2788 = !DILocation(line: 889, column: 31, scope: !2770)
!2789 = !DILocation(line: 0, scope: !2770)
!2790 = !DILocation(line: 892, column: 16, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2770, file: !272, line: 892, column: 11)
!2792 = !DILocation(line: 892, column: 11, scope: !2770)
!2793 = !DILocation(line: 893, column: 9, scope: !2791)
!2794 = !DILocation(line: 895, column: 32, scope: !2770)
!2795 = !DILocation(line: 895, column: 61, scope: !2770)
!2796 = !DILocation(line: 895, column: 58, scope: !2770)
!2797 = !DILocation(line: 895, column: 66, scope: !2770)
!2798 = !DILocation(line: 895, column: 22, scope: !2770)
!2799 = !DILocation(line: 895, column: 15, scope: !2770)
!2800 = !DILocation(line: 896, column: 11, scope: !2770)
!2801 = !DILocation(line: 897, column: 15, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2770, file: !272, line: 896, column: 11)
!2803 = !{i64 0, i64 8, !2711, i64 8, i64 8, !1178}
!2804 = !DILocation(line: 897, column: 9, scope: !2802)
!2805 = !DILocation(line: 898, column: 20, scope: !2770)
!2806 = !DILocation(line: 898, column: 18, scope: !2770)
!2807 = !DILocation(line: 898, column: 15, scope: !2770)
!2808 = !DILocation(line: 898, column: 38, scope: !2770)
!2809 = !DILocation(line: 898, column: 31, scope: !2770)
!2810 = !DILocation(line: 898, column: 48, scope: !2770)
!2811 = !DILocation(line: 0, scope: !2208, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 898, column: 7, scope: !2770)
!2813 = !DILocation(line: 71, column: 10, scope: !2208, inlinedAt: !2812)
!2814 = !DILocation(line: 899, column: 14, scope: !2770)
!2815 = !DILocation(line: 900, column: 5, scope: !2770)
!2816 = !DILocation(line: 903, column: 19, scope: !2774)
!2817 = !DILocation(line: 903, column: 25, scope: !2774)
!2818 = !DILocation(line: 0, scope: !2774)
!2819 = !DILocation(line: 904, column: 23, scope: !2774)
!2820 = !DILocation(line: 906, column: 26, scope: !2774)
!2821 = !DILocation(line: 906, column: 32, scope: !2774)
!2822 = !DILocation(line: 908, column: 55, scope: !2774)
!2823 = !DILocation(line: 909, column: 46, scope: !2774)
!2824 = !DILocation(line: 910, column: 55, scope: !2774)
!2825 = !DILocation(line: 911, column: 55, scope: !2774)
!2826 = !DILocation(line: 907, column: 20, scope: !2774)
!2827 = !DILocation(line: 913, column: 14, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2774, file: !272, line: 913, column: 9)
!2829 = !DILocation(line: 913, column: 9, scope: !2774)
!2830 = !DILocation(line: 915, column: 35, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !272, line: 914, column: 7)
!2832 = !DILocation(line: 915, column: 20, scope: !2831)
!2833 = !DILocation(line: 916, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !272, line: 916, column: 13)
!2835 = !DILocation(line: 916, column: 13, scope: !2831)
!2836 = !DILocation(line: 917, column: 11, scope: !2834)
!2837 = !DILocation(line: 0, scope: !2675, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 918, column: 27, scope: !2831)
!2839 = !DILocation(line: 218, column: 10, scope: !2675, inlinedAt: !2838)
!2840 = !DILocation(line: 918, column: 19, scope: !2831)
!2841 = !DILocation(line: 919, column: 69, scope: !2831)
!2842 = !DILocation(line: 921, column: 44, scope: !2831)
!2843 = !DILocation(line: 922, column: 44, scope: !2831)
!2844 = !DILocation(line: 919, column: 9, scope: !2831)
!2845 = !DILocation(line: 923, column: 7, scope: !2831)
!2846 = !DILocation(line: 925, column: 11, scope: !2774)
!2847 = !DILocation(line: 926, column: 5, scope: !2774)
!2848 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !272, file: !272, line: 937, type: !2849, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!25, !29, !27, !84}
!2851 = !{!2852, !2853, !2854}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !272, line: 937, type: !29)
!2853 = !DILocalVariable(name: "arg", arg: 2, scope: !2848, file: !272, line: 937, type: !27)
!2854 = !DILocalVariable(name: "argsize", arg: 3, scope: !2848, file: !272, line: 937, type: !84)
!2855 = !DILocation(line: 0, scope: !2848)
!2856 = !DILocation(line: 939, column: 10, scope: !2848)
!2857 = !DILocation(line: 939, column: 3, scope: !2848)
!2858 = distinct !DISubprogram(name: "quotearg", scope: !272, file: !272, line: 943, type: !104, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2859)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !272, line: 943, type: !27)
!2861 = !DILocation(line: 0, scope: !2858)
!2862 = !DILocation(line: 0, scope: !2752, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 945, column: 10, scope: !2858)
!2864 = !DILocation(line: 933, column: 10, scope: !2752, inlinedAt: !2863)
!2865 = !DILocation(line: 945, column: 3, scope: !2858)
!2866 = distinct !DISubprogram(name: "quotearg_mem", scope: !272, file: !272, line: 949, type: !2867, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!25, !27, !84}
!2869 = !{!2870, !2871}
!2870 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !272, line: 949, type: !27)
!2871 = !DILocalVariable(name: "argsize", arg: 2, scope: !2866, file: !272, line: 949, type: !84)
!2872 = !DILocation(line: 0, scope: !2866)
!2873 = !DILocation(line: 0, scope: !2848, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 951, column: 10, scope: !2866)
!2875 = !DILocation(line: 939, column: 10, scope: !2848, inlinedAt: !2874)
!2876 = !DILocation(line: 951, column: 3, scope: !2866)
!2877 = distinct !DISubprogram(name: "quotearg_n_style", scope: !272, file: !272, line: 955, type: !2878, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!25, !29, !5, !27}
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2877, file: !272, line: 955, type: !29)
!2882 = !DILocalVariable(name: "s", arg: 2, scope: !2877, file: !272, line: 955, type: !5)
!2883 = !DILocalVariable(name: "arg", arg: 3, scope: !2877, file: !272, line: 955, type: !27)
!2884 = !DILocalVariable(name: "o", scope: !2877, file: !272, line: 957, type: !306)
!2885 = !DILocation(line: 0, scope: !2877)
!2886 = !DILocation(line: 957, column: 3, scope: !2877)
!2887 = !DILocation(line: 957, column: 32, scope: !2877)
!2888 = !DILocalVariable(name: "style", arg: 1, scope: !2889, file: !272, line: 193, type: !5)
!2889 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !272, file: !272, line: 193, type: !2890, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!307, !5}
!2892 = !{!2888, !2893}
!2893 = !DILocalVariable(name: "o", scope: !2889, file: !272, line: 195, type: !307)
!2894 = !DILocation(line: 0, scope: !2889, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 957, column: 36, scope: !2877)
!2896 = !DILocation(line: 195, column: 26, scope: !2889, inlinedAt: !2895)
!2897 = !{!2898}
!2898 = distinct !{!2898, !2899, !"quoting_options_from_style: argument 0"}
!2899 = distinct !{!2899, !"quoting_options_from_style"}
!2900 = !DILocation(line: 196, column: 13, scope: !2901, inlinedAt: !2895)
!2901 = distinct !DILexicalBlock(scope: !2889, file: !272, line: 196, column: 7)
!2902 = !DILocation(line: 196, column: 7, scope: !2889, inlinedAt: !2895)
!2903 = !DILocation(line: 197, column: 5, scope: !2901, inlinedAt: !2895)
!2904 = !DILocation(line: 198, column: 5, scope: !2889, inlinedAt: !2895)
!2905 = !DILocation(line: 198, column: 11, scope: !2889, inlinedAt: !2895)
!2906 = !DILocation(line: 958, column: 10, scope: !2877)
!2907 = !DILocation(line: 959, column: 1, scope: !2877)
!2908 = !DILocation(line: 958, column: 3, scope: !2877)
!2909 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !272, file: !272, line: 962, type: !2910, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!25, !29, !5, !27, !84}
!2912 = !{!2913, !2914, !2915, !2916, !2917}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !272, line: 962, type: !29)
!2914 = !DILocalVariable(name: "s", arg: 2, scope: !2909, file: !272, line: 962, type: !5)
!2915 = !DILocalVariable(name: "arg", arg: 3, scope: !2909, file: !272, line: 963, type: !27)
!2916 = !DILocalVariable(name: "argsize", arg: 4, scope: !2909, file: !272, line: 963, type: !84)
!2917 = !DILocalVariable(name: "o", scope: !2909, file: !272, line: 965, type: !306)
!2918 = !DILocation(line: 0, scope: !2909)
!2919 = !DILocation(line: 965, column: 3, scope: !2909)
!2920 = !DILocation(line: 965, column: 32, scope: !2909)
!2921 = !DILocation(line: 0, scope: !2889, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 965, column: 36, scope: !2909)
!2923 = !DILocation(line: 195, column: 26, scope: !2889, inlinedAt: !2922)
!2924 = !{!2925}
!2925 = distinct !{!2925, !2926, !"quoting_options_from_style: argument 0"}
!2926 = distinct !{!2926, !"quoting_options_from_style"}
!2927 = !DILocation(line: 196, column: 13, scope: !2901, inlinedAt: !2922)
!2928 = !DILocation(line: 196, column: 7, scope: !2889, inlinedAt: !2922)
!2929 = !DILocation(line: 197, column: 5, scope: !2901, inlinedAt: !2922)
!2930 = !DILocation(line: 198, column: 5, scope: !2889, inlinedAt: !2922)
!2931 = !DILocation(line: 198, column: 11, scope: !2889, inlinedAt: !2922)
!2932 = !DILocation(line: 966, column: 10, scope: !2909)
!2933 = !DILocation(line: 967, column: 1, scope: !2909)
!2934 = !DILocation(line: 966, column: 3, scope: !2909)
!2935 = distinct !DISubprogram(name: "quotearg_style", scope: !272, file: !272, line: 970, type: !164, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2936)
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "s", arg: 1, scope: !2935, file: !272, line: 970, type: !5)
!2938 = !DILocalVariable(name: "arg", arg: 2, scope: !2935, file: !272, line: 970, type: !27)
!2939 = !DILocation(line: 195, column: 26, scope: !2889, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 957, column: 36, scope: !2877, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 972, column: 10, scope: !2935)
!2942 = !DILocation(line: 957, column: 32, scope: !2877, inlinedAt: !2941)
!2943 = !DILocation(line: 0, scope: !2935)
!2944 = !DILocation(line: 0, scope: !2877, inlinedAt: !2941)
!2945 = !DILocation(line: 957, column: 3, scope: !2877, inlinedAt: !2941)
!2946 = !DILocation(line: 0, scope: !2889, inlinedAt: !2940)
!2947 = !{!2948}
!2948 = distinct !{!2948, !2949, !"quoting_options_from_style: argument 0"}
!2949 = distinct !{!2949, !"quoting_options_from_style"}
!2950 = !DILocation(line: 196, column: 13, scope: !2901, inlinedAt: !2940)
!2951 = !DILocation(line: 196, column: 7, scope: !2889, inlinedAt: !2940)
!2952 = !DILocation(line: 197, column: 5, scope: !2901, inlinedAt: !2940)
!2953 = !DILocation(line: 198, column: 5, scope: !2889, inlinedAt: !2940)
!2954 = !DILocation(line: 198, column: 11, scope: !2889, inlinedAt: !2940)
!2955 = !DILocation(line: 958, column: 10, scope: !2877, inlinedAt: !2941)
!2956 = !DILocation(line: 959, column: 1, scope: !2877, inlinedAt: !2941)
!2957 = !DILocation(line: 972, column: 3, scope: !2935)
!2958 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !272, file: !272, line: 976, type: !2959, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!25, !5, !27, !84}
!2961 = !{!2962, !2963, !2964}
!2962 = !DILocalVariable(name: "s", arg: 1, scope: !2958, file: !272, line: 976, type: !5)
!2963 = !DILocalVariable(name: "arg", arg: 2, scope: !2958, file: !272, line: 976, type: !27)
!2964 = !DILocalVariable(name: "argsize", arg: 3, scope: !2958, file: !272, line: 976, type: !84)
!2965 = !DILocation(line: 195, column: 26, scope: !2889, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 965, column: 36, scope: !2909, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 978, column: 10, scope: !2958)
!2968 = !DILocation(line: 965, column: 32, scope: !2909, inlinedAt: !2967)
!2969 = !DILocation(line: 0, scope: !2958)
!2970 = !DILocation(line: 0, scope: !2909, inlinedAt: !2967)
!2971 = !DILocation(line: 965, column: 3, scope: !2909, inlinedAt: !2967)
!2972 = !DILocation(line: 0, scope: !2889, inlinedAt: !2966)
!2973 = !{!2974}
!2974 = distinct !{!2974, !2975, !"quoting_options_from_style: argument 0"}
!2975 = distinct !{!2975, !"quoting_options_from_style"}
!2976 = !DILocation(line: 196, column: 13, scope: !2901, inlinedAt: !2966)
!2977 = !DILocation(line: 196, column: 7, scope: !2889, inlinedAt: !2966)
!2978 = !DILocation(line: 197, column: 5, scope: !2901, inlinedAt: !2966)
!2979 = !DILocation(line: 198, column: 5, scope: !2889, inlinedAt: !2966)
!2980 = !DILocation(line: 198, column: 11, scope: !2889, inlinedAt: !2966)
!2981 = !DILocation(line: 966, column: 10, scope: !2909, inlinedAt: !2967)
!2982 = !DILocation(line: 967, column: 1, scope: !2909, inlinedAt: !2967)
!2983 = !DILocation(line: 978, column: 3, scope: !2958)
!2984 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !272, file: !272, line: 982, type: !2985, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!25, !27, !84, !26}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "arg", arg: 1, scope: !2984, file: !272, line: 982, type: !27)
!2989 = !DILocalVariable(name: "argsize", arg: 2, scope: !2984, file: !272, line: 982, type: !84)
!2990 = !DILocalVariable(name: "ch", arg: 3, scope: !2984, file: !272, line: 982, type: !26)
!2991 = !DILocalVariable(name: "options", scope: !2984, file: !272, line: 984, type: !307)
!2992 = !DILocation(line: 0, scope: !2984)
!2993 = !DILocation(line: 984, column: 3, scope: !2984)
!2994 = !DILocation(line: 984, column: 26, scope: !2984)
!2995 = !DILocation(line: 985, column: 13, scope: !2984)
!2996 = !{i64 0, i64 4, !1422, i64 4, i64 4, !1272, i64 8, i64 32, !1422, i64 40, i64 8, !1178, i64 48, i64 8, !1178}
!2997 = !DILocation(line: 0, scope: !1821, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 986, column: 3, scope: !2984)
!2999 = !DILocation(line: 156, column: 62, scope: !1821, inlinedAt: !2998)
!3000 = !DILocation(line: 156, column: 57, scope: !1821, inlinedAt: !2998)
!3001 = !DILocation(line: 157, column: 15, scope: !1821, inlinedAt: !2998)
!3002 = !DILocation(line: 158, column: 12, scope: !1821, inlinedAt: !2998)
!3003 = !DILocation(line: 158, column: 15, scope: !1821, inlinedAt: !2998)
!3004 = !DILocation(line: 158, column: 25, scope: !1821, inlinedAt: !2998)
!3005 = !DILocation(line: 159, column: 18, scope: !1821, inlinedAt: !2998)
!3006 = !DILocation(line: 159, column: 23, scope: !1821, inlinedAt: !2998)
!3007 = !DILocation(line: 159, column: 6, scope: !1821, inlinedAt: !2998)
!3008 = !DILocation(line: 987, column: 10, scope: !2984)
!3009 = !DILocation(line: 988, column: 1, scope: !2984)
!3010 = !DILocation(line: 987, column: 3, scope: !2984)
!3011 = distinct !DISubprogram(name: "quotearg_char", scope: !272, file: !272, line: 991, type: !3012, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!25, !27, !26}
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "arg", arg: 1, scope: !3011, file: !272, line: 991, type: !27)
!3016 = !DILocalVariable(name: "ch", arg: 2, scope: !3011, file: !272, line: 991, type: !26)
!3017 = !DILocation(line: 984, column: 26, scope: !2984, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 993, column: 10, scope: !3011)
!3019 = !DILocation(line: 0, scope: !3011)
!3020 = !DILocation(line: 0, scope: !2984, inlinedAt: !3018)
!3021 = !DILocation(line: 984, column: 3, scope: !2984, inlinedAt: !3018)
!3022 = !DILocation(line: 985, column: 13, scope: !2984, inlinedAt: !3018)
!3023 = !DILocation(line: 0, scope: !1821, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 986, column: 3, scope: !2984, inlinedAt: !3018)
!3025 = !DILocation(line: 156, column: 62, scope: !1821, inlinedAt: !3024)
!3026 = !DILocation(line: 156, column: 57, scope: !1821, inlinedAt: !3024)
!3027 = !DILocation(line: 157, column: 15, scope: !1821, inlinedAt: !3024)
!3028 = !DILocation(line: 158, column: 12, scope: !1821, inlinedAt: !3024)
!3029 = !DILocation(line: 158, column: 15, scope: !1821, inlinedAt: !3024)
!3030 = !DILocation(line: 158, column: 25, scope: !1821, inlinedAt: !3024)
!3031 = !DILocation(line: 159, column: 18, scope: !1821, inlinedAt: !3024)
!3032 = !DILocation(line: 159, column: 23, scope: !1821, inlinedAt: !3024)
!3033 = !DILocation(line: 159, column: 6, scope: !1821, inlinedAt: !3024)
!3034 = !DILocation(line: 987, column: 10, scope: !2984, inlinedAt: !3018)
!3035 = !DILocation(line: 988, column: 1, scope: !2984, inlinedAt: !3018)
!3036 = !DILocation(line: 993, column: 3, scope: !3011)
!3037 = distinct !DISubprogram(name: "quotearg_colon", scope: !272, file: !272, line: 997, type: !104, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3038)
!3038 = !{!3039}
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3037, file: !272, line: 997, type: !27)
!3040 = !DILocation(line: 984, column: 26, scope: !2984, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 993, column: 10, scope: !3011, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 999, column: 10, scope: !3037)
!3043 = !DILocation(line: 0, scope: !3037)
!3044 = !DILocation(line: 0, scope: !3011, inlinedAt: !3042)
!3045 = !DILocation(line: 0, scope: !2984, inlinedAt: !3041)
!3046 = !DILocation(line: 984, column: 3, scope: !2984, inlinedAt: !3041)
!3047 = !DILocation(line: 985, column: 13, scope: !2984, inlinedAt: !3041)
!3048 = !DILocation(line: 0, scope: !1821, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 986, column: 3, scope: !2984, inlinedAt: !3041)
!3050 = !DILocation(line: 156, column: 57, scope: !1821, inlinedAt: !3049)
!3051 = !DILocation(line: 158, column: 12, scope: !1821, inlinedAt: !3049)
!3052 = !DILocation(line: 159, column: 6, scope: !1821, inlinedAt: !3049)
!3053 = !DILocation(line: 987, column: 10, scope: !2984, inlinedAt: !3041)
!3054 = !DILocation(line: 988, column: 1, scope: !2984, inlinedAt: !3041)
!3055 = !DILocation(line: 999, column: 3, scope: !3037)
!3056 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !272, file: !272, line: 1003, type: !2867, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3057)
!3057 = !{!3058, !3059}
!3058 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !272, line: 1003, type: !27)
!3059 = !DILocalVariable(name: "argsize", arg: 2, scope: !3056, file: !272, line: 1003, type: !84)
!3060 = !DILocation(line: 984, column: 26, scope: !2984, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 1005, column: 10, scope: !3056)
!3062 = !DILocation(line: 0, scope: !3056)
!3063 = !DILocation(line: 0, scope: !2984, inlinedAt: !3061)
!3064 = !DILocation(line: 984, column: 3, scope: !2984, inlinedAt: !3061)
!3065 = !DILocation(line: 985, column: 13, scope: !2984, inlinedAt: !3061)
!3066 = !DILocation(line: 0, scope: !1821, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 986, column: 3, scope: !2984, inlinedAt: !3061)
!3068 = !DILocation(line: 156, column: 57, scope: !1821, inlinedAt: !3067)
!3069 = !DILocation(line: 158, column: 12, scope: !1821, inlinedAt: !3067)
!3070 = !DILocation(line: 159, column: 6, scope: !1821, inlinedAt: !3067)
!3071 = !DILocation(line: 987, column: 10, scope: !2984, inlinedAt: !3061)
!3072 = !DILocation(line: 988, column: 1, scope: !2984, inlinedAt: !3061)
!3073 = !DILocation(line: 1005, column: 3, scope: !3056)
!3074 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !272, file: !272, line: 1009, type: !2878, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3075)
!3075 = !{!3076, !3077, !3078, !3079}
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !272, line: 1009, type: !29)
!3077 = !DILocalVariable(name: "s", arg: 2, scope: !3074, file: !272, line: 1009, type: !5)
!3078 = !DILocalVariable(name: "arg", arg: 3, scope: !3074, file: !272, line: 1009, type: !27)
!3079 = !DILocalVariable(name: "options", scope: !3074, file: !272, line: 1011, type: !307)
!3080 = !DILocation(line: 195, column: 26, scope: !2889, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1012, column: 13, scope: !3074)
!3082 = !DILocation(line: 0, scope: !3074)
!3083 = !DILocation(line: 1011, column: 3, scope: !3074)
!3084 = !DILocation(line: 1011, column: 26, scope: !3074)
!3085 = !DILocation(line: 1012, column: 13, scope: !3074)
!3086 = !DILocation(line: 0, scope: !2889, inlinedAt: !3081)
!3087 = !{!3088}
!3088 = distinct !{!3088, !3089, !"quoting_options_from_style: argument 0"}
!3089 = distinct !{!3089, !"quoting_options_from_style"}
!3090 = !DILocation(line: 196, column: 13, scope: !2901, inlinedAt: !3081)
!3091 = !DILocation(line: 196, column: 7, scope: !2889, inlinedAt: !3081)
!3092 = !DILocation(line: 197, column: 5, scope: !2901, inlinedAt: !3081)
!3093 = !DILocation(line: 0, scope: !1821, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1013, column: 3, scope: !3074)
!3095 = !DILocation(line: 156, column: 57, scope: !1821, inlinedAt: !3094)
!3096 = !DILocation(line: 158, column: 12, scope: !1821, inlinedAt: !3094)
!3097 = !DILocation(line: 159, column: 6, scope: !1821, inlinedAt: !3094)
!3098 = !DILocation(line: 1014, column: 10, scope: !3074)
!3099 = !DILocation(line: 1015, column: 1, scope: !3074)
!3100 = !DILocation(line: 1014, column: 3, scope: !3074)
!3101 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !272, file: !272, line: 1018, type: !3102, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!25, !29, !27, !27, !27}
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !272, line: 1018, type: !29)
!3106 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3101, file: !272, line: 1018, type: !27)
!3107 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3101, file: !272, line: 1019, type: !27)
!3108 = !DILocalVariable(name: "arg", arg: 4, scope: !3101, file: !272, line: 1019, type: !27)
!3109 = !DILocalVariable(name: "o", scope: !3110, file: !272, line: 1030, type: !307)
!3110 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !272, file: !272, line: 1026, type: !3111, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!25, !29, !27, !27, !27, !84}
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3109}
!3114 = !DILocalVariable(name: "n", arg: 1, scope: !3110, file: !272, line: 1026, type: !29)
!3115 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3110, file: !272, line: 1026, type: !27)
!3116 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3110, file: !272, line: 1027, type: !27)
!3117 = !DILocalVariable(name: "arg", arg: 4, scope: !3110, file: !272, line: 1028, type: !27)
!3118 = !DILocalVariable(name: "argsize", arg: 5, scope: !3110, file: !272, line: 1028, type: !84)
!3119 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1021, column: 10, scope: !3101)
!3121 = !DILocation(line: 0, scope: !3101)
!3122 = !DILocation(line: 0, scope: !3110, inlinedAt: !3120)
!3123 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3120)
!3124 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3120)
!3125 = !DILocation(line: 0, scope: !1861, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3120)
!3127 = !DILocation(line: 184, column: 6, scope: !1861, inlinedAt: !3126)
!3128 = !DILocation(line: 184, column: 12, scope: !1861, inlinedAt: !3126)
!3129 = !DILocation(line: 185, column: 8, scope: !1875, inlinedAt: !3126)
!3130 = !DILocation(line: 185, column: 23, scope: !1875, inlinedAt: !3126)
!3131 = !DILocation(line: 185, column: 19, scope: !1875, inlinedAt: !3126)
!3132 = !DILocation(line: 186, column: 5, scope: !1875, inlinedAt: !3126)
!3133 = !DILocation(line: 187, column: 6, scope: !1861, inlinedAt: !3126)
!3134 = !DILocation(line: 187, column: 17, scope: !1861, inlinedAt: !3126)
!3135 = !DILocation(line: 188, column: 6, scope: !1861, inlinedAt: !3126)
!3136 = !DILocation(line: 188, column: 18, scope: !1861, inlinedAt: !3126)
!3137 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3120)
!3138 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3120)
!3139 = !DILocation(line: 1021, column: 3, scope: !3101)
!3140 = !DILocation(line: 0, scope: !3110)
!3141 = !DILocation(line: 1030, column: 3, scope: !3110)
!3142 = !DILocation(line: 1030, column: 26, scope: !3110)
!3143 = !DILocation(line: 1030, column: 30, scope: !3110)
!3144 = !DILocation(line: 0, scope: !1861, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1031, column: 3, scope: !3110)
!3146 = !DILocation(line: 184, column: 6, scope: !1861, inlinedAt: !3145)
!3147 = !DILocation(line: 184, column: 12, scope: !1861, inlinedAt: !3145)
!3148 = !DILocation(line: 185, column: 8, scope: !1875, inlinedAt: !3145)
!3149 = !DILocation(line: 185, column: 23, scope: !1875, inlinedAt: !3145)
!3150 = !DILocation(line: 185, column: 19, scope: !1875, inlinedAt: !3145)
!3151 = !DILocation(line: 186, column: 5, scope: !1875, inlinedAt: !3145)
!3152 = !DILocation(line: 187, column: 6, scope: !1861, inlinedAt: !3145)
!3153 = !DILocation(line: 187, column: 17, scope: !1861, inlinedAt: !3145)
!3154 = !DILocation(line: 188, column: 6, scope: !1861, inlinedAt: !3145)
!3155 = !DILocation(line: 188, column: 18, scope: !1861, inlinedAt: !3145)
!3156 = !DILocation(line: 1032, column: 10, scope: !3110)
!3157 = !DILocation(line: 1033, column: 1, scope: !3110)
!3158 = !DILocation(line: 1032, column: 3, scope: !3110)
!3159 = distinct !DISubprogram(name: "quotearg_custom", scope: !272, file: !272, line: 1036, type: !3160, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!25, !27, !27, !27}
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3159, file: !272, line: 1036, type: !27)
!3164 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3159, file: !272, line: 1036, type: !27)
!3165 = !DILocalVariable(name: "arg", arg: 3, scope: !3159, file: !272, line: 1037, type: !27)
!3166 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 1021, column: 10, scope: !3101, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1039, column: 10, scope: !3159)
!3169 = !DILocation(line: 0, scope: !3159)
!3170 = !DILocation(line: 0, scope: !3101, inlinedAt: !3168)
!3171 = !DILocation(line: 0, scope: !3110, inlinedAt: !3167)
!3172 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3167)
!3173 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3167)
!3174 = !DILocation(line: 0, scope: !1861, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3167)
!3176 = !DILocation(line: 184, column: 6, scope: !1861, inlinedAt: !3175)
!3177 = !DILocation(line: 184, column: 12, scope: !1861, inlinedAt: !3175)
!3178 = !DILocation(line: 185, column: 8, scope: !1875, inlinedAt: !3175)
!3179 = !DILocation(line: 185, column: 23, scope: !1875, inlinedAt: !3175)
!3180 = !DILocation(line: 185, column: 19, scope: !1875, inlinedAt: !3175)
!3181 = !DILocation(line: 186, column: 5, scope: !1875, inlinedAt: !3175)
!3182 = !DILocation(line: 187, column: 6, scope: !1861, inlinedAt: !3175)
!3183 = !DILocation(line: 187, column: 17, scope: !1861, inlinedAt: !3175)
!3184 = !DILocation(line: 188, column: 6, scope: !1861, inlinedAt: !3175)
!3185 = !DILocation(line: 188, column: 18, scope: !1861, inlinedAt: !3175)
!3186 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3167)
!3187 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3167)
!3188 = !DILocation(line: 1039, column: 3, scope: !3159)
!3189 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !272, file: !272, line: 1043, type: !3190, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!25, !27, !27, !27, !84}
!3192 = !{!3193, !3194, !3195, !3196}
!3193 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3189, file: !272, line: 1043, type: !27)
!3194 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3189, file: !272, line: 1043, type: !27)
!3195 = !DILocalVariable(name: "arg", arg: 3, scope: !3189, file: !272, line: 1044, type: !27)
!3196 = !DILocalVariable(name: "argsize", arg: 4, scope: !3189, file: !272, line: 1044, type: !84)
!3197 = !DILocation(line: 1030, column: 26, scope: !3110, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1046, column: 10, scope: !3189)
!3199 = !DILocation(line: 0, scope: !3189)
!3200 = !DILocation(line: 0, scope: !3110, inlinedAt: !3198)
!3201 = !DILocation(line: 1030, column: 3, scope: !3110, inlinedAt: !3198)
!3202 = !DILocation(line: 1030, column: 30, scope: !3110, inlinedAt: !3198)
!3203 = !DILocation(line: 0, scope: !1861, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 1031, column: 3, scope: !3110, inlinedAt: !3198)
!3205 = !DILocation(line: 184, column: 6, scope: !1861, inlinedAt: !3204)
!3206 = !DILocation(line: 184, column: 12, scope: !1861, inlinedAt: !3204)
!3207 = !DILocation(line: 185, column: 8, scope: !1875, inlinedAt: !3204)
!3208 = !DILocation(line: 185, column: 23, scope: !1875, inlinedAt: !3204)
!3209 = !DILocation(line: 185, column: 19, scope: !1875, inlinedAt: !3204)
!3210 = !DILocation(line: 186, column: 5, scope: !1875, inlinedAt: !3204)
!3211 = !DILocation(line: 187, column: 6, scope: !1861, inlinedAt: !3204)
!3212 = !DILocation(line: 187, column: 17, scope: !1861, inlinedAt: !3204)
!3213 = !DILocation(line: 188, column: 6, scope: !1861, inlinedAt: !3204)
!3214 = !DILocation(line: 188, column: 18, scope: !1861, inlinedAt: !3204)
!3215 = !DILocation(line: 1032, column: 10, scope: !3110, inlinedAt: !3198)
!3216 = !DILocation(line: 1033, column: 1, scope: !3110, inlinedAt: !3198)
!3217 = !DILocation(line: 1046, column: 3, scope: !3189)
!3218 = distinct !DISubprogram(name: "quote_n_mem", scope: !272, file: !272, line: 1061, type: !3219, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!27, !29, !27, !84}
!3221 = !{!3222, !3223, !3224}
!3222 = !DILocalVariable(name: "n", arg: 1, scope: !3218, file: !272, line: 1061, type: !29)
!3223 = !DILocalVariable(name: "arg", arg: 2, scope: !3218, file: !272, line: 1061, type: !27)
!3224 = !DILocalVariable(name: "argsize", arg: 3, scope: !3218, file: !272, line: 1061, type: !84)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocation(line: 1063, column: 10, scope: !3218)
!3227 = !DILocation(line: 1063, column: 3, scope: !3218)
!3228 = distinct !DISubprogram(name: "quote_mem", scope: !272, file: !272, line: 1067, type: !3229, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!27, !27, !84}
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "arg", arg: 1, scope: !3228, file: !272, line: 1067, type: !27)
!3233 = !DILocalVariable(name: "argsize", arg: 2, scope: !3228, file: !272, line: 1067, type: !84)
!3234 = !DILocation(line: 0, scope: !3228)
!3235 = !DILocation(line: 0, scope: !3218, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 1069, column: 10, scope: !3228)
!3237 = !DILocation(line: 1063, column: 10, scope: !3218, inlinedAt: !3236)
!3238 = !DILocation(line: 1069, column: 3, scope: !3228)
!3239 = distinct !DISubprogram(name: "quote_n", scope: !272, file: !272, line: 1073, type: !3240, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!27, !29, !27}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "n", arg: 1, scope: !3239, file: !272, line: 1073, type: !29)
!3244 = !DILocalVariable(name: "arg", arg: 2, scope: !3239, file: !272, line: 1073, type: !27)
!3245 = !DILocation(line: 0, scope: !3239)
!3246 = !DILocation(line: 0, scope: !3218, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 1075, column: 10, scope: !3239)
!3248 = !DILocation(line: 1063, column: 10, scope: !3218, inlinedAt: !3247)
!3249 = !DILocation(line: 1075, column: 3, scope: !3239)
!3250 = distinct !DISubprogram(name: "quote", scope: !272, file: !272, line: 1079, type: !138, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3251)
!3251 = !{!3252}
!3252 = !DILocalVariable(name: "arg", arg: 1, scope: !3250, file: !272, line: 1079, type: !27)
!3253 = !DILocation(line: 0, scope: !3250)
!3254 = !DILocation(line: 0, scope: !3239, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1081, column: 10, scope: !3250)
!3256 = !DILocation(line: 0, scope: !3218, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1075, column: 10, scope: !3239, inlinedAt: !3255)
!3258 = !DILocation(line: 1063, column: 10, scope: !3218, inlinedAt: !3257)
!3259 = !DILocation(line: 1081, column: 3, scope: !3250)
!3260 = distinct !DISubprogram(name: "version_etc_arn", scope: !487, file: !487, line: 61, type: !3261, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3267)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !3263, !27, !27, !27, !3266, !84}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3265, line: 7, baseType: !497)
!3265 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273}
!3268 = !DILocalVariable(name: "stream", arg: 1, scope: !3260, file: !487, line: 61, type: !3263)
!3269 = !DILocalVariable(name: "command_name", arg: 2, scope: !3260, file: !487, line: 62, type: !27)
!3270 = !DILocalVariable(name: "package", arg: 3, scope: !3260, file: !487, line: 62, type: !27)
!3271 = !DILocalVariable(name: "version", arg: 4, scope: !3260, file: !487, line: 63, type: !27)
!3272 = !DILocalVariable(name: "authors", arg: 5, scope: !3260, file: !487, line: 64, type: !3266)
!3273 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3260, file: !487, line: 64, type: !84)
!3274 = !DILocation(line: 0, scope: !3260)
!3275 = !DILocation(line: 66, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3260, file: !487, line: 66, column: 7)
!3277 = !DILocation(line: 66, column: 7, scope: !3260)
!3278 = !DILocation(line: 67, column: 5, scope: !3276)
!3279 = !DILocation(line: 69, column: 5, scope: !3276)
!3280 = !DILocation(line: 83, column: 3, scope: !3260)
!3281 = !DILocation(line: 85, column: 3, scope: !3260)
!3282 = !DILocation(line: 88, column: 3, scope: !3260)
!3283 = !DILocation(line: 95, column: 3, scope: !3260)
!3284 = !DILocation(line: 97, column: 3, scope: !3260)
!3285 = !DILocation(line: 105, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3260, file: !487, line: 98, column: 5)
!3287 = !DILocation(line: 106, column: 7, scope: !3286)
!3288 = !DILocation(line: 109, column: 7, scope: !3286)
!3289 = !DILocation(line: 110, column: 7, scope: !3286)
!3290 = !DILocation(line: 113, column: 7, scope: !3286)
!3291 = !DILocation(line: 115, column: 7, scope: !3286)
!3292 = !DILocation(line: 120, column: 7, scope: !3286)
!3293 = !DILocation(line: 122, column: 7, scope: !3286)
!3294 = !DILocation(line: 127, column: 7, scope: !3286)
!3295 = !DILocation(line: 129, column: 7, scope: !3286)
!3296 = !DILocation(line: 134, column: 7, scope: !3286)
!3297 = !DILocation(line: 137, column: 7, scope: !3286)
!3298 = !DILocation(line: 142, column: 7, scope: !3286)
!3299 = !DILocation(line: 145, column: 7, scope: !3286)
!3300 = !DILocation(line: 150, column: 7, scope: !3286)
!3301 = !DILocation(line: 154, column: 7, scope: !3286)
!3302 = !DILocation(line: 159, column: 7, scope: !3286)
!3303 = !DILocation(line: 163, column: 7, scope: !3286)
!3304 = !DILocation(line: 170, column: 7, scope: !3286)
!3305 = !DILocation(line: 174, column: 7, scope: !3286)
!3306 = !DILocation(line: 176, column: 1, scope: !3260)
!3307 = distinct !DISubprogram(name: "version_etc_ar", scope: !487, file: !487, line: 183, type: !3308, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3263, !27, !27, !27, !3266}
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316}
!3311 = !DILocalVariable(name: "stream", arg: 1, scope: !3307, file: !487, line: 183, type: !3263)
!3312 = !DILocalVariable(name: "command_name", arg: 2, scope: !3307, file: !487, line: 184, type: !27)
!3313 = !DILocalVariable(name: "package", arg: 3, scope: !3307, file: !487, line: 184, type: !27)
!3314 = !DILocalVariable(name: "version", arg: 4, scope: !3307, file: !487, line: 185, type: !27)
!3315 = !DILocalVariable(name: "authors", arg: 5, scope: !3307, file: !487, line: 185, type: !3266)
!3316 = !DILocalVariable(name: "n_authors", scope: !3307, file: !487, line: 187, type: !84)
!3317 = !DILocation(line: 0, scope: !3307)
!3318 = !DILocation(line: 189, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3307, file: !487, line: 189, column: 3)
!3320 = !DILocation(line: 0, scope: !3319)
!3321 = !DILocation(line: 189, column: 23, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !487, line: 189, column: 3)
!3323 = !DILocation(line: 189, column: 3, scope: !3319)
!3324 = !DILocation(line: 189, column: 52, scope: !3322)
!3325 = distinct !{!3325, !3323, !3326}
!3326 = !DILocation(line: 190, column: 5, scope: !3319)
!3327 = !DILocation(line: 191, column: 3, scope: !3307)
!3328 = !DILocation(line: 192, column: 1, scope: !3307)
!3329 = distinct !DISubprogram(name: "version_etc_va", scope: !487, file: !487, line: 199, type: !3330, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3339)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3263, !27, !27, !27, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !487, line: 192, size: 192, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3333, file: !487, line: 192, baseType: !7, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3333, file: !487, line: 192, baseType: !7, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3333, file: !487, line: 192, baseType: !82, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3333, file: !487, line: 192, baseType: !82, size: 64, offset: 128)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3340 = !DILocalVariable(name: "stream", arg: 1, scope: !3329, file: !487, line: 199, type: !3263)
!3341 = !DILocalVariable(name: "command_name", arg: 2, scope: !3329, file: !487, line: 200, type: !27)
!3342 = !DILocalVariable(name: "package", arg: 3, scope: !3329, file: !487, line: 200, type: !27)
!3343 = !DILocalVariable(name: "version", arg: 4, scope: !3329, file: !487, line: 201, type: !27)
!3344 = !DILocalVariable(name: "authors", arg: 5, scope: !3329, file: !487, line: 201, type: !3332)
!3345 = !DILocalVariable(name: "n_authors", scope: !3329, file: !487, line: 203, type: !84)
!3346 = !DILocalVariable(name: "authtab", scope: !3329, file: !487, line: 204, type: !3347)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 640, elements: !367)
!3348 = !DILocation(line: 0, scope: !3329)
!3349 = !DILocation(line: 204, column: 3, scope: !3329)
!3350 = !DILocation(line: 204, column: 15, scope: !3329)
!3351 = !DILocation(line: 0, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !487, line: 206, column: 3)
!3353 = distinct !DILexicalBlock(scope: !3329, file: !487, line: 206, column: 3)
!3354 = !DILocation(line: 208, column: 35, scope: !3352)
!3355 = !DILocation(line: 208, column: 14, scope: !3352)
!3356 = !DILocation(line: 208, column: 33, scope: !3352)
!3357 = !DILocation(line: 208, column: 67, scope: !3352)
!3358 = !DILocation(line: 206, column: 3, scope: !3353)
!3359 = !DILocation(line: 0, scope: !3353)
!3360 = !DILocation(line: 211, column: 3, scope: !3329)
!3361 = !DILocation(line: 213, column: 1, scope: !3329)
!3362 = distinct !DISubprogram(name: "version_etc", scope: !487, file: !487, line: 230, type: !3363, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3263, !27, !27, !27, null}
!3365 = !{!3366, !3367, !3368, !3369, !3370}
!3366 = !DILocalVariable(name: "stream", arg: 1, scope: !3362, file: !487, line: 230, type: !3263)
!3367 = !DILocalVariable(name: "command_name", arg: 2, scope: !3362, file: !487, line: 231, type: !27)
!3368 = !DILocalVariable(name: "package", arg: 3, scope: !3362, file: !487, line: 231, type: !27)
!3369 = !DILocalVariable(name: "version", arg: 4, scope: !3362, file: !487, line: 232, type: !27)
!3370 = !DILocalVariable(name: "authors", scope: !3362, file: !487, line: 234, type: !3371)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 52, baseType: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3373, line: 32, baseType: !3374)
!3373 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !487, line: 234, baseType: !3375)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3333, size: 192, elements: !67)
!3376 = !DILocation(line: 0, scope: !3362)
!3377 = !DILocation(line: 234, column: 3, scope: !3362)
!3378 = !DILocation(line: 234, column: 11, scope: !3362)
!3379 = !DILocation(line: 236, column: 3, scope: !3362)
!3380 = !DILocation(line: 237, column: 3, scope: !3362)
!3381 = !DILocation(line: 238, column: 3, scope: !3362)
!3382 = !DILocation(line: 239, column: 1, scope: !3362)
!3383 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !487, file: !487, line: 242, type: !111, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !30)
!3384 = !DILocation(line: 244, column: 3, scope: !3383)
!3385 = !DILocation(line: 249, column: 3, scope: !3383)
!3386 = !DILocation(line: 255, column: 3, scope: !3383)
!3387 = !DILocation(line: 260, column: 3, scope: !3383)
!3388 = !DILocation(line: 262, column: 1, scope: !3383)
!3389 = distinct !DISubprogram(name: "xnmalloc", scope: !296, file: !296, line: 99, type: !1487, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3390)
!3390 = !{!3391, !3392}
!3391 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !296, line: 99, type: !84)
!3392 = !DILocalVariable(name: "s", arg: 2, scope: !3389, file: !296, line: 99, type: !84)
!3393 = !DILocation(line: 0, scope: !3389)
!3394 = !DILocation(line: 101, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3389, file: !296, line: 101, column: 7)
!3396 = !DILocation(line: 101, column: 7, scope: !3389)
!3397 = !DILocation(line: 102, column: 5, scope: !3395)
!3398 = !DILocation(line: 103, column: 21, scope: !3389)
!3399 = !DILocalVariable(name: "n", arg: 1, scope: !3400, file: !529, line: 39, type: !84)
!3400 = distinct !DISubprogram(name: "xmalloc", scope: !529, file: !529, line: 39, type: !3401, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!82, !84}
!3403 = !{!3399, !3404}
!3404 = !DILocalVariable(name: "p", scope: !3400, file: !529, line: 41, type: !82)
!3405 = !DILocation(line: 0, scope: !3400, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 103, column: 10, scope: !3389)
!3407 = !DILocation(line: 41, column: 13, scope: !3400, inlinedAt: !3406)
!3408 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3406)
!3409 = distinct !DILexicalBlock(scope: !3400, file: !529, line: 42, column: 7)
!3410 = !DILocation(line: 42, column: 15, scope: !3409, inlinedAt: !3406)
!3411 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3406)
!3412 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3406)
!3413 = !DILocation(line: 103, column: 3, scope: !3389)
!3414 = !DILocation(line: 0, scope: !3400)
!3415 = !DILocation(line: 41, column: 13, scope: !3400)
!3416 = !DILocation(line: 42, column: 8, scope: !3409)
!3417 = !DILocation(line: 42, column: 15, scope: !3409)
!3418 = !DILocation(line: 42, column: 10, scope: !3409)
!3419 = !DILocation(line: 43, column: 5, scope: !3409)
!3420 = !DILocation(line: 44, column: 3, scope: !3400)
!3421 = distinct !DISubprogram(name: "xnrealloc", scope: !296, file: !296, line: 112, type: !3422, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!82, !82, !84, !84}
!3424 = !{!3425, !3426, !3427}
!3425 = !DILocalVariable(name: "p", arg: 1, scope: !3421, file: !296, line: 112, type: !82)
!3426 = !DILocalVariable(name: "n", arg: 2, scope: !3421, file: !296, line: 112, type: !84)
!3427 = !DILocalVariable(name: "s", arg: 3, scope: !3421, file: !296, line: 112, type: !84)
!3428 = !DILocation(line: 0, scope: !3421)
!3429 = !DILocation(line: 114, column: 7, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3421, file: !296, line: 114, column: 7)
!3431 = !DILocation(line: 114, column: 7, scope: !3421)
!3432 = !DILocation(line: 115, column: 5, scope: !3430)
!3433 = !DILocation(line: 116, column: 25, scope: !3421)
!3434 = !DILocalVariable(name: "p", arg: 1, scope: !3435, file: !529, line: 51, type: !82)
!3435 = distinct !DISubprogram(name: "xrealloc", scope: !529, file: !529, line: 51, type: !3436, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!82, !82, !84}
!3438 = !{!3434, !3439}
!3439 = !DILocalVariable(name: "n", arg: 2, scope: !3435, file: !529, line: 51, type: !84)
!3440 = !DILocation(line: 0, scope: !3435, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 116, column: 10, scope: !3421)
!3442 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3441)
!3443 = distinct !DILexicalBlock(scope: !3435, file: !529, line: 53, column: 7)
!3444 = !DILocation(line: 53, column: 13, scope: !3443, inlinedAt: !3441)
!3445 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3441)
!3446 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3441)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !529, line: 54, column: 5)
!3448 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3441)
!3449 = !DILocation(line: 61, column: 7, scope: !3435, inlinedAt: !3441)
!3450 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3441)
!3451 = distinct !DILexicalBlock(scope: !3435, file: !529, line: 62, column: 7)
!3452 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3441)
!3453 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3441)
!3454 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3441)
!3455 = !DILocation(line: 116, column: 3, scope: !3421)
!3456 = !DILocation(line: 0, scope: !3435)
!3457 = !DILocation(line: 53, column: 8, scope: !3443)
!3458 = !DILocation(line: 53, column: 13, scope: !3443)
!3459 = !DILocation(line: 53, column: 10, scope: !3443)
!3460 = !DILocation(line: 57, column: 7, scope: !3447)
!3461 = !DILocation(line: 58, column: 7, scope: !3447)
!3462 = !DILocation(line: 61, column: 7, scope: !3435)
!3463 = !DILocation(line: 62, column: 8, scope: !3451)
!3464 = !DILocation(line: 62, column: 13, scope: !3451)
!3465 = !DILocation(line: 62, column: 10, scope: !3451)
!3466 = !DILocation(line: 63, column: 5, scope: !3451)
!3467 = !DILocation(line: 65, column: 1, scope: !3435)
!3468 = !DILocation(line: 0, scope: !532)
!3469 = !DILocation(line: 176, column: 14, scope: !532)
!3470 = !DILocation(line: 178, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !532, file: !296, line: 178, column: 7)
!3472 = !DILocation(line: 178, column: 7, scope: !532)
!3473 = !DILocation(line: 180, column: 13, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !296, line: 180, column: 11)
!3475 = distinct !DILexicalBlock(scope: !3471, file: !296, line: 179, column: 5)
!3476 = !DILocation(line: 180, column: 11, scope: !3475)
!3477 = !DILocation(line: 188, column: 30, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !296, line: 181, column: 9)
!3479 = !DILocation(line: 189, column: 16, scope: !3478)
!3480 = !DILocation(line: 189, column: 13, scope: !3478)
!3481 = !DILocation(line: 190, column: 9, scope: !3478)
!3482 = !DILocation(line: 191, column: 11, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3475, file: !296, line: 191, column: 11)
!3484 = !DILocation(line: 191, column: 11, scope: !3475)
!3485 = !DILocation(line: 206, column: 7, scope: !532)
!3486 = !DILocation(line: 207, column: 25, scope: !532)
!3487 = !DILocation(line: 0, scope: !3435, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 207, column: 10, scope: !532)
!3489 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3488)
!3490 = !DILocation(line: 192, column: 9, scope: !3483)
!3491 = !DILocation(line: 200, column: 69, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !296, line: 200, column: 11)
!3493 = distinct !DILexicalBlock(scope: !3471, file: !296, line: 195, column: 5)
!3494 = !DILocation(line: 201, column: 11, scope: !3492)
!3495 = !DILocation(line: 200, column: 11, scope: !3493)
!3496 = !DILocation(line: 202, column: 9, scope: !3492)
!3497 = !DILocation(line: 203, column: 14, scope: !3493)
!3498 = !DILocation(line: 203, column: 18, scope: !3493)
!3499 = !DILocation(line: 203, column: 9, scope: !3493)
!3500 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3488)
!3501 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3488)
!3502 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3488)
!3503 = !DILocation(line: 61, column: 7, scope: !3435, inlinedAt: !3488)
!3504 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3488)
!3505 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3488)
!3506 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3488)
!3507 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3488)
!3508 = !DILocation(line: 207, column: 3, scope: !532)
!3509 = distinct !DISubprogram(name: "xcharalloc", scope: !296, file: !296, line: 216, type: !2676, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3510)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "n", arg: 1, scope: !3509, file: !296, line: 216, type: !84)
!3512 = !DILocation(line: 0, scope: !3509)
!3513 = !DILocation(line: 0, scope: !3400, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 218, column: 10, scope: !3509)
!3515 = !DILocation(line: 41, column: 13, scope: !3400, inlinedAt: !3514)
!3516 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3514)
!3517 = !DILocation(line: 42, column: 15, scope: !3409, inlinedAt: !3514)
!3518 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3514)
!3519 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3514)
!3520 = !DILocation(line: 218, column: 3, scope: !3509)
!3521 = distinct !DISubprogram(name: "x2realloc", scope: !529, file: !529, line: 74, type: !3522, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!82, !82, !535}
!3524 = !{!3525, !3526}
!3525 = !DILocalVariable(name: "p", arg: 1, scope: !3521, file: !529, line: 74, type: !82)
!3526 = !DILocalVariable(name: "pn", arg: 2, scope: !3521, file: !529, line: 74, type: !535)
!3527 = !DILocation(line: 0, scope: !3521)
!3528 = !DILocation(line: 0, scope: !532, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 76, column: 10, scope: !3521)
!3530 = !DILocation(line: 176, column: 14, scope: !532, inlinedAt: !3529)
!3531 = !DILocation(line: 178, column: 9, scope: !3471, inlinedAt: !3529)
!3532 = !DILocation(line: 178, column: 7, scope: !532, inlinedAt: !3529)
!3533 = !DILocation(line: 180, column: 13, scope: !3474, inlinedAt: !3529)
!3534 = !DILocation(line: 180, column: 11, scope: !3475, inlinedAt: !3529)
!3535 = !DILocation(line: 191, column: 11, scope: !3483, inlinedAt: !3529)
!3536 = !DILocation(line: 191, column: 11, scope: !3475, inlinedAt: !3529)
!3537 = !DILocation(line: 206, column: 7, scope: !532, inlinedAt: !3529)
!3538 = !DILocation(line: 0, scope: !3435, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 207, column: 10, scope: !532, inlinedAt: !3529)
!3540 = !DILocation(line: 53, column: 10, scope: !3443, inlinedAt: !3539)
!3541 = !DILocation(line: 192, column: 9, scope: !3483, inlinedAt: !3529)
!3542 = !DILocation(line: 201, column: 11, scope: !3492, inlinedAt: !3529)
!3543 = !DILocation(line: 200, column: 11, scope: !3493, inlinedAt: !3529)
!3544 = !DILocation(line: 202, column: 9, scope: !3492, inlinedAt: !3529)
!3545 = !DILocation(line: 203, column: 14, scope: !3493, inlinedAt: !3529)
!3546 = !DILocation(line: 203, column: 18, scope: !3493, inlinedAt: !3529)
!3547 = !DILocation(line: 203, column: 9, scope: !3493, inlinedAt: !3529)
!3548 = !DILocation(line: 53, column: 8, scope: !3443, inlinedAt: !3539)
!3549 = !DILocation(line: 57, column: 7, scope: !3447, inlinedAt: !3539)
!3550 = !DILocation(line: 58, column: 7, scope: !3447, inlinedAt: !3539)
!3551 = !DILocation(line: 61, column: 7, scope: !3435, inlinedAt: !3539)
!3552 = !DILocation(line: 62, column: 8, scope: !3451, inlinedAt: !3539)
!3553 = !DILocation(line: 62, column: 13, scope: !3451, inlinedAt: !3539)
!3554 = !DILocation(line: 62, column: 10, scope: !3451, inlinedAt: !3539)
!3555 = !DILocation(line: 63, column: 5, scope: !3451, inlinedAt: !3539)
!3556 = !DILocation(line: 76, column: 3, scope: !3521)
!3557 = distinct !DISubprogram(name: "xzalloc", scope: !529, file: !529, line: 84, type: !3401, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3558)
!3558 = !{!3559}
!3559 = !DILocalVariable(name: "n", arg: 1, scope: !3557, file: !529, line: 84, type: !84)
!3560 = !DILocation(line: 0, scope: !3557)
!3561 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !529, line: 93, type: !84)
!3562 = distinct !DISubprogram(name: "xcalloc", scope: !529, file: !529, line: 93, type: !1487, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3563)
!3563 = !{!3561, !3564, !3565}
!3564 = !DILocalVariable(name: "s", arg: 2, scope: !3562, file: !529, line: 93, type: !84)
!3565 = !DILocalVariable(name: "p", scope: !3562, file: !529, line: 95, type: !82)
!3566 = !DILocation(line: 0, scope: !3562, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 86, column: 10, scope: !3557)
!3568 = !DILocation(line: 100, column: 7, scope: !3569, inlinedAt: !3567)
!3569 = distinct !DILexicalBlock(scope: !3562, file: !529, line: 100, column: 7)
!3570 = !DILocation(line: 101, column: 7, scope: !3569, inlinedAt: !3567)
!3571 = !DILocation(line: 101, column: 18, scope: !3569, inlinedAt: !3567)
!3572 = !DILocation(line: 101, column: 16, scope: !3569, inlinedAt: !3567)
!3573 = !DILocation(line: 100, column: 7, scope: !3562, inlinedAt: !3567)
!3574 = !DILocation(line: 102, column: 5, scope: !3569, inlinedAt: !3567)
!3575 = !DILocation(line: 86, column: 3, scope: !3557)
!3576 = !DILocation(line: 0, scope: !3562)
!3577 = !DILocation(line: 100, column: 7, scope: !3569)
!3578 = !DILocation(line: 101, column: 7, scope: !3569)
!3579 = !DILocation(line: 101, column: 18, scope: !3569)
!3580 = !DILocation(line: 101, column: 16, scope: !3569)
!3581 = !DILocation(line: 100, column: 7, scope: !3562)
!3582 = !DILocation(line: 102, column: 5, scope: !3569)
!3583 = !DILocation(line: 103, column: 3, scope: !3562)
!3584 = distinct !DISubprogram(name: "xmemdup", scope: !529, file: !529, line: 111, type: !3585, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!82, !299, !84}
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "p", arg: 1, scope: !3584, file: !529, line: 111, type: !299)
!3589 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !529, line: 111, type: !84)
!3590 = !DILocation(line: 0, scope: !3584)
!3591 = !DILocation(line: 0, scope: !3400, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 113, column: 18, scope: !3584)
!3593 = !DILocation(line: 41, column: 13, scope: !3400, inlinedAt: !3592)
!3594 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3592)
!3595 = !DILocation(line: 42, column: 15, scope: !3409, inlinedAt: !3592)
!3596 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3592)
!3597 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3592)
!3598 = !DILocalVariable(name: "__dest", arg: 1, scope: !3599, file: !2209, line: 31, type: !3602)
!3599 = distinct !DISubprogram(name: "memcpy", scope: !2209, file: !2209, line: 31, type: !3600, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3604)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!82, !3602, !3603, !84}
!3602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!3603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!3604 = !{!3598, !3605, !3606}
!3605 = !DILocalVariable(name: "__src", arg: 2, scope: !3599, file: !2209, line: 31, type: !3603)
!3606 = !DILocalVariable(name: "__len", arg: 3, scope: !3599, file: !2209, line: 31, type: !84)
!3607 = !DILocation(line: 0, scope: !3599, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 113, column: 10, scope: !3584)
!3609 = !DILocation(line: 34, column: 10, scope: !3599, inlinedAt: !3608)
!3610 = !DILocation(line: 113, column: 3, scope: !3584)
!3611 = distinct !DISubprogram(name: "xstrdup", scope: !529, file: !529, line: 119, type: !104, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "string", arg: 1, scope: !3611, file: !529, line: 119, type: !27)
!3614 = !DILocation(line: 0, scope: !3611)
!3615 = !DILocation(line: 121, column: 27, scope: !3611)
!3616 = !DILocation(line: 121, column: 43, scope: !3611)
!3617 = !DILocation(line: 0, scope: !3584, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 121, column: 10, scope: !3611)
!3619 = !DILocation(line: 0, scope: !3400, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 113, column: 18, scope: !3584, inlinedAt: !3618)
!3621 = !DILocation(line: 41, column: 13, scope: !3400, inlinedAt: !3620)
!3622 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3620)
!3623 = !DILocation(line: 42, column: 15, scope: !3409, inlinedAt: !3620)
!3624 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3620)
!3625 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3620)
!3626 = !DILocation(line: 0, scope: !3599, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 113, column: 10, scope: !3584, inlinedAt: !3618)
!3628 = !DILocation(line: 34, column: 10, scope: !3599, inlinedAt: !3627)
!3629 = !DILocation(line: 121, column: 3, scope: !3611)
!3630 = distinct !DISubprogram(name: "xalloc_die", scope: !550, file: !550, line: 32, type: !111, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !30)
!3631 = !DILocation(line: 34, column: 10, scope: !3630)
!3632 = !DILocation(line: 34, column: 33, scope: !3630)
!3633 = !DILocation(line: 34, column: 3, scope: !3630)
!3634 = !DILocation(line: 40, column: 3, scope: !3630)
!3635 = distinct !DISubprogram(name: "rpl_calloc", scope: !553, file: !553, line: 42, type: !1487, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !552, retainedNodes: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !553, line: 42, type: !84)
!3638 = !DILocalVariable(name: "s", arg: 2, scope: !3635, file: !553, line: 42, type: !84)
!3639 = !DILocalVariable(name: "result", scope: !3635, file: !553, line: 44, type: !82)
!3640 = !DILocalVariable(name: "bytes", scope: !3641, file: !553, line: 56, type: !84)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !553, line: 53, column: 5)
!3642 = distinct !DILexicalBlock(scope: !3635, file: !553, line: 47, column: 7)
!3643 = !DILocation(line: 0, scope: !3635)
!3644 = !DILocation(line: 47, column: 9, scope: !3642)
!3645 = !DILocation(line: 47, column: 19, scope: !3642)
!3646 = !DILocation(line: 47, column: 14, scope: !3642)
!3647 = !DILocation(line: 0, scope: !3641)
!3648 = !DILocation(line: 57, column: 21, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3641, file: !553, line: 57, column: 11)
!3650 = !DILocation(line: 57, column: 11, scope: !3641)
!3651 = !DILocation(line: 59, column: 11, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !553, line: 58, column: 9)
!3653 = !DILocation(line: 59, column: 17, scope: !3652)
!3654 = !DILocation(line: 65, column: 12, scope: !3635)
!3655 = !DILocation(line: 72, column: 3, scope: !3635)
!3656 = !DILocation(line: 73, column: 1, scope: !3635)
!3657 = !DILocation(line: 0, scope: !403)
!3658 = !DILocation(line: 53, column: 12, scope: !403)
!3659 = !DILocation(line: 54, column: 10, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !403, file: !404, line: 54, column: 7)
!3661 = !DILocation(line: 54, column: 7, scope: !403)
!3662 = !DILocation(line: 64, column: 3, scope: !403)
!3663 = !DILocation(line: 64, column: 15, scope: !403)
!3664 = !DILocalVariable(name: "__fd", arg: 1, scope: !3665, file: !147, line: 474, type: !29)
!3665 = distinct !DISubprogram(name: "fstatat", scope: !147, file: !147, line: 474, type: !3666, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3669)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!29, !29, !27, !3668, !29}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!3669 = !{!3664, !3670, !3671, !3672}
!3670 = !DILocalVariable(name: "__filename", arg: 2, scope: !3665, file: !147, line: 474, type: !27)
!3671 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3665, file: !147, line: 474, type: !3668)
!3672 = !DILocalVariable(name: "__flag", arg: 4, scope: !3665, file: !147, line: 474, type: !29)
!3673 = !DILocation(line: 0, scope: !3665, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 65, column: 7, scope: !464)
!3675 = !DILocation(line: 477, column: 10, scope: !3665, inlinedAt: !3674)
!3676 = !DILocation(line: 65, column: 44, scope: !464)
!3677 = !DILocation(line: 65, column: 7, scope: !403)
!3678 = !DILocation(line: 67, column: 24, scope: !463)
!3679 = !DILocation(line: 0, scope: !463)
!3680 = !DILocation(line: 68, column: 7, scope: !463)
!3681 = !DILocation(line: 69, column: 13, scope: !463)
!3682 = !DILocation(line: 72, column: 7, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !403, file: !404, line: 72, column: 7)
!3684 = !DILocation(line: 72, column: 7, scope: !403)
!3685 = !DILocation(line: 74, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !404, line: 73, column: 5)
!3687 = !DILocation(line: 75, column: 7, scope: !3686)
!3688 = !DILocation(line: 75, column: 13, scope: !3686)
!3689 = !DILocation(line: 76, column: 7, scope: !3686)
!3690 = !DILocation(line: 81, column: 3, scope: !403)
!3691 = !DILocation(line: 81, column: 8, scope: !403)
!3692 = !DILocation(line: 82, column: 3, scope: !403)
!3693 = !DILocation(line: 83, column: 22, scope: !403)
!3694 = !DILocation(line: 84, column: 21, scope: !403)
!3695 = !DILocation(line: 85, column: 3, scope: !403)
!3696 = !DILocation(line: 86, column: 20, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !403, file: !404, line: 86, column: 7)
!3698 = !DILocation(line: 86, column: 7, scope: !403)
!3699 = !DILocation(line: 88, column: 19, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !403, file: !404, line: 88, column: 7)
!3701 = !DILocation(line: 88, column: 7, scope: !403)
!3702 = !DILocation(line: 90, column: 13, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !404, line: 89, column: 5)
!3704 = !DILocation(line: 91, column: 7, scope: !3703)
!3705 = !DILocation(line: 109, column: 10, scope: !403)
!3706 = !DILocation(line: 109, column: 3, scope: !403)
!3707 = !DILocation(line: 110, column: 1, scope: !403)
!3708 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !556, file: !556, line: 86, type: !3709, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3715)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!84, !3711, !27, !84, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1951, line: 6, baseType: !3714)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !326, line: 21, baseType: !562)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722}
!3716 = !DILocalVariable(name: "pwc", arg: 1, scope: !3708, file: !556, line: 86, type: !3711)
!3717 = !DILocalVariable(name: "s", arg: 2, scope: !3708, file: !556, line: 86, type: !27)
!3718 = !DILocalVariable(name: "n", arg: 3, scope: !3708, file: !556, line: 86, type: !84)
!3719 = !DILocalVariable(name: "ps", arg: 4, scope: !3708, file: !556, line: 86, type: !3712)
!3720 = !DILocalVariable(name: "ret", scope: !3708, file: !556, line: 88, type: !84)
!3721 = !DILocalVariable(name: "wc", scope: !3708, file: !556, line: 89, type: !1955)
!3722 = !DILocalVariable(name: "uc", scope: !3723, file: !556, line: 156, type: !1829)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !556, line: 155, column: 5)
!3724 = distinct !DILexicalBlock(scope: !3708, file: !556, line: 154, column: 7)
!3725 = !DILocation(line: 0, scope: !3708)
!3726 = !DILocation(line: 89, column: 3, scope: !3708)
!3727 = !DILocation(line: 105, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3708, file: !556, line: 105, column: 7)
!3729 = !DILocation(line: 105, column: 7, scope: !3708)
!3730 = !DILocation(line: 145, column: 9, scope: !3708)
!3731 = !DILocation(line: 154, column: 19, scope: !3724)
!3732 = !DILocation(line: 154, column: 31, scope: !3724)
!3733 = !DILocation(line: 154, column: 26, scope: !3724)
!3734 = !DILocation(line: 154, column: 41, scope: !3724)
!3735 = !DILocation(line: 154, column: 7, scope: !3708)
!3736 = !DILocation(line: 156, column: 26, scope: !3723)
!3737 = !DILocation(line: 0, scope: !3723)
!3738 = !DILocation(line: 157, column: 14, scope: !3723)
!3739 = !DILocation(line: 157, column: 12, scope: !3723)
!3740 = !DILocation(line: 163, column: 1, scope: !3708)
!3741 = distinct !DISubprogram(name: "close_stream", scope: !575, file: !575, line: 56, type: !3742, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3746)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!29, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3265, line: 7, baseType: !582)
!3746 = !{!3747, !3748, !3750, !3751}
!3747 = !DILocalVariable(name: "stream", arg: 1, scope: !3741, file: !575, line: 56, type: !3744)
!3748 = !DILocalVariable(name: "some_pending", scope: !3741, file: !575, line: 58, type: !3749)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!3750 = !DILocalVariable(name: "prev_fail", scope: !3741, file: !575, line: 59, type: !3749)
!3751 = !DILocalVariable(name: "fclose_fail", scope: !3741, file: !575, line: 60, type: !3749)
!3752 = !DILocation(line: 0, scope: !3741)
!3753 = !DILocation(line: 58, column: 30, scope: !3741)
!3754 = !DILocalVariable(name: "__stream", arg: 1, scope: !3755, file: !3756, line: 135, type: !3744)
!3755 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3756, file: !3756, line: 135, type: !3742, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !3757)
!3756 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3757 = !{!3754}
!3758 = !DILocation(line: 0, scope: !3755, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 59, column: 27, scope: !3741)
!3760 = !DILocation(line: 137, column: 10, scope: !3755, inlinedAt: !3759)
!3761 = !{!3762, !1273, i64 0}
!3762 = !{!"_IO_FILE", !1273, i64 0, !1179, i64 8, !1179, i64 16, !1179, i64 24, !1179, i64 32, !1179, i64 40, !1179, i64 48, !1179, i64 56, !1179, i64 64, !1179, i64 72, !1179, i64 80, !1179, i64 88, !1179, i64 96, !1179, i64 104, !1273, i64 112, !1273, i64 116, !1645, i64 120, !2202, i64 128, !1180, i64 130, !1180, i64 131, !1179, i64 136, !1645, i64 144, !1179, i64 152, !1179, i64 160, !1179, i64 168, !1179, i64 176, !1645, i64 184, !1273, i64 192, !1180, i64 196}
!3763 = !DILocation(line: 59, column: 43, scope: !3741)
!3764 = !DILocation(line: 60, column: 29, scope: !3741)
!3765 = !DILocation(line: 60, column: 45, scope: !3741)
!3766 = !DILocation(line: 70, column: 17, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3741, file: !575, line: 70, column: 7)
!3768 = !DILocation(line: 58, column: 50, scope: !3741)
!3769 = !DILocation(line: 70, column: 33, scope: !3767)
!3770 = !DILocation(line: 70, column: 53, scope: !3767)
!3771 = !DILocation(line: 70, column: 59, scope: !3767)
!3772 = !DILocation(line: 70, column: 7, scope: !3741)
!3773 = !DILocation(line: 72, column: 11, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3767, file: !575, line: 71, column: 5)
!3775 = !DILocation(line: 73, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3774, file: !575, line: 72, column: 11)
!3777 = !DILocation(line: 73, column: 15, scope: !3776)
!3778 = !DILocation(line: 78, column: 1, scope: !3741)
!3779 = distinct !DISubprogram(name: "hard_locale", scope: !614, file: !614, line: 27, type: !572, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3780)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "category", arg: 1, scope: !3779, file: !614, line: 27, type: !29)
!3782 = !DILocalVariable(name: "locale", scope: !3779, file: !614, line: 29, type: !3783)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !3784)
!3784 = !{!3785}
!3785 = !DISubrange(count: 257)
!3786 = !DILocation(line: 0, scope: !3779)
!3787 = !DILocation(line: 29, column: 3, scope: !3779)
!3788 = !DILocation(line: 29, column: 8, scope: !3779)
!3789 = !DILocation(line: 31, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3779, file: !614, line: 31, column: 7)
!3791 = !DILocation(line: 31, column: 7, scope: !3779)
!3792 = !DILocation(line: 34, column: 12, scope: !3779)
!3793 = !DILocation(line: 34, column: 38, scope: !3779)
!3794 = !DILocation(line: 34, column: 41, scope: !3779)
!3795 = !DILocation(line: 34, column: 66, scope: !3779)
!3796 = !DILocation(line: 35, column: 1, scope: !3779)
!3797 = distinct !DISubprogram(name: "locale_charset", scope: !621, file: !621, line: 831, type: !349, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !620, retainedNodes: !3798)
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "codeset", scope: !3797, file: !621, line: 833, type: !27)
!3800 = !DILocation(line: 847, column: 13, scope: !3797)
!3801 = !DILocation(line: 0, scope: !3797)
!3802 = !DILocation(line: 911, column: 15, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3797, file: !621, line: 911, column: 7)
!3804 = !DILocation(line: 911, column: 7, scope: !3797)
!3805 = !DILocation(line: 1070, column: 13, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !621, line: 1070, column: 13)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !621, line: 1060, column: 7)
!3808 = distinct !DILexicalBlock(scope: !3797, file: !621, line: 1019, column: 3)
!3809 = !DILocation(line: 1070, column: 24, scope: !3806)
!3810 = !DILocation(line: 1070, column: 13, scope: !3807)
!3811 = !DILocation(line: 1158, column: 3, scope: !3797)
!3812 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1014, file: !1014, line: 269, type: !3813, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!29, !29, !25, !84}
!3815 = !{!3816, !3817, !3818}
!3816 = !DILocalVariable(name: "category", arg: 1, scope: !3812, file: !1014, line: 269, type: !29)
!3817 = !DILocalVariable(name: "buf", arg: 2, scope: !3812, file: !1014, line: 269, type: !25)
!3818 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3812, file: !1014, line: 269, type: !84)
!3819 = !DILocation(line: 0, scope: !3812)
!3820 = !DILocalVariable(name: "category", arg: 1, scope: !3821, file: !1014, line: 91, type: !29)
!3821 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1014, file: !1014, line: 91, type: !3813, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3822)
!3822 = !{!3820, !3823, !3824, !3825, !3826}
!3823 = !DILocalVariable(name: "buf", arg: 2, scope: !3821, file: !1014, line: 91, type: !25)
!3824 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3821, file: !1014, line: 91, type: !84)
!3825 = !DILocalVariable(name: "result", scope: !3821, file: !1014, line: 140, type: !27)
!3826 = !DILocalVariable(name: "length", scope: !3827, file: !1014, line: 154, type: !84)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !1014, line: 153, column: 5)
!3828 = distinct !DILexicalBlock(scope: !3821, file: !1014, line: 142, column: 7)
!3829 = !DILocation(line: 0, scope: !3821, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 274, column: 10, scope: !3812)
!3831 = !DILocalVariable(name: "category", arg: 1, scope: !3832, file: !1014, line: 60, type: !29)
!3832 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1014, file: !1014, line: 60, type: !3833, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!27, !29}
!3835 = !{!3831, !3836}
!3836 = !DILocalVariable(name: "result", scope: !3832, file: !1014, line: 62, type: !27)
!3837 = !DILocation(line: 0, scope: !3832, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 140, column: 24, scope: !3821, inlinedAt: !3830)
!3839 = !DILocation(line: 62, column: 24, scope: !3832, inlinedAt: !3838)
!3840 = !DILocation(line: 142, column: 14, scope: !3828, inlinedAt: !3830)
!3841 = !DILocation(line: 142, column: 7, scope: !3821, inlinedAt: !3830)
!3842 = !DILocation(line: 145, column: 19, scope: !3843, inlinedAt: !3830)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !1014, line: 145, column: 11)
!3844 = distinct !DILexicalBlock(scope: !3828, file: !1014, line: 143, column: 5)
!3845 = !DILocation(line: 145, column: 11, scope: !3844, inlinedAt: !3830)
!3846 = !DILocation(line: 149, column: 16, scope: !3843, inlinedAt: !3830)
!3847 = !DILocation(line: 149, column: 9, scope: !3843, inlinedAt: !3830)
!3848 = !DILocation(line: 154, column: 23, scope: !3827, inlinedAt: !3830)
!3849 = !DILocation(line: 0, scope: !3827, inlinedAt: !3830)
!3850 = !DILocation(line: 155, column: 18, scope: !3851, inlinedAt: !3830)
!3851 = distinct !DILexicalBlock(scope: !3827, file: !1014, line: 155, column: 11)
!3852 = !DILocation(line: 155, column: 11, scope: !3827, inlinedAt: !3830)
!3853 = !DILocation(line: 157, column: 39, scope: !3854, inlinedAt: !3830)
!3854 = distinct !DILexicalBlock(scope: !3851, file: !1014, line: 156, column: 9)
!3855 = !DILocalVariable(name: "__dest", arg: 1, scope: !3856, file: !2209, line: 31, type: !3602)
!3856 = distinct !DISubprogram(name: "memcpy", scope: !2209, file: !2209, line: 31, type: !3600, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3857)
!3857 = !{!3855, !3858, !3859}
!3858 = !DILocalVariable(name: "__src", arg: 2, scope: !3856, file: !2209, line: 31, type: !3603)
!3859 = !DILocalVariable(name: "__len", arg: 3, scope: !3856, file: !2209, line: 31, type: !84)
!3860 = !DILocation(line: 0, scope: !3856, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 157, column: 11, scope: !3854, inlinedAt: !3830)
!3862 = !DILocation(line: 34, column: 10, scope: !3856, inlinedAt: !3861)
!3863 = !DILocation(line: 158, column: 11, scope: !3854, inlinedAt: !3830)
!3864 = !DILocation(line: 162, column: 23, scope: !3865, inlinedAt: !3830)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !1014, line: 162, column: 15)
!3866 = distinct !DILexicalBlock(scope: !3851, file: !1014, line: 161, column: 9)
!3867 = !DILocation(line: 162, column: 15, scope: !3866, inlinedAt: !3830)
!3868 = !DILocation(line: 167, column: 44, scope: !3869, inlinedAt: !3830)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !1014, line: 163, column: 13)
!3870 = !DILocation(line: 0, scope: !3856, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 167, column: 15, scope: !3869, inlinedAt: !3830)
!3872 = !DILocation(line: 34, column: 10, scope: !3856, inlinedAt: !3871)
!3873 = !DILocation(line: 168, column: 15, scope: !3869, inlinedAt: !3830)
!3874 = !DILocation(line: 168, column: 32, scope: !3869, inlinedAt: !3830)
!3875 = !DILocation(line: 169, column: 13, scope: !3869, inlinedAt: !3830)
!3876 = !DILocation(line: 0, scope: !3828, inlinedAt: !3830)
!3877 = !DILocation(line: 274, column: 3, scope: !3812)
!3878 = distinct !DISubprogram(name: "setlocale_null", scope: !1014, file: !1014, line: 301, type: !3833, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !3879)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "category", arg: 1, scope: !3878, file: !1014, line: 301, type: !29)
!3881 = !DILocation(line: 0, scope: !3878)
!3882 = !DILocation(line: 0, scope: !3832, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 304, column: 10, scope: !3878)
!3884 = !DILocation(line: 62, column: 24, scope: !3832, inlinedAt: !3883)
!3885 = !DILocation(line: 304, column: 3, scope: !3878)
!3886 = distinct !DISubprogram(name: "rpl_fclose", scope: !1017, file: !1017, line: 58, type: !3887, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !3891)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!29, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3265, line: 7, baseType: !1023)
!3891 = !{!3892, !3893, !3894, !3895}
!3892 = !DILocalVariable(name: "fp", arg: 1, scope: !3886, file: !1017, line: 58, type: !3889)
!3893 = !DILocalVariable(name: "saved_errno", scope: !3886, file: !1017, line: 60, type: !29)
!3894 = !DILocalVariable(name: "fd", scope: !3886, file: !1017, line: 61, type: !29)
!3895 = !DILocalVariable(name: "result", scope: !3886, file: !1017, line: 62, type: !29)
!3896 = !DILocation(line: 0, scope: !3886)
!3897 = !DILocation(line: 65, column: 8, scope: !3886)
!3898 = !DILocation(line: 66, column: 10, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3886, file: !1017, line: 66, column: 7)
!3900 = !DILocation(line: 66, column: 7, scope: !3886)
!3901 = !DILocation(line: 67, column: 12, scope: !3899)
!3902 = !DILocation(line: 67, column: 5, scope: !3899)
!3903 = !DILocation(line: 72, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3886, file: !1017, line: 72, column: 7)
!3905 = !DILocation(line: 72, column: 23, scope: !3904)
!3906 = !DILocation(line: 72, column: 33, scope: !3904)
!3907 = !DILocation(line: 72, column: 26, scope: !3904)
!3908 = !DILocation(line: 72, column: 59, scope: !3904)
!3909 = !DILocation(line: 73, column: 7, scope: !3904)
!3910 = !DILocation(line: 73, column: 10, scope: !3904)
!3911 = !DILocation(line: 72, column: 7, scope: !3886)
!3912 = !DILocation(line: 100, column: 12, scope: !3886)
!3913 = !DILocation(line: 105, column: 7, scope: !3886)
!3914 = !DILocation(line: 74, column: 19, scope: !3904)
!3915 = !DILocation(line: 105, column: 19, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3886, file: !1017, line: 105, column: 7)
!3917 = !DILocation(line: 107, column: 13, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3916, file: !1017, line: 106, column: 5)
!3919 = !DILocation(line: 109, column: 5, scope: !3918)
!3920 = !DILocation(line: 112, column: 1, scope: !3886)
!3921 = distinct !DISubprogram(name: "rpl_fflush", scope: !1060, file: !1060, line: 129, type: !3922, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3926)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!29, !3924}
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3265, line: 7, baseType: !1066)
!3926 = !{!3927}
!3927 = !DILocalVariable(name: "stream", arg: 1, scope: !3921, file: !1060, line: 129, type: !3924)
!3928 = !DILocation(line: 0, scope: !3921)
!3929 = !DILocation(line: 150, column: 14, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3921, file: !1060, line: 150, column: 7)
!3931 = !DILocation(line: 150, column: 22, scope: !3930)
!3932 = !DILocation(line: 150, column: 27, scope: !3930)
!3933 = !DILocation(line: 150, column: 7, scope: !3921)
!3934 = !DILocation(line: 151, column: 12, scope: !3930)
!3935 = !DILocation(line: 151, column: 5, scope: !3930)
!3936 = !DILocalVariable(name: "fp", arg: 1, scope: !3937, file: !1060, line: 41, type: !3924)
!3937 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1060, file: !1060, line: 41, type: !3938, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3924}
!3940 = !{!3936}
!3941 = !DILocation(line: 0, scope: !3937, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 156, column: 3, scope: !3921)
!3943 = !DILocation(line: 43, column: 11, scope: !3944, inlinedAt: !3942)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !1060, line: 43, column: 7)
!3945 = !DILocation(line: 43, column: 18, scope: !3944, inlinedAt: !3942)
!3946 = !DILocation(line: 43, column: 7, scope: !3937, inlinedAt: !3942)
!3947 = !DILocation(line: 45, column: 5, scope: !3944, inlinedAt: !3942)
!3948 = !DILocation(line: 158, column: 10, scope: !3921)
!3949 = !DILocation(line: 158, column: 3, scope: !3921)
!3950 = !DILocation(line: 235, column: 1, scope: !3921)
!3951 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1101, file: !1101, line: 28, type: !3952, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1100, retainedNodes: !3957)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!29, !3954, !3956, !29}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3265, line: 7, baseType: !1107)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !32, line: 63, baseType: !58)
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DILocalVariable(name: "fp", arg: 1, scope: !3951, file: !1101, line: 28, type: !3954)
!3959 = !DILocalVariable(name: "offset", arg: 2, scope: !3951, file: !1101, line: 28, type: !3956)
!3960 = !DILocalVariable(name: "whence", arg: 3, scope: !3951, file: !1101, line: 28, type: !29)
!3961 = !DILocalVariable(name: "pos", scope: !3962, file: !1101, line: 117, type: !3956)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !1101, line: 113, column: 5)
!3963 = distinct !DILexicalBlock(scope: !3951, file: !1101, line: 52, column: 7)
!3964 = !DILocation(line: 0, scope: !3951)
!3965 = !DILocation(line: 52, column: 11, scope: !3963)
!3966 = !{!3762, !1179, i64 16}
!3967 = !DILocation(line: 52, column: 31, scope: !3963)
!3968 = !{!3762, !1179, i64 8}
!3969 = !DILocation(line: 52, column: 24, scope: !3963)
!3970 = !DILocation(line: 53, column: 7, scope: !3963)
!3971 = !DILocation(line: 53, column: 14, scope: !3963)
!3972 = !{!3762, !1179, i64 40}
!3973 = !DILocation(line: 53, column: 35, scope: !3963)
!3974 = !{!3762, !1179, i64 32}
!3975 = !DILocation(line: 53, column: 28, scope: !3963)
!3976 = !DILocation(line: 54, column: 7, scope: !3963)
!3977 = !DILocation(line: 54, column: 14, scope: !3963)
!3978 = !{!3762, !1179, i64 72}
!3979 = !DILocation(line: 54, column: 28, scope: !3963)
!3980 = !DILocation(line: 52, column: 7, scope: !3951)
!3981 = !DILocation(line: 117, column: 26, scope: !3962)
!3982 = !DILocation(line: 117, column: 19, scope: !3962)
!3983 = !DILocation(line: 0, scope: !3962)
!3984 = !DILocation(line: 118, column: 15, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3962, file: !1101, line: 118, column: 11)
!3986 = !DILocation(line: 118, column: 11, scope: !3962)
!3987 = !DILocation(line: 129, column: 11, scope: !3962)
!3988 = !DILocation(line: 129, column: 18, scope: !3962)
!3989 = !DILocation(line: 130, column: 11, scope: !3962)
!3990 = !DILocation(line: 130, column: 19, scope: !3962)
!3991 = !{!3762, !1645, i64 144}
!3992 = !DILocation(line: 161, column: 7, scope: !3962)
!3993 = !DILocation(line: 163, column: 10, scope: !3951)
!3994 = !DILocation(line: 163, column: 3, scope: !3951)
!3995 = !DILocation(line: 164, column: 1, scope: !3951)
