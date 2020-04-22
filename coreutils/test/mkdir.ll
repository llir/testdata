; ModuleID = 'coreutils-8.32/src/mkdir.bc'
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
%struct.mkdir_options = type { i32 (i8*, i8*, i8*)*, i32, i32, i32, i8, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [207 x i8] c"  -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask\0A  -p, --parents     no error if existing, make parent directories as needed\0A  -v, --verbose     print a message for each created directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [258 x i8] c"  -Z                   set SELinux security context of each created directory\0A                         to the default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), align 8, !dbg !219
@.str.41 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !224
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !267
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !269
@.str.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.1.52 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.3.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.4.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !275
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !316
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !410
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !416
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !418
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !425
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !432
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !420
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !434
@.str.5.92 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.93 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1.94 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1
@.str.3.96 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1
@.str.4.97 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.118 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.119 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.120 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.121 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.122 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.123 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.124 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !440
@.str.1.135 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lchmod.fmt = internal constant [17 x i8] c"/proc/self/fd/%d\00", align 16, !dbg !448
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !518

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1358 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1363, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %0, metadata !1362, metadata !DIExpression()), !dbg !1382
  %3 = icmp eq i32 %0, 0, !dbg !1383
  br i1 %3, label %9, label %4, !dbg !1384

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1385, !tbaa !1387
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !1385
  %7 = load i8*, i8** @program_name, align 8, !dbg !1385, !tbaa !1387
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !1385
  br label %67, !dbg !1385

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1391
  %11 = load i8*, i8** @program_name, align 8, !dbg !1391, !tbaa !1387
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !1391
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !1392
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1392, !tbaa !1387
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1392
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !1393
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1393, !tbaa !1387
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !1393
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !1396
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1396, !tbaa !1387
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1396
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !1397
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1397, !tbaa !1387
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1397
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !1398
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1398, !tbaa !1387
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1398
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !1399
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1399, !tbaa !1387
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1399
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1367, metadata !DIExpression()) #10, !dbg !1400
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #10, !dbg !1401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !1378
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1368, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  br label %33, !dbg !1403

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #24, !dbg !1404
  %37 = icmp eq i32 %36, 0, !dbg !1404
  br i1 %37, label %43, label %38, !dbg !1403

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1406
  %41 = load i8*, i8** %40, align 8, !dbg !1406, !tbaa !1407
  %42 = icmp eq i8* %41, null, !dbg !1409
  br i1 %42, label %43, label %33, !dbg !1410, !llvm.loop !1411

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1369, metadata !DIExpression()) #10, !dbg !1400
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1412
  %46 = load i8*, i8** %45, align 8, !dbg !1412, !tbaa !1414
  %47 = icmp eq i8* %46, null, !dbg !1415
  %48 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %48, metadata !1368, metadata !DIExpression()) #10, !dbg !1400
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1417
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !1417
  %51 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %51, metadata !1376, metadata !DIExpression()) #10, !dbg !1400
  %52 = icmp eq i8* %51, null, !dbg !1419
  br i1 %52, label %60, label %53, !dbg !1421

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #24, !dbg !1422
  %55 = icmp eq i32 %54, 0, !dbg !1422
  br i1 %55, label %60, label %56, !dbg !1423

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !1424
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1424, !tbaa !1387
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #10, !dbg !1424
  br label %60, !dbg !1426

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !1427
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1427
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !1428
  %64 = icmp eq i8* %48, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !1428
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1428
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #10, !dbg !1428
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #10, !dbg !1429
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #25, !dbg !1430
  unreachable, !dbg !1430
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !44 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !53 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !117 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1431 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1435, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8** %1, metadata !1436, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* null, metadata !1437, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* null, metadata !1439, metadata !DIExpression()), !dbg !1458
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !1459
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #10, !dbg !1459
  call void @llvm.dbg.declare(metadata %struct.mkdir_options* %3, metadata !1440, metadata !DIExpression()), !dbg !1460
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !1461
  store i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !1462, !tbaa !1463
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !1467
  store i32 511, i32* %6, align 4, !dbg !1468, !tbaa !1469
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !1470
  store i32 0, i32* %7, align 8, !dbg !1471, !tbaa !1472
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 5, !dbg !1473
  store i8* null, i8** %8, align 8, !dbg !1474, !tbaa !1475
  %9 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !1476
  store i8 0, i8* %9, align 4, !dbg !1477, !tbaa !1478
  %10 = load i8*, i8** %1, align 8, !dbg !1479, !tbaa !1387
  tail call void @set_program_name(i8* %10) #10, !dbg !1480
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1481
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1482
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1483
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !1484
  br label %15, !dbg !1485

15:                                               ; preds = %22, %2
  %16 = phi i32 (i8*, i8*, i8*)* [ @make_ancestor, %22 ], [ null, %2 ]
  %17 = phi i8* [ %19, %22 ], [ null, %2 ]
  br label %18, !dbg !1485

18:                                               ; preds = %15, %23
  %19 = phi i8* [ %17, %15 ], [ %24, %23 ]
  br label %20, !dbg !1485

20:                                               ; preds = %30, %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !1437, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* null, metadata !1439, metadata !DIExpression()), !dbg !1458
  %21 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %21, metadata !1438, metadata !DIExpression()), !dbg !1458
  switch i32 %21, label %37 [
    i32 -1, label %38
    i32 112, label %22
    i32 109, label %23
    i32 118, label %25
    i32 90, label %27
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !1485

22:                                               ; preds = %20
  store i32 (i8*, i8*, i8*)* @make_ancestor, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !1487, !tbaa !1463
  br label %15, !dbg !1490, !llvm.loop !1491

23:                                               ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !1493, !tbaa !1387
  call void @llvm.dbg.value(metadata i8* %24, metadata !1437, metadata !DIExpression()), !dbg !1458
  br label %18, !dbg !1494, !llvm.loop !1491

25:                                               ; preds = %20
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !1495
  store i8* %26, i8** %8, align 8, !dbg !1496, !tbaa !1475
  br label %30, !dbg !1497

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8, !dbg !1498, !tbaa !1387
  %29 = icmp eq i8* %28, null, !dbg !1500
  br i1 %29, label %30, label %31, !dbg !1503

30:                                               ; preds = %27, %31, %25
  br label %20, !dbg !1458, !llvm.loop !1491

31:                                               ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !1504
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #10, !dbg !1506
  br label %30, !dbg !1507

33:                                               ; preds = %20
  tail call void @usage(i32 0) #26, !dbg !1508
  unreachable, !dbg !1508

34:                                               ; preds = %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1509, !tbaa !1387
  %36 = load i8*, i8** @Version, align 8, !dbg !1509, !tbaa !1387
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !1509
  tail call void @exit(i32 0) #25, !dbg !1509
  unreachable, !dbg !1509

37:                                               ; preds = %20
  tail call void @usage(i32 1) #26, !dbg !1510
  unreachable, !dbg !1510

38:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %19, metadata !1437, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %19, metadata !1437, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %19, metadata !1437, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %19, metadata !1437, metadata !DIExpression()), !dbg !1458
  %39 = load i32, i32* @optind, align 4, !dbg !1511, !tbaa !1513
  %40 = icmp eq i32 %39, %0, !dbg !1514
  br i1 %40, label %41, label %43, !dbg !1515

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !1516
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42) #10, !dbg !1518
  tail call void @usage(i32 1) #26, !dbg !1519
  unreachable, !dbg !1519

43:                                               ; preds = %38
  %44 = icmp ne i32 (i8*, i8*, i8*)* %16, null, !dbg !1520
  %45 = icmp ne i8* %19, null, !dbg !1521
  %46 = or i1 %45, %44, !dbg !1522
  br i1 %46, label %47, label %61, !dbg !1522

47:                                               ; preds = %43
  %48 = tail call i32 @umask(i32 0) #10, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %48, metadata !1452, metadata !DIExpression()), !dbg !1524
  %49 = tail call i32 @umask(i32 %48) #10, !dbg !1525
  %50 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !1526
  store i32 %48, i32* %50, align 8, !dbg !1527, !tbaa !1528
  br i1 %45, label %51, label %60, !dbg !1529

51:                                               ; preds = %47
  %52 = tail call %struct.mode_change* @mode_compile(i8* nonnull %19) #10, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.mode_change* %52, metadata !1455, metadata !DIExpression()), !dbg !1531
  %53 = icmp eq %struct.mode_change* %52, null, !dbg !1532
  br i1 %53, label %54, label %57, !dbg !1534

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !1535
  %56 = tail call i8* @quote(i8* nonnull %19) #10, !dbg !1535
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %55, i8* %56) #10, !dbg !1535
  unreachable, !dbg !1535

57:                                               ; preds = %51
  %58 = call i32 @mode_adjust(i32 511, i1 zeroext true, i32 %48, %struct.mode_change* nonnull %52, i32* nonnull %7) #10, !dbg !1536
  store i32 %58, i32* %6, align 4, !dbg !1537, !tbaa !1469
  %59 = bitcast %struct.mode_change* %52 to i8*, !dbg !1538
  call void @free(i8* %59) #10, !dbg !1539
  br label %61, !dbg !1540

60:                                               ; preds = %47
  store i32 511, i32* %6, align 4, !dbg !1541, !tbaa !1469
  br label %61

61:                                               ; preds = %57, %60, %43
  %62 = load i32, i32* @optind, align 4, !dbg !1542, !tbaa !1513
  %63 = sub nsw i32 %0, %62, !dbg !1543
  %64 = sext i32 %62 to i64, !dbg !1544
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !1544
  %66 = call i32 @savewd_process_files(i32 %63, i8** nonnull %65, i32 (i8*, %struct.savewd*, i8*)* nonnull @process_dir, i8* nonnull %4) #10, !dbg !1545
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #10, !dbg !1546
  ret i32 %66, !dbg !1547
}

; Function Attrs: nounwind
declare !dbg !121 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !124 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !127 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @make_ancestor(i8* %0, i8* nocapture readonly %1, i8* nocapture readonly %2) #8 !dbg !1548 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1550, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %1, metadata !1551, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %2, metadata !1552, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %2, metadata !1553, metadata !DIExpression()), !dbg !1562
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1563
  %5 = load i8, i8* %4, align 4, !dbg !1563, !tbaa !1478, !range !1565
  %6 = icmp eq i8 %5, 0, !dbg !1563
  br i1 %6, label %9, label %7, !dbg !1566

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* undef, metadata !1567, metadata !DIExpression()) #10, !dbg !1572
  call void @llvm.dbg.value(metadata i32 undef, metadata !1571, metadata !DIExpression()) #10, !dbg !1572
  %8 = tail call i32* @__errno_location() #27, !dbg !1574
  store i32 95, i32* %8, align 4, !dbg !1575, !tbaa !1513
  br label %9, !dbg !1576

9:                                                ; preds = %7, %3
  call void @llvm.dbg.value(metadata i32 192, metadata !1556, metadata !DIExpression()), !dbg !1562
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1577
  %11 = bitcast i8* %10 to i32*, !dbg !1577
  %12 = load i32, i32* %11, align 8, !dbg !1577, !tbaa !1528
  %13 = and i32 %12, 192, !dbg !1578
  %14 = icmp eq i32 %13, 0, !dbg !1579
  call void @llvm.dbg.value(metadata i1 %14, metadata !1557, metadata !DIExpression()), !dbg !1562
  br i1 %14, label %15, label %17, !dbg !1580

15:                                               ; preds = %9
  %16 = tail call i32 @mkdir(i8* %1, i32 511) #10, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %16, metadata !1558, metadata !DIExpression()), !dbg !1562
  br label %25, !dbg !1582

17:                                               ; preds = %9
  %18 = and i32 %12, -193, !dbg !1583
  %19 = tail call i32 @umask(i32 %18) #10, !dbg !1585
  %20 = tail call i32 @mkdir(i8* %1, i32 511) #10, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %16, metadata !1558, metadata !DIExpression()), !dbg !1562
  %21 = tail call i32* @__errno_location() #27, !dbg !1586
  %22 = load i32, i32* %21, align 4, !dbg !1586, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %22, metadata !1559, metadata !DIExpression()), !dbg !1587
  %23 = load i32, i32* %11, align 8, !dbg !1588, !tbaa !1528
  %24 = tail call i32 @umask(i32 %23) #10, !dbg !1589
  store i32 %22, i32* %21, align 4, !dbg !1590, !tbaa !1513
  br label %25, !dbg !1591

25:                                               ; preds = %15, %17
  %26 = phi i32 [ %20, %17 ], [ %16, %15 ]
  %27 = icmp eq i32 %26, 0, !dbg !1592
  br i1 %27, label %28, label %39, !dbg !1594

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 8, !dbg !1595, !tbaa !1528
  %30 = lshr i32 %29, 8, !dbg !1597
  %31 = and i32 %30, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %31, metadata !1558, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #10, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %2, metadata !1601, metadata !DIExpression()) #10, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %2, metadata !1602, metadata !DIExpression()) #10, !dbg !1603
  %32 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1605
  %33 = bitcast i8* %32 to i8**, !dbg !1605
  %34 = load i8*, i8** %33, align 8, !dbg !1605, !tbaa !1475
  %35 = icmp eq i8* %34, null, !dbg !1607
  br i1 %35, label %39, label %36, !dbg !1608

36:                                               ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1609, !tbaa !1387
  %38 = tail call i8* @quotearg_style(i32 4, i8* %0) #10, !dbg !1610
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %37, i8* nonnull %34, i8* %38) #10, !dbg !1611
  br label %39, !dbg !1611

39:                                               ; preds = %36, %28, %25
  %40 = phi i32 [ %26, %25 ], [ %31, %28 ], [ %31, %36 ], !dbg !1562
  call void @llvm.dbg.value(metadata i32 %40, metadata !1558, metadata !DIExpression()), !dbg !1562
  ret i32 %40, !dbg !1612
}

; Function Attrs: nounwind
declare !dbg !134 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !149 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !161 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !178 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @process_dir(i8* %0, %struct.savewd* %1, i8* %2) #8 !dbg !1613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1615, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1616, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %2, metadata !1617, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8* %2, metadata !1618, metadata !DIExpression()), !dbg !1620
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1621
  %5 = load i8, i8* %4, align 4, !dbg !1621, !tbaa !1478, !range !1565
  %6 = icmp ne i8 %5, 0, !dbg !1621
  %7 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**, !dbg !1620
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1620, !tbaa !1463
  %9 = icmp eq i32 (i8*, i8*, i8*)* %8, null, !dbg !1623
  %10 = and i1 %6, %9, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %2, metadata !1618, metadata !DIExpression()), !dbg !1620
  br i1 %10, label %11, label %13, !dbg !1626

11:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* undef, metadata !1567, metadata !DIExpression()) #10, !dbg !1627
  call void @llvm.dbg.value(metadata i32 undef, metadata !1571, metadata !DIExpression()) #10, !dbg !1627
  %12 = tail call i32* @__errno_location() #27, !dbg !1629
  store i32 95, i32* %12, align 4, !dbg !1630, !tbaa !1513
  br label %13, !dbg !1631

13:                                               ; preds = %3, %11
  %14 = phi i32 (i8*, i8*, i8*)* [ null, %11 ], [ %8, %3 ], !dbg !1632
  %15 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1633
  %16 = bitcast i8* %15 to i32*, !dbg !1633
  %17 = load i32, i32* %16, align 4, !dbg !1633, !tbaa !1469
  %18 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1634
  %19 = bitcast i8* %18 to i32*, !dbg !1634
  %20 = load i32, i32* %19, align 8, !dbg !1634, !tbaa !1472
  %21 = tail call zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %14, i8* nonnull %2, i32 %17, void (i8*, i8*)* nonnull @announce_mkdir, i32 %20, i32 -1, i32 -1, i1 zeroext true) #10, !dbg !1635
  %22 = xor i1 %21, true, !dbg !1635
  %23 = zext i1 %22 to i32, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %23, metadata !1619, metadata !DIExpression()), !dbg !1620
  br i1 %21, label %24, label %32, !dbg !1636

24:                                               ; preds = %13
  %25 = load i8, i8* %4, align 4, !dbg !1638, !tbaa !1478, !range !1565
  %26 = icmp eq i8 %25, 0, !dbg !1638
  br i1 %26, label %32, label %27, !dbg !1639

27:                                               ; preds = %24
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1640, !tbaa !1463
  %29 = icmp eq i32 (i8*, i8*, i8*)* %28, null, !dbg !1641
  br i1 %29, label %32, label %30, !dbg !1642

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* undef, metadata !1643, metadata !DIExpression()) #10, !dbg !1650
  call void @llvm.dbg.value(metadata i1 undef, metadata !1648, metadata !DIExpression()) #10, !dbg !1650
  call void @llvm.dbg.value(metadata i1 undef, metadata !1649, metadata !DIExpression()) #10, !dbg !1650
  %31 = tail call i32* @__errno_location() #27, !dbg !1654
  store i32 95, i32* %31, align 4, !dbg !1655, !tbaa !1513
  br label %32, !dbg !1656

32:                                               ; preds = %30, %27, %24, %13
  ret i32 %23, !dbg !1657
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal void @announce_mkdir(i8* %0, i8* nocapture readonly %1) #8 !dbg !1599 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1601, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1602, metadata !DIExpression()), !dbg !1658
  %3 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1659
  %4 = bitcast i8* %3 to i8**, !dbg !1659
  %5 = load i8*, i8** %4, align 8, !dbg !1659, !tbaa !1475
  %6 = icmp eq i8* %5, null, !dbg !1660
  br i1 %6, label %10, label %7, !dbg !1661

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1662, !tbaa !1387
  %9 = tail call i8* @quotearg_style(i32 4, i8* %0) #10, !dbg !1663
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %8, i8* nonnull %5, i8* %9) #10, !dbg !1664
  br label %10, !dbg !1664

10:                                               ; preds = %2, %7
  ret void, !dbg !1665
}

; Function Attrs: nofree nounwind
declare !dbg !192 i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* %0, i8* %1, ...) local_unnamed_addr #8 !dbg !1666 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1673, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8* %1, metadata !1674, metadata !DIExpression()), !dbg !1687
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1688
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !1688
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1675, metadata !DIExpression()), !dbg !1689
  %5 = load i8*, i8** @program_name, align 8, !dbg !1690, !tbaa !1387
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !1690
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !1691
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1692
  call void @llvm.va_start(i8* nonnull %4), !dbg !1692
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1693, metadata !DIExpression()) #10, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %1, metadata !1702, metadata !DIExpression()) #10, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !1703, metadata !DIExpression()) #10, !dbg !1704
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #10, !dbg !1706
  call void @llvm.va_end(i8* nonnull %4), !dbg !1707
  call void @llvm.dbg.value(metadata i32 10, metadata !1708, metadata !DIExpression()) #10, !dbg !1715
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1714, metadata !DIExpression()) #10, !dbg !1715
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1717
  %11 = load i8*, i8** %10, align 8, !dbg !1717, !tbaa !1718
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1717
  %13 = load i8*, i8** %12, align 8, !dbg !1717, !tbaa !1722
  %14 = icmp ult i8* %11, %13, !dbg !1717
  br i1 %14, label %17, label %15, !dbg !1717, !prof !1723, !misexpect !1724

15:                                               ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #10, !dbg !1717
  br label %19, !dbg !1717

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1717
  store i8* %18, i8** %10, align 8, !dbg !1717, !tbaa !1718
  store i8 10, i8* %11, align 1, !dbg !1717, !tbaa !1725
  br label %19, !dbg !1717

19:                                               ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !1726
  ret void, !dbg !1726
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1727 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1729, metadata !DIExpression()), !dbg !1730
  store i8* %0, i8** @file_name, align 8, !dbg !1731, !tbaa !1387
  ret void, !dbg !1732
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1733 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1737, metadata !DIExpression()), !dbg !1738
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1739, !tbaa !1740
  ret void, !dbg !1741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1742 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1747, !tbaa !1387
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1748
  %3 = icmp eq i32 %2, 0, !dbg !1749
  br i1 %3, label %22, label %4, !dbg !1750

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1751, !tbaa !1740, !range !1565
  %6 = icmp eq i8 %5, 0, !dbg !1751
  br i1 %6, label %11, label %7, !dbg !1752

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #27, !dbg !1753
  %9 = load i32, i32* %8, align 4, !dbg !1753, !tbaa !1513
  %10 = icmp eq i32 %9, 32, !dbg !1754
  br i1 %10, label %22, label %11, !dbg !1755

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %12, metadata !1744, metadata !DIExpression()), !dbg !1757
  %13 = load i8*, i8** @file_name, align 8, !dbg !1758, !tbaa !1387
  %14 = icmp eq i8* %13, null, !dbg !1758
  %15 = tail call i32* @__errno_location() #27, !dbg !1760
  %16 = load i32, i32* %15, align 4, !dbg !1760, !tbaa !1513
  br i1 %14, label %19, label %17, !dbg !1761

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1762
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1763
  br label %20, !dbg !1763

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #10, !dbg !1764
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1765, !tbaa !1513
  tail call void @_exit(i32 %21) #25, !dbg !1766
  unreachable, !dbg !1766

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1767, !tbaa !1387
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1769
  %25 = icmp eq i32 %24, 0, !dbg !1770
  br i1 %25, label %28, label %26, !dbg !1771

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1772, !tbaa !1513
  tail call void @_exit(i32 %27) #25, !dbg !1773
  unreachable, !dbg !1773

28:                                               ; preds = %22
  ret void, !dbg !1774
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %2, i8* %3, i32 %4, void (i8*, i8*)* nocapture %5, i32 %6, i32 %7, i32 %8, i1 zeroext %9) local_unnamed_addr #8 !dbg !1775 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1779, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1780, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !1781, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* %3, metadata !1782, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %4, metadata !1783, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, metadata !1784, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %6, metadata !1785, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %7, metadata !1786, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %8, metadata !1787, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i1 %9, metadata !1788, metadata !DIExpression()), !dbg !1839
  %13 = load i8, i8* %0, align 1, !dbg !1840, !tbaa !1725
  %14 = icmp eq i8 %13, 47, !dbg !1840
  br i1 %14, label %23, label %15, !dbg !1840

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1841, metadata !DIExpression()), !dbg !1848
  %16 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1850
  %17 = load i32, i32* %16, align 4, !dbg !1850, !tbaa !1851
  %18 = icmp eq i32 %17, 4, !dbg !1853
  br i1 %18, label %19, label %23, !dbg !1854

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1855
  %21 = load i32, i32* %20, align 4, !dbg !1855, !tbaa !1725
  call void @llvm.dbg.value(metadata i32 %21, metadata !1789, metadata !DIExpression()), !dbg !1839
  %22 = icmp eq i32 %21, 0, !dbg !1856
  br i1 %22, label %23, label %116, !dbg !1857

23:                                               ; preds = %15, %10, %19
  call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 2, metadata !1794, metadata !DIExpression()), !dbg !1858
  %24 = icmp ne i32 (i8*, i8*, i8*)* %2, null, !dbg !1859
  br i1 %24, label %25, label %33, !dbg !1861

25:                                               ; preds = %23
  %26 = tail call i64 @mkancesdirs(i8* nonnull %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nonnull %2, i8* %3) #10, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %26, metadata !1790, metadata !DIExpression()), !dbg !1858
  %27 = icmp slt i64 %26, 0, !dbg !1864
  br i1 %27, label %28, label %33, !dbg !1866

28:                                               ; preds = %25
  %29 = icmp eq i64 %26, -1, !dbg !1867
  br i1 %29, label %30, label %120, !dbg !1870

30:                                               ; preds = %28
  %31 = tail call i32* @__errno_location() #27, !dbg !1871
  %32 = load i32, i32* %31, align 4, !dbg !1871, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %32, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %32, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %26, metadata !1790, metadata !DIExpression()), !dbg !1858
  br label %116, !dbg !1872

33:                                               ; preds = %25, %23
  %34 = phi i64 [ 0, %23 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %26, metadata !1790, metadata !DIExpression()), !dbg !1858
  %35 = and i32 %8, %7, !dbg !1873
  %36 = icmp eq i32 %35, -1, !dbg !1873
  call void @llvm.dbg.value(metadata i1 %36, metadata !1795, metadata !DIExpression()), !dbg !1874
  %37 = and i32 %6, 3072, !dbg !1875
  %38 = and i32 %4, 512, !dbg !1876
  %39 = or i32 %37, %38, !dbg !1877
  call void @llvm.dbg.value(metadata i1 undef, metadata !1798, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %4, metadata !1799, metadata !DIExpression()), !dbg !1874
  %40 = and i32 %4, -64, !dbg !1878
  %41 = icmp eq i32 %39, 0, !dbg !1878
  %42 = and i32 %4, -19, !dbg !1878
  %43 = select i1 %41, i32 %4, i32 %42, !dbg !1878
  %44 = select i1 %36, i32 %43, i32 %40, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %44, metadata !1799, metadata !DIExpression()), !dbg !1874
  %45 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1879
  %46 = tail call i32 @mkdir(i8* nonnull %45, i32 %44) #10, !dbg !1880
  %47 = icmp eq i32 %46, 0, !dbg !1881
  br i1 %47, label %48, label %54, !dbg !1882

48:                                               ; preds = %33
  %49 = and i32 %4, 511, !dbg !1883
  %50 = and i32 %49, %6, !dbg !1884
  call void @llvm.dbg.value(metadata i1 undef, metadata !1800, metadata !DIExpression()), !dbg !1885
  tail call void %5(i8* nonnull %0, i8* %3) #10, !dbg !1886
  %51 = or i32 %39, %50, !dbg !1887
  %52 = icmp eq i32 %51, 0, !dbg !1887
  %53 = and i1 %52, %36, !dbg !1887
  call void @llvm.dbg.value(metadata i1 %53, metadata !1788, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 3, metadata !1794, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 %56, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 -1, metadata !1799, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 2, metadata !1794, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i1 %9, metadata !1788, metadata !DIExpression()), !dbg !1839
  br i1 %53, label %120, label %81, !dbg !1888

54:                                               ; preds = %33
  %55 = tail call i32* @__errno_location() #27, !dbg !1889
  %56 = load i32, i32* %55, align 4, !dbg !1889, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %56, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 -1, metadata !1799, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %56, metadata !1789, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 -1, metadata !1799, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 2, metadata !1794, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i1 %9, metadata !1788, metadata !DIExpression()), !dbg !1839
  br i1 %9, label %57, label %81, !dbg !1888

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !1891
  br i1 %58, label %120, label %59, !dbg !1893

59:                                               ; preds = %57
  %60 = icmp ne i32 %56, 2, !dbg !1894
  %61 = and i1 %24, %60, !dbg !1895
  br i1 %61, label %62, label %116, !dbg !1895

62:                                               ; preds = %59
  %63 = bitcast %struct.stat* %11 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %63) #10, !dbg !1896
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1803, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %45, metadata !1898, metadata !DIExpression()) #10, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.stat* %11, metadata !1904, metadata !DIExpression()) #10, !dbg !1905
  %64 = call i32 @__xstat(i32 1, i8* nonnull %45, %struct.stat* nonnull %11) #10, !dbg !1908
  %65 = icmp eq i32 %64, 0, !dbg !1909
  br i1 %65, label %66, label %71, !dbg !1910

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3, !dbg !1911
  %68 = load i32, i32* %67, align 8, !dbg !1911, !tbaa !1914
  %69 = and i32 %68, 61440, !dbg !1911
  %70 = icmp eq i32 %69, 16384, !dbg !1911
  br i1 %70, label %78, label %80, !dbg !1917

71:                                               ; preds = %62
  %72 = icmp eq i32 %56, 17, !dbg !1918
  br i1 %72, label %73, label %80, !dbg !1920

73:                                               ; preds = %71
  %74 = load i32, i32* %55, align 4, !dbg !1921, !tbaa !1513
  switch i32 %74, label %75 [
    i32 2, label %80
    i32 20, label %80
  ], !dbg !1922

75:                                               ; preds = %73
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1923
  %77 = call i8* @quote(i8* nonnull %0) #10, !dbg !1925
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %74, i8* %76, i8* %77) #10, !dbg !1926
  br label %78, !dbg !1927

78:                                               ; preds = %75, %66
  %79 = phi i1 [ true, %66 ], [ false, %75 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #10, !dbg !1928
  br label %120

80:                                               ; preds = %66, %71, %73, %73
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #10, !dbg !1928
  br label %116

81:                                               ; preds = %48, %54
  %82 = phi i32 [ 0, %48 ], [ %56, %54 ]
  %83 = phi i32 [ %44, %48 ], [ -1, %54 ]
  %84 = phi i32 [ 3, %48 ], [ 2, %54 ]
  %85 = bitcast [2 x i32]* %12 to i8*, !dbg !1929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #10, !dbg !1929
  call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1829, metadata !DIExpression()), !dbg !1930
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1931
  %87 = call i32 @savewd_chdir(%struct.savewd* %1, i8* nonnull %45, i32 %84, i32* nonnull %86) #10, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %87, metadata !1834, metadata !DIExpression()), !dbg !1933
  %88 = icmp slt i32 %87, -1, !dbg !1934
  br i1 %88, label %89, label %90, !dbg !1935

89:                                               ; preds = %81
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10, !dbg !1936
  br label %120

90:                                               ; preds = %81
  %91 = icmp eq i32 %87, 0, !dbg !1937
  call void @llvm.dbg.value(metadata i1 %91, metadata !1835, metadata !DIExpression()), !dbg !1938
  %92 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.52, i64 0, i64 0), i8* %45, !dbg !1939
  call void @llvm.dbg.value(metadata i8* %92, metadata !1838, metadata !DIExpression()), !dbg !1938
  %93 = load i32, i32* %86, align 4, !dbg !1940, !tbaa !1513
  %94 = call i32 @dirchownmod(i32 %93, i8* %92, i32 %83, i32 %7, i32 %8, i32 %4, i32 %6) #10, !dbg !1942
  %95 = icmp eq i32 %94, 0, !dbg !1943
  br i1 %95, label %114, label %96, !dbg !1944

96:                                               ; preds = %90
  %97 = icmp eq i32 %82, 0, !dbg !1945
  br i1 %97, label %98, label %100, !dbg !1947

98:                                               ; preds = %96
  %99 = tail call i32* @__errno_location() #27, !dbg !1948
  br label %107, !dbg !1947

100:                                              ; preds = %96
  %101 = icmp ne i32 %82, 2, !dbg !1950
  %102 = and i1 %24, %101, !dbg !1951
  br i1 %102, label %103, label %113, !dbg !1951

103:                                              ; preds = %100
  %104 = tail call i32* @__errno_location() #27, !dbg !1952
  %105 = load i32, i32* %104, align 4, !dbg !1952, !tbaa !1513
  %106 = icmp eq i32 %105, 20, !dbg !1953
  br i1 %106, label %113, label %107, !dbg !1954

107:                                              ; preds = %98, %103
  %108 = phi i32* [ %99, %98 ], [ %104, %103 ], !dbg !1948
  %109 = load i32, i32* %108, align 4, !dbg !1948, !tbaa !1513
  %110 = select i1 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.53, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.54, i64 0, i64 0), !dbg !1955
  %111 = call i8* @dcgettext(i8* null, i8* %110, i32 5) #10, !dbg !1955
  %112 = call i8* @quote(i8* nonnull %0) #10, !dbg !1956
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %109, i8* %111, i8* %112) #10, !dbg !1957
  br label %114, !dbg !1958

113:                                              ; preds = %103, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10, !dbg !1936
  br label %116

114:                                              ; preds = %107, %90
  %115 = phi i1 [ false, %107 ], [ true, %90 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10, !dbg !1936
  br label %120

116:                                              ; preds = %30, %59, %80, %113, %19
  %117 = phi i32 [ %21, %19 ], [ %82, %113 ], [ %56, %59 ], [ %56, %80 ], [ %32, %30 ], !dbg !1959
  call void @llvm.dbg.value(metadata i32 %117, metadata !1789, metadata !DIExpression()), !dbg !1839
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.55, i64 0, i64 0), i32 5) #10, !dbg !1960
  %119 = call i8* @quote(i8* nonnull %0) #10, !dbg !1961
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %117, i8* %118, i8* %119) #10, !dbg !1962
  br label %120, !dbg !1963

120:                                              ; preds = %48, %89, %78, %57, %114, %28, %116
  %121 = phi i1 [ false, %116 ], [ true, %28 ], [ true, %89 ], [ %79, %78 ], [ true, %57 ], [ %115, %114 ], [ true, %48 ], !dbg !1839
  ret i1 %121, !dbg !1964
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !1965 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1977, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2004
  %2 = load i8, i8* %0, align 1, !dbg !2005, !tbaa !1725
  %3 = and i8 %2, -8, !dbg !2006
  %4 = icmp eq i8 %3, 48, !dbg !2006
  br i1 %4, label %5, label %39, !dbg !2006

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !2007
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !2009
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !2009
  call void @llvm.dbg.value(metadata i8* %8, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %7, metadata !1981, metadata !DIExpression()), !dbg !2009
  %9 = shl i32 %7, 3, !dbg !2010
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %10, metadata !1980, metadata !DIExpression()), !dbg !2004
  %11 = sext i8 %6 to i32, !dbg !2007
  %12 = add i32 %9, -48, !dbg !2012
  %13 = add i32 %12, %11, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %13, metadata !1981, metadata !DIExpression()), !dbg !2009
  %14 = icmp ugt i32 %13, 4095, !dbg !2014
  br i1 %14, label %149, label %15, !dbg !2016

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !2017, !tbaa !1725
  %17 = and i8 %16, -8, !dbg !2018
  %18 = icmp eq i8 %17, 48, !dbg !2018
  br i1 %18, label %5, label %19, !dbg !2018, !llvm.loop !2019

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !2022
  br i1 %20, label %21, label %149, !dbg !2024

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1984, metadata !DIExpression()), !dbg !2009
  %22 = ptrtoint i8* %10 to i64, !dbg !2025
  %23 = ptrtoint i8* %0 to i64, !dbg !2025
  %24 = sub i64 %22, %23, !dbg !2025
  %25 = icmp slt i64 %24, 5, !dbg !2026
  %26 = and i32 %13, 3072, !dbg !2027
  %27 = or i32 %26, 1023, !dbg !2027
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %28, metadata !1985, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %13, metadata !2028, metadata !DIExpression()) #10, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %28, metadata !2033, metadata !DIExpression()) #10, !dbg !2035
  %29 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !2037
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !2037
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !2034, metadata !DIExpression()) #10, !dbg !2035
  store i8 61, i8* %29, align 4, !dbg !2038, !tbaa !2039
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2041
  store i8 1, i8* %31, align 1, !dbg !2042, !tbaa !2043
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !2044
  %33 = bitcast i8* %32 to i32*, !dbg !2044
  store i32 4095, i32* %33, align 4, !dbg !2045, !tbaa !2046
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2047
  %35 = bitcast i8* %34 to i32*, !dbg !2047
  store i32 %13, i32* %35, align 4, !dbg !2048, !tbaa !2049
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !2050
  %37 = bitcast i8* %36 to i32*, !dbg !2050
  store i32 %28, i32* %37, align 4, !dbg !2051, !tbaa !2052
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !2053
  store i8 0, i8* %38, align 1, !dbg !2054, !tbaa !2043
  br label %149, !dbg !2055

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !2056
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !2059
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8* %41, metadata !1980, metadata !DIExpression()), !dbg !2004
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !2061

43:                                               ; preds = %39
  br label %44, !dbg !2062

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %46, metadata !1986, metadata !DIExpression()), !dbg !2060
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !2064
  call void @llvm.dbg.value(metadata i8* %47, metadata !1980, metadata !DIExpression()), !dbg !2004
  %48 = load i8, i8* %47, align 1, !dbg !2056, !tbaa !1725
  br label %39, !dbg !2065, !llvm.loop !2066

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !1986, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %42, metadata !2068, metadata !DIExpression()) #10, !dbg !2074
  call void @llvm.dbg.value(metadata i64 16, metadata !2073, metadata !DIExpression()) #10, !dbg !2074
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !2076
  br i1 %50, label %51, label %52, !dbg !2078

51:                                               ; preds = %49
  tail call void @xalloc_die() #25, !dbg !2079
  unreachable, !dbg !2079

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !2080
  %54 = tail call noalias i8* @xmalloc(i64 %53) #10, !dbg !2081
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1978, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %0, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %56, !dbg !2083

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !2084
  %58 = phi i64 [ 0, %52 ], [ %131, %144 ], !dbg !2085
  call void @llvm.dbg.value(metadata i64 %58, metadata !1979, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %57, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, metadata !1988, metadata !DIExpression()), !dbg !2086
  br label %59, !dbg !2087

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !2084
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !2086
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  %62 = load i8, i8* %60, align 1, !dbg !2088, !tbaa !1725
  %63 = sext i8 %62 to i32, !dbg !2088
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !2091

64:                                               ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %60, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %61, metadata !1988, metadata !DIExpression()), !dbg !2086
  br label %72, !dbg !2092

65:                                               ; preds = %59
  br label %68, !dbg !2093

66:                                               ; preds = %59
  br label %68, !dbg !2095

67:                                               ; preds = %59
  br label %68, !dbg !2096

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %70, metadata !1988, metadata !DIExpression()), !dbg !2086
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2098
  call void @llvm.dbg.value(metadata i8* %71, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %59, !dbg !2099, !llvm.loop !2100

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !2103
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !2084
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !2104
  %76 = phi i64 [ %58, %64 ], [ %131, %143 ], !dbg !2004
  call void @llvm.dbg.value(metadata i64 %76, metadata !1979, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %75, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %74, metadata !1980, metadata !DIExpression()), !dbg !2004
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !2105
  call void @llvm.dbg.value(metadata i8* %77, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 %73, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 0, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 3, metadata !1996, metadata !DIExpression()), !dbg !2106
  %78 = load i8, i8* %77, align 1, !dbg !2107, !tbaa !1725
  %79 = sext i8 %78 to i32, !dbg !2107
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
  ], !dbg !2092

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !2108

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !2109
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !2106
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !2111
  call void @llvm.dbg.value(metadata i32 %84, metadata !1998, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* %83, metadata !1980, metadata !DIExpression()), !dbg !2004
  %85 = shl i32 %84, 3, !dbg !2112
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %86, metadata !1980, metadata !DIExpression()), !dbg !2004
  %87 = sext i8 %82 to i32, !dbg !2109
  %88 = add i32 %85, -48, !dbg !2114
  %89 = add i32 %88, %87, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %89, metadata !1998, metadata !DIExpression()), !dbg !2111
  %90 = icmp ugt i32 %89, 4095, !dbg !2116
  br i1 %90, label %148, label %91, !dbg !2118

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !2119, !tbaa !1725
  %93 = and i8 %92, -8, !dbg !2120
  %94 = icmp eq i8 %93, 48, !dbg !2120
  br i1 %94, label %81, label %95, !dbg !2120, !llvm.loop !2121

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !2123
  br i1 %96, label %97, label %148, !dbg !2125

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !2126

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1994, metadata !DIExpression()), !dbg !2106
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !2127
  call void @llvm.dbg.value(metadata i8* %99, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %125, !dbg !2128

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1994, metadata !DIExpression()), !dbg !2106
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !2129
  call void @llvm.dbg.value(metadata i8* %101, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %125, !dbg !2130

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1994, metadata !DIExpression()), !dbg !2106
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !2131
  call void @llvm.dbg.value(metadata i8* %103, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %125, !dbg !2132

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !2133
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !2106
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !2136
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !2137
  call void @llvm.dbg.value(metadata i8 %108, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %107, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %106, metadata !1980, metadata !DIExpression()), !dbg !2004
  %109 = sext i8 %105 to i32, !dbg !2133
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !2138

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %111, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %120, !dbg !2141

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %113, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %120, !dbg !2143

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %115, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %120, !dbg !2145

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %117, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %120, !dbg !2147

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %119, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %120, !dbg !2149

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !2136
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !2136
  call void @llvm.dbg.value(metadata i8 %122, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %121, metadata !1994, metadata !DIExpression()), !dbg !2106
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %123, metadata !1980, metadata !DIExpression()), !dbg !2004
  %124 = load i8, i8* %123, align 1, !dbg !2133, !tbaa !1725
  br label %104, !dbg !2151, !llvm.loop !2152

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !2106
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !2104
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !2155
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %130, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %129, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %128, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %127, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  %131 = add i64 %76, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %131, metadata !1979, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !1997, metadata !DIExpression()), !dbg !2106
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !2157
  store i8 %73, i8* %132, align 4, !dbg !2158, !tbaa !2039
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !2159
  store i8 %130, i8* %133, align 1, !dbg !2160, !tbaa !2043
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !2161
  store i32 %127, i32* %134, align 4, !dbg !2162, !tbaa !2046
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !2163
  store i32 %128, i32* %135, align 4, !dbg !2164, !tbaa !2049
  %136 = icmp eq i32 %129, 0, !dbg !2165
  %137 = icmp eq i32 %127, 0, !dbg !2165
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !2165
  %139 = and i32 %138, %128, !dbg !2165
  %140 = select i1 %136, i32 %139, i32 %129, !dbg !2165
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !2166
  store i32 %140, i32* %141, align 4, !dbg !2167, !tbaa !2052
  call void @llvm.dbg.value(metadata i64 %76, metadata !1979, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %75, metadata !1988, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %86, metadata !1980, metadata !DIExpression()), !dbg !2004
  %142 = load i8, i8* %126, align 1, !dbg !2168, !tbaa !1725
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !2169

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !2004

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 %131, metadata !1979, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %126, metadata !1980, metadata !DIExpression()), !dbg !2004
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !2170
  call void @llvm.dbg.value(metadata i8* %145, metadata !1980, metadata !DIExpression()), !dbg !2004
  br label %56, !dbg !2171, !llvm.loop !2172

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !2175
  store i8 0, i8* %147, align 1, !dbg !2178, !tbaa !2043
  br label %149, !dbg !2179

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !2003), !dbg !2180
  tail call void @free(i8* %54) #10, !dbg !2181
  br label %149, !dbg !2182

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !2183
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* %0) local_unnamed_addr #8 !dbg !2184 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2186, metadata !DIExpression()), !dbg !2209
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #10, !dbg !2210
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2187, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #10, !dbg !2219
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !2218, metadata !DIExpression()) #10, !dbg !2219
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10, !dbg !2222
  %5 = icmp eq i32 %4, 0, !dbg !2223
  br i1 %5, label %6, label %19, !dbg !2224

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !2225
  %8 = load i32, i32* %7, align 8, !dbg !2225, !tbaa !1914
  call void @llvm.dbg.value(metadata i32 %8, metadata !2028, metadata !DIExpression()) #10, !dbg !2226
  call void @llvm.dbg.value(metadata i32 4095, metadata !2033, metadata !DIExpression()) #10, !dbg !2226
  %9 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2228
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !2034, metadata !DIExpression()) #10, !dbg !2226
  store i8 61, i8* %9, align 4, !dbg !2229, !tbaa !2039
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2230
  store i8 1, i8* %11, align 1, !dbg !2231, !tbaa !2043
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !2232
  %13 = bitcast i8* %12 to i32*, !dbg !2232
  store i32 4095, i32* %13, align 4, !dbg !2233, !tbaa !2046
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2234
  %15 = bitcast i8* %14 to i32*, !dbg !2234
  store i32 %8, i32* %15, align 4, !dbg !2235, !tbaa !2049
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !2236
  %17 = bitcast i8* %16 to i32*, !dbg !2236
  store i32 4095, i32* %17, align 4, !dbg !2237, !tbaa !2052
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !2238
  store i8 0, i8* %18, align 1, !dbg !2239, !tbaa !2043
  br label %19, !dbg !2240

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #10, !dbg !2241
  ret %struct.mode_change* %20, !dbg !2241
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #13 !dbg !2242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2249, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i1 %1, metadata !2250, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %2, metadata !2251, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !2252, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32* %4, metadata !2253, metadata !DIExpression()), !dbg !2265
  %6 = and i32 %0, 4095, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %6, metadata !2254, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !2252, metadata !DIExpression()), !dbg !2265
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !2267
  %8 = load i8, i8* %7, align 1, !dbg !2267, !tbaa !2043
  %9 = icmp eq i8 %8, 0, !dbg !2268
  br i1 %9, label %81, label %10, !dbg !2269

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0, !dbg !2270
  %12 = zext i1 %1 to i32, !dbg !2271
  %13 = xor i32 %2, -1, !dbg !2270
  br label %14, !dbg !2269

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !2252, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %17, metadata !2254, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %18, metadata !2255, metadata !DIExpression()), !dbg !2265
  %19 = sext i8 %15 to i32, !dbg !2274
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !2275
  %21 = load i32, i32* %20, align 4, !dbg !2275, !tbaa !2046
  call void @llvm.dbg.value(metadata i32 %21, metadata !2256, metadata !DIExpression()), !dbg !2270
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !2276
  %23 = load i32, i32* %22, align 4, !dbg !2276, !tbaa !2052
  %24 = xor i32 %23, -1, !dbg !2277
  %25 = and i32 %11, %24, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %25, metadata !2260, metadata !DIExpression()), !dbg !2270
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !2279
  %27 = load i32, i32* %26, align 4, !dbg !2279, !tbaa !2049
  call void @llvm.dbg.value(metadata i32 %27, metadata !2261, metadata !DIExpression()), !dbg !2270
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !2280

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %29, metadata !2261, metadata !DIExpression()), !dbg !2270
  %30 = and i32 %29, 292, !dbg !2282
  %31 = icmp eq i32 %30, 0, !dbg !2283
  %32 = select i1 %31, i32 0, i32 292, !dbg !2283
  %33 = and i32 %29, 146, !dbg !2284
  %34 = icmp eq i32 %33, 0, !dbg !2285
  %35 = select i1 %34, i32 0, i32 146, !dbg !2285
  %36 = and i32 %29, 73, !dbg !2286
  %37 = icmp eq i32 %36, 0, !dbg !2287
  %38 = select i1 %37, i32 0, i32 73, !dbg !2287
  %39 = or i32 %35, %29, !dbg !2288
  %40 = or i32 %39, %32, !dbg !2289
  %41 = or i32 %40, %38, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %41, metadata !2261, metadata !DIExpression()), !dbg !2270
  br label %48, !dbg !2291

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !2292
  %44 = or i32 %43, %12, !dbg !2293
  %45 = icmp eq i32 %44, 0, !dbg !2293
  %46 = or i32 %27, 73, !dbg !2294
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !2295
  br label %48, !dbg !2295

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !2270
  call void @llvm.dbg.value(metadata i32 %49, metadata !2261, metadata !DIExpression()), !dbg !2270
  %50 = icmp ne i32 %21, 0, !dbg !2296
  %51 = select i1 %50, i32 %21, i32 %13, !dbg !2296
  %52 = xor i32 %25, -1, !dbg !2297
  %53 = and i32 %51, %52, !dbg !2298
  %54 = and i32 %53, %49, !dbg !2299
  call void @llvm.dbg.value(metadata i32 %54, metadata !2261, metadata !DIExpression()), !dbg !2270
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !2300
  %56 = load i8, i8* %55, align 4, !dbg !2300, !tbaa !2039
  %57 = sext i8 %56 to i32, !dbg !2301
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !2302

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !2303
  %60 = select i1 %50, i32 %59, i32 0, !dbg !2303
  %61 = or i32 %60, %25, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %61, metadata !2262, metadata !DIExpression()), !dbg !2305
  %62 = and i32 %61, 4095, !dbg !2306
  %63 = xor i32 %62, 4095, !dbg !2306
  %64 = or i32 %63, %18, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %64, metadata !2255, metadata !DIExpression()), !dbg !2265
  %65 = and i32 %61, %17, !dbg !2308
  %66 = or i32 %54, %65, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %66, metadata !2254, metadata !DIExpression()), !dbg !2265
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %68, metadata !2255, metadata !DIExpression()), !dbg !2265
  %69 = or i32 %54, %17, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %69, metadata !2254, metadata !DIExpression()), !dbg !2265
  br label %74, !dbg !2312

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %71, metadata !2255, metadata !DIExpression()), !dbg !2265
  %72 = xor i32 %54, -1, !dbg !2314
  %73 = and i32 %17, %72, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %73, metadata !2254, metadata !DIExpression()), !dbg !2265
  br label %74, !dbg !2316

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !2265
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !2265
  call void @llvm.dbg.value(metadata i32 %76, metadata !2254, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %75, metadata !2255, metadata !DIExpression()), !dbg !2265
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !2252, metadata !DIExpression()), !dbg !2265
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !2267
  %79 = load i8, i8* %78, align 1, !dbg !2267, !tbaa !2043
  %80 = icmp eq i8 %79, 0, !dbg !2268
  br i1 %80, label %81, label %14, !dbg !2269, !llvm.loop !2318

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !2320
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !2321
  call void @llvm.dbg.value(metadata i32 %82, metadata !2255, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %83, metadata !2254, metadata !DIExpression()), !dbg !2265
  %84 = icmp eq i32* %4, null, !dbg !2322
  br i1 %84, label %86, label %85, !dbg !2324

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !2325, !tbaa !1513
  br label %86, !dbg !2326

86:                                               ; preds = %81, %85
  ret i32 %83, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()), !dbg !2333
  %2 = icmp eq i8* %0, null, !dbg !2334
  br i1 %2, label %3, label %6, !dbg !2336

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2337, !tbaa !1387
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #28, !dbg !2339
  tail call void @abort() #25, !dbg !2340
  unreachable, !dbg !2340

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #24, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %7, metadata !2331, metadata !DIExpression()), !dbg !2333
  %8 = icmp eq i8* %7, null, !dbg !2342
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2343
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %10, metadata !2332, metadata !DIExpression()), !dbg !2333
  %11 = ptrtoint i8* %10 to i64, !dbg !2344
  %12 = ptrtoint i8* %0 to i64, !dbg !2344
  %13 = sub i64 %11, %12, !dbg !2344
  %14 = icmp sgt i64 %13, 6, !dbg !2346
  br i1 %14, label %15, label %24, !dbg !2347

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2348
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #24, !dbg !2349
  %18 = icmp eq i32 %17, 0, !dbg !2350
  br i1 %18, label %19, label %24, !dbg !2351

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2330, metadata !DIExpression()), !dbg !2333
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #24, !dbg !2352
  %21 = icmp eq i32 %20, 0, !dbg !2355
  br i1 %21, label %22, label %24, !dbg !2356

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %23, metadata !2330, metadata !DIExpression()), !dbg !2333
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2359, !tbaa !1387
  br label %24, !dbg !2360

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2330, metadata !DIExpression()), !dbg !2333
  store i8* %25, i8** @program_name, align 8, !dbg !2361, !tbaa !1387
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2362, !tbaa !1387
  ret void, !dbg !2363
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2364 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2369, metadata !DIExpression()), !dbg !2372
  %2 = tail call i32* @__errno_location() #27, !dbg !2373
  %3 = load i32, i32* %2, align 4, !dbg !2373, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %3, metadata !2370, metadata !DIExpression()), !dbg !2372
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2374
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2374
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2374
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2375
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2371, metadata !DIExpression()), !dbg !2372
  store i32 %3, i32* %2, align 4, !dbg !2376, !tbaa !1513
  ret %struct.quoting_options* %8, !dbg !2377
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !2378 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2382, metadata !DIExpression()), !dbg !2383
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2384
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2384
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2385
  %5 = load i32, i32* %4, align 8, !dbg !2385, !tbaa !2386
  ret i32 %5, !dbg !2388
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2389 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2395
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2396
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2396
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2397
  store i32 %1, i32* %5, align 8, !dbg !2398, !tbaa !2386
  ret void, !dbg !2399
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #13 !dbg !2400 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2404, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %1, metadata !2405, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %2, metadata !2406, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 %1, metadata !2407, metadata !DIExpression()), !dbg !2411
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2412
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2412
  %6 = lshr i8 %1, 5, !dbg !2413
  %7 = zext i8 %6 to i64, !dbg !2413
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2414
  call void @llvm.dbg.value(metadata i32* %8, metadata !2408, metadata !DIExpression()), !dbg !2411
  %9 = and i8 %1, 31, !dbg !2415
  %10 = zext i8 %9 to i32, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %10, metadata !2409, metadata !DIExpression()), !dbg !2411
  %11 = load i32, i32* %8, align 4, !dbg !2416, !tbaa !1513
  %12 = lshr i32 %11, %10, !dbg !2417
  %13 = and i32 %12, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %13, metadata !2410, metadata !DIExpression()), !dbg !2411
  %14 = and i32 %2, 1, !dbg !2419
  %15 = xor i32 %13, %14, !dbg !2420
  %16 = shl i32 %15, %10, !dbg !2421
  %17 = xor i32 %16, %11, !dbg !2422
  store i32 %17, i32* %8, align 4, !dbg !2422, !tbaa !1513
  ret i32 %13, !dbg !2423
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2424 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2431
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2432
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2428, metadata !DIExpression()), !dbg !2431
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2435
  %6 = load i32, i32* %5, align 4, !dbg !2435, !tbaa !2436
  call void @llvm.dbg.value(metadata i32 %6, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i32 %1, i32* %5, align 4, !dbg !2437, !tbaa !2436
  ret i32 %6, !dbg !2438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2439 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()), !dbg !2446
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2447
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()), !dbg !2446
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2450
  store i32 10, i32* %6, align 8, !dbg !2451, !tbaa !2386
  %7 = icmp ne i8* %1, null, !dbg !2452
  %8 = icmp ne i8* %2, null, !dbg !2454
  %9 = and i1 %7, %8, !dbg !2455
  br i1 %9, label %11, label %10, !dbg !2455

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !2456
  unreachable, !dbg !2456

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2457
  store i8* %1, i8** %12, align 8, !dbg !2458, !tbaa !2459
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2460
  store i8* %2, i8** %13, align 8, !dbg !2461, !tbaa !2462
  ret void, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %1, metadata !2469, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %2, metadata !2470, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %3, metadata !2471, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2472, metadata !DIExpression()), !dbg !2476
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2477
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2473, metadata !DIExpression()), !dbg !2476
  %8 = tail call i32* @__errno_location() #27, !dbg !2478
  %9 = load i32, i32* %8, align 4, !dbg !2478, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %9, metadata !2474, metadata !DIExpression()), !dbg !2476
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2479
  %11 = load i32, i32* %10, align 8, !dbg !2479, !tbaa !2386
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2480
  %13 = load i32, i32* %12, align 4, !dbg !2480, !tbaa !2436
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2481
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2482
  %16 = load i8*, i8** %15, align 8, !dbg !2482, !tbaa !2459
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2483
  %18 = load i8*, i8** %17, align 8, !dbg !2483, !tbaa !2462
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %19, metadata !2475, metadata !DIExpression()), !dbg !2476
  store i32 %9, i32* %8, align 4, !dbg !2485, !tbaa !1513
  ret i64 %19, !dbg !2486
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2487 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.savewd*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2493, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %2, metadata !2495, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %3, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %4, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %5, metadata !2498, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32* %6, metadata !2499, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %7, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %8, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* null, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2506, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2551
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2552
  %14 = icmp eq i64 %13, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i1 %14, metadata !2508, metadata !DIExpression()), !dbg !2551
  %15 = lshr i32 %5, 1, !dbg !2554
  %16 = trunc i32 %15 to i8, !dbg !2554
  %17 = and i8 %16, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i8 %17, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2512, metadata !DIExpression()), !dbg !2551
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2555
  %19 = and i32 %5, 4, !dbg !2557
  %20 = icmp eq i32 %19, 0, !dbg !2557
  %21 = and i32 %5, 1, !dbg !2560
  %22 = icmp eq i32 %21, 0, !dbg !2560
  %23 = bitcast i64* %10 to i8*, !dbg !2563
  %24 = bitcast i32* %12 to i8*, !dbg !2564
  %25 = icmp eq i32* %6, null, !dbg !2565
  br label %26, !dbg !2567

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2568
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2569
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2570
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2571
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2551
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2572
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2573
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2574
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %38, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %37, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %36, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %35, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %34, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %33, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %32, metadata !2506, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %31, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %30, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %29, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %28, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %27, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2545), !dbg !2575
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
  ], !dbg !2576

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %35, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 5, metadata !2497, metadata !DIExpression()), !dbg !2551
  br label %92, !dbg !2577

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 5, metadata !2497, metadata !DIExpression()), !dbg !2551
  %42 = and i8 %35, 1, !dbg !2579
  %43 = icmp eq i8 %42, 0, !dbg !2579
  br i1 %43, label %44, label %92, !dbg !2577

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2581
  br i1 %45, label %92, label %46, !dbg !2584

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2581, !tbaa !1725
  br label %92, !dbg !2581

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %48, metadata !2500, metadata !DIExpression()), !dbg !2551
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %49, metadata !2501, metadata !DIExpression()), !dbg !2551
  br label %50, !dbg !2590

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %51, metadata !2500, metadata !DIExpression()), !dbg !2551
  %53 = and i8 %35, 1, !dbg !2591
  %54 = icmp eq i8 %53, 0, !dbg !2591
  br i1 %54, label %55, label %70, !dbg !2593

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2551
  %56 = load i8, i8* %51, align 1, !dbg !2594, !tbaa !1725
  %57 = icmp eq i8 %56, 0, !dbg !2597
  br i1 %57, label %70, label %58, !dbg !2597

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %61, metadata !2503, metadata !DIExpression()), !dbg !2551
  %62 = icmp ult i64 %61, %39, !dbg !2598
  br i1 %62, label %63, label %65, !dbg !2601

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2598
  store i8 %59, i8* %64, align 1, !dbg !2598, !tbaa !1725
  br label %65, !dbg !2598

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %66, metadata !2503, metadata !DIExpression()), !dbg !2551
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2602
  call void @llvm.dbg.value(metadata i8* %67, metadata !2505, metadata !DIExpression()), !dbg !2551
  %68 = load i8, i8* %67, align 1, !dbg !2594, !tbaa !1725
  %69 = icmp eq i8 %68, 0, !dbg !2597
  br i1 %69, label %70, label %58, !dbg !2597, !llvm.loop !2603

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2605
  call void @llvm.dbg.value(metadata i64 %71, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %52, metadata !2505, metadata !DIExpression()), !dbg !2551
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #24, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %72, metadata !2506, metadata !DIExpression()), !dbg !2551
  br label %92, !dbg !2607

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2507, metadata !DIExpression()), !dbg !2551
  br label %74, !dbg !2608

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %75, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2509, metadata !DIExpression()), !dbg !2551
  br label %76, !dbg !2609

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2571
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %78, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %77, metadata !2507, metadata !DIExpression()), !dbg !2551
  %79 = and i8 %78, 1, !dbg !2610
  %80 = icmp eq i8 %79, 0, !dbg !2610
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2612
  br label %82, !dbg !2612

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2551
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2554
  call void @llvm.dbg.value(metadata i8 %84, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %83, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  %85 = and i8 %84, 1, !dbg !2613
  %86 = icmp eq i8 %85, 0, !dbg !2613
  br i1 %86, label %87, label %92, !dbg !2615

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2616
  br i1 %88, label %92, label %89, !dbg !2619

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2616, !tbaa !1725
  br label %92, !dbg !2616

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2509, metadata !DIExpression()), !dbg !2551
  br label %92, !dbg !2620

91:                                               ; preds = %26
  call void @abort() #25, !dbg !2621
  unreachable, !dbg !2621

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2605
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !2551
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2551
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2551
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %100, metadata !2509, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %98, metadata !2506, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %96, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %93, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2502, metadata !DIExpression()), !dbg !2551
  %101 = and i8 %99, 1, !dbg !2622
  %102 = icmp ne i8 %101, 0, !dbg !2622
  %103 = icmp ne i32 %93, 2, !dbg !2622
  %104 = and i1 %103, %102, !dbg !2622
  %105 = icmp ne i64 %98, 0, !dbg !2622
  %106 = and i1 %105, %104, !dbg !2622
  %107 = icmp ugt i64 %98, 1, !dbg !2622
  %108 = and i8 %100, 1, !dbg !2624
  %109 = icmp eq i8 %108, 0, !dbg !2624
  %110 = icmp eq i32 %93, 2, !dbg !2627
  %111 = or i1 %103, %109, !dbg !2629
  %112 = icmp ne i8 %108, 0, !dbg !2631
  %113 = and i1 %110, %112, !dbg !2631
  %114 = xor i1 %102, true, !dbg !2632
  %115 = xor i1 %104, true, !dbg !2565
  %116 = and i1 %109, %115, !dbg !2565
  %117 = or i1 %25, %116, !dbg !2565
  %118 = and i8 %99, %100, !dbg !2633
  %119 = and i8 %118, 1, !dbg !2633
  %120 = icmp ne i8 %119, 0, !dbg !2633
  %121 = and i1 %120, %105, !dbg !2633
  br label %122, !dbg !2635

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2636
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2605
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2568
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2572
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2573
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2574
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %126, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %123, metadata !2502, metadata !DIExpression()), !dbg !2551
  %131 = icmp eq i64 %126, -1, !dbg !2637
  br i1 %131, label %132, label %136, !dbg !2638

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2639
  %134 = load i8, i8* %133, align 1, !dbg !2639, !tbaa !1725
  %135 = icmp eq i8 %134, 0, !dbg !2640
  br i1 %135, label %581, label %138, !dbg !2641

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2642
  br i1 %137, label %581, label %138, !dbg !2641

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2643
  br i1 %106, label %139, label %154, !dbg !2644

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2645
  %141 = and i1 %107, %131, !dbg !2646
  br i1 %141, label %142, label %144, !dbg !2646

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #24, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %143, metadata !2496, metadata !DIExpression()), !dbg !2551
  br label %144, !dbg !2648

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2496, metadata !DIExpression()), !dbg !2551
  %146 = icmp ugt i64 %140, %145, !dbg !2649
  br i1 %146, label %154, label %147, !dbg !2650

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2651
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2652
  %150 = icmp ne i32 %149, 0, !dbg !2653
  %151 = or i1 %150, %109, !dbg !2654
  %152 = xor i1 %150, true, !dbg !2654
  %153 = zext i1 %152 to i8, !dbg !2654
  br i1 %151, label %154, label %639, !dbg !2654

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2643
  call void @llvm.dbg.value(metadata i8 %156, metadata !2518, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %155, metadata !2496, metadata !DIExpression()), !dbg !2551
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2655
  %158 = load i8, i8* %157, align 1, !dbg !2655, !tbaa !1725
  call void @llvm.dbg.value(metadata i8 %158, metadata !2513, metadata !DIExpression()), !dbg !2643
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
  ], !dbg !2656

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2657

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2658

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2519, metadata !DIExpression()), !dbg !2643
  %162 = and i8 %127, 1, !dbg !2661
  %163 = icmp eq i8 %162, 0, !dbg !2661
  %164 = and i1 %110, %163, !dbg !2661
  br i1 %164, label %165, label %181, !dbg !2661

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2663
  br i1 %166, label %167, label %169, !dbg !2667

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2663
  store i8 39, i8* %168, align 1, !dbg !2663, !tbaa !1725
  br label %169, !dbg !2663

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %170, metadata !2503, metadata !DIExpression()), !dbg !2551
  %171 = icmp ult i64 %170, %130, !dbg !2668
  br i1 %171, label %172, label %174, !dbg !2671

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2668
  store i8 36, i8* %173, align 1, !dbg !2668, !tbaa !1725
  br label %174, !dbg !2668

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %175, metadata !2503, metadata !DIExpression()), !dbg !2551
  %176 = icmp ult i64 %175, %130, !dbg !2672
  br i1 %176, label %177, label %179, !dbg !2675

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2672
  store i8 39, i8* %178, align 1, !dbg !2672, !tbaa !1725
  br label %179, !dbg !2672

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %180, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %181, !dbg !2676

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2551
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %183, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %182, metadata !2503, metadata !DIExpression()), !dbg !2551
  %184 = icmp ult i64 %182, %130, !dbg !2677
  br i1 %184, label %185, label %187, !dbg !2680

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2677
  store i8 92, i8* %186, align 1, !dbg !2677, !tbaa !1725
  br label %187, !dbg !2677

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %188, metadata !2503, metadata !DIExpression()), !dbg !2551
  br i1 %103, label %189, label %463, !dbg !2681

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2683
  %191 = icmp ult i64 %190, %155, !dbg !2684
  br i1 %191, label %192, label %463, !dbg !2685

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2686
  %194 = load i8, i8* %193, align 1, !dbg !2686, !tbaa !1725
  %195 = add i8 %194, -48, !dbg !2687
  %196 = icmp ult i8 %195, 10, !dbg !2687
  br i1 %196, label %197, label %463, !dbg !2687

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2688
  br i1 %198, label %199, label %201, !dbg !2692

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2688
  store i8 48, i8* %200, align 1, !dbg !2688, !tbaa !1725
  br label %201, !dbg !2688

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %202, metadata !2503, metadata !DIExpression()), !dbg !2551
  %203 = icmp ult i64 %202, %130, !dbg !2693
  br i1 %203, label %204, label %206, !dbg !2696

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2693
  store i8 48, i8* %205, align 1, !dbg !2693, !tbaa !1725
  br label %206, !dbg !2693

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %207, metadata !2503, metadata !DIExpression()), !dbg !2551
  br label %463, !dbg !2697

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2698

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2699

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2700

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2701

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2702
  %214 = icmp ult i64 %213, %155, !dbg !2703
  br i1 %214, label %215, label %463, !dbg !2704

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2705
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2706
  %218 = load i8, i8* %217, align 1, !dbg !2706, !tbaa !1725
  %219 = icmp eq i8 %218, 63, !dbg !2707
  br i1 %219, label %220, label %463, !dbg !2708

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2709
  %222 = load i8, i8* %221, align 1, !dbg !2709, !tbaa !1725
  %223 = sext i8 %222 to i32, !dbg !2709
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
  ], !dbg !2710

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2711

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %213, metadata !2502, metadata !DIExpression()), !dbg !2551
  %226 = icmp ult i64 %124, %130, !dbg !2713
  br i1 %226, label %227, label %229, !dbg !2716

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2713
  store i8 63, i8* %228, align 1, !dbg !2713, !tbaa !1725
  br label %229, !dbg !2713

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %230, metadata !2503, metadata !DIExpression()), !dbg !2551
  %231 = icmp ult i64 %230, %130, !dbg !2717
  br i1 %231, label %232, label %234, !dbg !2720

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2717
  store i8 34, i8* %233, align 1, !dbg !2717, !tbaa !1725
  br label %234, !dbg !2717

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %235, metadata !2503, metadata !DIExpression()), !dbg !2551
  %236 = icmp ult i64 %235, %130, !dbg !2721
  br i1 %236, label %237, label %239, !dbg !2724

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2721
  store i8 34, i8* %238, align 1, !dbg !2721, !tbaa !1725
  br label %239, !dbg !2721

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %240, metadata !2503, metadata !DIExpression()), !dbg !2551
  %241 = icmp ult i64 %240, %130, !dbg !2725
  br i1 %241, label %242, label %244, !dbg !2728

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2725
  store i8 63, i8* %243, align 1, !dbg !2725, !tbaa !1725
  br label %244, !dbg !2725

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %245, metadata !2503, metadata !DIExpression()), !dbg !2551
  br label %463, !dbg !2729

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2517, metadata !DIExpression()), !dbg !2643
  br label %256, !dbg !2730

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2517, metadata !DIExpression()), !dbg !2643
  br label %256, !dbg !2731

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2517, metadata !DIExpression()), !dbg !2643
  br label %254, !dbg !2732

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2517, metadata !DIExpression()), !dbg !2643
  br label %254, !dbg !2733

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2517, metadata !DIExpression()), !dbg !2643
  br label %256, !dbg !2734

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2517, metadata !DIExpression()), !dbg !2643
  br i1 %110, label %252, label %253, !dbg !2735

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2736

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2739

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2740
  call void @llvm.dbg.value(metadata i8 %255, metadata !2517, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.label(metadata !2546), !dbg !2741
  br i1 %111, label %256, label %625, !dbg !2742

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2740
  call void @llvm.dbg.value(metadata i8 %257, metadata !2517, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.label(metadata !2547), !dbg !2744
  br i1 %102, label %488, label %463, !dbg !2745

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2746

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2747, !tbaa !1725
  %261 = icmp eq i8 %260, 0, !dbg !2748
  br i1 %261, label %262, label %463, !dbg !2749

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2750
  br i1 %263, label %264, label %463, !dbg !2752

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2520, metadata !DIExpression()), !dbg !2643
  br label %265, !dbg !2753

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2643
  call void @llvm.dbg.value(metadata i8 %266, metadata !2520, metadata !DIExpression()), !dbg !2643
  br i1 %111, label %463, label %625, !dbg !2754

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2520, metadata !DIExpression()), !dbg !2643
  br i1 %110, label %268, label %463, !dbg !2755

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2756

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2758
  %271 = icmp ne i64 %125, 0, !dbg !2760
  %272 = or i1 %271, %270, !dbg !2761
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2761
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %274, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %273, metadata !2504, metadata !DIExpression()), !dbg !2551
  %275 = icmp ult i64 %124, %274, !dbg !2762
  br i1 %275, label %276, label %278, !dbg !2765

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2762
  store i8 39, i8* %277, align 1, !dbg !2762, !tbaa !1725
  br label %278, !dbg !2762

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %279, metadata !2503, metadata !DIExpression()), !dbg !2551
  %280 = icmp ult i64 %279, %274, !dbg !2766
  br i1 %280, label %281, label %283, !dbg !2769

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2766
  store i8 92, i8* %282, align 1, !dbg !2766, !tbaa !1725
  br label %283, !dbg !2766

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %284, metadata !2503, metadata !DIExpression()), !dbg !2551
  %285 = icmp ult i64 %284, %274, !dbg !2770
  br i1 %285, label %286, label %288, !dbg !2773

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2770
  store i8 39, i8* %287, align 1, !dbg !2770, !tbaa !1725
  br label %288, !dbg !2770

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %289, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %463, !dbg !2774

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2775

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2521, metadata !DIExpression()), !dbg !2776
  %292 = tail call i16** @__ctype_b_loc() #27, !dbg !2777
  %293 = load i16*, i16** %292, align 8, !dbg !2777, !tbaa !1387
  %294 = zext i8 %158 to i64, !dbg !2777
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2777
  %296 = load i16, i16* %295, align 2, !dbg !2777, !tbaa !2779
  %297 = lshr i16 %296, 14, !dbg !2780
  %298 = trunc i16 %297 to i8, !dbg !2780
  %299 = and i8 %298, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i8 %299, metadata !2524, metadata !DIExpression()), !dbg !2776
  br label %355, !dbg !2781

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #10, !dbg !2782
  call void @llvm.dbg.declare(metadata %struct.savewd* %11, metadata !2525, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %23, metadata !2784, metadata !DIExpression()) #10, !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()) #10, !dbg !2792
  call void @llvm.dbg.value(metadata i64 8, metadata !2791, metadata !DIExpression()) #10, !dbg !2792
  store i64 0, i64* %10, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 1, metadata !2524, metadata !DIExpression()), !dbg !2776
  %301 = icmp eq i64 %155, -1, !dbg !2795
  br i1 %301, label %302, label %304, !dbg !2797

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #24, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %303, metadata !2496, metadata !DIExpression()), !dbg !2551
  br label %304, !dbg !2799

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2643
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  br label %306, !dbg !2800

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2801
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2802
  call void @llvm.dbg.value(metadata i8 %308, metadata !2524, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2803
  %309 = add i64 %307, %123, !dbg !2804
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2805
  %311 = sub i64 %305, %309, !dbg !2806
  call void @llvm.dbg.value(metadata i32* %12, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2564
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.savewd* nonnull %11) #10, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %312, metadata !2534, metadata !DIExpression()), !dbg !2564
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2808

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  %314 = icmp ugt i64 %305, %309, !dbg !2809
  br i1 %314, label %315, label %340, !dbg !2811

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2812
  br label %317, !dbg !2812

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2521, metadata !DIExpression()), !dbg !2776
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2813
  %321 = load i8, i8* %320, align 1, !dbg !2813, !tbaa !1725
  %322 = icmp eq i8 %321, 0, !dbg !2811
  br i1 %322, label %340, label %323, !dbg !2812

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %324, metadata !2521, metadata !DIExpression()), !dbg !2776
  %325 = add i64 %324, %123, !dbg !2815
  %326 = icmp ult i64 %325, %305, !dbg !2809
  br i1 %326, label %317, label %340, !dbg !2811, !llvm.loop !2816

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2817
  %329 = and i1 %113, %328, !dbg !2820
  call void @llvm.dbg.value(metadata i64 1, metadata !2535, metadata !DIExpression()), !dbg !2821
  br i1 %329, label %330, label %343, !dbg !2820

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2535, metadata !DIExpression()), !dbg !2821
  %332 = add i64 %331, %309, !dbg !2822
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2823
  %334 = load i8, i8* %333, align 1, !dbg !2823, !tbaa !1725
  %335 = sext i8 %334 to i32, !dbg !2823
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2824

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %337, metadata !2535, metadata !DIExpression()), !dbg !2821
  %338 = icmp eq i64 %337, %312, !dbg !2817
  br i1 %338, label %343, label %330, !dbg !2826, !llvm.loop !2827

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 %308, metadata !2524, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %307, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 %308, metadata !2524, metadata !DIExpression()), !dbg !2776
  br label %340, !dbg !2829

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2829
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2830, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %344, metadata !2531, metadata !DIExpression()), !dbg !2564
  %345 = call i32 @iswprint(i32 %344) #10, !dbg !2832
  %346 = icmp eq i32 %345, 0, !dbg !2832
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2833
  call void @llvm.dbg.value(metadata i8 %347, metadata !2524, metadata !DIExpression()), !dbg !2776
  %348 = add i64 %312, %307, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %348, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 %347, metadata !2524, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %348, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2829
  %349 = call i32 @mbsinit(%struct.savewd* nonnull %11) #24, !dbg !2835
  %350 = icmp eq i32 %349, 0, !dbg !2836
  br i1 %350, label %306, label %351, !dbg !2837, !llvm.loop !2838

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !2840
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 2, metadata !2497, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %99, metadata !2507, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %305, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #10, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #10, !dbg !2840
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2643
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2841
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2841
  call void @llvm.dbg.value(metadata i8 %358, metadata !2524, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %357, metadata !2521, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %356, metadata !2496, metadata !DIExpression()), !dbg !2551
  %359 = and i8 %358, 1, !dbg !2842
  %360 = icmp ne i8 %359, 0, !dbg !2842
  call void @llvm.dbg.value(metadata i8 %359, metadata !2520, metadata !DIExpression()), !dbg !2643
  %361 = icmp ult i64 %357, 2, !dbg !2843
  %362 = or i1 %360, %114, !dbg !2844
  %363 = and i1 %361, %362, !dbg !2845
  br i1 %363, label %463, label %364, !dbg !2845

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %365, metadata !2542, metadata !DIExpression()), !dbg !2847
  br label %366, !dbg !2848

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2636
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2551
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2572
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2643
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2643
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2849
  call void @llvm.dbg.value(metadata i8 %372, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %371, metadata !2518, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %370, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %369, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %368, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %367, metadata !2502, metadata !DIExpression()), !dbg !2551
  br i1 %362, label %419, label %373, !dbg !2850

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2855

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2519, metadata !DIExpression()), !dbg !2643
  %375 = and i8 %369, 1, !dbg !2858
  %376 = icmp eq i8 %375, 0, !dbg !2858
  %377 = and i1 %110, %376, !dbg !2858
  br i1 %377, label %378, label %394, !dbg !2858

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2860
  br i1 %379, label %380, label %382, !dbg !2864

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2860
  store i8 39, i8* %381, align 1, !dbg !2860, !tbaa !1725
  br label %382, !dbg !2860

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %383, metadata !2503, metadata !DIExpression()), !dbg !2551
  %384 = icmp ult i64 %383, %130, !dbg !2865
  br i1 %384, label %385, label %387, !dbg !2868

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2865
  store i8 36, i8* %386, align 1, !dbg !2865, !tbaa !1725
  br label %387, !dbg !2865

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %388, metadata !2503, metadata !DIExpression()), !dbg !2551
  %389 = icmp ult i64 %388, %130, !dbg !2869
  br i1 %389, label %390, label %392, !dbg !2872

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2869
  store i8 39, i8* %391, align 1, !dbg !2869, !tbaa !1725
  br label %392, !dbg !2869

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %393, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %394, !dbg !2873

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2551
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %396, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %395, metadata !2503, metadata !DIExpression()), !dbg !2551
  %397 = icmp ult i64 %395, %130, !dbg !2874
  br i1 %397, label %398, label %400, !dbg !2877

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2874
  store i8 92, i8* %399, align 1, !dbg !2874, !tbaa !1725
  br label %400, !dbg !2874

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %401, metadata !2503, metadata !DIExpression()), !dbg !2551
  %402 = icmp ult i64 %401, %130, !dbg !2878
  br i1 %402, label %403, label %407, !dbg !2881

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2878
  %405 = or i8 %404, 48, !dbg !2878
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2878
  store i8 %405, i8* %406, align 1, !dbg !2878, !tbaa !1725
  br label %407, !dbg !2878

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %408, metadata !2503, metadata !DIExpression()), !dbg !2551
  %409 = icmp ult i64 %408, %130, !dbg !2882
  br i1 %409, label %410, label %415, !dbg !2885

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2882
  %412 = and i8 %411, 7, !dbg !2882
  %413 = or i8 %412, 48, !dbg !2882
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2882
  store i8 %413, i8* %414, align 1, !dbg !2882, !tbaa !1725
  br label %415, !dbg !2882

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %416, metadata !2503, metadata !DIExpression()), !dbg !2551
  %417 = and i8 %370, 7, !dbg !2886
  %418 = or i8 %417, 48, !dbg !2887
  call void @llvm.dbg.value(metadata i8 %418, metadata !2513, metadata !DIExpression()), !dbg !2643
  br label %428, !dbg !2888

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2889
  %421 = icmp eq i8 %420, 0, !dbg !2889
  br i1 %421, label %428, label %422, !dbg !2891

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2892
  br i1 %423, label %424, label %426, !dbg !2896

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2892
  store i8 92, i8* %425, align 1, !dbg !2892, !tbaa !1725
  br label %426, !dbg !2892

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %427, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2643
  br label %428, !dbg !2897

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2551
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2572
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2643
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2643
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2643
  call void @llvm.dbg.value(metadata i8 %433, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %432, metadata !2518, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %431, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %430, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %429, metadata !2503, metadata !DIExpression()), !dbg !2551
  %434 = add i64 %367, 1, !dbg !2898
  %435 = icmp ugt i64 %365, %434, !dbg !2900
  br i1 %435, label %436, label %526, !dbg !2901

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2902
  %438 = icmp ne i8 %437, 0, !dbg !2902
  %439 = and i8 %433, 1, !dbg !2902
  %440 = icmp eq i8 %439, 0, !dbg !2902
  %441 = and i1 %438, %440, !dbg !2902
  br i1 %441, label %442, label %453, !dbg !2902

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2905
  br i1 %443, label %444, label %446, !dbg !2909

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2905
  store i8 39, i8* %445, align 1, !dbg !2905, !tbaa !1725
  br label %446, !dbg !2905

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %447, metadata !2503, metadata !DIExpression()), !dbg !2551
  %448 = icmp ult i64 %447, %130, !dbg !2910
  br i1 %448, label %449, label %451, !dbg !2913

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2910
  store i8 39, i8* %450, align 1, !dbg !2910, !tbaa !1725
  br label %451, !dbg !2910

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %452, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %453, !dbg !2914

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2915
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %455, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %454, metadata !2503, metadata !DIExpression()), !dbg !2551
  %456 = icmp ult i64 %454, %130, !dbg !2916
  br i1 %456, label %457, label %459, !dbg !2919

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2916
  store i8 %431, i8* %458, align 1, !dbg !2916, !tbaa !1725
  br label %459, !dbg !2916

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %460, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %434, metadata !2502, metadata !DIExpression()), !dbg !2551
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2920
  %462 = load i8, i8* %461, align 1, !dbg !2920, !tbaa !1725
  call void @llvm.dbg.value(metadata i8 %462, metadata !2513, metadata !DIExpression()), !dbg !2643
  br label %366, !dbg !2921, !llvm.loop !2922

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2636
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2551
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2568
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2925
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2551
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2551
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2643
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2643
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2643
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %472, metadata !2520, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %471, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %156, metadata !2518, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %470, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %469, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %468, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %467, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %466, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %465, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %464, metadata !2502, metadata !DIExpression()), !dbg !2551
  br i1 %117, label %486, label %474, !dbg !2926

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2927
  %476 = zext i8 %475 to i64, !dbg !2927
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2928
  %478 = load i32, i32* %477, align 4, !dbg !2928, !tbaa !1513
  %479 = and i8 %470, 31, !dbg !2929
  %480 = zext i8 %479 to i32, !dbg !2929
  %481 = shl nuw i32 1, %480, !dbg !2930
  %482 = and i32 %478, %481, !dbg !2930
  %483 = icmp eq i32 %482, 0, !dbg !2930
  %484 = icmp eq i8 %156, 0, !dbg !2931
  %485 = and i1 %484, %483, !dbg !2932
  br i1 %485, label %526, label %488, !dbg !2932

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2931
  br i1 %487, label %526, label %488, !dbg !2933

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2934
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2551
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2568
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2925
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2572
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2573
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2643
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2643
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %496, metadata !2520, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %495, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %494, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %493, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %492, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %491, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %490, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %489, metadata !2502, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2548), !dbg !2935
  br i1 %109, label %498, label %629, !dbg !2936

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2519, metadata !DIExpression()), !dbg !2643
  %499 = and i8 %493, 1, !dbg !2938
  %500 = icmp eq i8 %499, 0, !dbg !2938
  %501 = and i1 %110, %500, !dbg !2938
  br i1 %501, label %502, label %518, !dbg !2938

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2940
  br i1 %503, label %504, label %506, !dbg !2944

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2940
  store i8 39, i8* %505, align 1, !dbg !2940, !tbaa !1725
  br label %506, !dbg !2940

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %507, metadata !2503, metadata !DIExpression()), !dbg !2551
  %508 = icmp ult i64 %507, %497, !dbg !2945
  br i1 %508, label %509, label %511, !dbg !2948

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2945
  store i8 36, i8* %510, align 1, !dbg !2945, !tbaa !1725
  br label %511, !dbg !2945

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %512, metadata !2503, metadata !DIExpression()), !dbg !2551
  %513 = icmp ult i64 %512, %497, !dbg !2949
  br i1 %513, label %514, label %516, !dbg !2952

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2949
  store i8 39, i8* %515, align 1, !dbg !2949, !tbaa !1725
  br label %516, !dbg !2949

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %517, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 1, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %518, !dbg !2953

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2643
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %520, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %519, metadata !2503, metadata !DIExpression()), !dbg !2551
  %521 = icmp ult i64 %519, %497, !dbg !2954
  br i1 %521, label %522, label %524, !dbg !2957

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2954
  store i8 92, i8* %523, align 1, !dbg !2954, !tbaa !1725
  br label %524, !dbg !2954

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %525, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %536, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %535, metadata !2520, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %534, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %533, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %532, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %531, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %530, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %529, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %528, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %527, metadata !2502, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2549), !dbg !2958
  br label %553, !dbg !2959

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2934
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2551
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2568
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2925
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2572
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2573
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2962
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2643
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2643
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %535, metadata !2520, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %534, metadata !2519, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %533, metadata !2513, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 %532, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %531, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %530, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %529, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %528, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %527, metadata !2502, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2549), !dbg !2958
  %537 = and i8 %531, 1, !dbg !2959
  %538 = icmp ne i8 %537, 0, !dbg !2959
  %539 = and i8 %534, 1, !dbg !2959
  %540 = icmp eq i8 %539, 0, !dbg !2959
  %541 = and i1 %538, %540, !dbg !2959
  br i1 %541, label %542, label %553, !dbg !2959

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2963
  br i1 %543, label %544, label %546, !dbg !2967

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2963
  store i8 39, i8* %545, align 1, !dbg !2963, !tbaa !1725
  br label %546, !dbg !2963

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %547, metadata !2503, metadata !DIExpression()), !dbg !2551
  %548 = icmp ult i64 %547, %536, !dbg !2968
  br i1 %548, label %549, label %551, !dbg !2971

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2968
  store i8 39, i8* %550, align 1, !dbg !2968, !tbaa !1725
  br label %551, !dbg !2968

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %552, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 0, metadata !2510, metadata !DIExpression()), !dbg !2551
  br label %553, !dbg !2972

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2643
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2551
  call void @llvm.dbg.value(metadata i8 %562, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %561, metadata !2503, metadata !DIExpression()), !dbg !2551
  %563 = icmp ult i64 %561, %554, !dbg !2973
  br i1 %563, label %564, label %566, !dbg !2976

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2973
  store i8 %556, i8* %565, align 1, !dbg !2973, !tbaa !1725
  br label %566, !dbg !2973

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %567, metadata !2503, metadata !DIExpression()), !dbg !2551
  %568 = and i8 %555, 1, !dbg !2977
  %569 = icmp eq i8 %568, 0, !dbg !2977
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2979
  call void @llvm.dbg.value(metadata i8 %570, metadata !2512, metadata !DIExpression()), !dbg !2551
  br label %571, !dbg !2980

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2934
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2551
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2568
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2925
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2572
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2551
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2574
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %578, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %577, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %576, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %575, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %574, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %573, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %572, metadata !2502, metadata !DIExpression()), !dbg !2551
  %580 = add i64 %572, 1, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %580, metadata !2502, metadata !DIExpression()), !dbg !2551
  br label %122, !dbg !2982, !llvm.loop !2983

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %127, metadata !2510, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %128, metadata !2511, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %129, metadata !2512, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  %583 = icmp eq i64 %124, 0, !dbg !2985
  %584 = and i1 %110, %583, !dbg !2987
  %585 = xor i1 %584, true, !dbg !2987
  %586 = or i1 %109, %585, !dbg !2987
  br i1 %586, label %587, label %629, !dbg !2987

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2988
  %589 = xor i1 %588, true, !dbg !2988
  %590 = and i8 %128, 1, !dbg !2990
  %591 = icmp eq i8 %590, 0, !dbg !2990
  %592 = or i1 %591, %589, !dbg !2988
  br i1 %592, label %602, label %593, !dbg !2988

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2991
  %595 = icmp eq i8 %594, 0, !dbg !2991
  br i1 %595, label %598, label %596, !dbg !2994

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %94, metadata !2500, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %95, metadata !2501, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %125, metadata !2504, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %582, metadata !2496, metadata !DIExpression()), !dbg !2551
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2995
  br label %645, !dbg !2996

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2997
  %600 = icmp ne i64 %125, 0, !dbg !2999
  %601 = and i1 %600, %599, !dbg !3000
  br i1 %601, label %26, label %602, !dbg !3000

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %130, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  %603 = icmp ne i8* %97, null, !dbg !3001
  %604 = and i1 %603, %109, !dbg !3003
  br i1 %604, label %605, label %620, !dbg !3003

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %124, metadata !2503, metadata !DIExpression()), !dbg !2551
  %606 = load i8, i8* %97, align 1, !dbg !3004, !tbaa !1725
  %607 = icmp eq i8 %606, 0, !dbg !3007
  br i1 %607, label %620, label %608, !dbg !3007

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2505, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %611, metadata !2503, metadata !DIExpression()), !dbg !2551
  %612 = icmp ult i64 %611, %130, !dbg !3008
  br i1 %612, label %613, label %615, !dbg !3011

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3008
  store i8 %609, i8* %614, align 1, !dbg !3008, !tbaa !1725
  br label %615, !dbg !3008

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %616, metadata !2503, metadata !DIExpression()), !dbg !2551
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %617, metadata !2505, metadata !DIExpression()), !dbg !2551
  %618 = load i8, i8* %617, align 1, !dbg !3004, !tbaa !1725
  %619 = icmp eq i8 %618, 0, !dbg !3007
  br i1 %619, label %620, label %608, !dbg !3007, !llvm.loop !3013

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2605
  call void @llvm.dbg.value(metadata i64 %621, metadata !2503, metadata !DIExpression()), !dbg !2551
  %622 = icmp ult i64 %621, %130, !dbg !3015
  br i1 %622, label %623, label %645, !dbg !3017

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3018
  store i8 0, i8* %624, align 1, !dbg !3019, !tbaa !1725
  br label %645, !dbg !3018

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %630, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2550), !dbg !3020
  %627 = icmp eq i8 %101, 0, !dbg !3021
  %628 = select i1 %627, i32 2, i32 4, !dbg !3021
  br label %635, !dbg !3021

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %630, metadata !2496, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.label(metadata !2550), !dbg !3020
  %632 = icmp eq i32 %93, 2, !dbg !3023
  %633 = icmp eq i8 %101, 0, !dbg !3021
  %634 = select i1 %633, i32 2, i32 4, !dbg !3021
  br i1 %632, label %635, label %639, !dbg !3021

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3021

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2497, metadata !DIExpression()), !dbg !2551
  %643 = and i32 %5, -3, !dbg !3024
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3025
  br label %645, !dbg !3026

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3027
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3032, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %1, metadata !3033, metadata !DIExpression()), !dbg !3036
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %3, metadata !3034, metadata !DIExpression()), !dbg !3036
  %4 = icmp eq i8* %3, %0, !dbg !3038
  br i1 %4, label %5, label %71, !dbg !3040

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %6, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %6, metadata !3042, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* undef, metadata !3048, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 85, metadata !3049, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 84, metadata !3050, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 70, metadata !3051, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 45, metadata !3052, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 56, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 0, metadata !3054, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 0, metadata !3055, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 0, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 0, metadata !3057, metadata !DIExpression()), !dbg !3058
  %7 = load i8, i8* %6, align 1, !dbg !3061, !tbaa !1725
  %8 = and i8 %7, -33, !dbg !3061
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3061

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3063, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* undef, metadata !3068, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 84, metadata !3069, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 70, metadata !3070, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 45, metadata !3071, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 56, metadata !3072, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3073, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3077
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3081
  %11 = load i8, i8* %10, align 1, !dbg !3081, !tbaa !1725
  %12 = and i8 %11, -33, !dbg !3081
  %13 = icmp eq i8 %12, 84, !dbg !3081
  br i1 %13, label %14, label %68, !dbg !3081

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3083, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* undef, metadata !3088, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 70, metadata !3089, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 45, metadata !3090, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 56, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3095, metadata !DIExpression()), !dbg !3096
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3100
  %16 = load i8, i8* %15, align 1, !dbg !3100, !tbaa !1725
  %17 = and i8 %16, -33, !dbg !3100
  %18 = icmp eq i8 %17, 70, !dbg !3100
  br i1 %18, label %19, label %68, !dbg !3100

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3102, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* undef, metadata !3107, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 45, metadata !3108, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 56, metadata !3109, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3110, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3113, metadata !DIExpression()), !dbg !3114
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3118
  %21 = load i8, i8* %20, align 1, !dbg !3118, !tbaa !1725
  %22 = icmp eq i8 %21, 45, !dbg !3118
  br i1 %22, label %23, label %68, !dbg !3120

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3121, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* undef, metadata !3126, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 56, metadata !3127, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3128, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3129, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3131, metadata !DIExpression()), !dbg !3132
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3136
  %25 = load i8, i8* %24, align 1, !dbg !3136, !tbaa !1725
  %26 = icmp eq i8 %25, 56, !dbg !3136
  br i1 %26, label %27, label %68, !dbg !3138

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3139, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* undef, metadata !3144, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3145, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3148, metadata !DIExpression()), !dbg !3149
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3153
  %29 = load i8, i8* %28, align 1, !dbg !3153, !tbaa !1725
  %30 = icmp eq i8 %29, 0, !dbg !3153
  br i1 %30, label %31, label %68, !dbg !3155

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3156, !tbaa !1725
  %33 = icmp eq i8 %32, 96, !dbg !3157
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !3156
  br label %71, !dbg !3158

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3063, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* undef, metadata !3068, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 66, metadata !3069, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 49, metadata !3070, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 56, metadata !3071, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 48, metadata !3072, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 51, metadata !3073, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 48, metadata !3074, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3159
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3163
  %37 = load i8, i8* %36, align 1, !dbg !3163, !tbaa !1725
  %38 = and i8 %37, -33, !dbg !3163
  %39 = icmp eq i8 %38, 66, !dbg !3163
  br i1 %39, label %40, label %68, !dbg !3163

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3083, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* undef, metadata !3088, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 49, metadata !3089, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 56, metadata !3090, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 48, metadata !3091, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 51, metadata !3092, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 48, metadata !3093, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 0, metadata !3095, metadata !DIExpression()), !dbg !3164
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3166
  %42 = load i8, i8* %41, align 1, !dbg !3166, !tbaa !1725
  %43 = icmp eq i8 %42, 49, !dbg !3166
  br i1 %43, label %44, label %68, !dbg !3167

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3102, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* undef, metadata !3107, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 56, metadata !3108, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 48, metadata !3109, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 51, metadata !3110, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 48, metadata !3111, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 0, metadata !3112, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 0, metadata !3113, metadata !DIExpression()), !dbg !3168
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3170
  %46 = load i8, i8* %45, align 1, !dbg !3170, !tbaa !1725
  %47 = icmp eq i8 %46, 56, !dbg !3170
  br i1 %47, label %48, label %68, !dbg !3171

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3121, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* undef, metadata !3126, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 48, metadata !3127, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 51, metadata !3128, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 48, metadata !3129, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 0, metadata !3130, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 0, metadata !3131, metadata !DIExpression()), !dbg !3172
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3174
  %50 = load i8, i8* %49, align 1, !dbg !3174, !tbaa !1725
  %51 = icmp eq i8 %50, 48, !dbg !3174
  br i1 %51, label %52, label %68, !dbg !3175

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3139, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* undef, metadata !3144, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8 51, metadata !3145, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8 48, metadata !3146, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8 0, metadata !3147, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8 0, metadata !3148, metadata !DIExpression()), !dbg !3176
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3178
  %54 = load i8, i8* %53, align 1, !dbg !3178, !tbaa !1725
  %55 = icmp eq i8 %54, 51, !dbg !3178
  br i1 %55, label %56, label %68, !dbg !3179

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3180, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* undef, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 48, metadata !3186, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 0, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 0, metadata !3188, metadata !DIExpression()), !dbg !3189
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3193
  %58 = load i8, i8* %57, align 1, !dbg !3193, !tbaa !1725
  %59 = icmp eq i8 %58, 48, !dbg !3193
  br i1 %59, label %60, label %68, !dbg !3195

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3196, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* undef, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 0, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3204
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3208
  %62 = load i8, i8* %61, align 1, !dbg !3208, !tbaa !1725
  %63 = icmp eq i8 %62, 0, !dbg !3208
  br i1 %63, label %64, label %68, !dbg !3210

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3211, !tbaa !1725
  %66 = icmp eq i8 %65, 96, !dbg !3212
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !3211
  br label %71, !dbg !3213

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3214
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !3215
  br label %71, !dbg !3216

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3036
  ret i8* %72, !dbg !3217
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !384 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !388 i32 @mbsinit(%struct.savewd*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i8* %0, metadata !3226, metadata !DIExpression()) #10, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()) #10, !dbg !3239
  call void @llvm.dbg.value(metadata i64* null, metadata !3232, metadata !DIExpression()) #10, !dbg !3239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3233, metadata !DIExpression()) #10, !dbg !3239
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3241
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3234, metadata !DIExpression()) #10, !dbg !3239
  %6 = tail call i32* @__errno_location() #27, !dbg !3242
  %7 = load i32, i32* %6, align 4, !dbg !3242, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %7, metadata !3235, metadata !DIExpression()) #10, !dbg !3239
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3243
  %9 = load i32, i32* %8, align 4, !dbg !3243, !tbaa !2436
  %10 = or i32 %9, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %10, metadata !3236, metadata !DIExpression()) #10, !dbg !3239
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3245
  %12 = load i32, i32* %11, align 8, !dbg !3245, !tbaa !2386
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3246
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3247
  %15 = load i8*, i8** %14, align 8, !dbg !3247, !tbaa !2459
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3248
  %17 = load i8*, i8** %16, align 8, !dbg !3248, !tbaa !2462
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !3249
  %19 = add i64 %18, 1, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %19, metadata !3237, metadata !DIExpression()) #10, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %19, metadata !3251, metadata !DIExpression()) #10, !dbg !3256
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %20, metadata !3238, metadata !DIExpression()) #10, !dbg !3239
  %21 = load i32, i32* %11, align 8, !dbg !3259, !tbaa !2386
  %22 = load i8*, i8** %14, align 8, !dbg !3260, !tbaa !2459
  %23 = load i8*, i8** %16, align 8, !dbg !3261, !tbaa !2462
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !3262
  store i32 %7, i32* %6, align 4, !dbg !3263, !tbaa !1513
  ret i8* %20, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3226, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64* %2, metadata !3232, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3233, metadata !DIExpression()), !dbg !3265
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3266
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3266
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3234, metadata !DIExpression()), !dbg !3265
  %7 = tail call i32* @__errno_location() #27, !dbg !3267
  %8 = load i32, i32* %7, align 4, !dbg !3267, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %8, metadata !3235, metadata !DIExpression()), !dbg !3265
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3268
  %10 = load i32, i32* %9, align 4, !dbg !3268, !tbaa !2436
  %11 = icmp ne i64* %2, null, !dbg !3269
  %12 = xor i1 %11, true, !dbg !3269
  %13 = zext i1 %12 to i32, !dbg !3269
  %14 = or i32 %10, %13, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %14, metadata !3236, metadata !DIExpression()), !dbg !3265
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3271
  %16 = load i32, i32* %15, align 8, !dbg !3271, !tbaa !2386
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3272
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3273
  %19 = load i8*, i8** %18, align 8, !dbg !3273, !tbaa !2459
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3274
  %21 = load i8*, i8** %20, align 8, !dbg !3274, !tbaa !2462
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3275
  %23 = add i64 %22, 1, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %23, metadata !3237, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %23, metadata !3251, metadata !DIExpression()) #10, !dbg !3277
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %24, metadata !3238, metadata !DIExpression()), !dbg !3265
  %25 = load i32, i32* %15, align 8, !dbg !3280, !tbaa !2386
  %26 = load i8*, i8** %18, align 8, !dbg !3281, !tbaa !2459
  %27 = load i8*, i8** %20, align 8, !dbg !3282, !tbaa !2462
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3283
  store i32 %8, i32* %7, align 4, !dbg !3284, !tbaa !1513
  br i1 %11, label %29, label %30, !dbg !3285

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3286, !tbaa !3288
  br label %30, !dbg !3289

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3291 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3295, !tbaa !1387
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 1, metadata !3294, metadata !DIExpression()), !dbg !3296
  %2 = load i32, i32* @nslots, align 4, !dbg !3297, !tbaa !1513
  %3 = icmp sgt i32 %2, 1, !dbg !3300
  br i1 %3, label %4, label %12, !dbg !3301

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3294, metadata !DIExpression()), !dbg !3296
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3302
  %7 = load i8*, i8** %6, align 8, !dbg !3302, !tbaa !3303
  tail call void @free(i8* %7) #10, !dbg !3305
  %8 = add nuw nsw i64 %5, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %8, metadata !3294, metadata !DIExpression()), !dbg !3296
  %9 = load i32, i32* @nslots, align 4, !dbg !3297, !tbaa !1513
  %10 = sext i32 %9 to i64, !dbg !3300
  %11 = icmp slt i64 %8, %10, !dbg !3300
  br i1 %11, label %4, label %12, !dbg !3301, !llvm.loop !3307

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3309
  %14 = load i8*, i8** %13, align 8, !dbg !3309, !tbaa !3303
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3311
  br i1 %15, label %17, label %16, !dbg !3312

16:                                               ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !3313
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3315, !tbaa !3316
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3317, !tbaa !3303
  br label %17, !dbg !3318

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3319
  br i1 %18, label %21, label %19, !dbg !3321

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3322
  tail call void @free(i8* %20) #10, !dbg !3324
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3325, !tbaa !1387
  br label %21, !dbg !3326

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3327, !tbaa !1513
  ret void, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i8* %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3334
  ret i8* %3, !dbg !3335
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3336 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3340, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %1, metadata !3341, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %2, metadata !3342, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3343, metadata !DIExpression()), !dbg !3355
  %5 = tail call i32* @__errno_location() #27, !dbg !3356
  %6 = load i32, i32* %5, align 4, !dbg !3356, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %6, metadata !3344, metadata !DIExpression()), !dbg !3355
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3357, !tbaa !1387
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3345, metadata !DIExpression()), !dbg !3355
  %8 = icmp slt i32 %0, 0, !dbg !3358
  br i1 %8, label %9, label %10, !dbg !3360

9:                                                ; preds = %4
  tail call void @abort() #25, !dbg !3361
  unreachable, !dbg !3361

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3362, !tbaa !1513
  %12 = icmp sgt i32 %11, %0, !dbg !3363
  br i1 %12, label %34, label %13, !dbg !3364

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3365
  call void @llvm.dbg.value(metadata i1 %14, metadata !3346, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3349, metadata !DIExpression()), !dbg !3366
  %15 = icmp eq i32 %0, 2147483647, !dbg !3367
  br i1 %15, label %16, label %17, !dbg !3369

16:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !3370
  unreachable, !dbg !3370

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3371
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3371
  %20 = add nuw nsw i32 %0, 1, !dbg !3372
  %21 = sext i32 %20 to i64, !dbg !3373
  %22 = shl nuw nsw i64 %21, 4, !dbg !3374
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3375
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3375
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3345, metadata !DIExpression()), !dbg !3355
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3376, !tbaa !1387
  br i1 %14, label %25, label %26, !dbg !3377

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3378, !tbaa.struct !3380
  br label %26, !dbg !3381

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3382, !tbaa !1513
  %28 = sext i32 %27 to i64, !dbg !3383
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3383
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3384
  %31 = sub nsw i32 %20, %27, !dbg !3385
  %32 = sext i32 %31 to i64, !dbg !3386
  %33 = shl nsw i64 %32, 4, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %30, metadata !2784, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %33, metadata !2791, metadata !DIExpression()) #10, !dbg !3388
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #10, !dbg !3390
  store i32 %20, i32* @nslots, align 4, !dbg !3391, !tbaa !1513
  br label %34, !dbg !3392

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3355
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3345, metadata !DIExpression()), !dbg !3355
  %36 = zext i32 %0 to i64, !dbg !3393
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3394
  %38 = load i64, i64* %37, align 8, !dbg !3394, !tbaa !3316
  call void @llvm.dbg.value(metadata i64 %38, metadata !3350, metadata !DIExpression()), !dbg !3395
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3396
  %40 = load i8*, i8** %39, align 8, !dbg !3396, !tbaa !3303
  call void @llvm.dbg.value(metadata i8* %40, metadata !3352, metadata !DIExpression()), !dbg !3395
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3397
  %42 = load i32, i32* %41, align 4, !dbg !3397, !tbaa !2436
  %43 = or i32 %42, 1, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %43, metadata !3353, metadata !DIExpression()), !dbg !3395
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3399
  %45 = load i32, i32* %44, align 8, !dbg !3399, !tbaa !2386
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3400
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3401
  %48 = load i8*, i8** %47, align 8, !dbg !3401, !tbaa !2459
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3402
  %50 = load i8*, i8** %49, align 8, !dbg !3402, !tbaa !2462
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %51, metadata !3354, metadata !DIExpression()), !dbg !3395
  %52 = icmp ugt i64 %38, %51, !dbg !3404
  br i1 %52, label %63, label %53, !dbg !3406

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %54, metadata !3350, metadata !DIExpression()), !dbg !3395
  store i64 %54, i64* %37, align 8, !dbg !3409, !tbaa !3316
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3410
  br i1 %55, label %57, label %56, !dbg !3412

56:                                               ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3413
  br label %57, !dbg !3413

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3251, metadata !DIExpression()) #10, !dbg !3414
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %58, metadata !3352, metadata !DIExpression()), !dbg !3395
  store i8* %58, i8** %39, align 8, !dbg !3417, !tbaa !3303
  %59 = load i32, i32* %44, align 8, !dbg !3418, !tbaa !2386
  %60 = load i8*, i8** %47, align 8, !dbg !3419, !tbaa !2459
  %61 = load i8*, i8** %49, align 8, !dbg !3420, !tbaa !2462
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3421
  br label %63, !dbg !3422

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3395
  call void @llvm.dbg.value(metadata i8* %64, metadata !3352, metadata !DIExpression()), !dbg !3395
  store i32 %6, i32* %5, align 4, !dbg !3423, !tbaa !1513
  ret i8* %64, !dbg !3424
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %2, metadata !3431, metadata !DIExpression()), !dbg !3432
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3433
  ret i8* %4, !dbg !3434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3435 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()) #10, !dbg !3439
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()) #10, !dbg !3439
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3441
  ret i8* %2, !dbg !3442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3429, metadata !DIExpression()) #10, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()) #10, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()) #10, !dbg !3450
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3452
  ret i8* %3, !dbg !3453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3454 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3458, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 %1, metadata !3459, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %2, metadata !3460, metadata !DIExpression()), !dbg !3462
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3463
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3463
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()) #10, !dbg !3471
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3470, metadata !DIExpression()) #10, !dbg !3473
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #10, !dbg !3473, !alias.scope !3474
  %6 = icmp eq i32 %1, 10, !dbg !3477
  br i1 %6, label %7, label %8, !dbg !3479

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !3480, !noalias !3474
  unreachable, !dbg !3480

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3481
  store i32 %1, i32* %9, align 8, !dbg !3482, !tbaa !2386, !alias.scope !3474
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3484
  ret i8* %10, !dbg !3485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3486 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 %1, metadata !3491, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %3, metadata !3493, metadata !DIExpression()), !dbg !3495
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3496
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3494, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()) #10, !dbg !3498
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3470, metadata !DIExpression()) #10, !dbg !3500
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #10, !dbg !3500, !alias.scope !3501
  %7 = icmp eq i32 %1, 10, !dbg !3504
  br i1 %7, label %8, label %9, !dbg !3505

8:                                                ; preds = %4
  tail call void @abort() #25, !dbg !3506, !noalias !3501
  unreachable, !dbg !3506

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3507
  store i32 %1, i32* %10, align 8, !dbg !3508, !tbaa !2386, !alias.scope !3501
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3510
  ret i8* %11, !dbg !3511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3512 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3470, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3461, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %0, metadata !3514, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()) #10, !dbg !3521
  call void @llvm.dbg.value(metadata i32 %0, metadata !3459, metadata !DIExpression()) #10, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %1, metadata !3460, metadata !DIExpression()) #10, !dbg !3521
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3522
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()) #10, !dbg !3523
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #10, !dbg !3516, !alias.scope !3524
  %5 = icmp eq i32 %0, 10, !dbg !3527
  br i1 %5, label %6, label %7, !dbg !3528

6:                                                ; preds = %2
  tail call void @abort() #25, !dbg !3529, !noalias !3524
  unreachable, !dbg !3529

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3530
  store i32 %0, i32* %8, align 8, !dbg !3531, !tbaa !2386, !alias.scope !3524
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3533
  ret i8* %9, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3535 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3470, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3494, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %0, metadata !3539, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %1, metadata !3540, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %2, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 0, metadata !3490, metadata !DIExpression()) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %1, metadata !3492, metadata !DIExpression()) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %2, metadata !3493, metadata !DIExpression()) #10, !dbg !3547
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()) #10, !dbg !3549
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #10, !dbg !3542, !alias.scope !3550
  %6 = icmp eq i32 %0, 10, !dbg !3553
  br i1 %6, label %7, label %8, !dbg !3554

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !3555, !noalias !3550
  unreachable, !dbg !3555

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3556
  store i32 %0, i32* %9, align 8, !dbg !3557, !tbaa !2386, !alias.scope !3550
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3559
  ret i8* %10, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3561 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8 %2, metadata !3567, metadata !DIExpression()), !dbg !3569
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3570
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3570
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3568, metadata !DIExpression()), !dbg !3571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3572, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2404, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 %2, metadata !2405, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 %2, metadata !2407, metadata !DIExpression()), !dbg !3574
  %6 = lshr i8 %2, 5, !dbg !3576
  %7 = zext i8 %6 to i64, !dbg !3576
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3577
  call void @llvm.dbg.value(metadata i32* %8, metadata !2408, metadata !DIExpression()), !dbg !3574
  %9 = and i8 %2, 31, !dbg !3578
  %10 = zext i8 %9 to i32, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %10, metadata !2409, metadata !DIExpression()), !dbg !3574
  %11 = load i32, i32* %8, align 4, !dbg !3579, !tbaa !1513
  %12 = lshr i32 %11, %10, !dbg !3580
  %13 = and i32 %12, 1, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %13, metadata !2410, metadata !DIExpression()), !dbg !3574
  %14 = xor i32 %13, 1, !dbg !3582
  %15 = shl i32 %14, %10, !dbg !3583
  %16 = xor i32 %15, %11, !dbg !3584
  store i32 %16, i32* %8, align 4, !dbg !3584, !tbaa !1513
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3586
  ret i8* %17, !dbg !3587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3588 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3568, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* %0, metadata !3592, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 %1, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i64 -1, metadata !3566, metadata !DIExpression()) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i8 %1, metadata !3567, metadata !DIExpression()) #10, !dbg !3597
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3598
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3599, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2404, metadata !DIExpression()) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i8 %1, metadata !2405, metadata !DIExpression()) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i8 %1, metadata !2407, metadata !DIExpression()) #10, !dbg !3600
  %5 = lshr i8 %1, 5, !dbg !3602
  %6 = zext i8 %5 to i64, !dbg !3602
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3603
  call void @llvm.dbg.value(metadata i32* %7, metadata !2408, metadata !DIExpression()) #10, !dbg !3600
  %8 = and i8 %1, 31, !dbg !3604
  %9 = zext i8 %8 to i32, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %9, metadata !2409, metadata !DIExpression()) #10, !dbg !3600
  %10 = load i32, i32* %7, align 4, !dbg !3605, !tbaa !1513
  %11 = lshr i32 %10, %9, !dbg !3606
  %12 = and i32 %11, 1, !dbg !3607
  call void @llvm.dbg.value(metadata i32 %12, metadata !2410, metadata !DIExpression()) #10, !dbg !3600
  %13 = xor i32 %12, 1, !dbg !3608
  %14 = shl i32 %13, %9, !dbg !3609
  %15 = xor i32 %14, %10, !dbg !3610
  store i32 %15, i32* %7, align 4, !dbg !3610, !tbaa !1513
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3611
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3612
  ret i8* %16, !dbg !3613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3614 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3568, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %0, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %0, metadata !3592, metadata !DIExpression()) #10, !dbg !3621
  call void @llvm.dbg.value(metadata i8 58, metadata !3593, metadata !DIExpression()) #10, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i64 -1, metadata !3566, metadata !DIExpression()) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i8 58, metadata !3567, metadata !DIExpression()) #10, !dbg !3622
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3623
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3624, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2404, metadata !DIExpression()) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i8 58, metadata !2405, metadata !DIExpression()) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i8 58, metadata !2407, metadata !DIExpression()) #10, !dbg !3625
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3627
  call void @llvm.dbg.value(metadata i32* %4, metadata !2408, metadata !DIExpression()) #10, !dbg !3625
  call void @llvm.dbg.value(metadata i32 26, metadata !2409, metadata !DIExpression()) #10, !dbg !3625
  %5 = load i32, i32* %4, align 4, !dbg !3628, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %5, metadata !2410, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #10, !dbg !3625
  %6 = or i32 %5, 67108864, !dbg !3629
  store i32 %6, i32* %4, align 4, !dbg !3629, !tbaa !1513
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3631
  ret i8* %7, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3633 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3568, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata i8 58, metadata !3567, metadata !DIExpression()) #10, !dbg !3640
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3642, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2404, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8 58, metadata !2405, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i8 58, metadata !2407, metadata !DIExpression()) #10, !dbg !3643
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3645
  call void @llvm.dbg.value(metadata i32* %5, metadata !2408, metadata !DIExpression()) #10, !dbg !3643
  call void @llvm.dbg.value(metadata i32 26, metadata !2409, metadata !DIExpression()) #10, !dbg !3643
  %6 = load i32, i32* %5, align 4, !dbg !3646, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %6, metadata !2410, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #10, !dbg !3643
  %7 = or i32 %6, 67108864, !dbg !3647
  store i32 %7, i32* %5, align 4, !dbg !3647, !tbaa !1513
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3649
  ret i8* %8, !dbg !3650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3651 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3470, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 %1, metadata !3654, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i8* %2, metadata !3655, metadata !DIExpression()), !dbg !3659
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3660
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3656, metadata !DIExpression()), !dbg !3661
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3470, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3663
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3657, !alias.scope !3664
  %8 = icmp eq i32 %1, 10, !dbg !3667
  br i1 %8, label %9, label %10, !dbg !3668

9:                                                ; preds = %3
  tail call void @abort() #25, !dbg !3669, !noalias !3664
  unreachable, !dbg !3669

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3470, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3663
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3662
  store i32 %1, i32* %11, align 8, !dbg !3662, !tbaa.struct !3573
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3662
  %13 = bitcast i32* %12 to i8*, !dbg !3662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3662, !tbaa.struct !3573
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2404, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8 58, metadata !2405, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8 58, metadata !2407, metadata !DIExpression()), !dbg !3670
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3672
  call void @llvm.dbg.value(metadata i32* %14, metadata !2408, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 26, metadata !2409, metadata !DIExpression()), !dbg !3670
  %15 = load i32, i32* %14, align 4, !dbg !3673, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %15, metadata !2410, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3670
  %16 = or i32 %15, 67108864, !dbg !3674
  store i32 %16, i32* %14, align 4, !dbg !3674, !tbaa !1513
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3675
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3676
  ret i8* %17, !dbg !3677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3678 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3686, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !3683, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %2, metadata !3684, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %3, metadata !3685, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %1, metadata !3692, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %2, metadata !3693, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %3, metadata !3694, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 -1, metadata !3695, metadata !DIExpression()) #10, !dbg !3699
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3700
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3701, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()) #10, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()) #10, !dbg !3702
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3704
  store i32 10, i32* %7, align 8, !dbg !3705, !tbaa !2386
  %8 = icmp ne i8* %1, null, !dbg !3706
  %9 = icmp ne i8* %2, null, !dbg !3707
  %10 = and i1 %8, %9, !dbg !3708
  br i1 %10, label %12, label %11, !dbg !3708

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !3709
  unreachable, !dbg !3709

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3710
  store i8* %1, i8** %13, align 8, !dbg !3711, !tbaa !2459
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3712
  store i8* %2, i8** %14, align 8, !dbg !3713, !tbaa !2462
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3715
  ret i8* %15, !dbg !3716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3687 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i8* %1, metadata !3692, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i8* %2, metadata !3693, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i8* %3, metadata !3694, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %4, metadata !3695, metadata !DIExpression()), !dbg !3717
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3718
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3718
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3686, metadata !DIExpression()), !dbg !3719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3720, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2443, metadata !DIExpression()) #10, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()) #10, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()) #10, !dbg !3721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2443, metadata !DIExpression()) #10, !dbg !3721
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3723
  store i32 10, i32* %8, align 8, !dbg !3724, !tbaa !2386
  %9 = icmp ne i8* %1, null, !dbg !3725
  %10 = icmp ne i8* %2, null, !dbg !3726
  %11 = and i1 %9, %10, !dbg !3727
  br i1 %11, label %13, label %12, !dbg !3727

12:                                               ; preds = %5
  tail call void @abort() #25, !dbg !3728
  unreachable, !dbg !3728

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3729
  store i8* %1, i8** %14, align 8, !dbg !3730, !tbaa !2459
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3731
  store i8* %2, i8** %15, align 8, !dbg !3732, !tbaa !2462
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3733
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3734
  ret i8* %16, !dbg !3735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3736 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3686, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %1, metadata !3741, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %2, metadata !3742, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %0, metadata !3683, metadata !DIExpression()) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %2, metadata !3685, metadata !DIExpression()) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %0, metadata !3692, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %1, metadata !3693, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %2, metadata !3694, metadata !DIExpression()) #10, !dbg !3748
  call void @llvm.dbg.value(metadata i64 -1, metadata !3695, metadata !DIExpression()) #10, !dbg !3748
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3749
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3750, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression()) #10, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %0, metadata !2444, metadata !DIExpression()) #10, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %1, metadata !2445, metadata !DIExpression()) #10, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression()) #10, !dbg !3751
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3753
  store i32 10, i32* %6, align 8, !dbg !3754, !tbaa !2386
  %7 = icmp ne i8* %0, null, !dbg !3755
  %8 = icmp ne i8* %1, null, !dbg !3756
  %9 = and i1 %7, %8, !dbg !3757
  br i1 %9, label %11, label %10, !dbg !3757

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !3758
  unreachable, !dbg !3758

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3759
  store i8* %0, i8** %12, align 8, !dbg !3760, !tbaa !2459
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3761
  store i8* %1, i8** %13, align 8, !dbg !3762, !tbaa !2462
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3764
  ret i8* %14, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3766 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3686, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %1, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %2, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %3, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !3692, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %1, metadata !3693, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %2, metadata !3694, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata i64 %3, metadata !3695, metadata !DIExpression()) #10, !dbg !3777
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3778
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3779, !tbaa.struct !3573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()) #10, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %0, metadata !2444, metadata !DIExpression()) #10, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2445, metadata !DIExpression()) #10, !dbg !3780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()) #10, !dbg !3780
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3782
  store i32 10, i32* %7, align 8, !dbg !3783, !tbaa !2386
  %8 = icmp ne i8* %0, null, !dbg !3784
  %9 = icmp ne i8* %1, null, !dbg !3785
  %10 = and i1 %8, %9, !dbg !3786
  br i1 %10, label %12, label %11, !dbg !3786

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !3787
  unreachable, !dbg !3787

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3788
  store i8* %0, i8** %13, align 8, !dbg !3789, !tbaa !2459
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3790
  store i8* %1, i8** %14, align 8, !dbg !3791, !tbaa !2462
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3792
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3793
  ret i8* %15, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3799, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %1, metadata !3800, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %2, metadata !3801, metadata !DIExpression()), !dbg !3802
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3803
  ret i8* %4, !dbg !3804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3799, metadata !DIExpression()) #10, !dbg !3812
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()) #10, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %1, metadata !3801, metadata !DIExpression()) #10, !dbg !3812
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3814
  ret i8* %3, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8* %1, metadata !3821, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %0, metadata !3799, metadata !DIExpression()) #10, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %1, metadata !3800, metadata !DIExpression()) #10, !dbg !3823
  call void @llvm.dbg.value(metadata i64 -1, metadata !3801, metadata !DIExpression()) #10, !dbg !3823
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3825
  ret i8* %3, !dbg !3826
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3820, metadata !DIExpression()) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3821, metadata !DIExpression()) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i32 0, metadata !3799, metadata !DIExpression()) #10, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()) #10, !dbg !3833
  call void @llvm.dbg.value(metadata i64 -1, metadata !3801, metadata !DIExpression()) #10, !dbg !3833
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3835
  ret i8* %2, !dbg !3836
}

; Function Attrs: inlinehint nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @savewd_init(%struct.savewd* nocapture %0) local_unnamed_addr #19 !dbg !3837 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3842, metadata !DIExpression()), !dbg !3843
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3844
  store i32 0, i32* %2, align 4, !dbg !3845, !tbaa !1851
  ret void, !dbg !3846
}

; Function Attrs: inlinehint norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @savewd_errno(%struct.savewd* nocapture readonly %0) local_unnamed_addr #20 !dbg !3847 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3853, metadata !DIExpression()), !dbg !3854
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3855
  %3 = load i32, i32* %2, align 4, !dbg !3855, !tbaa !1851
  %4 = icmp eq i32 %3, 4, !dbg !3856
  br i1 %4, label %5, label %8, !dbg !3857

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3858
  %7 = load i32, i32* %6, align 4, !dbg !3858, !tbaa !1725
  br label %8, !dbg !3857

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3857
  ret i32 %9, !dbg !3859
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_chdir(%struct.savewd* nocapture %0, i8* %1, i32 %2, i32* %3) local_unnamed_addr #8 !dbg !3860 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3864, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %1, metadata !3865, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %2, metadata !3866, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32* %3, metadata !3867, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 -1, metadata !3868, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()), !dbg !3873
  %5 = icmp ne i32* %3, null, !dbg !3874
  %6 = xor i1 %5, true, !dbg !3876
  %7 = and i32 %2, 1, !dbg !3877
  %8 = icmp eq i32 %7, 0, !dbg !3877
  %9 = and i1 %8, %6, !dbg !3876
  br i1 %9, label %28, label %10, !dbg !3876

10:                                               ; preds = %4
  %11 = shl i32 %2, 17, !dbg !3878
  %12 = and i32 %11, 131072, !dbg !3878
  %13 = or i32 %12, 67840, !dbg !3880
  %14 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %13) #10, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %14, metadata !3868, metadata !DIExpression()), !dbg !3873
  br i1 %5, label %15, label %19, !dbg !3882

15:                                               ; preds = %10
  store i32 %14, i32* %3, align 4, !dbg !3883, !tbaa !1513
  %16 = tail call i32* @__errno_location() #27, !dbg !3886
  %17 = load i32, i32* %16, align 4, !dbg !3886, !tbaa !1513
  %18 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3887
  store i32 %17, i32* %18, align 4, !dbg !3888, !tbaa !1513
  br label %19, !dbg !3889

19:                                               ; preds = %15, %10
  %20 = icmp slt i32 %14, 0, !dbg !3890
  br i1 %20, label %21, label %25, !dbg !3892

21:                                               ; preds = %19
  %22 = tail call i32* @__errno_location() #27, !dbg !3893
  %23 = load i32, i32* %22, align 4, !dbg !3893, !tbaa !1513
  %24 = icmp eq i32 %23, 13, !dbg !3894
  br i1 %24, label %28, label %87

25:                                               ; preds = %19
  %26 = and i32 %2, 2, !dbg !3895
  %27 = icmp eq i32 %26, 0, !dbg !3895
  br i1 %27, label %28, label %76, !dbg !3897

28:                                               ; preds = %21, %4, %25
  %29 = phi i32 [ %14, %25 ], [ -1, %4 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3898, metadata !DIExpression()) #10, !dbg !3906
  %30 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3910
  %31 = load i32, i32* %30, align 4, !dbg !3910, !tbaa !1851
  switch i32 %31, label %57 [
    i32 0, label %32
    i32 3, label %44
    i32 1, label %58
    i32 2, label %58
    i32 4, label %58
    i32 5, label %58
  ], !dbg !3911

32:                                               ; preds = %28
  %33 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.92, i64 0, i64 0), i32 0) #10, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %33, metadata !3903, metadata !DIExpression()) #10, !dbg !3913
  %34 = icmp sgt i32 %33, -1, !dbg !3914
  br i1 %34, label %35, label %37, !dbg !3916

35:                                               ; preds = %32
  store i32 1, i32* %30, align 4, !dbg !3917, !tbaa !1851
  %36 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3919
  store i32 %33, i32* %36, align 4, !dbg !3920, !tbaa !1725
  br label %58

37:                                               ; preds = %32
  %38 = tail call i32* @__errno_location() #27, !dbg !3921
  %39 = load i32, i32* %38, align 4, !dbg !3921, !tbaa !1513
  switch i32 %39, label %40 [
    i32 13, label %42
    i32 116, label %42
  ], !dbg !3923

40:                                               ; preds = %37
  store i32 4, i32* %30, align 4, !dbg !3924, !tbaa !1851
  %41 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3926
  store i32 %39, i32* %41, align 4, !dbg !3927, !tbaa !1725
  br label %58

42:                                               ; preds = %37, %37
  store i32 3, i32* %30, align 4, !dbg !3928, !tbaa !1851
  %43 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3929
  store i32 -1, i32* %43, align 4, !dbg !3930, !tbaa !1725
  br label %48, !dbg !3931

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3932
  %46 = load i32, i32* %45, align 4, !dbg !3934, !tbaa !1725
  %47 = icmp slt i32 %46, 0, !dbg !3911
  br i1 %47, label %48, label %58, !dbg !3931

48:                                               ; preds = %44, %42
  %49 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3934
  %50 = tail call i32 @fork() #10, !dbg !3935
  store i32 %50, i32* %49, align 4, !dbg !3937, !tbaa !1725
  %51 = icmp eq i32 %50, 0, !dbg !3938
  br i1 %51, label %58, label %52, !dbg !3940

52:                                               ; preds = %48
  %53 = icmp sgt i32 %50, 0, !dbg !3941
  br i1 %53, label %76, label %54, !dbg !3944

54:                                               ; preds = %52
  store i32 4, i32* %30, align 4, !dbg !3945, !tbaa !1851
  %55 = tail call i32* @__errno_location() #27, !dbg !3946
  %56 = load i32, i32* %55, align 4, !dbg !3946, !tbaa !1513
  store i32 %56, i32* %49, align 4, !dbg !3947, !tbaa !1725
  br label %58, !dbg !3948

57:                                               ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #25, !dbg !3949
  unreachable, !dbg !3949

58:                                               ; preds = %40, %35, %48, %28, %28, %28, %28, %44, %54
  %59 = icmp slt i32 %29, 0, !dbg !3952
  br i1 %59, label %60, label %62, !dbg !3954

60:                                               ; preds = %58
  %61 = tail call i32 @chdir(i8* %1) #10, !dbg !3955
  br label %64, !dbg !3954

62:                                               ; preds = %58
  %63 = tail call i32 @fchdir(i32 %29) #10, !dbg !3956
  br label %64, !dbg !3954

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ], !dbg !3954
  call void @llvm.dbg.value(metadata i32 %65, metadata !3869, metadata !DIExpression()), !dbg !3873
  %66 = icmp eq i32 %65, 0, !dbg !3957
  br i1 %66, label %67, label %76, !dbg !3959

67:                                               ; preds = %64
  %68 = load i32, i32* %30, align 4, !dbg !3960, !tbaa !1851
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 4, label %76
    i32 2, label %76
    i32 5, label %76
    i32 3, label %70
  ], !dbg !3961

69:                                               ; preds = %67
  store i32 2, i32* %30, align 4, !dbg !3962, !tbaa !1851
  br label %76, !dbg !3964

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3965
  %72 = load i32, i32* %71, align 4, !dbg !3965, !tbaa !1725
  %73 = icmp eq i32 %72, 0, !dbg !3965
  br i1 %73, label %76, label %74, !dbg !3968

74:                                               ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #25, !dbg !3965
  unreachable, !dbg !3965

75:                                               ; preds = %67
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #25, !dbg !3969
  unreachable, !dbg !3969

76:                                               ; preds = %52, %25, %69, %67, %67, %67, %70, %64
  %77 = phi i32 [ %29, %70 ], [ %29, %67 ], [ %29, %67 ], [ %29, %67 ], [ %29, %69 ], [ %29, %64 ], [ %14, %25 ], [ %29, %52 ], !dbg !3873
  %78 = phi i32 [ 0, %70 ], [ 0, %67 ], [ 0, %67 ], [ 0, %67 ], [ 0, %69 ], [ %65, %64 ], [ 0, %25 ], [ -2, %52 ], !dbg !3873
  %79 = phi i32* [ %3, %70 ], [ %3, %67 ], [ %3, %67 ], [ %3, %67 ], [ %3, %69 ], [ %3, %64 ], [ %3, %25 ], [ null, %52 ]
  call void @llvm.dbg.value(metadata i32* %79, metadata !3867, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %78, metadata !3869, metadata !DIExpression()), !dbg !3873
  %80 = icmp slt i32 %77, 0, !dbg !3972
  %81 = icmp ne i32* %79, null, !dbg !3973
  %82 = or i1 %80, %81, !dbg !3974
  br i1 %82, label %87, label %83, !dbg !3974

83:                                               ; preds = %76
  %84 = tail call i32* @__errno_location() #27, !dbg !3975
  %85 = load i32, i32* %84, align 4, !dbg !3975, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %85, metadata !3870, metadata !DIExpression()), !dbg !3976
  %86 = tail call i32 @close(i32 %77) #10, !dbg !3977
  store i32 %85, i32* %84, align 4, !dbg !3978, !tbaa !1513
  br label %87, !dbg !3979

87:                                               ; preds = %21, %76, %83
  %88 = phi i32 [ %78, %76 ], [ %78, %83 ], [ -1, %21 ]
  ret i32 %88, !dbg !3980
}

; Function Attrs: nofree
declare !dbg !458 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare !dbg !647 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !635 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !638 i32 @fchdir(i32) local_unnamed_addr #2

declare !dbg !462 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_restore(%struct.savewd* nocapture %0, i32 %1) local_unnamed_addr #8 !dbg !3981 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3985, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 %1, metadata !3986, metadata !DIExpression()), !dbg !3996
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3997
  %5 = load i32, i32* %4, align 4, !dbg !3997, !tbaa !1851
  switch i32 %5, label %52 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !3998

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3999
  %8 = load i32, i32* %7, align 4, !dbg !4000, !tbaa !1725
  %9 = tail call i32* @__errno_location() #27, !dbg !4001
  br label %21, !dbg !3998

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4002
  %12 = load i32, i32* %11, align 4, !dbg !4002, !tbaa !1725
  %13 = tail call i32 @fchdir(i32 %12) #10, !dbg !4003
  %14 = icmp eq i32 %13, 0, !dbg !4004
  br i1 %14, label %15, label %16, !dbg !4005

15:                                               ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !4006, !tbaa !1851
  br label %53, !dbg !4008

16:                                               ; preds = %10
  %17 = tail call i32* @__errno_location() #27, !dbg !4009
  %18 = load i32, i32* %17, align 4, !dbg !4009, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %18, metadata !3987, metadata !DIExpression()), !dbg !4010
  %19 = load i32, i32* %11, align 4, !dbg !4011, !tbaa !1725
  %20 = tail call i32 @close(i32 %19) #10, !dbg !4012
  store i32 4, i32* %4, align 4, !dbg !4013, !tbaa !1851
  store i32 %18, i32* %11, align 4, !dbg !4014, !tbaa !1725
  br label %21, !dbg !4015

21:                                               ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !4001
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !4000
  store i32 %23, i32* %22, align 4, !dbg !4016, !tbaa !1513
  br label %53, !dbg !4017

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4018
  %26 = load i32, i32* %25, align 4, !dbg !4018, !tbaa !1725
  call void @llvm.dbg.value(metadata i32 %26, metadata !3991, metadata !DIExpression()), !dbg !4019
  %27 = icmp eq i32 %26, 0, !dbg !4020
  br i1 %27, label %28, label %29, !dbg !4022

28:                                               ; preds = %24
  tail call void @_exit(i32 %1) #25, !dbg !4023
  unreachable, !dbg !4023

29:                                               ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !4024
  br i1 %30, label %31, label %53, !dbg !4025

31:                                               ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !4026
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #10, !dbg !4026
  br label %33, !dbg !4027

33:                                               ; preds = %36, %31
  call void @llvm.dbg.value(metadata i32* %3, metadata !3993, metadata !DIExpression(DW_OP_deref)), !dbg !4028
  %34 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #10, !dbg !4029
  %35 = icmp slt i32 %34, 0, !dbg !4030
  br i1 %35, label %36, label %41, !dbg !4027

36:                                               ; preds = %33
  %37 = tail call i32* @__errno_location() #27, !dbg !4031
  %38 = load i32, i32* %37, align 4, !dbg !4031, !tbaa !1513
  %39 = icmp eq i32 %38, 4, !dbg !4031
  br i1 %39, label %33, label %40, !dbg !4034, !llvm.loop !4035

40:                                               ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.96, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #25, !dbg !4031
  unreachable, !dbg !4031

41:                                               ; preds = %33
  store i32 -1, i32* %25, align 4, !dbg !4037, !tbaa !1725
  %42 = load i32, i32* %3, align 4, !dbg !4038, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %42, metadata !3993, metadata !DIExpression()), !dbg !4028
  %43 = and i32 %42, 127, !dbg !4038
  %44 = icmp eq i32 %43, 0, !dbg !4038
  br i1 %44, label %48, label %45, !dbg !4040

45:                                               ; preds = %41
  %46 = call i32 @raise(i32 %43) #10, !dbg !4041
  %47 = load i32, i32* %3, align 4, !dbg !4042, !tbaa !1513
  br label %48, !dbg !4041

48:                                               ; preds = %41, %45
  %49 = phi i32 [ %42, %41 ], [ %47, %45 ], !dbg !4042
  call void @llvm.dbg.value(metadata i32 %49, metadata !3993, metadata !DIExpression()), !dbg !4028
  %50 = lshr i32 %49, 8, !dbg !4042
  %51 = and i32 %50, 255, !dbg !4042
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #10, !dbg !4043
  br label %53

52:                                               ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #25, !dbg !4044
  unreachable, !dbg !4044

53:                                               ; preds = %29, %15, %2, %2, %48, %21
  %54 = phi i32 [ %51, %48 ], [ -1, %21 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], [ 0, %29 ], !dbg !3996
  ret i32 %54, !dbg !4047
}

declare !dbg !639 i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !643 i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @savewd_finish(%struct.savewd* nocapture %0) local_unnamed_addr #8 !dbg !4048 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !4050, metadata !DIExpression()), !dbg !4051
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !4052
  %3 = load i32, i32* %2, align 4, !dbg !4052, !tbaa !1851
  switch i32 %3, label %13 [
    i32 0, label %14
    i32 4, label %14
    i32 1, label %4
    i32 2, label %4
    i32 3, label %8
  ], !dbg !4053

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4054
  %6 = load i32, i32* %5, align 4, !dbg !4054, !tbaa !1725
  %7 = tail call i32 @close(i32 %6) #10, !dbg !4056
  br label %14, !dbg !4057

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4058
  %10 = load i32, i32* %9, align 4, !dbg !4058, !tbaa !1725
  %11 = icmp slt i32 %10, 0, !dbg !4058
  br i1 %11, label %14, label %12, !dbg !4061

12:                                               ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.97, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #25, !dbg !4058
  unreachable, !dbg !4058

13:                                               ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #25, !dbg !4062
  unreachable, !dbg !4062

14:                                               ; preds = %8, %1, %1, %4
  store i32 5, i32* %2, align 4, !dbg !4065, !tbaa !1851
  ret void, !dbg !4066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_process_files(i32 %0, i8** nocapture readonly %1, i32 (i8*, %struct.savewd*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !4067 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4074, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8** %1, metadata !4075, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, metadata !4076, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8* %3, metadata !4077, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4080, metadata !DIExpression()), !dbg !4095
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !4096
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !4096
  call void @llvm.dbg.declare(metadata %struct.savewd* %5, metadata !4081, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3842, metadata !DIExpression()), !dbg !4098
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !4100
  store i32 0, i32* %7, align 4, !dbg !4101, !tbaa !1851
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4095
  %8 = sext i32 %0 to i64, !dbg !4102
  br label %9, !dbg !4102

9:                                                ; preds = %13, %4
  %10 = phi i64 [ %11, %13 ], [ %8, %4 ]
  %11 = add nsw i64 %10, -1, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %11, metadata !4079, metadata !DIExpression()), !dbg !4095
  %12 = icmp sgt i64 %10, 0, !dbg !4105
  br i1 %12, label %13, label %18, !dbg !4107

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !4108
  %15 = load i8*, i8** %14, align 8, !dbg !4108, !tbaa !1387
  %16 = load i8, i8* %15, align 1, !dbg !4108, !tbaa !1725
  %17 = icmp eq i8 %16, 47, !dbg !4108
  br i1 %17, label %9, label %18, !dbg !4110, !llvm.loop !4111

18:                                               ; preds = %13, %9
  %19 = trunc i64 %10 to i32, !dbg !4107
  call void @llvm.dbg.value(metadata i32 0, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4080, metadata !DIExpression()), !dbg !4095
  %20 = icmp sgt i32 %19, 1, !dbg !4113
  br i1 %20, label %21, label %68, !dbg !4114

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !4115
  %23 = shl i64 %11, 32, !dbg !4114
  %24 = ashr exact i64 %23, 32, !dbg !4114
  br label %25, !dbg !4114

25:                                               ; preds = %54, %21
  %26 = phi i32 [ undef, %21 ], [ %55, %54 ], !dbg !4122
  %27 = phi i64 [ 0, %21 ], [ %41, %54 ]
  %28 = phi i32 [ 0, %21 ], [ %53, %54 ]
  %29 = phi i32 [ 0, %21 ], [ %51, %54 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %29, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !4120, metadata !DIExpression()), !dbg !4115
  %30 = icmp eq i32 %28, 3, !dbg !4123
  %31 = icmp sgt i32 %26, 0, !dbg !4124
  %32 = and i1 %30, %31, !dbg !4125
  br i1 %32, label %39, label %33, !dbg !4125

33:                                               ; preds = %25
  %34 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !4126
  %35 = load i8*, i8** %34, align 8, !dbg !4126, !tbaa !1387
  %36 = call i32 %2(i8* %35, %struct.savewd* nonnull %5, i8* %3) #10, !dbg !4127
  call void @llvm.dbg.value(metadata i32 %36, metadata !4082, metadata !DIExpression()), !dbg !4128
  %37 = icmp slt i32 %29, %36, !dbg !4129
  %38 = select i1 %37, i32 %36, i32 %29, !dbg !4131
  call void @llvm.dbg.value(metadata i32 %38, metadata !4080, metadata !DIExpression()), !dbg !4095
  br label %39, !dbg !4132

39:                                               ; preds = %25, %33
  %40 = phi i32 [ %38, %33 ], [ %29, %25 ], !dbg !4095
  call void @llvm.dbg.value(metadata i32 %40, metadata !4080, metadata !DIExpression()), !dbg !4095
  %41 = add nuw nsw i64 %27, 1, !dbg !4133
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !4133
  %43 = load i8*, i8** %42, align 8, !dbg !4133, !tbaa !1387
  %44 = load i8, i8* %43, align 1, !dbg !4133, !tbaa !1725
  %45 = icmp eq i8 %44, 47, !dbg !4133
  br i1 %45, label %50, label %46, !dbg !4134

46:                                               ; preds = %39
  %47 = call i32 @savewd_restore(%struct.savewd* nonnull %5, i32 %40), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %47, metadata !4088, metadata !DIExpression()), !dbg !4136
  %48 = icmp slt i32 %40, %47, !dbg !4137
  %49 = select i1 %48, i32 %47, i32 %40, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %49, metadata !4080, metadata !DIExpression()), !dbg !4095
  br label %50, !dbg !4140

50:                                               ; preds = %39, %46
  %51 = phi i32 [ %40, %39 ], [ %49, %46 ], !dbg !4095
  call void @llvm.dbg.value(metadata i64 %41, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  %52 = icmp slt i64 %41, %24, !dbg !4113
  %53 = load i32, i32* %7, align 4, !dbg !4095, !tbaa !1851
  br i1 %52, label %54, label %56, !dbg !4114, !llvm.loop !4141

54:                                               ; preds = %50
  %55 = load i32, i32* %22, align 4, !dbg !4122
  br label %25, !dbg !4114

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  %57 = trunc i64 %41 to i32, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %57, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !4050, metadata !DIExpression()) #10, !dbg !4143
  switch i32 %53, label %67 [
    i32 0, label %68
    i32 4, label %68
    i32 1, label %58
    i32 2, label %58
    i32 3, label %62
  ], !dbg !4145

58:                                               ; preds = %56, %56
  %59 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !4146
  %60 = load i32, i32* %59, align 4, !dbg !4146, !tbaa !1725
  %61 = call i32 @close(i32 %60) #10, !dbg !4147
  br label %68, !dbg !4148

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !4149
  %64 = load i32, i32* %63, align 4, !dbg !4149, !tbaa !1725
  %65 = icmp slt i32 %64, 0, !dbg !4149
  br i1 %65, label %68, label %66, !dbg !4150

66:                                               ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.97, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #25, !dbg !4149
  unreachable, !dbg !4149

67:                                               ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #25, !dbg !4151
  unreachable, !dbg !4151

68:                                               ; preds = %18, %56, %56, %58, %62
  %69 = phi i32 [ %57, %56 ], [ %57, %56 ], [ %57, %58 ], [ %57, %62 ], [ 0, %18 ]
  %70 = phi i32 [ %51, %56 ], [ %51, %56 ], [ %51, %58 ], [ %51, %62 ], [ 0, %18 ]
  store i32 5, i32* %7, align 4, !dbg !4152, !tbaa !1851
  call void @llvm.dbg.value(metadata i32 %57, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %51, metadata !4080, metadata !DIExpression()), !dbg !4095
  %71 = icmp slt i32 %69, %0, !dbg !4153
  br i1 %71, label %72, label %85, !dbg !4154

72:                                               ; preds = %68
  %73 = zext i32 %69 to i64, !dbg !4154
  %74 = zext i32 %0 to i64
  br label %75, !dbg !4154

75:                                               ; preds = %75, %72
  %76 = phi i64 [ %73, %72 ], [ %83, %75 ]
  %77 = phi i32 [ %70, %72 ], [ %82, %75 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !4078, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %77, metadata !4080, metadata !DIExpression()), !dbg !4095
  %78 = getelementptr inbounds i8*, i8** %1, i64 %76, !dbg !4155
  %79 = load i8*, i8** %78, align 8, !dbg !4155, !tbaa !1387
  %80 = call i32 %2(i8* %79, %struct.savewd* nonnull %5, i8* %3) #10, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %80, metadata !4091, metadata !DIExpression()), !dbg !4157
  %81 = icmp slt i32 %77, %80, !dbg !4158
  %82 = select i1 %81, i32 %80, i32 %77, !dbg !4160
  call void @llvm.dbg.value(metadata i32 %82, metadata !4080, metadata !DIExpression()), !dbg !4095
  %83 = add nuw nsw i64 %76, 1, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %83, metadata !4078, metadata !DIExpression()), !dbg !4095
  %84 = icmp eq i64 %83, %74
  br i1 %84, label %85, label %75, !dbg !4154, !llvm.loop !4162

85:                                               ; preds = %75, %68
  %86 = phi i32 [ %70, %68 ], [ %82, %75 ], !dbg !4095
  call void @llvm.dbg.value(metadata i32 %86, metadata !4080, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !4164
  ret i32 %86, !dbg !4165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4166 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4173, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %1, metadata !4174, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %2, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %3, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8** %4, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %5, metadata !4178, metadata !DIExpression()), !dbg !4179
  %7 = icmp eq i8* %1, null, !dbg !4180
  br i1 %7, label %10, label %8, !dbg !4182

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4183
  br label %12, !dbg !4183

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4184
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.102, i64 0, i64 0), i32 5) #10, !dbg !4185
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #10, !dbg !4185
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4186
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.104, i64 0, i64 0), i32 5) #10, !dbg !4187
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.105, i64 0, i64 0)) #10, !dbg !4187
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4188
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
  ], !dbg !4189

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.106, i64 0, i64 0), i32 5) #10, !dbg !4190
  %21 = load i8*, i8** %4, align 8, !dbg !4190, !tbaa !1387
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #10, !dbg !4190
  br label %147, !dbg !4192

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.107, i64 0, i64 0), i32 5) #10, !dbg !4193
  %25 = load i8*, i8** %4, align 8, !dbg !4193, !tbaa !1387
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4193
  %27 = load i8*, i8** %26, align 8, !dbg !4193, !tbaa !1387
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #10, !dbg !4193
  br label %147, !dbg !4194

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.108, i64 0, i64 0), i32 5) #10, !dbg !4195
  %31 = load i8*, i8** %4, align 8, !dbg !4195, !tbaa !1387
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4195
  %33 = load i8*, i8** %32, align 8, !dbg !4195, !tbaa !1387
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4195
  %35 = load i8*, i8** %34, align 8, !dbg !4195, !tbaa !1387
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #10, !dbg !4195
  br label %147, !dbg !4196

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.109, i64 0, i64 0), i32 5) #10, !dbg !4197
  %39 = load i8*, i8** %4, align 8, !dbg !4197, !tbaa !1387
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4197
  %41 = load i8*, i8** %40, align 8, !dbg !4197, !tbaa !1387
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4197
  %43 = load i8*, i8** %42, align 8, !dbg !4197, !tbaa !1387
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4197
  %45 = load i8*, i8** %44, align 8, !dbg !4197, !tbaa !1387
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #10, !dbg !4197
  br label %147, !dbg !4198

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.110, i64 0, i64 0), i32 5) #10, !dbg !4199
  %49 = load i8*, i8** %4, align 8, !dbg !4199, !tbaa !1387
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4199
  %51 = load i8*, i8** %50, align 8, !dbg !4199, !tbaa !1387
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4199
  %53 = load i8*, i8** %52, align 8, !dbg !4199, !tbaa !1387
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4199
  %55 = load i8*, i8** %54, align 8, !dbg !4199, !tbaa !1387
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4199
  %57 = load i8*, i8** %56, align 8, !dbg !4199, !tbaa !1387
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #10, !dbg !4199
  br label %147, !dbg !4200

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.111, i64 0, i64 0), i32 5) #10, !dbg !4201
  %61 = load i8*, i8** %4, align 8, !dbg !4201, !tbaa !1387
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4201
  %63 = load i8*, i8** %62, align 8, !dbg !4201, !tbaa !1387
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4201
  %65 = load i8*, i8** %64, align 8, !dbg !4201, !tbaa !1387
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4201
  %67 = load i8*, i8** %66, align 8, !dbg !4201, !tbaa !1387
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4201
  %69 = load i8*, i8** %68, align 8, !dbg !4201, !tbaa !1387
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4201
  %71 = load i8*, i8** %70, align 8, !dbg !4201, !tbaa !1387
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #10, !dbg !4201
  br label %147, !dbg !4202

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.112, i64 0, i64 0), i32 5) #10, !dbg !4203
  %75 = load i8*, i8** %4, align 8, !dbg !4203, !tbaa !1387
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4203
  %77 = load i8*, i8** %76, align 8, !dbg !4203, !tbaa !1387
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4203
  %79 = load i8*, i8** %78, align 8, !dbg !4203, !tbaa !1387
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4203
  %81 = load i8*, i8** %80, align 8, !dbg !4203, !tbaa !1387
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4203
  %83 = load i8*, i8** %82, align 8, !dbg !4203, !tbaa !1387
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4203
  %85 = load i8*, i8** %84, align 8, !dbg !4203, !tbaa !1387
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4203
  %87 = load i8*, i8** %86, align 8, !dbg !4203, !tbaa !1387
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #10, !dbg !4203
  br label %147, !dbg !4204

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.113, i64 0, i64 0), i32 5) #10, !dbg !4205
  %91 = load i8*, i8** %4, align 8, !dbg !4205, !tbaa !1387
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4205
  %93 = load i8*, i8** %92, align 8, !dbg !4205, !tbaa !1387
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4205
  %95 = load i8*, i8** %94, align 8, !dbg !4205, !tbaa !1387
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4205
  %97 = load i8*, i8** %96, align 8, !dbg !4205, !tbaa !1387
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4205
  %99 = load i8*, i8** %98, align 8, !dbg !4205, !tbaa !1387
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4205
  %101 = load i8*, i8** %100, align 8, !dbg !4205, !tbaa !1387
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4205
  %103 = load i8*, i8** %102, align 8, !dbg !4205, !tbaa !1387
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4205
  %105 = load i8*, i8** %104, align 8, !dbg !4205, !tbaa !1387
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #10, !dbg !4205
  br label %147, !dbg !4206

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.114, i64 0, i64 0), i32 5) #10, !dbg !4207
  %109 = load i8*, i8** %4, align 8, !dbg !4207, !tbaa !1387
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4207
  %111 = load i8*, i8** %110, align 8, !dbg !4207, !tbaa !1387
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4207
  %113 = load i8*, i8** %112, align 8, !dbg !4207, !tbaa !1387
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4207
  %115 = load i8*, i8** %114, align 8, !dbg !4207, !tbaa !1387
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4207
  %117 = load i8*, i8** %116, align 8, !dbg !4207, !tbaa !1387
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4207
  %119 = load i8*, i8** %118, align 8, !dbg !4207, !tbaa !1387
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4207
  %121 = load i8*, i8** %120, align 8, !dbg !4207, !tbaa !1387
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4207
  %123 = load i8*, i8** %122, align 8, !dbg !4207, !tbaa !1387
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4207
  %125 = load i8*, i8** %124, align 8, !dbg !4207, !tbaa !1387
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #10, !dbg !4207
  br label %147, !dbg !4208

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.115, i64 0, i64 0), i32 5) #10, !dbg !4209
  %129 = load i8*, i8** %4, align 8, !dbg !4209, !tbaa !1387
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4209
  %131 = load i8*, i8** %130, align 8, !dbg !4209, !tbaa !1387
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4209
  %133 = load i8*, i8** %132, align 8, !dbg !4209, !tbaa !1387
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4209
  %135 = load i8*, i8** %134, align 8, !dbg !4209, !tbaa !1387
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4209
  %137 = load i8*, i8** %136, align 8, !dbg !4209, !tbaa !1387
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4209
  %139 = load i8*, i8** %138, align 8, !dbg !4209, !tbaa !1387
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4209
  %141 = load i8*, i8** %140, align 8, !dbg !4209, !tbaa !1387
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4209
  %143 = load i8*, i8** %142, align 8, !dbg !4209, !tbaa !1387
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4209
  %145 = load i8*, i8** %144, align 8, !dbg !4209, !tbaa !1387
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #10, !dbg !4209
  br label %147, !dbg !4210

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4212 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4216, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %1, metadata !4217, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %2, metadata !4218, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %3, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8** %4, metadata !4220, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 0, metadata !4221, metadata !DIExpression()), !dbg !4222
  br label %6, !dbg !4223

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4225
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4226
  %9 = load i8*, i8** %8, align 8, !dbg !4226, !tbaa !1387
  %10 = icmp eq i8* %9, null, !dbg !4228
  %11 = add i64 %7, 1, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %11, metadata !4221, metadata !DIExpression()), !dbg !4222
  br i1 %10, label %12, label %6, !dbg !4228, !llvm.loop !4230

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4232
  ret void, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4234 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4245, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i8* %1, metadata !4246, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i8* %2, metadata !4247, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i8* %3, metadata !4248, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4249, metadata !DIExpression()), !dbg !4253
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4254
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4254
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4251, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 0, metadata !4250, metadata !DIExpression()), !dbg !4253
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4256
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4256
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4256
  %11 = load i32, i32* %8, align 8, !dbg !4259
  %12 = icmp ult i32 %11, 41, !dbg !4259
  br i1 %12, label %13, label %18, !dbg !4259

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4259
  %15 = zext i32 %11 to i64, !dbg !4259
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4259
  %17 = add nuw nsw i32 %11, 8, !dbg !4259
  store i32 %17, i32* %8, align 8, !dbg !4259
  br label %21, !dbg !4259

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4259
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4259
  store i8* %20, i8** %9, align 8, !dbg !4259
  br label %21, !dbg !4259

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4259
  %25 = load i8*, i8** %24, align 8, !dbg !4259
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4260
  store i8* %25, i8** %26, align 16, !dbg !4261, !tbaa !1387
  %27 = icmp eq i8* %25, null, !dbg !4262
  br i1 %27, label %30, label %28, !dbg !4263

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4250, metadata !DIExpression()), !dbg !4253
  %29 = icmp ult i32 %22, 41, !dbg !4259
  br i1 %29, label %35, label %32, !dbg !4259

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4264
  call void @llvm.dbg.value(metadata i64 %31, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %31, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4265
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4266
  ret void, !dbg !4266

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4259
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4259
  store i8* %34, i8** %9, align 8, !dbg !4259
  br label %40, !dbg !4259

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4259
  %37 = zext i32 %22 to i64, !dbg !4259
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4259
  %39 = add nuw nsw i32 %22, 8, !dbg !4259
  store i32 %39, i32* %8, align 8, !dbg !4259
  br label %40, !dbg !4259

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4259
  %44 = load i8*, i8** %43, align 8, !dbg !4259
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4260
  store i8* %44, i8** %45, align 8, !dbg !4261, !tbaa !1387
  %46 = icmp eq i8* %44, null, !dbg !4262
  br i1 %46, label %30, label %47, !dbg !4263

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4250, metadata !DIExpression()), !dbg !4253
  %48 = icmp ult i32 %41, 41, !dbg !4259
  br i1 %48, label %52, label %49, !dbg !4259

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4259
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4259
  store i8* %51, i8** %9, align 8, !dbg !4259
  br label %57, !dbg !4259

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4259
  %54 = zext i32 %41 to i64, !dbg !4259
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4259
  %56 = add nuw nsw i32 %41, 8, !dbg !4259
  store i32 %56, i32* %8, align 8, !dbg !4259
  br label %57, !dbg !4259

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4259
  %61 = load i8*, i8** %60, align 8, !dbg !4259
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4260
  store i8* %61, i8** %62, align 16, !dbg !4261, !tbaa !1387
  %63 = icmp eq i8* %61, null, !dbg !4262
  br i1 %63, label %30, label %64, !dbg !4263

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4250, metadata !DIExpression()), !dbg !4253
  %65 = icmp ult i32 %58, 41, !dbg !4259
  br i1 %65, label %69, label %66, !dbg !4259

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4259
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4259
  store i8* %68, i8** %9, align 8, !dbg !4259
  br label %74, !dbg !4259

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4259
  %71 = zext i32 %58 to i64, !dbg !4259
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4259
  %73 = add nuw nsw i32 %58, 8, !dbg !4259
  store i32 %73, i32* %8, align 8, !dbg !4259
  br label %74, !dbg !4259

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4259
  %78 = load i8*, i8** %77, align 8, !dbg !4259
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4260
  store i8* %78, i8** %79, align 8, !dbg !4261, !tbaa !1387
  %80 = icmp eq i8* %78, null, !dbg !4262
  br i1 %80, label %30, label %81, !dbg !4263

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4250, metadata !DIExpression()), !dbg !4253
  %82 = icmp ult i32 %75, 41, !dbg !4259
  br i1 %82, label %86, label %83, !dbg !4259

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4259
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4259
  store i8* %85, i8** %9, align 8, !dbg !4259
  br label %91, !dbg !4259

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4259
  %88 = zext i32 %75 to i64, !dbg !4259
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4259
  %90 = add nuw nsw i32 %75, 8, !dbg !4259
  store i32 %90, i32* %8, align 8, !dbg !4259
  br label %91, !dbg !4259

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4259
  %95 = load i8*, i8** %94, align 8, !dbg !4259
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4260
  store i8* %95, i8** %96, align 16, !dbg !4261, !tbaa !1387
  %97 = icmp eq i8* %95, null, !dbg !4262
  br i1 %97, label %30, label %98, !dbg !4263

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4250, metadata !DIExpression()), !dbg !4253
  %99 = icmp ult i32 %92, 41, !dbg !4259
  br i1 %99, label %103, label %100, !dbg !4259

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4259
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4259
  store i8* %102, i8** %9, align 8, !dbg !4259
  br label %108, !dbg !4259

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4259
  %105 = zext i32 %92 to i64, !dbg !4259
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4259
  %107 = add nuw nsw i32 %92, 8, !dbg !4259
  store i32 %107, i32* %8, align 8, !dbg !4259
  br label %108, !dbg !4259

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4259
  %111 = load i8*, i8** %110, align 8, !dbg !4259
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4260
  store i8* %111, i8** %112, align 8, !dbg !4261, !tbaa !1387
  %113 = icmp eq i8* %111, null, !dbg !4262
  br i1 %113, label %30, label %114, !dbg !4263

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4250, metadata !DIExpression()), !dbg !4253
  %115 = load i8*, i8** %9, align 8, !dbg !4259
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4259
  store i8* %116, i8** %9, align 8, !dbg !4259
  %117 = bitcast i8* %115 to i8**, !dbg !4259
  %118 = load i8*, i8** %117, align 8, !dbg !4259
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4260
  store i8* %118, i8** %119, align 16, !dbg !4261, !tbaa !1387
  %120 = icmp eq i8* %118, null, !dbg !4262
  br i1 %120, label %30, label %121, !dbg !4263

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4250, metadata !DIExpression()), !dbg !4253
  %122 = load i8*, i8** %9, align 8, !dbg !4259
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4259
  store i8* %123, i8** %9, align 8, !dbg !4259
  %124 = bitcast i8* %122 to i8**, !dbg !4259
  %125 = load i8*, i8** %124, align 8, !dbg !4259
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4260
  store i8* %125, i8** %126, align 8, !dbg !4261, !tbaa !1387
  %127 = icmp eq i8* %125, null, !dbg !4262
  br i1 %127, label %30, label %128, !dbg !4263

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4250, metadata !DIExpression()), !dbg !4253
  %129 = load i8*, i8** %9, align 8, !dbg !4259
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4259
  store i8* %130, i8** %9, align 8, !dbg !4259
  %131 = bitcast i8* %129 to i8**, !dbg !4259
  %132 = load i8*, i8** %131, align 8, !dbg !4259
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4260
  store i8* %132, i8** %133, align 16, !dbg !4261, !tbaa !1387
  %134 = icmp eq i8* %132, null, !dbg !4262
  br i1 %134, label %30, label %135, !dbg !4263

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4250, metadata !DIExpression()), !dbg !4253
  %136 = load i8*, i8** %9, align 8, !dbg !4259
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4259
  store i8* %137, i8** %9, align 8, !dbg !4259
  %138 = bitcast i8* %136 to i8**, !dbg !4259
  %139 = load i8*, i8** %138, align 8, !dbg !4259
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4260
  store i8* %139, i8** %140, align 8, !dbg !4261, !tbaa !1387
  %141 = icmp eq i8* %139, null, !dbg !4262
  %142 = select i1 %141, i64 9, i64 10, !dbg !4263
  br label %30, !dbg !4263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4267 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4271, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %1, metadata !4272, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %2, metadata !4273, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %3, metadata !4274, metadata !DIExpression()), !dbg !4280
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4281
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4281
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4275, metadata !DIExpression()), !dbg !4282
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4283
  call void @llvm.va_start(i8* nonnull %6), !dbg !4283
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4284
  call void @llvm.va_end(i8* nonnull %6), !dbg !4285
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4286
  ret void, !dbg !4286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4287 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4288, !tbaa !1387
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4288
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.118, i64 0, i64 0), i32 5) #10, !dbg !4289
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.119, i64 0, i64 0)) #10, !dbg !4289
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.120, i64 0, i64 0), i32 5) #10, !dbg !4290
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.121, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.122, i64 0, i64 0)) #10, !dbg !4290
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.123, i64 0, i64 0), i32 5) #10, !dbg !4291
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.124, i64 0, i64 0)) #10, !dbg !4291
  ret void, !dbg !4292
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4293 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4297
  %3 = udiv i64 9223372036854775807, %1, !dbg !4298
  %4 = icmp ult i64 %3, %0, !dbg !4298
  br i1 %4, label %5, label %6, !dbg !4300

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !4301
  unreachable, !dbg !4301

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4302
  call void @llvm.dbg.value(metadata i64 %7, metadata !4303, metadata !DIExpression()) #10, !dbg !4309
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4311
  call void @llvm.dbg.value(metadata i8* %8, metadata !4308, metadata !DIExpression()) #10, !dbg !4309
  %9 = icmp eq i8* %8, null, !dbg !4312
  %10 = icmp ne i64 %7, 0, !dbg !4314
  %11 = and i1 %10, %9, !dbg !4315
  br i1 %11, label %12, label %13, !dbg !4315

12:                                               ; preds = %6
  tail call void @xalloc_die() #25, !dbg !4316
  unreachable, !dbg !4316

13:                                               ; preds = %6
  ret i8* %8, !dbg !4317
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4304 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4303, metadata !DIExpression()), !dbg !4318
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %2, metadata !4308, metadata !DIExpression()), !dbg !4318
  %3 = icmp eq i8* %2, null, !dbg !4320
  %4 = icmp ne i64 %0, 0, !dbg !4321
  %5 = and i1 %4, %3, !dbg !4322
  br i1 %5, label %6, label %7, !dbg !4322

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4323
  unreachable, !dbg !4323

7:                                                ; preds = %1
  ret i8* %2, !dbg !4324
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !4325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4329, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %2, metadata !4331, metadata !DIExpression()), !dbg !4332
  %4 = udiv i64 9223372036854775807, %2, !dbg !4333
  %5 = icmp ult i64 %4, %1, !dbg !4333
  br i1 %5, label %6, label %7, !dbg !4335

6:                                                ; preds = %3
  tail call void @xalloc_die() #25, !dbg !4336
  unreachable, !dbg !4336

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4337
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()) #10, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %8, metadata !4343, metadata !DIExpression()) #10, !dbg !4344
  %9 = icmp eq i64 %8, 0, !dbg !4346
  %10 = icmp ne i8* %0, null, !dbg !4348
  %11 = and i1 %10, %9, !dbg !4349
  br i1 %11, label %12, label %13, !dbg !4349

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4350
  br label %19, !dbg !4352

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %14, metadata !4338, metadata !DIExpression()) #10, !dbg !4344
  %15 = icmp eq i8* %14, null, !dbg !4354
  %16 = icmp ne i64 %8, 0, !dbg !4356
  %17 = and i1 %16, %15, !dbg !4357
  br i1 %17, label %18, label %19, !dbg !4357

18:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !4358
  unreachable, !dbg !4358

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4344
  ret i8* %20, !dbg !4359
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4360
  %3 = icmp eq i64 %1, 0, !dbg !4361
  %4 = icmp ne i8* %0, null, !dbg !4362
  %5 = and i1 %4, %3, !dbg !4363
  br i1 %5, label %6, label %7, !dbg !4363

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4364
  br label %13, !dbg !4365

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4366
  call void @llvm.dbg.value(metadata i8* %8, metadata !4338, metadata !DIExpression()), !dbg !4360
  %9 = icmp eq i8* %8, null, !dbg !4367
  %10 = icmp ne i64 %1, 0, !dbg !4368
  %11 = and i1 %10, %9, !dbg !4369
  br i1 %11, label %12, label %13, !dbg !4369

12:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !4370
  unreachable, !dbg !4370

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4360
  ret i8* %14, !dbg !4371
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !701, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64* %1, metadata !702, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %2, metadata !703, metadata !DIExpression()), !dbg !4372
  %4 = load i64, i64* %1, align 8, !dbg !4373, !tbaa !3288
  call void @llvm.dbg.value(metadata i64 %4, metadata !704, metadata !DIExpression()), !dbg !4372
  %5 = icmp eq i8* %0, null, !dbg !4374
  br i1 %5, label %6, label %20, !dbg !4376

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4377
  br i1 %7, label %8, label %13, !dbg !4380

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4381
  call void @llvm.dbg.value(metadata i64 %9, metadata !704, metadata !DIExpression()), !dbg !4372
  %10 = icmp ugt i64 %2, 128, !dbg !4383
  %11 = zext i1 %10 to i64, !dbg !4383
  %12 = add nuw nsw i64 %9, %11, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %12, metadata !704, metadata !DIExpression()), !dbg !4372
  br label %13, !dbg !4385

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4372
  call void @llvm.dbg.value(metadata i64 %14, metadata !704, metadata !DIExpression()), !dbg !4372
  %15 = udiv i64 9223372036854775807, %2, !dbg !4386
  %16 = icmp ult i64 %15, %14, !dbg !4386
  br i1 %16, label %19, label %17, !dbg !4388

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !704, metadata !DIExpression()), !dbg !4372
  store i64 %14, i64* %1, align 8, !dbg !4389, !tbaa !3288
  %18 = mul i64 %14, %2, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()) #10, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %28, metadata !4343, metadata !DIExpression()) #10, !dbg !4391
  br label %31, !dbg !4393

19:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !4394
  unreachable, !dbg !4394

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4395
  %22 = icmp ugt i64 %21, %4, !dbg !4398
  br i1 %22, label %24, label %23, !dbg !4399

23:                                               ; preds = %20
  tail call void @xalloc_die() #25, !dbg !4400
  unreachable, !dbg !4400

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4401
  %26 = add nuw i64 %4, 1, !dbg !4402
  %27 = add i64 %26, %25, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %27, metadata !704, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %27, metadata !704, metadata !DIExpression()), !dbg !4372
  store i64 %27, i64* %1, align 8, !dbg !4389, !tbaa !3288
  %28 = mul i64 %27, %2, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()) #10, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %28, metadata !4343, metadata !DIExpression()) #10, !dbg !4391
  %29 = icmp eq i64 %28, 0, !dbg !4404
  br i1 %29, label %30, label %31, !dbg !4393

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !4405
  br label %38, !dbg !4406

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %33, metadata !4338, metadata !DIExpression()) #10, !dbg !4391
  %34 = icmp eq i8* %33, null, !dbg !4408
  %35 = icmp ne i64 %32, 0, !dbg !4409
  %36 = and i1 %35, %34, !dbg !4410
  br i1 %36, label %37, label %38, !dbg !4410

37:                                               ; preds = %31
  tail call void @xalloc_die() #25, !dbg !4411
  unreachable, !dbg !4411

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4391
  ret i8* %39, !dbg !4412
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !4413 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 %0, metadata !4303, metadata !DIExpression()) #10, !dbg !4417
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4419
  call void @llvm.dbg.value(metadata i8* %2, metadata !4308, metadata !DIExpression()) #10, !dbg !4417
  %3 = icmp eq i8* %2, null, !dbg !4420
  %4 = icmp ne i64 %0, 0, !dbg !4421
  %5 = and i1 %4, %3, !dbg !4422
  br i1 %5, label %6, label %7, !dbg !4422

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4423
  unreachable, !dbg !4423

7:                                                ; preds = %1
  ret i8* %2, !dbg !4424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4429, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64* %1, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i8* %0, metadata !701, metadata !DIExpression()) #10, !dbg !4432
  call void @llvm.dbg.value(metadata i64* %1, metadata !702, metadata !DIExpression()) #10, !dbg !4432
  call void @llvm.dbg.value(metadata i64 1, metadata !703, metadata !DIExpression()) #10, !dbg !4432
  %3 = load i64, i64* %1, align 8, !dbg !4434, !tbaa !3288
  call void @llvm.dbg.value(metadata i64 %3, metadata !704, metadata !DIExpression()) #10, !dbg !4432
  %4 = icmp eq i8* %0, null, !dbg !4435
  br i1 %4, label %5, label %12, !dbg !4436

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4437
  br i1 %6, label %9, label %7, !dbg !4438

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !704, metadata !DIExpression()) #10, !dbg !4432
  %8 = icmp slt i64 %3, 0, !dbg !4439
  br i1 %8, label %11, label %9, !dbg !4440

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !704, metadata !DIExpression()) #10, !dbg !4432
  store i64 %10, i64* %1, align 8, !dbg !4441, !tbaa !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i64 %18, metadata !4343, metadata !DIExpression()) #10, !dbg !4442
  br label %21, !dbg !4444

11:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !4445
  unreachable, !dbg !4445

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4446
  br i1 %13, label %15, label %14, !dbg !4447

14:                                               ; preds = %12
  tail call void @xalloc_die() #25, !dbg !4448
  unreachable, !dbg !4448

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4449
  %17 = add nuw nsw i64 %3, 1, !dbg !4450
  %18 = add nuw nsw i64 %17, %16, !dbg !4451
  call void @llvm.dbg.value(metadata i64 %18, metadata !704, metadata !DIExpression()) #10, !dbg !4432
  call void @llvm.dbg.value(metadata i64 %18, metadata !704, metadata !DIExpression()) #10, !dbg !4432
  store i64 %18, i64* %1, align 8, !dbg !4441, !tbaa !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !4338, metadata !DIExpression()) #10, !dbg !4442
  call void @llvm.dbg.value(metadata i64 %18, metadata !4343, metadata !DIExpression()) #10, !dbg !4442
  %19 = icmp eq i64 %18, 0, !dbg !4452
  br i1 %19, label %20, label %21, !dbg !4444

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !4453
  br label %28, !dbg !4454

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !4455
  call void @llvm.dbg.value(metadata i8* %23, metadata !4338, metadata !DIExpression()) #10, !dbg !4442
  %24 = icmp eq i8* %23, null, !dbg !4456
  %25 = icmp ne i64 %22, 0, !dbg !4457
  %26 = and i1 %25, %24, !dbg !4458
  br i1 %26, label %27, label %28, !dbg !4458

27:                                               ; preds = %21
  tail call void @xalloc_die() #25, !dbg !4459
  unreachable, !dbg !4459

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4442
  ret i8* %29, !dbg !4460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4461 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %0, metadata !4465, metadata !DIExpression()) #10, !dbg !4470
  call void @llvm.dbg.value(metadata i64 1, metadata !4468, metadata !DIExpression()) #10, !dbg !4470
  %2 = icmp slt i64 %0, 0, !dbg !4472
  br i1 %2, label %6, label %3, !dbg !4474

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #10, !dbg !4475
  call void @llvm.dbg.value(metadata i8* %4, metadata !4469, metadata !DIExpression()) #10, !dbg !4470
  %5 = icmp eq i8* %4, null, !dbg !4476
  br i1 %5, label %6, label %7, !dbg !4477

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #25, !dbg !4478
  unreachable, !dbg !4478

7:                                                ; preds = %3
  ret i8* %4, !dbg !4479
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4466 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4465, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %1, metadata !4468, metadata !DIExpression()), !dbg !4480
  %3 = udiv i64 9223372036854775807, %1, !dbg !4481
  %4 = icmp ult i64 %3, %0, !dbg !4481
  br i1 %4, label %8, label %5, !dbg !4482

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %6, metadata !4469, metadata !DIExpression()), !dbg !4480
  %7 = icmp eq i8* %6, null, !dbg !4484
  br i1 %7, label %8, label %9, !dbg !4485

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #25, !dbg !4486
  unreachable, !dbg !4486

9:                                                ; preds = %5
  ret i8* %6, !dbg !4487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4492, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %1, metadata !4493, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()) #10, !dbg !4495
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4497
  call void @llvm.dbg.value(metadata i8* %3, metadata !4308, metadata !DIExpression()) #10, !dbg !4495
  %4 = icmp eq i8* %3, null, !dbg !4498
  %5 = icmp ne i64 %1, 0, !dbg !4499
  %6 = and i1 %5, %4, !dbg !4500
  br i1 %6, label %7, label %8, !dbg !4500

7:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !4501
  unreachable, !dbg !4501

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4502, metadata !DIExpression()) #10, !dbg !4511
  call void @llvm.dbg.value(metadata i8* %0, metadata !4509, metadata !DIExpression()) #10, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()) #10, !dbg !4511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #10, !dbg !4513
  ret i8* %3, !dbg !4514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4517, metadata !DIExpression()), !dbg !4518
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #24, !dbg !4519
  %3 = add i64 %2, 1, !dbg !4520
  call void @llvm.dbg.value(metadata i8* %0, metadata !4492, metadata !DIExpression()) #10, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %3, metadata !4493, metadata !DIExpression()) #10, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %3, metadata !4303, metadata !DIExpression()) #10, !dbg !4523
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4525
  call void @llvm.dbg.value(metadata i8* %4, metadata !4308, metadata !DIExpression()) #10, !dbg !4523
  %5 = icmp eq i8* %4, null, !dbg !4526
  %6 = icmp ne i64 %3, 0, !dbg !4527
  %7 = and i1 %6, %5, !dbg !4528
  br i1 %7, label %8, label %9, !dbg !4528

8:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4529
  unreachable, !dbg !4529

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4502, metadata !DIExpression()) #10, !dbg !4530
  call void @llvm.dbg.value(metadata i8* %0, metadata !4509, metadata !DIExpression()) #10, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %3, metadata !4510, metadata !DIExpression()) #10, !dbg !4530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #10, !dbg !4532
  ret i8* %4, !dbg !4533
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4534 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4535, !tbaa !1513
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #10, !dbg !4536
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i64 0, i64 0), i8* %2) #10, !dbg !4537
  tail call void @abort() #25, !dbg !4538
  unreachable, !dbg !4538
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !4539 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4541, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %1, metadata !4542, metadata !DIExpression()), !dbg !4547
  %3 = icmp eq i64 %0, 0, !dbg !4548
  %4 = icmp eq i64 %1, 0, !dbg !4549
  %5 = or i1 %3, %4, !dbg !4550
  br i1 %5, label %11, label %6, !dbg !4550

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4544, metadata !DIExpression()), !dbg !4551
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4552
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4552
  br i1 %8, label %9, label %11, !dbg !4554

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #27, !dbg !4555
  store i32 12, i32* %10, align 4, !dbg !4557, !tbaa !1513
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4541, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %12, metadata !4542, metadata !DIExpression()), !dbg !4547
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #10, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %14, metadata !4543, metadata !DIExpression()), !dbg !4547
  br label %15, !dbg !4559

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4547
  ret i8* %16, !dbg !4560
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.savewd* %3) local_unnamed_addr #8 !dbg !4561 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4569, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8* %1, metadata !4570, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %2, metadata !4571, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata %struct.savewd* %3, metadata !4572, metadata !DIExpression()), !dbg !4578
  %6 = bitcast i32* %5 to i8*, !dbg !4579
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4579
  %7 = icmp eq i32* %0, null, !dbg !4580
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4582
  call void @llvm.dbg.value(metadata i32* %8, metadata !4569, metadata !DIExpression()), !dbg !4578
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.savewd* %3) #10, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %9, metadata !4573, metadata !DIExpression()), !dbg !4578
  %10 = icmp ugt i64 %9, -3, !dbg !4584
  %11 = icmp ne i64 %2, 0, !dbg !4585
  %12 = and i1 %11, %10, !dbg !4586
  br i1 %12, label %13, label %18, !dbg !4586

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4587
  br i1 %14, label %18, label %15, !dbg !4588

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4589, !tbaa !1725
  call void @llvm.dbg.value(metadata i8 %16, metadata !4575, metadata !DIExpression()), !dbg !4590
  %17 = zext i8 %16 to i32, !dbg !4591
  store i32 %17, i32* %8, align 4, !dbg !4592, !tbaa !1513
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4578
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4593
  ret i64 %19, !dbg !4593
}

; Function Attrs: nounwind
declare !dbg !722 i64 @mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4594 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4600, metadata !DIExpression()), !dbg !4605
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4606
  call void @llvm.dbg.value(metadata i1 undef, metadata !4601, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4607, metadata !DIExpression()), !dbg !4610
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4612
  %4 = load i32, i32* %3, align 8, !dbg !4612, !tbaa !4613
  %5 = and i32 %4, 32, !dbg !4612
  %6 = icmp eq i32 %5, 0, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %6, metadata !4603, metadata !DIExpression()), !dbg !4605
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4615
  %8 = icmp ne i32 %7, 0, !dbg !4616
  call void @llvm.dbg.value(metadata i1 %8, metadata !4604, metadata !DIExpression()), !dbg !4605
  br i1 %6, label %9, label %19, !dbg !4617

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4619
  call void @llvm.dbg.value(metadata i1 %10, metadata !4601, metadata !DIExpression()), !dbg !4605
  %11 = xor i1 %8, true, !dbg !4620
  %12 = or i1 %10, %11, !dbg !4620
  %13 = sext i1 %8 to i32, !dbg !4620
  br i1 %12, label %22, label %14, !dbg !4620

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #27, !dbg !4621
  %16 = load i32, i32* %15, align 4, !dbg !4621, !tbaa !1513
  %17 = icmp ne i32 %16, 9, !dbg !4622
  %18 = sext i1 %17 to i32, !dbg !4623
  br label %22, !dbg !4623

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4624

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #27, !dbg !4626
  store i32 0, i32* %21, align 4, !dbg !4628, !tbaa !1513
  br label %22, !dbg !4626

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4605
  ret i32 %23, !dbg !4629
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @open_safer(i8* nocapture readonly %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4630 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !4632, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i32 %1, metadata !4633, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4634, metadata !DIExpression()), !dbg !4647
  %4 = and i32 %1, 64, !dbg !4648
  %5 = icmp eq i32 %4, 0, !dbg !4648
  br i1 %5, label %25, label %6, !dbg !4649

6:                                                ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4650
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10, !dbg !4650
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4635, metadata !DIExpression()), !dbg !4651
  call void @llvm.va_start(i8* nonnull %7), !dbg !4652
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4653
  %9 = load i32, i32* %8, align 16, !dbg !4653
  %10 = icmp ult i32 %9, 41, !dbg !4653
  br i1 %10, label %11, label %17, !dbg !4653

11:                                               ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4653
  %13 = load i8*, i8** %12, align 16, !dbg !4653
  %14 = zext i32 %9 to i64, !dbg !4653
  %15 = getelementptr i8, i8* %13, i64 %14, !dbg !4653
  %16 = add nuw nsw i32 %9, 8, !dbg !4653
  store i32 %16, i32* %8, align 16, !dbg !4653
  br label %21, !dbg !4653

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4653
  %19 = load i8*, i8** %18, align 8, !dbg !4653
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4653
  store i8* %20, i8** %18, align 8, !dbg !4653
  br label %21, !dbg !4653

21:                                               ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4653
  %24 = load i32, i32* %23, align 4, !dbg !4653
  call void @llvm.dbg.value(metadata i32 %24, metadata !4634, metadata !DIExpression()), !dbg !4647
  call void @llvm.va_end(i8* nonnull %7), !dbg !4654
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10, !dbg !4655
  br label %25, !dbg !4656

25:                                               ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ], !dbg !4647
  call void @llvm.dbg.value(metadata i32 %26, metadata !4634, metadata !DIExpression()), !dbg !4647
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #10, !dbg !4657
  %28 = call i32 @fd_safer(i32 %27) #10, !dbg !4658
  ret i32 %28, !dbg !4659
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4660 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4662, metadata !DIExpression()), !dbg !4667
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4668
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #10, !dbg !4668
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4663, metadata !DIExpression()), !dbg !4669
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #10, !dbg !4670
  %5 = icmp eq i32 %4, 0, !dbg !4670
  br i1 %5, label %6, label %13, !dbg !4672

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4673
  %8 = load i16, i16* %7, align 16, !dbg !4673
  %9 = icmp eq i16 %8, 67, !dbg !4673
  br i1 %9, label %13, label %10, !dbg !4674

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i64 6), !dbg !4675
  %12 = icmp ne i32 %11, 0, !dbg !4676
  br label %13, !dbg !4674

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4667
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #10, !dbg !4677
  ret i1 %14, !dbg !4677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4678 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4681
  call void @llvm.dbg.value(metadata i8* %1, metadata !4680, metadata !DIExpression()), !dbg !4682
  %2 = icmp eq i8* %1, null, !dbg !4683
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.150, i64 0, i64 0), i8* %1, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %3, metadata !4680, metadata !DIExpression()), !dbg !4682
  %4 = load i8, i8* %3, align 1, !dbg !4686, !tbaa !1725
  %5 = icmp eq i8 %4, 0, !dbg !4690
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i8* %3, !dbg !4691
  call void @llvm.dbg.value(metadata i8* %6, metadata !4680, metadata !DIExpression()), !dbg !4682
  ret i8* %6, !dbg !4692
}

; Function Attrs: nounwind
declare !dbg !1179 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mkancesdirs(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !4693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4697, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !4698, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !4699, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %3, metadata !4700, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* null, metadata !4701, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %0, metadata !4702, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %0, metadata !4703, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8 0, metadata !4705, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %0, metadata !4703, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4714
  %5 = load i8, i8* %0, align 1, !dbg !4715, !tbaa !1725
  call void @llvm.dbg.value(metadata i8 %5, metadata !4704, metadata !DIExpression()), !dbg !4714
  %6 = icmp eq i8 %5, 0, !dbg !4716
  br i1 %6, label %76, label %7, !dbg !4716

7:                                                ; preds = %4, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %4 ]
  %9 = phi i8* [ %13, %70 ], [ %0, %4 ]
  %10 = phi i8 [ %74, %70 ], [ 0, %4 ]
  %11 = phi i8* [ %73, %70 ], [ null, %4 ]
  %12 = phi i8* [ %72, %70 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4717
  call void @llvm.dbg.value(metadata i8 %10, metadata !4705, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %11, metadata !4701, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %12, metadata !4702, metadata !DIExpression()), !dbg !4714
  %14 = load i8, i8* %13, align 1, !dbg !4718, !tbaa !1725
  %15 = icmp eq i8 %14, 47, !dbg !4718
  %16 = icmp eq i8 %8, 47, !dbg !4719
  br i1 %15, label %17, label %19, !dbg !4720

17:                                               ; preds = %7
  %18 = select i1 %16, i8* %11, i8* %13, !dbg !4721
  br label %70, !dbg !4721

19:                                               ; preds = %7
  br i1 %16, label %20, label %70, !dbg !4723

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !4724
  %22 = icmp ne i8* %11, null, !dbg !4725
  %23 = and i1 %22, %21, !dbg !4726
  br i1 %23, label %24, label %66, !dbg !4726

24:                                               ; preds = %20
  %25 = ptrtoint i8* %11 to i64, !dbg !4727
  %26 = ptrtoint i8* %12 to i64, !dbg !4727
  %27 = sub i64 %25, %26, !dbg !4727
  %28 = icmp eq i64 %27, 1, !dbg !4728
  br i1 %28, label %29, label %33, !dbg !4729

29:                                               ; preds = %24
  %30 = load i8, i8* %12, align 1, !dbg !4730, !tbaa !1725
  %31 = icmp eq i8 %30, 46, !dbg !4731
  br i1 %31, label %66, label %32, !dbg !4732

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4712, metadata !DIExpression()), !dbg !4733
  store i8 0, i8* %11, align 1, !dbg !4734, !tbaa !1725
  br label %42, !dbg !4735

33:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4712, metadata !DIExpression()), !dbg !4733
  store i8 0, i8* %11, align 1, !dbg !4734, !tbaa !1725
  %34 = icmp eq i64 %27, 2, !dbg !4737
  br i1 %34, label %35, label %42, !dbg !4735

35:                                               ; preds = %33
  %36 = load i8, i8* %12, align 1, !dbg !4738, !tbaa !1725
  %37 = icmp eq i8 %36, 46, !dbg !4739
  br i1 %37, label %38, label %42, !dbg !4740

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4741
  %40 = load i8, i8* %39, align 1, !dbg !4741, !tbaa !1725
  %41 = icmp eq i8 %40, 46, !dbg !4742
  br i1 %41, label %48, label %42, !dbg !4743

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(i8* nonnull %0, i8* %12, i8* %3) #10, !dbg !4744
  %44 = icmp slt i32 %43, 0, !dbg !4746
  br i1 %44, label %45, label %48, !dbg !4747

45:                                               ; preds = %42
  %46 = tail call i32* @__errno_location() #27, !dbg !4748
  %47 = load i32, i32* %46, align 4, !dbg !4748, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %47, metadata !4706, metadata !DIExpression()), !dbg !4733
  br label %48, !dbg !4749

48:                                               ; preds = %42, %38, %45
  %49 = phi i8 [ %10, %45 ], [ 0, %38 ], [ 1, %42 ], !dbg !4714
  %50 = phi i32 [ %47, %45 ], [ 0, %38 ], [ 0, %42 ], !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i8 %49, metadata !4705, metadata !DIExpression()), !dbg !4714
  %51 = and i8 %49, 1, !dbg !4750
  %52 = zext i8 %51 to i32, !dbg !4752
  call void @llvm.dbg.value(metadata i32 %52, metadata !4712, metadata !DIExpression()), !dbg !4733
  %53 = tail call i32 @savewd_chdir(%struct.savewd* %1, i8* %12, i32 %52, i32* null) #10, !dbg !4753
  call void @llvm.dbg.value(metadata i32 %53, metadata !4713, metadata !DIExpression()), !dbg !4733
  %54 = icmp eq i32 %53, -1, !dbg !4754
  br i1 %54, label %57, label %55, !dbg !4754

55:                                               ; preds = %48
  store i8 47, i8* %11, align 1, !dbg !4755, !tbaa !1725
  %56 = icmp eq i32 %53, 0, !dbg !4757
  br i1 %56, label %66, label %57, !dbg !4759

57:                                               ; preds = %48, %55
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %50, metadata !4706, metadata !DIExpression()), !dbg !4733
  %58 = icmp eq i32 %50, 0, !dbg !4760
  br i1 %58, label %64, label %59, !dbg !4763

59:                                               ; preds = %57
  %60 = tail call i32* @__errno_location() #27, !dbg !4764
  %61 = load i32, i32* %60, align 4, !dbg !4764, !tbaa !1513
  %62 = icmp eq i32 %61, 2, !dbg !4765
  br i1 %62, label %63, label %64, !dbg !4766

63:                                               ; preds = %59
  store i32 %50, i32* %60, align 4, !dbg !4767, !tbaa !1513
  br label %64, !dbg !4768

64:                                               ; preds = %59, %63, %57
  %65 = sext i32 %53 to i64, !dbg !4769
  br label %81

66:                                               ; preds = %20, %29, %55
  %67 = phi i8* [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i8 [ %49, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, i8* %13, align 1, !dbg !4715, !tbaa !1725
  br label %70, !dbg !4715

70:                                               ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !4715
  %72 = phi i8* [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !4714
  %73 = phi i8* [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !4714
  %74 = phi i8 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ], !dbg !4770
  call void @llvm.dbg.value(metadata i8 %74, metadata !4705, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %73, metadata !4701, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %13, metadata !4703, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %72, metadata !4702, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i8* %13, metadata !4703, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4714
  call void @llvm.dbg.value(metadata i8 %71, metadata !4704, metadata !DIExpression()), !dbg !4714
  %75 = icmp eq i8 %71, 0, !dbg !4716
  br i1 %75, label %76, label %7, !dbg !4716, !llvm.loop !4771

76:                                               ; preds = %70, %4
  %77 = phi i8* [ %0, %4 ], [ %72, %70 ], !dbg !4773
  call void @llvm.dbg.value(metadata i8* %77, metadata !4702, metadata !DIExpression()), !dbg !4714
  %78 = ptrtoint i8* %77 to i64, !dbg !4774
  %79 = ptrtoint i8* %0 to i64, !dbg !4774
  %80 = sub i64 %78, %79, !dbg !4774
  br label %81, !dbg !4775

81:                                               ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !4714
  ret i64 %82, !dbg !4776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dirchownmod(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #8 !dbg !4777 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4781, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i8* %1, metadata !4782, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %2, metadata !4783, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %3, metadata !4784, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %4, metadata !4785, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %5, metadata !4786, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %6, metadata !4787, metadata !DIExpression()), !dbg !4825
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !4826
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %9) #10, !dbg !4826
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !4788, metadata !DIExpression()), !dbg !4827
  %10 = icmp slt i32 %0, 0, !dbg !4828
  br i1 %10, label %11, label %13, !dbg !4829

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %1, metadata !4830, metadata !DIExpression()) #10, !dbg !4837
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4836, metadata !DIExpression()) #10, !dbg !4837
  %12 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %8) #10, !dbg !4839
  br label %15, !dbg !4829

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %0, metadata !4840, metadata !DIExpression()) #10, !dbg !4846
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4845, metadata !DIExpression()) #10, !dbg !4846
  %14 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %8) #10, !dbg !4848
  br label %15, !dbg !4829

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !4829
  call void @llvm.dbg.value(metadata i32 %16, metadata !4810, metadata !DIExpression()), !dbg !4825
  %17 = icmp eq i32 %16, 0, !dbg !4849
  br i1 %17, label %18, label %75, !dbg !4850

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3, !dbg !4851
  %20 = load i32, i32* %19, align 8, !dbg !4851, !tbaa !1914
  call void @llvm.dbg.value(metadata i32 %20, metadata !4811, metadata !DIExpression()), !dbg !4852
  %21 = and i32 %20, 61440, !dbg !4853
  %22 = icmp eq i32 %21, 16384, !dbg !4853
  br i1 %22, label %25, label %23, !dbg !4854

23:                                               ; preds = %18
  %24 = tail call i32* @__errno_location() #27, !dbg !4855
  store i32 20, i32* %24, align 4, !dbg !4857, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 -1, metadata !4810, metadata !DIExpression()), !dbg !4825
  br label %75, !dbg !4858

25:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !4814, metadata !DIExpression()), !dbg !4859
  %26 = icmp eq i32 %3, -1, !dbg !4860
  br i1 %26, label %31, label %27, !dbg !4862

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4, !dbg !4863
  %29 = load i32, i32* %28, align 4, !dbg !4863, !tbaa !4864
  %30 = icmp eq i32 %29, %3, !dbg !4865
  br i1 %30, label %31, label %37, !dbg !4866

31:                                               ; preds = %27, %25
  %32 = icmp eq i32 %4, -1, !dbg !4867
  br i1 %32, label %55, label %33, !dbg !4868

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5, !dbg !4869
  %35 = load i32, i32* %34, align 8, !dbg !4869, !tbaa !4870
  %36 = icmp eq i32 %35, %4, !dbg !4871
  br i1 %36, label %55, label %37, !dbg !4872

37:                                               ; preds = %27, %33
  %38 = icmp sgt i32 %0, -1, !dbg !4873
  br i1 %38, label %39, label %41, !dbg !4875

39:                                               ; preds = %37
  %40 = call i32 @fchown(i32 %0, i32 %3, i32 %4) #10, !dbg !4876
  br label %47, !dbg !4875

41:                                               ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !4877
  br i1 %42, label %45, label %43, !dbg !4878

43:                                               ; preds = %41
  %44 = call i32 @lchown(i8* %1, i32 %3, i32 %4) #10, !dbg !4879
  br label %47, !dbg !4878

45:                                               ; preds = %41
  %46 = call i32 @chown(i8* %1, i32 %3, i32 %4) #10, !dbg !4880
  br label %47, !dbg !4878

47:                                               ; preds = %43, %45, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !4875
  call void @llvm.dbg.value(metadata i32 %48, metadata !4810, metadata !DIExpression()), !dbg !4825
  %49 = icmp eq i32 %48, 0, !dbg !4881
  br i1 %49, label %50, label %75, !dbg !4883

50:                                               ; preds = %47
  %51 = and i32 %20, 73, !dbg !4884
  %52 = icmp eq i32 %51, 0, !dbg !4884
  %53 = and i32 %20, 3072, !dbg !4885
  %54 = select i1 %52, i32 0, i32 %53, !dbg !4886
  br label %55, !dbg !4886

55:                                               ; preds = %33, %31, %50
  %56 = phi i32 [ %54, %50 ], [ 0, %31 ], [ 0, %33 ]
  %57 = xor i32 %20, %5, !dbg !4887
  %58 = or i32 %56, %57, !dbg !4888
  %59 = and i32 %58, %6, !dbg !4889
  %60 = icmp eq i32 %59, 0, !dbg !4889
  br i1 %60, label %75, label %61, !dbg !4890

61:                                               ; preds = %55
  %62 = and i32 %6, 4095, !dbg !4891
  %63 = xor i32 %62, 4095, !dbg !4891
  %64 = and i32 %63, %20, !dbg !4892
  %65 = or i32 %64, %5, !dbg !4893
  call void @llvm.dbg.value(metadata i32 %65, metadata !4817, metadata !DIExpression()), !dbg !4894
  %66 = icmp sgt i32 %0, -1, !dbg !4895
  br i1 %66, label %67, label %69, !dbg !4896

67:                                               ; preds = %61
  %68 = call i32 @fchmod(i32 %0, i32 %65) #10, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %76, metadata !4810, metadata !DIExpression()), !dbg !4825
  br label %78, !dbg !4898

69:                                               ; preds = %61
  %70 = icmp eq i32 %2, -1, !dbg !4899
  br i1 %70, label %73, label %71, !dbg !4900

71:                                               ; preds = %69
  %72 = call i32 @lchmod(i8* %1, i32 %65) #10, !dbg !4901
  br label %87, !dbg !4900

73:                                               ; preds = %69
  %74 = call i32 @chmod(i8* %1, i32 %65) #10, !dbg !4902
  br label %87, !dbg !4900

75:                                               ; preds = %47, %23, %55, %15
  %76 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %55 ], [ %48, %47 ], !dbg !4825
  call void @llvm.dbg.value(metadata i32 %76, metadata !4810, metadata !DIExpression()), !dbg !4825
  %77 = icmp sgt i32 %0, -1, !dbg !4903
  br i1 %77, label %78, label %87, !dbg !4898

78:                                               ; preds = %67, %75
  %79 = phi i32 [ %68, %67 ], [ %76, %75 ]
  %80 = icmp eq i32 %79, 0, !dbg !4904
  br i1 %80, label %81, label %83, !dbg !4905

81:                                               ; preds = %78
  %82 = call i32 @close(i32 %0) #10, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %82, metadata !4810, metadata !DIExpression()), !dbg !4825
  br label %87, !dbg !4907

83:                                               ; preds = %78
  %84 = tail call i32* @__errno_location() #27, !dbg !4908
  %85 = load i32, i32* %84, align 4, !dbg !4908, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %85, metadata !4820, metadata !DIExpression()), !dbg !4909
  %86 = call i32 @close(i32 %0) #10, !dbg !4910
  store i32 %85, i32* %84, align 4, !dbg !4911, !tbaa !1513
  br label %87

87:                                               ; preds = %71, %73, %81, %83, %75
  %88 = phi i32 [ %82, %81 ], [ %79, %83 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], !dbg !4825
  call void @llvm.dbg.value(metadata i32 %88, metadata !4810, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %9) #10, !dbg !4912
  ret i32 %88, !dbg !4913
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1203 i32 @fchown(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1206 i32 @lchown(i8* nocapture readonly, i32, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1209 i32 @chown(i8* nocapture readonly, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1210 i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !466 i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4918, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i8* %1, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %2, metadata !4920, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 %0, metadata !4922, metadata !DIExpression()) #10, !dbg !4931
  call void @llvm.dbg.value(metadata i8* %1, metadata !4925, metadata !DIExpression()) #10, !dbg !4931
  call void @llvm.dbg.value(metadata i64 %2, metadata !4926, metadata !DIExpression()) #10, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %0, metadata !4933, metadata !DIExpression()) #10, !dbg !4939
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4941
  call void @llvm.dbg.value(metadata i8* %4, metadata !4938, metadata !DIExpression()) #10, !dbg !4939
  call void @llvm.dbg.value(metadata i8* %4, metadata !4927, metadata !DIExpression()) #10, !dbg !4931
  %5 = icmp eq i8* %4, null, !dbg !4942
  br i1 %5, label %6, label %9, !dbg !4943

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4944
  br i1 %7, label %19, label %8, !dbg !4947

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4948, !tbaa !1725
  br label %19, !dbg !4949

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #24, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %10, metadata !4928, metadata !DIExpression()) #10, !dbg !4951
  %11 = icmp ult i64 %10, %2, !dbg !4952
  br i1 %11, label %12, label %14, !dbg !4954

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4955
  call void @llvm.dbg.value(metadata i8* %1, metadata !4957, metadata !DIExpression()) #10, !dbg !4962
  call void @llvm.dbg.value(metadata i8* %4, metadata !4960, metadata !DIExpression()) #10, !dbg !4962
  call void @llvm.dbg.value(metadata i64 %13, metadata !4961, metadata !DIExpression()) #10, !dbg !4962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #10, !dbg !4964
  br label %19, !dbg !4965

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4966
  br i1 %15, label %19, label %16, !dbg !4969

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4970
  call void @llvm.dbg.value(metadata i8* %1, metadata !4957, metadata !DIExpression()) #10, !dbg !4972
  call void @llvm.dbg.value(metadata i8* %4, metadata !4960, metadata !DIExpression()) #10, !dbg !4972
  call void @llvm.dbg.value(metadata i64 %17, metadata !4961, metadata !DIExpression()) #10, !dbg !4972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #10, !dbg !4974
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4975
  store i8 0, i8* %18, align 1, !dbg !4976, !tbaa !1725
  br label %19, !dbg !4977

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4978
  ret i32 %20, !dbg !4979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i32 %0, metadata !4933, metadata !DIExpression()) #10, !dbg !4984
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4986
  call void @llvm.dbg.value(metadata i8* %2, metadata !4938, metadata !DIExpression()) #10, !dbg !4984
  ret i8* %2, !dbg !4987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_safer(i32 %0) local_unnamed_addr #8 !dbg !4988 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4990, metadata !DIExpression()), !dbg !4995
  %2 = icmp ult i32 %0, 3, !dbg !4996
  br i1 %2, label %3, label %8, !dbg !4996

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #10, !dbg !4997
  call void @llvm.dbg.value(metadata i32 %4, metadata !4991, metadata !DIExpression()), !dbg !4998
  %5 = tail call i32* @__errno_location() #27, !dbg !4999
  %6 = load i32, i32* %5, align 4, !dbg !4999, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %6, metadata !4994, metadata !DIExpression()), !dbg !4998
  %7 = tail call i32 @close(i32 %0) #10, !dbg !5000
  store i32 %6, i32* %5, align 4, !dbg !5001, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %4, metadata !4990, metadata !DIExpression()), !dbg !4995
  br label %8, !dbg !5002

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4990, metadata !DIExpression()), !dbg !4995
  ret i32 %9, !dbg !5003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !5004 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5010, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata i32 0, metadata !5011, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata i32 0, metadata !5013, metadata !DIExpression()), !dbg !5014
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5015
  call void @llvm.dbg.value(metadata i32 %2, metadata !5012, metadata !DIExpression()), !dbg !5014
  %3 = icmp slt i32 %2, 0, !dbg !5016
  br i1 %3, label %4, label %6, !dbg !5018

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5019
  br label %24, !dbg !5020

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5021
  %8 = icmp eq i32 %7, 0, !dbg !5021
  br i1 %8, label %13, label %9, !dbg !5023

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5024
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5025
  %12 = icmp eq i64 %11, -1, !dbg !5026
  br i1 %12, label %16, label %13, !dbg !5027

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5028
  %15 = icmp eq i32 %14, 0, !dbg !5028
  br i1 %15, label %16, label %18, !dbg !5029

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !5011, metadata !DIExpression()), !dbg !5014
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5030
  call void @llvm.dbg.value(metadata i32 %21, metadata !5013, metadata !DIExpression()), !dbg !5014
  br label %24, !dbg !5031

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #27, !dbg !5032
  %20 = load i32, i32* %19, align 4, !dbg !5032, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %20, metadata !5011, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata i32 %20, metadata !5011, metadata !DIExpression()), !dbg !5014
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5030
  call void @llvm.dbg.value(metadata i32 %21, metadata !5013, metadata !DIExpression()), !dbg !5014
  %22 = icmp eq i32 %20, 0, !dbg !5033
  br i1 %22, label %24, label %23, !dbg !5031

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5035, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 -1, metadata !5013, metadata !DIExpression()), !dbg !5014
  br label %24, !dbg !5037

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5014
  ret i32 %25, !dbg !5038
}

; Function Attrs: nofree nounwind
declare !dbg !1225 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1260 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1261 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5039 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5045, metadata !DIExpression()), !dbg !5046
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5047
  br i1 %2, label %6, label %3, !dbg !5049

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5050
  %5 = icmp eq i32 %4, 0, !dbg !5050
  br i1 %5, label %6, label %8, !dbg !5051

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5052
  br label %17, !dbg !5053

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5054, metadata !DIExpression()) #10, !dbg !5059
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5061
  %10 = load i32, i32* %9, align 8, !dbg !5061, !tbaa !4613
  %11 = and i32 %10, 256, !dbg !5063
  %12 = icmp eq i32 %11, 0, !dbg !5063
  br i1 %12, label %15, label %13, !dbg !5064

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5065
  br label %15, !dbg !5065

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5066
  br label %17, !dbg !5067

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5046
  ret i32 %18, !dbg !5068
}

; Function Attrs: nofree nounwind
declare !dbg !1268 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !5069 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5076, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i64 %1, metadata !5077, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 %2, metadata !5078, metadata !DIExpression()), !dbg !5082
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5083
  %5 = load i8*, i8** %4, align 8, !dbg !5083, !tbaa !5084
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5085
  %7 = load i8*, i8** %6, align 8, !dbg !5085, !tbaa !5086
  %8 = icmp eq i8* %5, %7, !dbg !5087
  br i1 %8, label %9, label %28, !dbg !5088

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5089
  %11 = load i8*, i8** %10, align 8, !dbg !5089, !tbaa !1718
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5090
  %13 = load i8*, i8** %12, align 8, !dbg !5090, !tbaa !5091
  %14 = icmp eq i8* %11, %13, !dbg !5092
  br i1 %14, label %15, label %28, !dbg !5093

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5094
  %17 = load i8*, i8** %16, align 8, !dbg !5094, !tbaa !5095
  %18 = icmp eq i8* %17, null, !dbg !5096
  br i1 %18, label %19, label %28, !dbg !5097

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5098
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5099
  call void @llvm.dbg.value(metadata i64 %21, metadata !5079, metadata !DIExpression()), !dbg !5100
  %22 = icmp eq i64 %21, -1, !dbg !5101
  br i1 %22, label %30, label %23, !dbg !5103

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5104
  %25 = load i32, i32* %24, align 8, !dbg !5105, !tbaa !4613
  %26 = and i32 %25, -17, !dbg !5105
  store i32 %26, i32* %24, align 8, !dbg !5105, !tbaa !4613
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5106
  store i64 %21, i64* %27, align 8, !dbg !5107, !tbaa !5108
  br label %30, !dbg !5109

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5110
  br label %30, !dbg !5111

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5082
  ret i32 %31, !dbg !5112
}

; Function Attrs: nofree nounwind
declare !dbg !1344 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @lchmod(i8* nocapture nonnull readonly %0, i32 %1) local_unnamed_addr #8 !dbg !450 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [26 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !469, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.value(metadata i32 %1, metadata !470, metadata !DIExpression()), !dbg !5113
  %5 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 2752512) #10, !dbg !5114
  call void @llvm.dbg.value(metadata i32 %5, metadata !471, metadata !DIExpression()), !dbg !5113
  %6 = icmp slt i32 %5, 0, !dbg !5115
  br i1 %6, label %40, label %7, !dbg !5117

7:                                                ; preds = %2
  %8 = bitcast %struct.stat* %3 to i8*, !dbg !5118
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #10, !dbg !5118
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !472, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i32 %5, metadata !5120, metadata !DIExpression()) #10, !dbg !5129
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.168, i64 0, i64 0), metadata !5126, metadata !DIExpression()) #10, !dbg !5129
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !5127, metadata !DIExpression()) #10, !dbg !5129
  call void @llvm.dbg.value(metadata i32 4096, metadata !5128, metadata !DIExpression()) #10, !dbg !5129
  %9 = call i32 @__fxstatat(i32 1, i32 %5, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.168, i64 0, i64 0), %struct.stat* nonnull %3, i32 4096) #10, !dbg !5131
  %10 = icmp eq i32 %9, 0, !dbg !5132
  br i1 %10, label %15, label %11, !dbg !5133

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #27, !dbg !5134
  %13 = load i32, i32* %12, align 4, !dbg !5134, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %13, metadata !506, metadata !DIExpression()), !dbg !5135
  %14 = call i32 @close(i32 %5) #10, !dbg !5136
  store i32 %13, i32* %12, align 4, !dbg !5137, !tbaa !1513
  br label %38

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !5138
  %17 = load i32, i32* %16, align 8, !dbg !5138, !tbaa !1914
  %18 = and i32 %17, 61440, !dbg !5138
  %19 = icmp eq i32 %18, 40960, !dbg !5138
  br i1 %19, label %20, label %23, !dbg !5140

20:                                               ; preds = %15
  %21 = call i32 @close(i32 %5) #10, !dbg !5141
  %22 = tail call i32* @__errno_location() #27, !dbg !5143
  store i32 95, i32* %22, align 4, !dbg !5144, !tbaa !1513
  br label %38, !dbg !5145

23:                                               ; preds = %15
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %4, i64 0, i64 0, !dbg !5146
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %24) #10, !dbg !5146
  call void @llvm.dbg.declare(metadata [26 x i8]* %4, metadata !509, metadata !DIExpression()), !dbg !5147
  %25 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %24, i32 1, i64 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @lchmod.fmt, i64 0, i64 0), i32 %5) #10, !dbg !5148
  %26 = call i32 @chmod(i8* nonnull %24, i32 %1) #10, !dbg !5149
  call void @llvm.dbg.value(metadata i32 %26, metadata !513, metadata !DIExpression()), !dbg !5113
  %27 = tail call i32* @__errno_location() #27, !dbg !5150
  %28 = load i32, i32* %27, align 4, !dbg !5150, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %28, metadata !514, metadata !DIExpression()), !dbg !5113
  %29 = call i32 @close(i32 %5) #10, !dbg !5151
  %30 = icmp eq i32 %26, 0, !dbg !5152
  br i1 %30, label %36, label %31, !dbg !5154

31:                                               ; preds = %23
  %32 = icmp eq i32 %28, 2, !dbg !5155
  br i1 %32, label %34, label %33, !dbg !5157

33:                                               ; preds = %31
  store i32 %28, i32* %27, align 4, !dbg !5158, !tbaa !1513
  br label %36, !dbg !5160

34:                                               ; preds = %31
  %35 = call i32 @chmod(i8* nonnull %0, i32 %1) #10, !dbg !5161
  br label %36, !dbg !5162

36:                                               ; preds = %23, %34, %33
  %37 = phi i32 [ %26, %33 ], [ %35, %34 ], [ 0, %23 ], !dbg !5113
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %24) #10, !dbg !5163
  br label %38

38:                                               ; preds = %36, %20, %11
  %39 = phi i32 [ -1, %11 ], [ -1, %20 ], [ %37, %36 ], !dbg !5113
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #10, !dbg !5163
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ %39, %38 ], [ %5, %2 ], !dbg !5113
  ret i32 %41, !dbg !5163
}

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !5164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5166, metadata !DIExpression()), !dbg !5167
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !5168
  ret i32 %2, !dbg !5169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !5170 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5172, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i32 %1, metadata !5173, metadata !DIExpression()), !dbg !5196
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5197
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !5197
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !5174, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i32 -1, metadata !5184, metadata !DIExpression()), !dbg !5196
  call void @llvm.va_start(i8* nonnull %4), !dbg !5199
  switch i32 %1, label %97 [
    i32 0, label %5
    i32 1030, label %24
    i32 1, label %76
    i32 3, label %76
    i32 1025, label %76
    i32 9, label %76
    i32 1032, label %76
    i32 1034, label %76
    i32 11, label %76
    i32 1033, label %78
    i32 1031, label %78
    i32 10, label %78
    i32 1026, label %78
    i32 2, label %78
    i32 4, label %78
    i32 1024, label %78
    i32 8, label %78
  ], !dbg !5200

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5201
  %7 = load i32, i32* %6, align 16, !dbg !5201
  %8 = icmp ult i32 %7, 41, !dbg !5201
  br i1 %8, label %9, label %15, !dbg !5201

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5201
  %11 = load i8*, i8** %10, align 16, !dbg !5201
  %12 = zext i32 %7 to i64, !dbg !5201
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !5201
  %14 = add nuw nsw i32 %7, 8, !dbg !5201
  store i32 %14, i32* %6, align 16, !dbg !5201
  br label %19, !dbg !5201

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5201
  %17 = load i8*, i8** %16, align 8, !dbg !5201
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !5201
  store i8* %18, i8** %16, align 8, !dbg !5201
  br label %19, !dbg !5201

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !5201
  %22 = load i32, i32* %21, align 4, !dbg !5201
  call void @llvm.dbg.value(metadata i32 %22, metadata !5185, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata i32 %0, metadata !5203, metadata !DIExpression()) #10, !dbg !5208
  call void @llvm.dbg.value(metadata i32 %22, metadata !5206, metadata !DIExpression()) #10, !dbg !5208
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #10, !dbg !5210
  call void @llvm.dbg.value(metadata i32 %23, metadata !5207, metadata !DIExpression()) #10, !dbg !5208
  call void @llvm.dbg.value(metadata i32 %23, metadata !5184, metadata !DIExpression()), !dbg !5196
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5211
  %26 = load i32, i32* %25, align 16, !dbg !5211
  %27 = icmp ult i32 %26, 41, !dbg !5211
  br i1 %27, label %28, label %34, !dbg !5211

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5211
  %30 = load i8*, i8** %29, align 16, !dbg !5211
  %31 = zext i32 %26 to i64, !dbg !5211
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !5211
  %33 = add nuw nsw i32 %26, 8, !dbg !5211
  store i32 %33, i32* %25, align 16, !dbg !5211
  br label %38, !dbg !5211

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5211
  %36 = load i8*, i8** %35, align 8, !dbg !5211
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !5211
  store i8* %37, i8** %35, align 8, !dbg !5211
  br label %38, !dbg !5211

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !5211
  %41 = load i32, i32* %40, align 4, !dbg !5211
  call void @llvm.dbg.value(metadata i32 %41, metadata !5188, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata i32 %0, metadata !531, metadata !DIExpression()) #10, !dbg !5213
  call void @llvm.dbg.value(metadata i32 %41, metadata !532, metadata !DIExpression()) #10, !dbg !5213
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5215, !tbaa !1513
  %43 = icmp sgt i32 %42, -1, !dbg !5217
  br i1 %43, label %44, label %56, !dbg !5218

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #10, !dbg !5219
  call void @llvm.dbg.value(metadata i32 %45, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  %46 = icmp sgt i32 %45, -1, !dbg !5221
  br i1 %46, label %51, label %47, !dbg !5223

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #27, !dbg !5224
  %49 = load i32, i32* %48, align 4, !dbg !5224, !tbaa !1513
  %50 = icmp eq i32 %49, 22, !dbg !5225
  br i1 %50, label %52, label %51, !dbg !5226

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5227, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %62, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  br label %116, !dbg !5229

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !5203, metadata !DIExpression()) #10, !dbg !5230
  call void @llvm.dbg.value(metadata i32 %41, metadata !5206, metadata !DIExpression()) #10, !dbg !5230
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #10, !dbg !5233
  call void @llvm.dbg.value(metadata i32 %53, metadata !5207, metadata !DIExpression()) #10, !dbg !5230
  call void @llvm.dbg.value(metadata i32 %53, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  %54 = icmp sgt i32 %53, -1, !dbg !5234
  br i1 %54, label %55, label %116, !dbg !5236

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5237, !tbaa !1513
  br label %60, !dbg !5238

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !5203, metadata !DIExpression()) #10, !dbg !5239
  call void @llvm.dbg.value(metadata i32 %41, metadata !5206, metadata !DIExpression()) #10, !dbg !5239
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #10, !dbg !5241
  call void @llvm.dbg.value(metadata i32 %57, metadata !5207, metadata !DIExpression()) #10, !dbg !5239
  call void @llvm.dbg.value(metadata i32 %57, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5242
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !5243
  call void @llvm.dbg.value(metadata i32 %62, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  %63 = icmp sgt i32 %62, -1, !dbg !5244
  %64 = and i1 %61, %63, !dbg !5229
  br i1 %64, label %65, label %116, !dbg !5229

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #10, !dbg !5245
  call void @llvm.dbg.value(metadata i32 %66, metadata !534, metadata !DIExpression()) #10, !dbg !5246
  %67 = icmp slt i32 %66, 0, !dbg !5247
  br i1 %67, label %72, label %68, !dbg !5248

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !5249
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #10, !dbg !5250
  %71 = icmp eq i32 %70, -1, !dbg !5251
  br i1 %71, label %72, label %116, !dbg !5252

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #27, !dbg !5253
  %74 = load i32, i32* %73, align 4, !dbg !5253, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 %74, metadata !537, metadata !DIExpression()) #10, !dbg !5254
  %75 = call i32 @close(i32 %62) #10, !dbg !5255
  store i32 %74, i32* %73, align 4, !dbg !5256, !tbaa !1513
  call void @llvm.dbg.value(metadata i32 -1, metadata !533, metadata !DIExpression()) #10, !dbg !5213
  br label %116, !dbg !5257

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #10, !dbg !5258
  call void @llvm.dbg.value(metadata i32 %77, metadata !5184, metadata !DIExpression()), !dbg !5196
  br label %116, !dbg !5259

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5260
  %80 = load i32, i32* %79, align 16, !dbg !5260
  %81 = icmp ult i32 %80, 41, !dbg !5260
  br i1 %81, label %82, label %88, !dbg !5260

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5260
  %84 = load i8*, i8** %83, align 16, !dbg !5260
  %85 = zext i32 %80 to i64, !dbg !5260
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !5260
  %87 = add nuw nsw i32 %80, 8, !dbg !5260
  store i32 %87, i32* %79, align 16, !dbg !5260
  br label %92, !dbg !5260

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5260
  %90 = load i8*, i8** %89, align 8, !dbg !5260
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !5260
  store i8* %91, i8** %89, align 8, !dbg !5260
  br label %92, !dbg !5260

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !5260
  %95 = load i32, i32* %94, align 4, !dbg !5260
  call void @llvm.dbg.value(metadata i32 %95, metadata !5190, metadata !DIExpression()), !dbg !5261
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #10, !dbg !5262
  call void @llvm.dbg.value(metadata i32 %96, metadata !5184, metadata !DIExpression()), !dbg !5196
  br label %116, !dbg !5263

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5264
  %99 = load i32, i32* %98, align 16, !dbg !5264
  %100 = icmp ult i32 %99, 41, !dbg !5264
  br i1 %100, label %101, label %107, !dbg !5264

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5264
  %103 = load i8*, i8** %102, align 16, !dbg !5264
  %104 = zext i32 %99 to i64, !dbg !5264
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !5264
  %106 = add nuw nsw i32 %99, 8, !dbg !5264
  store i32 %106, i32* %98, align 16, !dbg !5264
  br label %111, !dbg !5264

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5264
  %109 = load i8*, i8** %108, align 8, !dbg !5264
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !5264
  store i8* %110, i8** %108, align 8, !dbg !5264
  br label %111, !dbg !5264

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !5264
  %114 = load i8*, i8** %113, align 8, !dbg !5264
  call void @llvm.dbg.value(metadata i8* %114, metadata !5194, metadata !DIExpression()), !dbg !5265
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #10, !dbg !5266
  call void @llvm.dbg.value(metadata i32 %115, metadata !5184, metadata !DIExpression()), !dbg !5196
  br label %116, !dbg !5267

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !5268
  call void @llvm.dbg.value(metadata i32 %117, metadata !5184, metadata !DIExpression()), !dbg !5196
  call void @llvm.va_end(i8* nonnull %4), !dbg !5269
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !5270
  ret i32 %117, !dbg !5271
}

declare !dbg !526 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

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
attributes #13 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inlinehint nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inlinehint norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind readonly }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind readnone }
attributes #28 = { cold }

!llvm.dbg.cu = !{!2, !540, !579, !221, !226, !271, !581, !611, !277, !318, !621, !650, !442, !692, !713, !716, !719, !738, !777, !782, !789, !1182, !1200, !1215, !1218, !1222, !1265, !1306, !456, !1347, !524}
!llvm.ident = !{!1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352}
!llvm.module.flags = !{!1353, !1354, !1355, !1356, !1357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !216, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !215, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!6 = !DIFile(filename: "./lib/savewd.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !8)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !6, line: 66, baseType: !5, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !7, file: !6, line: 74, baseType: !11, size: 32, offset: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !6, line: 69, size: 32, elements: !12)
!12 = !{!13, !15, !16}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !11, file: !6, line: 71, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !11, file: !6, line: 72, baseType: !14, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !11, file: !6, line: 73, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !18, line: 97, baseType: !19)
!18 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !20, line: 154, baseType: !14)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "INITIAL_STATE", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FD_STATE", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "FORKING_STATE", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "ERROR_STATE", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "FINAL_STATE", value: 5, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !30, line: 32, baseType: !21, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!37 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!38 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!39 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!40 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!41 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!42 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!43 = !{!44, !53, !113, !117, !121, !124, !127, !134, !149, !48, !103, !153, !157, !161, !165, !171, !178, !181, !189, !192, !195, !199, !201, !203, !213}
!44 = !DISubprogram(name: "dcgettext", scope: !45, file: !45, line: 51, type: !46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!45 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !50, !50, !14}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!52 = !{}
!53 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!54 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!55 = !DISubroutineType(types: !56)
!56 = !{!14, !50, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !60)
!59 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !76, !77, !78, !79, !82, !84, !86, !90, !93, !95, !98, !101, !102, !104, !108, !109}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 51, baseType: !14, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 36, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 70, baseType: !57, size: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 152, baseType: !81)
!81 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 43, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 153, baseType: !81)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !58, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !59, line: 37, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !58, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !59, line: 38, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !58, file: !59, line: 93, baseType: !57, size: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !58, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 46, baseType: !107)
!106 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DISubprogram(name: "set_program_name", scope: !114, file: !114, line: 37, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!114 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !50}
!117 = !DISubprogram(name: "setlocale", scope: !118, file: !118, line: 122, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!118 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!119 = !DISubroutineType(types: !120)
!120 = !{!48, !14, !50}
!121 = !DISubprogram(name: "bindtextdomain", scope: !45, file: !45, line: 86, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!122 = !DISubroutineType(types: !123)
!123 = !{!48, !50, !50}
!124 = !DISubprogram(name: "textdomain", scope: !45, file: !45, line: 82, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!125 = !DISubroutineType(types: !126)
!126 = !{!48, !50}
!127 = !DISubprogram(name: "atexit", scope: !128, file: !128, line: 595, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!128 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!129 = !DISubroutineType(types: !130)
!130 = !{!14, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DISubprogram(name: "getopt_long", scope: !135, file: !135, line: 66, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!135 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!136 = !DISubroutineType(types: !137)
!137 = !{!14, !14, !138, !50, !140, !147}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !135, line: 50, size: 256, elements: !143)
!143 = !{!144, !145, !146, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !135, line: 52, baseType: !50, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !142, file: !135, line: 55, baseType: !14, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !142, file: !135, line: 56, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !135, line: 57, baseType: !14, size: 32, offset: 192)
!149 = !DISubprogram(name: "error", scope: !150, file: !150, line: 52, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!150 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !14, !14, !50, null}
!153 = !DISubprogram(name: "version_etc", scope: !154, file: !154, line: 69, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!154 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubroutineType(types: !156)
!156 = !{null, !57, !50, !50, !50, null}
!157 = !DISubprogram(name: "quote", scope: !158, file: !158, line: 44, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!158 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = !DISubroutineType(types: !160)
!160 = !{!50, !50}
!161 = !DISubprogram(name: "umask", scope: !162, file: !162, line: 308, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!162 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!163 = !DISubroutineType(types: !164)
!164 = !{!21, !21}
!165 = !DISubprogram(name: "mode_compile", scope: !166, file: !166, line: 25, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!166 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !50}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !166, line: 25, flags: DIFlagFwdDecl)
!171 = !DISubprogram(name: "mode_adjust", scope: !166, file: !166, line: 27, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!172 = !DISubroutineType(types: !173)
!173 = !{!21, !21, !174, !21, !175, !177}
!174 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!178 = !DISubprogram(name: "free", scope: !128, file: !128, line: 565, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !103}
!181 = !DISubprogram(name: "savewd_process_files", scope: !6, file: !6, line: 147, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!182 = !DISubroutineType(types: !183)
!183 = !{!14, !14, !184, !185, !103}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!14, !48, !188, !103}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!189 = !DISubprogram(name: "quotearg_style", scope: !30, file: !30, line: 377, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!190 = !DISubroutineType(types: !191)
!191 = !{!48, !29, !50}
!192 = !DISubprogram(name: "mkdir", scope: !162, file: !162, line: 317, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!193 = !DISubroutineType(types: !194)
!194 = !{!14, !50, !21}
!195 = !DISubprogram(name: "prog_fprintf", scope: !196, file: !196, line: 22, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!196 = !DIFile(filename: "src/prog-fprintf.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !DISubroutineType(types: !198)
!198 = !{null, !57, !50, null}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 79, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 146, baseType: !21)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 64, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 147, baseType: !21)
!203 = !DISubprogram(name: "make_dir_parents", scope: !204, file: !204, line: 25, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!204 = !DIFile(filename: "./lib/mkdir-p.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !DISubroutineType(types: !206)
!206 = !{!174, !48, !188, !207, !103, !21, !210, !21, !21, !21, !174}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!14, !50, !50, !103}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !50, !103}
!213 = !DISubprogram(name: "last_component", scope: !214, file: !214, line: 46, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!214 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!0}
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1792, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 7)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "Version", scope: !221, file: !222, line: 2, type: !50, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !223, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{!219}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "file_name", scope: !226, file: !227, line: 46, type: !50, isLocal: true, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !228, globals: !266, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!229, !44, !265, !149}
!229 = !DISubprogram(name: "close_stream", scope: !230, file: !230, line: 2, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!230 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !DISubroutineType(types: !232)
!232 = !{!14, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !234, file: !59, line: 51, baseType: !14, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !234, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !234, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !234, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !234, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !234, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !234, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !234, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !234, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !234, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !234, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !234, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !234, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !234, file: !59, line: 70, baseType: !233, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !234, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !234, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !234, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !234, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !234, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !234, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !234, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !234, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !234, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !234, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !234, file: !59, line: 93, baseType: !233, size: 64, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !234, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !234, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !234, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !234, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!265 = !DISubprogram(name: "quotearg_colon", scope: !30, file: !30, line: 391, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!266 = !{!224, !267}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !226, file: !227, line: 56, type: !174, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "exit_failure", scope: !271, file: !272, line: 24, type: !274, isLocal: false, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !273, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !{!269}
!274 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "program_name", scope: !277, file: !278, line: 33, type: !50, isLocal: false, isDefinition: true)
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !279, globals: !315, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = !{!103, !280, !48}
!280 = !DISubprogram(name: "fputs", scope: !54, file: !54, line: 626, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!281 = !DISubroutineType(types: !282)
!282 = !{!14, !50, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !59, line: 51, baseType: !14, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !284, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !284, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !284, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !284, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !284, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !284, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !284, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !284, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !284, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !284, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !284, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !284, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !284, file: !59, line: 70, baseType: !283, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !284, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !284, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !284, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !284, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !284, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !284, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !284, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !284, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !284, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !284, file: !59, line: 93, baseType: !283, size: 64, offset: 1344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !284, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !284, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !284, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !284, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!315 = !{!275}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !318, file: !319, line: 85, type: !436, isLocal: false, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !320, retainedTypes: !341, globals: !409, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!320 = !{!29, !321, !326}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 242, baseType: !21, size: 32, elements: !322)
!322 = !{!323, !324, !325}
!323 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!324 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!325 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 46, baseType: !21, size: 32, elements: !328)
!327 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!329 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!330 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!331 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!332 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!333 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!334 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!335 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!336 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!337 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!340 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!341 = !{!342, !348, !178, !364, !14, !83, !367, !105, !384, !388, !44, !394, !398, !48, !402, !405, !406}
!342 = !DISubprogram(name: "xmemdup", scope: !343, file: !343, line: 62, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!343 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!344 = !DISubroutineType(types: !345)
!345 = !{!103, !346, !107}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!348 = !DISubprogram(name: "quotearg_alloc_mem", scope: !30, file: !30, line: 342, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!349 = !DISubroutineType(types: !350)
!350 = !{!48, !50, !107, !351, !352}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !319, line: 65, size: 448, elements: !355)
!355 = !{!356, !357, !358, !362, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !354, file: !319, line: 68, baseType: !29, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !319, line: 71, baseType: !14, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !354, file: !319, line: 75, baseType: !359, size: 256, offset: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !354, file: !319, line: 78, baseType: !50, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !354, file: !319, line: 81, baseType: !50, size: 64, offset: 384)
!364 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !30, file: !30, line: 408, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!365 = !DISubroutineType(types: !366)
!366 = !{!48, !14, !50, !50, !50, !107}
!367 = !DISubprogram(name: "rpl_mbrtowc", scope: !368, file: !368, line: 717, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!368 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!369 = !DISubroutineType(types: !370)
!370 = !{!107, !147, !50, !107, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 13, size: 64, elements: !374)
!373 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !372, file: !373, line: 15, baseType: !14, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !372, file: !373, line: 20, baseType: !377, size: 32, offset: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 16, size: 32, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !377, file: !373, line: 18, baseType: !21, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !377, file: !373, line: 19, baseType: !381, size: 32)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 4)
!384 = !DISubprogram(name: "iswprint", scope: !385, file: !385, line: 120, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!385 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!386 = !DISubroutineType(types: !387)
!387 = !{!14, !21}
!388 = !DISubprogram(name: "mbsinit", scope: !389, file: !389, line: 292, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!389 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!390 = !DISubroutineType(types: !391)
!391 = !{!14, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!394 = !DISubprogram(name: "locale_charset", scope: !395, file: !395, line: 35, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!395 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!396 = !DISubroutineType(types: !397)
!397 = !{!50}
!398 = !DISubprogram(name: "c_strcasecmp", scope: !399, file: !399, line: 42, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!399 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!400 = !DISubroutineType(types: !401)
!401 = !{!14, !50, !50}
!402 = !DISubprogram(name: "xmalloc", scope: !343, file: !343, line: 53, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!403 = !DISubroutineType(types: !404)
!404 = !{!103, !107}
!405 = !DISubprogram(name: "xalloc_die", scope: !343, file: !343, line: 51, type: !132, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !52)
!406 = !DISubprogram(name: "xrealloc", scope: !343, file: !343, line: 59, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!407 = !DISubroutineType(types: !408)
!408 = !{!103, !103, !107}
!409 = !{!316, !410, !416, !418, !420, !425, !432, !434}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !318, file: !319, line: 101, type: !412, isLocal: false, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 320, elements: !414)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!414 = !{!415}
!415 = !DISubrange(count: 10)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !318, file: !319, line: 1052, type: !354, isLocal: false, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !318, file: !319, line: 116, type: !354, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "slot0", scope: !318, file: !319, line: 842, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 256)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "slotvec", scope: !318, file: !319, line: 845, type: !427, isLocal: true, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !319, line: 834, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !428, file: !319, line: 836, baseType: !105, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !428, file: !319, line: 837, baseType: !48, size: 64, offset: 64)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "nslots", scope: !318, file: !319, line: 843, type: !14, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "slotvec0", scope: !318, file: !319, line: 844, type: !428, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 704, elements: !438)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!438 = !{!439}
!439 = !DISubrange(count: 11)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !442, file: !443, line: 26, type: !445, isLocal: false, isDefinition: true)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !444, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!444 = !{!440}
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 47)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "fmt", scope: !450, file: !451, line: 80, type: !515, isLocal: true, isDefinition: true)
!450 = distinct !DISubprogram(name: "lchmod", scope: !451, file: !451, line: 46, type: !452, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !468)
!451 = !DIFile(filename: "lib/lchmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!452 = !DISubroutineType(types: !453)
!453 = !{!14, !50, !454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !18, line: 69, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 150, baseType: !21)
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !457, globals: !467, splitDebugInlining: false, nameTableKind: None)
!457 = !{!458, !462, !466}
!458 = !DISubprogram(name: "open", scope: !459, file: !459, line: 196, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!459 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!460 = !DISubroutineType(types: !461)
!461 = !{!14, !50, !14, null}
!462 = !DISubprogram(name: "close", scope: !463, file: !463, line: 353, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!463 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!464 = !DISubroutineType(types: !465)
!465 = !{!14, !14}
!466 = !DISubprogram(name: "chmod", scope: !162, file: !162, line: 280, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!467 = !{!448}
!468 = !{!469, !470, !471, !472, !506, !509, !513, !514}
!469 = !DILocalVariable(name: "file", arg: 1, scope: !450, file: !451, line: 46, type: !50)
!470 = !DILocalVariable(name: "mode", arg: 2, scope: !450, file: !451, line: 46, type: !454)
!471 = !DILocalVariable(name: "fd", scope: !450, file: !451, line: 53, type: !14)
!472 = !DILocalVariable(name: "st", scope: !450, file: !451, line: 64, type: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !474, line: 46, size: 1152, elements: !475)
!474 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!475 = !{!476, !478, !480, !482, !483, !484, !485, !486, !487, !488, !490, !492, !500, !501, !502}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !473, file: !474, line: 48, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 145, baseType: !107)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !473, file: !474, line: 53, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 148, baseType: !107)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !473, file: !474, line: 61, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 151, baseType: !107)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !473, file: !474, line: 62, baseType: !455, size: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !473, file: !474, line: 64, baseType: !200, size: 32, offset: 224)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !473, file: !474, line: 65, baseType: !202, size: 32, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !473, file: !474, line: 67, baseType: !14, size: 32, offset: 288)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !473, file: !474, line: 69, baseType: !477, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !473, file: !474, line: 74, baseType: !80, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !473, file: !474, line: 78, baseType: !489, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 174, baseType: !81)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !473, file: !474, line: 80, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 179, baseType: !81)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !473, file: !474, line: 91, baseType: !493, size: 128, offset: 576)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !494, line: 10, size: 128, elements: !495)
!494 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!495 = !{!496, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !493, file: !494, line: 12, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 160, baseType: !81)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !493, file: !494, line: 16, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 196, baseType: !81)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !473, file: !474, line: 92, baseType: !493, size: 128, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !473, file: !474, line: 93, baseType: !493, size: 128, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !473, file: !474, line: 106, baseType: !503, size: 192, offset: 960)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 192, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 3)
!506 = !DILocalVariable(name: "stat_errno", scope: !507, file: !451, line: 67, type: !14)
!507 = distinct !DILexicalBlock(scope: !508, file: !451, line: 66, column: 5)
!508 = distinct !DILexicalBlock(scope: !450, file: !451, line: 65, column: 7)
!509 = !DILocalVariable(name: "buf", scope: !450, file: !451, line: 81, type: !510)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 208, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 26)
!513 = !DILocalVariable(name: "chmod_result", scope: !450, file: !451, line: 83, type: !14)
!514 = !DILocalVariable(name: "chmod_errno", scope: !450, file: !451, line: 84, type: !14)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 136, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 17)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !520, file: !521, line: 507, type: !14, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !521, file: !521, line: 488, type: !522, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !530)
!521 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !DISubroutineType(types: !523)
!523 = !{!14, !14, !14}
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !525, globals: !529, splitDebugInlining: false, nameTableKind: None)
!525 = !{!526, !462}
!526 = !DISubprogram(name: "fcntl", scope: !459, file: !459, line: 176, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!527 = !DISubroutineType(types: !528)
!528 = !{!14, !14, !14, null}
!529 = !{!518}
!530 = !{!531, !532, !533, !534, !537}
!531 = !DILocalVariable(name: "fd", arg: 1, scope: !520, file: !521, line: 488, type: !14)
!532 = !DILocalVariable(name: "target", arg: 2, scope: !520, file: !521, line: 488, type: !14)
!533 = !DILocalVariable(name: "result", scope: !520, file: !521, line: 490, type: !14)
!534 = !DILocalVariable(name: "flags", scope: !535, file: !521, line: 531, type: !14)
!535 = distinct !DILexicalBlock(scope: !536, file: !521, line: 530, column: 5)
!536 = distinct !DILexicalBlock(scope: !520, file: !521, line: 529, column: 7)
!537 = !DILocalVariable(name: "saved_errno", scope: !538, file: !521, line: 534, type: !14)
!538 = distinct !DILexicalBlock(scope: !539, file: !521, line: 533, column: 9)
!539 = distinct !DILexicalBlock(scope: !535, file: !521, line: 532, column: 11)
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!541 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!542 = !{!543, !578}
!543 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!544 = !DISubroutineType(types: !545)
!545 = !{!14, !50, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !547, file: !59, line: 51, baseType: !14, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !547, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !547, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !547, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !547, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !547, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !547, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !547, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !547, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !547, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !547, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !547, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !547, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !547, file: !59, line: 70, baseType: !546, size: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !547, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !547, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !547, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !547, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !547, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !547, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !547, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !547, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !547, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !547, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !547, file: !59, line: 93, baseType: !546, size: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !547, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !547, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !547, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !547, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!578 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !583, retainedTypes: !598, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!583 = !{!584, !594}
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !585, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !585, file: !6, line: 66, baseType: !584, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !585, file: !6, line: 74, baseType: !589, size: 32, offset: 32)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !6, line: 69, size: 32, elements: !590)
!590 = !{!591, !592, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !589, file: !6, line: 71, baseType: !14, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !589, file: !6, line: 72, baseType: !14, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !589, file: !6, line: 73, baseType: !17, size: 32)
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 86, baseType: !21, size: 32, elements: !595)
!595 = !{!596, !597}
!596 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1, isUnsigned: true)
!597 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2, isUnsigned: true)
!598 = !{!599, !199, !201, !192, !44, !157, !149, !604, !607}
!599 = !DISubprogram(name: "mkancesdirs", scope: !600, file: !600, line: 8, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!600 = !DIFile(filename: "./lib/mkancesdirs.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !DISubroutineType(types: !602)
!602 = !{!81, !48, !603, !207, !103}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!604 = !DISubprogram(name: "savewd_chdir", scope: !6, file: !6, line: 111, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!605 = !DISubroutineType(types: !606)
!606 = !{!14, !603, !50, !14, !147}
!607 = !DISubprogram(name: "dirchownmod", scope: !608, file: !608, line: 2, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!608 = !DIFile(filename: "./lib/dirchownmod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!609 = !DISubroutineType(types: !610)
!610 = !{!14, !14, !50, !21, !21, !21, !21, !21}
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !613, retainedTypes: !620, splitDebugInlining: false, nameTableKind: None)
!612 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = !{!614}
!614 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !612, line: 78, baseType: !21, size: 32, elements: !615)
!615 = !{!616, !617, !618, !619}
!616 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!617 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!618 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!619 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!620 = !{!178, !402, !105, !405}
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !623, retainedTypes: !634, splitDebugInlining: false, nameTableKind: None)
!622 = !DIFile(filename: "lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!623 = !{!624, !594}
!624 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !625, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !625, file: !6, line: 66, baseType: !624, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !625, file: !6, line: 74, baseType: !629, size: 32, offset: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !6, line: 69, size: 32, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !629, file: !6, line: 71, baseType: !14, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !629, file: !6, line: 72, baseType: !14, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !629, file: !6, line: 73, baseType: !17, size: 32)
!634 = !{!458, !635, !638, !462, !639, !643, !645, !647}
!635 = !DISubprogram(name: "chdir", scope: !463, file: !463, line: 497, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!636 = !DISubroutineType(types: !637)
!637 = !{!14, !50}
!638 = !DISubprogram(name: "fchdir", scope: !463, file: !463, line: 501, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!639 = !DISubprogram(name: "waitpid", scope: !640, file: !640, line: 111, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!640 = !DIFile(filename: "/usr/include/sys/wait.h", directory: "")
!641 = !DISubroutineType(types: !642)
!642 = !{!14, !14, !147, !14}
!643 = !DISubprogram(name: "raise", scope: !644, file: !644, line: 123, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!644 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!645 = !DISubprogram(name: "open_safer", scope: !646, file: !646, line: 22, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!646 = !DIFile(filename: "./lib/fcntl-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!647 = !DISubprogram(name: "fork", scope: !463, file: !463, line: 756, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!648 = !DISubroutineType(types: !649)
!649 = !{!14}
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !652, retainedTypes: !656, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!652 = !{!653}
!653 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !651, line: 40, baseType: !21, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!656 = !{!44, !657, !103}
!657 = !DISubprogram(name: "fputs_unlocked", scope: !54, file: !54, line: 662, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!658 = !DISubroutineType(types: !659)
!659 = !{!14, !50, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !661, file: !59, line: 51, baseType: !14, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !661, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !661, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !661, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !661, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !661, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !661, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !661, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !661, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !661, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !661, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !661, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !661, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !661, file: !59, line: 70, baseType: !660, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !661, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !661, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !661, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !661, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !661, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !661, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !661, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !661, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !661, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !661, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !661, file: !59, line: 93, baseType: !660, size: 64, offset: 1344)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !661, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !661, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !661, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !661, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !693, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !694, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!694 = !{!695}
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !696, file: !343, line: 186, baseType: !21, size: 32, elements: !705)
!696 = distinct !DISubprogram(name: "x2nrealloc", scope: !343, file: !343, line: 174, type: !697, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !700)
!697 = !DISubroutineType(types: !698)
!698 = !{!103, !103, !699, !105}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!700 = !{!701, !702, !703, !704}
!701 = !DILocalVariable(name: "p", arg: 1, scope: !696, file: !343, line: 174, type: !103)
!702 = !DILocalVariable(name: "pn", arg: 2, scope: !696, file: !343, line: 174, type: !699)
!703 = !DILocalVariable(name: "s", arg: 3, scope: !696, file: !343, line: 174, type: !105)
!704 = !DILocalVariable(name: "n", scope: !696, file: !343, line: 176, type: !105)
!705 = !{!706}
!706 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!707 = !{!105, !405, !402, !406, !48, !178, !103, !708, !711}
!708 = !DISubprogram(name: "xcalloc", scope: !343, file: !343, line: 57, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!709 = !DISubroutineType(types: !710)
!710 = !{!103, !107, !107}
!711 = !DISubprogram(name: "rpl_calloc", scope: !712, file: !712, line: 688, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!712 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !715, splitDebugInlining: false, nameTableKind: None)
!714 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!715 = !{!44, !149}
!716 = distinct !DICompileUnit(language: DW_LANG_C99, file: !717, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!718 = !{!103}
!719 = distinct !DICompileUnit(language: DW_LANG_C99, file: !720, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!721 = !{!722, !105, !734}
!722 = !DISubprogram(name: "mbrtowc", scope: !389, file: !389, line: 296, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!723 = !DISubroutineType(types: !724)
!724 = !{!107, !147, !50, !107, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 13, size: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !726, file: !373, line: 15, baseType: !14, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !726, file: !373, line: 20, baseType: !730, size: 32, offset: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !373, line: 16, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !730, file: !373, line: 18, baseType: !21, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !730, file: !373, line: 19, baseType: !381, size: 32)
!734 = !DISubprogram(name: "hard_locale", scope: !735, file: !735, line: 26, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!735 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!736 = !DISubroutineType(types: !737)
!737 = !{!174, !14}
!738 = distinct !DICompileUnit(language: DW_LANG_C99, file: !739, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !740, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!740 = !{!741}
!741 = !DISubprogram(name: "rpl_fclose", scope: !742, file: !742, line: 672, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!742 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!743 = !DISubroutineType(types: !744)
!744 = !{!14, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !746, file: !59, line: 51, baseType: !14, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !746, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !746, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !746, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !746, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !746, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !746, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !746, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !746, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !746, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !746, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !746, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !746, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !746, file: !59, line: 70, baseType: !745, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !746, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !746, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !746, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !746, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !746, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !746, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !746, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !746, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !746, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !746, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !746, file: !59, line: 93, baseType: !745, size: 64, offset: 1344)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !746, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !746, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !746, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !746, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!777 = distinct !DICompileUnit(language: DW_LANG_C99, file: !778, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!779 = !{!458, !780}
!780 = !DISubprogram(name: "fd_safer", scope: !781, file: !781, line: 21, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!781 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!782 = distinct !DICompileUnit(language: DW_LANG_C99, file: !783, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !784, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!784 = !{!785}
!785 = !DISubprogram(name: "setlocale_null_r", scope: !786, file: !786, line: 64, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!786 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!787 = !DISubroutineType(types: !788)
!788 = !{!14, !14, !48, !107}
!789 = distinct !DICompileUnit(language: DW_LANG_C99, file: !790, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !791, retainedTypes: !1178, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!791 = !{!792}
!792 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !793, line: 41, baseType: !21, size: 32, elements: !794)
!793 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!795 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!796 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!797 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!798 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!799 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!800 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!801 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!802 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!803 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!804 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!805 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!806 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!807 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!808 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!809 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!810 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!811 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!812 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!813 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!814 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!815 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!816 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!817 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!818 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!819 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!820 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!821 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!822 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!823 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!824 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!825 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!826 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!827 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!828 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!829 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!830 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!831 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!832 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!833 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!834 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!835 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!836 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!837 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!838 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!839 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!840 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!841 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!842 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!843 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!844 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!903 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!906 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!907 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!908 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!909 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!910 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!911 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!912 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!913 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!914 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!915 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!916 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!917 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!990 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1063 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1064 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1065 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1066 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1067 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1068 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1069 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1070 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1071 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1072 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1073 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1074 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1075 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1076 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1077 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1079 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1080 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1081 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1082 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1083 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1084 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1110 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1111 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1112 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1113 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1114 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1119 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1120 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1121 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1122 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1178 = !{!1179, !103}
!1179 = !DISubprogram(name: "nl_langinfo", scope: !793, file: !793, line: 661, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!48, !14}
!1182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1183, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1184, retainedTypes: !1195, splitDebugInlining: false, nameTableKind: None)
!1183 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1184 = !{!1185, !594}
!1185 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1186, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1186, file: !6, line: 66, baseType: !1185, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1186, file: !6, line: 74, baseType: !1190, size: 32, offset: 32)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !6, line: 69, size: 32, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1190, file: !6, line: 71, baseType: !14, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !1190, file: !6, line: 72, baseType: !14, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1190, file: !6, line: 73, baseType: !17, size: 32)
!1195 = !{!1196}
!1196 = !DISubprogram(name: "savewd_chdir", scope: !6, file: !6, line: 111, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!14, !1199, !50, !14, !147}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1201, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1202, splitDebugInlining: false, nameTableKind: None)
!1201 = !DIFile(filename: "lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1202 = !{!199, !201, !1203, !454, !1206, !1209, !1210, !1213, !466, !462}
!1203 = !DISubprogram(name: "fchown", scope: !463, file: !463, line: 478, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!14, !14, !21, !21}
!1206 = !DISubprogram(name: "lchown", scope: !463, file: !463, line: 483, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!14, !50, !21, !21}
!1209 = !DISubprogram(name: "chown", scope: !463, file: !463, line: 473, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1210 = !DISubprogram(name: "fchmod", scope: !162, file: !162, line: 293, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!14, !14, !21}
!1213 = !DISubprogram(name: "lchmod", scope: !1214, file: !1214, line: 993, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1214 = !DIFile(filename: "./lib/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1216, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1217, splitDebugInlining: false, nameTableKind: None)
!1216 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1217 = !{!103, !117}
!1218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1219, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1220, splitDebugInlining: false, nameTableKind: None)
!1219 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1220 = !{!1221, !462}
!1221 = !DISubprogram(name: "dup_safer", scope: !781, file: !781, line: 20, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1223, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1224, splitDebugInlining: false, nameTableKind: None)
!1223 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1224 = !{!1225, !1260, !1261, !1264}
!1225 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!14, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1229, file: !59, line: 51, baseType: !14, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1229, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1229, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1229, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1229, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1229, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1229, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1229, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1229, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1229, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1229, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1229, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1229, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1229, file: !59, line: 70, baseType: !1228, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1229, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1229, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1229, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1229, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1229, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1229, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1229, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1229, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1229, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1229, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1229, file: !59, line: 93, baseType: !1228, size: 64, offset: 1344)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1229, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1229, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1229, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1229, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!1260 = !DISubprogram(name: "fclose", scope: !54, file: !54, line: 213, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1261 = !DISubprogram(name: "lseek", scope: !463, file: !463, line: 334, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!81, !14, !81, !14}
!1264 = !DISubprogram(name: "rpl_fflush", scope: !742, file: !742, line: 718, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1266, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1267, splitDebugInlining: false, nameTableKind: None)
!1266 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1267 = !{!103, !1268, !1303}
!1268 = !DISubprogram(name: "fflush", scope: !54, file: !54, line: 218, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!14, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1272, file: !59, line: 51, baseType: !14, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1272, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1272, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1272, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1272, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1272, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1272, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1272, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1272, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1272, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1272, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1272, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1272, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1272, file: !59, line: 70, baseType: !1271, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1272, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1272, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1272, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1272, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1272, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1272, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1272, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1272, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1272, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1272, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1272, file: !59, line: 93, baseType: !1271, size: 64, offset: 1344)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1272, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1272, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1272, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1272, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!1303 = !DISubprogram(name: "rpl_fseeko", scope: !742, file: !742, line: 1034, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!14, !1271, !81, !14}
!1306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1307, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1308, splitDebugInlining: false, nameTableKind: None)
!1307 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1308 = !{!103, !1309, !1261, !1344}
!1309 = !DISubprogram(name: "fileno", scope: !54, file: !54, line: 786, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!14, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 49, size: 1728, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1313, file: !59, line: 51, baseType: !14, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1313, file: !59, line: 54, baseType: !48, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1313, file: !59, line: 55, baseType: !48, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1313, file: !59, line: 56, baseType: !48, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1313, file: !59, line: 57, baseType: !48, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1313, file: !59, line: 58, baseType: !48, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1313, file: !59, line: 59, baseType: !48, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1313, file: !59, line: 60, baseType: !48, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1313, file: !59, line: 61, baseType: !48, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1313, file: !59, line: 64, baseType: !48, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1313, file: !59, line: 65, baseType: !48, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1313, file: !59, line: 66, baseType: !48, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1313, file: !59, line: 68, baseType: !74, size: 64, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1313, file: !59, line: 70, baseType: !1312, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1313, file: !59, line: 72, baseType: !14, size: 32, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1313, file: !59, line: 73, baseType: !14, size: 32, offset: 928)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1313, file: !59, line: 74, baseType: !80, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1313, file: !59, line: 77, baseType: !83, size: 16, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1313, file: !59, line: 78, baseType: !85, size: 8, offset: 1040)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1313, file: !59, line: 79, baseType: !87, size: 8, offset: 1048)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1313, file: !59, line: 81, baseType: !91, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1313, file: !59, line: 89, baseType: !94, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1313, file: !59, line: 91, baseType: !96, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1313, file: !59, line: 92, baseType: !99, size: 64, offset: 1280)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1313, file: !59, line: 93, baseType: !1312, size: 64, offset: 1344)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1313, file: !59, line: 94, baseType: !103, size: 64, offset: 1408)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1313, file: !59, line: 95, baseType: !105, size: 64, offset: 1472)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1313, file: !59, line: 96, baseType: !14, size: 32, offset: 1536)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1313, file: !59, line: 98, baseType: !110, size: 160, offset: 1568)
!1344 = !DISubprogram(name: "fseeko", scope: !54, file: !54, line: 707, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!14, !1312, !81, !14}
!1347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1348, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !1349, splitDebugInlining: false, nameTableKind: None)
!1348 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1349 = !{!1350}
!1350 = !DISubprogram(name: "rpl_fcntl", scope: !1351, file: !1351, line: 588, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!1351 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1352 = !{!"clang version 10.0.0 "}
!1353 = !{i32 7, !"Dwarf Version", i32 4}
!1354 = !{i32 2, !"Debug Info Version", i32 3}
!1355 = !{i32 1, !"wchar_size", i32 4}
!1356 = !{i32 7, !"PIC Level", i32 2}
!1357 = !{i32 7, !"PIE Level", i32 2}
!1358 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !1359, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !14}
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "status", arg: 1, scope: !1358, file: !3, line: 53, type: !14)
!1363 = !DILocalVariable(name: "infomap", scope: !1364, file: !1365, line: 636, type: !1377)
!1364 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1365, file: !1365, line: 634, type: !115, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1365 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1366 = !{!1367, !1363, !1368, !1369, !1376}
!1367 = !DILocalVariable(name: "program", arg: 1, scope: !1364, file: !1365, line: 634, type: !50)
!1368 = !DILocalVariable(name: "node", scope: !1364, file: !1365, line: 646, type: !50)
!1369 = !DILocalVariable(name: "map_prog", scope: !1364, file: !1365, line: 647, type: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1364, file: !1365, line: 636, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1372, file: !1365, line: 636, baseType: !50, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1372, file: !1365, line: 636, baseType: !50, size: 64, offset: 64)
!1376 = !DILocalVariable(name: "lc_messages", scope: !1364, file: !1365, line: 659, type: !50)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 896, elements: !217)
!1378 = !DILocation(line: 636, column: 67, scope: !1364, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 79, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 58, column: 5)
!1381 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 55, column: 7)
!1382 = !DILocation(line: 0, scope: !1358)
!1383 = !DILocation(line: 55, column: 14, scope: !1381)
!1384 = !DILocation(line: 55, column: 7, scope: !1358)
!1385 = !DILocation(line: 56, column: 5, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 56, column: 5)
!1387 = !{!1388, !1388, i64 0}
!1388 = !{!"any pointer", !1389, i64 0}
!1389 = !{!"omnipotent char", !1390, i64 0}
!1390 = !{!"Simple C/C++ TBAA"}
!1391 = !DILocation(line: 59, column: 7, scope: !1380)
!1392 = !DILocation(line: 60, column: 7, scope: !1380)
!1393 = !DILocation(line: 590, column: 3, scope: !1394, inlinedAt: !1395)
!1394 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1365, file: !1365, line: 588, type: !132, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!1395 = distinct !DILocation(line: 64, column: 7, scope: !1380)
!1396 = !DILocation(line: 66, column: 7, scope: !1380)
!1397 = !DILocation(line: 71, column: 7, scope: !1380)
!1398 = !DILocation(line: 77, column: 7, scope: !1380)
!1399 = !DILocation(line: 78, column: 7, scope: !1380)
!1400 = !DILocation(line: 0, scope: !1364, inlinedAt: !1379)
!1401 = !DILocation(line: 636, column: 3, scope: !1364, inlinedAt: !1379)
!1402 = !DILocation(line: 647, column: 36, scope: !1364, inlinedAt: !1379)
!1403 = !DILocation(line: 649, column: 3, scope: !1364, inlinedAt: !1379)
!1404 = !DILocation(line: 649, column: 33, scope: !1364, inlinedAt: !1379)
!1405 = !DILocation(line: 650, column: 13, scope: !1364, inlinedAt: !1379)
!1406 = !DILocation(line: 649, column: 20, scope: !1364, inlinedAt: !1379)
!1407 = !{!1408, !1388, i64 0}
!1408 = !{!"infomap", !1388, i64 0, !1388, i64 8}
!1409 = !DILocation(line: 649, column: 10, scope: !1364, inlinedAt: !1379)
!1410 = !DILocation(line: 649, column: 28, scope: !1364, inlinedAt: !1379)
!1411 = distinct !{!1411, !1403, !1405}
!1412 = !DILocation(line: 652, column: 17, scope: !1413, inlinedAt: !1379)
!1413 = distinct !DILexicalBlock(scope: !1364, file: !1365, line: 652, column: 7)
!1414 = !{!1408, !1388, i64 8}
!1415 = !DILocation(line: 652, column: 7, scope: !1413, inlinedAt: !1379)
!1416 = !DILocation(line: 652, column: 7, scope: !1364, inlinedAt: !1379)
!1417 = !DILocation(line: 655, column: 3, scope: !1364, inlinedAt: !1379)
!1418 = !DILocation(line: 659, column: 29, scope: !1364, inlinedAt: !1379)
!1419 = !DILocation(line: 660, column: 7, scope: !1420, inlinedAt: !1379)
!1420 = distinct !DILexicalBlock(scope: !1364, file: !1365, line: 660, column: 7)
!1421 = !DILocation(line: 660, column: 19, scope: !1420, inlinedAt: !1379)
!1422 = !DILocation(line: 660, column: 22, scope: !1420, inlinedAt: !1379)
!1423 = !DILocation(line: 660, column: 7, scope: !1364, inlinedAt: !1379)
!1424 = !DILocation(line: 666, column: 7, scope: !1425, inlinedAt: !1379)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !1365, line: 661, column: 5)
!1426 = !DILocation(line: 668, column: 5, scope: !1425, inlinedAt: !1379)
!1427 = !DILocation(line: 669, column: 3, scope: !1364, inlinedAt: !1379)
!1428 = !DILocation(line: 671, column: 3, scope: !1364, inlinedAt: !1379)
!1429 = !DILocation(line: 673, column: 1, scope: !1364, inlinedAt: !1379)
!1430 = !DILocation(line: 81, column: 3, scope: !1358)
!1431 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !1432, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!14, !14, !184}
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1449, !1452, !1455}
!1435 = !DILocalVariable(name: "argc", arg: 1, scope: !1431, file: !3, line: 189, type: !14)
!1436 = !DILocalVariable(name: "argv", arg: 2, scope: !1431, file: !3, line: 189, type: !184)
!1437 = !DILocalVariable(name: "specified_mode", scope: !1431, file: !3, line: 191, type: !50)
!1438 = !DILocalVariable(name: "optc", scope: !1431, file: !3, line: 192, type: !14)
!1439 = !DILocalVariable(name: "scontext", scope: !1431, file: !3, line: 193, type: !50)
!1440 = !DILocalVariable(name: "options", scope: !1431, file: !3, line: 194, type: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 85, size: 256, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !1441, file: !3, line: 89, baseType: !207, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "umask_value", scope: !1441, file: !3, line: 92, baseType: !454, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1441, file: !3, line: 95, baseType: !454, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !1441, file: !3, line: 98, baseType: !454, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !1441, file: !3, line: 101, baseType: !174, size: 8, offset: 160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !1441, file: !3, line: 104, baseType: !50, size: 64, offset: 192)
!1449 = !DILocalVariable(name: "ret", scope: !1450, file: !3, line: 261, type: !14)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 260, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 259, column: 7)
!1452 = !DILocalVariable(name: "umask_value", scope: !1453, file: !3, line: 276, type: !454)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 275, column: 5)
!1454 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 274, column: 7)
!1455 = !DILocalVariable(name: "change", scope: !1456, file: !3, line: 282, type: !169)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 281, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 280, column: 11)
!1458 = !DILocation(line: 0, scope: !1431)
!1459 = !DILocation(line: 194, column: 3, scope: !1431)
!1460 = !DILocation(line: 194, column: 24, scope: !1431)
!1461 = !DILocation(line: 196, column: 11, scope: !1431)
!1462 = !DILocation(line: 196, column: 34, scope: !1431)
!1463 = !{!1464, !1388, i64 0}
!1464 = !{!"mkdir_options", !1388, i64 0, !1465, i64 8, !1465, i64 12, !1465, i64 16, !1466, i64 20, !1388, i64 24}
!1465 = !{!"int", !1389, i64 0}
!1466 = !{!"_Bool", !1389, i64 0}
!1467 = !DILocation(line: 197, column: 11, scope: !1431)
!1468 = !DILocation(line: 197, column: 16, scope: !1431)
!1469 = !{!1464, !1465, i64 12}
!1470 = !DILocation(line: 198, column: 11, scope: !1431)
!1471 = !DILocation(line: 198, column: 21, scope: !1431)
!1472 = !{!1464, !1465, i64 16}
!1473 = !DILocation(line: 199, column: 11, scope: !1431)
!1474 = !DILocation(line: 199, column: 36, scope: !1431)
!1475 = !{!1464, !1388, i64 24}
!1476 = !DILocation(line: 200, column: 11, scope: !1431)
!1477 = !DILocation(line: 200, column: 32, scope: !1431)
!1478 = !{!1464, !1466, i64 20}
!1479 = !DILocation(line: 203, column: 21, scope: !1431)
!1480 = !DILocation(line: 203, column: 3, scope: !1431)
!1481 = !DILocation(line: 204, column: 3, scope: !1431)
!1482 = !DILocation(line: 205, column: 3, scope: !1431)
!1483 = !DILocation(line: 206, column: 3, scope: !1431)
!1484 = !DILocation(line: 208, column: 3, scope: !1431)
!1485 = !DILocation(line: 210, column: 3, scope: !1431)
!1486 = !DILocation(line: 210, column: 18, scope: !1431)
!1487 = !DILocation(line: 215, column: 42, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 213, column: 9)
!1489 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 211, column: 5)
!1490 = !DILocation(line: 216, column: 11, scope: !1488)
!1491 = distinct !{!1491, !1485, !1492}
!1492 = !DILocation(line: 248, column: 5, scope: !1431)
!1493 = !DILocation(line: 218, column: 28, scope: !1488)
!1494 = !DILocation(line: 219, column: 11, scope: !1488)
!1495 = !DILocation(line: 221, column: 46, scope: !1488)
!1496 = !DILocation(line: 221, column: 44, scope: !1488)
!1497 = !DILocation(line: 222, column: 11, scope: !1488)
!1498 = !DILocation(line: 0, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 224, column: 15)
!1500 = !DILocation(line: 236, column: 20, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 236, column: 20)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 229, column: 20)
!1503 = !DILocation(line: 236, column: 20, scope: !1502)
!1504 = !DILocation(line: 239, column: 22, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 237, column: 13)
!1506 = !DILocation(line: 238, column: 15, scope: !1505)
!1507 = !DILocation(line: 241, column: 13, scope: !1505)
!1508 = !DILocation(line: 243, column: 9, scope: !1488)
!1509 = !DILocation(line: 244, column: 9, scope: !1488)
!1510 = !DILocation(line: 246, column: 11, scope: !1488)
!1511 = !DILocation(line: 250, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 250, column: 7)
!1513 = !{!1465, !1465, i64 0}
!1514 = !DILocation(line: 250, column: 14, scope: !1512)
!1515 = !DILocation(line: 250, column: 7, scope: !1431)
!1516 = !DILocation(line: 252, column: 20, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 251, column: 5)
!1518 = !DILocation(line: 252, column: 7, scope: !1517)
!1519 = !DILocation(line: 253, column: 7, scope: !1517)
!1520 = !DILocation(line: 274, column: 7, scope: !1454)
!1521 = !DILocation(line: 274, column: 41, scope: !1454)
!1522 = !DILocation(line: 274, column: 38, scope: !1454)
!1523 = !DILocation(line: 276, column: 28, scope: !1453)
!1524 = !DILocation(line: 0, scope: !1453)
!1525 = !DILocation(line: 277, column: 7, scope: !1453)
!1526 = !DILocation(line: 278, column: 15, scope: !1453)
!1527 = !DILocation(line: 278, column: 27, scope: !1453)
!1528 = !{!1464, !1465, i64 8}
!1529 = !DILocation(line: 280, column: 11, scope: !1453)
!1530 = !DILocation(line: 282, column: 40, scope: !1456)
!1531 = !DILocation(line: 0, scope: !1456)
!1532 = !DILocation(line: 283, column: 16, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 283, column: 15)
!1534 = !DILocation(line: 283, column: 15, scope: !1456)
!1535 = !DILocation(line: 284, column: 13, scope: !1533)
!1536 = !DILocation(line: 286, column: 26, scope: !1456)
!1537 = !DILocation(line: 286, column: 24, scope: !1456)
!1538 = !DILocation(line: 288, column: 17, scope: !1456)
!1539 = !DILocation(line: 288, column: 11, scope: !1456)
!1540 = !DILocation(line: 289, column: 9, scope: !1456)
!1541 = !DILocation(line: 291, column: 22, scope: !1457)
!1542 = !DILocation(line: 294, column: 39, scope: !1431)
!1543 = !DILocation(line: 294, column: 37, scope: !1431)
!1544 = !DILocation(line: 294, column: 52, scope: !1431)
!1545 = !DILocation(line: 294, column: 10, scope: !1431)
!1546 = !DILocation(line: 296, column: 1, scope: !1431)
!1547 = !DILocation(line: 294, column: 3, scope: !1431)
!1548 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 122, type: !208, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1556, !1557, !1558, !1559}
!1550 = !DILocalVariable(name: "dir", arg: 1, scope: !1548, file: !3, line: 122, type: !50)
!1551 = !DILocalVariable(name: "component", arg: 2, scope: !1548, file: !3, line: 122, type: !50)
!1552 = !DILocalVariable(name: "options", arg: 3, scope: !1548, file: !3, line: 122, type: !103)
!1553 = !DILocalVariable(name: "o", scope: !1548, file: !3, line: 124, type: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1556 = !DILocalVariable(name: "user_wx", scope: !1548, file: !3, line: 131, type: !454)
!1557 = !DILocalVariable(name: "self_denying_umask", scope: !1548, file: !3, line: 132, type: !174)
!1558 = !DILocalVariable(name: "r", scope: !1548, file: !3, line: 135, type: !14)
!1559 = !DILocalVariable(name: "mkdir_errno", scope: !1560, file: !3, line: 138, type: !14)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 137, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 136, column: 7)
!1562 = !DILocation(line: 0, scope: !1548)
!1563 = !DILocation(line: 126, column: 10, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 126, column: 7)
!1565 = !{i8 0, i8 2}
!1566 = !DILocation(line: 126, column: 31, scope: !1564)
!1567 = !DILocalVariable(name: "path", arg: 1, scope: !1568, file: !1569, line: 44, type: !50)
!1568 = distinct !DISubprogram(name: "defaultcon", scope: !1569, file: !1569, line: 44, type: !452, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1569 = !DIFile(filename: "src/selinux.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1570 = !{!1567, !1571}
!1571 = !DILocalVariable(name: "mode", arg: 2, scope: !1568, file: !1569, line: 44, type: !454)
!1572 = !DILocation(line: 0, scope: !1568, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 126, column: 34, scope: !1564)
!1574 = !DILocation(line: 45, column: 3, scope: !1568, inlinedAt: !1573)
!1575 = !DILocation(line: 45, column: 9, scope: !1568, inlinedAt: !1573)
!1576 = !DILocation(line: 126, column: 7, scope: !1548)
!1577 = !DILocation(line: 132, column: 33, scope: !1548)
!1578 = !DILocation(line: 132, column: 45, scope: !1548)
!1579 = !DILocation(line: 132, column: 56, scope: !1548)
!1580 = !DILocation(line: 133, column: 7, scope: !1548)
!1581 = !DILocation(line: 135, column: 11, scope: !1548)
!1582 = !DILocation(line: 136, column: 7, scope: !1548)
!1583 = !DILocation(line: 134, column: 27, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 133, column: 7)
!1585 = !DILocation(line: 134, column: 5, scope: !1584)
!1586 = !DILocation(line: 138, column: 25, scope: !1560)
!1587 = !DILocation(line: 0, scope: !1560)
!1588 = !DILocation(line: 139, column: 17, scope: !1560)
!1589 = !DILocation(line: 139, column: 7, scope: !1560)
!1590 = !DILocation(line: 140, column: 13, scope: !1560)
!1591 = !DILocation(line: 141, column: 5, scope: !1560)
!1592 = !DILocation(line: 142, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 142, column: 7)
!1594 = !DILocation(line: 142, column: 7, scope: !1548)
!1595 = !DILocation(line: 144, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 143, column: 5)
!1597 = !DILocation(line: 144, column: 38, scope: !1596)
!1598 = !DILocalVariable(name: "dir", arg: 1, scope: !1599, file: !3, line: 109, type: !50)
!1599 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 109, type: !211, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1600)
!1600 = !{!1598, !1601, !1602}
!1601 = !DILocalVariable(name: "options", arg: 2, scope: !1599, file: !3, line: 109, type: !103)
!1602 = !DILocalVariable(name: "o", scope: !1599, file: !3, line: 111, type: !1554)
!1603 = !DILocation(line: 0, scope: !1599, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 145, column: 7, scope: !1596)
!1605 = !DILocation(line: 112, column: 10, scope: !1606, inlinedAt: !1604)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 112, column: 7)
!1607 = !DILocation(line: 112, column: 7, scope: !1606, inlinedAt: !1604)
!1608 = !DILocation(line: 112, column: 7, scope: !1599, inlinedAt: !1604)
!1609 = !DILocation(line: 113, column: 19, scope: !1606, inlinedAt: !1604)
!1610 = !DILocation(line: 113, column: 56, scope: !1606, inlinedAt: !1604)
!1611 = !DILocation(line: 113, column: 5, scope: !1606, inlinedAt: !1604)
!1612 = !DILocation(line: 147, column: 3, scope: !1548)
!1613 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 152, type: !186, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619}
!1615 = !DILocalVariable(name: "dir", arg: 1, scope: !1613, file: !3, line: 152, type: !48)
!1616 = !DILocalVariable(name: "wd", arg: 2, scope: !1613, file: !3, line: 152, type: !188)
!1617 = !DILocalVariable(name: "options", arg: 3, scope: !1613, file: !3, line: 152, type: !103)
!1618 = !DILocalVariable(name: "o", scope: !1613, file: !3, line: 154, type: !1554)
!1619 = !DILocalVariable(name: "ret", scope: !1613, file: !3, line: 165, type: !14)
!1620 = !DILocation(line: 0, scope: !1613)
!1621 = !DILocation(line: 157, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 157, column: 7)
!1623 = !DILocation(line: 159, column: 13, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 159, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 158, column: 5)
!1626 = !DILocation(line: 157, column: 7, scope: !1613)
!1627 = !DILocation(line: 0, scope: !1568, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 159, column: 42, scope: !1624)
!1629 = !DILocation(line: 45, column: 3, scope: !1568, inlinedAt: !1628)
!1630 = !DILocation(line: 45, column: 9, scope: !1568, inlinedAt: !1628)
!1631 = !DILocation(line: 159, column: 11, scope: !1625)
!1632 = !DILocation(line: 165, column: 44, scope: !1613)
!1633 = !DILocation(line: 166, column: 35, scope: !1613)
!1634 = !DILocation(line: 167, column: 35, scope: !1613)
!1635 = !DILocation(line: 165, column: 14, scope: !1613)
!1636 = !DILocation(line: 176, column: 27, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 176, column: 7)
!1638 = !DILocation(line: 176, column: 33, scope: !1637)
!1639 = !DILocation(line: 177, column: 7, scope: !1637)
!1640 = !DILocation(line: 177, column: 13, scope: !1637)
!1641 = !DILocation(line: 177, column: 10, scope: !1637)
!1642 = !DILocation(line: 176, column: 7, scope: !1613)
!1643 = !DILocalVariable(name: "path", arg: 1, scope: !1644, file: !1569, line: 40, type: !50)
!1644 = distinct !DISubprogram(name: "restorecon", scope: !1569, file: !1569, line: 40, type: !1645, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!174, !50, !174, !174}
!1647 = !{!1643, !1648, !1649}
!1648 = !DILocalVariable(name: "recurse", arg: 2, scope: !1644, file: !1569, line: 40, type: !174)
!1649 = !DILocalVariable(name: "preserve", arg: 3, scope: !1644, file: !1569, line: 40, type: !174)
!1650 = !DILocation(line: 0, scope: !1644, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 179, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 179, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 178, column: 5)
!1654 = !DILocation(line: 41, column: 3, scope: !1644, inlinedAt: !1651)
!1655 = !DILocation(line: 41, column: 9, scope: !1644, inlinedAt: !1651)
!1656 = !DILocation(line: 179, column: 11, scope: !1653)
!1657 = !DILocation(line: 185, column: 3, scope: !1613)
!1658 = !DILocation(line: 0, scope: !1599)
!1659 = !DILocation(line: 112, column: 10, scope: !1606)
!1660 = !DILocation(line: 112, column: 7, scope: !1606)
!1661 = !DILocation(line: 112, column: 7, scope: !1599)
!1662 = !DILocation(line: 113, column: 19, scope: !1606)
!1663 = !DILocation(line: 113, column: 56, scope: !1606)
!1664 = !DILocation(line: 113, column: 5, scope: !1606)
!1665 = !DILocation(line: 114, column: 1, scope: !1599)
!1666 = distinct !DISubprogram(name: "prog_fprintf", scope: !541, file: !541, line: 28, type: !1667, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1672)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1669, !50, null}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !547)
!1671 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1672 = !{!1673, !1674, !1675}
!1673 = !DILocalVariable(name: "fp", arg: 1, scope: !1666, file: !541, line: 28, type: !1669)
!1674 = !DILocalVariable(name: "fmt", arg: 2, scope: !1666, file: !541, line: 28, type: !50)
!1675 = !DILocalVariable(name: "ap", scope: !1666, file: !541, line: 30, type: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !54, line: 52, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1678, line: 32, baseType: !1679)
!1678 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !541, line: 30, baseType: !1680)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1681, size: 192, elements: !88)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !541, line: 30, size: 192, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1681, file: !541, line: 30, baseType: !21, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1681, file: !541, line: 30, baseType: !21, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1681, file: !541, line: 30, baseType: !103, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1681, file: !541, line: 30, baseType: !103, size: 64, offset: 128)
!1687 = !DILocation(line: 0, scope: !1666)
!1688 = !DILocation(line: 30, column: 3, scope: !1666)
!1689 = !DILocation(line: 30, column: 11, scope: !1666)
!1690 = !DILocation(line: 31, column: 3, scope: !1666)
!1691 = !DILocation(line: 32, column: 3, scope: !1666)
!1692 = !DILocation(line: 33, column: 3, scope: !1666)
!1693 = !DILocalVariable(name: "__stream", arg: 1, scope: !1694, file: !1695, line: 127, type: !1698)
!1694 = distinct !DISubprogram(name: "vfprintf", scope: !1695, file: !1695, line: 127, type: !1696, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1701)
!1695 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!14, !1698, !1699, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1669)
!1699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1701 = !{!1693, !1702, !1703}
!1702 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1694, file: !1695, line: 128, type: !1699)
!1703 = !DILocalVariable(name: "__ap", arg: 3, scope: !1694, file: !1695, line: 128, type: !1700)
!1704 = !DILocation(line: 0, scope: !1694, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 34, column: 3, scope: !1666)
!1706 = !DILocation(line: 130, column: 10, scope: !1694, inlinedAt: !1705)
!1707 = !DILocation(line: 35, column: 3, scope: !1666)
!1708 = !DILocalVariable(name: "__c", arg: 1, scope: !1709, file: !1710, line: 91, type: !14)
!1709 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1710, file: !1710, line: 91, type: !1711, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1713)
!1710 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!14, !14, !1669}
!1713 = !{!1708, !1714}
!1714 = !DILocalVariable(name: "__stream", arg: 2, scope: !1709, file: !1710, line: 91, type: !1669)
!1715 = !DILocation(line: 0, scope: !1709, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 36, column: 3, scope: !1666)
!1717 = !DILocation(line: 93, column: 10, scope: !1709, inlinedAt: !1716)
!1718 = !{!1719, !1388, i64 40}
!1719 = !{!"_IO_FILE", !1465, i64 0, !1388, i64 8, !1388, i64 16, !1388, i64 24, !1388, i64 32, !1388, i64 40, !1388, i64 48, !1388, i64 56, !1388, i64 64, !1388, i64 72, !1388, i64 80, !1388, i64 88, !1388, i64 96, !1388, i64 104, !1465, i64 112, !1465, i64 116, !1720, i64 120, !1721, i64 128, !1389, i64 130, !1389, i64 131, !1388, i64 136, !1720, i64 144, !1388, i64 152, !1388, i64 160, !1388, i64 168, !1388, i64 176, !1720, i64 184, !1465, i64 192, !1389, i64 196}
!1720 = !{!"long", !1389, i64 0}
!1721 = !{!"short", !1389, i64 0}
!1722 = !{!1719, !1388, i64 48}
!1723 = !{!"branch_weights", i32 2000, i32 1}
!1724 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1725 = !{!1389, !1389, i64 0}
!1726 = !DILocation(line: 37, column: 1, scope: !1666)
!1727 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !227, file: !227, line: 51, type: !115, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1728)
!1728 = !{!1729}
!1729 = !DILocalVariable(name: "file", arg: 1, scope: !1727, file: !227, line: 51, type: !50)
!1730 = !DILocation(line: 0, scope: !1727)
!1731 = !DILocation(line: 53, column: 13, scope: !1727)
!1732 = !DILocation(line: 54, column: 1, scope: !1727)
!1733 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !227, file: !227, line: 88, type: !1734, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !174}
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "ignore", arg: 1, scope: !1733, file: !227, line: 88, type: !174)
!1738 = !DILocation(line: 0, scope: !1733)
!1739 = !DILocation(line: 90, column: 16, scope: !1733)
!1740 = !{!1466, !1466, i64 0}
!1741 = !DILocation(line: 91, column: 1, scope: !1733)
!1742 = distinct !DISubprogram(name: "close_stdout", scope: !227, file: !227, line: 117, type: !132, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1743)
!1743 = !{!1744}
!1744 = !DILocalVariable(name: "write_error", scope: !1745, file: !227, line: 122, type: !50)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !227, line: 121, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !227, line: 119, column: 7)
!1747 = !DILocation(line: 119, column: 21, scope: !1746)
!1748 = !DILocation(line: 119, column: 7, scope: !1746)
!1749 = !DILocation(line: 119, column: 29, scope: !1746)
!1750 = !DILocation(line: 120, column: 7, scope: !1746)
!1751 = !DILocation(line: 120, column: 12, scope: !1746)
!1752 = !DILocation(line: 120, column: 25, scope: !1746)
!1753 = !DILocation(line: 120, column: 28, scope: !1746)
!1754 = !DILocation(line: 120, column: 34, scope: !1746)
!1755 = !DILocation(line: 119, column: 7, scope: !1742)
!1756 = !DILocation(line: 122, column: 33, scope: !1745)
!1757 = !DILocation(line: 0, scope: !1745)
!1758 = !DILocation(line: 123, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1745, file: !227, line: 123, column: 11)
!1760 = !DILocation(line: 0, scope: !1759)
!1761 = !DILocation(line: 123, column: 11, scope: !1745)
!1762 = !DILocation(line: 124, column: 36, scope: !1759)
!1763 = !DILocation(line: 124, column: 9, scope: !1759)
!1764 = !DILocation(line: 127, column: 9, scope: !1759)
!1765 = !DILocation(line: 129, column: 14, scope: !1745)
!1766 = !DILocation(line: 129, column: 7, scope: !1745)
!1767 = !DILocation(line: 134, column: 42, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1742, file: !227, line: 134, column: 7)
!1769 = !DILocation(line: 134, column: 28, scope: !1768)
!1770 = !DILocation(line: 134, column: 50, scope: !1768)
!1771 = !DILocation(line: 134, column: 7, scope: !1742)
!1772 = !DILocation(line: 135, column: 12, scope: !1768)
!1773 = !DILocation(line: 135, column: 5, scope: !1768)
!1774 = !DILocation(line: 136, column: 1, scope: !1742)
!1775 = distinct !DISubprogram(name: "make_dir_parents", scope: !582, file: !582, line: 85, type: !1776, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!174, !48, !603, !207, !103, !454, !210, !454, !199, !201, !174}
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1794, !1795, !1798, !1799, !1800, !1803, !1829, !1834, !1835, !1838}
!1779 = !DILocalVariable(name: "dir", arg: 1, scope: !1775, file: !582, line: 85, type: !48)
!1780 = !DILocalVariable(name: "wd", arg: 2, scope: !1775, file: !582, line: 86, type: !603)
!1781 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1775, file: !582, line: 87, type: !207)
!1782 = !DILocalVariable(name: "options", arg: 4, scope: !1775, file: !582, line: 88, type: !103)
!1783 = !DILocalVariable(name: "mode", arg: 5, scope: !1775, file: !582, line: 89, type: !454)
!1784 = !DILocalVariable(name: "announce", arg: 6, scope: !1775, file: !582, line: 90, type: !210)
!1785 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1775, file: !582, line: 91, type: !454)
!1786 = !DILocalVariable(name: "owner", arg: 8, scope: !1775, file: !582, line: 92, type: !199)
!1787 = !DILocalVariable(name: "group", arg: 9, scope: !1775, file: !582, line: 93, type: !201)
!1788 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1775, file: !582, line: 94, type: !174)
!1789 = !DILocalVariable(name: "mkdir_errno", scope: !1775, file: !582, line: 96, type: !14)
!1790 = !DILocalVariable(name: "prefix_len", scope: !1791, file: !582, line: 100, type: !1793)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !582, line: 99, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1775, file: !582, line: 98, column: 7)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !106, line: 35, baseType: !81)
!1794 = !DILocalVariable(name: "savewd_chdir_options", scope: !1791, file: !582, line: 101, type: !14)
!1795 = !DILocalVariable(name: "keep_owner", scope: !1796, file: !582, line: 121, type: !174)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !582, line: 115, column: 9)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !582, line: 114, column: 11)
!1798 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1796, file: !582, line: 122, type: !174)
!1799 = !DILocalVariable(name: "mkdir_mode", scope: !1796, file: !582, line: 124, type: !454)
!1800 = !DILocalVariable(name: "umask_must_be_ok", scope: !1801, file: !582, line: 134, type: !174)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !582, line: 131, column: 13)
!1802 = distinct !DILexicalBlock(scope: !1796, file: !582, line: 130, column: 15)
!1803 = !DILocalVariable(name: "st", scope: !1804, file: !582, line: 153, type: !1808)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !582, line: 152, column: 17)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !582, line: 151, column: 19)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !582, line: 148, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1796, file: !582, line: 147, column: 15)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !474, line: 46, size: 1152, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1826, !1827, !1828}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1808, file: !474, line: 48, baseType: !477, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1808, file: !474, line: 53, baseType: !479, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1808, file: !474, line: 61, baseType: !481, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1808, file: !474, line: 62, baseType: !455, size: 32, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1808, file: !474, line: 64, baseType: !200, size: 32, offset: 224)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1808, file: !474, line: 65, baseType: !202, size: 32, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1808, file: !474, line: 67, baseType: !14, size: 32, offset: 288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1808, file: !474, line: 69, baseType: !477, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1808, file: !474, line: 74, baseType: !80, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1808, file: !474, line: 78, baseType: !489, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1808, file: !474, line: 80, baseType: !491, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1808, file: !474, line: 91, baseType: !1822, size: 128, offset: 576)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !494, line: 10, size: 128, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1822, file: !494, line: 12, baseType: !497, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1822, file: !494, line: 16, baseType: !499, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1808, file: !474, line: 92, baseType: !1822, size: 128, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1808, file: !474, line: 93, baseType: !1822, size: 128, offset: 832)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1808, file: !474, line: 106, baseType: !503, size: 192, offset: 960)
!1829 = !DILocalVariable(name: "open_result", scope: !1830, file: !582, line: 169, type: !1831)
!1830 = distinct !DILexicalBlock(scope: !1807, file: !582, line: 168, column: 13)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 2)
!1834 = !DILocalVariable(name: "chdir_result", scope: !1830, file: !582, line: 170, type: !14)
!1835 = !DILocalVariable(name: "chdir_ok", scope: !1836, file: !582, line: 177, type: !174)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !582, line: 176, column: 17)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !582, line: 173, column: 19)
!1838 = !DILocalVariable(name: "subdir", scope: !1836, file: !582, line: 178, type: !50)
!1839 = !DILocation(line: 0, scope: !1775)
!1840 = !DILocation(line: 96, column: 22, scope: !1775)
!1841 = !DILocalVariable(name: "wd", arg: 1, scope: !1842, file: !6, line: 124, type: !1845)
!1842 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 124, type: !1843, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !1847)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!14, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!1847 = !{!1841}
!1848 = !DILocation(line: 0, scope: !1842, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 96, column: 56, scope: !1775)
!1850 = !DILocation(line: 126, column: 15, scope: !1842, inlinedAt: !1849)
!1851 = !{!1852, !1389, i64 0}
!1852 = !{!"savewd", !1389, i64 0, !1389, i64 4}
!1853 = !DILocation(line: 126, column: 21, scope: !1842, inlinedAt: !1849)
!1854 = !DILocation(line: 126, column: 11, scope: !1842, inlinedAt: !1849)
!1855 = !DILocation(line: 126, column: 46, scope: !1842, inlinedAt: !1849)
!1856 = !DILocation(line: 98, column: 19, scope: !1792)
!1857 = !DILocation(line: 98, column: 7, scope: !1775)
!1858 = !DILocation(line: 0, scope: !1791)
!1859 = !DILocation(line: 103, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1791, file: !582, line: 103, column: 11)
!1861 = !DILocation(line: 103, column: 11, scope: !1791)
!1862 = !DILocation(line: 105, column: 24, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !582, line: 104, column: 9)
!1864 = !DILocation(line: 106, column: 26, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !582, line: 106, column: 15)
!1866 = !DILocation(line: 106, column: 15, scope: !1863)
!1867 = !DILocation(line: 108, column: 30, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !582, line: 108, column: 19)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !582, line: 107, column: 13)
!1870 = !DILocation(line: 108, column: 19, scope: !1869)
!1871 = !DILocation(line: 110, column: 29, scope: !1869)
!1872 = !DILocation(line: 114, column: 11, scope: !1791)
!1873 = !DILocation(line: 121, column: 49, scope: !1796)
!1874 = !DILocation(line: 0, scope: !1796)
!1875 = !DILocation(line: 123, column: 25, scope: !1796)
!1876 = !DILocation(line: 123, column: 56, scope: !1796)
!1877 = !DILocation(line: 123, column: 48, scope: !1796)
!1878 = !DILocation(line: 125, column: 15, scope: !1796)
!1879 = !DILocation(line: 130, column: 26, scope: !1802)
!1880 = !DILocation(line: 130, column: 15, scope: !1802)
!1881 = !DILocation(line: 130, column: 52, scope: !1802)
!1882 = !DILocation(line: 130, column: 15, scope: !1796)
!1883 = !DILocation(line: 134, column: 45, scope: !1801)
!1884 = !DILocation(line: 134, column: 57, scope: !1801)
!1885 = !DILocation(line: 0, scope: !1801)
!1886 = !DILocation(line: 136, column: 15, scope: !1801)
!1887 = !DILocation(line: 138, column: 36, scope: !1801)
!1888 = !DILocation(line: 147, column: 15, scope: !1796)
!1889 = !DILocation(line: 143, column: 29, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1802, file: !582, line: 142, column: 13)
!1891 = !DILocation(line: 149, column: 31, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1806, file: !582, line: 149, column: 19)
!1893 = !DILocation(line: 149, column: 19, scope: !1806)
!1894 = !DILocation(line: 151, column: 31, scope: !1805)
!1895 = !DILocation(line: 151, column: 41, scope: !1805)
!1896 = !DILocation(line: 153, column: 19, scope: !1804)
!1897 = !DILocation(line: 153, column: 31, scope: !1804)
!1898 = !DILocalVariable(name: "__path", arg: 1, scope: !1899, file: !162, line: 453, type: !50)
!1899 = distinct !DISubprogram(name: "stat", scope: !162, file: !162, line: 453, type: !1900, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !1903)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!14, !50, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1903 = !{!1898, !1904}
!1904 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1899, file: !162, line: 453, type: !1902)
!1905 = !DILocation(line: 0, scope: !1899, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 154, column: 23, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1804, file: !582, line: 154, column: 23)
!1908 = !DILocation(line: 455, column: 10, scope: !1899, inlinedAt: !1906)
!1909 = !DILocation(line: 154, column: 52, scope: !1907)
!1910 = !DILocation(line: 154, column: 23, scope: !1804)
!1911 = !DILocation(line: 156, column: 27, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !582, line: 156, column: 27)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !582, line: 155, column: 21)
!1914 = !{!1915, !1465, i64 24}
!1915 = !{!"stat", !1720, i64 0, !1720, i64 8, !1720, i64 16, !1465, i64 24, !1465, i64 28, !1465, i64 32, !1465, i64 36, !1720, i64 40, !1720, i64 48, !1720, i64 56, !1720, i64 64, !1916, i64 72, !1916, i64 88, !1916, i64 104, !1389, i64 120}
!1916 = !{!"timespec", !1720, i64 0, !1720, i64 8}
!1917 = !DILocation(line: 156, column: 27, scope: !1913)
!1918 = !DILocation(line: 159, column: 40, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1907, file: !582, line: 159, column: 28)
!1920 = !DILocation(line: 160, column: 28, scope: !1919)
!1921 = !DILocation(line: 160, column: 31, scope: !1919)
!1922 = !DILocation(line: 160, column: 47, scope: !1919)
!1923 = !DILocation(line: 162, column: 40, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !582, line: 161, column: 21)
!1925 = !DILocation(line: 162, column: 61, scope: !1924)
!1926 = !DILocation(line: 162, column: 23, scope: !1924)
!1927 = !DILocation(line: 163, column: 23, scope: !1924)
!1928 = !DILocation(line: 165, column: 17, scope: !1805)
!1929 = !DILocation(line: 169, column: 15, scope: !1830)
!1930 = !DILocation(line: 169, column: 19, scope: !1830)
!1931 = !DILocation(line: 172, column: 53, scope: !1830)
!1932 = !DILocation(line: 171, column: 17, scope: !1830)
!1933 = !DILocation(line: 0, scope: !1830)
!1934 = !DILocation(line: 173, column: 32, scope: !1837)
!1935 = !DILocation(line: 173, column: 19, scope: !1830)
!1936 = !DILocation(line: 196, column: 13, scope: !1807)
!1937 = !DILocation(line: 177, column: 49, scope: !1836)
!1938 = !DILocation(line: 0, scope: !1836)
!1939 = !DILocation(line: 178, column: 41, scope: !1836)
!1940 = !DILocation(line: 179, column: 36, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1836, file: !582, line: 179, column: 23)
!1942 = !DILocation(line: 179, column: 23, scope: !1941)
!1943 = !DILocation(line: 181, column: 23, scope: !1941)
!1944 = !DILocation(line: 179, column: 23, scope: !1836)
!1945 = !DILocation(line: 184, column: 35, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1836, file: !582, line: 184, column: 23)
!1947 = !DILocation(line: 185, column: 23, scope: !1946)
!1948 = !DILocation(line: 188, column: 33, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !582, line: 187, column: 21)
!1950 = !DILocation(line: 185, column: 39, scope: !1946)
!1951 = !DILocation(line: 185, column: 49, scope: !1946)
!1952 = !DILocation(line: 186, column: 30, scope: !1946)
!1953 = !DILocation(line: 186, column: 36, scope: !1946)
!1954 = !DILocation(line: 184, column: 23, scope: !1836)
!1955 = !DILocation(line: 189, column: 30, scope: !1949)
!1956 = !DILocation(line: 192, column: 30, scope: !1949)
!1957 = !DILocation(line: 188, column: 23, scope: !1949)
!1958 = !DILocation(line: 193, column: 23, scope: !1949)
!1959 = !DILocation(line: 96, column: 7, scope: !1775)
!1960 = !DILocation(line: 200, column: 26, scope: !1775)
!1961 = !DILocation(line: 200, column: 59, scope: !1775)
!1962 = !DILocation(line: 200, column: 3, scope: !1775)
!1963 = !DILocation(line: 201, column: 3, scope: !1775)
!1964 = !DILocation(line: 202, column: 1, scope: !1775)
!1965 = distinct !DISubprogram(name: "mode_compile", scope: !612, file: !612, line: 134, type: !1966, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !1976)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1968, !50}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !612, line: 98, size: 128, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1969, file: !612, line: 100, baseType: !49, size: 8)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1969, file: !612, line: 101, baseType: !49, size: 8, offset: 8)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1969, file: !612, line: 102, baseType: !454, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1969, file: !612, line: 103, baseType: !454, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1969, file: !612, line: 104, baseType: !454, size: 32, offset: 96)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1984, !1985, !1986, !1988, !1992, !1994, !1995, !1996, !1997, !1998, !2001, !2002, !2003}
!1977 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1965, file: !612, line: 134, type: !50)
!1978 = !DILocalVariable(name: "mc", scope: !1965, file: !612, line: 137, type: !1968)
!1979 = !DILocalVariable(name: "used", scope: !1965, file: !612, line: 138, type: !105)
!1980 = !DILocalVariable(name: "p", scope: !1965, file: !612, line: 139, type: !50)
!1981 = !DILocalVariable(name: "octal_mode", scope: !1982, file: !612, line: 143, type: !21)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !612, line: 142, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1965, file: !612, line: 141, column: 7)
!1984 = !DILocalVariable(name: "mode", scope: !1982, file: !612, line: 144, type: !454)
!1985 = !DILocalVariable(name: "mentioned", scope: !1982, file: !612, line: 145, type: !454)
!1986 = !DILocalVariable(name: "needed", scope: !1987, file: !612, line: 168, type: !105)
!1987 = distinct !DILexicalBlock(scope: !1965, file: !612, line: 167, column: 3)
!1988 = !DILocalVariable(name: "affected", scope: !1989, file: !612, line: 179, type: !454)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !612, line: 177, column: 5)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !612, line: 176, column: 3)
!1991 = distinct !DILexicalBlock(scope: !1965, file: !612, line: 176, column: 3)
!1992 = !DILocalVariable(name: "op", scope: !1993, file: !612, line: 206, type: !49)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !612, line: 205, column: 9)
!1994 = !DILocalVariable(name: "value", scope: !1993, file: !612, line: 207, type: !454)
!1995 = !DILocalVariable(name: "mentioned", scope: !1993, file: !612, line: 208, type: !454)
!1996 = !DILocalVariable(name: "flag", scope: !1993, file: !612, line: 209, type: !49)
!1997 = !DILocalVariable(name: "change", scope: !1993, file: !612, line: 210, type: !1968)
!1998 = !DILocalVariable(name: "octal_mode", scope: !1999, file: !612, line: 217, type: !21)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !612, line: 216, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1993, file: !612, line: 213, column: 13)
!2001 = !DILabel(scope: !1989, name: "no_more_affected", file: !612, line: 202)
!2002 = !DILabel(scope: !2000, name: "no_more_values", file: !612, line: 284)
!2003 = !DILabel(scope: !1965, name: "invalid", file: !612, line: 307)
!2004 = !DILocation(line: 0, scope: !1965)
!2005 = !DILocation(line: 141, column: 14, scope: !1983)
!2006 = !DILocation(line: 141, column: 27, scope: !1983)
!2007 = !DILocation(line: 150, column: 41, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1982, file: !612, line: 149, column: 9)
!2009 = !DILocation(line: 0, scope: !1982)
!2010 = !DILocation(line: 150, column: 26, scope: !2008)
!2011 = !DILocation(line: 150, column: 43, scope: !2008)
!2012 = !DILocation(line: 150, column: 39, scope: !2008)
!2013 = !DILocation(line: 150, column: 46, scope: !2008)
!2014 = !DILocation(line: 151, column: 20, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2008, file: !612, line: 151, column: 15)
!2016 = !DILocation(line: 151, column: 15, scope: !2008)
!2017 = !DILocation(line: 154, column: 21, scope: !1982)
!2018 = !DILocation(line: 154, column: 24, scope: !1982)
!2019 = distinct !{!2019, !2020, !2021}
!2020 = !DILocation(line: 148, column: 7, scope: !1982)
!2021 = !DILocation(line: 154, column: 35, scope: !1982)
!2022 = !DILocation(line: 156, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1982, file: !612, line: 156, column: 11)
!2024 = !DILocation(line: 156, column: 11, scope: !1982)
!2025 = !DILocation(line: 160, column: 22, scope: !1982)
!2026 = !DILocation(line: 160, column: 36, scope: !1982)
!2027 = !DILocation(line: 160, column: 20, scope: !1982)
!2028 = !DILocalVariable(name: "new_mode", arg: 1, scope: !2029, file: !612, line: 112, type: !454)
!2029 = distinct !DISubprogram(name: "make_node_op_equals", scope: !612, file: !612, line: 112, type: !2030, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!1968, !454, !454}
!2032 = !{!2028, !2033, !2034}
!2033 = !DILocalVariable(name: "mentioned", arg: 2, scope: !2029, file: !612, line: 112, type: !454)
!2034 = !DILocalVariable(name: "p", scope: !2029, file: !612, line: 114, type: !1968)
!2035 = !DILocation(line: 0, scope: !2029, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 163, column: 14, scope: !1982)
!2037 = !DILocation(line: 114, column: 27, scope: !2029, inlinedAt: !2036)
!2038 = !DILocation(line: 115, column: 9, scope: !2029, inlinedAt: !2036)
!2039 = !{!2040, !1389, i64 0}
!2040 = !{!"mode_change", !1389, i64 0, !1389, i64 1, !1465, i64 4, !1465, i64 8, !1465, i64 12}
!2041 = !DILocation(line: 116, column: 6, scope: !2029, inlinedAt: !2036)
!2042 = !DILocation(line: 116, column: 11, scope: !2029, inlinedAt: !2036)
!2043 = !{!2040, !1389, i64 1}
!2044 = !DILocation(line: 117, column: 6, scope: !2029, inlinedAt: !2036)
!2045 = !DILocation(line: 117, column: 15, scope: !2029, inlinedAt: !2036)
!2046 = !{!2040, !1465, i64 4}
!2047 = !DILocation(line: 118, column: 6, scope: !2029, inlinedAt: !2036)
!2048 = !DILocation(line: 118, column: 12, scope: !2029, inlinedAt: !2036)
!2049 = !{!2040, !1465, i64 8}
!2050 = !DILocation(line: 119, column: 6, scope: !2029, inlinedAt: !2036)
!2051 = !DILocation(line: 119, column: 16, scope: !2029, inlinedAt: !2036)
!2052 = !{!2040, !1465, i64 12}
!2053 = !DILocation(line: 120, column: 8, scope: !2029, inlinedAt: !2036)
!2054 = !DILocation(line: 120, column: 13, scope: !2029, inlinedAt: !2036)
!2055 = !DILocation(line: 163, column: 7, scope: !1982)
!2056 = !DILocation(line: 169, column: 27, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !612, line: 169, column: 5)
!2058 = distinct !DILexicalBlock(scope: !1987, file: !612, line: 169, column: 5)
!2059 = !DILocation(line: 0, scope: !2058)
!2060 = !DILocation(line: 0, scope: !1987)
!2061 = !DILocation(line: 169, column: 5, scope: !2058)
!2062 = !DILocation(line: 170, column: 41, scope: !2057)
!2063 = !DILocation(line: 170, column: 14, scope: !2057)
!2064 = !DILocation(line: 169, column: 32, scope: !2057)
!2065 = !DILocation(line: 169, column: 5, scope: !2057)
!2066 = distinct !{!2066, !2061, !2067}
!2067 = !DILocation(line: 170, column: 53, scope: !2058)
!2068 = !DILocalVariable(name: "n", arg: 1, scope: !2069, file: !343, line: 99, type: !105)
!2069 = distinct !DISubprogram(name: "xnmalloc", scope: !343, file: !343, line: 99, type: !2070, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!103, !105, !105}
!2072 = !{!2068, !2073}
!2073 = !DILocalVariable(name: "s", arg: 2, scope: !2069, file: !343, line: 99, type: !105)
!2074 = !DILocation(line: 0, scope: !2069, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 171, column: 10, scope: !1987)
!2076 = !DILocation(line: 101, column: 7, scope: !2077, inlinedAt: !2075)
!2077 = distinct !DILexicalBlock(scope: !2069, file: !343, line: 101, column: 7)
!2078 = !DILocation(line: 101, column: 7, scope: !2069, inlinedAt: !2075)
!2079 = !DILocation(line: 102, column: 5, scope: !2077, inlinedAt: !2075)
!2080 = !DILocation(line: 103, column: 21, scope: !2069, inlinedAt: !2075)
!2081 = !DILocation(line: 103, column: 10, scope: !2069, inlinedAt: !2075)
!2082 = !DILocation(line: 171, column: 10, scope: !1987)
!2083 = !DILocation(line: 176, column: 8, scope: !1991)
!2084 = !DILocation(line: 0, scope: !1991)
!2085 = !DILocation(line: 138, column: 10, scope: !1965)
!2086 = !DILocation(line: 0, scope: !1989)
!2087 = !DILocation(line: 182, column: 7, scope: !1989)
!2088 = !DILocation(line: 183, column: 17, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !612, line: 182, column: 7)
!2090 = distinct !DILexicalBlock(scope: !1989, file: !612, line: 182, column: 7)
!2091 = !DILocation(line: 183, column: 9, scope: !2089)
!2092 = !DILocation(line: 212, column: 11, scope: !1993)
!2093 = !DILocation(line: 192, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !612, line: 184, column: 11)
!2095 = !DILocation(line: 195, column: 13, scope: !2094)
!2096 = !DILocation(line: 198, column: 13, scope: !2094)
!2097 = !DILocation(line: 0, scope: !2094)
!2098 = !DILocation(line: 182, column: 16, scope: !2089)
!2099 = !DILocation(line: 182, column: 7, scope: !2089)
!2100 = distinct !{!2100, !2101, !2102}
!2101 = !DILocation(line: 182, column: 7, scope: !2090)
!2102 = !DILocation(line: 201, column: 11, scope: !2090)
!2103 = !DILocation(line: 206, column: 21, scope: !1993)
!2104 = !DILocation(line: 179, column: 14, scope: !1989)
!2105 = !DILocation(line: 206, column: 23, scope: !1993)
!2106 = !DILocation(line: 0, scope: !1993)
!2107 = !DILocation(line: 212, column: 19, scope: !1993)
!2108 = !DILocation(line: 219, column: 17, scope: !1999)
!2109 = !DILocation(line: 221, column: 51, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1999, file: !612, line: 220, column: 19)
!2111 = !DILocation(line: 0, scope: !1999)
!2112 = !DILocation(line: 221, column: 36, scope: !2110)
!2113 = !DILocation(line: 221, column: 53, scope: !2110)
!2114 = !DILocation(line: 221, column: 49, scope: !2110)
!2115 = !DILocation(line: 221, column: 56, scope: !2110)
!2116 = !DILocation(line: 222, column: 30, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2110, file: !612, line: 222, column: 25)
!2118 = !DILocation(line: 222, column: 25, scope: !2110)
!2119 = !DILocation(line: 225, column: 31, scope: !1999)
!2120 = !DILocation(line: 225, column: 34, scope: !1999)
!2121 = distinct !{!2121, !2108, !2122}
!2122 = !DILocation(line: 225, column: 45, scope: !1999)
!2123 = !DILocation(line: 227, column: 21, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1999, file: !612, line: 227, column: 21)
!2125 = !DILocation(line: 227, column: 30, scope: !2124)
!2126 = !DILocation(line: 227, column: 37, scope: !2124)
!2127 = !DILocation(line: 239, column: 16, scope: !2000)
!2128 = !DILocation(line: 240, column: 15, scope: !2000)
!2129 = !DILocation(line: 245, column: 16, scope: !2000)
!2130 = !DILocation(line: 246, column: 15, scope: !2000)
!2131 = !DILocation(line: 251, column: 16, scope: !2000)
!2132 = !DILocation(line: 252, column: 15, scope: !2000)
!2133 = !DILocation(line: 259, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !612, line: 258, column: 15)
!2135 = distinct !DILexicalBlock(scope: !2000, file: !612, line: 258, column: 15)
!2136 = !DILocation(line: 0, scope: !2000)
!2137 = !DILocation(line: 256, column: 20, scope: !2000)
!2138 = !DILocation(line: 259, column: 17, scope: !2134)
!2139 = !DILocation(line: 262, column: 27, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2134, file: !612, line: 260, column: 19)
!2141 = !DILocation(line: 263, column: 21, scope: !2140)
!2142 = !DILocation(line: 265, column: 27, scope: !2140)
!2143 = !DILocation(line: 266, column: 21, scope: !2140)
!2144 = !DILocation(line: 268, column: 27, scope: !2140)
!2145 = !DILocation(line: 269, column: 21, scope: !2140)
!2146 = !DILocation(line: 275, column: 27, scope: !2140)
!2147 = !DILocation(line: 276, column: 21, scope: !2140)
!2148 = !DILocation(line: 279, column: 27, scope: !2140)
!2149 = !DILocation(line: 280, column: 21, scope: !2140)
!2150 = !DILocation(line: 258, column: 24, scope: !2134)
!2151 = !DILocation(line: 258, column: 15, scope: !2134)
!2152 = distinct !{!2152, !2153, !2154}
!2153 = !DILocation(line: 258, column: 15, scope: !2135)
!2154 = !DILocation(line: 283, column: 19, scope: !2135)
!2155 = !DILocation(line: 208, column: 18, scope: !1993)
!2156 = !DILocation(line: 287, column: 28, scope: !1993)
!2157 = !DILocation(line: 288, column: 19, scope: !1993)
!2158 = !DILocation(line: 288, column: 22, scope: !1993)
!2159 = !DILocation(line: 289, column: 19, scope: !1993)
!2160 = !DILocation(line: 289, column: 24, scope: !1993)
!2161 = !DILocation(line: 290, column: 19, scope: !1993)
!2162 = !DILocation(line: 290, column: 28, scope: !1993)
!2163 = !DILocation(line: 291, column: 19, scope: !1993)
!2164 = !DILocation(line: 291, column: 25, scope: !1993)
!2165 = !DILocation(line: 293, column: 14, scope: !1993)
!2166 = !DILocation(line: 292, column: 19, scope: !1993)
!2167 = !DILocation(line: 292, column: 29, scope: !1993)
!2168 = !DILocation(line: 295, column: 14, scope: !1989)
!2169 = !DILocation(line: 295, column: 24, scope: !1989)
!2170 = !DILocation(line: 176, column: 28, scope: !1990)
!2171 = !DILocation(line: 176, column: 3, scope: !1990)
!2172 = distinct !{!2172, !2173, !2174}
!2173 = !DILocation(line: 176, column: 3, scope: !1991)
!2174 = !DILocation(line: 299, column: 5, scope: !1991)
!2175 = !DILocation(line: 303, column: 16, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !612, line: 302, column: 5)
!2177 = distinct !DILexicalBlock(scope: !1965, file: !612, line: 301, column: 7)
!2178 = !DILocation(line: 303, column: 21, scope: !2176)
!2179 = !DILocation(line: 304, column: 7, scope: !2176)
!2180 = !DILocation(line: 307, column: 1, scope: !1965)
!2181 = !DILocation(line: 308, column: 3, scope: !1965)
!2182 = !DILocation(line: 309, column: 3, scope: !1965)
!2183 = !DILocation(line: 310, column: 1, scope: !1965)
!2184 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !612, file: !612, line: 316, type: !1966, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "ref_file", arg: 1, scope: !2184, file: !612, line: 316, type: !50)
!2187 = !DILocalVariable(name: "ref_stats", scope: !2184, file: !612, line: 318, type: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !474, line: 46, size: 1152, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2206, !2207, !2208}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2188, file: !474, line: 48, baseType: !477, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2188, file: !474, line: 53, baseType: !479, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2188, file: !474, line: 61, baseType: !481, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2188, file: !474, line: 62, baseType: !455, size: 32, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2188, file: !474, line: 64, baseType: !200, size: 32, offset: 224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2188, file: !474, line: 65, baseType: !202, size: 32, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2188, file: !474, line: 67, baseType: !14, size: 32, offset: 288)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2188, file: !474, line: 69, baseType: !477, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2188, file: !474, line: 74, baseType: !80, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2188, file: !474, line: 78, baseType: !489, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2188, file: !474, line: 80, baseType: !491, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2188, file: !474, line: 91, baseType: !2202, size: 128, offset: 576)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !494, line: 10, size: 128, elements: !2203)
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2202, file: !494, line: 12, baseType: !497, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2202, file: !494, line: 16, baseType: !499, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2188, file: !474, line: 92, baseType: !2202, size: 128, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2188, file: !474, line: 93, baseType: !2202, size: 128, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2188, file: !474, line: 106, baseType: !503, size: 192, offset: 960)
!2209 = !DILocation(line: 0, scope: !2184)
!2210 = !DILocation(line: 318, column: 3, scope: !2184)
!2211 = !DILocation(line: 318, column: 15, scope: !2184)
!2212 = !DILocalVariable(name: "__path", arg: 1, scope: !2213, file: !162, line: 453, type: !50)
!2213 = distinct !DISubprogram(name: "stat", scope: !162, file: !162, line: 453, type: !2214, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !2217)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!14, !50, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2217 = !{!2212, !2218}
!2218 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2213, file: !162, line: 453, type: !2216)
!2219 = !DILocation(line: 0, scope: !2213, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 320, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2184, file: !612, line: 320, column: 7)
!2222 = !DILocation(line: 455, column: 10, scope: !2213, inlinedAt: !2220)
!2223 = !DILocation(line: 320, column: 35, scope: !2221)
!2224 = !DILocation(line: 320, column: 7, scope: !2184)
!2225 = !DILocation(line: 322, column: 41, scope: !2184)
!2226 = !DILocation(line: 0, scope: !2029, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 322, column: 10, scope: !2184)
!2228 = !DILocation(line: 114, column: 27, scope: !2029, inlinedAt: !2227)
!2229 = !DILocation(line: 115, column: 9, scope: !2029, inlinedAt: !2227)
!2230 = !DILocation(line: 116, column: 6, scope: !2029, inlinedAt: !2227)
!2231 = !DILocation(line: 116, column: 11, scope: !2029, inlinedAt: !2227)
!2232 = !DILocation(line: 117, column: 6, scope: !2029, inlinedAt: !2227)
!2233 = !DILocation(line: 117, column: 15, scope: !2029, inlinedAt: !2227)
!2234 = !DILocation(line: 118, column: 6, scope: !2029, inlinedAt: !2227)
!2235 = !DILocation(line: 118, column: 12, scope: !2029, inlinedAt: !2227)
!2236 = !DILocation(line: 119, column: 6, scope: !2029, inlinedAt: !2227)
!2237 = !DILocation(line: 119, column: 16, scope: !2029, inlinedAt: !2227)
!2238 = !DILocation(line: 120, column: 8, scope: !2029, inlinedAt: !2227)
!2239 = !DILocation(line: 120, column: 13, scope: !2029, inlinedAt: !2227)
!2240 = !DILocation(line: 322, column: 3, scope: !2184)
!2241 = !DILocation(line: 323, column: 1, scope: !2184)
!2242 = distinct !DISubprogram(name: "mode_adjust", scope: !612, file: !612, line: 339, type: !2243, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !2248)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!454, !454, !174, !454, !2245, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2260, !2261, !2262}
!2249 = !DILocalVariable(name: "oldmode", arg: 1, scope: !2242, file: !612, line: 339, type: !454)
!2250 = !DILocalVariable(name: "dir", arg: 2, scope: !2242, file: !612, line: 339, type: !174)
!2251 = !DILocalVariable(name: "umask_value", arg: 3, scope: !2242, file: !612, line: 339, type: !454)
!2252 = !DILocalVariable(name: "changes", arg: 4, scope: !2242, file: !612, line: 340, type: !2245)
!2253 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !2242, file: !612, line: 340, type: !2247)
!2254 = !DILocalVariable(name: "newmode", scope: !2242, file: !612, line: 343, type: !454)
!2255 = !DILocalVariable(name: "mode_bits", scope: !2242, file: !612, line: 346, type: !454)
!2256 = !DILocalVariable(name: "affected", scope: !2257, file: !612, line: 350, type: !454)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !612, line: 349, column: 5)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !612, line: 348, column: 3)
!2259 = distinct !DILexicalBlock(scope: !2242, file: !612, line: 348, column: 3)
!2260 = !DILocalVariable(name: "omit_change", scope: !2257, file: !612, line: 351, type: !454)
!2261 = !DILocalVariable(name: "value", scope: !2257, file: !612, line: 353, type: !454)
!2262 = !DILocalVariable(name: "preserved", scope: !2263, file: !612, line: 393, type: !454)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !612, line: 392, column: 11)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !612, line: 387, column: 9)
!2265 = !DILocation(line: 0, scope: !2242)
!2266 = !DILocation(line: 343, column: 28, scope: !2242)
!2267 = !DILocation(line: 348, column: 19, scope: !2258)
!2268 = !DILocation(line: 348, column: 24, scope: !2258)
!2269 = !DILocation(line: 348, column: 3, scope: !2259)
!2270 = !DILocation(line: 0, scope: !2257)
!2271 = !DILocation(line: 0, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !612, line: 376, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2257, file: !612, line: 356, column: 9)
!2274 = !DILocation(line: 348, column: 10, scope: !2258)
!2275 = !DILocation(line: 350, column: 34, scope: !2257)
!2276 = !DILocation(line: 352, column: 52, scope: !2257)
!2277 = !DILocation(line: 352, column: 41, scope: !2257)
!2278 = !DILocation(line: 352, column: 39, scope: !2257)
!2279 = !DILocation(line: 353, column: 31, scope: !2257)
!2280 = !DILocation(line: 355, column: 7, scope: !2257)
!2281 = !DILocation(line: 362, column: 17, scope: !2273)
!2282 = !DILocation(line: 365, column: 28, scope: !2273)
!2283 = !DILocation(line: 365, column: 22, scope: !2273)
!2284 = !DILocation(line: 367, column: 30, scope: !2273)
!2285 = !DILocation(line: 367, column: 24, scope: !2273)
!2286 = !DILocation(line: 369, column: 30, scope: !2273)
!2287 = !DILocation(line: 369, column: 24, scope: !2273)
!2288 = !DILocation(line: 367, column: 21, scope: !2273)
!2289 = !DILocation(line: 369, column: 21, scope: !2273)
!2290 = !DILocation(line: 365, column: 17, scope: !2273)
!2291 = !DILocation(line: 371, column: 11, scope: !2273)
!2292 = !DILocation(line: 376, column: 24, scope: !2272)
!2293 = !DILocation(line: 376, column: 57, scope: !2272)
!2294 = !DILocation(line: 377, column: 19, scope: !2272)
!2295 = !DILocation(line: 376, column: 15, scope: !2273)
!2296 = !DILocation(line: 384, column: 17, scope: !2257)
!2297 = !DILocation(line: 384, column: 55, scope: !2257)
!2298 = !DILocation(line: 384, column: 53, scope: !2257)
!2299 = !DILocation(line: 384, column: 13, scope: !2257)
!2300 = !DILocation(line: 386, column: 24, scope: !2257)
!2301 = !DILocation(line: 386, column: 15, scope: !2257)
!2302 = !DILocation(line: 386, column: 7, scope: !2257)
!2303 = !DILocation(line: 393, column: 33, scope: !2263)
!2304 = !DILocation(line: 393, column: 59, scope: !2263)
!2305 = !DILocation(line: 0, scope: !2263)
!2306 = !DILocation(line: 394, column: 42, scope: !2263)
!2307 = !DILocation(line: 394, column: 23, scope: !2263)
!2308 = !DILocation(line: 395, column: 32, scope: !2263)
!2309 = !DILocation(line: 395, column: 45, scope: !2263)
!2310 = !DILocation(line: 400, column: 21, scope: !2264)
!2311 = !DILocation(line: 401, column: 19, scope: !2264)
!2312 = !DILocation(line: 402, column: 11, scope: !2264)
!2313 = !DILocation(line: 405, column: 21, scope: !2264)
!2314 = !DILocation(line: 406, column: 22, scope: !2264)
!2315 = !DILocation(line: 406, column: 19, scope: !2264)
!2316 = !DILocation(line: 407, column: 11, scope: !2264)
!2317 = !DILocation(line: 348, column: 45, scope: !2258)
!2318 = distinct !{!2318, !2269, !2319}
!2319 = !DILocation(line: 409, column: 5, scope: !2259)
!2320 = !DILocation(line: 346, column: 10, scope: !2242)
!2321 = !DILocation(line: 343, column: 10, scope: !2242)
!2322 = !DILocation(line: 411, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2242, file: !612, line: 411, column: 7)
!2324 = !DILocation(line: 411, column: 7, scope: !2242)
!2325 = !DILocation(line: 412, column: 17, scope: !2323)
!2326 = !DILocation(line: 412, column: 5, scope: !2323)
!2327 = !DILocation(line: 413, column: 3, scope: !2242)
!2328 = distinct !DISubprogram(name: "set_program_name", scope: !278, file: !278, line: 39, type: !115, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, retainedNodes: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "argv0", arg: 1, scope: !2328, file: !278, line: 39, type: !50)
!2331 = !DILocalVariable(name: "slash", scope: !2328, file: !278, line: 46, type: !50)
!2332 = !DILocalVariable(name: "base", scope: !2328, file: !278, line: 47, type: !50)
!2333 = !DILocation(line: 0, scope: !2328)
!2334 = !DILocation(line: 51, column: 13, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2328, file: !278, line: 51, column: 7)
!2336 = !DILocation(line: 51, column: 7, scope: !2328)
!2337 = !DILocation(line: 55, column: 14, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !278, line: 52, column: 5)
!2339 = !DILocation(line: 54, column: 7, scope: !2338)
!2340 = !DILocation(line: 56, column: 7, scope: !2338)
!2341 = !DILocation(line: 59, column: 11, scope: !2328)
!2342 = !DILocation(line: 60, column: 17, scope: !2328)
!2343 = !DILocation(line: 60, column: 11, scope: !2328)
!2344 = !DILocation(line: 61, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2328, file: !278, line: 61, column: 7)
!2346 = !DILocation(line: 61, column: 20, scope: !2345)
!2347 = !DILocation(line: 61, column: 25, scope: !2345)
!2348 = !DILocation(line: 61, column: 42, scope: !2345)
!2349 = !DILocation(line: 61, column: 28, scope: !2345)
!2350 = !DILocation(line: 61, column: 61, scope: !2345)
!2351 = !DILocation(line: 61, column: 7, scope: !2328)
!2352 = !DILocation(line: 64, column: 11, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !278, line: 64, column: 11)
!2354 = distinct !DILexicalBlock(scope: !2345, file: !278, line: 62, column: 5)
!2355 = !DILocation(line: 64, column: 36, scope: !2353)
!2356 = !DILocation(line: 64, column: 11, scope: !2354)
!2357 = !DILocation(line: 66, column: 24, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !278, line: 65, column: 9)
!2359 = !DILocation(line: 70, column: 41, scope: !2358)
!2360 = !DILocation(line: 72, column: 9, scope: !2358)
!2361 = !DILocation(line: 84, column: 16, scope: !2328)
!2362 = !DILocation(line: 90, column: 27, scope: !2328)
!2363 = !DILocation(line: 92, column: 1, scope: !2328)
!2364 = distinct !DISubprogram(name: "clone_quoting_options", scope: !319, file: !319, line: 122, type: !2365, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2368)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2367, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!2368 = !{!2369, !2370, !2371}
!2369 = !DILocalVariable(name: "o", arg: 1, scope: !2364, file: !319, line: 122, type: !2367)
!2370 = !DILocalVariable(name: "e", scope: !2364, file: !319, line: 124, type: !14)
!2371 = !DILocalVariable(name: "p", scope: !2364, file: !319, line: 125, type: !2367)
!2372 = !DILocation(line: 0, scope: !2364)
!2373 = !DILocation(line: 124, column: 11, scope: !2364)
!2374 = !DILocation(line: 125, column: 40, scope: !2364)
!2375 = !DILocation(line: 125, column: 31, scope: !2364)
!2376 = !DILocation(line: 127, column: 9, scope: !2364)
!2377 = !DILocation(line: 128, column: 3, scope: !2364)
!2378 = distinct !DISubprogram(name: "get_quoting_style", scope: !319, file: !319, line: 133, type: !2379, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!29, !352}
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "o", arg: 1, scope: !2378, file: !319, line: 133, type: !352)
!2383 = !DILocation(line: 0, scope: !2378)
!2384 = !DILocation(line: 135, column: 11, scope: !2378)
!2385 = !DILocation(line: 135, column: 46, scope: !2378)
!2386 = !{!2387, !1389, i64 0}
!2387 = !{!"quoting_options", !1389, i64 0, !1465, i64 4, !1389, i64 8, !1388, i64 40, !1388, i64 48}
!2388 = !DILocation(line: 135, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "set_quoting_style", scope: !319, file: !319, line: 141, type: !2390, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2367, !29}
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "o", arg: 1, scope: !2389, file: !319, line: 141, type: !2367)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2389, file: !319, line: 141, type: !29)
!2395 = !DILocation(line: 0, scope: !2389)
!2396 = !DILocation(line: 143, column: 4, scope: !2389)
!2397 = !DILocation(line: 143, column: 39, scope: !2389)
!2398 = !DILocation(line: 143, column: 45, scope: !2389)
!2399 = !DILocation(line: 144, column: 1, scope: !2389)
!2400 = distinct !DISubprogram(name: "set_char_quoting", scope: !319, file: !319, line: 152, type: !2401, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!14, !2367, !49, !14}
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2404 = !DILocalVariable(name: "o", arg: 1, scope: !2400, file: !319, line: 152, type: !2367)
!2405 = !DILocalVariable(name: "c", arg: 2, scope: !2400, file: !319, line: 152, type: !49)
!2406 = !DILocalVariable(name: "i", arg: 3, scope: !2400, file: !319, line: 152, type: !14)
!2407 = !DILocalVariable(name: "uc", scope: !2400, file: !319, line: 154, type: !578)
!2408 = !DILocalVariable(name: "p", scope: !2400, file: !319, line: 155, type: !177)
!2409 = !DILocalVariable(name: "shift", scope: !2400, file: !319, line: 157, type: !14)
!2410 = !DILocalVariable(name: "r", scope: !2400, file: !319, line: 158, type: !14)
!2411 = !DILocation(line: 0, scope: !2400)
!2412 = !DILocation(line: 156, column: 6, scope: !2400)
!2413 = !DILocation(line: 156, column: 62, scope: !2400)
!2414 = !DILocation(line: 156, column: 57, scope: !2400)
!2415 = !DILocation(line: 157, column: 15, scope: !2400)
!2416 = !DILocation(line: 158, column: 12, scope: !2400)
!2417 = !DILocation(line: 158, column: 15, scope: !2400)
!2418 = !DILocation(line: 158, column: 25, scope: !2400)
!2419 = !DILocation(line: 159, column: 13, scope: !2400)
!2420 = !DILocation(line: 159, column: 18, scope: !2400)
!2421 = !DILocation(line: 159, column: 23, scope: !2400)
!2422 = !DILocation(line: 159, column: 6, scope: !2400)
!2423 = !DILocation(line: 160, column: 3, scope: !2400)
!2424 = distinct !DISubprogram(name: "set_quoting_flags", scope: !319, file: !319, line: 168, type: !2425, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!14, !2367, !14}
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "o", arg: 1, scope: !2424, file: !319, line: 168, type: !2367)
!2429 = !DILocalVariable(name: "i", arg: 2, scope: !2424, file: !319, line: 168, type: !14)
!2430 = !DILocalVariable(name: "r", scope: !2424, file: !319, line: 170, type: !14)
!2431 = !DILocation(line: 0, scope: !2424)
!2432 = !DILocation(line: 171, column: 8, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2424, file: !319, line: 171, column: 7)
!2434 = !DILocation(line: 171, column: 7, scope: !2424)
!2435 = !DILocation(line: 173, column: 10, scope: !2424)
!2436 = !{!2387, !1465, i64 4}
!2437 = !DILocation(line: 174, column: 12, scope: !2424)
!2438 = !DILocation(line: 175, column: 3, scope: !2424)
!2439 = distinct !DISubprogram(name: "set_custom_quoting", scope: !319, file: !319, line: 179, type: !2440, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2367, !50, !50}
!2442 = !{!2443, !2444, !2445}
!2443 = !DILocalVariable(name: "o", arg: 1, scope: !2439, file: !319, line: 179, type: !2367)
!2444 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2439, file: !319, line: 180, type: !50)
!2445 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2439, file: !319, line: 180, type: !50)
!2446 = !DILocation(line: 0, scope: !2439)
!2447 = !DILocation(line: 182, column: 8, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2439, file: !319, line: 182, column: 7)
!2449 = !DILocation(line: 182, column: 7, scope: !2439)
!2450 = !DILocation(line: 184, column: 6, scope: !2439)
!2451 = !DILocation(line: 184, column: 12, scope: !2439)
!2452 = !DILocation(line: 185, column: 8, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2439, file: !319, line: 185, column: 7)
!2454 = !DILocation(line: 185, column: 23, scope: !2453)
!2455 = !DILocation(line: 185, column: 19, scope: !2453)
!2456 = !DILocation(line: 186, column: 5, scope: !2453)
!2457 = !DILocation(line: 187, column: 6, scope: !2439)
!2458 = !DILocation(line: 187, column: 17, scope: !2439)
!2459 = !{!2387, !1388, i64 40}
!2460 = !DILocation(line: 188, column: 6, scope: !2439)
!2461 = !DILocation(line: 188, column: 18, scope: !2439)
!2462 = !{!2387, !1388, i64 48}
!2463 = !DILocation(line: 189, column: 1, scope: !2439)
!2464 = distinct !DISubprogram(name: "quotearg_buffer", scope: !319, file: !319, line: 784, type: !2465, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!105, !48, !105, !50, !105, !352}
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2468 = !DILocalVariable(name: "buffer", arg: 1, scope: !2464, file: !319, line: 784, type: !48)
!2469 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2464, file: !319, line: 784, type: !105)
!2470 = !DILocalVariable(name: "arg", arg: 3, scope: !2464, file: !319, line: 785, type: !50)
!2471 = !DILocalVariable(name: "argsize", arg: 4, scope: !2464, file: !319, line: 785, type: !105)
!2472 = !DILocalVariable(name: "o", arg: 5, scope: !2464, file: !319, line: 786, type: !352)
!2473 = !DILocalVariable(name: "p", scope: !2464, file: !319, line: 788, type: !352)
!2474 = !DILocalVariable(name: "e", scope: !2464, file: !319, line: 789, type: !14)
!2475 = !DILocalVariable(name: "r", scope: !2464, file: !319, line: 790, type: !105)
!2476 = !DILocation(line: 0, scope: !2464)
!2477 = !DILocation(line: 788, column: 37, scope: !2464)
!2478 = !DILocation(line: 789, column: 11, scope: !2464)
!2479 = !DILocation(line: 791, column: 43, scope: !2464)
!2480 = !DILocation(line: 791, column: 53, scope: !2464)
!2481 = !DILocation(line: 791, column: 60, scope: !2464)
!2482 = !DILocation(line: 792, column: 43, scope: !2464)
!2483 = !DILocation(line: 792, column: 58, scope: !2464)
!2484 = !DILocation(line: 790, column: 14, scope: !2464)
!2485 = !DILocation(line: 793, column: 9, scope: !2464)
!2486 = !DILocation(line: 794, column: 3, scope: !2464)
!2487 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !319, file: !319, line: 256, type: !2488, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2492)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!105, !48, !105, !50, !105, !29, !14, !2490, !50, !50}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2517, !2518, !2519, !2520, !2521, !2524, !2525, !2531, !2534, !2535, !2542, !2545, !2546, !2547, !2548, !2549, !2550}
!2493 = !DILocalVariable(name: "buffer", arg: 1, scope: !2487, file: !319, line: 256, type: !48)
!2494 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2487, file: !319, line: 256, type: !105)
!2495 = !DILocalVariable(name: "arg", arg: 3, scope: !2487, file: !319, line: 257, type: !50)
!2496 = !DILocalVariable(name: "argsize", arg: 4, scope: !2487, file: !319, line: 257, type: !105)
!2497 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2487, file: !319, line: 258, type: !29)
!2498 = !DILocalVariable(name: "flags", arg: 6, scope: !2487, file: !319, line: 258, type: !14)
!2499 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2487, file: !319, line: 259, type: !2490)
!2500 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2487, file: !319, line: 260, type: !50)
!2501 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2487, file: !319, line: 261, type: !50)
!2502 = !DILocalVariable(name: "i", scope: !2487, file: !319, line: 263, type: !105)
!2503 = !DILocalVariable(name: "len", scope: !2487, file: !319, line: 264, type: !105)
!2504 = !DILocalVariable(name: "orig_buffersize", scope: !2487, file: !319, line: 265, type: !105)
!2505 = !DILocalVariable(name: "quote_string", scope: !2487, file: !319, line: 266, type: !50)
!2506 = !DILocalVariable(name: "quote_string_len", scope: !2487, file: !319, line: 267, type: !105)
!2507 = !DILocalVariable(name: "backslash_escapes", scope: !2487, file: !319, line: 268, type: !174)
!2508 = !DILocalVariable(name: "unibyte_locale", scope: !2487, file: !319, line: 269, type: !174)
!2509 = !DILocalVariable(name: "elide_outer_quotes", scope: !2487, file: !319, line: 270, type: !174)
!2510 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2487, file: !319, line: 271, type: !174)
!2511 = !DILocalVariable(name: "encountered_single_quote", scope: !2487, file: !319, line: 272, type: !174)
!2512 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2487, file: !319, line: 273, type: !174)
!2513 = !DILocalVariable(name: "c", scope: !2514, file: !319, line: 402, type: !578)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !319, line: 401, column: 5)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !319, line: 400, column: 3)
!2516 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 400, column: 3)
!2517 = !DILocalVariable(name: "esc", scope: !2514, file: !319, line: 403, type: !578)
!2518 = !DILocalVariable(name: "is_right_quote", scope: !2514, file: !319, line: 404, type: !174)
!2519 = !DILocalVariable(name: "escaping", scope: !2514, file: !319, line: 405, type: !174)
!2520 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2514, file: !319, line: 406, type: !174)
!2521 = !DILocalVariable(name: "m", scope: !2522, file: !319, line: 610, type: !105)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 608, column: 11)
!2523 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 426, column: 9)
!2524 = !DILocalVariable(name: "printable", scope: !2522, file: !319, line: 612, type: !174)
!2525 = !DILocalVariable(name: "mbstate", scope: !2526, file: !319, line: 621, type: !2528)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !319, line: 620, column: 15)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !319, line: 614, column: 17)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2529, line: 6, baseType: !2530)
!2529 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !373, line: 21, baseType: !372)
!2531 = !DILocalVariable(name: "w", scope: !2532, file: !319, line: 631, type: !2533)
!2532 = distinct !DILexicalBlock(scope: !2526, file: !319, line: 630, column: 19)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !106, line: 74, baseType: !14)
!2534 = !DILocalVariable(name: "bytes", scope: !2532, file: !319, line: 632, type: !105)
!2535 = !DILocalVariable(name: "j", scope: !2536, file: !319, line: 657, type: !105)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !319, line: 656, column: 27)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !319, line: 654, column: 29)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !319, line: 649, column: 23)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !319, line: 641, column: 30)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !319, line: 636, column: 30)
!2541 = distinct !DILexicalBlock(scope: !2532, file: !319, line: 634, column: 25)
!2542 = !DILocalVariable(name: "ilim", scope: !2543, file: !319, line: 684, type: !105)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !319, line: 681, column: 15)
!2544 = distinct !DILexicalBlock(scope: !2522, file: !319, line: 680, column: 17)
!2545 = !DILabel(scope: !2487, name: "process_input", file: !319, line: 314)
!2546 = !DILabel(scope: !2523, name: "c_and_shell_escape", file: !319, line: 512)
!2547 = !DILabel(scope: !2523, name: "c_escape", file: !319, line: 517)
!2548 = !DILabel(scope: !2514, name: "store_escape", file: !319, line: 719)
!2549 = !DILabel(scope: !2514, name: "store_c", file: !319, line: 722)
!2550 = !DILabel(scope: !2487, name: "force_outer_quoting_style", file: !319, line: 763)
!2551 = !DILocation(line: 0, scope: !2487)
!2552 = !DILocation(line: 269, column: 25, scope: !2487)
!2553 = !DILocation(line: 269, column: 36, scope: !2487)
!2554 = !DILocation(line: 270, column: 8, scope: !2487)
!2555 = !DILocation(line: 0, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 526, column: 15)
!2557 = !DILocation(line: 0, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !319, line: 462, column: 19)
!2559 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 455, column: 13)
!2560 = !DILocation(line: 0, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !319, line: 449, column: 20)
!2562 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 428, column: 15)
!2563 = !DILocation(line: 0, scope: !2526)
!2564 = !DILocation(line: 0, scope: !2532)
!2565 = !DILocation(line: 0, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 712, column: 11)
!2567 = !DILocation(line: 273, column: 3, scope: !2487)
!2568 = !DILocation(line: 265, column: 10, scope: !2487)
!2569 = !DILocation(line: 266, column: 15, scope: !2487)
!2570 = !DILocation(line: 267, column: 10, scope: !2487)
!2571 = !DILocation(line: 268, column: 8, scope: !2487)
!2572 = !DILocation(line: 271, column: 8, scope: !2487)
!2573 = !DILocation(line: 272, column: 8, scope: !2487)
!2574 = !DILocation(line: 273, column: 8, scope: !2487)
!2575 = !DILocation(line: 314, column: 2, scope: !2487)
!2576 = !DILocation(line: 316, column: 3, scope: !2487)
!2577 = !DILocation(line: 323, column: 11, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 317, column: 5)
!2579 = !DILocation(line: 323, column: 12, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !319, line: 323, column: 11)
!2581 = !DILocation(line: 324, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !319, line: 324, column: 9)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !319, line: 324, column: 9)
!2584 = !DILocation(line: 324, column: 9, scope: !2583)
!2585 = !DILocation(line: 362, column: 26, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !319, line: 340, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !319, line: 339, column: 13)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !319, line: 338, column: 7)
!2589 = !DILocation(line: 363, column: 27, scope: !2586)
!2590 = !DILocation(line: 364, column: 11, scope: !2586)
!2591 = !DILocation(line: 365, column: 14, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !319, line: 365, column: 13)
!2593 = !DILocation(line: 365, column: 13, scope: !2588)
!2594 = !DILocation(line: 366, column: 43, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !319, line: 366, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !319, line: 366, column: 11)
!2597 = !DILocation(line: 366, column: 11, scope: !2596)
!2598 = !DILocation(line: 367, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !319, line: 367, column: 13)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !319, line: 367, column: 13)
!2601 = !DILocation(line: 367, column: 13, scope: !2600)
!2602 = !DILocation(line: 366, column: 70, scope: !2595)
!2603 = distinct !{!2603, !2597, !2604}
!2604 = !DILocation(line: 367, column: 13, scope: !2596)
!2605 = !DILocation(line: 264, column: 10, scope: !2487)
!2606 = !DILocation(line: 370, column: 28, scope: !2588)
!2607 = !DILocation(line: 372, column: 7, scope: !2578)
!2608 = !DILocation(line: 376, column: 7, scope: !2578)
!2609 = !DILocation(line: 379, column: 7, scope: !2578)
!2610 = !DILocation(line: 381, column: 12, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2578, file: !319, line: 381, column: 11)
!2612 = !DILocation(line: 381, column: 11, scope: !2578)
!2613 = !DILocation(line: 386, column: 12, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2578, file: !319, line: 386, column: 11)
!2615 = !DILocation(line: 386, column: 11, scope: !2578)
!2616 = !DILocation(line: 387, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !319, line: 387, column: 9)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !319, line: 387, column: 9)
!2619 = !DILocation(line: 387, column: 9, scope: !2618)
!2620 = !DILocation(line: 394, column: 7, scope: !2578)
!2621 = !DILocation(line: 397, column: 7, scope: !2578)
!2622 = !DILocation(line: 0, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 408, column: 11)
!2624 = !DILocation(line: 0, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !319, line: 419, column: 15)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !319, line: 418, column: 9)
!2627 = !DILocation(line: 0, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 556, column: 15)
!2629 = !DILocation(line: 0, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 548, column: 15)
!2631 = !DILocation(line: 0, scope: !2537)
!2632 = !DILocation(line: 0, scope: !2544)
!2633 = !DILocation(line: 0, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 509, column: 15)
!2635 = !DILocation(line: 400, column: 8, scope: !2516)
!2636 = !DILocation(line: 0, scope: !2516)
!2637 = !DILocation(line: 400, column: 27, scope: !2515)
!2638 = !DILocation(line: 400, column: 19, scope: !2515)
!2639 = !DILocation(line: 400, column: 41, scope: !2515)
!2640 = !DILocation(line: 400, column: 48, scope: !2515)
!2641 = !DILocation(line: 400, column: 3, scope: !2516)
!2642 = !DILocation(line: 400, column: 60, scope: !2515)
!2643 = !DILocation(line: 0, scope: !2514)
!2644 = !DILocation(line: 409, column: 11, scope: !2623)
!2645 = !DILocation(line: 411, column: 17, scope: !2623)
!2646 = !DILocation(line: 412, column: 39, scope: !2623)
!2647 = !DILocation(line: 416, column: 32, scope: !2623)
!2648 = !DILocation(line: 412, column: 19, scope: !2623)
!2649 = !DILocation(line: 412, column: 15, scope: !2623)
!2650 = !DILocation(line: 417, column: 11, scope: !2623)
!2651 = !DILocation(line: 417, column: 26, scope: !2623)
!2652 = !DILocation(line: 417, column: 14, scope: !2623)
!2653 = !DILocation(line: 417, column: 63, scope: !2623)
!2654 = !DILocation(line: 408, column: 11, scope: !2514)
!2655 = !DILocation(line: 424, column: 11, scope: !2514)
!2656 = !DILocation(line: 425, column: 7, scope: !2514)
!2657 = !DILocation(line: 428, column: 15, scope: !2523)
!2658 = !DILocation(line: 430, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !319, line: 430, column: 15)
!2660 = distinct !DILexicalBlock(scope: !2562, file: !319, line: 429, column: 13)
!2661 = !DILocation(line: 430, column: 15, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !319, line: 430, column: 15)
!2663 = !DILocation(line: 430, column: 15, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !319, line: 430, column: 15)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !319, line: 430, column: 15)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !319, line: 430, column: 15)
!2667 = !DILocation(line: 430, column: 15, scope: !2665)
!2668 = !DILocation(line: 430, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !319, line: 430, column: 15)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !319, line: 430, column: 15)
!2671 = !DILocation(line: 430, column: 15, scope: !2670)
!2672 = !DILocation(line: 430, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !319, line: 430, column: 15)
!2674 = distinct !DILexicalBlock(scope: !2666, file: !319, line: 430, column: 15)
!2675 = !DILocation(line: 430, column: 15, scope: !2674)
!2676 = !DILocation(line: 430, column: 15, scope: !2666)
!2677 = !DILocation(line: 430, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !319, line: 430, column: 15)
!2679 = distinct !DILexicalBlock(scope: !2659, file: !319, line: 430, column: 15)
!2680 = !DILocation(line: 430, column: 15, scope: !2679)
!2681 = !DILocation(line: 438, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2660, file: !319, line: 437, column: 19)
!2683 = !DILocation(line: 438, column: 24, scope: !2682)
!2684 = !DILocation(line: 438, column: 28, scope: !2682)
!2685 = !DILocation(line: 438, column: 38, scope: !2682)
!2686 = !DILocation(line: 438, column: 48, scope: !2682)
!2687 = !DILocation(line: 438, column: 59, scope: !2682)
!2688 = !DILocation(line: 440, column: 19, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !319, line: 440, column: 19)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !319, line: 440, column: 19)
!2691 = distinct !DILexicalBlock(scope: !2682, file: !319, line: 439, column: 17)
!2692 = !DILocation(line: 440, column: 19, scope: !2690)
!2693 = !DILocation(line: 441, column: 19, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !319, line: 441, column: 19)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !319, line: 441, column: 19)
!2696 = !DILocation(line: 441, column: 19, scope: !2695)
!2697 = !DILocation(line: 442, column: 17, scope: !2691)
!2698 = !DILocation(line: 449, column: 20, scope: !2562)
!2699 = !DILocation(line: 454, column: 11, scope: !2523)
!2700 = !DILocation(line: 457, column: 19, scope: !2559)
!2701 = !DILocation(line: 463, column: 19, scope: !2558)
!2702 = !DILocation(line: 463, column: 24, scope: !2558)
!2703 = !DILocation(line: 463, column: 28, scope: !2558)
!2704 = !DILocation(line: 463, column: 38, scope: !2558)
!2705 = !DILocation(line: 463, column: 47, scope: !2558)
!2706 = !DILocation(line: 463, column: 41, scope: !2558)
!2707 = !DILocation(line: 463, column: 52, scope: !2558)
!2708 = !DILocation(line: 462, column: 19, scope: !2559)
!2709 = !DILocation(line: 464, column: 25, scope: !2558)
!2710 = !DILocation(line: 464, column: 17, scope: !2558)
!2711 = !DILocation(line: 471, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2558, file: !319, line: 465, column: 19)
!2713 = !DILocation(line: 475, column: 21, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !319, line: 475, column: 21)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !319, line: 475, column: 21)
!2716 = !DILocation(line: 475, column: 21, scope: !2715)
!2717 = !DILocation(line: 476, column: 21, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !319, line: 476, column: 21)
!2719 = distinct !DILexicalBlock(scope: !2712, file: !319, line: 476, column: 21)
!2720 = !DILocation(line: 476, column: 21, scope: !2719)
!2721 = !DILocation(line: 477, column: 21, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !319, line: 477, column: 21)
!2723 = distinct !DILexicalBlock(scope: !2712, file: !319, line: 477, column: 21)
!2724 = !DILocation(line: 477, column: 21, scope: !2723)
!2725 = !DILocation(line: 478, column: 21, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !319, line: 478, column: 21)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !319, line: 478, column: 21)
!2728 = !DILocation(line: 478, column: 21, scope: !2727)
!2729 = !DILocation(line: 479, column: 21, scope: !2712)
!2730 = !DILocation(line: 492, column: 31, scope: !2523)
!2731 = !DILocation(line: 493, column: 31, scope: !2523)
!2732 = !DILocation(line: 495, column: 31, scope: !2523)
!2733 = !DILocation(line: 496, column: 31, scope: !2523)
!2734 = !DILocation(line: 497, column: 31, scope: !2523)
!2735 = !DILocation(line: 500, column: 15, scope: !2523)
!2736 = !DILocation(line: 502, column: 19, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !319, line: 501, column: 13)
!2738 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 500, column: 15)
!2739 = !DILocation(line: 509, column: 33, scope: !2634)
!2740 = !DILocation(line: 0, scope: !2523)
!2741 = !DILocation(line: 512, column: 9, scope: !2523)
!2742 = !DILocation(line: 514, column: 15, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 513, column: 15)
!2744 = !DILocation(line: 517, column: 9, scope: !2523)
!2745 = !DILocation(line: 518, column: 15, scope: !2523)
!2746 = !DILocation(line: 526, column: 15, scope: !2523)
!2747 = !DILocation(line: 526, column: 40, scope: !2556)
!2748 = !DILocation(line: 526, column: 47, scope: !2556)
!2749 = !DILocation(line: 526, column: 18, scope: !2556)
!2750 = !DILocation(line: 530, column: 17, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2523, file: !319, line: 530, column: 15)
!2752 = !DILocation(line: 530, column: 15, scope: !2523)
!2753 = !DILocation(line: 535, column: 11, scope: !2523)
!2754 = !DILocation(line: 549, column: 15, scope: !2630)
!2755 = !DILocation(line: 556, column: 15, scope: !2523)
!2756 = !DILocation(line: 558, column: 19, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2628, file: !319, line: 557, column: 13)
!2758 = !DILocation(line: 561, column: 19, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2757, file: !319, line: 561, column: 19)
!2760 = !DILocation(line: 561, column: 35, scope: !2759)
!2761 = !DILocation(line: 561, column: 30, scope: !2759)
!2762 = !DILocation(line: 570, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !319, line: 570, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !319, line: 570, column: 15)
!2765 = !DILocation(line: 570, column: 15, scope: !2764)
!2766 = !DILocation(line: 571, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !319, line: 571, column: 15)
!2768 = distinct !DILexicalBlock(scope: !2757, file: !319, line: 571, column: 15)
!2769 = !DILocation(line: 571, column: 15, scope: !2768)
!2770 = !DILocation(line: 572, column: 15, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !319, line: 572, column: 15)
!2772 = distinct !DILexicalBlock(scope: !2757, file: !319, line: 572, column: 15)
!2773 = !DILocation(line: 572, column: 15, scope: !2772)
!2774 = !DILocation(line: 574, column: 13, scope: !2757)
!2775 = !DILocation(line: 614, column: 17, scope: !2522)
!2776 = !DILocation(line: 0, scope: !2522)
!2777 = !DILocation(line: 617, column: 29, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2527, file: !319, line: 615, column: 15)
!2779 = !{!1721, !1721, i64 0}
!2780 = !DILocation(line: 617, column: 27, scope: !2778)
!2781 = !DILocation(line: 618, column: 15, scope: !2778)
!2782 = !DILocation(line: 621, column: 17, scope: !2526)
!2783 = !DILocation(line: 621, column: 27, scope: !2526)
!2784 = !DILocalVariable(name: "__dest", arg: 1, scope: !2785, file: !2786, line: 59, type: !103)
!2785 = distinct !DISubprogram(name: "memset", scope: !2786, file: !2786, line: 59, type: !2787, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !2789)
!2786 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!103, !103, !14, !105}
!2789 = !{!2784, !2790, !2791}
!2790 = !DILocalVariable(name: "__ch", arg: 2, scope: !2785, file: !2786, line: 59, type: !14)
!2791 = !DILocalVariable(name: "__len", arg: 3, scope: !2785, file: !2786, line: 59, type: !105)
!2792 = !DILocation(line: 0, scope: !2785, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 622, column: 17, scope: !2526)
!2794 = !DILocation(line: 71, column: 10, scope: !2785, inlinedAt: !2793)
!2795 = !DILocation(line: 626, column: 29, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2526, file: !319, line: 626, column: 21)
!2797 = !DILocation(line: 626, column: 21, scope: !2526)
!2798 = !DILocation(line: 627, column: 29, scope: !2796)
!2799 = !DILocation(line: 627, column: 19, scope: !2796)
!2800 = !DILocation(line: 629, column: 17, scope: !2526)
!2801 = !DILocation(line: 624, column: 19, scope: !2526)
!2802 = !DILocation(line: 625, column: 27, scope: !2526)
!2803 = !DILocation(line: 631, column: 21, scope: !2532)
!2804 = !DILocation(line: 632, column: 56, scope: !2532)
!2805 = !DILocation(line: 632, column: 50, scope: !2532)
!2806 = !DILocation(line: 633, column: 53, scope: !2532)
!2807 = !DILocation(line: 632, column: 36, scope: !2532)
!2808 = !DILocation(line: 634, column: 25, scope: !2532)
!2809 = !DILocation(line: 644, column: 38, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2539, file: !319, line: 642, column: 23)
!2811 = !DILocation(line: 644, column: 48, scope: !2810)
!2812 = !DILocation(line: 644, column: 25, scope: !2810)
!2813 = !DILocation(line: 644, column: 51, scope: !2810)
!2814 = !DILocation(line: 645, column: 28, scope: !2810)
!2815 = !DILocation(line: 644, column: 34, scope: !2810)
!2816 = distinct !{!2816, !2812, !2814}
!2817 = !DILocation(line: 658, column: 43, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !319, line: 658, column: 29)
!2819 = distinct !DILexicalBlock(scope: !2536, file: !319, line: 658, column: 29)
!2820 = !DILocation(line: 655, column: 29, scope: !2537)
!2821 = !DILocation(line: 0, scope: !2536)
!2822 = !DILocation(line: 659, column: 49, scope: !2818)
!2823 = !DILocation(line: 659, column: 39, scope: !2818)
!2824 = !DILocation(line: 659, column: 31, scope: !2818)
!2825 = !DILocation(line: 658, column: 53, scope: !2818)
!2826 = !DILocation(line: 658, column: 29, scope: !2819)
!2827 = distinct !{!2827, !2826, !2828}
!2828 = !DILocation(line: 667, column: 33, scope: !2819)
!2829 = !DILocation(line: 674, column: 19, scope: !2526)
!2830 = !DILocation(line: 670, column: 41, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2538, file: !319, line: 670, column: 29)
!2832 = !DILocation(line: 670, column: 31, scope: !2831)
!2833 = !DILocation(line: 670, column: 29, scope: !2538)
!2834 = !DILocation(line: 672, column: 27, scope: !2538)
!2835 = !DILocation(line: 675, column: 26, scope: !2526)
!2836 = !DILocation(line: 675, column: 24, scope: !2526)
!2837 = !DILocation(line: 674, column: 19, scope: !2532)
!2838 = distinct !{!2838, !2800, !2839}
!2839 = !DILocation(line: 675, column: 44, scope: !2526)
!2840 = !DILocation(line: 676, column: 15, scope: !2527)
!2841 = !DILocation(line: 0, scope: !2527)
!2842 = !DILocation(line: 678, column: 40, scope: !2522)
!2843 = !DILocation(line: 680, column: 19, scope: !2544)
!2844 = !DILocation(line: 680, column: 45, scope: !2544)
!2845 = !DILocation(line: 680, column: 23, scope: !2544)
!2846 = !DILocation(line: 684, column: 33, scope: !2543)
!2847 = !DILocation(line: 0, scope: !2543)
!2848 = !DILocation(line: 686, column: 17, scope: !2543)
!2849 = !DILocation(line: 405, column: 12, scope: !2514)
!2850 = !DILocation(line: 688, column: 43, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !319, line: 688, column: 25)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !319, line: 687, column: 19)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !319, line: 686, column: 17)
!2854 = distinct !DILexicalBlock(scope: !2543, file: !319, line: 686, column: 17)
!2855 = !DILocation(line: 690, column: 25, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !319, line: 690, column: 25)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !319, line: 689, column: 23)
!2858 = !DILocation(line: 690, column: 25, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !319, line: 690, column: 25)
!2860 = !DILocation(line: 690, column: 25, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !319, line: 690, column: 25)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !319, line: 690, column: 25)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !319, line: 690, column: 25)
!2864 = !DILocation(line: 690, column: 25, scope: !2862)
!2865 = !DILocation(line: 690, column: 25, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !319, line: 690, column: 25)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !319, line: 690, column: 25)
!2868 = !DILocation(line: 690, column: 25, scope: !2867)
!2869 = !DILocation(line: 690, column: 25, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !319, line: 690, column: 25)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !319, line: 690, column: 25)
!2872 = !DILocation(line: 690, column: 25, scope: !2871)
!2873 = !DILocation(line: 690, column: 25, scope: !2863)
!2874 = !DILocation(line: 690, column: 25, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !319, line: 690, column: 25)
!2876 = distinct !DILexicalBlock(scope: !2856, file: !319, line: 690, column: 25)
!2877 = !DILocation(line: 690, column: 25, scope: !2876)
!2878 = !DILocation(line: 691, column: 25, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !319, line: 691, column: 25)
!2880 = distinct !DILexicalBlock(scope: !2857, file: !319, line: 691, column: 25)
!2881 = !DILocation(line: 691, column: 25, scope: !2880)
!2882 = !DILocation(line: 692, column: 25, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !319, line: 692, column: 25)
!2884 = distinct !DILexicalBlock(scope: !2857, file: !319, line: 692, column: 25)
!2885 = !DILocation(line: 692, column: 25, scope: !2884)
!2886 = !DILocation(line: 693, column: 38, scope: !2857)
!2887 = !DILocation(line: 693, column: 33, scope: !2857)
!2888 = !DILocation(line: 694, column: 23, scope: !2857)
!2889 = !DILocation(line: 695, column: 30, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2851, file: !319, line: 695, column: 30)
!2891 = !DILocation(line: 695, column: 30, scope: !2851)
!2892 = !DILocation(line: 697, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !319, line: 697, column: 25)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !319, line: 697, column: 25)
!2895 = distinct !DILexicalBlock(scope: !2890, file: !319, line: 696, column: 23)
!2896 = !DILocation(line: 697, column: 25, scope: !2894)
!2897 = !DILocation(line: 699, column: 23, scope: !2895)
!2898 = !DILocation(line: 700, column: 35, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2852, file: !319, line: 700, column: 25)
!2900 = !DILocation(line: 700, column: 30, scope: !2899)
!2901 = !DILocation(line: 700, column: 25, scope: !2852)
!2902 = !DILocation(line: 702, column: 21, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !319, line: 702, column: 21)
!2904 = distinct !DILexicalBlock(scope: !2852, file: !319, line: 702, column: 21)
!2905 = !DILocation(line: 702, column: 21, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !319, line: 702, column: 21)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !319, line: 702, column: 21)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !319, line: 702, column: 21)
!2909 = !DILocation(line: 702, column: 21, scope: !2907)
!2910 = !DILocation(line: 702, column: 21, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !319, line: 702, column: 21)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !319, line: 702, column: 21)
!2913 = !DILocation(line: 702, column: 21, scope: !2912)
!2914 = !DILocation(line: 702, column: 21, scope: !2908)
!2915 = !DILocation(line: 0, scope: !2852)
!2916 = !DILocation(line: 703, column: 21, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !319, line: 703, column: 21)
!2918 = distinct !DILexicalBlock(scope: !2852, file: !319, line: 703, column: 21)
!2919 = !DILocation(line: 703, column: 21, scope: !2918)
!2920 = !DILocation(line: 704, column: 25, scope: !2852)
!2921 = !DILocation(line: 686, column: 17, scope: !2853)
!2922 = distinct !{!2922, !2923, !2924}
!2923 = !DILocation(line: 686, column: 17, scope: !2854)
!2924 = !DILocation(line: 705, column: 19, scope: !2854)
!2925 = !DILocation(line: 416, column: 30, scope: !2623)
!2926 = !DILocation(line: 712, column: 34, scope: !2566)
!2927 = !DILocation(line: 715, column: 35, scope: !2566)
!2928 = !DILocation(line: 715, column: 17, scope: !2566)
!2929 = !DILocation(line: 715, column: 47, scope: !2566)
!2930 = !DILocation(line: 715, column: 65, scope: !2566)
!2931 = !DILocation(line: 716, column: 15, scope: !2566)
!2932 = !DILocation(line: 716, column: 11, scope: !2566)
!2933 = !DILocation(line: 712, column: 11, scope: !2514)
!2934 = !DILocation(line: 400, column: 10, scope: !2516)
!2935 = !DILocation(line: 719, column: 5, scope: !2514)
!2936 = !DILocation(line: 720, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 720, column: 7)
!2938 = !DILocation(line: 720, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2937, file: !319, line: 720, column: 7)
!2940 = !DILocation(line: 720, column: 7, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !319, line: 720, column: 7)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !319, line: 720, column: 7)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !319, line: 720, column: 7)
!2944 = !DILocation(line: 720, column: 7, scope: !2942)
!2945 = !DILocation(line: 720, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !319, line: 720, column: 7)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !319, line: 720, column: 7)
!2948 = !DILocation(line: 720, column: 7, scope: !2947)
!2949 = !DILocation(line: 720, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !319, line: 720, column: 7)
!2951 = distinct !DILexicalBlock(scope: !2943, file: !319, line: 720, column: 7)
!2952 = !DILocation(line: 720, column: 7, scope: !2951)
!2953 = !DILocation(line: 720, column: 7, scope: !2943)
!2954 = !DILocation(line: 720, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !319, line: 720, column: 7)
!2956 = distinct !DILexicalBlock(scope: !2937, file: !319, line: 720, column: 7)
!2957 = !DILocation(line: 720, column: 7, scope: !2956)
!2958 = !DILocation(line: 722, column: 5, scope: !2514)
!2959 = !DILocation(line: 723, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !319, line: 723, column: 7)
!2961 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 723, column: 7)
!2962 = !DILocation(line: 424, column: 9, scope: !2514)
!2963 = !DILocation(line: 723, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !319, line: 723, column: 7)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !319, line: 723, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2960, file: !319, line: 723, column: 7)
!2967 = !DILocation(line: 723, column: 7, scope: !2965)
!2968 = !DILocation(line: 723, column: 7, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !319, line: 723, column: 7)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !319, line: 723, column: 7)
!2971 = !DILocation(line: 723, column: 7, scope: !2970)
!2972 = !DILocation(line: 723, column: 7, scope: !2966)
!2973 = !DILocation(line: 724, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !319, line: 724, column: 7)
!2975 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 724, column: 7)
!2976 = !DILocation(line: 724, column: 7, scope: !2975)
!2977 = !DILocation(line: 726, column: 13, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2514, file: !319, line: 726, column: 11)
!2979 = !DILocation(line: 726, column: 11, scope: !2514)
!2980 = !DILocation(line: 728, column: 5, scope: !2515)
!2981 = !DILocation(line: 400, column: 75, scope: !2515)
!2982 = !DILocation(line: 400, column: 3, scope: !2515)
!2983 = distinct !{!2983, !2641, !2984}
!2984 = !DILocation(line: 728, column: 5, scope: !2516)
!2985 = !DILocation(line: 730, column: 11, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 730, column: 7)
!2987 = !DILocation(line: 730, column: 16, scope: !2986)
!2988 = !DILocation(line: 738, column: 51, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 738, column: 7)
!2990 = !DILocation(line: 739, column: 10, scope: !2989)
!2991 = !DILocation(line: 741, column: 11, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !319, line: 741, column: 11)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !319, line: 740, column: 5)
!2994 = !DILocation(line: 741, column: 11, scope: !2993)
!2995 = !DILocation(line: 742, column: 16, scope: !2992)
!2996 = !DILocation(line: 742, column: 9, scope: !2992)
!2997 = !DILocation(line: 746, column: 18, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !319, line: 746, column: 16)
!2999 = !DILocation(line: 746, column: 32, scope: !2998)
!3000 = !DILocation(line: 746, column: 29, scope: !2998)
!3001 = !DILocation(line: 755, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 755, column: 7)
!3003 = !DILocation(line: 755, column: 20, scope: !3002)
!3004 = !DILocation(line: 756, column: 12, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !319, line: 756, column: 5)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !319, line: 756, column: 5)
!3007 = !DILocation(line: 756, column: 5, scope: !3006)
!3008 = !DILocation(line: 757, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !319, line: 757, column: 7)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !319, line: 757, column: 7)
!3011 = !DILocation(line: 757, column: 7, scope: !3010)
!3012 = !DILocation(line: 756, column: 39, scope: !3005)
!3013 = distinct !{!3013, !3007, !3014}
!3014 = !DILocation(line: 757, column: 7, scope: !3006)
!3015 = !DILocation(line: 759, column: 11, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 759, column: 7)
!3017 = !DILocation(line: 759, column: 7, scope: !2487)
!3018 = !DILocation(line: 760, column: 5, scope: !3016)
!3019 = !DILocation(line: 760, column: 17, scope: !3016)
!3020 = !DILocation(line: 763, column: 2, scope: !2487)
!3021 = !DILocation(line: 766, column: 51, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2487, file: !319, line: 766, column: 7)
!3023 = !DILocation(line: 766, column: 21, scope: !3022)
!3024 = !DILocation(line: 770, column: 42, scope: !2487)
!3025 = !DILocation(line: 768, column: 10, scope: !2487)
!3026 = !DILocation(line: 768, column: 3, scope: !2487)
!3027 = !DILocation(line: 772, column: 1, scope: !2487)
!3028 = distinct !DISubprogram(name: "gettext_quote", scope: !319, file: !319, line: 207, type: !3029, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!50, !50, !29}
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DILocalVariable(name: "msgid", arg: 1, scope: !3028, file: !319, line: 207, type: !50)
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !319, line: 207, type: !29)
!3034 = !DILocalVariable(name: "translation", scope: !3028, file: !319, line: 209, type: !50)
!3035 = !DILocalVariable(name: "locale_code", scope: !3028, file: !319, line: 210, type: !50)
!3036 = !DILocation(line: 0, scope: !3028)
!3037 = !DILocation(line: 209, column: 29, scope: !3028)
!3038 = !DILocation(line: 212, column: 19, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3028, file: !319, line: 212, column: 7)
!3040 = !DILocation(line: 212, column: 7, scope: !3028)
!3041 = !DILocation(line: 233, column: 17, scope: !3028)
!3042 = !DILocalVariable(name: "s1", arg: 1, scope: !3043, file: !3044, line: 160, type: !50)
!3043 = distinct !DISubprogram(name: "strcaseeq0", scope: !3044, file: !3044, line: 160, type: !3045, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3047)
!3044 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!14, !50, !50, !49, !49, !49, !49, !49, !49, !49, !49, !49}
!3047 = !{!3042, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3048 = !DILocalVariable(name: "s2", arg: 2, scope: !3043, file: !3044, line: 160, type: !50)
!3049 = !DILocalVariable(name: "s20", arg: 3, scope: !3043, file: !3044, line: 160, type: !49)
!3050 = !DILocalVariable(name: "s21", arg: 4, scope: !3043, file: !3044, line: 160, type: !49)
!3051 = !DILocalVariable(name: "s22", arg: 5, scope: !3043, file: !3044, line: 160, type: !49)
!3052 = !DILocalVariable(name: "s23", arg: 6, scope: !3043, file: !3044, line: 160, type: !49)
!3053 = !DILocalVariable(name: "s24", arg: 7, scope: !3043, file: !3044, line: 160, type: !49)
!3054 = !DILocalVariable(name: "s25", arg: 8, scope: !3043, file: !3044, line: 160, type: !49)
!3055 = !DILocalVariable(name: "s26", arg: 9, scope: !3043, file: !3044, line: 160, type: !49)
!3056 = !DILocalVariable(name: "s27", arg: 10, scope: !3043, file: !3044, line: 160, type: !49)
!3057 = !DILocalVariable(name: "s28", arg: 11, scope: !3043, file: !3044, line: 160, type: !49)
!3058 = !DILocation(line: 0, scope: !3043, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 234, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3028, file: !319, line: 234, column: 7)
!3061 = !DILocation(line: 162, column: 7, scope: !3062, inlinedAt: !3059)
!3062 = distinct !DILexicalBlock(scope: !3043, file: !3044, line: 162, column: 7)
!3063 = !DILocalVariable(name: "s1", arg: 1, scope: !3064, file: !3044, line: 146, type: !50)
!3064 = distinct !DISubprogram(name: "strcaseeq1", scope: !3044, file: !3044, line: 146, type: !3065, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!14, !50, !50, !49, !49, !49, !49, !49, !49, !49, !49}
!3067 = !{!3063, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076}
!3068 = !DILocalVariable(name: "s2", arg: 2, scope: !3064, file: !3044, line: 146, type: !50)
!3069 = !DILocalVariable(name: "s21", arg: 3, scope: !3064, file: !3044, line: 146, type: !49)
!3070 = !DILocalVariable(name: "s22", arg: 4, scope: !3064, file: !3044, line: 146, type: !49)
!3071 = !DILocalVariable(name: "s23", arg: 5, scope: !3064, file: !3044, line: 146, type: !49)
!3072 = !DILocalVariable(name: "s24", arg: 6, scope: !3064, file: !3044, line: 146, type: !49)
!3073 = !DILocalVariable(name: "s25", arg: 7, scope: !3064, file: !3044, line: 146, type: !49)
!3074 = !DILocalVariable(name: "s26", arg: 8, scope: !3064, file: !3044, line: 146, type: !49)
!3075 = !DILocalVariable(name: "s27", arg: 9, scope: !3064, file: !3044, line: 146, type: !49)
!3076 = !DILocalVariable(name: "s28", arg: 10, scope: !3064, file: !3044, line: 146, type: !49)
!3077 = !DILocation(line: 0, scope: !3064, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 167, column: 16, scope: !3079, inlinedAt: !3059)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3044, line: 164, column: 11)
!3080 = distinct !DILexicalBlock(scope: !3062, file: !3044, line: 163, column: 5)
!3081 = !DILocation(line: 148, column: 7, scope: !3082, inlinedAt: !3078)
!3082 = distinct !DILexicalBlock(scope: !3064, file: !3044, line: 148, column: 7)
!3083 = !DILocalVariable(name: "s1", arg: 1, scope: !3084, file: !3044, line: 132, type: !50)
!3084 = distinct !DISubprogram(name: "strcaseeq2", scope: !3044, file: !3044, line: 132, type: !3085, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!14, !50, !50, !49, !49, !49, !49, !49, !49, !49}
!3087 = !{!3083, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3088 = !DILocalVariable(name: "s2", arg: 2, scope: !3084, file: !3044, line: 132, type: !50)
!3089 = !DILocalVariable(name: "s22", arg: 3, scope: !3084, file: !3044, line: 132, type: !49)
!3090 = !DILocalVariable(name: "s23", arg: 4, scope: !3084, file: !3044, line: 132, type: !49)
!3091 = !DILocalVariable(name: "s24", arg: 5, scope: !3084, file: !3044, line: 132, type: !49)
!3092 = !DILocalVariable(name: "s25", arg: 6, scope: !3084, file: !3044, line: 132, type: !49)
!3093 = !DILocalVariable(name: "s26", arg: 7, scope: !3084, file: !3044, line: 132, type: !49)
!3094 = !DILocalVariable(name: "s27", arg: 8, scope: !3084, file: !3044, line: 132, type: !49)
!3095 = !DILocalVariable(name: "s28", arg: 9, scope: !3084, file: !3044, line: 132, type: !49)
!3096 = !DILocation(line: 0, scope: !3084, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 153, column: 16, scope: !3098, inlinedAt: !3078)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3044, line: 150, column: 11)
!3099 = distinct !DILexicalBlock(scope: !3082, file: !3044, line: 149, column: 5)
!3100 = !DILocation(line: 134, column: 7, scope: !3101, inlinedAt: !3097)
!3101 = distinct !DILexicalBlock(scope: !3084, file: !3044, line: 134, column: 7)
!3102 = !DILocalVariable(name: "s1", arg: 1, scope: !3103, file: !3044, line: 118, type: !50)
!3103 = distinct !DISubprogram(name: "strcaseeq3", scope: !3044, file: !3044, line: 118, type: !3104, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!14, !50, !50, !49, !49, !49, !49, !49, !49}
!3106 = !{!3102, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3107 = !DILocalVariable(name: "s2", arg: 2, scope: !3103, file: !3044, line: 118, type: !50)
!3108 = !DILocalVariable(name: "s23", arg: 3, scope: !3103, file: !3044, line: 118, type: !49)
!3109 = !DILocalVariable(name: "s24", arg: 4, scope: !3103, file: !3044, line: 118, type: !49)
!3110 = !DILocalVariable(name: "s25", arg: 5, scope: !3103, file: !3044, line: 118, type: !49)
!3111 = !DILocalVariable(name: "s26", arg: 6, scope: !3103, file: !3044, line: 118, type: !49)
!3112 = !DILocalVariable(name: "s27", arg: 7, scope: !3103, file: !3044, line: 118, type: !49)
!3113 = !DILocalVariable(name: "s28", arg: 8, scope: !3103, file: !3044, line: 118, type: !49)
!3114 = !DILocation(line: 0, scope: !3103, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 139, column: 16, scope: !3116, inlinedAt: !3097)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !3044, line: 136, column: 11)
!3117 = distinct !DILexicalBlock(scope: !3101, file: !3044, line: 135, column: 5)
!3118 = !DILocation(line: 120, column: 7, scope: !3119, inlinedAt: !3115)
!3119 = distinct !DILexicalBlock(scope: !3103, file: !3044, line: 120, column: 7)
!3120 = !DILocation(line: 120, column: 7, scope: !3103, inlinedAt: !3115)
!3121 = !DILocalVariable(name: "s1", arg: 1, scope: !3122, file: !3044, line: 104, type: !50)
!3122 = distinct !DISubprogram(name: "strcaseeq4", scope: !3044, file: !3044, line: 104, type: !3123, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!14, !50, !50, !49, !49, !49, !49, !49}
!3125 = !{!3121, !3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DILocalVariable(name: "s2", arg: 2, scope: !3122, file: !3044, line: 104, type: !50)
!3127 = !DILocalVariable(name: "s24", arg: 3, scope: !3122, file: !3044, line: 104, type: !49)
!3128 = !DILocalVariable(name: "s25", arg: 4, scope: !3122, file: !3044, line: 104, type: !49)
!3129 = !DILocalVariable(name: "s26", arg: 5, scope: !3122, file: !3044, line: 104, type: !49)
!3130 = !DILocalVariable(name: "s27", arg: 6, scope: !3122, file: !3044, line: 104, type: !49)
!3131 = !DILocalVariable(name: "s28", arg: 7, scope: !3122, file: !3044, line: 104, type: !49)
!3132 = !DILocation(line: 0, scope: !3122, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 125, column: 16, scope: !3134, inlinedAt: !3115)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3044, line: 122, column: 11)
!3135 = distinct !DILexicalBlock(scope: !3119, file: !3044, line: 121, column: 5)
!3136 = !DILocation(line: 106, column: 7, scope: !3137, inlinedAt: !3133)
!3137 = distinct !DILexicalBlock(scope: !3122, file: !3044, line: 106, column: 7)
!3138 = !DILocation(line: 106, column: 7, scope: !3122, inlinedAt: !3133)
!3139 = !DILocalVariable(name: "s1", arg: 1, scope: !3140, file: !3044, line: 90, type: !50)
!3140 = distinct !DISubprogram(name: "strcaseeq5", scope: !3044, file: !3044, line: 90, type: !3141, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!14, !50, !50, !49, !49, !49, !49}
!3143 = !{!3139, !3144, !3145, !3146, !3147, !3148}
!3144 = !DILocalVariable(name: "s2", arg: 2, scope: !3140, file: !3044, line: 90, type: !50)
!3145 = !DILocalVariable(name: "s25", arg: 3, scope: !3140, file: !3044, line: 90, type: !49)
!3146 = !DILocalVariable(name: "s26", arg: 4, scope: !3140, file: !3044, line: 90, type: !49)
!3147 = !DILocalVariable(name: "s27", arg: 5, scope: !3140, file: !3044, line: 90, type: !49)
!3148 = !DILocalVariable(name: "s28", arg: 6, scope: !3140, file: !3044, line: 90, type: !49)
!3149 = !DILocation(line: 0, scope: !3140, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 111, column: 16, scope: !3151, inlinedAt: !3133)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3044, line: 108, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3137, file: !3044, line: 107, column: 5)
!3153 = !DILocation(line: 92, column: 7, scope: !3154, inlinedAt: !3150)
!3154 = distinct !DILexicalBlock(scope: !3140, file: !3044, line: 92, column: 7)
!3155 = !DILocation(line: 92, column: 7, scope: !3140, inlinedAt: !3150)
!3156 = !DILocation(line: 235, column: 12, scope: !3060)
!3157 = !DILocation(line: 235, column: 21, scope: !3060)
!3158 = !DILocation(line: 235, column: 5, scope: !3060)
!3159 = !DILocation(line: 0, scope: !3064, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 167, column: 16, scope: !3079, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 236, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3028, file: !319, line: 236, column: 7)
!3163 = !DILocation(line: 148, column: 7, scope: !3082, inlinedAt: !3160)
!3164 = !DILocation(line: 0, scope: !3084, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 153, column: 16, scope: !3098, inlinedAt: !3160)
!3166 = !DILocation(line: 134, column: 7, scope: !3101, inlinedAt: !3165)
!3167 = !DILocation(line: 134, column: 7, scope: !3084, inlinedAt: !3165)
!3168 = !DILocation(line: 0, scope: !3103, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 139, column: 16, scope: !3116, inlinedAt: !3165)
!3170 = !DILocation(line: 120, column: 7, scope: !3119, inlinedAt: !3169)
!3171 = !DILocation(line: 120, column: 7, scope: !3103, inlinedAt: !3169)
!3172 = !DILocation(line: 0, scope: !3122, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 125, column: 16, scope: !3134, inlinedAt: !3169)
!3174 = !DILocation(line: 106, column: 7, scope: !3137, inlinedAt: !3173)
!3175 = !DILocation(line: 106, column: 7, scope: !3122, inlinedAt: !3173)
!3176 = !DILocation(line: 0, scope: !3140, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 111, column: 16, scope: !3151, inlinedAt: !3173)
!3178 = !DILocation(line: 92, column: 7, scope: !3154, inlinedAt: !3177)
!3179 = !DILocation(line: 92, column: 7, scope: !3140, inlinedAt: !3177)
!3180 = !DILocalVariable(name: "s1", arg: 1, scope: !3181, file: !3044, line: 76, type: !50)
!3181 = distinct !DISubprogram(name: "strcaseeq6", scope: !3044, file: !3044, line: 76, type: !3182, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!14, !50, !50, !49, !49, !49}
!3184 = !{!3180, !3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "s2", arg: 2, scope: !3181, file: !3044, line: 76, type: !50)
!3186 = !DILocalVariable(name: "s26", arg: 3, scope: !3181, file: !3044, line: 76, type: !49)
!3187 = !DILocalVariable(name: "s27", arg: 4, scope: !3181, file: !3044, line: 76, type: !49)
!3188 = !DILocalVariable(name: "s28", arg: 5, scope: !3181, file: !3044, line: 76, type: !49)
!3189 = !DILocation(line: 0, scope: !3181, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 97, column: 16, scope: !3191, inlinedAt: !3177)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !3044, line: 94, column: 11)
!3192 = distinct !DILexicalBlock(scope: !3154, file: !3044, line: 93, column: 5)
!3193 = !DILocation(line: 78, column: 7, scope: !3194, inlinedAt: !3190)
!3194 = distinct !DILexicalBlock(scope: !3181, file: !3044, line: 78, column: 7)
!3195 = !DILocation(line: 78, column: 7, scope: !3181, inlinedAt: !3190)
!3196 = !DILocalVariable(name: "s1", arg: 1, scope: !3197, file: !3044, line: 62, type: !50)
!3197 = distinct !DISubprogram(name: "strcaseeq7", scope: !3044, file: !3044, line: 62, type: !3198, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!14, !50, !50, !49, !49}
!3200 = !{!3196, !3201, !3202, !3203}
!3201 = !DILocalVariable(name: "s2", arg: 2, scope: !3197, file: !3044, line: 62, type: !50)
!3202 = !DILocalVariable(name: "s27", arg: 3, scope: !3197, file: !3044, line: 62, type: !49)
!3203 = !DILocalVariable(name: "s28", arg: 4, scope: !3197, file: !3044, line: 62, type: !49)
!3204 = !DILocation(line: 0, scope: !3197, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 83, column: 16, scope: !3206, inlinedAt: !3190)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !3044, line: 80, column: 11)
!3207 = distinct !DILexicalBlock(scope: !3194, file: !3044, line: 79, column: 5)
!3208 = !DILocation(line: 64, column: 7, scope: !3209, inlinedAt: !3205)
!3209 = distinct !DILexicalBlock(scope: !3197, file: !3044, line: 64, column: 7)
!3210 = !DILocation(line: 236, column: 7, scope: !3028)
!3211 = !DILocation(line: 237, column: 12, scope: !3162)
!3212 = !DILocation(line: 237, column: 21, scope: !3162)
!3213 = !DILocation(line: 237, column: 5, scope: !3162)
!3214 = !DILocation(line: 239, column: 13, scope: !3028)
!3215 = !DILocation(line: 239, column: 11, scope: !3028)
!3216 = !DILocation(line: 239, column: 3, scope: !3028)
!3217 = !DILocation(line: 240, column: 1, scope: !3028)
!3218 = distinct !DISubprogram(name: "quotearg_alloc", scope: !319, file: !319, line: 799, type: !3219, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!48, !50, !105, !352}
!3221 = !{!3222, !3223, !3224}
!3222 = !DILocalVariable(name: "arg", arg: 1, scope: !3218, file: !319, line: 799, type: !50)
!3223 = !DILocalVariable(name: "argsize", arg: 2, scope: !3218, file: !319, line: 799, type: !105)
!3224 = !DILocalVariable(name: "o", arg: 3, scope: !3218, file: !319, line: 800, type: !352)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocalVariable(name: "arg", arg: 1, scope: !3227, file: !319, line: 812, type: !50)
!3227 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !319, file: !319, line: 812, type: !3228, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!48, !50, !105, !699, !352}
!3230 = !{!3226, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3231 = !DILocalVariable(name: "argsize", arg: 2, scope: !3227, file: !319, line: 812, type: !105)
!3232 = !DILocalVariable(name: "size", arg: 3, scope: !3227, file: !319, line: 812, type: !699)
!3233 = !DILocalVariable(name: "o", arg: 4, scope: !3227, file: !319, line: 813, type: !352)
!3234 = !DILocalVariable(name: "p", scope: !3227, file: !319, line: 815, type: !352)
!3235 = !DILocalVariable(name: "e", scope: !3227, file: !319, line: 816, type: !14)
!3236 = !DILocalVariable(name: "flags", scope: !3227, file: !319, line: 818, type: !14)
!3237 = !DILocalVariable(name: "bufsize", scope: !3227, file: !319, line: 819, type: !105)
!3238 = !DILocalVariable(name: "buf", scope: !3227, file: !319, line: 823, type: !48)
!3239 = !DILocation(line: 0, scope: !3227, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 802, column: 10, scope: !3218)
!3241 = !DILocation(line: 815, column: 37, scope: !3227, inlinedAt: !3240)
!3242 = !DILocation(line: 816, column: 11, scope: !3227, inlinedAt: !3240)
!3243 = !DILocation(line: 818, column: 18, scope: !3227, inlinedAt: !3240)
!3244 = !DILocation(line: 818, column: 24, scope: !3227, inlinedAt: !3240)
!3245 = !DILocation(line: 819, column: 69, scope: !3227, inlinedAt: !3240)
!3246 = !DILocation(line: 820, column: 53, scope: !3227, inlinedAt: !3240)
!3247 = !DILocation(line: 821, column: 49, scope: !3227, inlinedAt: !3240)
!3248 = !DILocation(line: 822, column: 49, scope: !3227, inlinedAt: !3240)
!3249 = !DILocation(line: 819, column: 20, scope: !3227, inlinedAt: !3240)
!3250 = !DILocation(line: 822, column: 62, scope: !3227, inlinedAt: !3240)
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3252, file: !343, line: 216, type: !105)
!3252 = distinct !DISubprogram(name: "xcharalloc", scope: !343, file: !343, line: 216, type: !3253, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!48, !105}
!3255 = !{!3251}
!3256 = !DILocation(line: 0, scope: !3252, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 823, column: 15, scope: !3227, inlinedAt: !3240)
!3258 = !DILocation(line: 218, column: 10, scope: !3252, inlinedAt: !3257)
!3259 = !DILocation(line: 824, column: 60, scope: !3227, inlinedAt: !3240)
!3260 = !DILocation(line: 826, column: 32, scope: !3227, inlinedAt: !3240)
!3261 = !DILocation(line: 826, column: 47, scope: !3227, inlinedAt: !3240)
!3262 = !DILocation(line: 824, column: 3, scope: !3227, inlinedAt: !3240)
!3263 = !DILocation(line: 827, column: 9, scope: !3227, inlinedAt: !3240)
!3264 = !DILocation(line: 802, column: 3, scope: !3218)
!3265 = !DILocation(line: 0, scope: !3227)
!3266 = !DILocation(line: 815, column: 37, scope: !3227)
!3267 = !DILocation(line: 816, column: 11, scope: !3227)
!3268 = !DILocation(line: 818, column: 18, scope: !3227)
!3269 = !DILocation(line: 818, column: 27, scope: !3227)
!3270 = !DILocation(line: 818, column: 24, scope: !3227)
!3271 = !DILocation(line: 819, column: 69, scope: !3227)
!3272 = !DILocation(line: 820, column: 53, scope: !3227)
!3273 = !DILocation(line: 821, column: 49, scope: !3227)
!3274 = !DILocation(line: 822, column: 49, scope: !3227)
!3275 = !DILocation(line: 819, column: 20, scope: !3227)
!3276 = !DILocation(line: 822, column: 62, scope: !3227)
!3277 = !DILocation(line: 0, scope: !3252, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 823, column: 15, scope: !3227)
!3279 = !DILocation(line: 218, column: 10, scope: !3252, inlinedAt: !3278)
!3280 = !DILocation(line: 824, column: 60, scope: !3227)
!3281 = !DILocation(line: 826, column: 32, scope: !3227)
!3282 = !DILocation(line: 826, column: 47, scope: !3227)
!3283 = !DILocation(line: 824, column: 3, scope: !3227)
!3284 = !DILocation(line: 827, column: 9, scope: !3227)
!3285 = !DILocation(line: 828, column: 7, scope: !3227)
!3286 = !DILocation(line: 829, column: 11, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3227, file: !319, line: 828, column: 7)
!3288 = !{!1720, !1720, i64 0}
!3289 = !DILocation(line: 829, column: 5, scope: !3287)
!3290 = !DILocation(line: 830, column: 3, scope: !3227)
!3291 = distinct !DISubprogram(name: "quotearg_free", scope: !319, file: !319, line: 848, type: !132, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3292)
!3292 = !{!3293, !3294}
!3293 = !DILocalVariable(name: "sv", scope: !3291, file: !319, line: 850, type: !427)
!3294 = !DILocalVariable(name: "i", scope: !3291, file: !319, line: 851, type: !14)
!3295 = !DILocation(line: 850, column: 24, scope: !3291)
!3296 = !DILocation(line: 0, scope: !3291)
!3297 = !DILocation(line: 852, column: 19, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !319, line: 852, column: 3)
!3299 = distinct !DILexicalBlock(scope: !3291, file: !319, line: 852, column: 3)
!3300 = !DILocation(line: 852, column: 17, scope: !3298)
!3301 = !DILocation(line: 852, column: 3, scope: !3299)
!3302 = !DILocation(line: 853, column: 17, scope: !3298)
!3303 = !{!3304, !1388, i64 8}
!3304 = !{!"slotvec", !1720, i64 0, !1388, i64 8}
!3305 = !DILocation(line: 853, column: 5, scope: !3298)
!3306 = !DILocation(line: 852, column: 28, scope: !3298)
!3307 = distinct !{!3307, !3301, !3308}
!3308 = !DILocation(line: 853, column: 20, scope: !3299)
!3309 = !DILocation(line: 854, column: 13, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3291, file: !319, line: 854, column: 7)
!3311 = !DILocation(line: 854, column: 17, scope: !3310)
!3312 = !DILocation(line: 854, column: 7, scope: !3291)
!3313 = !DILocation(line: 856, column: 7, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !319, line: 855, column: 5)
!3315 = !DILocation(line: 857, column: 21, scope: !3314)
!3316 = !{!3304, !1720, i64 0}
!3317 = !DILocation(line: 858, column: 20, scope: !3314)
!3318 = !DILocation(line: 859, column: 5, scope: !3314)
!3319 = !DILocation(line: 860, column: 10, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3291, file: !319, line: 860, column: 7)
!3321 = !DILocation(line: 860, column: 7, scope: !3291)
!3322 = !DILocation(line: 862, column: 13, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !319, line: 861, column: 5)
!3324 = !DILocation(line: 862, column: 7, scope: !3323)
!3325 = !DILocation(line: 863, column: 15, scope: !3323)
!3326 = !DILocation(line: 864, column: 5, scope: !3323)
!3327 = !DILocation(line: 865, column: 10, scope: !3291)
!3328 = !DILocation(line: 866, column: 1, scope: !3291)
!3329 = distinct !DISubprogram(name: "quotearg_n", scope: !319, file: !319, line: 931, type: !119, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3330)
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !319, line: 931, type: !14)
!3332 = !DILocalVariable(name: "arg", arg: 2, scope: !3329, file: !319, line: 931, type: !50)
!3333 = !DILocation(line: 0, scope: !3329)
!3334 = !DILocation(line: 933, column: 10, scope: !3329)
!3335 = !DILocation(line: 933, column: 3, scope: !3329)
!3336 = distinct !DISubprogram(name: "quotearg_n_options", scope: !319, file: !319, line: 877, type: !3337, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!48, !14, !50, !105, !352}
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3350, !3352, !3353, !3354}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3336, file: !319, line: 877, type: !14)
!3341 = !DILocalVariable(name: "arg", arg: 2, scope: !3336, file: !319, line: 877, type: !50)
!3342 = !DILocalVariable(name: "argsize", arg: 3, scope: !3336, file: !319, line: 877, type: !105)
!3343 = !DILocalVariable(name: "options", arg: 4, scope: !3336, file: !319, line: 878, type: !352)
!3344 = !DILocalVariable(name: "e", scope: !3336, file: !319, line: 880, type: !14)
!3345 = !DILocalVariable(name: "sv", scope: !3336, file: !319, line: 882, type: !427)
!3346 = !DILocalVariable(name: "preallocated", scope: !3347, file: !319, line: 889, type: !174)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !319, line: 888, column: 5)
!3348 = distinct !DILexicalBlock(scope: !3336, file: !319, line: 887, column: 7)
!3349 = !DILocalVariable(name: "nmax", scope: !3347, file: !319, line: 890, type: !14)
!3350 = !DILocalVariable(name: "size", scope: !3351, file: !319, line: 903, type: !105)
!3351 = distinct !DILexicalBlock(scope: !3336, file: !319, line: 902, column: 3)
!3352 = !DILocalVariable(name: "val", scope: !3351, file: !319, line: 904, type: !48)
!3353 = !DILocalVariable(name: "flags", scope: !3351, file: !319, line: 906, type: !14)
!3354 = !DILocalVariable(name: "qsize", scope: !3351, file: !319, line: 907, type: !105)
!3355 = !DILocation(line: 0, scope: !3336)
!3356 = !DILocation(line: 880, column: 11, scope: !3336)
!3357 = !DILocation(line: 882, column: 24, scope: !3336)
!3358 = !DILocation(line: 884, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3336, file: !319, line: 884, column: 7)
!3360 = !DILocation(line: 884, column: 7, scope: !3336)
!3361 = !DILocation(line: 885, column: 5, scope: !3359)
!3362 = !DILocation(line: 887, column: 7, scope: !3348)
!3363 = !DILocation(line: 887, column: 14, scope: !3348)
!3364 = !DILocation(line: 887, column: 7, scope: !3336)
!3365 = !DILocation(line: 889, column: 31, scope: !3347)
!3366 = !DILocation(line: 0, scope: !3347)
!3367 = !DILocation(line: 892, column: 16, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3347, file: !319, line: 892, column: 11)
!3369 = !DILocation(line: 892, column: 11, scope: !3347)
!3370 = !DILocation(line: 893, column: 9, scope: !3368)
!3371 = !DILocation(line: 895, column: 32, scope: !3347)
!3372 = !DILocation(line: 895, column: 61, scope: !3347)
!3373 = !DILocation(line: 895, column: 58, scope: !3347)
!3374 = !DILocation(line: 895, column: 66, scope: !3347)
!3375 = !DILocation(line: 895, column: 22, scope: !3347)
!3376 = !DILocation(line: 895, column: 15, scope: !3347)
!3377 = !DILocation(line: 896, column: 11, scope: !3347)
!3378 = !DILocation(line: 897, column: 15, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3347, file: !319, line: 896, column: 11)
!3380 = !{i64 0, i64 8, !3288, i64 8, i64 8, !1387}
!3381 = !DILocation(line: 897, column: 9, scope: !3379)
!3382 = !DILocation(line: 898, column: 20, scope: !3347)
!3383 = !DILocation(line: 898, column: 18, scope: !3347)
!3384 = !DILocation(line: 898, column: 15, scope: !3347)
!3385 = !DILocation(line: 898, column: 38, scope: !3347)
!3386 = !DILocation(line: 898, column: 31, scope: !3347)
!3387 = !DILocation(line: 898, column: 48, scope: !3347)
!3388 = !DILocation(line: 0, scope: !2785, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 898, column: 7, scope: !3347)
!3390 = !DILocation(line: 71, column: 10, scope: !2785, inlinedAt: !3389)
!3391 = !DILocation(line: 899, column: 14, scope: !3347)
!3392 = !DILocation(line: 900, column: 5, scope: !3347)
!3393 = !DILocation(line: 903, column: 19, scope: !3351)
!3394 = !DILocation(line: 903, column: 25, scope: !3351)
!3395 = !DILocation(line: 0, scope: !3351)
!3396 = !DILocation(line: 904, column: 23, scope: !3351)
!3397 = !DILocation(line: 906, column: 26, scope: !3351)
!3398 = !DILocation(line: 906, column: 32, scope: !3351)
!3399 = !DILocation(line: 908, column: 55, scope: !3351)
!3400 = !DILocation(line: 909, column: 46, scope: !3351)
!3401 = !DILocation(line: 910, column: 55, scope: !3351)
!3402 = !DILocation(line: 911, column: 55, scope: !3351)
!3403 = !DILocation(line: 907, column: 20, scope: !3351)
!3404 = !DILocation(line: 913, column: 14, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3351, file: !319, line: 913, column: 9)
!3406 = !DILocation(line: 913, column: 9, scope: !3351)
!3407 = !DILocation(line: 915, column: 35, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !319, line: 914, column: 7)
!3409 = !DILocation(line: 915, column: 20, scope: !3408)
!3410 = !DILocation(line: 916, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3408, file: !319, line: 916, column: 13)
!3412 = !DILocation(line: 916, column: 13, scope: !3408)
!3413 = !DILocation(line: 917, column: 11, scope: !3411)
!3414 = !DILocation(line: 0, scope: !3252, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 918, column: 27, scope: !3408)
!3416 = !DILocation(line: 218, column: 10, scope: !3252, inlinedAt: !3415)
!3417 = !DILocation(line: 918, column: 19, scope: !3408)
!3418 = !DILocation(line: 919, column: 69, scope: !3408)
!3419 = !DILocation(line: 921, column: 44, scope: !3408)
!3420 = !DILocation(line: 922, column: 44, scope: !3408)
!3421 = !DILocation(line: 919, column: 9, scope: !3408)
!3422 = !DILocation(line: 923, column: 7, scope: !3408)
!3423 = !DILocation(line: 925, column: 11, scope: !3351)
!3424 = !DILocation(line: 926, column: 5, scope: !3351)
!3425 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !319, file: !319, line: 937, type: !3426, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!48, !14, !50, !105}
!3428 = !{!3429, !3430, !3431}
!3429 = !DILocalVariable(name: "n", arg: 1, scope: !3425, file: !319, line: 937, type: !14)
!3430 = !DILocalVariable(name: "arg", arg: 2, scope: !3425, file: !319, line: 937, type: !50)
!3431 = !DILocalVariable(name: "argsize", arg: 3, scope: !3425, file: !319, line: 937, type: !105)
!3432 = !DILocation(line: 0, scope: !3425)
!3433 = !DILocation(line: 939, column: 10, scope: !3425)
!3434 = !DILocation(line: 939, column: 3, scope: !3425)
!3435 = distinct !DISubprogram(name: "quotearg", scope: !319, file: !319, line: 943, type: !125, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3436)
!3436 = !{!3437}
!3437 = !DILocalVariable(name: "arg", arg: 1, scope: !3435, file: !319, line: 943, type: !50)
!3438 = !DILocation(line: 0, scope: !3435)
!3439 = !DILocation(line: 0, scope: !3329, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 945, column: 10, scope: !3435)
!3441 = !DILocation(line: 933, column: 10, scope: !3329, inlinedAt: !3440)
!3442 = !DILocation(line: 945, column: 3, scope: !3435)
!3443 = distinct !DISubprogram(name: "quotearg_mem", scope: !319, file: !319, line: 949, type: !3444, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!48, !50, !105}
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "arg", arg: 1, scope: !3443, file: !319, line: 949, type: !50)
!3448 = !DILocalVariable(name: "argsize", arg: 2, scope: !3443, file: !319, line: 949, type: !105)
!3449 = !DILocation(line: 0, scope: !3443)
!3450 = !DILocation(line: 0, scope: !3425, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 951, column: 10, scope: !3443)
!3452 = !DILocation(line: 939, column: 10, scope: !3425, inlinedAt: !3451)
!3453 = !DILocation(line: 951, column: 3, scope: !3443)
!3454 = distinct !DISubprogram(name: "quotearg_n_style", scope: !319, file: !319, line: 955, type: !3455, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!48, !14, !29, !50}
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DILocalVariable(name: "n", arg: 1, scope: !3454, file: !319, line: 955, type: !14)
!3459 = !DILocalVariable(name: "s", arg: 2, scope: !3454, file: !319, line: 955, type: !29)
!3460 = !DILocalVariable(name: "arg", arg: 3, scope: !3454, file: !319, line: 955, type: !50)
!3461 = !DILocalVariable(name: "o", scope: !3454, file: !319, line: 957, type: !353)
!3462 = !DILocation(line: 0, scope: !3454)
!3463 = !DILocation(line: 957, column: 3, scope: !3454)
!3464 = !DILocation(line: 957, column: 32, scope: !3454)
!3465 = !DILocalVariable(name: "style", arg: 1, scope: !3466, file: !319, line: 193, type: !29)
!3466 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !319, file: !319, line: 193, type: !3467, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!354, !29}
!3469 = !{!3465, !3470}
!3470 = !DILocalVariable(name: "o", scope: !3466, file: !319, line: 195, type: !354)
!3471 = !DILocation(line: 0, scope: !3466, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 957, column: 36, scope: !3454)
!3473 = !DILocation(line: 195, column: 26, scope: !3466, inlinedAt: !3472)
!3474 = !{!3475}
!3475 = distinct !{!3475, !3476, !"quoting_options_from_style: argument 0"}
!3476 = distinct !{!3476, !"quoting_options_from_style"}
!3477 = !DILocation(line: 196, column: 13, scope: !3478, inlinedAt: !3472)
!3478 = distinct !DILexicalBlock(scope: !3466, file: !319, line: 196, column: 7)
!3479 = !DILocation(line: 196, column: 7, scope: !3466, inlinedAt: !3472)
!3480 = !DILocation(line: 197, column: 5, scope: !3478, inlinedAt: !3472)
!3481 = !DILocation(line: 198, column: 5, scope: !3466, inlinedAt: !3472)
!3482 = !DILocation(line: 198, column: 11, scope: !3466, inlinedAt: !3472)
!3483 = !DILocation(line: 958, column: 10, scope: !3454)
!3484 = !DILocation(line: 959, column: 1, scope: !3454)
!3485 = !DILocation(line: 958, column: 3, scope: !3454)
!3486 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !319, file: !319, line: 962, type: !3487, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!48, !14, !29, !50, !105}
!3489 = !{!3490, !3491, !3492, !3493, !3494}
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3486, file: !319, line: 962, type: !14)
!3491 = !DILocalVariable(name: "s", arg: 2, scope: !3486, file: !319, line: 962, type: !29)
!3492 = !DILocalVariable(name: "arg", arg: 3, scope: !3486, file: !319, line: 963, type: !50)
!3493 = !DILocalVariable(name: "argsize", arg: 4, scope: !3486, file: !319, line: 963, type: !105)
!3494 = !DILocalVariable(name: "o", scope: !3486, file: !319, line: 965, type: !353)
!3495 = !DILocation(line: 0, scope: !3486)
!3496 = !DILocation(line: 965, column: 3, scope: !3486)
!3497 = !DILocation(line: 965, column: 32, scope: !3486)
!3498 = !DILocation(line: 0, scope: !3466, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 965, column: 36, scope: !3486)
!3500 = !DILocation(line: 195, column: 26, scope: !3466, inlinedAt: !3499)
!3501 = !{!3502}
!3502 = distinct !{!3502, !3503, !"quoting_options_from_style: argument 0"}
!3503 = distinct !{!3503, !"quoting_options_from_style"}
!3504 = !DILocation(line: 196, column: 13, scope: !3478, inlinedAt: !3499)
!3505 = !DILocation(line: 196, column: 7, scope: !3466, inlinedAt: !3499)
!3506 = !DILocation(line: 197, column: 5, scope: !3478, inlinedAt: !3499)
!3507 = !DILocation(line: 198, column: 5, scope: !3466, inlinedAt: !3499)
!3508 = !DILocation(line: 198, column: 11, scope: !3466, inlinedAt: !3499)
!3509 = !DILocation(line: 966, column: 10, scope: !3486)
!3510 = !DILocation(line: 967, column: 1, scope: !3486)
!3511 = !DILocation(line: 966, column: 3, scope: !3486)
!3512 = distinct !DISubprogram(name: "quotearg_style", scope: !319, file: !319, line: 970, type: !190, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3513)
!3513 = !{!3514, !3515}
!3514 = !DILocalVariable(name: "s", arg: 1, scope: !3512, file: !319, line: 970, type: !29)
!3515 = !DILocalVariable(name: "arg", arg: 2, scope: !3512, file: !319, line: 970, type: !50)
!3516 = !DILocation(line: 195, column: 26, scope: !3466, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 957, column: 36, scope: !3454, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 972, column: 10, scope: !3512)
!3519 = !DILocation(line: 957, column: 32, scope: !3454, inlinedAt: !3518)
!3520 = !DILocation(line: 0, scope: !3512)
!3521 = !DILocation(line: 0, scope: !3454, inlinedAt: !3518)
!3522 = !DILocation(line: 957, column: 3, scope: !3454, inlinedAt: !3518)
!3523 = !DILocation(line: 0, scope: !3466, inlinedAt: !3517)
!3524 = !{!3525}
!3525 = distinct !{!3525, !3526, !"quoting_options_from_style: argument 0"}
!3526 = distinct !{!3526, !"quoting_options_from_style"}
!3527 = !DILocation(line: 196, column: 13, scope: !3478, inlinedAt: !3517)
!3528 = !DILocation(line: 196, column: 7, scope: !3466, inlinedAt: !3517)
!3529 = !DILocation(line: 197, column: 5, scope: !3478, inlinedAt: !3517)
!3530 = !DILocation(line: 198, column: 5, scope: !3466, inlinedAt: !3517)
!3531 = !DILocation(line: 198, column: 11, scope: !3466, inlinedAt: !3517)
!3532 = !DILocation(line: 958, column: 10, scope: !3454, inlinedAt: !3518)
!3533 = !DILocation(line: 959, column: 1, scope: !3454, inlinedAt: !3518)
!3534 = !DILocation(line: 972, column: 3, scope: !3512)
!3535 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !319, file: !319, line: 976, type: !3536, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!48, !29, !50, !105}
!3538 = !{!3539, !3540, !3541}
!3539 = !DILocalVariable(name: "s", arg: 1, scope: !3535, file: !319, line: 976, type: !29)
!3540 = !DILocalVariable(name: "arg", arg: 2, scope: !3535, file: !319, line: 976, type: !50)
!3541 = !DILocalVariable(name: "argsize", arg: 3, scope: !3535, file: !319, line: 976, type: !105)
!3542 = !DILocation(line: 195, column: 26, scope: !3466, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 965, column: 36, scope: !3486, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 978, column: 10, scope: !3535)
!3545 = !DILocation(line: 965, column: 32, scope: !3486, inlinedAt: !3544)
!3546 = !DILocation(line: 0, scope: !3535)
!3547 = !DILocation(line: 0, scope: !3486, inlinedAt: !3544)
!3548 = !DILocation(line: 965, column: 3, scope: !3486, inlinedAt: !3544)
!3549 = !DILocation(line: 0, scope: !3466, inlinedAt: !3543)
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"quoting_options_from_style: argument 0"}
!3552 = distinct !{!3552, !"quoting_options_from_style"}
!3553 = !DILocation(line: 196, column: 13, scope: !3478, inlinedAt: !3543)
!3554 = !DILocation(line: 196, column: 7, scope: !3466, inlinedAt: !3543)
!3555 = !DILocation(line: 197, column: 5, scope: !3478, inlinedAt: !3543)
!3556 = !DILocation(line: 198, column: 5, scope: !3466, inlinedAt: !3543)
!3557 = !DILocation(line: 198, column: 11, scope: !3466, inlinedAt: !3543)
!3558 = !DILocation(line: 966, column: 10, scope: !3486, inlinedAt: !3544)
!3559 = !DILocation(line: 967, column: 1, scope: !3486, inlinedAt: !3544)
!3560 = !DILocation(line: 978, column: 3, scope: !3535)
!3561 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !319, file: !319, line: 982, type: !3562, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!48, !50, !105, !49}
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DILocalVariable(name: "arg", arg: 1, scope: !3561, file: !319, line: 982, type: !50)
!3566 = !DILocalVariable(name: "argsize", arg: 2, scope: !3561, file: !319, line: 982, type: !105)
!3567 = !DILocalVariable(name: "ch", arg: 3, scope: !3561, file: !319, line: 982, type: !49)
!3568 = !DILocalVariable(name: "options", scope: !3561, file: !319, line: 984, type: !354)
!3569 = !DILocation(line: 0, scope: !3561)
!3570 = !DILocation(line: 984, column: 3, scope: !3561)
!3571 = !DILocation(line: 984, column: 26, scope: !3561)
!3572 = !DILocation(line: 985, column: 13, scope: !3561)
!3573 = !{i64 0, i64 4, !1725, i64 4, i64 4, !1513, i64 8, i64 32, !1725, i64 40, i64 8, !1387, i64 48, i64 8, !1387}
!3574 = !DILocation(line: 0, scope: !2400, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 986, column: 3, scope: !3561)
!3576 = !DILocation(line: 156, column: 62, scope: !2400, inlinedAt: !3575)
!3577 = !DILocation(line: 156, column: 57, scope: !2400, inlinedAt: !3575)
!3578 = !DILocation(line: 157, column: 15, scope: !2400, inlinedAt: !3575)
!3579 = !DILocation(line: 158, column: 12, scope: !2400, inlinedAt: !3575)
!3580 = !DILocation(line: 158, column: 15, scope: !2400, inlinedAt: !3575)
!3581 = !DILocation(line: 158, column: 25, scope: !2400, inlinedAt: !3575)
!3582 = !DILocation(line: 159, column: 18, scope: !2400, inlinedAt: !3575)
!3583 = !DILocation(line: 159, column: 23, scope: !2400, inlinedAt: !3575)
!3584 = !DILocation(line: 159, column: 6, scope: !2400, inlinedAt: !3575)
!3585 = !DILocation(line: 987, column: 10, scope: !3561)
!3586 = !DILocation(line: 988, column: 1, scope: !3561)
!3587 = !DILocation(line: 987, column: 3, scope: !3561)
!3588 = distinct !DISubprogram(name: "quotearg_char", scope: !319, file: !319, line: 991, type: !3589, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!48, !50, !49}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "arg", arg: 1, scope: !3588, file: !319, line: 991, type: !50)
!3593 = !DILocalVariable(name: "ch", arg: 2, scope: !3588, file: !319, line: 991, type: !49)
!3594 = !DILocation(line: 984, column: 26, scope: !3561, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 993, column: 10, scope: !3588)
!3596 = !DILocation(line: 0, scope: !3588)
!3597 = !DILocation(line: 0, scope: !3561, inlinedAt: !3595)
!3598 = !DILocation(line: 984, column: 3, scope: !3561, inlinedAt: !3595)
!3599 = !DILocation(line: 985, column: 13, scope: !3561, inlinedAt: !3595)
!3600 = !DILocation(line: 0, scope: !2400, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 986, column: 3, scope: !3561, inlinedAt: !3595)
!3602 = !DILocation(line: 156, column: 62, scope: !2400, inlinedAt: !3601)
!3603 = !DILocation(line: 156, column: 57, scope: !2400, inlinedAt: !3601)
!3604 = !DILocation(line: 157, column: 15, scope: !2400, inlinedAt: !3601)
!3605 = !DILocation(line: 158, column: 12, scope: !2400, inlinedAt: !3601)
!3606 = !DILocation(line: 158, column: 15, scope: !2400, inlinedAt: !3601)
!3607 = !DILocation(line: 158, column: 25, scope: !2400, inlinedAt: !3601)
!3608 = !DILocation(line: 159, column: 18, scope: !2400, inlinedAt: !3601)
!3609 = !DILocation(line: 159, column: 23, scope: !2400, inlinedAt: !3601)
!3610 = !DILocation(line: 159, column: 6, scope: !2400, inlinedAt: !3601)
!3611 = !DILocation(line: 987, column: 10, scope: !3561, inlinedAt: !3595)
!3612 = !DILocation(line: 988, column: 1, scope: !3561, inlinedAt: !3595)
!3613 = !DILocation(line: 993, column: 3, scope: !3588)
!3614 = distinct !DISubprogram(name: "quotearg_colon", scope: !319, file: !319, line: 997, type: !125, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3615)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "arg", arg: 1, scope: !3614, file: !319, line: 997, type: !50)
!3617 = !DILocation(line: 984, column: 26, scope: !3561, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 993, column: 10, scope: !3588, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 999, column: 10, scope: !3614)
!3620 = !DILocation(line: 0, scope: !3614)
!3621 = !DILocation(line: 0, scope: !3588, inlinedAt: !3619)
!3622 = !DILocation(line: 0, scope: !3561, inlinedAt: !3618)
!3623 = !DILocation(line: 984, column: 3, scope: !3561, inlinedAt: !3618)
!3624 = !DILocation(line: 985, column: 13, scope: !3561, inlinedAt: !3618)
!3625 = !DILocation(line: 0, scope: !2400, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 986, column: 3, scope: !3561, inlinedAt: !3618)
!3627 = !DILocation(line: 156, column: 57, scope: !2400, inlinedAt: !3626)
!3628 = !DILocation(line: 158, column: 12, scope: !2400, inlinedAt: !3626)
!3629 = !DILocation(line: 159, column: 6, scope: !2400, inlinedAt: !3626)
!3630 = !DILocation(line: 987, column: 10, scope: !3561, inlinedAt: !3618)
!3631 = !DILocation(line: 988, column: 1, scope: !3561, inlinedAt: !3618)
!3632 = !DILocation(line: 999, column: 3, scope: !3614)
!3633 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !319, file: !319, line: 1003, type: !3444, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3634)
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "arg", arg: 1, scope: !3633, file: !319, line: 1003, type: !50)
!3636 = !DILocalVariable(name: "argsize", arg: 2, scope: !3633, file: !319, line: 1003, type: !105)
!3637 = !DILocation(line: 984, column: 26, scope: !3561, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1005, column: 10, scope: !3633)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 0, scope: !3561, inlinedAt: !3638)
!3641 = !DILocation(line: 984, column: 3, scope: !3561, inlinedAt: !3638)
!3642 = !DILocation(line: 985, column: 13, scope: !3561, inlinedAt: !3638)
!3643 = !DILocation(line: 0, scope: !2400, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 986, column: 3, scope: !3561, inlinedAt: !3638)
!3645 = !DILocation(line: 156, column: 57, scope: !2400, inlinedAt: !3644)
!3646 = !DILocation(line: 158, column: 12, scope: !2400, inlinedAt: !3644)
!3647 = !DILocation(line: 159, column: 6, scope: !2400, inlinedAt: !3644)
!3648 = !DILocation(line: 987, column: 10, scope: !3561, inlinedAt: !3638)
!3649 = !DILocation(line: 988, column: 1, scope: !3561, inlinedAt: !3638)
!3650 = !DILocation(line: 1005, column: 3, scope: !3633)
!3651 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !319, file: !319, line: 1009, type: !3455, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3652)
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3651, file: !319, line: 1009, type: !14)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3651, file: !319, line: 1009, type: !29)
!3655 = !DILocalVariable(name: "arg", arg: 3, scope: !3651, file: !319, line: 1009, type: !50)
!3656 = !DILocalVariable(name: "options", scope: !3651, file: !319, line: 1011, type: !354)
!3657 = !DILocation(line: 195, column: 26, scope: !3466, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 1012, column: 13, scope: !3651)
!3659 = !DILocation(line: 0, scope: !3651)
!3660 = !DILocation(line: 1011, column: 3, scope: !3651)
!3661 = !DILocation(line: 1011, column: 26, scope: !3651)
!3662 = !DILocation(line: 1012, column: 13, scope: !3651)
!3663 = !DILocation(line: 0, scope: !3466, inlinedAt: !3658)
!3664 = !{!3665}
!3665 = distinct !{!3665, !3666, !"quoting_options_from_style: argument 0"}
!3666 = distinct !{!3666, !"quoting_options_from_style"}
!3667 = !DILocation(line: 196, column: 13, scope: !3478, inlinedAt: !3658)
!3668 = !DILocation(line: 196, column: 7, scope: !3466, inlinedAt: !3658)
!3669 = !DILocation(line: 197, column: 5, scope: !3478, inlinedAt: !3658)
!3670 = !DILocation(line: 0, scope: !2400, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1013, column: 3, scope: !3651)
!3672 = !DILocation(line: 156, column: 57, scope: !2400, inlinedAt: !3671)
!3673 = !DILocation(line: 158, column: 12, scope: !2400, inlinedAt: !3671)
!3674 = !DILocation(line: 159, column: 6, scope: !2400, inlinedAt: !3671)
!3675 = !DILocation(line: 1014, column: 10, scope: !3651)
!3676 = !DILocation(line: 1015, column: 1, scope: !3651)
!3677 = !DILocation(line: 1014, column: 3, scope: !3651)
!3678 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !319, file: !319, line: 1018, type: !3679, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!48, !14, !50, !50, !50}
!3681 = !{!3682, !3683, !3684, !3685}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3678, file: !319, line: 1018, type: !14)
!3683 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3678, file: !319, line: 1018, type: !50)
!3684 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3678, file: !319, line: 1019, type: !50)
!3685 = !DILocalVariable(name: "arg", arg: 4, scope: !3678, file: !319, line: 1019, type: !50)
!3686 = !DILocalVariable(name: "o", scope: !3687, file: !319, line: 1030, type: !354)
!3687 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !319, file: !319, line: 1026, type: !3688, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!48, !14, !50, !50, !50, !105}
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3686}
!3691 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !319, line: 1026, type: !14)
!3692 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3687, file: !319, line: 1026, type: !50)
!3693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3687, file: !319, line: 1027, type: !50)
!3694 = !DILocalVariable(name: "arg", arg: 4, scope: !3687, file: !319, line: 1028, type: !50)
!3695 = !DILocalVariable(name: "argsize", arg: 5, scope: !3687, file: !319, line: 1028, type: !105)
!3696 = !DILocation(line: 1030, column: 26, scope: !3687, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1021, column: 10, scope: !3678)
!3698 = !DILocation(line: 0, scope: !3678)
!3699 = !DILocation(line: 0, scope: !3687, inlinedAt: !3697)
!3700 = !DILocation(line: 1030, column: 3, scope: !3687, inlinedAt: !3697)
!3701 = !DILocation(line: 1030, column: 30, scope: !3687, inlinedAt: !3697)
!3702 = !DILocation(line: 0, scope: !2439, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1031, column: 3, scope: !3687, inlinedAt: !3697)
!3704 = !DILocation(line: 184, column: 6, scope: !2439, inlinedAt: !3703)
!3705 = !DILocation(line: 184, column: 12, scope: !2439, inlinedAt: !3703)
!3706 = !DILocation(line: 185, column: 8, scope: !2453, inlinedAt: !3703)
!3707 = !DILocation(line: 185, column: 23, scope: !2453, inlinedAt: !3703)
!3708 = !DILocation(line: 185, column: 19, scope: !2453, inlinedAt: !3703)
!3709 = !DILocation(line: 186, column: 5, scope: !2453, inlinedAt: !3703)
!3710 = !DILocation(line: 187, column: 6, scope: !2439, inlinedAt: !3703)
!3711 = !DILocation(line: 187, column: 17, scope: !2439, inlinedAt: !3703)
!3712 = !DILocation(line: 188, column: 6, scope: !2439, inlinedAt: !3703)
!3713 = !DILocation(line: 188, column: 18, scope: !2439, inlinedAt: !3703)
!3714 = !DILocation(line: 1032, column: 10, scope: !3687, inlinedAt: !3697)
!3715 = !DILocation(line: 1033, column: 1, scope: !3687, inlinedAt: !3697)
!3716 = !DILocation(line: 1021, column: 3, scope: !3678)
!3717 = !DILocation(line: 0, scope: !3687)
!3718 = !DILocation(line: 1030, column: 3, scope: !3687)
!3719 = !DILocation(line: 1030, column: 26, scope: !3687)
!3720 = !DILocation(line: 1030, column: 30, scope: !3687)
!3721 = !DILocation(line: 0, scope: !2439, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 1031, column: 3, scope: !3687)
!3723 = !DILocation(line: 184, column: 6, scope: !2439, inlinedAt: !3722)
!3724 = !DILocation(line: 184, column: 12, scope: !2439, inlinedAt: !3722)
!3725 = !DILocation(line: 185, column: 8, scope: !2453, inlinedAt: !3722)
!3726 = !DILocation(line: 185, column: 23, scope: !2453, inlinedAt: !3722)
!3727 = !DILocation(line: 185, column: 19, scope: !2453, inlinedAt: !3722)
!3728 = !DILocation(line: 186, column: 5, scope: !2453, inlinedAt: !3722)
!3729 = !DILocation(line: 187, column: 6, scope: !2439, inlinedAt: !3722)
!3730 = !DILocation(line: 187, column: 17, scope: !2439, inlinedAt: !3722)
!3731 = !DILocation(line: 188, column: 6, scope: !2439, inlinedAt: !3722)
!3732 = !DILocation(line: 188, column: 18, scope: !2439, inlinedAt: !3722)
!3733 = !DILocation(line: 1032, column: 10, scope: !3687)
!3734 = !DILocation(line: 1033, column: 1, scope: !3687)
!3735 = !DILocation(line: 1032, column: 3, scope: !3687)
!3736 = distinct !DISubprogram(name: "quotearg_custom", scope: !319, file: !319, line: 1036, type: !3737, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!48, !50, !50, !50}
!3739 = !{!3740, !3741, !3742}
!3740 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3736, file: !319, line: 1036, type: !50)
!3741 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3736, file: !319, line: 1036, type: !50)
!3742 = !DILocalVariable(name: "arg", arg: 3, scope: !3736, file: !319, line: 1037, type: !50)
!3743 = !DILocation(line: 1030, column: 26, scope: !3687, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 1021, column: 10, scope: !3678, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 1039, column: 10, scope: !3736)
!3746 = !DILocation(line: 0, scope: !3736)
!3747 = !DILocation(line: 0, scope: !3678, inlinedAt: !3745)
!3748 = !DILocation(line: 0, scope: !3687, inlinedAt: !3744)
!3749 = !DILocation(line: 1030, column: 3, scope: !3687, inlinedAt: !3744)
!3750 = !DILocation(line: 1030, column: 30, scope: !3687, inlinedAt: !3744)
!3751 = !DILocation(line: 0, scope: !2439, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1031, column: 3, scope: !3687, inlinedAt: !3744)
!3753 = !DILocation(line: 184, column: 6, scope: !2439, inlinedAt: !3752)
!3754 = !DILocation(line: 184, column: 12, scope: !2439, inlinedAt: !3752)
!3755 = !DILocation(line: 185, column: 8, scope: !2453, inlinedAt: !3752)
!3756 = !DILocation(line: 185, column: 23, scope: !2453, inlinedAt: !3752)
!3757 = !DILocation(line: 185, column: 19, scope: !2453, inlinedAt: !3752)
!3758 = !DILocation(line: 186, column: 5, scope: !2453, inlinedAt: !3752)
!3759 = !DILocation(line: 187, column: 6, scope: !2439, inlinedAt: !3752)
!3760 = !DILocation(line: 187, column: 17, scope: !2439, inlinedAt: !3752)
!3761 = !DILocation(line: 188, column: 6, scope: !2439, inlinedAt: !3752)
!3762 = !DILocation(line: 188, column: 18, scope: !2439, inlinedAt: !3752)
!3763 = !DILocation(line: 1032, column: 10, scope: !3687, inlinedAt: !3744)
!3764 = !DILocation(line: 1033, column: 1, scope: !3687, inlinedAt: !3744)
!3765 = !DILocation(line: 1039, column: 3, scope: !3736)
!3766 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !319, file: !319, line: 1043, type: !3767, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!48, !50, !50, !50, !105}
!3769 = !{!3770, !3771, !3772, !3773}
!3770 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3766, file: !319, line: 1043, type: !50)
!3771 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3766, file: !319, line: 1043, type: !50)
!3772 = !DILocalVariable(name: "arg", arg: 3, scope: !3766, file: !319, line: 1044, type: !50)
!3773 = !DILocalVariable(name: "argsize", arg: 4, scope: !3766, file: !319, line: 1044, type: !105)
!3774 = !DILocation(line: 1030, column: 26, scope: !3687, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1046, column: 10, scope: !3766)
!3776 = !DILocation(line: 0, scope: !3766)
!3777 = !DILocation(line: 0, scope: !3687, inlinedAt: !3775)
!3778 = !DILocation(line: 1030, column: 3, scope: !3687, inlinedAt: !3775)
!3779 = !DILocation(line: 1030, column: 30, scope: !3687, inlinedAt: !3775)
!3780 = !DILocation(line: 0, scope: !2439, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1031, column: 3, scope: !3687, inlinedAt: !3775)
!3782 = !DILocation(line: 184, column: 6, scope: !2439, inlinedAt: !3781)
!3783 = !DILocation(line: 184, column: 12, scope: !2439, inlinedAt: !3781)
!3784 = !DILocation(line: 185, column: 8, scope: !2453, inlinedAt: !3781)
!3785 = !DILocation(line: 185, column: 23, scope: !2453, inlinedAt: !3781)
!3786 = !DILocation(line: 185, column: 19, scope: !2453, inlinedAt: !3781)
!3787 = !DILocation(line: 186, column: 5, scope: !2453, inlinedAt: !3781)
!3788 = !DILocation(line: 187, column: 6, scope: !2439, inlinedAt: !3781)
!3789 = !DILocation(line: 187, column: 17, scope: !2439, inlinedAt: !3781)
!3790 = !DILocation(line: 188, column: 6, scope: !2439, inlinedAt: !3781)
!3791 = !DILocation(line: 188, column: 18, scope: !2439, inlinedAt: !3781)
!3792 = !DILocation(line: 1032, column: 10, scope: !3687, inlinedAt: !3775)
!3793 = !DILocation(line: 1033, column: 1, scope: !3687, inlinedAt: !3775)
!3794 = !DILocation(line: 1046, column: 3, scope: !3766)
!3795 = distinct !DISubprogram(name: "quote_n_mem", scope: !319, file: !319, line: 1061, type: !3796, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!50, !14, !50, !105}
!3798 = !{!3799, !3800, !3801}
!3799 = !DILocalVariable(name: "n", arg: 1, scope: !3795, file: !319, line: 1061, type: !14)
!3800 = !DILocalVariable(name: "arg", arg: 2, scope: !3795, file: !319, line: 1061, type: !50)
!3801 = !DILocalVariable(name: "argsize", arg: 3, scope: !3795, file: !319, line: 1061, type: !105)
!3802 = !DILocation(line: 0, scope: !3795)
!3803 = !DILocation(line: 1063, column: 10, scope: !3795)
!3804 = !DILocation(line: 1063, column: 3, scope: !3795)
!3805 = distinct !DISubprogram(name: "quote_mem", scope: !319, file: !319, line: 1067, type: !3806, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!50, !50, !105}
!3808 = !{!3809, !3810}
!3809 = !DILocalVariable(name: "arg", arg: 1, scope: !3805, file: !319, line: 1067, type: !50)
!3810 = !DILocalVariable(name: "argsize", arg: 2, scope: !3805, file: !319, line: 1067, type: !105)
!3811 = !DILocation(line: 0, scope: !3805)
!3812 = !DILocation(line: 0, scope: !3795, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 1069, column: 10, scope: !3805)
!3814 = !DILocation(line: 1063, column: 10, scope: !3795, inlinedAt: !3813)
!3815 = !DILocation(line: 1069, column: 3, scope: !3805)
!3816 = distinct !DISubprogram(name: "quote_n", scope: !319, file: !319, line: 1073, type: !3817, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!50, !14, !50}
!3819 = !{!3820, !3821}
!3820 = !DILocalVariable(name: "n", arg: 1, scope: !3816, file: !319, line: 1073, type: !14)
!3821 = !DILocalVariable(name: "arg", arg: 2, scope: !3816, file: !319, line: 1073, type: !50)
!3822 = !DILocation(line: 0, scope: !3816)
!3823 = !DILocation(line: 0, scope: !3795, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1075, column: 10, scope: !3816)
!3825 = !DILocation(line: 1063, column: 10, scope: !3795, inlinedAt: !3824)
!3826 = !DILocation(line: 1075, column: 3, scope: !3816)
!3827 = distinct !DISubprogram(name: "quote", scope: !319, file: !319, line: 1079, type: !159, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3828)
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "arg", arg: 1, scope: !3827, file: !319, line: 1079, type: !50)
!3830 = !DILocation(line: 0, scope: !3827)
!3831 = !DILocation(line: 0, scope: !3816, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 1081, column: 10, scope: !3827)
!3833 = !DILocation(line: 0, scope: !3795, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 1075, column: 10, scope: !3816, inlinedAt: !3832)
!3835 = !DILocation(line: 1063, column: 10, scope: !3795, inlinedAt: !3834)
!3836 = !DILocation(line: 1081, column: 3, scope: !3827)
!3837 = distinct !DISubprogram(name: "savewd_init", scope: !6, file: !6, line: 79, type: !3838, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3841)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3840}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!3841 = !{!3842}
!3842 = !DILocalVariable(name: "wd", arg: 1, scope: !3837, file: !6, line: 79, type: !3840)
!3843 = !DILocation(line: 0, scope: !3837)
!3844 = !DILocation(line: 81, column: 7, scope: !3837)
!3845 = !DILocation(line: 81, column: 13, scope: !3837)
!3846 = !DILocation(line: 82, column: 1, scope: !3837)
!3847 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 124, type: !3848, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3852)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!14, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!3852 = !{!3853}
!3853 = !DILocalVariable(name: "wd", arg: 1, scope: !3847, file: !6, line: 124, type: !3850)
!3854 = !DILocation(line: 0, scope: !3847)
!3855 = !DILocation(line: 126, column: 15, scope: !3847)
!3856 = !DILocation(line: 126, column: 21, scope: !3847)
!3857 = !DILocation(line: 126, column: 11, scope: !3847)
!3858 = !DILocation(line: 126, column: 46, scope: !3847)
!3859 = !DILocation(line: 126, column: 3, scope: !3847)
!3860 = distinct !DISubprogram(name: "savewd_chdir", scope: !622, file: !622, line: 106, type: !3861, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!14, !3840, !50, !14, !147}
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3864 = !DILocalVariable(name: "wd", arg: 1, scope: !3860, file: !622, line: 106, type: !3840)
!3865 = !DILocalVariable(name: "dir", arg: 2, scope: !3860, file: !622, line: 106, type: !50)
!3866 = !DILocalVariable(name: "options", arg: 3, scope: !3860, file: !622, line: 106, type: !14)
!3867 = !DILocalVariable(name: "open_result", arg: 4, scope: !3860, file: !622, line: 107, type: !147)
!3868 = !DILocalVariable(name: "fd", scope: !3860, file: !622, line: 109, type: !14)
!3869 = !DILocalVariable(name: "result", scope: !3860, file: !622, line: 110, type: !14)
!3870 = !DILocalVariable(name: "e", scope: !3871, file: !622, line: 166, type: !14)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !622, line: 165, column: 5)
!3872 = distinct !DILexicalBlock(scope: !3860, file: !622, line: 164, column: 7)
!3873 = !DILocation(line: 0, scope: !3860)
!3874 = !DILocation(line: 114, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3860, file: !622, line: 114, column: 7)
!3876 = !DILocation(line: 115, column: 7, scope: !3875)
!3877 = !DILocation(line: 115, column: 19, scope: !3875)
!3878 = !DILocation(line: 119, column: 22, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !622, line: 116, column: 5)
!3880 = !DILocation(line: 119, column: 19, scope: !3879)
!3881 = !DILocation(line: 117, column: 12, scope: !3879)
!3882 = !DILocation(line: 121, column: 11, scope: !3879)
!3883 = !DILocation(line: 123, column: 26, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !622, line: 122, column: 9)
!3885 = distinct !DILexicalBlock(scope: !3879, file: !622, line: 121, column: 11)
!3886 = !DILocation(line: 124, column: 28, scope: !3884)
!3887 = !DILocation(line: 124, column: 11, scope: !3884)
!3888 = !DILocation(line: 124, column: 26, scope: !3884)
!3889 = !DILocation(line: 125, column: 9, scope: !3884)
!3890 = !DILocation(line: 127, column: 14, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3879, file: !622, line: 127, column: 11)
!3892 = !DILocation(line: 127, column: 18, scope: !3891)
!3893 = !DILocation(line: 127, column: 21, scope: !3891)
!3894 = !DILocation(line: 127, column: 27, scope: !3891)
!3895 = !DILocation(line: 131, column: 44, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3860, file: !622, line: 131, column: 7)
!3897 = !DILocation(line: 131, column: 33, scope: !3896)
!3898 = !DILocalVariable(name: "wd", arg: 1, scope: !3899, file: !622, line: 51, type: !3840)
!3899 = distinct !DISubprogram(name: "savewd_save", scope: !622, file: !622, line: 51, type: !3900, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!174, !3840}
!3902 = !{!3898, !3903}
!3903 = !DILocalVariable(name: "fd", scope: !3904, file: !622, line: 58, type: !14)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !622, line: 57, column: 7)
!3905 = distinct !DILexicalBlock(scope: !3899, file: !622, line: 54, column: 5)
!3906 = !DILocation(line: 0, scope: !3899, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 133, column: 11, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !622, line: 133, column: 11)
!3909 = distinct !DILexicalBlock(scope: !3896, file: !622, line: 132, column: 5)
!3910 = !DILocation(line: 53, column: 15, scope: !3899, inlinedAt: !3907)
!3911 = !DILocation(line: 53, column: 3, scope: !3899, inlinedAt: !3907)
!3912 = !DILocation(line: 58, column: 18, scope: !3904, inlinedAt: !3907)
!3913 = !DILocation(line: 0, scope: !3904, inlinedAt: !3907)
!3914 = !DILocation(line: 59, column: 15, scope: !3915, inlinedAt: !3907)
!3915 = distinct !DILexicalBlock(scope: !3904, file: !622, line: 59, column: 13)
!3916 = !DILocation(line: 59, column: 13, scope: !3904, inlinedAt: !3907)
!3917 = !DILocation(line: 61, column: 23, scope: !3918, inlinedAt: !3907)
!3918 = distinct !DILexicalBlock(scope: !3915, file: !622, line: 60, column: 11)
!3919 = !DILocation(line: 62, column: 21, scope: !3918, inlinedAt: !3907)
!3920 = !DILocation(line: 62, column: 24, scope: !3918, inlinedAt: !3907)
!3921 = !DILocation(line: 65, column: 13, scope: !3922, inlinedAt: !3907)
!3922 = distinct !DILexicalBlock(scope: !3904, file: !622, line: 65, column: 13)
!3923 = !DILocation(line: 65, column: 29, scope: !3922, inlinedAt: !3907)
!3924 = !DILocation(line: 67, column: 23, scope: !3925, inlinedAt: !3907)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !622, line: 66, column: 11)
!3926 = !DILocation(line: 68, column: 21, scope: !3925, inlinedAt: !3907)
!3927 = !DILocation(line: 68, column: 28, scope: !3925, inlinedAt: !3907)
!3928 = !DILocation(line: 72, column: 17, scope: !3905, inlinedAt: !3907)
!3929 = !DILocation(line: 73, column: 15, scope: !3905, inlinedAt: !3907)
!3930 = !DILocation(line: 73, column: 21, scope: !3905, inlinedAt: !3907)
!3931 = !DILocation(line: 76, column: 11, scope: !3905, inlinedAt: !3907)
!3932 = !DILocation(line: 0, scope: !3933, inlinedAt: !3907)
!3933 = distinct !DILexicalBlock(scope: !3905, file: !622, line: 76, column: 11)
!3934 = !DILocation(line: 76, column: 19, scope: !3933, inlinedAt: !3907)
!3935 = !DILocation(line: 81, column: 27, scope: !3936, inlinedAt: !3907)
!3936 = distinct !DILexicalBlock(scope: !3933, file: !622, line: 77, column: 9)
!3937 = !DILocation(line: 81, column: 25, scope: !3936, inlinedAt: !3907)
!3938 = !DILocation(line: 82, column: 29, scope: !3939, inlinedAt: !3907)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !622, line: 82, column: 15)
!3940 = !DILocation(line: 82, column: 15, scope: !3936, inlinedAt: !3907)
!3941 = !DILocation(line: 84, column: 21, scope: !3942, inlinedAt: !3907)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !622, line: 84, column: 19)
!3943 = distinct !DILexicalBlock(scope: !3939, file: !622, line: 83, column: 13)
!3944 = !DILocation(line: 84, column: 19, scope: !3943, inlinedAt: !3907)
!3945 = !DILocation(line: 86, column: 25, scope: !3943, inlinedAt: !3907)
!3946 = !DILocation(line: 87, column: 32, scope: !3943, inlinedAt: !3907)
!3947 = !DILocation(line: 87, column: 30, scope: !3943, inlinedAt: !3907)
!3948 = !DILocation(line: 88, column: 13, scope: !3943, inlinedAt: !3907)
!3949 = !DILocation(line: 99, column: 7, scope: !3950, inlinedAt: !3907)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !622, line: 99, column: 7)
!3951 = distinct !DILexicalBlock(scope: !3905, file: !622, line: 99, column: 7)
!3952 = !DILocation(line: 140, column: 24, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3908, file: !622, line: 139, column: 9)
!3954 = !DILocation(line: 140, column: 21, scope: !3953)
!3955 = !DILocation(line: 140, column: 30, scope: !3953)
!3956 = !DILocation(line: 140, column: 44, scope: !3953)
!3957 = !DILocation(line: 142, column: 22, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3953, file: !622, line: 142, column: 15)
!3959 = !DILocation(line: 142, column: 15, scope: !3953)
!3960 = !DILocation(line: 143, column: 25, scope: !3958)
!3961 = !DILocation(line: 143, column: 13, scope: !3958)
!3962 = !DILocation(line: 146, column: 27, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3958, file: !622, line: 144, column: 15)
!3964 = !DILocation(line: 147, column: 17, scope: !3963)
!3965 = !DILocation(line: 155, column: 17, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !622, line: 155, column: 17)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !622, line: 155, column: 17)
!3968 = !DILocation(line: 155, column: 17, scope: !3967)
!3969 = !DILocation(line: 159, column: 17, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !622, line: 159, column: 17)
!3971 = distinct !DILexicalBlock(scope: !3963, file: !622, line: 159, column: 17)
!3972 = !DILocation(line: 164, column: 9, scope: !3872)
!3973 = !DILocation(line: 164, column: 20, scope: !3872)
!3974 = !DILocation(line: 164, column: 15, scope: !3872)
!3975 = !DILocation(line: 166, column: 15, scope: !3871)
!3976 = !DILocation(line: 0, scope: !3871)
!3977 = !DILocation(line: 167, column: 7, scope: !3871)
!3978 = !DILocation(line: 168, column: 13, scope: !3871)
!3979 = !DILocation(line: 169, column: 5, scope: !3871)
!3980 = !DILocation(line: 171, column: 3, scope: !3860)
!3981 = distinct !DISubprogram(name: "savewd_restore", scope: !622, file: !622, line: 175, type: !3982, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3984)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!14, !3840, !14}
!3984 = !{!3985, !3986, !3987, !3991, !3993}
!3985 = !DILocalVariable(name: "wd", arg: 1, scope: !3981, file: !622, line: 175, type: !3840)
!3986 = !DILocalVariable(name: "status", arg: 2, scope: !3981, file: !622, line: 175, type: !14)
!3987 = !DILocalVariable(name: "chdir_errno", scope: !3988, file: !622, line: 194, type: !14)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !622, line: 193, column: 9)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !622, line: 187, column: 11)
!3990 = distinct !DILexicalBlock(scope: !3981, file: !622, line: 178, column: 5)
!3991 = !DILocalVariable(name: "child", scope: !3992, file: !622, line: 209, type: !17)
!3992 = distinct !DILexicalBlock(scope: !3990, file: !622, line: 208, column: 7)
!3993 = !DILocalVariable(name: "child_status", scope: !3994, file: !622, line: 214, type: !14)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !622, line: 213, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3992, file: !622, line: 212, column: 13)
!3996 = !DILocation(line: 0, scope: !3981)
!3997 = !DILocation(line: 177, column: 15, scope: !3981)
!3998 = !DILocation(line: 177, column: 3, scope: !3981)
!3999 = !DILocation(line: 0, scope: !3990)
!4000 = !DILocation(line: 202, column: 23, scope: !3990)
!4001 = !DILocation(line: 202, column: 7, scope: !3990)
!4002 = !DILocation(line: 187, column: 27, scope: !3989)
!4003 = !DILocation(line: 187, column: 11, scope: !3989)
!4004 = !DILocation(line: 187, column: 31, scope: !3989)
!4005 = !DILocation(line: 187, column: 11, scope: !3990)
!4006 = !DILocation(line: 189, column: 21, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3989, file: !622, line: 188, column: 9)
!4008 = !DILocation(line: 190, column: 11, scope: !4007)
!4009 = !DILocation(line: 194, column: 29, scope: !3988)
!4010 = !DILocation(line: 0, scope: !3988)
!4011 = !DILocation(line: 195, column: 26, scope: !3988)
!4012 = !DILocation(line: 195, column: 11, scope: !3988)
!4013 = !DILocation(line: 196, column: 21, scope: !3988)
!4014 = !DILocation(line: 197, column: 26, scope: !3988)
!4015 = !DILocation(line: 199, column: 7, scope: !3990)
!4016 = !DILocation(line: 202, column: 13, scope: !3990)
!4017 = !DILocation(line: 203, column: 7, scope: !3990)
!4018 = !DILocation(line: 209, column: 31, scope: !3992)
!4019 = !DILocation(line: 0, scope: !3992)
!4020 = !DILocation(line: 210, column: 19, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3992, file: !622, line: 210, column: 13)
!4022 = !DILocation(line: 210, column: 13, scope: !3992)
!4023 = !DILocation(line: 211, column: 11, scope: !4021)
!4024 = !DILocation(line: 212, column: 15, scope: !3995)
!4025 = !DILocation(line: 212, column: 13, scope: !3992)
!4026 = !DILocation(line: 214, column: 13, scope: !3994)
!4027 = !DILocation(line: 215, column: 13, scope: !3994)
!4028 = !DILocation(line: 0, scope: !3994)
!4029 = !DILocation(line: 215, column: 20, scope: !3994)
!4030 = !DILocation(line: 215, column: 54, scope: !3994)
!4031 = !DILocation(line: 216, column: 15, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !622, line: 216, column: 15)
!4033 = distinct !DILexicalBlock(scope: !3994, file: !622, line: 216, column: 15)
!4034 = !DILocation(line: 216, column: 15, scope: !4033)
!4035 = distinct !{!4035, !4027, !4036}
!4036 = !DILocation(line: 216, column: 15, scope: !3994)
!4037 = !DILocation(line: 217, column: 27, scope: !3994)
!4038 = !DILocation(line: 218, column: 19, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3994, file: !622, line: 218, column: 17)
!4040 = !DILocation(line: 218, column: 17, scope: !3994)
!4041 = !DILocation(line: 219, column: 15, scope: !4039)
!4042 = !DILocation(line: 220, column: 20, scope: !3994)
!4043 = !DILocation(line: 221, column: 11, scope: !3995)
!4044 = !DILocation(line: 226, column: 7, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !622, line: 226, column: 7)
!4046 = distinct !DILexicalBlock(scope: !3990, file: !622, line: 226, column: 7)
!4047 = !DILocation(line: 230, column: 1, scope: !3981)
!4048 = distinct !DISubprogram(name: "savewd_finish", scope: !622, file: !622, line: 233, type: !3838, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !4049)
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "wd", arg: 1, scope: !4048, file: !622, line: 233, type: !3840)
!4051 = !DILocation(line: 0, scope: !4048)
!4052 = !DILocation(line: 235, column: 15, scope: !4048)
!4053 = !DILocation(line: 235, column: 3, scope: !4048)
!4054 = !DILocation(line: 243, column: 22, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4048, file: !622, line: 236, column: 5)
!4056 = !DILocation(line: 243, column: 7, scope: !4055)
!4057 = !DILocation(line: 244, column: 7, scope: !4055)
!4058 = !DILocation(line: 247, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !622, line: 247, column: 7)
!4060 = distinct !DILexicalBlock(scope: !4055, file: !622, line: 247, column: 7)
!4061 = !DILocation(line: 247, column: 7, scope: !4060)
!4062 = !DILocation(line: 251, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !622, line: 251, column: 7)
!4064 = distinct !DILexicalBlock(scope: !4055, file: !622, line: 251, column: 7)
!4065 = !DILocation(line: 254, column: 13, scope: !4048)
!4066 = !DILocation(line: 255, column: 1, scope: !4048)
!4067 = distinct !DISubprogram(name: "savewd_process_files", scope: !622, file: !622, line: 274, type: !4068, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !4073)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!14, !14, !184, !4070, !103}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!14, !48, !3840, !103}
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4088, !4091}
!4074 = !DILocalVariable(name: "n_files", arg: 1, scope: !4067, file: !622, line: 274, type: !14)
!4075 = !DILocalVariable(name: "file", arg: 2, scope: !4067, file: !622, line: 274, type: !184)
!4076 = !DILocalVariable(name: "act", arg: 3, scope: !4067, file: !622, line: 275, type: !4070)
!4077 = !DILocalVariable(name: "options", arg: 4, scope: !4067, file: !622, line: 276, type: !103)
!4078 = !DILocalVariable(name: "i", scope: !4067, file: !622, line: 278, type: !14)
!4079 = !DILocalVariable(name: "last_relative", scope: !4067, file: !622, line: 279, type: !14)
!4080 = !DILocalVariable(name: "exit_status", scope: !4067, file: !622, line: 280, type: !14)
!4081 = !DILocalVariable(name: "wd", scope: !4067, file: !622, line: 281, type: !625)
!4082 = !DILocalVariable(name: "s", scope: !4083, file: !622, line: 292, type: !14)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !622, line: 291, column: 9)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !622, line: 290, column: 11)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !622, line: 289, column: 5)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !622, line: 288, column: 3)
!4087 = distinct !DILexicalBlock(scope: !4067, file: !622, line: 288, column: 3)
!4088 = !DILocalVariable(name: "r", scope: !4089, file: !622, line: 299, type: !14)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !622, line: 298, column: 9)
!4090 = distinct !DILexicalBlock(scope: !4085, file: !622, line: 297, column: 11)
!4091 = !DILocalVariable(name: "s", scope: !4092, file: !622, line: 309, type: !14)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !622, line: 308, column: 5)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !622, line: 307, column: 3)
!4094 = distinct !DILexicalBlock(scope: !4067, file: !622, line: 307, column: 3)
!4095 = !DILocation(line: 0, scope: !4067)
!4096 = !DILocation(line: 281, column: 3, scope: !4067)
!4097 = !DILocation(line: 281, column: 17, scope: !4067)
!4098 = !DILocation(line: 0, scope: !3837, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 282, column: 3, scope: !4067)
!4100 = !DILocation(line: 81, column: 7, scope: !3837, inlinedAt: !4099)
!4101 = !DILocation(line: 81, column: 13, scope: !3837, inlinedAt: !4099)
!4102 = !DILocation(line: 284, column: 8, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4067, file: !622, line: 284, column: 3)
!4104 = !DILocation(line: 0, scope: !4103)
!4105 = !DILocation(line: 284, column: 39, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4103, file: !622, line: 284, column: 3)
!4107 = !DILocation(line: 284, column: 3, scope: !4103)
!4108 = !DILocation(line: 285, column: 11, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !622, line: 285, column: 9)
!4110 = !DILocation(line: 285, column: 9, scope: !4106)
!4111 = distinct !{!4111, !4107, !4112}
!4112 = !DILocation(line: 286, column: 7, scope: !4103)
!4113 = !DILocation(line: 288, column: 12, scope: !4086)
!4114 = !DILocation(line: 288, column: 3, scope: !4087)
!4115 = !DILocation(line: 0, scope: !4116, inlinedAt: !4121)
!4116 = distinct !DISubprogram(name: "savewd_delegating", scope: !622, file: !622, line: 268, type: !4117, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!174, !3850}
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "wd", arg: 1, scope: !4116, file: !622, line: 268, type: !3850)
!4121 = distinct !DILocation(line: 290, column: 13, scope: !4084)
!4122 = !DILocation(line: 270, column: 52, scope: !4116, inlinedAt: !4121)
!4123 = !DILocation(line: 270, column: 20, scope: !4116, inlinedAt: !4121)
!4124 = !DILocation(line: 270, column: 42, scope: !4116, inlinedAt: !4121)
!4125 = !DILocation(line: 270, column: 37, scope: !4116, inlinedAt: !4121)
!4126 = !DILocation(line: 292, column: 24, scope: !4083)
!4127 = !DILocation(line: 292, column: 19, scope: !4083)
!4128 = !DILocation(line: 0, scope: !4083)
!4129 = !DILocation(line: 293, column: 27, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4083, file: !622, line: 293, column: 15)
!4131 = !DILocation(line: 293, column: 15, scope: !4083)
!4132 = !DILocation(line: 295, column: 9, scope: !4083)
!4133 = !DILocation(line: 297, column: 13, scope: !4090)
!4134 = !DILocation(line: 297, column: 11, scope: !4085)
!4135 = !DILocation(line: 299, column: 19, scope: !4089)
!4136 = !DILocation(line: 0, scope: !4089)
!4137 = !DILocation(line: 300, column: 27, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4089, file: !622, line: 300, column: 15)
!4139 = !DILocation(line: 300, column: 15, scope: !4089)
!4140 = !DILocation(line: 302, column: 9, scope: !4089)
!4141 = distinct !{!4141, !4114, !4142}
!4142 = !DILocation(line: 303, column: 5, scope: !4087)
!4143 = !DILocation(line: 0, scope: !4048, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 305, column: 3, scope: !4067)
!4145 = !DILocation(line: 235, column: 3, scope: !4048, inlinedAt: !4144)
!4146 = !DILocation(line: 243, column: 22, scope: !4055, inlinedAt: !4144)
!4147 = !DILocation(line: 243, column: 7, scope: !4055, inlinedAt: !4144)
!4148 = !DILocation(line: 244, column: 7, scope: !4055, inlinedAt: !4144)
!4149 = !DILocation(line: 247, column: 7, scope: !4059, inlinedAt: !4144)
!4150 = !DILocation(line: 247, column: 7, scope: !4060, inlinedAt: !4144)
!4151 = !DILocation(line: 251, column: 7, scope: !4063, inlinedAt: !4144)
!4152 = !DILocation(line: 254, column: 13, scope: !4048, inlinedAt: !4144)
!4153 = !DILocation(line: 307, column: 12, scope: !4093)
!4154 = !DILocation(line: 307, column: 3, scope: !4094)
!4155 = !DILocation(line: 309, column: 20, scope: !4092)
!4156 = !DILocation(line: 309, column: 15, scope: !4092)
!4157 = !DILocation(line: 0, scope: !4092)
!4158 = !DILocation(line: 310, column: 23, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4092, file: !622, line: 310, column: 11)
!4160 = !DILocation(line: 310, column: 11, scope: !4092)
!4161 = !DILocation(line: 307, column: 24, scope: !4093)
!4162 = distinct !{!4162, !4154, !4163}
!4163 = !DILocation(line: 312, column: 5, scope: !4094)
!4164 = !DILocation(line: 315, column: 1, scope: !4067)
!4165 = !DILocation(line: 314, column: 3, scope: !4067)
!4166 = distinct !DISubprogram(name: "version_etc_arn", scope: !651, file: !651, line: 61, type: !4167, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4172)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{null, !4169, !50, !50, !50, !4171, !105}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !661)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178}
!4173 = !DILocalVariable(name: "stream", arg: 1, scope: !4166, file: !651, line: 61, type: !4169)
!4174 = !DILocalVariable(name: "command_name", arg: 2, scope: !4166, file: !651, line: 62, type: !50)
!4175 = !DILocalVariable(name: "package", arg: 3, scope: !4166, file: !651, line: 62, type: !50)
!4176 = !DILocalVariable(name: "version", arg: 4, scope: !4166, file: !651, line: 63, type: !50)
!4177 = !DILocalVariable(name: "authors", arg: 5, scope: !4166, file: !651, line: 64, type: !4171)
!4178 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4166, file: !651, line: 64, type: !105)
!4179 = !DILocation(line: 0, scope: !4166)
!4180 = !DILocation(line: 66, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4166, file: !651, line: 66, column: 7)
!4182 = !DILocation(line: 66, column: 7, scope: !4166)
!4183 = !DILocation(line: 67, column: 5, scope: !4181)
!4184 = !DILocation(line: 69, column: 5, scope: !4181)
!4185 = !DILocation(line: 83, column: 3, scope: !4166)
!4186 = !DILocation(line: 85, column: 3, scope: !4166)
!4187 = !DILocation(line: 88, column: 3, scope: !4166)
!4188 = !DILocation(line: 95, column: 3, scope: !4166)
!4189 = !DILocation(line: 97, column: 3, scope: !4166)
!4190 = !DILocation(line: 105, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4166, file: !651, line: 98, column: 5)
!4192 = !DILocation(line: 106, column: 7, scope: !4191)
!4193 = !DILocation(line: 109, column: 7, scope: !4191)
!4194 = !DILocation(line: 110, column: 7, scope: !4191)
!4195 = !DILocation(line: 113, column: 7, scope: !4191)
!4196 = !DILocation(line: 115, column: 7, scope: !4191)
!4197 = !DILocation(line: 120, column: 7, scope: !4191)
!4198 = !DILocation(line: 122, column: 7, scope: !4191)
!4199 = !DILocation(line: 127, column: 7, scope: !4191)
!4200 = !DILocation(line: 129, column: 7, scope: !4191)
!4201 = !DILocation(line: 134, column: 7, scope: !4191)
!4202 = !DILocation(line: 137, column: 7, scope: !4191)
!4203 = !DILocation(line: 142, column: 7, scope: !4191)
!4204 = !DILocation(line: 145, column: 7, scope: !4191)
!4205 = !DILocation(line: 150, column: 7, scope: !4191)
!4206 = !DILocation(line: 154, column: 7, scope: !4191)
!4207 = !DILocation(line: 159, column: 7, scope: !4191)
!4208 = !DILocation(line: 163, column: 7, scope: !4191)
!4209 = !DILocation(line: 170, column: 7, scope: !4191)
!4210 = !DILocation(line: 174, column: 7, scope: !4191)
!4211 = !DILocation(line: 176, column: 1, scope: !4166)
!4212 = distinct !DISubprogram(name: "version_etc_ar", scope: !651, file: !651, line: 183, type: !4213, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4169, !50, !50, !50, !4171}
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221}
!4216 = !DILocalVariable(name: "stream", arg: 1, scope: !4212, file: !651, line: 183, type: !4169)
!4217 = !DILocalVariable(name: "command_name", arg: 2, scope: !4212, file: !651, line: 184, type: !50)
!4218 = !DILocalVariable(name: "package", arg: 3, scope: !4212, file: !651, line: 184, type: !50)
!4219 = !DILocalVariable(name: "version", arg: 4, scope: !4212, file: !651, line: 185, type: !50)
!4220 = !DILocalVariable(name: "authors", arg: 5, scope: !4212, file: !651, line: 185, type: !4171)
!4221 = !DILocalVariable(name: "n_authors", scope: !4212, file: !651, line: 187, type: !105)
!4222 = !DILocation(line: 0, scope: !4212)
!4223 = !DILocation(line: 189, column: 8, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4212, file: !651, line: 189, column: 3)
!4225 = !DILocation(line: 0, scope: !4224)
!4226 = !DILocation(line: 189, column: 23, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4224, file: !651, line: 189, column: 3)
!4228 = !DILocation(line: 189, column: 3, scope: !4224)
!4229 = !DILocation(line: 189, column: 52, scope: !4227)
!4230 = distinct !{!4230, !4228, !4231}
!4231 = !DILocation(line: 190, column: 5, scope: !4224)
!4232 = !DILocation(line: 191, column: 3, scope: !4212)
!4233 = !DILocation(line: 192, column: 1, scope: !4212)
!4234 = distinct !DISubprogram(name: "version_etc_va", scope: !651, file: !651, line: 199, type: !4235, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4244)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{null, !4169, !50, !50, !50, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !651, line: 192, size: 192, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4238, file: !651, line: 192, baseType: !21, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4238, file: !651, line: 192, baseType: !21, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4238, file: !651, line: 192, baseType: !103, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4238, file: !651, line: 192, baseType: !103, size: 64, offset: 128)
!4244 = !{!4245, !4246, !4247, !4248, !4249, !4250, !4251}
!4245 = !DILocalVariable(name: "stream", arg: 1, scope: !4234, file: !651, line: 199, type: !4169)
!4246 = !DILocalVariable(name: "command_name", arg: 2, scope: !4234, file: !651, line: 200, type: !50)
!4247 = !DILocalVariable(name: "package", arg: 3, scope: !4234, file: !651, line: 200, type: !50)
!4248 = !DILocalVariable(name: "version", arg: 4, scope: !4234, file: !651, line: 201, type: !50)
!4249 = !DILocalVariable(name: "authors", arg: 5, scope: !4234, file: !651, line: 201, type: !4237)
!4250 = !DILocalVariable(name: "n_authors", scope: !4234, file: !651, line: 203, type: !105)
!4251 = !DILocalVariable(name: "authtab", scope: !4234, file: !651, line: 204, type: !4252)
!4252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !414)
!4253 = !DILocation(line: 0, scope: !4234)
!4254 = !DILocation(line: 204, column: 3, scope: !4234)
!4255 = !DILocation(line: 204, column: 15, scope: !4234)
!4256 = !DILocation(line: 0, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !651, line: 206, column: 3)
!4258 = distinct !DILexicalBlock(scope: !4234, file: !651, line: 206, column: 3)
!4259 = !DILocation(line: 208, column: 35, scope: !4257)
!4260 = !DILocation(line: 208, column: 14, scope: !4257)
!4261 = !DILocation(line: 208, column: 33, scope: !4257)
!4262 = !DILocation(line: 208, column: 67, scope: !4257)
!4263 = !DILocation(line: 206, column: 3, scope: !4258)
!4264 = !DILocation(line: 0, scope: !4258)
!4265 = !DILocation(line: 211, column: 3, scope: !4234)
!4266 = !DILocation(line: 213, column: 1, scope: !4234)
!4267 = distinct !DISubprogram(name: "version_etc", scope: !651, file: !651, line: 230, type: !4268, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4169, !50, !50, !50, null}
!4270 = !{!4271, !4272, !4273, !4274, !4275}
!4271 = !DILocalVariable(name: "stream", arg: 1, scope: !4267, file: !651, line: 230, type: !4169)
!4272 = !DILocalVariable(name: "command_name", arg: 2, scope: !4267, file: !651, line: 231, type: !50)
!4273 = !DILocalVariable(name: "package", arg: 3, scope: !4267, file: !651, line: 231, type: !50)
!4274 = !DILocalVariable(name: "version", arg: 4, scope: !4267, file: !651, line: 232, type: !50)
!4275 = !DILocalVariable(name: "authors", scope: !4267, file: !651, line: 234, type: !4276)
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !54, line: 52, baseType: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1678, line: 32, baseType: !4278)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !651, line: 234, baseType: !4279)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4238, size: 192, elements: !88)
!4280 = !DILocation(line: 0, scope: !4267)
!4281 = !DILocation(line: 234, column: 3, scope: !4267)
!4282 = !DILocation(line: 234, column: 11, scope: !4267)
!4283 = !DILocation(line: 236, column: 3, scope: !4267)
!4284 = !DILocation(line: 237, column: 3, scope: !4267)
!4285 = !DILocation(line: 238, column: 3, scope: !4267)
!4286 = !DILocation(line: 239, column: 1, scope: !4267)
!4287 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !651, file: !651, line: 242, type: !132, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !52)
!4288 = !DILocation(line: 244, column: 3, scope: !4287)
!4289 = !DILocation(line: 249, column: 3, scope: !4287)
!4290 = !DILocation(line: 255, column: 3, scope: !4287)
!4291 = !DILocation(line: 260, column: 3, scope: !4287)
!4292 = !DILocation(line: 262, column: 1, scope: !4287)
!4293 = distinct !DISubprogram(name: "xnmalloc", scope: !343, file: !343, line: 99, type: !2070, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4294)
!4294 = !{!4295, !4296}
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !343, line: 99, type: !105)
!4296 = !DILocalVariable(name: "s", arg: 2, scope: !4293, file: !343, line: 99, type: !105)
!4297 = !DILocation(line: 0, scope: !4293)
!4298 = !DILocation(line: 101, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4293, file: !343, line: 101, column: 7)
!4300 = !DILocation(line: 101, column: 7, scope: !4293)
!4301 = !DILocation(line: 102, column: 5, scope: !4299)
!4302 = !DILocation(line: 103, column: 21, scope: !4293)
!4303 = !DILocalVariable(name: "n", arg: 1, scope: !4304, file: !693, line: 39, type: !105)
!4304 = distinct !DISubprogram(name: "xmalloc", scope: !693, file: !693, line: 39, type: !4305, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!103, !105}
!4307 = !{!4303, !4308}
!4308 = !DILocalVariable(name: "p", scope: !4304, file: !693, line: 41, type: !103)
!4309 = !DILocation(line: 0, scope: !4304, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 103, column: 10, scope: !4293)
!4311 = !DILocation(line: 41, column: 13, scope: !4304, inlinedAt: !4310)
!4312 = !DILocation(line: 42, column: 8, scope: !4313, inlinedAt: !4310)
!4313 = distinct !DILexicalBlock(scope: !4304, file: !693, line: 42, column: 7)
!4314 = !DILocation(line: 42, column: 15, scope: !4313, inlinedAt: !4310)
!4315 = !DILocation(line: 42, column: 10, scope: !4313, inlinedAt: !4310)
!4316 = !DILocation(line: 43, column: 5, scope: !4313, inlinedAt: !4310)
!4317 = !DILocation(line: 103, column: 3, scope: !4293)
!4318 = !DILocation(line: 0, scope: !4304)
!4319 = !DILocation(line: 41, column: 13, scope: !4304)
!4320 = !DILocation(line: 42, column: 8, scope: !4313)
!4321 = !DILocation(line: 42, column: 15, scope: !4313)
!4322 = !DILocation(line: 42, column: 10, scope: !4313)
!4323 = !DILocation(line: 43, column: 5, scope: !4313)
!4324 = !DILocation(line: 44, column: 3, scope: !4304)
!4325 = distinct !DISubprogram(name: "xnrealloc", scope: !343, file: !343, line: 112, type: !4326, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!103, !103, !105, !105}
!4328 = !{!4329, !4330, !4331}
!4329 = !DILocalVariable(name: "p", arg: 1, scope: !4325, file: !343, line: 112, type: !103)
!4330 = !DILocalVariable(name: "n", arg: 2, scope: !4325, file: !343, line: 112, type: !105)
!4331 = !DILocalVariable(name: "s", arg: 3, scope: !4325, file: !343, line: 112, type: !105)
!4332 = !DILocation(line: 0, scope: !4325)
!4333 = !DILocation(line: 114, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4325, file: !343, line: 114, column: 7)
!4335 = !DILocation(line: 114, column: 7, scope: !4325)
!4336 = !DILocation(line: 115, column: 5, scope: !4334)
!4337 = !DILocation(line: 116, column: 25, scope: !4325)
!4338 = !DILocalVariable(name: "p", arg: 1, scope: !4339, file: !693, line: 51, type: !103)
!4339 = distinct !DISubprogram(name: "xrealloc", scope: !693, file: !693, line: 51, type: !4340, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!103, !103, !105}
!4342 = !{!4338, !4343}
!4343 = !DILocalVariable(name: "n", arg: 2, scope: !4339, file: !693, line: 51, type: !105)
!4344 = !DILocation(line: 0, scope: !4339, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 116, column: 10, scope: !4325)
!4346 = !DILocation(line: 53, column: 8, scope: !4347, inlinedAt: !4345)
!4347 = distinct !DILexicalBlock(scope: !4339, file: !693, line: 53, column: 7)
!4348 = !DILocation(line: 53, column: 13, scope: !4347, inlinedAt: !4345)
!4349 = !DILocation(line: 53, column: 10, scope: !4347, inlinedAt: !4345)
!4350 = !DILocation(line: 57, column: 7, scope: !4351, inlinedAt: !4345)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !693, line: 54, column: 5)
!4352 = !DILocation(line: 58, column: 7, scope: !4351, inlinedAt: !4345)
!4353 = !DILocation(line: 61, column: 7, scope: !4339, inlinedAt: !4345)
!4354 = !DILocation(line: 62, column: 8, scope: !4355, inlinedAt: !4345)
!4355 = distinct !DILexicalBlock(scope: !4339, file: !693, line: 62, column: 7)
!4356 = !DILocation(line: 62, column: 13, scope: !4355, inlinedAt: !4345)
!4357 = !DILocation(line: 62, column: 10, scope: !4355, inlinedAt: !4345)
!4358 = !DILocation(line: 63, column: 5, scope: !4355, inlinedAt: !4345)
!4359 = !DILocation(line: 116, column: 3, scope: !4325)
!4360 = !DILocation(line: 0, scope: !4339)
!4361 = !DILocation(line: 53, column: 8, scope: !4347)
!4362 = !DILocation(line: 53, column: 13, scope: !4347)
!4363 = !DILocation(line: 53, column: 10, scope: !4347)
!4364 = !DILocation(line: 57, column: 7, scope: !4351)
!4365 = !DILocation(line: 58, column: 7, scope: !4351)
!4366 = !DILocation(line: 61, column: 7, scope: !4339)
!4367 = !DILocation(line: 62, column: 8, scope: !4355)
!4368 = !DILocation(line: 62, column: 13, scope: !4355)
!4369 = !DILocation(line: 62, column: 10, scope: !4355)
!4370 = !DILocation(line: 63, column: 5, scope: !4355)
!4371 = !DILocation(line: 65, column: 1, scope: !4339)
!4372 = !DILocation(line: 0, scope: !696)
!4373 = !DILocation(line: 176, column: 14, scope: !696)
!4374 = !DILocation(line: 178, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !696, file: !343, line: 178, column: 7)
!4376 = !DILocation(line: 178, column: 7, scope: !696)
!4377 = !DILocation(line: 180, column: 13, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !343, line: 180, column: 11)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !343, line: 179, column: 5)
!4380 = !DILocation(line: 180, column: 11, scope: !4379)
!4381 = !DILocation(line: 188, column: 30, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4378, file: !343, line: 181, column: 9)
!4383 = !DILocation(line: 189, column: 16, scope: !4382)
!4384 = !DILocation(line: 189, column: 13, scope: !4382)
!4385 = !DILocation(line: 190, column: 9, scope: !4382)
!4386 = !DILocation(line: 191, column: 11, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4379, file: !343, line: 191, column: 11)
!4388 = !DILocation(line: 191, column: 11, scope: !4379)
!4389 = !DILocation(line: 206, column: 7, scope: !696)
!4390 = !DILocation(line: 207, column: 25, scope: !696)
!4391 = !DILocation(line: 0, scope: !4339, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 207, column: 10, scope: !696)
!4393 = !DILocation(line: 53, column: 10, scope: !4347, inlinedAt: !4392)
!4394 = !DILocation(line: 192, column: 9, scope: !4387)
!4395 = !DILocation(line: 200, column: 69, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !343, line: 200, column: 11)
!4397 = distinct !DILexicalBlock(scope: !4375, file: !343, line: 195, column: 5)
!4398 = !DILocation(line: 201, column: 11, scope: !4396)
!4399 = !DILocation(line: 200, column: 11, scope: !4397)
!4400 = !DILocation(line: 202, column: 9, scope: !4396)
!4401 = !DILocation(line: 203, column: 14, scope: !4397)
!4402 = !DILocation(line: 203, column: 18, scope: !4397)
!4403 = !DILocation(line: 203, column: 9, scope: !4397)
!4404 = !DILocation(line: 53, column: 8, scope: !4347, inlinedAt: !4392)
!4405 = !DILocation(line: 57, column: 7, scope: !4351, inlinedAt: !4392)
!4406 = !DILocation(line: 58, column: 7, scope: !4351, inlinedAt: !4392)
!4407 = !DILocation(line: 61, column: 7, scope: !4339, inlinedAt: !4392)
!4408 = !DILocation(line: 62, column: 8, scope: !4355, inlinedAt: !4392)
!4409 = !DILocation(line: 62, column: 13, scope: !4355, inlinedAt: !4392)
!4410 = !DILocation(line: 62, column: 10, scope: !4355, inlinedAt: !4392)
!4411 = !DILocation(line: 63, column: 5, scope: !4355, inlinedAt: !4392)
!4412 = !DILocation(line: 207, column: 3, scope: !696)
!4413 = distinct !DISubprogram(name: "xcharalloc", scope: !343, file: !343, line: 216, type: !3253, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4414)
!4414 = !{!4415}
!4415 = !DILocalVariable(name: "n", arg: 1, scope: !4413, file: !343, line: 216, type: !105)
!4416 = !DILocation(line: 0, scope: !4413)
!4417 = !DILocation(line: 0, scope: !4304, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 218, column: 10, scope: !4413)
!4419 = !DILocation(line: 41, column: 13, scope: !4304, inlinedAt: !4418)
!4420 = !DILocation(line: 42, column: 8, scope: !4313, inlinedAt: !4418)
!4421 = !DILocation(line: 42, column: 15, scope: !4313, inlinedAt: !4418)
!4422 = !DILocation(line: 42, column: 10, scope: !4313, inlinedAt: !4418)
!4423 = !DILocation(line: 43, column: 5, scope: !4313, inlinedAt: !4418)
!4424 = !DILocation(line: 218, column: 3, scope: !4413)
!4425 = distinct !DISubprogram(name: "x2realloc", scope: !693, file: !693, line: 74, type: !4426, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!103, !103, !699}
!4428 = !{!4429, !4430}
!4429 = !DILocalVariable(name: "p", arg: 1, scope: !4425, file: !693, line: 74, type: !103)
!4430 = !DILocalVariable(name: "pn", arg: 2, scope: !4425, file: !693, line: 74, type: !699)
!4431 = !DILocation(line: 0, scope: !4425)
!4432 = !DILocation(line: 0, scope: !696, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 76, column: 10, scope: !4425)
!4434 = !DILocation(line: 176, column: 14, scope: !696, inlinedAt: !4433)
!4435 = !DILocation(line: 178, column: 9, scope: !4375, inlinedAt: !4433)
!4436 = !DILocation(line: 178, column: 7, scope: !696, inlinedAt: !4433)
!4437 = !DILocation(line: 180, column: 13, scope: !4378, inlinedAt: !4433)
!4438 = !DILocation(line: 180, column: 11, scope: !4379, inlinedAt: !4433)
!4439 = !DILocation(line: 191, column: 11, scope: !4387, inlinedAt: !4433)
!4440 = !DILocation(line: 191, column: 11, scope: !4379, inlinedAt: !4433)
!4441 = !DILocation(line: 206, column: 7, scope: !696, inlinedAt: !4433)
!4442 = !DILocation(line: 0, scope: !4339, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 207, column: 10, scope: !696, inlinedAt: !4433)
!4444 = !DILocation(line: 53, column: 10, scope: !4347, inlinedAt: !4443)
!4445 = !DILocation(line: 192, column: 9, scope: !4387, inlinedAt: !4433)
!4446 = !DILocation(line: 201, column: 11, scope: !4396, inlinedAt: !4433)
!4447 = !DILocation(line: 200, column: 11, scope: !4397, inlinedAt: !4433)
!4448 = !DILocation(line: 202, column: 9, scope: !4396, inlinedAt: !4433)
!4449 = !DILocation(line: 203, column: 14, scope: !4397, inlinedAt: !4433)
!4450 = !DILocation(line: 203, column: 18, scope: !4397, inlinedAt: !4433)
!4451 = !DILocation(line: 203, column: 9, scope: !4397, inlinedAt: !4433)
!4452 = !DILocation(line: 53, column: 8, scope: !4347, inlinedAt: !4443)
!4453 = !DILocation(line: 57, column: 7, scope: !4351, inlinedAt: !4443)
!4454 = !DILocation(line: 58, column: 7, scope: !4351, inlinedAt: !4443)
!4455 = !DILocation(line: 61, column: 7, scope: !4339, inlinedAt: !4443)
!4456 = !DILocation(line: 62, column: 8, scope: !4355, inlinedAt: !4443)
!4457 = !DILocation(line: 62, column: 13, scope: !4355, inlinedAt: !4443)
!4458 = !DILocation(line: 62, column: 10, scope: !4355, inlinedAt: !4443)
!4459 = !DILocation(line: 63, column: 5, scope: !4355, inlinedAt: !4443)
!4460 = !DILocation(line: 76, column: 3, scope: !4425)
!4461 = distinct !DISubprogram(name: "xzalloc", scope: !693, file: !693, line: 84, type: !4305, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4462)
!4462 = !{!4463}
!4463 = !DILocalVariable(name: "n", arg: 1, scope: !4461, file: !693, line: 84, type: !105)
!4464 = !DILocation(line: 0, scope: !4461)
!4465 = !DILocalVariable(name: "n", arg: 1, scope: !4466, file: !693, line: 93, type: !105)
!4466 = distinct !DISubprogram(name: "xcalloc", scope: !693, file: !693, line: 93, type: !2070, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4467)
!4467 = !{!4465, !4468, !4469}
!4468 = !DILocalVariable(name: "s", arg: 2, scope: !4466, file: !693, line: 93, type: !105)
!4469 = !DILocalVariable(name: "p", scope: !4466, file: !693, line: 95, type: !103)
!4470 = !DILocation(line: 0, scope: !4466, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 86, column: 10, scope: !4461)
!4472 = !DILocation(line: 100, column: 7, scope: !4473, inlinedAt: !4471)
!4473 = distinct !DILexicalBlock(scope: !4466, file: !693, line: 100, column: 7)
!4474 = !DILocation(line: 101, column: 7, scope: !4473, inlinedAt: !4471)
!4475 = !DILocation(line: 101, column: 18, scope: !4473, inlinedAt: !4471)
!4476 = !DILocation(line: 101, column: 16, scope: !4473, inlinedAt: !4471)
!4477 = !DILocation(line: 100, column: 7, scope: !4466, inlinedAt: !4471)
!4478 = !DILocation(line: 102, column: 5, scope: !4473, inlinedAt: !4471)
!4479 = !DILocation(line: 86, column: 3, scope: !4461)
!4480 = !DILocation(line: 0, scope: !4466)
!4481 = !DILocation(line: 100, column: 7, scope: !4473)
!4482 = !DILocation(line: 101, column: 7, scope: !4473)
!4483 = !DILocation(line: 101, column: 18, scope: !4473)
!4484 = !DILocation(line: 101, column: 16, scope: !4473)
!4485 = !DILocation(line: 100, column: 7, scope: !4466)
!4486 = !DILocation(line: 102, column: 5, scope: !4473)
!4487 = !DILocation(line: 103, column: 3, scope: !4466)
!4488 = distinct !DISubprogram(name: "xmemdup", scope: !693, file: !693, line: 111, type: !4489, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!103, !346, !105}
!4491 = !{!4492, !4493}
!4492 = !DILocalVariable(name: "p", arg: 1, scope: !4488, file: !693, line: 111, type: !346)
!4493 = !DILocalVariable(name: "s", arg: 2, scope: !4488, file: !693, line: 111, type: !105)
!4494 = !DILocation(line: 0, scope: !4488)
!4495 = !DILocation(line: 0, scope: !4304, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 113, column: 18, scope: !4488)
!4497 = !DILocation(line: 41, column: 13, scope: !4304, inlinedAt: !4496)
!4498 = !DILocation(line: 42, column: 8, scope: !4313, inlinedAt: !4496)
!4499 = !DILocation(line: 42, column: 15, scope: !4313, inlinedAt: !4496)
!4500 = !DILocation(line: 42, column: 10, scope: !4313, inlinedAt: !4496)
!4501 = !DILocation(line: 43, column: 5, scope: !4313, inlinedAt: !4496)
!4502 = !DILocalVariable(name: "__dest", arg: 1, scope: !4503, file: !2786, line: 31, type: !4506)
!4503 = distinct !DISubprogram(name: "memcpy", scope: !2786, file: !2786, line: 31, type: !4504, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4508)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!103, !4506, !4507, !105}
!4506 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!4507 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !346)
!4508 = !{!4502, !4509, !4510}
!4509 = !DILocalVariable(name: "__src", arg: 2, scope: !4503, file: !2786, line: 31, type: !4507)
!4510 = !DILocalVariable(name: "__len", arg: 3, scope: !4503, file: !2786, line: 31, type: !105)
!4511 = !DILocation(line: 0, scope: !4503, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 113, column: 10, scope: !4488)
!4513 = !DILocation(line: 34, column: 10, scope: !4503, inlinedAt: !4512)
!4514 = !DILocation(line: 113, column: 3, scope: !4488)
!4515 = distinct !DISubprogram(name: "xstrdup", scope: !693, file: !693, line: 119, type: !125, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !4516)
!4516 = !{!4517}
!4517 = !DILocalVariable(name: "string", arg: 1, scope: !4515, file: !693, line: 119, type: !50)
!4518 = !DILocation(line: 0, scope: !4515)
!4519 = !DILocation(line: 121, column: 27, scope: !4515)
!4520 = !DILocation(line: 121, column: 43, scope: !4515)
!4521 = !DILocation(line: 0, scope: !4488, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 121, column: 10, scope: !4515)
!4523 = !DILocation(line: 0, scope: !4304, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 113, column: 18, scope: !4488, inlinedAt: !4522)
!4525 = !DILocation(line: 41, column: 13, scope: !4304, inlinedAt: !4524)
!4526 = !DILocation(line: 42, column: 8, scope: !4313, inlinedAt: !4524)
!4527 = !DILocation(line: 42, column: 15, scope: !4313, inlinedAt: !4524)
!4528 = !DILocation(line: 42, column: 10, scope: !4313, inlinedAt: !4524)
!4529 = !DILocation(line: 43, column: 5, scope: !4313, inlinedAt: !4524)
!4530 = !DILocation(line: 0, scope: !4503, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 113, column: 10, scope: !4488, inlinedAt: !4522)
!4532 = !DILocation(line: 34, column: 10, scope: !4503, inlinedAt: !4531)
!4533 = !DILocation(line: 121, column: 3, scope: !4515)
!4534 = distinct !DISubprogram(name: "xalloc_die", scope: !714, file: !714, line: 32, type: !132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !52)
!4535 = !DILocation(line: 34, column: 10, scope: !4534)
!4536 = !DILocation(line: 34, column: 33, scope: !4534)
!4537 = !DILocation(line: 34, column: 3, scope: !4534)
!4538 = !DILocation(line: 40, column: 3, scope: !4534)
!4539 = distinct !DISubprogram(name: "rpl_calloc", scope: !717, file: !717, line: 42, type: !2070, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4540)
!4540 = !{!4541, !4542, !4543, !4544}
!4541 = !DILocalVariable(name: "n", arg: 1, scope: !4539, file: !717, line: 42, type: !105)
!4542 = !DILocalVariable(name: "s", arg: 2, scope: !4539, file: !717, line: 42, type: !105)
!4543 = !DILocalVariable(name: "result", scope: !4539, file: !717, line: 44, type: !103)
!4544 = !DILocalVariable(name: "bytes", scope: !4545, file: !717, line: 56, type: !105)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !717, line: 53, column: 5)
!4546 = distinct !DILexicalBlock(scope: !4539, file: !717, line: 47, column: 7)
!4547 = !DILocation(line: 0, scope: !4539)
!4548 = !DILocation(line: 47, column: 9, scope: !4546)
!4549 = !DILocation(line: 47, column: 19, scope: !4546)
!4550 = !DILocation(line: 47, column: 14, scope: !4546)
!4551 = !DILocation(line: 0, scope: !4545)
!4552 = !DILocation(line: 57, column: 21, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4545, file: !717, line: 57, column: 11)
!4554 = !DILocation(line: 57, column: 11, scope: !4545)
!4555 = !DILocation(line: 59, column: 11, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !717, line: 58, column: 9)
!4557 = !DILocation(line: 59, column: 17, scope: !4556)
!4558 = !DILocation(line: 65, column: 12, scope: !4539)
!4559 = !DILocation(line: 72, column: 3, scope: !4539)
!4560 = !DILocation(line: 73, column: 1, scope: !4539)
!4561 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !720, file: !720, line: 86, type: !4562, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !4568)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!105, !4564, !50, !105, !4565}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2529, line: 6, baseType: !4567)
!4567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !373, line: 21, baseType: !726)
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4569 = !DILocalVariable(name: "pwc", arg: 1, scope: !4561, file: !720, line: 86, type: !4564)
!4570 = !DILocalVariable(name: "s", arg: 2, scope: !4561, file: !720, line: 86, type: !50)
!4571 = !DILocalVariable(name: "n", arg: 3, scope: !4561, file: !720, line: 86, type: !105)
!4572 = !DILocalVariable(name: "ps", arg: 4, scope: !4561, file: !720, line: 86, type: !4565)
!4573 = !DILocalVariable(name: "ret", scope: !4561, file: !720, line: 88, type: !105)
!4574 = !DILocalVariable(name: "wc", scope: !4561, file: !720, line: 89, type: !2533)
!4575 = !DILocalVariable(name: "uc", scope: !4576, file: !720, line: 156, type: !578)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !720, line: 155, column: 5)
!4577 = distinct !DILexicalBlock(scope: !4561, file: !720, line: 154, column: 7)
!4578 = !DILocation(line: 0, scope: !4561)
!4579 = !DILocation(line: 89, column: 3, scope: !4561)
!4580 = !DILocation(line: 105, column: 9, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4561, file: !720, line: 105, column: 7)
!4582 = !DILocation(line: 105, column: 7, scope: !4561)
!4583 = !DILocation(line: 145, column: 9, scope: !4561)
!4584 = !DILocation(line: 154, column: 19, scope: !4577)
!4585 = !DILocation(line: 154, column: 31, scope: !4577)
!4586 = !DILocation(line: 154, column: 26, scope: !4577)
!4587 = !DILocation(line: 154, column: 41, scope: !4577)
!4588 = !DILocation(line: 154, column: 7, scope: !4561)
!4589 = !DILocation(line: 156, column: 26, scope: !4576)
!4590 = !DILocation(line: 0, scope: !4576)
!4591 = !DILocation(line: 157, column: 14, scope: !4576)
!4592 = !DILocation(line: 157, column: 12, scope: !4576)
!4593 = !DILocation(line: 163, column: 1, scope: !4561)
!4594 = distinct !DISubprogram(name: "close_stream", scope: !739, file: !739, line: 56, type: !4595, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4599)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!14, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !746)
!4599 = !{!4600, !4601, !4603, !4604}
!4600 = !DILocalVariable(name: "stream", arg: 1, scope: !4594, file: !739, line: 56, type: !4597)
!4601 = !DILocalVariable(name: "some_pending", scope: !4594, file: !739, line: 58, type: !4602)
!4602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!4603 = !DILocalVariable(name: "prev_fail", scope: !4594, file: !739, line: 59, type: !4602)
!4604 = !DILocalVariable(name: "fclose_fail", scope: !4594, file: !739, line: 60, type: !4602)
!4605 = !DILocation(line: 0, scope: !4594)
!4606 = !DILocation(line: 58, column: 30, scope: !4594)
!4607 = !DILocalVariable(name: "__stream", arg: 1, scope: !4608, file: !1710, line: 135, type: !4597)
!4608 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1710, file: !1710, line: 135, type: !4595, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4609)
!4609 = !{!4607}
!4610 = !DILocation(line: 0, scope: !4608, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 59, column: 27, scope: !4594)
!4612 = !DILocation(line: 137, column: 10, scope: !4608, inlinedAt: !4611)
!4613 = !{!1719, !1465, i64 0}
!4614 = !DILocation(line: 59, column: 43, scope: !4594)
!4615 = !DILocation(line: 60, column: 29, scope: !4594)
!4616 = !DILocation(line: 60, column: 45, scope: !4594)
!4617 = !DILocation(line: 70, column: 17, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4594, file: !739, line: 70, column: 7)
!4619 = !DILocation(line: 58, column: 50, scope: !4594)
!4620 = !DILocation(line: 70, column: 33, scope: !4618)
!4621 = !DILocation(line: 70, column: 53, scope: !4618)
!4622 = !DILocation(line: 70, column: 59, scope: !4618)
!4623 = !DILocation(line: 70, column: 7, scope: !4594)
!4624 = !DILocation(line: 72, column: 11, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4618, file: !739, line: 71, column: 5)
!4626 = !DILocation(line: 73, column: 9, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4625, file: !739, line: 72, column: 11)
!4628 = !DILocation(line: 73, column: 15, scope: !4627)
!4629 = !DILocation(line: 78, column: 1, scope: !4594)
!4630 = distinct !DISubprogram(name: "open_safer", scope: !778, file: !778, line: 29, type: !460, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4631)
!4631 = !{!4632, !4633, !4634, !4635}
!4632 = !DILocalVariable(name: "file", arg: 1, scope: !4630, file: !778, line: 29, type: !50)
!4633 = !DILocalVariable(name: "flags", arg: 2, scope: !4630, file: !778, line: 29, type: !14)
!4634 = !DILocalVariable(name: "mode", scope: !4630, file: !778, line: 31, type: !454)
!4635 = !DILocalVariable(name: "ap", scope: !4636, file: !778, line: 35, type: !4638)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !778, line: 34, column: 5)
!4637 = distinct !DILexicalBlock(scope: !4630, file: !778, line: 33, column: 7)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1678, line: 14, baseType: !4639)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !778, line: 35, baseType: !4640)
!4640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4641, size: 192, elements: !88)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !778, line: 35, size: 192, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4641, file: !778, line: 35, baseType: !21, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4641, file: !778, line: 35, baseType: !21, size: 32, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4641, file: !778, line: 35, baseType: !103, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4641, file: !778, line: 35, baseType: !103, size: 64, offset: 128)
!4647 = !DILocation(line: 0, scope: !4630)
!4648 = !DILocation(line: 33, column: 13, scope: !4637)
!4649 = !DILocation(line: 33, column: 7, scope: !4630)
!4650 = !DILocation(line: 35, column: 7, scope: !4636)
!4651 = !DILocation(line: 35, column: 15, scope: !4636)
!4652 = !DILocation(line: 36, column: 7, scope: !4636)
!4653 = !DILocation(line: 40, column: 14, scope: !4636)
!4654 = !DILocation(line: 42, column: 7, scope: !4636)
!4655 = !DILocation(line: 43, column: 5, scope: !4637)
!4656 = !DILocation(line: 43, column: 5, scope: !4636)
!4657 = !DILocation(line: 45, column: 20, scope: !4630)
!4658 = !DILocation(line: 45, column: 10, scope: !4630)
!4659 = !DILocation(line: 45, column: 3, scope: !4630)
!4660 = distinct !DISubprogram(name: "hard_locale", scope: !783, file: !783, line: 27, type: !736, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4661)
!4661 = !{!4662, !4663}
!4662 = !DILocalVariable(name: "category", arg: 1, scope: !4660, file: !783, line: 27, type: !14)
!4663 = !DILocalVariable(name: "locale", scope: !4660, file: !783, line: 29, type: !4664)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2056, elements: !4665)
!4665 = !{!4666}
!4666 = !DISubrange(count: 257)
!4667 = !DILocation(line: 0, scope: !4660)
!4668 = !DILocation(line: 29, column: 3, scope: !4660)
!4669 = !DILocation(line: 29, column: 8, scope: !4660)
!4670 = !DILocation(line: 31, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4660, file: !783, line: 31, column: 7)
!4672 = !DILocation(line: 31, column: 7, scope: !4660)
!4673 = !DILocation(line: 34, column: 12, scope: !4660)
!4674 = !DILocation(line: 34, column: 38, scope: !4660)
!4675 = !DILocation(line: 34, column: 41, scope: !4660)
!4676 = !DILocation(line: 34, column: 66, scope: !4660)
!4677 = !DILocation(line: 35, column: 1, scope: !4660)
!4678 = distinct !DISubprogram(name: "locale_charset", scope: !790, file: !790, line: 831, type: !396, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4679)
!4679 = !{!4680}
!4680 = !DILocalVariable(name: "codeset", scope: !4678, file: !790, line: 833, type: !50)
!4681 = !DILocation(line: 847, column: 13, scope: !4678)
!4682 = !DILocation(line: 0, scope: !4678)
!4683 = !DILocation(line: 911, column: 15, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4678, file: !790, line: 911, column: 7)
!4685 = !DILocation(line: 911, column: 7, scope: !4678)
!4686 = !DILocation(line: 1070, column: 13, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !790, line: 1070, column: 13)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !790, line: 1060, column: 7)
!4689 = distinct !DILexicalBlock(scope: !4678, file: !790, line: 1019, column: 3)
!4690 = !DILocation(line: 1070, column: 24, scope: !4687)
!4691 = !DILocation(line: 1070, column: 13, scope: !4688)
!4692 = !DILocation(line: 1158, column: 3, scope: !4678)
!4693 = distinct !DISubprogram(name: "mkancesdirs", scope: !1183, file: !1183, line: 65, type: !4694, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1182, retainedNodes: !4696)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!1793, !48, !1199, !207, !103}
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4712, !4713}
!4697 = !DILocalVariable(name: "file", arg: 1, scope: !4693, file: !1183, line: 65, type: !48)
!4698 = !DILocalVariable(name: "wd", arg: 2, scope: !4693, file: !1183, line: 65, type: !1199)
!4699 = !DILocalVariable(name: "make_dir", arg: 3, scope: !4693, file: !1183, line: 66, type: !207)
!4700 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !4693, file: !1183, line: 67, type: !103)
!4701 = !DILocalVariable(name: "sep", scope: !4693, file: !1183, line: 72, type: !48)
!4702 = !DILocalVariable(name: "component", scope: !4693, file: !1183, line: 76, type: !48)
!4703 = !DILocalVariable(name: "p", scope: !4693, file: !1183, line: 78, type: !48)
!4704 = !DILocalVariable(name: "c", scope: !4693, file: !1183, line: 79, type: !49)
!4705 = !DILocalVariable(name: "made_dir", scope: !4693, file: !1183, line: 80, type: !174)
!4706 = !DILocalVariable(name: "make_dir_errno", scope: !4707, file: !1183, line: 100, type: !14)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !1183, line: 99, column: 11)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !1183, line: 98, column: 13)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !1183, line: 95, column: 7)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !1183, line: 94, column: 14)
!4711 = distinct !DILexicalBlock(scope: !4693, file: !1183, line: 89, column: 9)
!4712 = !DILocalVariable(name: "savewd_chdir_options", scope: !4707, file: !1183, line: 101, type: !14)
!4713 = !DILocalVariable(name: "chdir_result", scope: !4707, file: !1183, line: 102, type: !14)
!4714 = !DILocation(line: 0, scope: !4693)
!4715 = !DILocation(line: 88, column: 15, scope: !4693)
!4716 = !DILocation(line: 88, column: 3, scope: !4693)
!4717 = !DILocation(line: 88, column: 17, scope: !4693)
!4718 = !DILocation(line: 89, column: 9, scope: !4711)
!4719 = !DILocation(line: 0, scope: !4711)
!4720 = !DILocation(line: 89, column: 9, scope: !4693)
!4721 = !DILocation(line: 91, column: 13, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4711, file: !1183, line: 90, column: 7)
!4723 = !DILocation(line: 94, column: 26, scope: !4710)
!4724 = !DILocation(line: 94, column: 29, scope: !4710)
!4725 = !DILocation(line: 94, column: 35, scope: !4710)
!4726 = !DILocation(line: 94, column: 32, scope: !4710)
!4727 = !DILocation(line: 98, column: 20, scope: !4708)
!4728 = !DILocation(line: 98, column: 32, scope: !4708)
!4729 = !DILocation(line: 98, column: 37, scope: !4708)
!4730 = !DILocation(line: 98, column: 40, scope: !4708)
!4731 = !DILocation(line: 98, column: 53, scope: !4708)
!4732 = !DILocation(line: 98, column: 13, scope: !4709)
!4733 = !DILocation(line: 0, scope: !4707)
!4734 = !DILocation(line: 106, column: 18, scope: !4707)
!4735 = !DILocation(line: 111, column: 17, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4707, file: !1183, line: 110, column: 17)
!4737 = !DILocation(line: 110, column: 33, scope: !4736)
!4738 = !DILocation(line: 111, column: 20, scope: !4736)
!4739 = !DILocation(line: 111, column: 33, scope: !4736)
!4740 = !DILocation(line: 111, column: 40, scope: !4736)
!4741 = !DILocation(line: 111, column: 43, scope: !4736)
!4742 = !DILocation(line: 111, column: 56, scope: !4736)
!4743 = !DILocation(line: 110, column: 17, scope: !4707)
!4744 = !DILocation(line: 113, column: 22, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4736, file: !1183, line: 113, column: 22)
!4746 = !DILocation(line: 113, column: 63, scope: !4745)
!4747 = !DILocation(line: 113, column: 22, scope: !4736)
!4748 = !DILocation(line: 114, column: 32, scope: !4745)
!4749 = !DILocation(line: 114, column: 15, scope: !4745)
!4750 = !DILocation(line: 118, column: 17, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4707, file: !1183, line: 118, column: 17)
!4752 = !DILocation(line: 118, column: 17, scope: !4707)
!4753 = !DILocation(line: 122, column: 15, scope: !4707)
!4754 = !DILocation(line: 126, column: 17, scope: !4707)
!4755 = !DILocation(line: 127, column: 20, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4707, file: !1183, line: 126, column: 17)
!4757 = !DILocation(line: 129, column: 30, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4707, file: !1183, line: 129, column: 17)
!4759 = !DILocation(line: 129, column: 17, scope: !4707)
!4760 = !DILocation(line: 131, column: 36, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !1183, line: 131, column: 21)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !1183, line: 130, column: 15)
!4763 = !DILocation(line: 131, column: 41, scope: !4761)
!4764 = !DILocation(line: 131, column: 44, scope: !4761)
!4765 = !DILocation(line: 131, column: 50, scope: !4761)
!4766 = !DILocation(line: 131, column: 21, scope: !4762)
!4767 = !DILocation(line: 132, column: 25, scope: !4761)
!4768 = !DILocation(line: 132, column: 19, scope: !4761)
!4769 = !DILocation(line: 133, column: 24, scope: !4762)
!4770 = !DILocation(line: 80, column: 8, scope: !4693)
!4771 = distinct !{!4771, !4716, !4772}
!4772 = !DILocation(line: 138, column: 7, scope: !4693)
!4773 = !DILocation(line: 76, column: 9, scope: !4693)
!4774 = !DILocation(line: 140, column: 20, scope: !4693)
!4775 = !DILocation(line: 140, column: 3, scope: !4693)
!4776 = !DILocation(line: 141, column: 1, scope: !4693)
!4777 = distinct !DISubprogram(name: "dirchownmod", scope: !1201, file: !1201, line: 61, type: !4778, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1200, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!14, !14, !50, !454, !199, !201, !454, !454}
!4780 = !{!4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4810, !4811, !4814, !4817, !4820}
!4781 = !DILocalVariable(name: "fd", arg: 1, scope: !4777, file: !1201, line: 61, type: !14)
!4782 = !DILocalVariable(name: "dir", arg: 2, scope: !4777, file: !1201, line: 61, type: !50)
!4783 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !4777, file: !1201, line: 61, type: !454)
!4784 = !DILocalVariable(name: "owner", arg: 4, scope: !4777, file: !1201, line: 62, type: !199)
!4785 = !DILocalVariable(name: "group", arg: 5, scope: !4777, file: !1201, line: 62, type: !201)
!4786 = !DILocalVariable(name: "mode", arg: 6, scope: !4777, file: !1201, line: 63, type: !454)
!4787 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !4777, file: !1201, line: 63, type: !454)
!4788 = !DILocalVariable(name: "st", scope: !4777, file: !1201, line: 65, type: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !474, line: 46, size: 1152, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4807, !4808, !4809}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4789, file: !474, line: 48, baseType: !477, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4789, file: !474, line: 53, baseType: !479, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4789, file: !474, line: 61, baseType: !481, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4789, file: !474, line: 62, baseType: !455, size: 32, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4789, file: !474, line: 64, baseType: !200, size: 32, offset: 224)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4789, file: !474, line: 65, baseType: !202, size: 32, offset: 256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4789, file: !474, line: 67, baseType: !14, size: 32, offset: 288)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4789, file: !474, line: 69, baseType: !477, size: 64, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4789, file: !474, line: 74, baseType: !80, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4789, file: !474, line: 78, baseType: !489, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4789, file: !474, line: 80, baseType: !491, size: 64, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4789, file: !474, line: 91, baseType: !4803, size: 128, offset: 576)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !494, line: 10, size: 128, elements: !4804)
!4804 = !{!4805, !4806}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4803, file: !494, line: 12, baseType: !497, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4803, file: !494, line: 16, baseType: !499, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4789, file: !474, line: 92, baseType: !4803, size: 128, offset: 704)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4789, file: !474, line: 93, baseType: !4803, size: 128, offset: 832)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4789, file: !474, line: 106, baseType: !503, size: 192, offset: 960)
!4810 = !DILocalVariable(name: "result", scope: !4777, file: !1201, line: 66, type: !14)
!4811 = !DILocalVariable(name: "dir_mode", scope: !4812, file: !1201, line: 70, type: !454)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !1201, line: 69, column: 5)
!4813 = distinct !DILexicalBlock(scope: !4777, file: !1201, line: 68, column: 7)
!4814 = !DILocalVariable(name: "indeterminate", scope: !4815, file: !1201, line: 87, type: !454)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !1201, line: 82, column: 9)
!4816 = distinct !DILexicalBlock(scope: !4812, file: !1201, line: 76, column: 11)
!4817 = !DILocalVariable(name: "chmod_mode", scope: !4818, file: !1201, line: 117, type: !454)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !1201, line: 116, column: 13)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !1201, line: 115, column: 15)
!4820 = !DILocalVariable(name: "e", scope: !4821, file: !1201, line: 134, type: !14)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !1201, line: 133, column: 9)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !1201, line: 130, column: 11)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !1201, line: 129, column: 5)
!4824 = distinct !DILexicalBlock(scope: !4777, file: !1201, line: 128, column: 7)
!4825 = !DILocation(line: 0, scope: !4777)
!4826 = !DILocation(line: 65, column: 3, scope: !4777)
!4827 = !DILocation(line: 65, column: 15, scope: !4777)
!4828 = !DILocation(line: 66, column: 20, scope: !4777)
!4829 = !DILocation(line: 66, column: 17, scope: !4777)
!4830 = !DILocalVariable(name: "__path", arg: 1, scope: !4831, file: !162, line: 453, type: !50)
!4831 = distinct !DISubprogram(name: "stat", scope: !162, file: !162, line: 453, type: !4832, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1200, retainedNodes: !4835)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!14, !50, !4834}
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4835 = !{!4830, !4836}
!4836 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4831, file: !162, line: 453, type: !4834)
!4837 = !DILocation(line: 0, scope: !4831, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 66, column: 26, scope: !4777)
!4839 = !DILocation(line: 455, column: 10, scope: !4831, inlinedAt: !4838)
!4840 = !DILocalVariable(name: "__fd", arg: 1, scope: !4841, file: !162, line: 467, type: !14)
!4841 = distinct !DISubprogram(name: "fstat", scope: !162, file: !162, line: 467, type: !4842, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1200, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!14, !14, !4834}
!4844 = !{!4840, !4845}
!4845 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4841, file: !162, line: 467, type: !4834)
!4846 = !DILocation(line: 0, scope: !4841, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 66, column: 44, scope: !4777)
!4848 = !DILocation(line: 469, column: 10, scope: !4841, inlinedAt: !4847)
!4849 = !DILocation(line: 68, column: 14, scope: !4813)
!4850 = !DILocation(line: 68, column: 7, scope: !4777)
!4851 = !DILocation(line: 70, column: 28, scope: !4812)
!4852 = !DILocation(line: 0, scope: !4812)
!4853 = !DILocation(line: 76, column: 13, scope: !4816)
!4854 = !DILocation(line: 76, column: 11, scope: !4812)
!4855 = !DILocation(line: 78, column: 11, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4816, file: !1201, line: 77, column: 9)
!4857 = !DILocation(line: 78, column: 17, scope: !4856)
!4858 = !DILocation(line: 80, column: 9, scope: !4856)
!4859 = !DILocation(line: 0, scope: !4815)
!4860 = !DILocation(line: 94, column: 22, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4815, file: !1201, line: 94, column: 15)
!4862 = !DILocation(line: 94, column: 36, scope: !4861)
!4863 = !DILocation(line: 94, column: 51, scope: !4861)
!4864 = !{!1915, !1465, i64 28}
!4865 = !DILocation(line: 94, column: 45, scope: !4861)
!4866 = !DILocation(line: 95, column: 15, scope: !4861)
!4867 = !DILocation(line: 95, column: 25, scope: !4861)
!4868 = !DILocation(line: 95, column: 39, scope: !4861)
!4869 = !DILocation(line: 95, column: 54, scope: !4861)
!4870 = !{!1915, !1465, i64 32}
!4871 = !DILocation(line: 95, column: 48, scope: !4861)
!4872 = !DILocation(line: 94, column: 15, scope: !4815)
!4873 = !DILocation(line: 97, column: 27, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4861, file: !1201, line: 96, column: 13)
!4875 = !DILocation(line: 97, column: 25, scope: !4874)
!4876 = !DILocation(line: 98, column: 27, scope: !4874)
!4877 = !DILocation(line: 99, column: 38, scope: !4874)
!4878 = !DILocation(line: 99, column: 27, scope: !4874)
!4879 = !DILocation(line: 100, column: 27, scope: !4874)
!4880 = !DILocation(line: 101, column: 27, scope: !4874)
!4881 = !DILocation(line: 108, column: 26, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4874, file: !1201, line: 108, column: 19)
!4883 = !DILocation(line: 108, column: 31, scope: !4882)
!4884 = !DILocation(line: 108, column: 44, scope: !4882)
!4885 = !DILocation(line: 109, column: 42, scope: !4882)
!4886 = !DILocation(line: 108, column: 19, scope: !4874)
!4887 = !DILocation(line: 115, column: 42, scope: !4819)
!4888 = !DILocation(line: 115, column: 50, scope: !4819)
!4889 = !DILocation(line: 115, column: 67, scope: !4819)
!4890 = !DILocation(line: 115, column: 15, scope: !4815)
!4891 = !DILocation(line: 118, column: 34, scope: !4818)
!4892 = !DILocation(line: 118, column: 52, scope: !4818)
!4893 = !DILocation(line: 118, column: 22, scope: !4818)
!4894 = !DILocation(line: 0, scope: !4818)
!4895 = !DILocation(line: 119, column: 42, scope: !4818)
!4896 = !DILocation(line: 119, column: 25, scope: !4818)
!4897 = !DILocation(line: 120, column: 27, scope: !4818)
!4898 = !DILocation(line: 128, column: 7, scope: !4777)
!4899 = !DILocation(line: 121, column: 38, scope: !4818)
!4900 = !DILocation(line: 121, column: 27, scope: !4818)
!4901 = !DILocation(line: 122, column: 27, scope: !4818)
!4902 = !DILocation(line: 123, column: 27, scope: !4818)
!4903 = !DILocation(line: 128, column: 9, scope: !4824)
!4904 = !DILocation(line: 130, column: 18, scope: !4822)
!4905 = !DILocation(line: 130, column: 11, scope: !4823)
!4906 = !DILocation(line: 131, column: 18, scope: !4822)
!4907 = !DILocation(line: 131, column: 9, scope: !4822)
!4908 = !DILocation(line: 134, column: 19, scope: !4821)
!4909 = !DILocation(line: 0, scope: !4821)
!4910 = !DILocation(line: 135, column: 11, scope: !4821)
!4911 = !DILocation(line: 136, column: 17, scope: !4821)
!4912 = !DILocation(line: 141, column: 1, scope: !4777)
!4913 = !DILocation(line: 140, column: 3, scope: !4777)
!4914 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1216, file: !1216, line: 269, type: !4915, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!14, !14, !48, !105}
!4917 = !{!4918, !4919, !4920}
!4918 = !DILocalVariable(name: "category", arg: 1, scope: !4914, file: !1216, line: 269, type: !14)
!4919 = !DILocalVariable(name: "buf", arg: 2, scope: !4914, file: !1216, line: 269, type: !48)
!4920 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4914, file: !1216, line: 269, type: !105)
!4921 = !DILocation(line: 0, scope: !4914)
!4922 = !DILocalVariable(name: "category", arg: 1, scope: !4923, file: !1216, line: 91, type: !14)
!4923 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1216, file: !1216, line: 91, type: !4915, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4924)
!4924 = !{!4922, !4925, !4926, !4927, !4928}
!4925 = !DILocalVariable(name: "buf", arg: 2, scope: !4923, file: !1216, line: 91, type: !48)
!4926 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4923, file: !1216, line: 91, type: !105)
!4927 = !DILocalVariable(name: "result", scope: !4923, file: !1216, line: 140, type: !50)
!4928 = !DILocalVariable(name: "length", scope: !4929, file: !1216, line: 154, type: !105)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !1216, line: 153, column: 5)
!4930 = distinct !DILexicalBlock(scope: !4923, file: !1216, line: 142, column: 7)
!4931 = !DILocation(line: 0, scope: !4923, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 274, column: 10, scope: !4914)
!4933 = !DILocalVariable(name: "category", arg: 1, scope: !4934, file: !1216, line: 60, type: !14)
!4934 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1216, file: !1216, line: 60, type: !4935, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4937)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!50, !14}
!4937 = !{!4933, !4938}
!4938 = !DILocalVariable(name: "result", scope: !4934, file: !1216, line: 62, type: !50)
!4939 = !DILocation(line: 0, scope: !4934, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 140, column: 24, scope: !4923, inlinedAt: !4932)
!4941 = !DILocation(line: 62, column: 24, scope: !4934, inlinedAt: !4940)
!4942 = !DILocation(line: 142, column: 14, scope: !4930, inlinedAt: !4932)
!4943 = !DILocation(line: 142, column: 7, scope: !4923, inlinedAt: !4932)
!4944 = !DILocation(line: 145, column: 19, scope: !4945, inlinedAt: !4932)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !1216, line: 145, column: 11)
!4946 = distinct !DILexicalBlock(scope: !4930, file: !1216, line: 143, column: 5)
!4947 = !DILocation(line: 145, column: 11, scope: !4946, inlinedAt: !4932)
!4948 = !DILocation(line: 149, column: 16, scope: !4945, inlinedAt: !4932)
!4949 = !DILocation(line: 149, column: 9, scope: !4945, inlinedAt: !4932)
!4950 = !DILocation(line: 154, column: 23, scope: !4929, inlinedAt: !4932)
!4951 = !DILocation(line: 0, scope: !4929, inlinedAt: !4932)
!4952 = !DILocation(line: 155, column: 18, scope: !4953, inlinedAt: !4932)
!4953 = distinct !DILexicalBlock(scope: !4929, file: !1216, line: 155, column: 11)
!4954 = !DILocation(line: 155, column: 11, scope: !4929, inlinedAt: !4932)
!4955 = !DILocation(line: 157, column: 39, scope: !4956, inlinedAt: !4932)
!4956 = distinct !DILexicalBlock(scope: !4953, file: !1216, line: 156, column: 9)
!4957 = !DILocalVariable(name: "__dest", arg: 1, scope: !4958, file: !2786, line: 31, type: !4506)
!4958 = distinct !DISubprogram(name: "memcpy", scope: !2786, file: !2786, line: 31, type: !4504, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4959)
!4959 = !{!4957, !4960, !4961}
!4960 = !DILocalVariable(name: "__src", arg: 2, scope: !4958, file: !2786, line: 31, type: !4507)
!4961 = !DILocalVariable(name: "__len", arg: 3, scope: !4958, file: !2786, line: 31, type: !105)
!4962 = !DILocation(line: 0, scope: !4958, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 157, column: 11, scope: !4956, inlinedAt: !4932)
!4964 = !DILocation(line: 34, column: 10, scope: !4958, inlinedAt: !4963)
!4965 = !DILocation(line: 158, column: 11, scope: !4956, inlinedAt: !4932)
!4966 = !DILocation(line: 162, column: 23, scope: !4967, inlinedAt: !4932)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !1216, line: 162, column: 15)
!4968 = distinct !DILexicalBlock(scope: !4953, file: !1216, line: 161, column: 9)
!4969 = !DILocation(line: 162, column: 15, scope: !4968, inlinedAt: !4932)
!4970 = !DILocation(line: 167, column: 44, scope: !4971, inlinedAt: !4932)
!4971 = distinct !DILexicalBlock(scope: !4967, file: !1216, line: 163, column: 13)
!4972 = !DILocation(line: 0, scope: !4958, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 167, column: 15, scope: !4971, inlinedAt: !4932)
!4974 = !DILocation(line: 34, column: 10, scope: !4958, inlinedAt: !4973)
!4975 = !DILocation(line: 168, column: 15, scope: !4971, inlinedAt: !4932)
!4976 = !DILocation(line: 168, column: 32, scope: !4971, inlinedAt: !4932)
!4977 = !DILocation(line: 169, column: 13, scope: !4971, inlinedAt: !4932)
!4978 = !DILocation(line: 0, scope: !4930, inlinedAt: !4932)
!4979 = !DILocation(line: 274, column: 3, scope: !4914)
!4980 = distinct !DISubprogram(name: "setlocale_null", scope: !1216, file: !1216, line: 301, type: !4935, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4981)
!4981 = !{!4982}
!4982 = !DILocalVariable(name: "category", arg: 1, scope: !4980, file: !1216, line: 301, type: !14)
!4983 = !DILocation(line: 0, scope: !4980)
!4984 = !DILocation(line: 0, scope: !4934, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 304, column: 10, scope: !4980)
!4986 = !DILocation(line: 62, column: 24, scope: !4934, inlinedAt: !4985)
!4987 = !DILocation(line: 304, column: 3, scope: !4980)
!4988 = distinct !DISubprogram(name: "fd_safer", scope: !1219, file: !1219, line: 37, type: !464, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1218, retainedNodes: !4989)
!4989 = !{!4990, !4991, !4994}
!4990 = !DILocalVariable(name: "fd", arg: 1, scope: !4988, file: !1219, line: 37, type: !14)
!4991 = !DILocalVariable(name: "f", scope: !4992, file: !1219, line: 41, type: !14)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !1219, line: 40, column: 5)
!4993 = distinct !DILexicalBlock(scope: !4988, file: !1219, line: 39, column: 7)
!4994 = !DILocalVariable(name: "e", scope: !4992, file: !1219, line: 42, type: !14)
!4995 = !DILocation(line: 0, scope: !4988)
!4996 = !DILocation(line: 39, column: 26, scope: !4993)
!4997 = !DILocation(line: 41, column: 15, scope: !4992)
!4998 = !DILocation(line: 0, scope: !4992)
!4999 = !DILocation(line: 42, column: 15, scope: !4992)
!5000 = !DILocation(line: 43, column: 7, scope: !4992)
!5001 = !DILocation(line: 44, column: 13, scope: !4992)
!5002 = !DILocation(line: 46, column: 5, scope: !4992)
!5003 = !DILocation(line: 48, column: 3, scope: !4988)
!5004 = distinct !DISubprogram(name: "rpl_fclose", scope: !1223, file: !1223, line: 58, type: !5005, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1222, retainedNodes: !5009)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!14, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !1229)
!5009 = !{!5010, !5011, !5012, !5013}
!5010 = !DILocalVariable(name: "fp", arg: 1, scope: !5004, file: !1223, line: 58, type: !5007)
!5011 = !DILocalVariable(name: "saved_errno", scope: !5004, file: !1223, line: 60, type: !14)
!5012 = !DILocalVariable(name: "fd", scope: !5004, file: !1223, line: 61, type: !14)
!5013 = !DILocalVariable(name: "result", scope: !5004, file: !1223, line: 62, type: !14)
!5014 = !DILocation(line: 0, scope: !5004)
!5015 = !DILocation(line: 65, column: 8, scope: !5004)
!5016 = !DILocation(line: 66, column: 10, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5004, file: !1223, line: 66, column: 7)
!5018 = !DILocation(line: 66, column: 7, scope: !5004)
!5019 = !DILocation(line: 67, column: 12, scope: !5017)
!5020 = !DILocation(line: 67, column: 5, scope: !5017)
!5021 = !DILocation(line: 72, column: 9, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5004, file: !1223, line: 72, column: 7)
!5023 = !DILocation(line: 72, column: 23, scope: !5022)
!5024 = !DILocation(line: 72, column: 33, scope: !5022)
!5025 = !DILocation(line: 72, column: 26, scope: !5022)
!5026 = !DILocation(line: 72, column: 59, scope: !5022)
!5027 = !DILocation(line: 73, column: 7, scope: !5022)
!5028 = !DILocation(line: 73, column: 10, scope: !5022)
!5029 = !DILocation(line: 72, column: 7, scope: !5004)
!5030 = !DILocation(line: 100, column: 12, scope: !5004)
!5031 = !DILocation(line: 105, column: 7, scope: !5004)
!5032 = !DILocation(line: 74, column: 19, scope: !5022)
!5033 = !DILocation(line: 105, column: 19, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5004, file: !1223, line: 105, column: 7)
!5035 = !DILocation(line: 107, column: 13, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5034, file: !1223, line: 106, column: 5)
!5037 = !DILocation(line: 109, column: 5, scope: !5036)
!5038 = !DILocation(line: 112, column: 1, scope: !5004)
!5039 = distinct !DISubprogram(name: "rpl_fflush", scope: !1266, file: !1266, line: 129, type: !5040, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1265, retainedNodes: !5044)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!14, !5042}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !1272)
!5044 = !{!5045}
!5045 = !DILocalVariable(name: "stream", arg: 1, scope: !5039, file: !1266, line: 129, type: !5042)
!5046 = !DILocation(line: 0, scope: !5039)
!5047 = !DILocation(line: 150, column: 14, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5039, file: !1266, line: 150, column: 7)
!5049 = !DILocation(line: 150, column: 22, scope: !5048)
!5050 = !DILocation(line: 150, column: 27, scope: !5048)
!5051 = !DILocation(line: 150, column: 7, scope: !5039)
!5052 = !DILocation(line: 151, column: 12, scope: !5048)
!5053 = !DILocation(line: 151, column: 5, scope: !5048)
!5054 = !DILocalVariable(name: "fp", arg: 1, scope: !5055, file: !1266, line: 41, type: !5042)
!5055 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1266, file: !1266, line: 41, type: !5056, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1265, retainedNodes: !5058)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !5042}
!5058 = !{!5054}
!5059 = !DILocation(line: 0, scope: !5055, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 156, column: 3, scope: !5039)
!5061 = !DILocation(line: 43, column: 11, scope: !5062, inlinedAt: !5060)
!5062 = distinct !DILexicalBlock(scope: !5055, file: !1266, line: 43, column: 7)
!5063 = !DILocation(line: 43, column: 18, scope: !5062, inlinedAt: !5060)
!5064 = !DILocation(line: 43, column: 7, scope: !5055, inlinedAt: !5060)
!5065 = !DILocation(line: 45, column: 5, scope: !5062, inlinedAt: !5060)
!5066 = !DILocation(line: 158, column: 10, scope: !5039)
!5067 = !DILocation(line: 158, column: 3, scope: !5039)
!5068 = !DILocation(line: 235, column: 1, scope: !5039)
!5069 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1307, file: !1307, line: 28, type: !5070, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1306, retainedNodes: !5075)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!14, !5072, !5074, !14}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1671, line: 7, baseType: !1313)
!5074 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !54, line: 63, baseType: !80)
!5075 = !{!5076, !5077, !5078, !5079}
!5076 = !DILocalVariable(name: "fp", arg: 1, scope: !5069, file: !1307, line: 28, type: !5072)
!5077 = !DILocalVariable(name: "offset", arg: 2, scope: !5069, file: !1307, line: 28, type: !5074)
!5078 = !DILocalVariable(name: "whence", arg: 3, scope: !5069, file: !1307, line: 28, type: !14)
!5079 = !DILocalVariable(name: "pos", scope: !5080, file: !1307, line: 117, type: !5074)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !1307, line: 113, column: 5)
!5081 = distinct !DILexicalBlock(scope: !5069, file: !1307, line: 52, column: 7)
!5082 = !DILocation(line: 0, scope: !5069)
!5083 = !DILocation(line: 52, column: 11, scope: !5081)
!5084 = !{!1719, !1388, i64 16}
!5085 = !DILocation(line: 52, column: 31, scope: !5081)
!5086 = !{!1719, !1388, i64 8}
!5087 = !DILocation(line: 52, column: 24, scope: !5081)
!5088 = !DILocation(line: 53, column: 7, scope: !5081)
!5089 = !DILocation(line: 53, column: 14, scope: !5081)
!5090 = !DILocation(line: 53, column: 35, scope: !5081)
!5091 = !{!1719, !1388, i64 32}
!5092 = !DILocation(line: 53, column: 28, scope: !5081)
!5093 = !DILocation(line: 54, column: 7, scope: !5081)
!5094 = !DILocation(line: 54, column: 14, scope: !5081)
!5095 = !{!1719, !1388, i64 72}
!5096 = !DILocation(line: 54, column: 28, scope: !5081)
!5097 = !DILocation(line: 52, column: 7, scope: !5069)
!5098 = !DILocation(line: 117, column: 26, scope: !5080)
!5099 = !DILocation(line: 117, column: 19, scope: !5080)
!5100 = !DILocation(line: 0, scope: !5080)
!5101 = !DILocation(line: 118, column: 15, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5080, file: !1307, line: 118, column: 11)
!5103 = !DILocation(line: 118, column: 11, scope: !5080)
!5104 = !DILocation(line: 129, column: 11, scope: !5080)
!5105 = !DILocation(line: 129, column: 18, scope: !5080)
!5106 = !DILocation(line: 130, column: 11, scope: !5080)
!5107 = !DILocation(line: 130, column: 19, scope: !5080)
!5108 = !{!1719, !1720, i64 144}
!5109 = !DILocation(line: 161, column: 7, scope: !5080)
!5110 = !DILocation(line: 163, column: 10, scope: !5069)
!5111 = !DILocation(line: 163, column: 3, scope: !5069)
!5112 = !DILocation(line: 164, column: 1, scope: !5069)
!5113 = !DILocation(line: 0, scope: !450)
!5114 = !DILocation(line: 53, column: 12, scope: !450)
!5115 = !DILocation(line: 54, column: 10, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !450, file: !451, line: 54, column: 7)
!5117 = !DILocation(line: 54, column: 7, scope: !450)
!5118 = !DILocation(line: 64, column: 3, scope: !450)
!5119 = !DILocation(line: 64, column: 15, scope: !450)
!5120 = !DILocalVariable(name: "__fd", arg: 1, scope: !5121, file: !162, line: 474, type: !14)
!5121 = distinct !DISubprogram(name: "fstatat", scope: !162, file: !162, line: 474, type: !5122, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !5125)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!14, !14, !50, !5124, !14}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!5125 = !{!5120, !5126, !5127, !5128}
!5126 = !DILocalVariable(name: "__filename", arg: 2, scope: !5121, file: !162, line: 474, type: !50)
!5127 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !5121, file: !162, line: 474, type: !5124)
!5128 = !DILocalVariable(name: "__flag", arg: 4, scope: !5121, file: !162, line: 474, type: !14)
!5129 = !DILocation(line: 0, scope: !5121, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 65, column: 7, scope: !508)
!5131 = !DILocation(line: 477, column: 10, scope: !5121, inlinedAt: !5130)
!5132 = !DILocation(line: 65, column: 44, scope: !508)
!5133 = !DILocation(line: 65, column: 7, scope: !450)
!5134 = !DILocation(line: 67, column: 24, scope: !507)
!5135 = !DILocation(line: 0, scope: !507)
!5136 = !DILocation(line: 68, column: 7, scope: !507)
!5137 = !DILocation(line: 69, column: 13, scope: !507)
!5138 = !DILocation(line: 72, column: 7, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !450, file: !451, line: 72, column: 7)
!5140 = !DILocation(line: 72, column: 7, scope: !450)
!5141 = !DILocation(line: 74, column: 7, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5139, file: !451, line: 73, column: 5)
!5143 = !DILocation(line: 75, column: 7, scope: !5142)
!5144 = !DILocation(line: 75, column: 13, scope: !5142)
!5145 = !DILocation(line: 76, column: 7, scope: !5142)
!5146 = !DILocation(line: 81, column: 3, scope: !450)
!5147 = !DILocation(line: 81, column: 8, scope: !450)
!5148 = !DILocation(line: 82, column: 3, scope: !450)
!5149 = !DILocation(line: 83, column: 22, scope: !450)
!5150 = !DILocation(line: 84, column: 21, scope: !450)
!5151 = !DILocation(line: 85, column: 3, scope: !450)
!5152 = !DILocation(line: 86, column: 20, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !450, file: !451, line: 86, column: 7)
!5154 = !DILocation(line: 86, column: 7, scope: !450)
!5155 = !DILocation(line: 88, column: 19, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !450, file: !451, line: 88, column: 7)
!5157 = !DILocation(line: 88, column: 7, scope: !450)
!5158 = !DILocation(line: 90, column: 13, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5156, file: !451, line: 89, column: 5)
!5160 = !DILocation(line: 91, column: 7, scope: !5159)
!5161 = !DILocation(line: 109, column: 10, scope: !450)
!5162 = !DILocation(line: 109, column: 3, scope: !450)
!5163 = !DILocation(line: 110, column: 1, scope: !450)
!5164 = distinct !DISubprogram(name: "dup_safer", scope: !1348, file: !1348, line: 31, type: !464, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5165)
!5165 = !{!5166}
!5166 = !DILocalVariable(name: "fd", arg: 1, scope: !5164, file: !1348, line: 31, type: !14)
!5167 = !DILocation(line: 0, scope: !5164)
!5168 = !DILocation(line: 33, column: 10, scope: !5164)
!5169 = !DILocation(line: 33, column: 3, scope: !5164)
!5170 = distinct !DISubprogram(name: "rpl_fcntl", scope: !521, file: !521, line: 202, type: !527, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !5171)
!5171 = !{!5172, !5173, !5174, !5184, !5185, !5188, !5190, !5194}
!5172 = !DILocalVariable(name: "fd", arg: 1, scope: !5170, file: !521, line: 202, type: !14)
!5173 = !DILocalVariable(name: "action", arg: 2, scope: !5170, file: !521, line: 202, type: !14)
!5174 = !DILocalVariable(name: "arg", scope: !5170, file: !521, line: 208, type: !5175)
!5175 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1678, line: 14, baseType: !5176)
!5176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !521, line: 208, baseType: !5177)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5178, size: 192, elements: !88)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !521, line: 208, size: 192, elements: !5179)
!5179 = !{!5180, !5181, !5182, !5183}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5178, file: !521, line: 208, baseType: !21, size: 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5178, file: !521, line: 208, baseType: !21, size: 32, offset: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5178, file: !521, line: 208, baseType: !103, size: 64, offset: 64)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5178, file: !521, line: 208, baseType: !103, size: 64, offset: 128)
!5184 = !DILocalVariable(name: "result", scope: !5170, file: !521, line: 209, type: !14)
!5185 = !DILocalVariable(name: "target", scope: !5186, file: !521, line: 215, type: !14)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !521, line: 214, column: 7)
!5187 = distinct !DILexicalBlock(scope: !5170, file: !521, line: 212, column: 5)
!5188 = !DILocalVariable(name: "target", scope: !5189, file: !521, line: 222, type: !14)
!5189 = distinct !DILexicalBlock(scope: !5187, file: !521, line: 221, column: 7)
!5190 = !DILocalVariable(name: "x", scope: !5191, file: !521, line: 423, type: !14)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !521, line: 422, column: 13)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !521, line: 260, column: 11)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !521, line: 257, column: 7)
!5194 = !DILocalVariable(name: "p", scope: !5195, file: !521, line: 431, type: !103)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !521, line: 430, column: 13)
!5196 = !DILocation(line: 0, scope: !5170)
!5197 = !DILocation(line: 208, column: 3, scope: !5170)
!5198 = !DILocation(line: 208, column: 11, scope: !5170)
!5199 = !DILocation(line: 210, column: 3, scope: !5170)
!5200 = !DILocation(line: 211, column: 3, scope: !5170)
!5201 = !DILocation(line: 215, column: 22, scope: !5186)
!5202 = !DILocation(line: 0, scope: !5186)
!5203 = !DILocalVariable(name: "fd", arg: 1, scope: !5204, file: !521, line: 447, type: !14)
!5204 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !521, file: !521, line: 447, type: !522, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !5205)
!5205 = !{!5203, !5206, !5207}
!5206 = !DILocalVariable(name: "target", arg: 2, scope: !5204, file: !521, line: 447, type: !14)
!5207 = !DILocalVariable(name: "result", scope: !5204, file: !521, line: 449, type: !14)
!5208 = !DILocation(line: 0, scope: !5204, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 216, column: 18, scope: !5186)
!5210 = !DILocation(line: 482, column: 12, scope: !5204, inlinedAt: !5209)
!5211 = !DILocation(line: 222, column: 22, scope: !5189)
!5212 = !DILocation(line: 0, scope: !5189)
!5213 = !DILocation(line: 0, scope: !520, inlinedAt: !5214)
!5214 = distinct !DILocation(line: 223, column: 18, scope: !5189)
!5215 = !DILocation(line: 508, column: 12, scope: !5216, inlinedAt: !5214)
!5216 = distinct !DILexicalBlock(scope: !520, file: !521, line: 508, column: 7)
!5217 = !DILocation(line: 508, column: 9, scope: !5216, inlinedAt: !5214)
!5218 = !DILocation(line: 508, column: 7, scope: !520, inlinedAt: !5214)
!5219 = !DILocation(line: 510, column: 16, scope: !5220, inlinedAt: !5214)
!5220 = distinct !DILexicalBlock(scope: !5216, file: !521, line: 509, column: 5)
!5221 = !DILocation(line: 511, column: 13, scope: !5222, inlinedAt: !5214)
!5222 = distinct !DILexicalBlock(scope: !5220, file: !521, line: 511, column: 11)
!5223 = !DILocation(line: 511, column: 23, scope: !5222, inlinedAt: !5214)
!5224 = !DILocation(line: 511, column: 26, scope: !5222, inlinedAt: !5214)
!5225 = !DILocation(line: 511, column: 32, scope: !5222, inlinedAt: !5214)
!5226 = !DILocation(line: 511, column: 11, scope: !5220, inlinedAt: !5214)
!5227 = !DILocation(line: 513, column: 30, scope: !5228, inlinedAt: !5214)
!5228 = distinct !DILexicalBlock(scope: !5222, file: !521, line: 512, column: 9)
!5229 = !DILocation(line: 529, column: 19, scope: !536, inlinedAt: !5214)
!5230 = !DILocation(line: 0, scope: !5204, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 521, column: 20, scope: !5232, inlinedAt: !5214)
!5232 = distinct !DILexicalBlock(scope: !5222, file: !521, line: 520, column: 9)
!5233 = !DILocation(line: 482, column: 12, scope: !5204, inlinedAt: !5231)
!5234 = !DILocation(line: 522, column: 22, scope: !5235, inlinedAt: !5214)
!5235 = distinct !DILexicalBlock(scope: !5232, file: !521, line: 522, column: 15)
!5236 = !DILocation(line: 522, column: 15, scope: !5232, inlinedAt: !5214)
!5237 = !DILocation(line: 523, column: 32, scope: !5235, inlinedAt: !5214)
!5238 = !DILocation(line: 523, column: 13, scope: !5235, inlinedAt: !5214)
!5239 = !DILocation(line: 0, scope: !5204, inlinedAt: !5240)
!5240 = distinct !DILocation(line: 528, column: 14, scope: !5216, inlinedAt: !5214)
!5241 = !DILocation(line: 482, column: 12, scope: !5204, inlinedAt: !5240)
!5242 = !DILocation(line: 529, column: 22, scope: !536, inlinedAt: !5214)
!5243 = !DILocation(line: 0, scope: !5216, inlinedAt: !5214)
!5244 = !DILocation(line: 529, column: 9, scope: !536, inlinedAt: !5214)
!5245 = !DILocation(line: 531, column: 19, scope: !535, inlinedAt: !5214)
!5246 = !DILocation(line: 0, scope: !535, inlinedAt: !5214)
!5247 = !DILocation(line: 532, column: 17, scope: !539, inlinedAt: !5214)
!5248 = !DILocation(line: 532, column: 21, scope: !539, inlinedAt: !5214)
!5249 = !DILocation(line: 532, column: 54, scope: !539, inlinedAt: !5214)
!5250 = !DILocation(line: 532, column: 24, scope: !539, inlinedAt: !5214)
!5251 = !DILocation(line: 532, column: 68, scope: !539, inlinedAt: !5214)
!5252 = !DILocation(line: 532, column: 11, scope: !535, inlinedAt: !5214)
!5253 = !DILocation(line: 534, column: 29, scope: !538, inlinedAt: !5214)
!5254 = !DILocation(line: 0, scope: !538, inlinedAt: !5214)
!5255 = !DILocation(line: 535, column: 11, scope: !538, inlinedAt: !5214)
!5256 = !DILocation(line: 536, column: 17, scope: !538, inlinedAt: !5214)
!5257 = !DILocation(line: 538, column: 9, scope: !538, inlinedAt: !5214)
!5258 = !DILocation(line: 328, column: 22, scope: !5192)
!5259 = !DILocation(line: 329, column: 13, scope: !5192)
!5260 = !DILocation(line: 423, column: 23, scope: !5191)
!5261 = !DILocation(line: 0, scope: !5191)
!5262 = !DILocation(line: 424, column: 24, scope: !5191)
!5263 = !DILocation(line: 426, column: 13, scope: !5192)
!5264 = !DILocation(line: 431, column: 25, scope: !5195)
!5265 = !DILocation(line: 0, scope: !5195)
!5266 = !DILocation(line: 432, column: 24, scope: !5195)
!5267 = !DILocation(line: 434, column: 13, scope: !5192)
!5268 = !DILocation(line: 0, scope: !5187)
!5269 = !DILocation(line: 442, column: 3, scope: !5170)
!5270 = !DILocation(line: 444, column: 1, scope: !5170)
!5271 = !DILocation(line: 443, column: 3, scope: !5170)
