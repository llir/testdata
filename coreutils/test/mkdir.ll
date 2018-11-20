; ModuleID = 'coreutils-8.30/src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), align 8, !dbg !66
@.str.41 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !72
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !77
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !81
@.str.51 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.52 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.2.53 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.3.54 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !88
@.str.63 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 16, !dbg !95
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !126
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !133
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !145
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.79 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.80 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.81 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.82 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !152
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !159
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !147
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !161
@.str.5.91 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.92 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1.93 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1
@.str.3.95 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1
@.str.4.96 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.102 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.118 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.119 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.120 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !167
@.str.1.131 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.147 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !176

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !721 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !726, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %0, metadata !725, metadata !DIExpression()), !dbg !747
  %3 = icmp eq i32 %0, 0, !dbg !748
  br i1 %3, label %9, label %4, !dbg !749

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750, !tbaa !752
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !750
  %7 = load i8*, i8** @program_name, align 8, !dbg !750, !tbaa !752
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #9, !dbg !750
  br label %66, !dbg !750

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !756
  %11 = load i8*, i8** @program_name, align 8, !dbg !756, !tbaa !752
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #9, !dbg !756
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !757
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !752
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !757
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !758
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !752
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #9, !dbg !758
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !763
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !752
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !763
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !764
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !752
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !764
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !765
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !752
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !765
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !766
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !752
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !766
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !767
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #9, !dbg !767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %31, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #9, !dbg !743
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !768
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !734, metadata !DIExpression()) #9, !dbg !769
  br label %33, !dbg !770

; <label>:33:                                     ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !734, metadata !DIExpression()) #9, !dbg !769
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #15, !dbg !770
  %37 = icmp eq i32 %36, 0, !dbg !770
  br i1 %37, label %43, label %38, !dbg !771

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !772
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !734, metadata !DIExpression()) #9, !dbg !769
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !773
  %41 = load i8*, i8** %40, align 8, !dbg !773, !tbaa !774
  %42 = icmp eq i8* %41, null, !dbg !776
  br i1 %42, label %43, label %33, !dbg !777, !llvm.loop !778

; <label>:43:                                     ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !734, metadata !DIExpression()) #9, !dbg !769
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !734, metadata !DIExpression()) #9, !dbg !769
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !781
  %46 = load i8*, i8** %45, align 8, !dbg !781, !tbaa !783
  %47 = icmp eq i8* %46, null, !dbg !784
  %48 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !785
  call void @llvm.dbg.value(metadata i8* %48, metadata !733, metadata !DIExpression()) #9, !dbg !786
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !787
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !787
  %51 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !788
  call void @llvm.dbg.value(metadata i8* %51, metadata !741, metadata !DIExpression()) #9, !dbg !789
  %52 = icmp eq i8* %51, null, !dbg !790
  br i1 %52, label %59, label %53, !dbg !792

; <label>:53:                                     ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #15, !dbg !793
  %55 = icmp eq i32 %54, 0, !dbg !793
  br i1 %55, label %59, label %56, !dbg !794

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), i32 5) #9, !dbg !795
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !795
  br label %59, !dbg !797

; <label>:59:                                     ; preds = %43, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !798
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !798
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !799
  %63 = icmp eq i8* %48, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !799
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !799
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* %48, i8* %64) #9, !dbg !799
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #9, !dbg !800
  br label %66

; <label>:66:                                     ; preds = %59, %4
  tail call void @exit(i32 %0) #16, !dbg !801
  unreachable, !dbg !801
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !802 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8** %1, metadata !808, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* null, metadata !809, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* null, metadata !811, metadata !DIExpression()), !dbg !839
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9, !dbg !840
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !841
  store i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !842, !tbaa !843
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !847
  store i32 511, i32* %6, align 4, !dbg !848, !tbaa !849
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !850
  store i32 0, i32* %7, align 8, !dbg !851, !tbaa !852
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 5, !dbg !853
  store i8* null, i8** %8, align 8, !dbg !854, !tbaa !855
  %9 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !856
  store i8 0, i8* %9, align 4, !dbg !857, !tbaa !858
  %10 = load i8*, i8** %1, align 8, !dbg !859, !tbaa !752
  tail call void @set_program_name(i8* %10) #9, !dbg !860
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !861
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !862
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !863
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !864
  br label %15, !dbg !865

; <label>:15:                                     ; preds = %22, %2
  %16 = phi i32 (i8*, i8*, i8*)* [ @make_ancestor, %22 ], [ null, %2 ]
  %17 = phi i8* [ %19, %22 ], [ null, %2 ]
  br label %18, !dbg !866

; <label>:18:                                     ; preds = %15, %23
  %19 = phi i8* [ %17, %15 ], [ %24, %23 ]
  br label %20, !dbg !866

; <label>:20:                                     ; preds = %30, %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* null, metadata !811, metadata !DIExpression()), !dbg !839
  %21 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !866
  call void @llvm.dbg.value(metadata i32 %21, metadata !810, metadata !DIExpression()), !dbg !867
  switch i32 %21, label %37 [
    i32 -1, label %38
    i32 112, label %22
    i32 109, label %23
    i32 118, label %25
    i32 90, label %27
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !865

; <label>:22:                                     ; preds = %20
  store i32 (i8*, i8*, i8*)* @make_ancestor, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !868, !tbaa !843
  br label %15, !dbg !871, !llvm.loop !872

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !874, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %24, metadata !809, metadata !DIExpression()), !dbg !838
  br label %18, !dbg !875, !llvm.loop !872

; <label>:25:                                     ; preds = %20
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !876
  store i8* %26, i8** %8, align 8, !dbg !877, !tbaa !855
  br label %30, !dbg !878

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** @optarg, align 8, !dbg !879, !tbaa !752
  %29 = icmp eq i8* %28, null, !dbg !883
  br i1 %29, label %30, label %31, !dbg !884

; <label>:30:                                     ; preds = %27, %31, %25
  br label %20, !dbg !838, !llvm.loop !872

; <label>:31:                                     ; preds = %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !885
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #9, !dbg !887
  br label %30, !dbg !888

; <label>:33:                                     ; preds = %20
  tail call void @usage(i32 0) #17, !dbg !889
  unreachable, !dbg !889

; <label>:34:                                     ; preds = %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !890, !tbaa !752
  %36 = load i8*, i8** @Version, align 8, !dbg !890, !tbaa !752
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #9, !dbg !890
  tail call void @exit(i32 0) #16, !dbg !890
  unreachable, !dbg !890

; <label>:37:                                     ; preds = %20
  tail call void @usage(i32 1) #17, !dbg !891
  unreachable, !dbg !891

; <label>:38:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !838
  %39 = load i32, i32* @optind, align 4, !dbg !892, !tbaa !894
  %40 = icmp eq i32 %39, %0, !dbg !895
  br i1 %40, label %41, label %43, !dbg !896

; <label>:41:                                     ; preds = %38
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !897
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42) #9, !dbg !899
  tail call void @usage(i32 1) #17, !dbg !900
  unreachable, !dbg !900

; <label>:43:                                     ; preds = %38
  %44 = icmp ne i32 (i8*, i8*, i8*)* %16, null, !dbg !901
  %45 = icmp ne i8* %19, null, !dbg !902
  %46 = or i1 %45, %44, !dbg !903
  br i1 %46, label %47, label %61, !dbg !903

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @umask(i32 0) #9, !dbg !904
  call void @llvm.dbg.value(metadata i32 %48, metadata !827, metadata !DIExpression()), !dbg !905
  %49 = tail call i32 @umask(i32 %48) #9, !dbg !906
  %50 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !907
  store i32 %48, i32* %50, align 8, !dbg !908, !tbaa !909
  br i1 %45, label %51, label %60, !dbg !910

; <label>:51:                                     ; preds = %47
  %52 = tail call %struct.mode_change* @mode_compile(i8* nonnull %19) #9, !dbg !911
  call void @llvm.dbg.value(metadata %struct.mode_change* %52, metadata !830, metadata !DIExpression()), !dbg !912
  %53 = icmp eq %struct.mode_change* %52, null, !dbg !913
  br i1 %53, label %54, label %57, !dbg !915

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !916
  %56 = tail call i8* @quote(i8* nonnull %19) #9, !dbg !916
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %55, i8* %56) #9, !dbg !916
  unreachable, !dbg !916

; <label>:57:                                     ; preds = %51
  %58 = call i32 @mode_adjust(i32 511, i1 zeroext true, i32 %48, %struct.mode_change* nonnull %52, i32* nonnull %7) #9, !dbg !917
  store i32 %58, i32* %6, align 4, !dbg !918, !tbaa !849
  %59 = bitcast %struct.mode_change* %52 to i8*, !dbg !919
  call void @free(i8* %59) #9, !dbg !920
  br label %61, !dbg !921

; <label>:60:                                     ; preds = %47
  store i32 511, i32* %6, align 4, !dbg !922, !tbaa !849
  br label %61

; <label>:61:                                     ; preds = %57, %60, %43
  %62 = load i32, i32* @optind, align 4, !dbg !923, !tbaa !894
  %63 = sub nsw i32 %0, %62, !dbg !924
  %64 = sext i32 %62 to i64, !dbg !925
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !925
  %66 = call i32 @savewd_process_files(i32 %63, i8** %65, i32 (i8*, %struct.savewd*, i8*)* nonnull @process_dir, i8* nonnull %4) #9, !dbg !926
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9, !dbg !927
  ret i32 %66, !dbg !928
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @make_ancestor(i8*, i8* nocapture readonly, i8* nocapture readonly) #7 !dbg !929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !931, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8* %1, metadata !932, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* %2, metadata !933, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8* %2, metadata !934, metadata !DIExpression()), !dbg !946
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !947
  %5 = load i8, i8* %4, align 4, !dbg !947, !tbaa !858, !range !949
  %6 = icmp eq i8 %5, 0, !dbg !947
  br i1 %6, label %9, label %7, !dbg !950

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i8* null, metadata !951, metadata !DIExpression()) #9, !dbg !958
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()) #9, !dbg !960
  %8 = tail call i32* @__errno_location() #18, !dbg !961
  store i32 95, i32* %8, align 4, !dbg !962, !tbaa !894
  br label %9, !dbg !963

; <label>:9:                                      ; preds = %7, %3
  call void @llvm.dbg.value(metadata i32 192, metadata !937, metadata !DIExpression()), !dbg !964
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !965
  %11 = bitcast i8* %10 to i32*, !dbg !965
  %12 = load i32, i32* %11, align 8, !dbg !965, !tbaa !909
  %13 = and i32 %12, 192, !dbg !966
  %14 = icmp eq i32 %13, 0, !dbg !967
  br i1 %14, label %15, label %17, !dbg !968

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !969
  call void @llvm.dbg.value(metadata i32 %16, metadata !939, metadata !DIExpression()), !dbg !970
  br label %25

; <label>:17:                                     ; preds = %9
  %18 = and i32 %12, -193, !dbg !971
  %19 = tail call i32 @umask(i32 %18) #9, !dbg !973
  %20 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !969
  call void @llvm.dbg.value(metadata i32 %16, metadata !939, metadata !DIExpression()), !dbg !970
  %21 = tail call i32* @__errno_location() #18, !dbg !974
  %22 = load i32, i32* %21, align 4, !dbg !974, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %22, metadata !940, metadata !DIExpression()), !dbg !975
  %23 = load i32, i32* %11, align 8, !dbg !976, !tbaa !909
  %24 = tail call i32 @umask(i32 %23) #9, !dbg !977
  store i32 %22, i32* %21, align 4, !dbg !978, !tbaa !894
  br label %25, !dbg !979

; <label>:25:                                     ; preds = %15, %17
  %26 = phi i32 [ %20, %17 ], [ %16, %15 ]
  %27 = icmp eq i32 %26, 0, !dbg !980
  br i1 %27, label %28, label %39, !dbg !982

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %11, align 8, !dbg !983, !tbaa !909
  %30 = lshr i32 %29, 8, !dbg !985
  %31 = and i32 %30, 1, !dbg !985
  call void @llvm.dbg.value(metadata i32 %31, metadata !939, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %0, metadata !986, metadata !DIExpression()) #9, !dbg !993
  call void @llvm.dbg.value(metadata i8* %2, metadata !991, metadata !DIExpression()) #9, !dbg !995
  call void @llvm.dbg.value(metadata i8* %2, metadata !992, metadata !DIExpression()) #9, !dbg !996
  %32 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !997
  %33 = bitcast i8* %32 to i8**, !dbg !997
  %34 = load i8*, i8** %33, align 8, !dbg !997, !tbaa !855
  %35 = icmp eq i8* %34, null, !dbg !999
  br i1 %35, label %39, label %36, !dbg !1000

; <label>:36:                                     ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1001, !tbaa !752
  %38 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !1002
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %37, i8* nonnull %34, i8* %38) #9, !dbg !1003
  br label %39, !dbg !1003

; <label>:39:                                     ; preds = %36, %28, %25
  %40 = phi i32 [ %26, %25 ], [ %31, %28 ], [ %31, %36 ], !dbg !1004
  call void @llvm.dbg.value(metadata i32 %40, metadata !939, metadata !DIExpression()), !dbg !970
  ret i32 %40, !dbg !1005
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @process_dir(i8*, %struct.savewd*, i8*) #7 !dbg !1006 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1011, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1012, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %2, metadata !1013, metadata !DIExpression()), !dbg !1018
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1019
  %5 = load i8, i8* %4, align 4, !dbg !1019, !tbaa !858, !range !949
  %6 = icmp ne i8 %5, 0, !dbg !1019
  %7 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1021, !tbaa !843
  %9 = icmp eq i32 (i8*, i8*, i8*)* %8, null, !dbg !1024
  %10 = and i1 %6, %9, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %2, metadata !1014, metadata !DIExpression()), !dbg !1026
  br i1 %10, label %11, label %13, !dbg !1025

; <label>:11:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i8* null, metadata !951, metadata !DIExpression()) #9, !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()) #9, !dbg !1029
  %12 = tail call i32* @__errno_location() #18, !dbg !1030
  store i32 95, i32* %12, align 4, !dbg !1031, !tbaa !894
  br label %13, !dbg !1032

; <label>:13:                                     ; preds = %3, %11
  %14 = phi i32 (i8*, i8*, i8*)* [ null, %11 ], [ %8, %3 ], !dbg !1033
  %15 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1034
  %16 = bitcast i8* %15 to i32*, !dbg !1034
  %17 = load i32, i32* %16, align 4, !dbg !1034, !tbaa !849
  %18 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1035
  %19 = bitcast i8* %18 to i32*, !dbg !1035
  %20 = load i32, i32* %19, align 8, !dbg !1035, !tbaa !852
  %21 = tail call zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %14, i8* nonnull %2, i32 %17, void (i8*, i8*)* nonnull @announce_mkdir, i32 %20, i32 -1, i32 -1, i1 zeroext true) #9, !dbg !1036
  %22 = xor i1 %21, true, !dbg !1036
  %23 = zext i1 %22 to i32, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %23, metadata !1015, metadata !DIExpression()), !dbg !1037
  br i1 %21, label %24, label %32, !dbg !1038

; <label>:24:                                     ; preds = %13
  %25 = load i8, i8* %4, align 4, !dbg !1040, !tbaa !858, !range !949
  %26 = icmp eq i8 %25, 0, !dbg !1040
  br i1 %26, label %32, label %27, !dbg !1041

; <label>:27:                                     ; preds = %24
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1042, !tbaa !843
  %29 = icmp eq i32 (i8*, i8*, i8*)* %28, null, !dbg !1043
  br i1 %29, label %32, label %30, !dbg !1044

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8* null, metadata !1045, metadata !DIExpression()) #9, !dbg !1052
  call void @llvm.dbg.value(metadata i1 false, metadata !1050, metadata !DIExpression()) #9, !dbg !1056
  call void @llvm.dbg.value(metadata i1 false, metadata !1051, metadata !DIExpression()) #9, !dbg !1057
  %31 = tail call i32* @__errno_location() #18, !dbg !1058
  store i32 95, i32* %31, align 4, !dbg !1059, !tbaa !894
  br label %32, !dbg !1060

; <label>:32:                                     ; preds = %30, %27, %24, %13
  ret i32 %23, !dbg !1061
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @announce_mkdir(i8*, i8* nocapture readonly) #7 !dbg !987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !986, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %1, metadata !991, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %1, metadata !992, metadata !DIExpression()), !dbg !1064
  %3 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1065
  %4 = bitcast i8* %3 to i8**, !dbg !1065
  %5 = load i8*, i8** %4, align 8, !dbg !1065, !tbaa !855
  %6 = icmp eq i8* %5, null, !dbg !1066
  br i1 %6, label %10, label %7, !dbg !1067

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1068, !tbaa !752
  %9 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !1069
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %8, i8* nonnull %5, i8* %9) #9, !dbg !1070
  br label %10, !dbg !1070

; <label>:10:                                     ; preds = %2, %7
  ret void, !dbg !1071
}

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #7 !dbg !1072 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1128, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %1, metadata !1129, metadata !DIExpression()), !dbg !1143
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !1144
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1130, metadata !DIExpression()), !dbg !1145
  %5 = load i8*, i8** @program_name, align 8, !dbg !1146, !tbaa !752
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !1146
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !1147
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1148
  call void @llvm.va_start(i8* nonnull %4), !dbg !1148
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1149, metadata !DIExpression()) #9, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %1, metadata !1158, metadata !DIExpression()) #9, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !1159, metadata !DIExpression()) #9, !dbg !1163
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !1164
  call void @llvm.va_end(i8* nonnull %4), !dbg !1165
  call void @llvm.dbg.value(metadata i32 10, metadata !1166, metadata !DIExpression()) #9, !dbg !1173
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1172, metadata !DIExpression()) #9, !dbg !1175
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1176
  %11 = load i8*, i8** %10, align 8, !dbg !1176, !tbaa !1177
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1176
  %13 = load i8*, i8** %12, align 8, !dbg !1176, !tbaa !1181
  %14 = icmp ult i8* %11, %13, !dbg !1176
  br i1 %14, label %17, label %15, !dbg !1176, !prof !1182

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !1176
  br label %19, !dbg !1176

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1176
  store i8* %18, i8** %10, align 8, !dbg !1176, !tbaa !1177
  store i8 10, i8* %11, align 1, !dbg !1176, !tbaa !1183
  br label %19, !dbg !1176

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !1184
  ret void, !dbg !1184
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1187, metadata !DIExpression()), !dbg !1188
  store i8* %0, i8** @file_name, align 8, !dbg !1189, !tbaa !752
  ret void, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1191 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1195, metadata !DIExpression()), !dbg !1196
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1197, !tbaa !1198
  ret void, !dbg !1199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1200 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1205, !tbaa !752
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1206
  %3 = icmp eq i32 %2, 0, !dbg !1207
  br i1 %3, label %22, label %4, !dbg !1208

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1209, !tbaa !1198, !range !949
  %6 = icmp eq i8 %5, 0, !dbg !1209
  br i1 %6, label %11, label %7, !dbg !1210

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #18, !dbg !1211
  %9 = load i32, i32* %8, align 4, !dbg !1211, !tbaa !894
  %10 = icmp eq i32 %9, 32, !dbg !1212
  br i1 %10, label %22, label %11, !dbg !1213

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #9, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %12, metadata !1202, metadata !DIExpression()), !dbg !1215
  %13 = load i8*, i8** @file_name, align 8, !dbg !1216, !tbaa !752
  %14 = icmp eq i8* %13, null, !dbg !1216
  %15 = tail call i32* @__errno_location() #18, !dbg !1218
  %16 = load i32, i32* %15, align 4, !dbg !1218, !tbaa !894
  br i1 %14, label %19, label %17, !dbg !1219

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1220
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #9, !dbg !1221
  br label %20, !dbg !1221

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #9, !dbg !1222
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1223, !tbaa !894
  tail call void @_exit(i32 %21) #16, !dbg !1224
  unreachable, !dbg !1224

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1225, !tbaa !752
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #9, !dbg !1227
  %25 = icmp eq i32 %24, 0, !dbg !1228
  br i1 %25, label %28, label %26, !dbg !1229

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1230, !tbaa !894
  tail call void @_exit(i32 %27) #16, !dbg !1231
  unreachable, !dbg !1231

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1232
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @make_dir_parents(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)*, i8*, i32, void (i8*, i8*)* nocapture, i32, i32, i32, i1 zeroext) local_unnamed_addr #7 !dbg !1233 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1240, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1241, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !1242, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8* %3, metadata !1243, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %4, metadata !1244, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, metadata !1245, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %6, metadata !1246, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %7, metadata !1247, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 %8, metadata !1248, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i1 %9, metadata !1249, metadata !DIExpression()), !dbg !1319
  %13 = load i8, i8* %0, align 1, !dbg !1320, !tbaa !1183
  %14 = icmp eq i8 %13, 47, !dbg !1320
  br i1 %14, label %23, label %15, !dbg !1320

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1321, metadata !DIExpression()), !dbg !1328
  %16 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1330
  %17 = load i32, i32* %16, align 4, !dbg !1330, !tbaa !1331
  %18 = icmp eq i32 %17, 4, !dbg !1333
  br i1 %18, label %19, label %23, !dbg !1334

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1335
  %21 = load i32, i32* %20, align 4, !dbg !1335, !tbaa !1183
  call void @llvm.dbg.value(metadata i32 %21, metadata !1250, metadata !DIExpression()), !dbg !1336
  %22 = icmp eq i32 %21, 0, !dbg !1337
  br i1 %22, label %23, label %114, !dbg !1338

; <label>:23:                                     ; preds = %15, %10, %19
  call void @llvm.dbg.value(metadata i64 0, metadata !1251, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 2, metadata !1255, metadata !DIExpression()), !dbg !1340
  %24 = icmp ne i32 (i8*, i8*, i8*)* %2, null, !dbg !1341
  br i1 %24, label %25, label %33, !dbg !1343

; <label>:25:                                     ; preds = %23
  %26 = tail call i64 @mkancesdirs(i8* nonnull %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nonnull %2, i8* %3) #9, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %26, metadata !1251, metadata !DIExpression()), !dbg !1339
  %27 = icmp slt i64 %26, 0, !dbg !1346
  br i1 %27, label %28, label %33, !dbg !1348

; <label>:28:                                     ; preds = %25
  %29 = icmp eq i64 %26, -1, !dbg !1349
  br i1 %29, label %30, label %118, !dbg !1352

; <label>:30:                                     ; preds = %28
  %31 = tail call i32* @__errno_location() #18, !dbg !1353
  %32 = load i32, i32* %31, align 4, !dbg !1353, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %32, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 %32, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %26, metadata !1251, metadata !DIExpression()), !dbg !1339
  br label %114

; <label>:33:                                     ; preds = %25, %23
  %34 = phi i64 [ 0, %23 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %26, metadata !1251, metadata !DIExpression()), !dbg !1339
  %35 = and i32 %8, %7, !dbg !1354
  %36 = icmp eq i32 %35, -1, !dbg !1354
  %37 = and i32 %6, 3072, !dbg !1355
  %38 = and i32 %4, 512, !dbg !1356
  %39 = or i32 %37, %38, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %4, metadata !1260, metadata !DIExpression()), !dbg !1358
  br i1 %36, label %42, label %40, !dbg !1359

; <label>:40:                                     ; preds = %33
  %41 = and i32 %4, -64, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %41, metadata !1260, metadata !DIExpression()), !dbg !1358
  br label %46, !dbg !1362

; <label>:42:                                     ; preds = %33
  %43 = icmp eq i32 %39, 0, !dbg !1363
  %44 = and i32 %4, -19, !dbg !1364
  %45 = select i1 %43, i32 %4, i32 %44, !dbg !1366
  br label %46, !dbg !1366

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %47, metadata !1260, metadata !DIExpression()), !dbg !1358
  %48 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1368
  %49 = tail call i32 @mkdir(i8* %48, i32 %47) #9, !dbg !1369
  %50 = icmp eq i32 %49, 0, !dbg !1370
  br i1 %50, label %51, label %59, !dbg !1371

; <label>:51:                                     ; preds = %46
  %52 = and i32 %4, 511, !dbg !1372
  %53 = and i32 %52, %6, !dbg !1373
  tail call void %5(i8* nonnull %0, i8* %3) #9, !dbg !1374
  %54 = or i32 %39, %53, !dbg !1375
  %55 = icmp eq i32 %54, 0, !dbg !1375
  %56 = and i1 %55, %36, !dbg !1375
  call void @llvm.dbg.value(metadata i32 3, metadata !1255, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %61, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 -1, metadata !1260, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i32 2, metadata !1255, metadata !DIExpression()), !dbg !1340
  br i1 %56, label %57, label %79, !dbg !1376

; <label>:57:                                     ; preds = %51
  %58 = bitcast %struct.stat* %11 to i8*, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %58) #9, !dbg !1377
  br label %76, !dbg !1378

; <label>:59:                                     ; preds = %46
  %60 = tail call i32* @__errno_location() #18, !dbg !1380
  %61 = load i32, i32* %60, align 4, !dbg !1380, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %61, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 -1, metadata !1260, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i32 %61, metadata !1250, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 -1, metadata !1260, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i32 2, metadata !1255, metadata !DIExpression()), !dbg !1340
  br i1 %9, label %62, label %79, !dbg !1376

; <label>:62:                                     ; preds = %59
  %63 = bitcast %struct.stat* %11 to i8*, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %63) #9, !dbg !1377
  %64 = icmp eq i32 %61, 0, !dbg !1382
  br i1 %64, label %76, label %65, !dbg !1378

; <label>:65:                                     ; preds = %62
  %66 = icmp ne i32 %61, 2, !dbg !1383
  %67 = and i1 %24, %66, !dbg !1384
  br i1 %67, label %68, label %78, !dbg !1384

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.value(metadata %struct.stat* %11, metadata !1264, metadata !DIExpression(DW_OP_deref)), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %48, metadata !1386, metadata !DIExpression()) #9, !dbg !1394
  call void @llvm.dbg.value(metadata %struct.stat* %11, metadata !1393, metadata !DIExpression()) #9, !dbg !1394
  %69 = call i32 @__xstat(i32 1, i8* nonnull %48, %struct.stat* nonnull %11) #9, !dbg !1396
  %70 = icmp eq i32 %69, 0, !dbg !1397
  br i1 %70, label %71, label %78, !dbg !1398

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3, !dbg !1399
  %73 = load i32, i32* %72, align 8, !dbg !1399, !tbaa !1400
  %74 = and i32 %73, 61440, !dbg !1399
  %75 = icmp eq i32 %74, 16384, !dbg !1399
  br i1 %75, label %76, label %78, !dbg !1403

; <label>:76:                                     ; preds = %71, %62, %57
  %77 = phi i8* [ %58, %57 ], [ %63, %62 ], [ %63, %71 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %77) #9, !dbg !1404
  br label %118

; <label>:78:                                     ; preds = %65, %68, %71
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #9, !dbg !1404
  br label %114

; <label>:79:                                     ; preds = %51, %59
  %80 = phi i32 [ 0, %51 ], [ %61, %59 ]
  %81 = phi i32 [ %47, %51 ], [ -1, %59 ]
  %82 = phi i32 [ 3, %51 ], [ 2, %59 ]
  %83 = bitcast [2 x i32]* %12 to i8*, !dbg !1405
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1405
  call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1300, metadata !DIExpression()), !dbg !1406
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1407
  %85 = call i32 @savewd_chdir(%struct.savewd* %1, i8* %48, i32 %82, i32* nonnull %84) #9, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %85, metadata !1305, metadata !DIExpression()), !dbg !1409
  %86 = icmp slt i32 %85, -1, !dbg !1410
  br i1 %86, label %87, label %88, !dbg !1411

; <label>:87:                                     ; preds = %79
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1412
  br label %118

; <label>:88:                                     ; preds = %79
  %89 = icmp eq i32 %85, 0, !dbg !1413
  %90 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i8* %48, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %90, metadata !1309, metadata !DIExpression()), !dbg !1415
  %91 = load i32, i32* %84, align 4, !dbg !1416, !tbaa !894
  %92 = call i32 @dirchownmod(i32 %91, i8* %90, i32 %81, i32 %7, i32 %8, i32 %4, i32 %6) #9, !dbg !1418
  %93 = icmp eq i32 %92, 0, !dbg !1419
  br i1 %93, label %112, label %94, !dbg !1420

; <label>:94:                                     ; preds = %88
  %95 = icmp eq i32 %80, 0, !dbg !1421
  br i1 %95, label %96, label %98, !dbg !1423

; <label>:96:                                     ; preds = %94
  %97 = tail call i32* @__errno_location() #18, !dbg !1424
  br label %105, !dbg !1423

; <label>:98:                                     ; preds = %94
  %99 = icmp ne i32 %80, 2, !dbg !1426
  %100 = and i1 %24, %99, !dbg !1427
  br i1 %100, label %101, label %111, !dbg !1427

; <label>:101:                                    ; preds = %98
  %102 = tail call i32* @__errno_location() #18, !dbg !1428
  %103 = load i32, i32* %102, align 4, !dbg !1428, !tbaa !894
  %104 = icmp eq i32 %103, 20, !dbg !1429
  br i1 %104, label %111, label %105, !dbg !1430

; <label>:105:                                    ; preds = %96, %101
  %106 = phi i32* [ %97, %96 ], [ %102, %101 ], !dbg !1424
  %107 = load i32, i32* %106, align 4, !dbg !1424, !tbaa !894
  %108 = select i1 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.52, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2.53, i64 0, i64 0), !dbg !1431
  %109 = call i8* @dcgettext(i8* null, i8* %108, i32 5) #9, !dbg !1431
  %110 = call i8* @quote(i8* nonnull %0) #9, !dbg !1432
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* %109, i8* %110) #9, !dbg !1433
  br label %112, !dbg !1434

; <label>:111:                                    ; preds = %101, %98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1412
  br label %114

; <label>:112:                                    ; preds = %105, %88
  %113 = phi i1 [ false, %105 ], [ true, %88 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #9, !dbg !1412
  br label %118

; <label>:114:                                    ; preds = %30, %78, %111, %19
  %115 = phi i32 [ %21, %19 ], [ %80, %111 ], [ %61, %78 ], [ %32, %30 ], !dbg !1336
  call void @llvm.dbg.value(metadata i32 %115, metadata !1250, metadata !DIExpression()), !dbg !1336
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.54, i64 0, i64 0), i32 5) #9, !dbg !1435
  %117 = call i8* @quote(i8* nonnull %0) #9, !dbg !1436
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* %116, i8* %117) #9, !dbg !1437
  br label %118, !dbg !1438

; <label>:118:                                    ; preds = %87, %76, %112, %28, %114
  %119 = phi i1 [ false, %114 ], [ true, %28 ], [ true, %87 ], [ true, %76 ], [ %113, %112 ], !dbg !1439
  ret i1 %119, !dbg !1440
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #7 !dbg !1441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1453, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1478
  %2 = load i8, i8* %0, align 1, !dbg !1479, !tbaa !1183
  %3 = and i8 %2, -8, !dbg !1480
  %4 = icmp eq i8 %3, 48, !dbg !1480
  br i1 %4, label %5, label %39, !dbg !1480

; <label>:5:                                      ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1481
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1483
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8* %8, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %7, metadata !1457, metadata !DIExpression()), !dbg !1485
  %9 = shl i32 %7, 3, !dbg !1486
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %10, metadata !1456, metadata !DIExpression()), !dbg !1484
  %11 = sext i8 %6 to i32, !dbg !1481
  %12 = add i32 %9, -48, !dbg !1488
  %13 = add i32 %12, %11, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %13, metadata !1457, metadata !DIExpression()), !dbg !1485
  %14 = icmp ugt i32 %13, 4095, !dbg !1490
  br i1 %14, label %151, label %15, !dbg !1492

; <label>:15:                                     ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1493, !tbaa !1183
  %17 = and i8 %16, -8, !dbg !1494
  %18 = icmp eq i8 %17, 48, !dbg !1494
  br i1 %18, label %5, label %19, !dbg !1494, !llvm.loop !1495

; <label>:19:                                     ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1498
  br i1 %20, label %21, label %151, !dbg !1500

; <label>:21:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1460, metadata !DIExpression()), !dbg !1501
  %22 = ptrtoint i8* %10 to i64, !dbg !1502
  %23 = ptrtoint i8* %0 to i64, !dbg !1502
  %24 = sub i64 %22, %23, !dbg !1502
  %25 = icmp slt i64 %24, 5, !dbg !1503
  %26 = and i32 %13, 3072, !dbg !1504
  %27 = or i32 %26, 1023, !dbg !1505
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %28, metadata !1461, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %13, metadata !1508, metadata !DIExpression()) #9, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %28, metadata !1513, metadata !DIExpression()) #9, !dbg !1517
  %29 = tail call noalias i8* @xmalloc(i64 32) #9, !dbg !1518
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1514, metadata !DIExpression()) #9, !dbg !1519
  store i8 61, i8* %29, align 4, !dbg !1520, !tbaa !1521
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1523
  store i8 1, i8* %31, align 1, !dbg !1524, !tbaa !1525
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1526
  %33 = bitcast i8* %32 to i32*, !dbg !1526
  store i32 4095, i32* %33, align 4, !dbg !1527, !tbaa !1528
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1529
  %35 = bitcast i8* %34 to i32*, !dbg !1529
  store i32 %13, i32* %35, align 4, !dbg !1530, !tbaa !1531
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1532
  %37 = bitcast i8* %36 to i32*, !dbg !1532
  store i32 %28, i32* %37, align 4, !dbg !1533, !tbaa !1534
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1535
  store i8 0, i8* %38, align 1, !dbg !1536, !tbaa !1525
  br label %151, !dbg !1537

; <label>:39:                                     ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1538
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1541
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1541
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %41, metadata !1456, metadata !DIExpression()), !dbg !1484
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1543

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !1544

; <label>:44:                                     ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %46, metadata !1462, metadata !DIExpression()), !dbg !1542
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %47, metadata !1456, metadata !DIExpression()), !dbg !1484
  %48 = load i8, i8* %47, align 1, !dbg !1538, !tbaa !1183
  br label %39, !dbg !1547, !llvm.loop !1548

; <label>:49:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1462, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %42, metadata !1550, metadata !DIExpression()) #9, !dbg !1556
  call void @llvm.dbg.value(metadata i64 16, metadata !1555, metadata !DIExpression()) #9, !dbg !1558
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1559
  br i1 %50, label %51, label %52, !dbg !1561

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #16, !dbg !1562
  unreachable, !dbg !1562

; <label>:52:                                     ; preds = %49
  %53 = shl i64 %42, 4, !dbg !1563
  %54 = tail call noalias i8* @xmalloc(i64 %53) #9, !dbg !1564
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1454, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %0, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %56, !dbg !1567

; <label>:56:                                     ; preds = %146, %52
  %57 = phi i8* [ %0, %52 ], [ %147, %146 ], !dbg !1568
  %58 = phi i64 [ 0, %52 ], [ %131, %146 ], !dbg !1478
  call void @llvm.dbg.value(metadata i64 %58, metadata !1455, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %57, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !1464, metadata !DIExpression()), !dbg !1569
  br label %59, !dbg !1570

; <label>:59:                                     ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1571
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1574
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  %62 = load i8, i8* %60, align 1, !dbg !1576, !tbaa !1183
  %63 = sext i8 %62 to i32, !dbg !1576
  switch i32 %63, label %150 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1577

; <label>:64:                                     ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %60, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %61, metadata !1464, metadata !DIExpression()), !dbg !1569
  br label %72, !dbg !1578

; <label>:65:                                     ; preds = %59
  br label %68, !dbg !1579

; <label>:66:                                     ; preds = %59
  br label %68, !dbg !1580

; <label>:67:                                     ; preds = %59
  br label %68, !dbg !1581

; <label>:68:                                     ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %70, metadata !1464, metadata !DIExpression()), !dbg !1569
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %71, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %59, !dbg !1583, !llvm.loop !1584

; <label>:72:                                     ; preds = %145, %64
  %73 = phi i8 [ %62, %64 ], [ %144, %145 ], !dbg !1587
  %74 = phi i8* [ %60, %64 ], [ %126, %145 ], !dbg !1588
  %75 = phi i32 [ %61, %64 ], [ %127, %145 ], !dbg !1569
  %76 = phi i64 [ %58, %64 ], [ %131, %145 ], !dbg !1588
  call void @llvm.dbg.value(metadata i64 %76, metadata !1455, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 %75, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %74, metadata !1456, metadata !DIExpression()), !dbg !1484
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %77, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %73, metadata !1468, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !1471, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 3, metadata !1472, metadata !DIExpression()), !dbg !1591
  %78 = load i8, i8* %77, align 1, !dbg !1592, !tbaa !1183
  %79 = sext i8 %78 to i32, !dbg !1592
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
  ], !dbg !1593

; <label>:80:                                     ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1594

; <label>:81:                                     ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1596
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1597
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1597
  call void @llvm.dbg.value(metadata i32 %84, metadata !1474, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i8* %83, metadata !1456, metadata !DIExpression()), !dbg !1484
  %85 = shl i32 %84, 3, !dbg !1594
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %86, metadata !1456, metadata !DIExpression()), !dbg !1484
  %87 = sext i8 %82 to i32, !dbg !1596
  %88 = add i32 %85, -48, !dbg !1600
  %89 = add i32 %88, %87, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %89, metadata !1474, metadata !DIExpression()), !dbg !1598
  %90 = icmp ugt i32 %89, 4095, !dbg !1602
  br i1 %90, label %150, label %91, !dbg !1604

; <label>:91:                                     ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1605, !tbaa !1183
  %93 = and i8 %92, -8, !dbg !1606
  %94 = icmp eq i8 %93, 48, !dbg !1606
  br i1 %94, label %81, label %95, !dbg !1606, !llvm.loop !1607

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1610
  br i1 %96, label %97, label %150, !dbg !1612

; <label>:97:                                     ; preds = %95
  switch i8 %92, label %150 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1613

; <label>:98:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1470, metadata !DIExpression()), !dbg !1614
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %99, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %125, !dbg !1616

; <label>:100:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1470, metadata !DIExpression()), !dbg !1614
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %101, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %125, !dbg !1618

; <label>:102:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1470, metadata !DIExpression()), !dbg !1614
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %103, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %125, !dbg !1620

; <label>:104:                                    ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1621
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1624
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1625
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1627
  call void @llvm.dbg.value(metadata i8 %108, metadata !1472, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %107, metadata !1470, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %106, metadata !1456, metadata !DIExpression()), !dbg !1484
  %109 = sext i8 %105 to i32, !dbg !1621
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1628

; <label>:110:                                    ; preds = %104
  %111 = or i32 %107, 292, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %111, metadata !1470, metadata !DIExpression()), !dbg !1614
  br label %120, !dbg !1630

; <label>:112:                                    ; preds = %104
  %113 = or i32 %107, 146, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %113, metadata !1470, metadata !DIExpression()), !dbg !1614
  br label %120, !dbg !1632

; <label>:114:                                    ; preds = %104
  %115 = or i32 %107, 73, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %115, metadata !1470, metadata !DIExpression()), !dbg !1614
  br label %120, !dbg !1634

; <label>:116:                                    ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %117, metadata !1470, metadata !DIExpression()), !dbg !1614
  br label %120, !dbg !1636

; <label>:118:                                    ; preds = %104
  %119 = or i32 %107, 512, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %119, metadata !1470, metadata !DIExpression()), !dbg !1614
  br label %120, !dbg !1638

; <label>:120:                                    ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1625
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %122, metadata !1472, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %121, metadata !1470, metadata !DIExpression()), !dbg !1614
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %123, metadata !1456, metadata !DIExpression()), !dbg !1484
  %124 = load i8, i8* %123, align 1, !dbg !1621, !tbaa !1183
  br label %104, !dbg !1641, !llvm.loop !1642

; <label>:125:                                    ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1597
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1569
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1590
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1588
  call void @llvm.dbg.value(metadata i8 %130, metadata !1472, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %129, metadata !1471, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i32 %128, metadata !1470, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32 %127, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  %131 = add i64 %76, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %131, metadata !1455, metadata !DIExpression()), !dbg !1478
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1646
  store i8 %73, i8* %132, align 4, !dbg !1647, !tbaa !1521
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1648
  store i8 %130, i8* %133, align 1, !dbg !1649, !tbaa !1525
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1650
  store i32 %127, i32* %134, align 4, !dbg !1651, !tbaa !1528
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1652
  store i32 %128, i32* %135, align 4, !dbg !1653, !tbaa !1531
  %136 = icmp eq i32 %129, 0, !dbg !1654
  br i1 %136, label %137, label %141, !dbg !1654

; <label>:137:                                    ; preds = %125
  %138 = icmp eq i32 %127, 0, !dbg !1655
  %139 = select i1 %138, i32 -1, i32 %127, !dbg !1655
  %140 = and i32 %139, %128, !dbg !1655
  br label %141, !dbg !1655

; <label>:141:                                    ; preds = %125, %137
  %142 = phi i32 [ %129, %125 ], [ %140, %137 ], !dbg !1654
  %143 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1656
  store i32 %142, i32* %143, align 4, !dbg !1657, !tbaa !1534
  call void @llvm.dbg.value(metadata i64 %76, metadata !1455, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 %75, metadata !1464, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %86, metadata !1456, metadata !DIExpression()), !dbg !1484
  %144 = load i8, i8* %126, align 1, !dbg !1658, !tbaa !1183
  switch i8 %144, label %150 [
    i8 61, label %145
    i8 43, label %145
    i8 45, label %145
    i8 44, label %146
    i8 0, label %148
  ], !dbg !1659

; <label>:145:                                    ; preds = %141, %141, %141
  br label %72, !dbg !1478

; <label>:146:                                    ; preds = %141
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %128, metadata !1470, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %131, metadata !1455, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %126, metadata !1456, metadata !DIExpression()), !dbg !1484
  %147 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %147, metadata !1456, metadata !DIExpression()), !dbg !1484
  br label %56, !dbg !1661, !llvm.loop !1662

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !1665
  store i8 0, i8* %149, align 1, !dbg !1668, !tbaa !1525
  br label %151, !dbg !1669

; <label>:150:                                    ; preds = %59, %95, %97, %141, %81
  tail call void @free(i8* %54) #9, !dbg !1670
  br label %151, !dbg !1671

; <label>:151:                                    ; preds = %5, %21, %19, %150, %148
  %152 = phi %struct.mode_change* [ null, %150 ], [ %55, %148 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %152, !dbg !1672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #7 !dbg !1673 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1675, metadata !DIExpression()), !dbg !1698
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #9, !dbg !1699
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1676, metadata !DIExpression(DW_OP_deref)), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %0, metadata !1701, metadata !DIExpression()) #9, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1707, metadata !DIExpression()) #9, !dbg !1708
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #9, !dbg !1711
  %5 = icmp eq i32 %4, 0, !dbg !1712
  br i1 %5, label %6, label %19, !dbg !1713

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1714
  %8 = load i32, i32* %7, align 8, !dbg !1714, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %8, metadata !1508, metadata !DIExpression()) #9, !dbg !1715
  call void @llvm.dbg.value(metadata i32 4095, metadata !1513, metadata !DIExpression()) #9, !dbg !1717
  %9 = call noalias i8* @xmalloc(i64 32) #9, !dbg !1718
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1514, metadata !DIExpression()) #9, !dbg !1719
  store i8 61, i8* %9, align 4, !dbg !1720, !tbaa !1521
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1721
  store i8 1, i8* %11, align 1, !dbg !1722, !tbaa !1525
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1723
  %13 = bitcast i8* %12 to i32*, !dbg !1723
  store i32 4095, i32* %13, align 4, !dbg !1724, !tbaa !1528
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1725
  %15 = bitcast i8* %14 to i32*, !dbg !1725
  store i32 %8, i32* %15, align 4, !dbg !1726, !tbaa !1531
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1727
  %17 = bitcast i8* %16 to i32*, !dbg !1727
  store i32 4095, i32* %17, align 4, !dbg !1728, !tbaa !1534
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1729
  store i8 0, i8* %18, align 1, !dbg !1730, !tbaa !1525
  br label %19, !dbg !1731

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1732
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #9, !dbg !1733
  ret %struct.mode_change* %20, !dbg !1733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #7 !dbg !1734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1741, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i1 %1, metadata !1742, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i32 %2, metadata !1743, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32* %4, metadata !1745, metadata !DIExpression()), !dbg !1761
  %6 = and i32 %0, 4095, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %6, metadata !1746, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 0, metadata !1747, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1744, metadata !DIExpression()), !dbg !1760
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1765
  %8 = load i8, i8* %7, align 1, !dbg !1765, !tbaa !1525
  %9 = icmp eq i8 %8, 0, !dbg !1766
  br i1 %9, label %81, label %10, !dbg !1767

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = zext i1 %1 to i32
  br label %14, !dbg !1767

; <label>:14:                                     ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %17, metadata !1746, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %18, metadata !1747, metadata !DIExpression()), !dbg !1764
  %19 = sext i8 %15 to i32, !dbg !1768
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1769
  %21 = load i32, i32* %20, align 4, !dbg !1769, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1748, metadata !DIExpression()), !dbg !1770
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1771
  %23 = load i32, i32* %22, align 4, !dbg !1771, !tbaa !1534
  %24 = xor i32 %23, -1, !dbg !1772
  %25 = and i32 %11, %24, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %25, metadata !1752, metadata !DIExpression()), !dbg !1774
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1775
  %27 = load i32, i32* %26, align 4, !dbg !1775, !tbaa !1531
  call void @llvm.dbg.value(metadata i32 %27, metadata !1753, metadata !DIExpression()), !dbg !1776
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1777

; <label>:28:                                     ; preds = %14
  %29 = and i32 %27, %17, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %29, metadata !1753, metadata !DIExpression()), !dbg !1776
  %30 = and i32 %29, 292, !dbg !1780
  %31 = icmp eq i32 %30, 0, !dbg !1781
  %32 = select i1 %31, i32 0, i32 292, !dbg !1781
  %33 = and i32 %29, 146, !dbg !1782
  %34 = icmp eq i32 %33, 0, !dbg !1783
  %35 = select i1 %34, i32 0, i32 146, !dbg !1783
  %36 = and i32 %29, 73, !dbg !1784
  %37 = icmp eq i32 %36, 0, !dbg !1785
  %38 = select i1 %37, i32 0, i32 73, !dbg !1785
  %39 = or i32 %35, %29, !dbg !1786
  %40 = or i32 %39, %32, !dbg !1787
  %41 = or i32 %40, %38, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %41, metadata !1753, metadata !DIExpression()), !dbg !1776
  br label %48, !dbg !1789

; <label>:42:                                     ; preds = %14
  %43 = and i32 %17, 73, !dbg !1790
  %44 = or i32 %43, %13, !dbg !1792
  %45 = icmp eq i32 %44, 0, !dbg !1792
  %46 = or i32 %27, 73, !dbg !1793
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1794
  br label %48, !dbg !1794

; <label>:48:                                     ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1795
  call void @llvm.dbg.value(metadata i32 %49, metadata !1753, metadata !DIExpression()), !dbg !1776
  %50 = icmp ne i32 %21, 0, !dbg !1796
  %51 = select i1 %50, i32 %21, i32 %12, !dbg !1796
  %52 = xor i32 %25, -1, !dbg !1797
  %53 = and i32 %51, %52, !dbg !1798
  %54 = and i32 %53, %49, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %54, metadata !1753, metadata !DIExpression()), !dbg !1776
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1800
  %56 = load i8, i8* %55, align 4, !dbg !1800, !tbaa !1521
  %57 = sext i8 %56 to i32, !dbg !1801
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1802

; <label>:58:                                     ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1803
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1804
  %61 = or i32 %60, %25, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %61, metadata !1754, metadata !DIExpression()), !dbg !1806
  %62 = and i32 %61, 4095, !dbg !1807
  %63 = xor i32 %62, 4095, !dbg !1807
  %64 = or i32 %63, %18, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %64, metadata !1747, metadata !DIExpression()), !dbg !1764
  %65 = and i32 %61, %17, !dbg !1809
  %66 = or i32 %54, %65, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %66, metadata !1746, metadata !DIExpression()), !dbg !1763
  br label %74

; <label>:67:                                     ; preds = %48
  %68 = or i32 %54, %18, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %68, metadata !1747, metadata !DIExpression()), !dbg !1764
  %69 = or i32 %54, %17, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %69, metadata !1746, metadata !DIExpression()), !dbg !1763
  br label %74, !dbg !1813

; <label>:70:                                     ; preds = %48
  %71 = or i32 %54, %18, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %71, metadata !1747, metadata !DIExpression()), !dbg !1764
  %72 = xor i32 %54, -1, !dbg !1815
  %73 = and i32 %17, %72, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %73, metadata !1746, metadata !DIExpression()), !dbg !1763
  br label %74, !dbg !1817

; <label>:74:                                     ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1818
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1818
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1744, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %76, metadata !1746, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %75, metadata !1747, metadata !DIExpression()), !dbg !1764
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1765
  %79 = load i8, i8* %78, align 1, !dbg !1765, !tbaa !1525
  %80 = icmp eq i8 %79, 0, !dbg !1766
  br i1 %80, label %81, label %14, !dbg !1767, !llvm.loop !1820

; <label>:81:                                     ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1764
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1763
  call void @llvm.dbg.value(metadata i32 %82, metadata !1747, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %83, metadata !1746, metadata !DIExpression()), !dbg !1763
  %84 = icmp eq i32* %4, null, !dbg !1822
  br i1 %84, label %86, label %85, !dbg !1824

; <label>:85:                                     ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1825, !tbaa !894
  br label %86, !dbg !1826

; <label>:86:                                     ; preds = %81, %85
  ret i32 %83, !dbg !1827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1830, metadata !DIExpression()), !dbg !1833
  %2 = icmp eq i8* %0, null, !dbg !1834
  br i1 %2, label %3, label %6, !dbg !1836

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1837, !tbaa !752
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1839
  tail call void @abort() #16, !dbg !1840
  unreachable, !dbg !1840

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %7, metadata !1831, metadata !DIExpression()), !dbg !1842
  %8 = icmp eq i8* %7, null, !dbg !1843
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1844
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %10, metadata !1832, metadata !DIExpression()), !dbg !1846
  %11 = ptrtoint i8* %10 to i64, !dbg !1847
  %12 = ptrtoint i8* %0 to i64, !dbg !1847
  %13 = sub i64 %11, %12, !dbg !1847
  %14 = icmp sgt i64 %13, 6, !dbg !1849
  br i1 %14, label %15, label %24, !dbg !1850

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1851
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.64, i64 0, i64 0), i64 7) #15, !dbg !1852
  %18 = icmp eq i32 %17, 0, !dbg !1853
  br i1 %18, label %19, label %24, !dbg !1854

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1830, metadata !DIExpression()), !dbg !1833
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i64 3) #15, !dbg !1855
  %21 = icmp eq i32 %20, 0, !dbg !1858
  br i1 %21, label %22, label %24, !dbg !1859

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %23, metadata !1830, metadata !DIExpression()), !dbg !1833
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1862, !tbaa !752
  br label %24, !dbg !1863

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1830, metadata !DIExpression()), !dbg !1833
  store i8* %25, i8** @program_name, align 8, !dbg !1864, !tbaa !752
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1865, !tbaa !752
  ret void, !dbg !1866
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1867 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1872, metadata !DIExpression()), !dbg !1875
  %2 = tail call i32* @__errno_location() #18, !dbg !1876
  %3 = load i32, i32* %2, align 4, !dbg !1876, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %3, metadata !1873, metadata !DIExpression()), !dbg !1877
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1878
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1878
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1878
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1879
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1874, metadata !DIExpression()), !dbg !1880
  store i32 %3, i32* %2, align 4, !dbg !1881, !tbaa !894
  ret %struct.quoting_options* %8, !dbg !1882
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1883 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1889, metadata !DIExpression()), !dbg !1890
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1891
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1891
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1892
  %5 = load i32, i32* %4, align 8, !dbg !1892, !tbaa !1893
  ret i32 %5, !dbg !1895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1896 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %1, metadata !1901, metadata !DIExpression()), !dbg !1903
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1904
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1904
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1905
  store i32 %1, i32* %5, align 8, !dbg !1906, !tbaa !1893
  ret void, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1908 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1912, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 %1, metadata !1913, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 %2, metadata !1914, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 %1, metadata !1915, metadata !DIExpression()), !dbg !1923
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1924
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1924
  %6 = lshr i8 %1, 5, !dbg !1925
  %7 = zext i8 %6 to i64, !dbg !1925
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1926
  call void @llvm.dbg.value(metadata i32* %8, metadata !1916, metadata !DIExpression()), !dbg !1927
  %9 = and i8 %1, 31, !dbg !1928
  %10 = zext i8 %9 to i32, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %10, metadata !1918, metadata !DIExpression()), !dbg !1929
  %11 = load i32, i32* %8, align 4, !dbg !1930, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !1931
  %13 = and i32 %12, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %13, metadata !1919, metadata !DIExpression()), !dbg !1933
  %14 = and i32 %2, 1, !dbg !1934
  %15 = xor i32 %13, %14, !dbg !1935
  %16 = shl i32 %15, %10, !dbg !1936
  %17 = xor i32 %16, %11, !dbg !1937
  store i32 %17, i32* %8, align 4, !dbg !1937, !tbaa !894
  ret i32 %13, !dbg !1938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1939 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %1, metadata !1944, metadata !DIExpression()), !dbg !1947
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1948
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1943, metadata !DIExpression()), !dbg !1946
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1951
  %6 = load i32, i32* %5, align 4, !dbg !1951, !tbaa !1952
  call void @llvm.dbg.value(metadata i32 %6, metadata !1945, metadata !DIExpression()), !dbg !1953
  store i32 %1, i32* %5, align 4, !dbg !1954, !tbaa !1952
  ret i32 %6, !dbg !1955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1956 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1960, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()), !dbg !1965
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1966
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()), !dbg !1963
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1969
  store i32 10, i32* %6, align 8, !dbg !1970, !tbaa !1893
  %7 = icmp ne i8* %1, null, !dbg !1971
  %8 = icmp ne i8* %2, null, !dbg !1973
  %9 = and i1 %7, %8, !dbg !1974
  br i1 %9, label %11, label %10, !dbg !1974

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1975
  unreachable, !dbg !1975

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1976
  store i8* %1, i8** %12, align 8, !dbg !1977, !tbaa !1978
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1979
  store i8* %2, i8** %13, align 8, !dbg !1980, !tbaa !1981
  ret void, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1983 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1987, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 %1, metadata !1988, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %2, metadata !1989, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %3, metadata !1990, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1991, metadata !DIExpression()), !dbg !1999
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2000
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1992, metadata !DIExpression()), !dbg !2001
  %8 = tail call i32* @__errno_location() #18, !dbg !2002
  %9 = load i32, i32* %8, align 4, !dbg !2002, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %9, metadata !1993, metadata !DIExpression()), !dbg !2003
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2004
  %11 = load i32, i32* %10, align 8, !dbg !2004, !tbaa !1893
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2005
  %13 = load i32, i32* %12, align 4, !dbg !2005, !tbaa !1952
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2006
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2007
  %16 = load i8*, i8** %15, align 8, !dbg !2007, !tbaa !1978
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2008
  %18 = load i8*, i8** %17, align 8, !dbg !2008, !tbaa !1981
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %19, metadata !1994, metadata !DIExpression()), !dbg !2010
  store i32 %9, i32* %8, align 4, !dbg !2011, !tbaa !894
  ret i64 %19, !dbg !2012
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2013 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.savewd*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2019, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %1, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %2, metadata !2021, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %3, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %4, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %5, metadata !2024, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32* %6, metadata !2025, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %7, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %8, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 0, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* null, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2033, metadata !DIExpression()), !dbg !2096
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !2097
  %14 = icmp eq i64 %13, 1, !dbg !2098
  %15 = lshr i32 %5, 1, !dbg !2099
  %16 = trunc i32 %15 to i8, !dbg !2099
  %17 = and i8 %16, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i8 %17, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2102
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2103

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2093
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2094
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2095
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2096
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2104
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2100
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2101
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2102
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %39, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %38, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %37, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %36, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i64 %35, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %34, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %33, metadata !2032, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %32, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %31, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 0, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %30, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %29, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %28, metadata !2023, metadata !DIExpression()), !dbg !2087
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !2106

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %36, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 5, metadata !2023, metadata !DIExpression()), !dbg !2087
  br label %93, !dbg !2107

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 5, metadata !2023, metadata !DIExpression()), !dbg !2087
  %43 = and i8 %36, 1, !dbg !2108
  %44 = icmp eq i8 %43, 0, !dbg !2108
  br i1 %44, label %45, label %93, !dbg !2107

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2110
  br i1 %46, label %93, label %47, !dbg !2113

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2110, !tbaa !1183
  br label %93, !dbg !2110

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 %28), !dbg !2114
  call void @llvm.dbg.value(metadata i8* %49, metadata !2026, metadata !DIExpression()), !dbg !2090
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 %28), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %50, metadata !2027, metadata !DIExpression()), !dbg !2091
  br label %51, !dbg !2119

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %52, metadata !2026, metadata !DIExpression()), !dbg !2090
  %54 = and i8 %36, 1, !dbg !2120
  %55 = icmp eq i8 %54, 0, !dbg !2120
  br i1 %55, label %56, label %71, !dbg !2122

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, metadata !2029, metadata !DIExpression()), !dbg !2092
  %57 = load i8, i8* %52, align 1, !dbg !2123, !tbaa !1183
  %58 = icmp eq i8 %57, 0, !dbg !2126
  br i1 %58, label %71, label %59, !dbg !2126

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %62, metadata !2029, metadata !DIExpression()), !dbg !2092
  %63 = icmp ult i64 %62, %40, !dbg !2127
  br i1 %63, label %64, label %66, !dbg !2130

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2127
  store i8 %60, i8* %65, align 1, !dbg !2127, !tbaa !1183
  br label %66, !dbg !2127

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2130
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2131
  call void @llvm.dbg.value(metadata i8* %68, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %67, metadata !2029, metadata !DIExpression()), !dbg !2092
  %69 = load i8, i8* %68, align 1, !dbg !2123, !tbaa !1183
  %70 = icmp eq i8 %69, 0, !dbg !2126
  br i1 %70, label %71, label %59, !dbg !2126, !llvm.loop !2132

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %72, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %53, metadata !2031, metadata !DIExpression()), !dbg !2094
  %73 = call i64 @strlen(i8* %53) #15, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %73, metadata !2032, metadata !DIExpression()), !dbg !2095
  br label %93, !dbg !2135

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2033, metadata !DIExpression()), !dbg !2096
  br label %75, !dbg !2136

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2104
  call void @llvm.dbg.value(metadata i8 %76, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2099
  br label %77, !dbg !2137

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2096
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2104
  call void @llvm.dbg.value(metadata i8 %79, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %78, metadata !2033, metadata !DIExpression()), !dbg !2096
  %80 = and i8 %79, 1, !dbg !2138
  %81 = icmp eq i8 %80, 0, !dbg !2138
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2140
  br label %83, !dbg !2140

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2141
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2099
  call void @llvm.dbg.value(metadata i8 %85, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %84, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  %86 = and i8 %85, 1, !dbg !2142
  %87 = icmp eq i8 %86, 0, !dbg !2142
  br i1 %87, label %88, label %93, !dbg !2144

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2145
  br i1 %89, label %93, label %90, !dbg !2148

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2145, !tbaa !1183
  br label %93, !dbg !2145

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2099
  br label %93, !dbg !2149

; <label>:92:                                     ; preds = %27
  call void @abort() #16, !dbg !2150
  unreachable, !dbg !2150

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2092
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %41 ], !dbg !2104
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2104
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2104
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %101, metadata !2035, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %99, metadata !2032, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %97, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, metadata !2028, metadata !DIExpression()), !dbg !2152
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !2153

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2154
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2092
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2093
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2100
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2101
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2102
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %122, metadata !2028, metadata !DIExpression()), !dbg !2152
  %130 = icmp eq i64 %125, -1, !dbg !2155
  br i1 %130, label %131, label %135, !dbg !2156

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2157
  %133 = load i8, i8* %132, align 1, !dbg !2157, !tbaa !1183
  %134 = icmp eq i8 %133, 0, !dbg !2158
  br i1 %134, label %617, label %137, !dbg !2159

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2160
  br i1 %136, label %617, label %137, !dbg !2159

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 0, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2163
  br i1 %107, label %138, label %153, !dbg !2164

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2166
  %140 = and i1 %108, %130, !dbg !2167
  br i1 %140, label %141, label %143, !dbg !2167

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #15, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %142, metadata !2022, metadata !DIExpression()), !dbg !2086
  br label %143, !dbg !2169

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2022, metadata !DIExpression()), !dbg !2086
  %145 = icmp ugt i64 %139, %144, !dbg !2170
  br i1 %145, label %153, label %146, !dbg !2171

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2172
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #15, !dbg !2173
  %149 = icmp ne i32 %148, 0, !dbg !2174
  %150 = or i1 %149, %110, !dbg !2175
  %151 = xor i1 %149, true, !dbg !2175
  %152 = zext i1 %151 to i8, !dbg !2175
  br i1 %150, label %153, label %661, !dbg !2175

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2176
  call void @llvm.dbg.value(metadata i8 %155, metadata !2044, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %154, metadata !2022, metadata !DIExpression()), !dbg !2086
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2177
  %157 = load i8, i8* %156, align 1, !dbg !2177, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %157, metadata !2039, metadata !DIExpression()), !dbg !2178
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !2179

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2180

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2181

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2162
  %161 = and i8 %126, 1, !dbg !2185
  %162 = icmp eq i8 %161, 0, !dbg !2185
  %163 = and i1 %114, %162, !dbg !2185
  br i1 %163, label %164, label %180, !dbg !2185

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2187
  br i1 %165, label %166, label %168, !dbg !2191

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2187
  store i8 39, i8* %167, align 1, !dbg !2187, !tbaa !1183
  br label %168, !dbg !2187

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %169, metadata !2029, metadata !DIExpression()), !dbg !2092
  %170 = icmp ult i64 %169, %129, !dbg !2192
  br i1 %170, label %171, label %173, !dbg !2195

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2192
  store i8 36, i8* %172, align 1, !dbg !2192, !tbaa !1183
  br label %173, !dbg !2192

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %174, metadata !2029, metadata !DIExpression()), !dbg !2092
  %175 = icmp ult i64 %174, %129, !dbg !2196
  br i1 %175, label %176, label %178, !dbg !2199

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2196
  store i8 39, i8* %177, align 1, !dbg !2196, !tbaa !1183
  br label %178, !dbg !2196

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %179, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %180, !dbg !2200

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2151
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %182, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %181, metadata !2029, metadata !DIExpression()), !dbg !2092
  %183 = icmp ult i64 %181, %129, !dbg !2201
  br i1 %183, label %184, label %186, !dbg !2204

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2201
  store i8 92, i8* %185, align 1, !dbg !2201, !tbaa !1183
  br label %186, !dbg !2201

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %187, metadata !2029, metadata !DIExpression()), !dbg !2092
  br i1 %104, label %188, label %478, !dbg !2205

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2207
  %190 = icmp ult i64 %189, %154, !dbg !2208
  br i1 %190, label %191, label %467, !dbg !2209

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2210
  %193 = load i8, i8* %192, align 1, !dbg !2210, !tbaa !1183
  %194 = add i8 %193, -48, !dbg !2211
  %195 = icmp ult i8 %194, 10, !dbg !2211
  br i1 %195, label %196, label %467, !dbg !2211

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2212
  br i1 %197, label %198, label %200, !dbg !2216

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2212
  store i8 48, i8* %199, align 1, !dbg !2212, !tbaa !1183
  br label %200, !dbg !2212

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %201, metadata !2029, metadata !DIExpression()), !dbg !2092
  %202 = icmp ult i64 %201, %129, !dbg !2217
  br i1 %202, label %203, label %205, !dbg !2220

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2217
  store i8 48, i8* %204, align 1, !dbg !2217, !tbaa !1183
  br label %205, !dbg !2217

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %206, metadata !2029, metadata !DIExpression()), !dbg !2092
  br label %467, !dbg !2221

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2222

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2223

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2224

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2226

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2228
  %213 = icmp ult i64 %212, %154, !dbg !2229
  br i1 %213, label %214, label %467, !dbg !2230

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2231
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2232
  %217 = load i8, i8* %216, align 1, !dbg !2232, !tbaa !1183
  %218 = icmp eq i8 %217, 63, !dbg !2233
  br i1 %218, label %219, label %467, !dbg !2234

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2235
  %221 = load i8, i8* %220, align 1, !dbg !2235, !tbaa !1183
  %222 = sext i8 %221 to i32, !dbg !2235
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !2236

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2237

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %212, metadata !2028, metadata !DIExpression()), !dbg !2152
  %225 = icmp ult i64 %123, %129, !dbg !2239
  br i1 %225, label %226, label %228, !dbg !2242

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2239
  store i8 63, i8* %227, align 1, !dbg !2239, !tbaa !1183
  br label %228, !dbg !2239

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %229, metadata !2029, metadata !DIExpression()), !dbg !2092
  %230 = icmp ult i64 %229, %129, !dbg !2243
  br i1 %230, label %231, label %233, !dbg !2246

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2243
  store i8 34, i8* %232, align 1, !dbg !2243, !tbaa !1183
  br label %233, !dbg !2243

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %234, metadata !2029, metadata !DIExpression()), !dbg !2092
  %235 = icmp ult i64 %234, %129, !dbg !2247
  br i1 %235, label %236, label %238, !dbg !2250

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2247
  store i8 34, i8* %237, align 1, !dbg !2247, !tbaa !1183
  br label %238, !dbg !2247

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %239, metadata !2029, metadata !DIExpression()), !dbg !2092
  %240 = icmp ult i64 %239, %129, !dbg !2251
  br i1 %240, label %241, label %243, !dbg !2254

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2251
  store i8 63, i8* %242, align 1, !dbg !2251, !tbaa !1183
  br label %243, !dbg !2251

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %244, metadata !2029, metadata !DIExpression()), !dbg !2092
  br label %467, !dbg !2255

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2043, metadata !DIExpression()), !dbg !2256
  br label %255, !dbg !2257

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2043, metadata !DIExpression()), !dbg !2256
  br label %255, !dbg !2258

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2043, metadata !DIExpression()), !dbg !2256
  br label %253, !dbg !2259

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2043, metadata !DIExpression()), !dbg !2256
  br label %253, !dbg !2260

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2043, metadata !DIExpression()), !dbg !2256
  br label %255, !dbg !2261

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2043, metadata !DIExpression()), !dbg !2256
  br i1 %114, label %251, label %252, !dbg !2262

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2263

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2266

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2268
  call void @llvm.dbg.value(metadata i8 %254, metadata !2043, metadata !DIExpression()), !dbg !2256
  br i1 %113, label %255, label %661, !dbg !2269

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2268
  call void @llvm.dbg.value(metadata i8 %256, metadata !2043, metadata !DIExpression()), !dbg !2256
  br i1 %103, label %524, label %478, !dbg !2271

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2272
  br i1 %258, label %259, label %264, !dbg !2274

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2275, !tbaa !1183
  %261 = icmp ne i8 %260, 0, !dbg !2276
  %262 = icmp ne i64 %122, 0, !dbg !2277
  %263 = or i1 %262, %261, !dbg !2279
  br i1 %263, label %467, label %270, !dbg !2279

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2280
  %266 = icmp ne i64 %122, 0, !dbg !2277
  %267 = or i1 %266, %265, !dbg !2274
  br i1 %267, label %467, label %270, !dbg !2274

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2277
  br i1 %269, label %270, label %467, !dbg !2281

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2163
  br label %271, !dbg !2282

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2268
  call void @llvm.dbg.value(metadata i8 %272, metadata !2046, metadata !DIExpression()), !dbg !2163
  br i1 %113, label %467, label %661, !dbg !2283

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2163
  br i1 %114, label %274, label %467, !dbg !2285

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2286

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2289
  %277 = icmp ne i64 %124, 0, !dbg !2291
  %278 = or i1 %277, %276, !dbg !2292
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2292
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %280, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %279, metadata !2030, metadata !DIExpression()), !dbg !2093
  %281 = icmp ult i64 %123, %280, !dbg !2293
  br i1 %281, label %282, label %284, !dbg !2296

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2293
  store i8 39, i8* %283, align 1, !dbg !2293, !tbaa !1183
  br label %284, !dbg !2293

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %285, metadata !2029, metadata !DIExpression()), !dbg !2092
  %286 = icmp ult i64 %285, %280, !dbg !2297
  br i1 %286, label %287, label %289, !dbg !2300

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2297
  store i8 92, i8* %288, align 1, !dbg !2297, !tbaa !1183
  br label %289, !dbg !2297

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %290, metadata !2029, metadata !DIExpression()), !dbg !2092
  %291 = icmp ult i64 %290, %280, !dbg !2301
  br i1 %291, label %292, label %294, !dbg !2304

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2301
  store i8 39, i8* %293, align 1, !dbg !2301, !tbaa !1183
  br label %294, !dbg !2301

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %295, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %467, !dbg !2305

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2306

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2047, metadata !DIExpression()), !dbg !2307
  %298 = tail call i16** @__ctype_b_loc() #18, !dbg !2308
  %299 = load i16*, i16** %298, align 8, !dbg !2308, !tbaa !752
  %300 = zext i8 %157 to i64, !dbg !2308
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2308
  %302 = load i16, i16* %301, align 2, !dbg !2308, !tbaa !2310
  %303 = lshr i16 %302, 14, !dbg !2311
  %304 = trunc i16 %303 to i8, !dbg !2311
  %305 = and i8 %304, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i8 %305, metadata !2050, metadata !DIExpression()), !dbg !2312
  br label %359, !dbg !2313

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #9, !dbg !2314
  store i64 0, i64* %10, align 8, !dbg !2315
  call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2312
  %307 = icmp eq i64 %154, -1, !dbg !2316
  br i1 %307, label %308, label %310, !dbg !2318

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %309, metadata !2022, metadata !DIExpression()), !dbg !2086
  br label %310, !dbg !2320

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2321
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  br label %312, !dbg !2322

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2323
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %314, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #9, !dbg !2325
  %315 = add i64 %313, %122, !dbg !2326
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2327
  %317 = sub i64 %311, %315, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.savewd* %11, metadata !2051, metadata !DIExpression(DW_OP_deref)), !dbg !2329
  call void @llvm.dbg.value(metadata i32* %12, metadata !2069, metadata !DIExpression(DW_OP_deref)), !dbg !2330
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.savewd* nonnull %11) #9, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %318, metadata !2072, metadata !DIExpression()), !dbg !2332
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2333

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  %320 = icmp ugt i64 %311, %315, !dbg !2334
  br i1 %320, label %321, label %344, !dbg !2336

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2047, metadata !DIExpression()), !dbg !2307
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2337
  %325 = load i8, i8* %324, align 1, !dbg !2337, !tbaa !1183
  %326 = icmp eq i8 %325, 0, !dbg !2336
  br i1 %326, label %344, label %327, !dbg !2338

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %328, metadata !2047, metadata !DIExpression()), !dbg !2307
  %329 = add i64 %328, %122, !dbg !2340
  %330 = icmp ult i64 %329, %311, !dbg !2334
  br i1 %330, label %321, label %344, !dbg !2336, !llvm.loop !2341

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2342
  %333 = and i1 %116, %332, !dbg !2345
  call void @llvm.dbg.value(metadata i64 1, metadata !2073, metadata !DIExpression()), !dbg !2346
  br i1 %333, label %334, label %347, !dbg !2345

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2073, metadata !DIExpression()), !dbg !2346
  %336 = add i64 %335, %315, !dbg !2347
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2348
  %338 = load i8, i8* %337, align 1, !dbg !2348, !tbaa !1183
  %339 = sext i8 %338 to i32, !dbg !2348
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2349

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %341, metadata !2073, metadata !DIExpression()), !dbg !2346
  %342 = icmp ult i64 %341, %318, !dbg !2342
  br i1 %342, label %334, label %347, !dbg !2351, !llvm.loop !2352

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 %314, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 %314, metadata !2050, metadata !DIExpression()), !dbg !2312
  br label %344, !dbg !2354

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !2354
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2355, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %348, metadata !2069, metadata !DIExpression()), !dbg !2330
  %349 = call i32 @iswprint(i32 %348) #9, !dbg !2357
  %350 = icmp eq i32 %349, 0, !dbg !2357
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2358
  call void @llvm.dbg.value(metadata i8 %351, metadata !2050, metadata !DIExpression()), !dbg !2312
  %352 = add i64 %318, %313, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %352, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8 %351, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.savewd* %11, metadata !2051, metadata !DIExpression(DW_OP_deref)), !dbg !2329
  %353 = call i32 @mbsinit(%struct.savewd* nonnull %11) #15, !dbg !2360
  %354 = icmp eq i32 %353, 0, !dbg !2361
  br i1 %354, label %312, label %355, !dbg !2362, !llvm.loop !2363

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9, !dbg !2365
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %94, metadata !2023, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %100, metadata !2033, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %311, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %351, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %352, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9, !dbg !2365
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2366
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2367
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2367
  call void @llvm.dbg.value(metadata i8 %362, metadata !2050, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %361, metadata !2047, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %360, metadata !2022, metadata !DIExpression()), !dbg !2086
  %363 = and i8 %362, 1, !dbg !2368
  %364 = icmp ne i8 %363, 0, !dbg !2368
  call void @llvm.dbg.value(metadata i8 %363, metadata !2046, metadata !DIExpression()), !dbg !2163
  %365 = icmp ult i64 %361, 2, !dbg !2369
  %366 = or i1 %364, %115, !dbg !2370
  %367 = and i1 %365, %366, !dbg !2371
  br i1 %367, label %467, label %368, !dbg !2371

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %369, metadata !2080, metadata !DIExpression()), !dbg !2373
  br label %370, !dbg !2374

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2375
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2379
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2100
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2375
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2381
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2162
  call void @llvm.dbg.value(metadata i8 %376, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %375, metadata !2044, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %374, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %373, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %372, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %371, metadata !2028, metadata !DIExpression()), !dbg !2152
  br i1 %366, label %423, label %377, !dbg !2385

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2386

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2162
  %379 = and i8 %373, 1, !dbg !2389
  %380 = icmp eq i8 %379, 0, !dbg !2389
  %381 = and i1 %114, %380, !dbg !2389
  br i1 %381, label %382, label %398, !dbg !2389

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2391
  br i1 %383, label %384, label %386, !dbg !2395

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2391
  store i8 39, i8* %385, align 1, !dbg !2391, !tbaa !1183
  br label %386, !dbg !2391

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %387, metadata !2029, metadata !DIExpression()), !dbg !2092
  %388 = icmp ult i64 %387, %129, !dbg !2396
  br i1 %388, label %389, label %391, !dbg !2399

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2396
  store i8 36, i8* %390, align 1, !dbg !2396, !tbaa !1183
  br label %391, !dbg !2396

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %392, metadata !2029, metadata !DIExpression()), !dbg !2092
  %393 = icmp ult i64 %392, %129, !dbg !2400
  br i1 %393, label %394, label %396, !dbg !2403

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2400
  store i8 39, i8* %395, align 1, !dbg !2400, !tbaa !1183
  br label %396, !dbg !2400

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %397, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %398, !dbg !2404

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2151
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %400, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %399, metadata !2029, metadata !DIExpression()), !dbg !2092
  %401 = icmp ult i64 %399, %129, !dbg !2405
  br i1 %401, label %402, label %404, !dbg !2408

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2405
  store i8 92, i8* %403, align 1, !dbg !2405, !tbaa !1183
  br label %404, !dbg !2405

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %405, metadata !2029, metadata !DIExpression()), !dbg !2092
  %406 = icmp ult i64 %405, %129, !dbg !2409
  br i1 %406, label %407, label %411, !dbg !2412

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2409
  %409 = or i8 %408, 48, !dbg !2409
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2409
  store i8 %409, i8* %410, align 1, !dbg !2409, !tbaa !1183
  br label %411, !dbg !2409

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %412, metadata !2029, metadata !DIExpression()), !dbg !2092
  %413 = icmp ult i64 %412, %129, !dbg !2413
  br i1 %413, label %414, label %419, !dbg !2416

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2413
  %416 = and i8 %415, 7, !dbg !2413
  %417 = or i8 %416, 48, !dbg !2413
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2413
  store i8 %417, i8* %418, align 1, !dbg !2413, !tbaa !1183
  br label %419, !dbg !2413

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %420, metadata !2029, metadata !DIExpression()), !dbg !2092
  %421 = and i8 %374, 7, !dbg !2417
  %422 = or i8 %421, 48, !dbg !2418
  call void @llvm.dbg.value(metadata i8 %422, metadata !2039, metadata !DIExpression()), !dbg !2178
  br label %432, !dbg !2419

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2420
  %425 = icmp eq i8 %424, 0, !dbg !2420
  br i1 %425, label %432, label %426, !dbg !2421

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2422
  br i1 %427, label %428, label %430, !dbg !2425

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2422
  store i8 92, i8* %429, align 1, !dbg !2422, !tbaa !1183
  br label %430, !dbg !2422

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %431, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2161
  br label %432, !dbg !2426

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2427
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2100
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2428
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2429
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2431
  call void @llvm.dbg.value(metadata i8 %437, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %436, metadata !2044, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %435, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %434, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %433, metadata !2029, metadata !DIExpression()), !dbg !2092
  %438 = add i64 %371, 1, !dbg !2432
  %439 = icmp ugt i64 %369, %438, !dbg !2434
  br i1 %439, label %440, label %562, !dbg !2435

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2436
  %442 = icmp ne i8 %441, 0, !dbg !2436
  %443 = and i8 %437, 1, !dbg !2436
  %444 = icmp eq i8 %443, 0, !dbg !2436
  %445 = and i1 %442, %444, !dbg !2436
  br i1 %445, label %446, label %457, !dbg !2436

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2439
  br i1 %447, label %448, label %450, !dbg !2443

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2439
  store i8 39, i8* %449, align 1, !dbg !2439, !tbaa !1183
  br label %450, !dbg !2439

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %451, metadata !2029, metadata !DIExpression()), !dbg !2092
  %452 = icmp ult i64 %451, %129, !dbg !2444
  br i1 %452, label %453, label %455, !dbg !2447

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2444
  store i8 39, i8* %454, align 1, !dbg !2444, !tbaa !1183
  br label %455, !dbg !2444

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %456, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %457, !dbg !2448

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2449
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %459, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %458, metadata !2029, metadata !DIExpression()), !dbg !2092
  %460 = icmp ult i64 %458, %129, !dbg !2450
  br i1 %460, label %461, label %463, !dbg !2452

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2450
  store i8 %435, i8* %462, align 1, !dbg !2450, !tbaa !1183
  br label %463, !dbg !2450

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %464, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %438, metadata !2028, metadata !DIExpression()), !dbg !2152
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2453
  %466 = load i8, i8* %465, align 1, !dbg !2453, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %466, metadata !2039, metadata !DIExpression()), !dbg !2178
  br label %370, !dbg !2454, !llvm.loop !2455

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2458
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2151
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2093
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2459
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2151
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2151
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2176
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2176
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2176
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %476, metadata !2046, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %475, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %155, metadata !2044, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %474, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %473, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %472, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %471, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %470, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %469, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %468, metadata !2028, metadata !DIExpression()), !dbg !2152
  br i1 %105, label %489, label %478, !dbg !2460

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !2462

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2463

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !2464
  %502 = zext i8 %501 to i64, !dbg !2464
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2465
  %504 = load i32, i32* %503, align 4, !dbg !2465, !tbaa !894
  %505 = and i8 %494, 31, !dbg !2466
  %506 = zext i8 %505 to i32, !dbg !2466
  %507 = shl i32 1, %506, !dbg !2467
  %508 = and i32 %504, %507, !dbg !2467
  %509 = icmp eq i32 %508, 0, !dbg !2467
  %510 = icmp eq i8 %155, 0, !dbg !2468
  %511 = and i1 %510, %509, !dbg !2469
  br i1 %511, label %562, label %524, !dbg !2469

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !2468
  br i1 %523, label %562, label %524, !dbg !2470

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2471
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2151
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2093
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2459
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2100
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2101
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2472
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2176
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %532, metadata !2046, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %531, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %530, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %529, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %528, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %527, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %526, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %525, metadata !2028, metadata !DIExpression()), !dbg !2152
  br i1 %110, label %534, label %661, !dbg !2475

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2162
  %535 = and i8 %529, 1, !dbg !2477
  %536 = icmp eq i8 %535, 0, !dbg !2477
  %537 = and i1 %114, %536, !dbg !2477
  br i1 %537, label %538, label %554, !dbg !2477

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2479
  br i1 %539, label %540, label %542, !dbg !2483

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2479
  store i8 39, i8* %541, align 1, !dbg !2479, !tbaa !1183
  br label %542, !dbg !2479

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %543, metadata !2029, metadata !DIExpression()), !dbg !2092
  %544 = icmp ult i64 %543, %533, !dbg !2484
  br i1 %544, label %545, label %547, !dbg !2487

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2484
  store i8 36, i8* %546, align 1, !dbg !2484, !tbaa !1183
  br label %547, !dbg !2484

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %548, metadata !2029, metadata !DIExpression()), !dbg !2092
  %549 = icmp ult i64 %548, %533, !dbg !2488
  br i1 %549, label %550, label %552, !dbg !2491

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2488
  store i8 39, i8* %551, align 1, !dbg !2488, !tbaa !1183
  br label %552, !dbg !2488

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %553, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %554, !dbg !2492

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2449
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %556, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %555, metadata !2029, metadata !DIExpression()), !dbg !2092
  %557 = icmp ult i64 %555, %533, !dbg !2493
  br i1 %557, label %558, label %560, !dbg !2496

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2493
  store i8 92, i8* %559, align 1, !dbg !2493, !tbaa !1183
  br label %560, !dbg !2493

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %561, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %572, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %571, metadata !2046, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %570, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %569, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %568, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %567, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %566, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %565, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %564, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %563, metadata !2028, metadata !DIExpression()), !dbg !2152
  br label %589, !dbg !2497

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2471
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2151
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2093
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2459
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2100
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2101
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2500
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2176
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2176
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %571, metadata !2046, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %570, metadata !2045, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %569, metadata !2039, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 %568, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %567, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %566, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %565, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %564, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %563, metadata !2028, metadata !DIExpression()), !dbg !2152
  %573 = and i8 %567, 1, !dbg !2497
  %574 = icmp ne i8 %573, 0, !dbg !2497
  %575 = and i8 %570, 1, !dbg !2497
  %576 = icmp eq i8 %575, 0, !dbg !2497
  %577 = and i1 %574, %576, !dbg !2497
  br i1 %577, label %578, label %589, !dbg !2497

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2501
  br i1 %579, label %580, label %582, !dbg !2505

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2501
  store i8 39, i8* %581, align 1, !dbg !2501, !tbaa !1183
  br label %582, !dbg !2501

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %583, metadata !2029, metadata !DIExpression()), !dbg !2092
  %584 = icmp ult i64 %583, %572, !dbg !2506
  br i1 %584, label %585, label %587, !dbg !2509

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2506
  store i8 39, i8* %586, align 1, !dbg !2506, !tbaa !1183
  br label %587, !dbg !2506

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %588, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2100
  br label %589, !dbg !2510

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2449
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2151
  call void @llvm.dbg.value(metadata i8 %598, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %597, metadata !2029, metadata !DIExpression()), !dbg !2092
  %599 = icmp ult i64 %597, %590, !dbg !2511
  br i1 %599, label %600, label %602, !dbg !2514

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2511
  store i8 %592, i8* %601, align 1, !dbg !2511, !tbaa !1183
  br label %602, !dbg !2511

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %603, metadata !2029, metadata !DIExpression()), !dbg !2092
  %604 = and i8 %591, 1, !dbg !2515
  %605 = icmp eq i8 %604, 0, !dbg !2515
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2517
  call void @llvm.dbg.value(metadata i8 %606, metadata !2038, metadata !DIExpression()), !dbg !2102
  br label %607, !dbg !2518

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2471
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2151
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2093
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2459
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2100
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2151
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2102
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %614, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %613, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %612, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %611, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %610, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %609, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %608, metadata !2028, metadata !DIExpression()), !dbg !2152
  %616 = add i64 %608, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %616, metadata !2028, metadata !DIExpression()), !dbg !2152
  br label %121, !dbg !2520, !llvm.loop !2521

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %125, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %125, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %126, metadata !2036, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2037, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, metadata !2038, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  %619 = icmp eq i64 %123, 0, !dbg !2523
  %620 = and i1 %114, %619, !dbg !2525
  %621 = xor i1 %620, true, !dbg !2525
  %622 = or i1 %110, %621, !dbg !2525
  br i1 %622, label %623, label %661, !dbg !2525

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2526
  %625 = xor i1 %624, true, !dbg !2526
  %626 = and i8 %127, 1, !dbg !2528
  %627 = icmp eq i8 %626, 0, !dbg !2528
  %628 = or i1 %627, %625, !dbg !2526
  br i1 %628, label %638, label %629, !dbg !2526

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2529
  %631 = icmp eq i8 %630, 0, !dbg !2529
  br i1 %631, label %634, label %632, !dbg !2532

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %618, metadata !2022, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %95, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %96, metadata !2027, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %125, metadata !2022, metadata !DIExpression()), !dbg !2086
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2533
  br label %671, !dbg !2534

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2535
  %636 = icmp ne i64 %124, 0, !dbg !2537
  %637 = and i1 %636, %635, !dbg !2538
  br i1 %637, label %27, label %638, !dbg !2538

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %129, metadata !2020, metadata !DIExpression()), !dbg !2084
  %639 = icmp ne i8* %98, null, !dbg !2539
  %640 = and i1 %639, %110, !dbg !2541
  br i1 %640, label %641, label %656, !dbg !2541

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %123, metadata !2029, metadata !DIExpression()), !dbg !2092
  %642 = load i8, i8* %98, align 1, !dbg !2542, !tbaa !1183
  %643 = icmp eq i8 %642, 0, !dbg !2545
  br i1 %643, label %656, label %644, !dbg !2545

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %647, metadata !2029, metadata !DIExpression()), !dbg !2092
  %648 = icmp ult i64 %647, %129, !dbg !2546
  br i1 %648, label %649, label %651, !dbg !2549

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2546
  store i8 %645, i8* %650, align 1, !dbg !2546, !tbaa !1183
  br label %651, !dbg !2546

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2549
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %653, metadata !2031, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %652, metadata !2029, metadata !DIExpression()), !dbg !2092
  %654 = load i8, i8* %653, align 1, !dbg !2542, !tbaa !1183
  %655 = icmp eq i8 %654, 0, !dbg !2545
  br i1 %655, label %656, label %644, !dbg !2545, !llvm.loop !2551

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %657, metadata !2029, metadata !DIExpression()), !dbg !2092
  %658 = icmp ult i64 %657, %129, !dbg !2553
  br i1 %658, label %659, label %671, !dbg !2555

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2556
  store i8 0, i8* %660, align 1, !dbg !2557, !tbaa !1183
  br label %671, !dbg !2556

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2020, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %663, metadata !2022, metadata !DIExpression()), !dbg !2086
  %665 = icmp ne i32 %662, 2, !dbg !2558
  %666 = icmp eq i8 %102, 0, !dbg !2560
  %667 = or i1 %665, %666, !dbg !2561
  call void @llvm.dbg.value(metadata i32 4, metadata !2023, metadata !DIExpression()), !dbg !2087
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %668, metadata !2023, metadata !DIExpression()), !dbg !2087
  %669 = and i32 %5, -3, !dbg !2562
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2563
  br label %671, !dbg !2564

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2565
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2571, metadata !DIExpression()), !dbg !2575
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %3, metadata !2572, metadata !DIExpression()), !dbg !2577
  %4 = icmp eq i8* %3, %0, !dbg !2578
  br i1 %4, label %5, label %71, !dbg !2580

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %6, metadata !2573, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %6, metadata !2583, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* null, metadata !2589, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 85, metadata !2590, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 84, metadata !2591, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 70, metadata !2592, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 45, metadata !2593, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 56, metadata !2594, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2611
  %7 = load i8, i8* %6, align 1, !dbg !2612, !tbaa !1183
  %8 = and i8 %7, -33, !dbg !2612
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2612

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* null, metadata !2619, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 84, metadata !2620, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 70, metadata !2621, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 45, metadata !2622, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 56, metadata !2623, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2640
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2641
  %11 = load i8, i8* %10, align 1, !dbg !2641, !tbaa !1183
  %12 = and i8 %11, -33, !dbg !2641
  %13 = icmp eq i8 %12, 84, !dbg !2641
  br i1 %13, label %14, label %68, !dbg !2641

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2643, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* null, metadata !2648, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 70, metadata !2649, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 45, metadata !2650, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 56, metadata !2651, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2654, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2667
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2668
  %16 = load i8, i8* %15, align 1, !dbg !2668, !tbaa !1183
  %17 = and i8 %16, -33, !dbg !2668
  %18 = icmp eq i8 %17, 70, !dbg !2668
  br i1 %18, label %19, label %68, !dbg !2668

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2670, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* null, metadata !2675, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 45, metadata !2676, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8 56, metadata !2677, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2692
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2693
  %21 = load i8, i8* %20, align 1, !dbg !2693, !tbaa !1183
  %22 = icmp eq i8 %21, 45, !dbg !2693
  br i1 %22, label %23, label %68, !dbg !2695

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2696, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* null, metadata !2701, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8 56, metadata !2702, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 0, metadata !2703, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2716
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2717
  %25 = load i8, i8* %24, align 1, !dbg !2717, !tbaa !1183
  %26 = icmp eq i8 %25, 56, !dbg !2717
  br i1 %26, label %27, label %68, !dbg !2719

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2720, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8* null, metadata !2725, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2726, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2738
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2739
  %29 = load i8, i8* %28, align 1, !dbg !2739, !tbaa !1183
  %30 = icmp eq i8 %29, 0, !dbg !2739
  br i1 %30, label %31, label %68, !dbg !2741

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2742, !tbaa !1183
  %33 = icmp eq i8 %32, 96, !dbg !2743
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.80, i64 0, i64 0), !dbg !2742
  br label %71, !dbg !2744

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* null, metadata !2619, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 66, metadata !2620, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 49, metadata !2621, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 56, metadata !2622, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 51, metadata !2624, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 48, metadata !2625, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2757
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2758
  %37 = load i8, i8* %36, align 1, !dbg !2758, !tbaa !1183
  %38 = and i8 %37, -33, !dbg !2758
  %39 = icmp eq i8 %38, 66, !dbg !2758
  br i1 %39, label %40, label %68, !dbg !2758

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2643, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* null, metadata !2648, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 49, metadata !2649, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 56, metadata !2650, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 48, metadata !2651, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 51, metadata !2652, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8 48, metadata !2653, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 0, metadata !2654, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2768
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2769
  %42 = load i8, i8* %41, align 1, !dbg !2769, !tbaa !1183
  %43 = icmp eq i8 %42, 49, !dbg !2769
  br i1 %43, label %44, label %68, !dbg !2770

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2670, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* null, metadata !2675, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 56, metadata !2676, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 48, metadata !2677, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 51, metadata !2678, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 48, metadata !2679, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2779
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2780
  %46 = load i8, i8* %45, align 1, !dbg !2780, !tbaa !1183
  %47 = icmp eq i8 %46, 56, !dbg !2780
  br i1 %47, label %48, label %68, !dbg !2781

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2696, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* null, metadata !2701, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 48, metadata !2702, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 51, metadata !2703, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 48, metadata !2704, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2789
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2790
  %50 = load i8, i8* %49, align 1, !dbg !2790, !tbaa !1183
  %51 = icmp eq i8 %50, 48, !dbg !2790
  br i1 %51, label %52, label %68, !dbg !2791

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2720, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* null, metadata !2725, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8 51, metadata !2726, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8 48, metadata !2727, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2798
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2799
  %54 = load i8, i8* %53, align 1, !dbg !2799, !tbaa !1183
  %55 = icmp eq i8 %54, 51, !dbg !2799
  br i1 %55, label %56, label %68, !dbg !2800

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2801, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* null, metadata !2806, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 48, metadata !2807, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2809, metadata !DIExpression()), !dbg !2817
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2818
  %58 = load i8, i8* %57, align 1, !dbg !2818, !tbaa !1183
  %59 = icmp eq i8 %58, 48, !dbg !2818
  br i1 %59, label %60, label %68, !dbg !2820

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* null, metadata !2826, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 0, metadata !2828, metadata !DIExpression()), !dbg !2835
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2836
  %62 = load i8, i8* %61, align 1, !dbg !2836, !tbaa !1183
  %63 = icmp eq i8 %62, 0, !dbg !2836
  br i1 %63, label %64, label %68, !dbg !2838

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2839, !tbaa !1183
  %66 = icmp eq i8 %65, 96, !dbg !2840
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.82, i64 0, i64 0), !dbg !2839
  br label %71, !dbg !2841

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2842
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !2843
  br label %71, !dbg !2844

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2845
  ret i8* %72, !dbg !2846
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.savewd*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #9, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()) #9, !dbg !2872
  call void @llvm.dbg.value(metadata i64* null, metadata !2863, metadata !DIExpression()) #9, !dbg !2873
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2864, metadata !DIExpression()) #9, !dbg !2874
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2875
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2865, metadata !DIExpression()) #9, !dbg !2876
  %6 = tail call i32* @__errno_location() #18, !dbg !2877
  %7 = load i32, i32* %6, align 4, !dbg !2877, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2866, metadata !DIExpression()) #9, !dbg !2878
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2879
  %9 = load i32, i32* %8, align 4, !dbg !2879, !tbaa !1952
  %10 = or i32 %9, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %10, metadata !2867, metadata !DIExpression()) #9, !dbg !2881
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2882
  %12 = load i32, i32* %11, align 8, !dbg !2882, !tbaa !1893
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2883
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2884
  %15 = load i8*, i8** %14, align 8, !dbg !2884, !tbaa !1978
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2885
  %17 = load i8*, i8** %16, align 8, !dbg !2885, !tbaa !1981
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #9, !dbg !2886
  %19 = add i64 %18, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %19, metadata !2868, metadata !DIExpression()) #9, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %19, metadata !2889, metadata !DIExpression()) #9, !dbg !2894
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %20, metadata !2869, metadata !DIExpression()) #9, !dbg !2897
  %21 = load i32, i32* %11, align 8, !dbg !2898, !tbaa !1893
  %22 = load i8*, i8** %14, align 8, !dbg !2899, !tbaa !1978
  %23 = load i8*, i8** %16, align 8, !dbg !2900, !tbaa !1981
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #9, !dbg !2901
  store i32 %7, i32* %6, align 4, !dbg !2902, !tbaa !894
  ret i8* %20, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64* %2, metadata !2863, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2864, metadata !DIExpression()), !dbg !2907
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2908
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2865, metadata !DIExpression()), !dbg !2909
  %7 = tail call i32* @__errno_location() #18, !dbg !2910
  %8 = load i32, i32* %7, align 4, !dbg !2910, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %8, metadata !2866, metadata !DIExpression()), !dbg !2911
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2912
  %10 = load i32, i32* %9, align 4, !dbg !2912, !tbaa !1952
  %11 = icmp ne i64* %2, null, !dbg !2913
  %12 = xor i1 %11, true, !dbg !2913
  %13 = zext i1 %12 to i32, !dbg !2913
  %14 = or i32 %10, %13, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %14, metadata !2867, metadata !DIExpression()), !dbg !2915
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2916
  %16 = load i32, i32* %15, align 8, !dbg !2916, !tbaa !1893
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2917
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2918
  %19 = load i8*, i8** %18, align 8, !dbg !2918, !tbaa !1978
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2919
  %21 = load i8*, i8** %20, align 8, !dbg !2919, !tbaa !1981
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2920
  %23 = add i64 %22, 1, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %23, metadata !2868, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %23, metadata !2889, metadata !DIExpression()) #9, !dbg !2923
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %24, metadata !2869, metadata !DIExpression()), !dbg !2926
  %25 = load i32, i32* %15, align 8, !dbg !2927, !tbaa !1893
  %26 = load i8*, i8** %18, align 8, !dbg !2928, !tbaa !1978
  %27 = load i8*, i8** %20, align 8, !dbg !2929, !tbaa !1981
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2930
  store i32 %8, i32* %7, align 4, !dbg !2931, !tbaa !894
  br i1 %11, label %29, label %30, !dbg !2932

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2933, !tbaa !2935
  br label %30, !dbg !2936

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2938 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2942, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 1, metadata !2941, metadata !DIExpression()), !dbg !2944
  %2 = load i32, i32* @nslots, align 4, !dbg !2945, !tbaa !894
  %3 = icmp sgt i32 %2, 1, !dbg !2948
  br i1 %3, label %4, label %12, !dbg !2949

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2941, metadata !DIExpression()), !dbg !2944
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2950
  %7 = load i8*, i8** %6, align 8, !dbg !2950, !tbaa !2951
  tail call void @free(i8* %7) #9, !dbg !2953
  %8 = add nuw nsw i64 %5, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i32 undef, metadata !2941, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2944
  %9 = load i32, i32* @nslots, align 4, !dbg !2945, !tbaa !894
  %10 = sext i32 %9 to i64, !dbg !2948
  %11 = icmp slt i64 %8, %10, !dbg !2948
  br i1 %11, label %4, label %12, !dbg !2949, !llvm.loop !2955

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2957
  %14 = load i8*, i8** %13, align 8, !dbg !2957, !tbaa !2951
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2959
  br i1 %15, label %17, label %16, !dbg !2960

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #9, !dbg !2961
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2963, !tbaa !2964
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2965, !tbaa !2951
  br label %17, !dbg !2966

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2967
  br i1 %18, label %21, label %19, !dbg !2969

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2970
  tail call void @free(i8* %20) #9, !dbg !2972
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2973, !tbaa !752
  br label %21, !dbg !2974

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2975, !tbaa !894
  ret void, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2982, metadata !DIExpression()), !dbg !2984
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2985
  ret i8* %3, !dbg !2986
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2991, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %2, metadata !2993, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2994, metadata !DIExpression()), !dbg !3009
  %5 = tail call i32* @__errno_location() #18, !dbg !3010
  %6 = load i32, i32* %5, align 4, !dbg !3010, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !2995, metadata !DIExpression()), !dbg !3011
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3012, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2996, metadata !DIExpression()), !dbg !3013
  %8 = icmp slt i32 %0, 0, !dbg !3014
  br i1 %8, label %9, label %10, !dbg !3016

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3017
  unreachable, !dbg !3017

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3018, !tbaa !894
  %12 = icmp sgt i32 %11, %0, !dbg !3019
  br i1 %12, label %34, label %13, !dbg !3020

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3021
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3000, metadata !DIExpression()), !dbg !3022
  %15 = icmp eq i32 %0, 2147483647, !dbg !3023
  br i1 %15, label %16, label %17, !dbg !3025

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3026
  unreachable, !dbg !3026

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3027
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3027
  %20 = add nsw i32 %0, 1, !dbg !3028
  %21 = sext i32 %20 to i64, !dbg !3029
  %22 = shl nsw i64 %21, 4, !dbg !3030
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !3031
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2996, metadata !DIExpression()), !dbg !3013
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3032, !tbaa !752
  br i1 %14, label %25, label %26, !dbg !3033

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3034, !tbaa.struct !3036
  br label %26, !dbg !3037

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3038, !tbaa !894
  %28 = sext i32 %27 to i64, !dbg !3039
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3039
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3040
  %31 = sub nsw i32 %20, %27, !dbg !3041
  %32 = sext i32 %31 to i64, !dbg !3042
  %33 = shl nsw i64 %32, 4, !dbg !3043
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3040
  store i32 %20, i32* @nslots, align 4, !dbg !3044, !tbaa !894
  br label %34, !dbg !3045

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3046
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2996, metadata !DIExpression()), !dbg !3013
  %36 = sext i32 %0 to i64, !dbg !3047
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3048
  %38 = load i64, i64* %37, align 8, !dbg !3048, !tbaa !2964
  call void @llvm.dbg.value(metadata i64 %38, metadata !3001, metadata !DIExpression()), !dbg !3049
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3050
  %40 = load i8*, i8** %39, align 8, !dbg !3050, !tbaa !2951
  call void @llvm.dbg.value(metadata i8* %40, metadata !3003, metadata !DIExpression()), !dbg !3051
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3052
  %42 = load i32, i32* %41, align 4, !dbg !3052, !tbaa !1952
  %43 = or i32 %42, 1, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %43, metadata !3004, metadata !DIExpression()), !dbg !3054
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3055
  %45 = load i32, i32* %44, align 8, !dbg !3055, !tbaa !1893
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3056
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3057
  %48 = load i8*, i8** %47, align 8, !dbg !3057, !tbaa !1978
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3058
  %50 = load i8*, i8** %49, align 8, !dbg !3058, !tbaa !1981
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %51, metadata !3005, metadata !DIExpression()), !dbg !3060
  %52 = icmp ugt i64 %38, %51, !dbg !3061
  br i1 %52, label %63, label %53, !dbg !3063

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %54, metadata !3001, metadata !DIExpression()), !dbg !3049
  store i64 %54, i64* %37, align 8, !dbg !3066, !tbaa !2964
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3067
  br i1 %55, label %57, label %56, !dbg !3069

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !3070
  br label %57, !dbg !3070

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2889, metadata !DIExpression()) #9, !dbg !3071
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %58, metadata !3003, metadata !DIExpression()), !dbg !3051
  store i8* %58, i8** %39, align 8, !dbg !3074, !tbaa !2951
  %59 = load i32, i32* %44, align 8, !dbg !3075, !tbaa !1893
  %60 = load i8*, i8** %47, align 8, !dbg !3076, !tbaa !1978
  %61 = load i8*, i8** %49, align 8, !dbg !3077, !tbaa !1981
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3078
  br label %63, !dbg !3079

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3080
  call void @llvm.dbg.value(metadata i8* %64, metadata !3003, metadata !DIExpression()), !dbg !3051
  store i32 %6, i32* %5, align 4, !dbg !3081, !tbaa !894
  ret i8* %64, !dbg !3082
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !3088, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3092
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3093
  ret i8* %4, !dbg !3094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 0, metadata !2981, metadata !DIExpression()) #9, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %0, metadata !2982, metadata !DIExpression()) #9, !dbg !3103
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3104
  ret i8* %2, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3087, metadata !DIExpression()) #9, !dbg !3114
  call void @llvm.dbg.value(metadata i8* %0, metadata !3088, metadata !DIExpression()) #9, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()) #9, !dbg !3117
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3118
  ret i8* %3, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3120 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3125, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()), !dbg !3130
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3131
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3127, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata i32 %1, metadata !3133, metadata !DIExpression()) #9, !dbg !3139
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #9, !dbg !3141, !alias.scope !3142
  %6 = icmp eq i32 %1, 10, !dbg !3145
  br i1 %6, label %7, label %8, !dbg !3147

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3148, !noalias !3142
  unreachable, !dbg !3148

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3149
  store i32 %1, i32* %9, align 8, !dbg !3150, !tbaa !1893, !alias.scope !3142
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3127, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3141
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3152
  ret i8* %10, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3154 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3158, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i32 %1, metadata !3159, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %3, metadata !3161, metadata !DIExpression()), !dbg !3166
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3167
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  call void @llvm.dbg.value(metadata i32 %1, metadata !3133, metadata !DIExpression()) #9, !dbg !3169
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #9, !dbg !3171, !alias.scope !3172
  %7 = icmp eq i32 %1, 10, !dbg !3175
  br i1 %7, label %8, label %9, !dbg !3176

; <label>:8:                                      ; preds = %4
  tail call void @abort() #16, !dbg !3177, !noalias !3172
  unreachable, !dbg !3177

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3178
  store i32 %1, i32* %10, align 8, !dbg !3179, !tbaa !1893, !alias.scope !3172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3181
  ret i8* %11, !dbg !3182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3183 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %1, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()) #9, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()) #9, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %1, metadata !3126, metadata !DIExpression()) #9, !dbg !3194
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3195
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3127, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()) #9, !dbg !3197
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #9, !dbg !3199, !alias.scope !3200
  %5 = icmp eq i32 %0, 10, !dbg !3203
  br i1 %5, label %6, label %7, !dbg !3204

; <label>:6:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3205, !noalias !3200
  unreachable, !dbg !3205

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3206
  store i32 %0, i32* %8, align 8, !dbg !3207, !tbaa !1893, !alias.scope !3200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3127, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3138, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3199
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3209
  ret i8* %9, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3211 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %2, metadata !3217, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3158, metadata !DIExpression()) #9, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()) #9, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()) #9, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %2, metadata !3161, metadata !DIExpression()) #9, !dbg !3225
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3162, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()) #9, !dbg !3228
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #9, !dbg !3230, !alias.scope !3231
  %6 = icmp eq i32 %0, 10, !dbg !3234
  br i1 %6, label %7, label %8, !dbg !3235

; <label>:7:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3236, !noalias !3231
  unreachable, !dbg !3236

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3237
  store i32 %0, i32* %9, align 8, !dbg !3238, !tbaa !1893, !alias.scope !3231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3162, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3138, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3230
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #9, !dbg !3239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3240
  ret i8* %10, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3242 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 %2, metadata !3248, metadata !DIExpression()), !dbg !3252
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3254, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3249, metadata !DIExpression(DW_OP_deref)), !dbg !3256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1912, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %2, metadata !1913, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 1, metadata !1914, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8 %2, metadata !1915, metadata !DIExpression()), !dbg !3261
  %6 = lshr i8 %2, 5, !dbg !3262
  %7 = zext i8 %6 to i64, !dbg !3262
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3263
  call void @llvm.dbg.value(metadata i32* %8, metadata !1916, metadata !DIExpression()), !dbg !3264
  %9 = and i8 %2, 31, !dbg !3265
  %10 = zext i8 %9 to i32, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %10, metadata !1918, metadata !DIExpression()), !dbg !3266
  %11 = load i32, i32* %8, align 4, !dbg !3267, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !3268
  %13 = and i32 %12, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %13, metadata !1919, metadata !DIExpression()), !dbg !3270
  %14 = xor i32 %13, 1, !dbg !3271
  %15 = shl i32 %14, %10, !dbg !3272
  %16 = xor i32 %15, %11, !dbg !3273
  store i32 %16, i32* %8, align 4, !dbg !3273, !tbaa !894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3249, metadata !DIExpression(DW_OP_deref)), !dbg !3256
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3274
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3275
  ret i8* %17, !dbg !3276
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3277 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 %1, metadata !3282, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()) #9, !dbg !3285
  call void @llvm.dbg.value(metadata i64 -1, metadata !3247, metadata !DIExpression()) #9, !dbg !3287
  call void @llvm.dbg.value(metadata i8 %1, metadata !3248, metadata !DIExpression()) #9, !dbg !3288
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3290, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1912, metadata !DIExpression()) #9, !dbg !3292
  call void @llvm.dbg.value(metadata i8 %1, metadata !1913, metadata !DIExpression()) #9, !dbg !3294
  call void @llvm.dbg.value(metadata i32 1, metadata !1914, metadata !DIExpression()) #9, !dbg !3295
  call void @llvm.dbg.value(metadata i8 %1, metadata !1915, metadata !DIExpression()) #9, !dbg !3296
  %5 = lshr i8 %1, 5, !dbg !3297
  %6 = zext i8 %5 to i64, !dbg !3297
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3298
  call void @llvm.dbg.value(metadata i32* %7, metadata !1916, metadata !DIExpression()) #9, !dbg !3299
  %8 = and i8 %1, 31, !dbg !3300
  %9 = zext i8 %8 to i32, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %9, metadata !1918, metadata !DIExpression()) #9, !dbg !3301
  %10 = load i32, i32* %7, align 4, !dbg !3302, !tbaa !894
  %11 = lshr i32 %10, %9, !dbg !3303
  %12 = and i32 %11, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %12, metadata !1919, metadata !DIExpression()) #9, !dbg !3305
  %13 = xor i32 %12, 1, !dbg !3306
  %14 = shl i32 %13, %9, !dbg !3307
  %15 = xor i32 %14, %10, !dbg !3308
  store i32 %15, i32* %7, align 4, !dbg !3308, !tbaa !894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3291
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3309
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3310
  ret i8* %16, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3312 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()) #9, !dbg !3316
  call void @llvm.dbg.value(metadata i8 58, metadata !3282, metadata !DIExpression()) #9, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()) #9, !dbg !3319
  call void @llvm.dbg.value(metadata i64 -1, metadata !3247, metadata !DIExpression()) #9, !dbg !3321
  call void @llvm.dbg.value(metadata i8 58, metadata !3248, metadata !DIExpression()) #9, !dbg !3322
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3323
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3324, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1912, metadata !DIExpression()) #9, !dbg !3326
  call void @llvm.dbg.value(metadata i8 58, metadata !1913, metadata !DIExpression()) #9, !dbg !3328
  call void @llvm.dbg.value(metadata i32 1, metadata !1914, metadata !DIExpression()) #9, !dbg !3329
  call void @llvm.dbg.value(metadata i8 58, metadata !1915, metadata !DIExpression()) #9, !dbg !3330
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3331
  call void @llvm.dbg.value(metadata i32* %4, metadata !1916, metadata !DIExpression()) #9, !dbg !3332
  call void @llvm.dbg.value(metadata i32 26, metadata !1918, metadata !DIExpression()) #9, !dbg !3333
  %5 = load i32, i32* %4, align 4, !dbg !3334, !tbaa !894
  %6 = or i32 %5, 67108864, !dbg !3335
  store i32 %6, i32* %4, align 4, !dbg !3335, !tbaa !894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3325
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !3336
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3337
  ret i8* %7, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3339 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()) #9, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()) #9, !dbg !3347
  call void @llvm.dbg.value(metadata i8 58, metadata !3248, metadata !DIExpression()) #9, !dbg !3348
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3350, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1912, metadata !DIExpression()) #9, !dbg !3352
  call void @llvm.dbg.value(metadata i8 58, metadata !1913, metadata !DIExpression()) #9, !dbg !3354
  call void @llvm.dbg.value(metadata i32 1, metadata !1914, metadata !DIExpression()) #9, !dbg !3355
  call void @llvm.dbg.value(metadata i8 58, metadata !1915, metadata !DIExpression()) #9, !dbg !3356
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3357
  call void @llvm.dbg.value(metadata i32* %5, metadata !1916, metadata !DIExpression()) #9, !dbg !3358
  call void @llvm.dbg.value(metadata i32 26, metadata !1918, metadata !DIExpression()) #9, !dbg !3359
  %6 = load i32, i32* %5, align 4, !dbg !3360, !tbaa !894
  %7 = or i32 %6, 67108864, !dbg !3361
  store i32 %7, i32* %5, align 4, !dbg !3361, !tbaa !894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3249, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3351
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !3362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3363
  ret i8* %8, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3365 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3138, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3371
  call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %1, metadata !3368, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %2, metadata !3369, metadata !DIExpression()), !dbg !3375
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3376
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %1, metadata !3133, metadata !DIExpression()) #9, !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3371
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3371, !alias.scope !3379
  %8 = icmp eq i32 %1, 10, !dbg !3382
  br i1 %8, label %9, label %10, !dbg !3383

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3384, !noalias !3379
  unreachable, !dbg !3384

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3371
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3377
  store i32 %1, i32* %11, align 8, !dbg !3377
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3377
  %13 = bitcast i32* %12 to i8*, !dbg !3377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3377
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3370, metadata !DIExpression(DW_OP_deref)), !dbg !3385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1912, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !1913, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 1, metadata !1914, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 58, metadata !1915, metadata !DIExpression()), !dbg !3390
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3391
  call void @llvm.dbg.value(metadata i32* %14, metadata !1916, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 26, metadata !1918, metadata !DIExpression()), !dbg !3393
  %15 = load i32, i32* %14, align 4, !dbg !3394, !tbaa !894
  %16 = or i32 %15, 67108864, !dbg !3395
  store i32 %16, i32* %14, align 4, !dbg !3395, !tbaa !894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3370, metadata !DIExpression(DW_OP_deref)), !dbg !3385
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3397
  ret i8* %17, !dbg !3398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3399 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* %1, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %2, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %3, metadata !3406, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()) #9, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3416, metadata !DIExpression()) #9, !dbg !3423
  call void @llvm.dbg.value(metadata i8* %2, metadata !3417, metadata !DIExpression()) #9, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %3, metadata !3418, metadata !DIExpression()) #9, !dbg !3425
  call void @llvm.dbg.value(metadata i64 -1, metadata !3419, metadata !DIExpression()) #9, !dbg !3426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3428, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #9, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #9, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #9, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #9, !dbg !3430
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3434
  store i32 10, i32* %7, align 8, !dbg !3435, !tbaa !1893
  %8 = icmp ne i8* %1, null, !dbg !3436
  %9 = icmp ne i8* %2, null, !dbg !3437
  %10 = and i1 %8, %9, !dbg !3438
  br i1 %10, label %12, label %11, !dbg !3438

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3439
  unreachable, !dbg !3439

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3440
  store i8* %1, i8** %13, align 8, !dbg !3441, !tbaa !1978
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3442
  store i8* %2, i8** %14, align 8, !dbg !3443, !tbaa !1981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3429
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3445
  ret i8* %15, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3412 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* %1, metadata !3416, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i8* %2, metadata !3417, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %3, metadata !3418, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %4, metadata !3419, metadata !DIExpression()), !dbg !3451
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3452
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3453, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3420, metadata !DIExpression(DW_OP_deref)), !dbg !3454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #9, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #9, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #9, !dbg !3458
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #9, !dbg !3455
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3459
  store i32 10, i32* %8, align 8, !dbg !3460, !tbaa !1893
  %9 = icmp ne i8* %1, null, !dbg !3461
  %10 = icmp ne i8* %2, null, !dbg !3462
  %11 = and i1 %9, %10, !dbg !3463
  br i1 %11, label %13, label %12, !dbg !3463

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3464
  unreachable, !dbg !3464

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3465
  store i8* %1, i8** %14, align 8, !dbg !3466, !tbaa !1978
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3467
  store i8* %2, i8** %15, align 8, !dbg !3468, !tbaa !1981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3420, metadata !DIExpression(DW_OP_deref)), !dbg !3454
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3470
  ret i8* %16, !dbg !3471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3472 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3476, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8* %1, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %2, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3403, metadata !DIExpression()) #9, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !3404, metadata !DIExpression()) #9, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3405, metadata !DIExpression()) #9, !dbg !3485
  call void @llvm.dbg.value(metadata i8* %2, metadata !3406, metadata !DIExpression()) #9, !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #9, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %0, metadata !3416, metadata !DIExpression()) #9, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()) #9, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !3418, metadata !DIExpression()) #9, !dbg !3491
  call void @llvm.dbg.value(metadata i64 -1, metadata !3419, metadata !DIExpression()) #9, !dbg !3492
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3494, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #9, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #9, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #9, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #9, !dbg !3496
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3500
  store i32 10, i32* %6, align 8, !dbg !3501, !tbaa !1893
  %7 = icmp ne i8* %0, null, !dbg !3502
  %8 = icmp ne i8* %1, null, !dbg !3503
  %9 = and i1 %7, %8, !dbg !3504
  br i1 %9, label %11, label %10, !dbg !3504

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3505
  unreachable, !dbg !3505

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3506
  store i8* %0, i8** %12, align 8, !dbg !3507, !tbaa !1978
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3508
  store i8* %1, i8** %13, align 8, !dbg !3509, !tbaa !1981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3495
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3510
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3511
  ret i8* %14, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3513 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %1, metadata !3518, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %2, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %3, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #9, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3416, metadata !DIExpression()) #9, !dbg !3527
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()) #9, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %2, metadata !3418, metadata !DIExpression()) #9, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %3, metadata !3419, metadata !DIExpression()) #9, !dbg !3530
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3532, !tbaa.struct !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #9, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #9, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #9, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #9, !dbg !3534
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3538
  store i32 10, i32* %7, align 8, !dbg !3539, !tbaa !1893
  %8 = icmp ne i8* %0, null, !dbg !3540
  %9 = icmp ne i8* %1, null, !dbg !3541
  %10 = and i1 %8, %9, !dbg !3542
  br i1 %10, label %12, label %11, !dbg !3542

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3543
  unreachable, !dbg !3543

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3544
  store i8* %0, i8** %13, align 8, !dbg !3545, !tbaa !1978
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3546
  store i8* %1, i8** %14, align 8, !dbg !3547, !tbaa !1981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3420, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3533
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3549
  ret i8* %15, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %1, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %2, metadata !3557, metadata !DIExpression()), !dbg !3560
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3561
  ret i8* %4, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()) #9, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()) #9, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()) #9, !dbg !3574
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3575
  ret i8* %3, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %0, metadata !3555, metadata !DIExpression()) #9, !dbg !3585
  call void @llvm.dbg.value(metadata i8* %1, metadata !3556, metadata !DIExpression()) #9, !dbg !3587
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()) #9, !dbg !3588
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3589
  ret i8* %3, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3581, metadata !DIExpression()) #9, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3582, metadata !DIExpression()) #9, !dbg !3599
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()) #9, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()) #9, !dbg !3602
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()) #9, !dbg !3603
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3604
  ret i8* %2, !dbg !3605
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local void @savewd_init(%struct.savewd* nocapture) local_unnamed_addr #13 !dbg !3606 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3611, metadata !DIExpression()), !dbg !3612
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3613
  store i32 0, i32* %2, align 4, !dbg !3614, !tbaa !1331
  ret void, !dbg !3615
}

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define dso_local i32 @savewd_errno(%struct.savewd* nocapture readonly) local_unnamed_addr #14 !dbg !3616 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3622, metadata !DIExpression()), !dbg !3623
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3624
  %3 = load i32, i32* %2, align 4, !dbg !3624, !tbaa !1331
  %4 = icmp eq i32 %3, 4, !dbg !3625
  br i1 %4, label %5, label %8, !dbg !3626

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3627
  %7 = load i32, i32* %6, align 4, !dbg !3627, !tbaa !1183
  br label %8, !dbg !3626

; <label>:8:                                      ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3626
  ret i32 %9, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_chdir(%struct.savewd* nocapture, i8*, i32, i32*) local_unnamed_addr #7 !dbg !3629 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3634, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3635, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %2, metadata !3636, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32* %3, metadata !3637, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 -1, metadata !3638, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3648
  %5 = icmp ne i32* %3, null, !dbg !3649
  %6 = xor i1 %5, true, !dbg !3651
  %7 = and i32 %2, 1, !dbg !3652
  %8 = icmp eq i32 %7, 0, !dbg !3652
  %9 = and i1 %8, %6, !dbg !3651
  br i1 %9, label %28, label %10, !dbg !3651

; <label>:10:                                     ; preds = %4
  %11 = shl i32 %2, 17, !dbg !3653
  %12 = and i32 %11, 131072, !dbg !3653
  %13 = or i32 %12, 67840, !dbg !3655
  %14 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %13) #9, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %14, metadata !3638, metadata !DIExpression()), !dbg !3647
  br i1 %5, label %15, label %19, !dbg !3657

; <label>:15:                                     ; preds = %10
  store i32 %14, i32* %3, align 4, !dbg !3658, !tbaa !894
  %16 = tail call i32* @__errno_location() #18, !dbg !3661
  %17 = load i32, i32* %16, align 4, !dbg !3661, !tbaa !894
  %18 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3662
  store i32 %17, i32* %18, align 4, !dbg !3663, !tbaa !894
  br label %19, !dbg !3664

; <label>:19:                                     ; preds = %15, %10
  %20 = icmp slt i32 %14, 0, !dbg !3665
  br i1 %20, label %21, label %25, !dbg !3667

; <label>:21:                                     ; preds = %19
  %22 = tail call i32* @__errno_location() #18, !dbg !3668
  %23 = load i32, i32* %22, align 4, !dbg !3668, !tbaa !894
  %24 = icmp eq i32 %23, 13, !dbg !3669
  br i1 %24, label %28, label %87

; <label>:25:                                     ; preds = %19
  %26 = and i32 %2, 2, !dbg !3670
  %27 = icmp eq i32 %26, 0, !dbg !3670
  br i1 %27, label %28, label %76, !dbg !3672

; <label>:28:                                     ; preds = %21, %4, %25
  %29 = phi i32 [ %14, %25 ], [ -1, %4 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3673, metadata !DIExpression()) #9, !dbg !3681
  %30 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3685
  %31 = load i32, i32* %30, align 4, !dbg !3685, !tbaa !1331
  switch i32 %31, label %57 [
    i32 0, label %32
    i32 3, label %44
    i32 1, label %58
    i32 2, label %58
    i32 4, label %58
    i32 5, label %58
  ], !dbg !3686

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.91, i64 0, i64 0), i32 0) #9, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %33, metadata !3678, metadata !DIExpression()) #9, !dbg !3688
  %34 = icmp sgt i32 %33, -1, !dbg !3689
  br i1 %34, label %35, label %37, !dbg !3691

; <label>:35:                                     ; preds = %32
  store i32 1, i32* %30, align 4, !dbg !3692, !tbaa !1331
  %36 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3694
  store i32 %33, i32* %36, align 4, !dbg !3695, !tbaa !1183
  br label %58

; <label>:37:                                     ; preds = %32
  %38 = tail call i32* @__errno_location() #18, !dbg !3696
  %39 = load i32, i32* %38, align 4, !dbg !3696, !tbaa !894
  switch i32 %39, label %40 [
    i32 13, label %42
    i32 116, label %42
  ], !dbg !3698

; <label>:40:                                     ; preds = %37
  store i32 4, i32* %30, align 4, !dbg !3699, !tbaa !1331
  %41 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3701
  store i32 %39, i32* %41, align 4, !dbg !3702, !tbaa !1183
  br label %58

; <label>:42:                                     ; preds = %37, %37
  store i32 3, i32* %30, align 4, !dbg !3703, !tbaa !1331
  %43 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3704
  store i32 -1, i32* %43, align 4, !dbg !3705, !tbaa !1183
  br label %48, !dbg !3706

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %46 = load i32, i32* %45, align 4, !dbg !3707, !tbaa !1183
  %47 = icmp slt i32 %46, 0, !dbg !3686
  br i1 %47, label %48, label %58, !dbg !3706

; <label>:48:                                     ; preds = %44, %42
  %49 = phi i32* [ %43, %42 ], [ %45, %44 ]
  %50 = tail call i32 @fork() #9, !dbg !3709
  store i32 %50, i32* %49, align 4, !dbg !3711, !tbaa !1183
  %51 = icmp eq i32 %50, 0, !dbg !3712
  br i1 %51, label %58, label %52, !dbg !3714

; <label>:52:                                     ; preds = %48
  %53 = icmp sgt i32 %50, 0, !dbg !3715
  br i1 %53, label %76, label %54, !dbg !3718

; <label>:54:                                     ; preds = %52
  store i32 4, i32* %30, align 4, !dbg !3719, !tbaa !1331
  %55 = tail call i32* @__errno_location() #18, !dbg !3720
  %56 = load i32, i32* %55, align 4, !dbg !3720, !tbaa !894
  store i32 %56, i32* %49, align 4, !dbg !3721, !tbaa !1183
  br label %58, !dbg !3722

; <label>:57:                                     ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.92, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #16, !dbg !3723
  unreachable, !dbg !3723

; <label>:58:                                     ; preds = %40, %35, %48, %28, %28, %28, %28, %44, %54
  %59 = icmp slt i32 %29, 0, !dbg !3726
  br i1 %59, label %60, label %62, !dbg !3728

; <label>:60:                                     ; preds = %58
  %61 = tail call i32 @chdir(i8* %1) #9, !dbg !3729
  br label %64, !dbg !3728

; <label>:62:                                     ; preds = %58
  %63 = tail call i32 @fchdir(i32 %29) #9, !dbg !3730
  br label %64, !dbg !3728

; <label>:64:                                     ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ], !dbg !3728
  call void @llvm.dbg.value(metadata i32 %65, metadata !3639, metadata !DIExpression()), !dbg !3648
  %66 = icmp eq i32 %65, 0, !dbg !3731
  br i1 %66, label %67, label %76, !dbg !3733

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %30, align 4, !dbg !3734, !tbaa !1331
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 4, label %76
    i32 2, label %76
    i32 5, label %76
    i32 3, label %70
  ], !dbg !3735

; <label>:69:                                     ; preds = %67
  store i32 2, i32* %30, align 4, !dbg !3736, !tbaa !1331
  br label %76, !dbg !3738

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3739
  %72 = load i32, i32* %71, align 4, !dbg !3739, !tbaa !1183
  %73 = icmp eq i32 %72, 0, !dbg !3739
  br i1 %73, label %76, label %74, !dbg !3742

; <label>:74:                                     ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #16, !dbg !3739
  unreachable, !dbg !3739

; <label>:75:                                     ; preds = %67
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.92, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #16, !dbg !3743
  unreachable, !dbg !3743

; <label>:76:                                     ; preds = %52, %25, %69, %67, %67, %67, %70, %64
  %77 = phi i32 [ %29, %70 ], [ %29, %67 ], [ %29, %67 ], [ %29, %67 ], [ %29, %69 ], [ %29, %64 ], [ %14, %25 ], [ %29, %52 ], !dbg !3646
  %78 = phi i32 [ 0, %70 ], [ 0, %67 ], [ 0, %67 ], [ 0, %67 ], [ 0, %69 ], [ %65, %64 ], [ 0, %25 ], [ -2, %52 ], !dbg !3746
  %79 = phi i32* [ %3, %70 ], [ %3, %67 ], [ %3, %67 ], [ %3, %67 ], [ %3, %69 ], [ %3, %64 ], [ %3, %25 ], [ null, %52 ]
  call void @llvm.dbg.value(metadata i32* %79, metadata !3637, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %78, metadata !3639, metadata !DIExpression()), !dbg !3648
  %80 = icmp slt i32 %77, 0, !dbg !3747
  %81 = icmp ne i32* %79, null, !dbg !3748
  %82 = or i1 %80, %81, !dbg !3749
  br i1 %82, label %87, label %83, !dbg !3749

; <label>:83:                                     ; preds = %76
  %84 = tail call i32* @__errno_location() #18, !dbg !3750
  %85 = load i32, i32* %84, align 4, !dbg !3750, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %85, metadata !3640, metadata !DIExpression()), !dbg !3751
  %86 = tail call i32 @close(i32 %77) #9, !dbg !3752
  store i32 %85, i32* %84, align 4, !dbg !3753, !tbaa !894
  br label %87, !dbg !3754

; <label>:87:                                     ; preds = %21, %76, %83
  %88 = phi i32 [ %78, %76 ], [ %78, %83 ], [ -1, %21 ]
  ret i32 %88, !dbg !3755
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_restore(%struct.savewd* nocapture, i32) local_unnamed_addr #7 !dbg !3756 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3760, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3772
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3773
  %5 = load i32, i32* %4, align 4, !dbg !3773, !tbaa !1331
  switch i32 %5, label %52 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !3774

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !dbg !3775, !tbaa !1183
  %9 = tail call i32* @__errno_location() #18, !dbg !3776
  br label %21, !dbg !3774

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3777
  %12 = load i32, i32* %11, align 4, !dbg !3777, !tbaa !1183
  %13 = tail call i32 @fchdir(i32 %12) #9, !dbg !3778
  %14 = icmp eq i32 %13, 0, !dbg !3779
  br i1 %14, label %15, label %16, !dbg !3780

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !3781, !tbaa !1331
  br label %53, !dbg !3783

; <label>:16:                                     ; preds = %10
  %17 = tail call i32* @__errno_location() #18, !dbg !3784
  %18 = load i32, i32* %17, align 4, !dbg !3784, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %18, metadata !3762, metadata !DIExpression()), !dbg !3785
  %19 = load i32, i32* %11, align 4, !dbg !3786, !tbaa !1183
  %20 = tail call i32 @close(i32 %19) #9, !dbg !3787
  store i32 4, i32* %4, align 4, !dbg !3788, !tbaa !1331
  store i32 %18, i32* %11, align 4, !dbg !3789, !tbaa !1183
  br label %21, !dbg !3790

; <label>:21:                                     ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !3776
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !3775
  store i32 %23, i32* %22, align 4, !dbg !3791, !tbaa !894
  br label %53, !dbg !3792

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3793
  %26 = load i32, i32* %25, align 4, !dbg !3793, !tbaa !1183
  call void @llvm.dbg.value(metadata i32 %26, metadata !3766, metadata !DIExpression()), !dbg !3794
  %27 = icmp eq i32 %26, 0, !dbg !3795
  br i1 %27, label %28, label %29, !dbg !3797

; <label>:28:                                     ; preds = %24
  tail call void @_exit(i32 %1) #16, !dbg !3798
  unreachable, !dbg !3798

; <label>:29:                                     ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !3799
  br i1 %30, label %31, label %53, !dbg !3800

; <label>:31:                                     ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !3801
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #9, !dbg !3801
  br label %33, !dbg !3802

; <label>:33:                                     ; preds = %36, %31
  call void @llvm.dbg.value(metadata i32* %3, metadata !3768, metadata !DIExpression(DW_OP_deref)), !dbg !3803
  %34 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #9, !dbg !3804
  %35 = icmp slt i32 %34, 0, !dbg !3805
  br i1 %35, label %36, label %41, !dbg !3802

; <label>:36:                                     ; preds = %33
  %37 = tail call i32* @__errno_location() #18, !dbg !3806
  %38 = load i32, i32* %37, align 4, !dbg !3806, !tbaa !894
  %39 = icmp eq i32 %38, 4, !dbg !3806
  br i1 %39, label %33, label %40, !dbg !3809, !llvm.loop !3810

; <label>:40:                                     ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.95, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #16, !dbg !3806
  unreachable, !dbg !3806

; <label>:41:                                     ; preds = %33
  store i32 -1, i32* %25, align 4, !dbg !3812, !tbaa !1183
  %42 = load i32, i32* %3, align 4, !dbg !3813, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %42, metadata !3768, metadata !DIExpression()), !dbg !3803
  %43 = and i32 %42, 127, !dbg !3813
  %44 = icmp eq i32 %43, 0, !dbg !3813
  br i1 %44, label %48, label %45, !dbg !3815

; <label>:45:                                     ; preds = %41
  %46 = call i32 @raise(i32 %43) #9, !dbg !3816
  %47 = load i32, i32* %3, align 4, !dbg !3817, !tbaa !894
  br label %48, !dbg !3816

; <label>:48:                                     ; preds = %41, %45
  %49 = phi i32 [ %42, %41 ], [ %47, %45 ], !dbg !3817
  call void @llvm.dbg.value(metadata i32 %49, metadata !3768, metadata !DIExpression()), !dbg !3803
  %50 = lshr i32 %49, 8, !dbg !3817
  %51 = and i32 %50, 255, !dbg !3817
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #9, !dbg !3818
  br label %53

; <label>:52:                                     ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.92, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #16, !dbg !3819
  unreachable, !dbg !3819

; <label>:53:                                     ; preds = %29, %15, %2, %2, %48, %21
  %54 = phi i32 [ %51, %48 ], [ -1, %21 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], [ 0, %29 ], !dbg !3822
  ret i32 %54, !dbg !3823
}

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @savewd_finish(%struct.savewd* nocapture) local_unnamed_addr #7 !dbg !3824 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3826, metadata !DIExpression()), !dbg !3827
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3828
  %3 = load i32, i32* %2, align 4, !dbg !3828, !tbaa !1331
  switch i32 %3, label %13 [
    i32 0, label %14
    i32 4, label %14
    i32 1, label %4
    i32 2, label %4
    i32 3, label %8
  ], !dbg !3829

; <label>:4:                                      ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3830
  %6 = load i32, i32* %5, align 4, !dbg !3830, !tbaa !1183
  %7 = tail call i32 @close(i32 %6) #9, !dbg !3832
  br label %14, !dbg !3833

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3834
  %10 = load i32, i32* %9, align 4, !dbg !3834, !tbaa !1183
  %11 = icmp slt i32 %10, 0, !dbg !3834
  br i1 %11, label %14, label %12, !dbg !3837

; <label>:12:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.96, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3834
  unreachable, !dbg !3834

; <label>:13:                                     ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.92, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3838
  unreachable, !dbg !3838

; <label>:14:                                     ; preds = %8, %1, %1, %4
  store i32 5, i32* %2, align 4, !dbg !3841, !tbaa !1331
  ret void, !dbg !3842
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_process_files(i32, i8** nocapture readonly, i32 (i8*, %struct.savewd*, i8*)* nocapture, i8*) local_unnamed_addr #7 !dbg !3843 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i8** %1, metadata !3851, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, metadata !3852, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %3, metadata !3853, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()), !dbg !3876
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !3877
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !3877
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3611, metadata !DIExpression()), !dbg !3879
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !3881
  store i32 0, i32* %7, align 4, !dbg !3882, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3883
  %8 = sext i32 %0 to i64, !dbg !3884
  br label %9, !dbg !3884

; <label>:9:                                      ; preds = %13, %4
  %10 = phi i64 [ %11, %13 ], [ %8, %4 ]
  %11 = add nsw i64 %10, -1, !dbg !3886
  call void @llvm.dbg.value(metadata i32 undef, metadata !3855, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3883
  %12 = icmp sgt i64 %10, 0, !dbg !3888
  br i1 %12, label %13, label %18, !dbg !3889

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !3890
  %15 = load i8*, i8** %14, align 8, !dbg !3890, !tbaa !752
  %16 = load i8, i8* %15, align 1, !dbg !3890, !tbaa !1183
  %17 = icmp eq i8 %16, 47, !dbg !3890
  br i1 %17, label %9, label %18, !dbg !3892, !llvm.loop !3893

; <label>:18:                                     ; preds = %13, %9
  %19 = trunc i64 %10 to i32, !dbg !3889
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()), !dbg !3876
  %20 = icmp sgt i32 %19, 1, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  br i1 %20, label %21, label %68, !dbg !3896

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0
  %23 = shl i64 %11, 32, !dbg !3896
  %24 = ashr exact i64 %23, 32, !dbg !3896
  br label %25, !dbg !3896

; <label>:25:                                     ; preds = %54, %21
  %26 = phi i32 [ undef, %21 ], [ %55, %54 ], !dbg !3897
  %27 = phi i64 [ 0, %21 ], [ %41, %54 ]
  %28 = phi i32 [ 0, %21 ], [ %53, %54 ]
  %29 = phi i32 [ 0, %21 ], [ %51, %54 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %29, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3902, metadata !DIExpression()), !dbg !3904
  %30 = icmp eq i32 %28, 3, !dbg !3905
  %31 = icmp sgt i32 %26, 0, !dbg !3906
  %32 = and i1 %30, %31, !dbg !3907
  br i1 %32, label %39, label %33, !dbg !3907

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !3908
  %35 = load i8*, i8** %34, align 8, !dbg !3908, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  %36 = call i32 %2(i8* %35, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %36, metadata !3858, metadata !DIExpression()), !dbg !3910
  %37 = icmp slt i32 %29, %36, !dbg !3911
  %38 = select i1 %37, i32 %36, i32 %29, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %38, metadata !3856, metadata !DIExpression()), !dbg !3876
  br label %39, !dbg !3914

; <label>:39:                                     ; preds = %25, %33
  %40 = phi i32 [ %38, %33 ], [ %29, %25 ], !dbg !3915
  call void @llvm.dbg.value(metadata i32 %40, metadata !3856, metadata !DIExpression()), !dbg !3876
  %41 = add nuw nsw i64 %27, 1, !dbg !3916
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !3916
  %43 = load i8*, i8** %42, align 8, !dbg !3916, !tbaa !752
  %44 = load i8, i8* %43, align 1, !dbg !3916, !tbaa !1183
  %45 = icmp eq i8 %44, 47, !dbg !3916
  br i1 %45, label %50, label %46, !dbg !3917

; <label>:46:                                     ; preds = %39
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  %47 = call i32 @savewd_restore(%struct.savewd* nonnull %5, i32 %40), !dbg !3918
  call void @llvm.dbg.value(metadata i32 %47, metadata !3864, metadata !DIExpression()), !dbg !3919
  %48 = icmp slt i32 %40, %47, !dbg !3920
  %49 = select i1 %48, i32 %47, i32 %40, !dbg !3922
  call void @llvm.dbg.value(metadata i32 %49, metadata !3856, metadata !DIExpression()), !dbg !3876
  br label %50, !dbg !3923

; <label>:50:                                     ; preds = %39, %46
  %51 = phi i32 [ %40, %39 ], [ %49, %46 ], !dbg !3924
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  %52 = icmp slt i64 %41, %24, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  %53 = load i32, i32* %7, align 4, !dbg !3925, !tbaa !1331
  br i1 %52, label %54, label %56, !dbg !3896, !llvm.loop !3926

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %22, align 4, !dbg !3897
  br label %25, !dbg !3896

; <label>:56:                                     ; preds = %50
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  %57 = trunc i64 %41 to i32, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %57, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3826, metadata !DIExpression()) #9, !dbg !3928
  switch i32 %53, label %67 [
    i32 0, label %68
    i32 4, label %68
    i32 1, label %58
    i32 2, label %58
    i32 3, label %62
  ], !dbg !3930

; <label>:58:                                     ; preds = %56, %56
  %59 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3931
  %60 = load i32, i32* %59, align 4, !dbg !3931, !tbaa !1183
  %61 = call i32 @close(i32 %60) #9, !dbg !3932
  br label %68, !dbg !3933

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3934
  %64 = load i32, i32* %63, align 4, !dbg !3934, !tbaa !1183
  %65 = icmp slt i32 %64, 0, !dbg !3934
  br i1 %65, label %68, label %66, !dbg !3935

; <label>:66:                                     ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.96, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3934
  unreachable, !dbg !3934

; <label>:67:                                     ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.92, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.93, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #16, !dbg !3936
  unreachable, !dbg !3936

; <label>:68:                                     ; preds = %18, %56, %56, %58, %62
  %69 = phi i32 [ %57, %56 ], [ %57, %56 ], [ %57, %58 ], [ %57, %62 ], [ 0, %18 ]
  %70 = phi i32 [ %51, %56 ], [ %51, %56 ], [ %51, %58 ], [ %51, %62 ], [ 0, %18 ]
  store i32 5, i32* %7, align 4, !dbg !3937, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %57, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %51, metadata !3856, metadata !DIExpression()), !dbg !3876
  %71 = icmp slt i32 %69, %0, !dbg !3938
  br i1 %71, label %72, label %85, !dbg !3939

; <label>:72:                                     ; preds = %68
  %73 = zext i32 %69 to i64, !dbg !3940
  %74 = zext i32 %0 to i64
  br label %75, !dbg !3940

; <label>:75:                                     ; preds = %75, %72
  %76 = phi i64 [ %73, %72 ], [ %83, %75 ]
  %77 = phi i32 [ %70, %72 ], [ %82, %75 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !3854, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %77, metadata !3856, metadata !DIExpression()), !dbg !3876
  %78 = getelementptr inbounds i8*, i8** %1, i64 %76, !dbg !3940
  %79 = load i8*, i8** %78, align 8, !dbg !3940, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3878
  %80 = call i32 %2(i8* %79, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !3941
  call void @llvm.dbg.value(metadata i32 %80, metadata !3867, metadata !DIExpression()), !dbg !3942
  %81 = icmp slt i32 %77, %80, !dbg !3943
  %82 = select i1 %81, i32 %80, i32 %77, !dbg !3945
  %83 = add nuw nsw i64 %76, 1, !dbg !3946
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %82, metadata !3856, metadata !DIExpression()), !dbg !3876
  %84 = icmp eq i64 %83, %74
  br i1 %84, label %85, label %75, !dbg !3939, !llvm.loop !3947

; <label>:85:                                     ; preds = %75, %68
  %86 = phi i32 [ %70, %68 ], [ %82, %75 ], !dbg !3949
  call void @llvm.dbg.value(metadata i32 %86, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !3950
  ret i32 %86, !dbg !3951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3952 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3991, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %1, metadata !3992, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8* %2, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %3, metadata !3994, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8** %4, metadata !3995, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %5, metadata !3996, metadata !DIExpression()), !dbg !4002
  %7 = icmp eq i8* %1, null, !dbg !4003
  br i1 %7, label %10, label %8, !dbg !4005

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !4006
  br label %12, !dbg !4006

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !4007
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.101, i64 0, i64 0), i32 5) #9, !dbg !4008
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #9, !dbg !4008
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.102, i64 0, i64 0), i32 5) #9, !dbg !4009
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4009
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !4010

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !4011
  unreachable, !dbg !4011

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.103, i64 0, i64 0), i32 5) #9, !dbg !4013
  %20 = load i8*, i8** %4, align 8, !dbg !4013, !tbaa !752
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !4013
  br label %146, !dbg !4014

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.104, i64 0, i64 0), i32 5) #9, !dbg !4015
  %24 = load i8*, i8** %4, align 8, !dbg !4015, !tbaa !752
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4015
  %26 = load i8*, i8** %25, align 8, !dbg !4015, !tbaa !752
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !4015
  br label %146, !dbg !4016

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.105, i64 0, i64 0), i32 5) #9, !dbg !4017
  %30 = load i8*, i8** %4, align 8, !dbg !4017, !tbaa !752
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4017
  %32 = load i8*, i8** %31, align 8, !dbg !4017, !tbaa !752
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4017
  %34 = load i8*, i8** %33, align 8, !dbg !4017, !tbaa !752
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !4017
  br label %146, !dbg !4018

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.106, i64 0, i64 0), i32 5) #9, !dbg !4019
  %38 = load i8*, i8** %4, align 8, !dbg !4019, !tbaa !752
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4019
  %40 = load i8*, i8** %39, align 8, !dbg !4019, !tbaa !752
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4019
  %42 = load i8*, i8** %41, align 8, !dbg !4019, !tbaa !752
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4019
  %44 = load i8*, i8** %43, align 8, !dbg !4019, !tbaa !752
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !4019
  br label %146, !dbg !4020

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.107, i64 0, i64 0), i32 5) #9, !dbg !4021
  %48 = load i8*, i8** %4, align 8, !dbg !4021, !tbaa !752
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4021
  %50 = load i8*, i8** %49, align 8, !dbg !4021, !tbaa !752
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4021
  %52 = load i8*, i8** %51, align 8, !dbg !4021, !tbaa !752
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4021
  %54 = load i8*, i8** %53, align 8, !dbg !4021, !tbaa !752
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4021
  %56 = load i8*, i8** %55, align 8, !dbg !4021, !tbaa !752
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !4021
  br label %146, !dbg !4022

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.108, i64 0, i64 0), i32 5) #9, !dbg !4023
  %60 = load i8*, i8** %4, align 8, !dbg !4023, !tbaa !752
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4023
  %62 = load i8*, i8** %61, align 8, !dbg !4023, !tbaa !752
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4023
  %64 = load i8*, i8** %63, align 8, !dbg !4023, !tbaa !752
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4023
  %66 = load i8*, i8** %65, align 8, !dbg !4023, !tbaa !752
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4023
  %68 = load i8*, i8** %67, align 8, !dbg !4023, !tbaa !752
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4023
  %70 = load i8*, i8** %69, align 8, !dbg !4023, !tbaa !752
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !4023
  br label %146, !dbg !4024

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.109, i64 0, i64 0), i32 5) #9, !dbg !4025
  %74 = load i8*, i8** %4, align 8, !dbg !4025, !tbaa !752
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4025
  %76 = load i8*, i8** %75, align 8, !dbg !4025, !tbaa !752
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4025
  %78 = load i8*, i8** %77, align 8, !dbg !4025, !tbaa !752
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4025
  %80 = load i8*, i8** %79, align 8, !dbg !4025, !tbaa !752
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4025
  %82 = load i8*, i8** %81, align 8, !dbg !4025, !tbaa !752
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4025
  %84 = load i8*, i8** %83, align 8, !dbg !4025, !tbaa !752
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4025
  %86 = load i8*, i8** %85, align 8, !dbg !4025, !tbaa !752
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !4025
  br label %146, !dbg !4026

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.110, i64 0, i64 0), i32 5) #9, !dbg !4027
  %90 = load i8*, i8** %4, align 8, !dbg !4027, !tbaa !752
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4027
  %92 = load i8*, i8** %91, align 8, !dbg !4027, !tbaa !752
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4027
  %94 = load i8*, i8** %93, align 8, !dbg !4027, !tbaa !752
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4027
  %96 = load i8*, i8** %95, align 8, !dbg !4027, !tbaa !752
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4027
  %98 = load i8*, i8** %97, align 8, !dbg !4027, !tbaa !752
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4027
  %100 = load i8*, i8** %99, align 8, !dbg !4027, !tbaa !752
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4027
  %102 = load i8*, i8** %101, align 8, !dbg !4027, !tbaa !752
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4027
  %104 = load i8*, i8** %103, align 8, !dbg !4027, !tbaa !752
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !4027
  br label %146, !dbg !4028

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.111, i64 0, i64 0), i32 5) #9, !dbg !4029
  %108 = load i8*, i8** %4, align 8, !dbg !4029, !tbaa !752
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4029
  %110 = load i8*, i8** %109, align 8, !dbg !4029, !tbaa !752
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4029
  %112 = load i8*, i8** %111, align 8, !dbg !4029, !tbaa !752
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4029
  %114 = load i8*, i8** %113, align 8, !dbg !4029, !tbaa !752
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4029
  %116 = load i8*, i8** %115, align 8, !dbg !4029, !tbaa !752
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4029
  %118 = load i8*, i8** %117, align 8, !dbg !4029, !tbaa !752
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4029
  %120 = load i8*, i8** %119, align 8, !dbg !4029, !tbaa !752
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4029
  %122 = load i8*, i8** %121, align 8, !dbg !4029, !tbaa !752
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4029
  %124 = load i8*, i8** %123, align 8, !dbg !4029, !tbaa !752
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !4029
  br label %146, !dbg !4030

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.112, i64 0, i64 0), i32 5) #9, !dbg !4031
  %128 = load i8*, i8** %4, align 8, !dbg !4031, !tbaa !752
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4031
  %130 = load i8*, i8** %129, align 8, !dbg !4031, !tbaa !752
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4031
  %132 = load i8*, i8** %131, align 8, !dbg !4031, !tbaa !752
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4031
  %134 = load i8*, i8** %133, align 8, !dbg !4031, !tbaa !752
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4031
  %136 = load i8*, i8** %135, align 8, !dbg !4031, !tbaa !752
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4031
  %138 = load i8*, i8** %137, align 8, !dbg !4031, !tbaa !752
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4031
  %140 = load i8*, i8** %139, align 8, !dbg !4031, !tbaa !752
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4031
  %142 = load i8*, i8** %141, align 8, !dbg !4031, !tbaa !752
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4031
  %144 = load i8*, i8** %143, align 8, !dbg !4031, !tbaa !752
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !4031
  br label %146, !dbg !4032

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4034 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4038, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %1, metadata !4039, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i8* %2, metadata !4040, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8* %3, metadata !4041, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i8** %4, metadata !4042, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 0, metadata !4043, metadata !DIExpression()), !dbg !4049
  br label %6, !dbg !4050

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4052
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4054
  %9 = load i8*, i8** %8, align 8, !dbg !4054, !tbaa !752
  %10 = icmp eq i8* %9, null, !dbg !4055
  %11 = add i64 %7, 1, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %11, metadata !4043, metadata !DIExpression()), !dbg !4049
  br i1 %10, label %12, label %6, !dbg !4055, !llvm.loop !4057

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %7, metadata !4043, metadata !DIExpression()), !dbg !4049
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4059
  ret void, !dbg !4060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4061 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4072, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8* %1, metadata !4073, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i8* %2, metadata !4074, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %3, metadata !4075, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4076, metadata !DIExpression()), !dbg !4084
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4085
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !4085
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4078, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 0, metadata !4077, metadata !DIExpression()), !dbg !4087
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4077, metadata !DIExpression()), !dbg !4087
  %11 = load i32, i32* %8, align 8, !dbg !4088
  %12 = icmp ult i32 %11, 41, !dbg !4088
  br i1 %12, label %13, label %18, !dbg !4088

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4088
  %15 = sext i32 %11 to i64, !dbg !4088
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4088
  %17 = add i32 %11, 8, !dbg !4088
  store i32 %17, i32* %8, align 8, !dbg !4088
  br label %21, !dbg !4088

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4088
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4088
  store i8* %20, i8** %10, align 8, !dbg !4088
  br label %21, !dbg !4088

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4088
  %25 = load i8*, i8** %24, align 8, !dbg !4088
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4091
  store i8* %25, i8** %26, align 16, !dbg !4092, !tbaa !752
  %27 = icmp eq i8* %25, null, !dbg !4093
  br i1 %27, label %30, label %28, !dbg !4094

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 1, metadata !4077, metadata !DIExpression()), !dbg !4087
  %29 = icmp ult i32 %22, 41, !dbg !4088
  br i1 %29, label %35, label %32, !dbg !4088

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4095
  call void @llvm.dbg.value(metadata i64 %31, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %31, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !4097
  ret void, !dbg !4097

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4088
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4088
  store i8* %34, i8** %10, align 8, !dbg !4088
  br label %40, !dbg !4088

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4088
  %37 = sext i32 %22 to i64, !dbg !4088
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4088
  %39 = add i32 %22, 8, !dbg !4088
  store i32 %39, i32* %8, align 8, !dbg !4088
  br label %40, !dbg !4088

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4088
  %44 = load i8*, i8** %43, align 8, !dbg !4088
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4091
  store i8* %44, i8** %45, align 8, !dbg !4092, !tbaa !752
  %46 = icmp eq i8* %44, null, !dbg !4093
  br i1 %46, label %30, label %47, !dbg !4094

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 2, metadata !4077, metadata !DIExpression()), !dbg !4087
  %48 = icmp ult i32 %41, 41, !dbg !4088
  br i1 %48, label %52, label %49, !dbg !4088

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4088
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4088
  store i8* %51, i8** %10, align 8, !dbg !4088
  br label %57, !dbg !4088

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4088
  %54 = sext i32 %41 to i64, !dbg !4088
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4088
  %56 = add i32 %41, 8, !dbg !4088
  store i32 %56, i32* %8, align 8, !dbg !4088
  br label %57, !dbg !4088

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4088
  %61 = load i8*, i8** %60, align 8, !dbg !4088
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4091
  store i8* %61, i8** %62, align 16, !dbg !4092, !tbaa !752
  %63 = icmp eq i8* %61, null, !dbg !4093
  br i1 %63, label %30, label %64, !dbg !4094

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 3, metadata !4077, metadata !DIExpression()), !dbg !4087
  %65 = icmp ult i32 %58, 41, !dbg !4088
  br i1 %65, label %69, label %66, !dbg !4088

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4088
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4088
  store i8* %68, i8** %10, align 8, !dbg !4088
  br label %74, !dbg !4088

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4088
  %71 = sext i32 %58 to i64, !dbg !4088
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4088
  %73 = add i32 %58, 8, !dbg !4088
  store i32 %73, i32* %8, align 8, !dbg !4088
  br label %74, !dbg !4088

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4088
  %78 = load i8*, i8** %77, align 8, !dbg !4088
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4091
  store i8* %78, i8** %79, align 8, !dbg !4092, !tbaa !752
  %80 = icmp eq i8* %78, null, !dbg !4093
  br i1 %80, label %30, label %81, !dbg !4094

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 4, metadata !4077, metadata !DIExpression()), !dbg !4087
  %82 = icmp ult i32 %75, 41, !dbg !4088
  br i1 %82, label %86, label %83, !dbg !4088

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4088
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4088
  store i8* %85, i8** %10, align 8, !dbg !4088
  br label %91, !dbg !4088

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4088
  %88 = sext i32 %75 to i64, !dbg !4088
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4088
  %90 = add i32 %75, 8, !dbg !4088
  store i32 %90, i32* %8, align 8, !dbg !4088
  br label %91, !dbg !4088

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4088
  %95 = load i8*, i8** %94, align 8, !dbg !4088
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4091
  store i8* %95, i8** %96, align 16, !dbg !4092, !tbaa !752
  %97 = icmp eq i8* %95, null, !dbg !4093
  br i1 %97, label %30, label %98, !dbg !4094

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 5, metadata !4077, metadata !DIExpression()), !dbg !4087
  %99 = icmp ult i32 %92, 41, !dbg !4088
  br i1 %99, label %103, label %100, !dbg !4088

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4088
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4088
  store i8* %102, i8** %10, align 8, !dbg !4088
  br label %108, !dbg !4088

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4088
  %105 = sext i32 %92 to i64, !dbg !4088
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4088
  %107 = add i32 %92, 8, !dbg !4088
  store i32 %107, i32* %8, align 8, !dbg !4088
  br label %108, !dbg !4088

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4088
  %111 = load i8*, i8** %110, align 8, !dbg !4088
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4091
  store i8* %111, i8** %112, align 8, !dbg !4092, !tbaa !752
  %113 = icmp eq i8* %111, null, !dbg !4093
  br i1 %113, label %30, label %114, !dbg !4094

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 6, metadata !4077, metadata !DIExpression()), !dbg !4087
  %115 = load i8*, i8** %10, align 8, !dbg !4088
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4088
  store i8* %116, i8** %10, align 8, !dbg !4088
  %117 = bitcast i8* %115 to i8**, !dbg !4088
  %118 = load i8*, i8** %117, align 8, !dbg !4088
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4091
  store i8* %118, i8** %119, align 16, !dbg !4092, !tbaa !752
  %120 = icmp eq i8* %118, null, !dbg !4093
  br i1 %120, label %30, label %121, !dbg !4094

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 7, metadata !4077, metadata !DIExpression()), !dbg !4087
  %122 = load i8*, i8** %10, align 8, !dbg !4088
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4088
  store i8* %123, i8** %10, align 8, !dbg !4088
  %124 = bitcast i8* %122 to i8**, !dbg !4088
  %125 = load i8*, i8** %124, align 8, !dbg !4088
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4091
  store i8* %125, i8** %126, align 8, !dbg !4092, !tbaa !752
  %127 = icmp eq i8* %125, null, !dbg !4093
  br i1 %127, label %30, label %128, !dbg !4094

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 8, metadata !4077, metadata !DIExpression()), !dbg !4087
  %129 = load i8*, i8** %10, align 8, !dbg !4088
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4088
  store i8* %130, i8** %10, align 8, !dbg !4088
  %131 = bitcast i8* %129 to i8**, !dbg !4088
  %132 = load i8*, i8** %131, align 8, !dbg !4088
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4091
  store i8* %132, i8** %133, align 16, !dbg !4092, !tbaa !752
  %134 = icmp eq i8* %132, null, !dbg !4093
  br i1 %134, label %30, label %135, !dbg !4094

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4077, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 9, metadata !4077, metadata !DIExpression()), !dbg !4087
  %136 = load i8*, i8** %10, align 8, !dbg !4088
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4088
  store i8* %137, i8** %10, align 8, !dbg !4088
  %138 = bitcast i8* %136 to i8**, !dbg !4088
  %139 = load i8*, i8** %138, align 8, !dbg !4088
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4091
  store i8* %139, i8** %140, align 8, !dbg !4092, !tbaa !752
  %141 = icmp eq i8* %139, null, !dbg !4093
  %142 = select i1 %141, i64 9, i64 10, !dbg !4094
  br label %30, !dbg !4094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4098 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4102, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %1, metadata !4103, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i8* %2, metadata !4104, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %3, metadata !4105, metadata !DIExpression()), !dbg !4114
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !4115
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4106, metadata !DIExpression()), !dbg !4116
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4117
  call void @llvm.va_start(i8* nonnull %6), !dbg !4117
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4118
  call void @llvm.va_end(i8* nonnull %6), !dbg !4119
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !4120
  ret void, !dbg !4120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4121 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #9, !dbg !4122
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.116, i64 0, i64 0)) #9, !dbg !4122
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.117, i64 0, i64 0), i32 5) #9, !dbg !4123
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.118, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.119, i64 0, i64 0)) #9, !dbg !4123
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.120, i64 0, i64 0), i32 5) #9, !dbg !4124
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4124, !tbaa !752
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4124
  ret void, !dbg !4125
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4128, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %1, metadata !4129, metadata !DIExpression()), !dbg !4131
  %3 = udiv i64 9223372036854775807, %1, !dbg !4132
  %4 = icmp ult i64 %3, %0, !dbg !4132
  br i1 %4, label %5, label %6, !dbg !4134

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4135
  unreachable, !dbg !4135

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4136
  call void @llvm.dbg.value(metadata i64 %7, metadata !4137, metadata !DIExpression()) #9, !dbg !4144
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %8, metadata !4143, metadata !DIExpression()) #9, !dbg !4147
  %9 = icmp eq i8* %8, null, !dbg !4148
  %10 = icmp ne i64 %7, 0, !dbg !4150
  %11 = and i1 %10, %9, !dbg !4151
  br i1 %11, label %12, label %13, !dbg !4151

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !4152
  unreachable, !dbg !4152

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4153
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4154
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4155
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()), !dbg !4156
  %3 = icmp eq i8* %2, null, !dbg !4157
  %4 = icmp ne i64 %0, 0, !dbg !4158
  %5 = and i1 %4, %3, !dbg !4159
  br i1 %5, label %6, label %7, !dbg !4159

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4160
  unreachable, !dbg !4160

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4161
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4166, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 %1, metadata !4167, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %2, metadata !4168, metadata !DIExpression()), !dbg !4171
  %4 = udiv i64 9223372036854775807, %2, !dbg !4172
  %5 = icmp ult i64 %4, %1, !dbg !4172
  br i1 %5, label %6, label %7, !dbg !4174

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !4175
  unreachable, !dbg !4175

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #9, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %8, metadata !4182, metadata !DIExpression()) #9, !dbg !4185
  %9 = icmp eq i64 %8, 0, !dbg !4186
  %10 = icmp ne i8* %0, null, !dbg !4188
  %11 = and i1 %10, %9, !dbg !4189
  br i1 %11, label %12, label %13, !dbg !4189

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !4190
  br label %19, !dbg !4192

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %14, metadata !4177, metadata !DIExpression()) #9, !dbg !4183
  %15 = icmp eq i8* %14, null, !dbg !4194
  %16 = icmp ne i64 %8, 0, !dbg !4196
  %17 = and i1 %16, %15, !dbg !4197
  br i1 %17, label %18, label %19, !dbg !4197

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4198
  unreachable, !dbg !4198

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4199
  ret i8* %20, !dbg !4200
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4202
  %3 = icmp eq i64 %1, 0, !dbg !4203
  %4 = icmp ne i8* %0, null, !dbg !4204
  %5 = and i1 %4, %3, !dbg !4205
  br i1 %5, label %6, label %7, !dbg !4205

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !4206
  br label %13, !dbg !4207

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !4208
  call void @llvm.dbg.value(metadata i8* %8, metadata !4177, metadata !DIExpression()), !dbg !4201
  %9 = icmp eq i8* %8, null, !dbg !4209
  %10 = icmp ne i64 %1, 0, !dbg !4210
  %11 = and i1 %10, %9, !dbg !4211
  br i1 %11, label %12, label %13, !dbg !4211

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !4212
  unreachable, !dbg !4212

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4213
  ret i8* %14, !dbg !4214
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !279, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64* %1, metadata !280, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %2, metadata !281, metadata !DIExpression()), !dbg !4217
  %4 = load i64, i64* %1, align 8, !dbg !4218, !tbaa !2935
  call void @llvm.dbg.value(metadata i64 %4, metadata !282, metadata !DIExpression()), !dbg !4219
  %5 = icmp eq i8* %0, null, !dbg !4220
  br i1 %5, label %6, label %20, !dbg !4222

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4223
  br i1 %7, label %8, label %13, !dbg !4226

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %9, metadata !282, metadata !DIExpression()), !dbg !4219
  %10 = icmp ugt i64 %2, 128, !dbg !4229
  %11 = zext i1 %10 to i64, !dbg !4229
  %12 = add nuw nsw i64 %9, %11, !dbg !4230
  call void @llvm.dbg.value(metadata i64 %12, metadata !282, metadata !DIExpression()), !dbg !4219
  br label %13, !dbg !4231

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4232
  call void @llvm.dbg.value(metadata i64 %14, metadata !282, metadata !DIExpression()), !dbg !4219
  %15 = udiv i64 9223372036854775807, %2, !dbg !4233
  %16 = icmp ult i64 %15, %14, !dbg !4233
  br i1 %16, label %19, label %17, !dbg !4235

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !282, metadata !DIExpression()), !dbg !4219
  store i64 %14, i64* %1, align 8, !dbg !4236, !tbaa !2935
  %18 = mul i64 %14, %2, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #9, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %28, metadata !4182, metadata !DIExpression()) #9, !dbg !4240
  br label %31, !dbg !4241

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !4242
  unreachable, !dbg !4242

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4243
  %22 = icmp ugt i64 %21, %4, !dbg !4246
  br i1 %22, label %24, label %23, !dbg !4247

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #16, !dbg !4248
  unreachable, !dbg !4248

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4249
  %26 = add i64 %4, 1, !dbg !4250
  %27 = add i64 %26, %25, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %27, metadata !282, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %27, metadata !282, metadata !DIExpression()), !dbg !4219
  store i64 %27, i64* %1, align 8, !dbg !4236, !tbaa !2935
  %28 = mul i64 %27, %2, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #9, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %28, metadata !4182, metadata !DIExpression()) #9, !dbg !4240
  %29 = icmp eq i64 %28, 0, !dbg !4252
  br i1 %29, label %30, label %31, !dbg !4241

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #9, !dbg !4253
  br label %38, !dbg !4254

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #9, !dbg !4255
  call void @llvm.dbg.value(metadata i8* %33, metadata !4177, metadata !DIExpression()) #9, !dbg !4238
  %34 = icmp eq i8* %33, null, !dbg !4256
  %35 = icmp ne i64 %32, 0, !dbg !4257
  %36 = and i1 %35, %34, !dbg !4258
  br i1 %36, label %37, label %38, !dbg !4258

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #16, !dbg !4259
  unreachable, !dbg !4259

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4260
  ret i8* %39, !dbg !4261
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4262 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()) #9, !dbg !4266
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()) #9, !dbg !4269
  %3 = icmp eq i8* %2, null, !dbg !4270
  %4 = icmp ne i64 %0, 0, !dbg !4271
  %5 = and i1 %4, %3, !dbg !4272
  br i1 %5, label %6, label %7, !dbg !4272

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4273
  unreachable, !dbg !4273

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64* %1, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !279, metadata !DIExpression()) #9, !dbg !4283
  call void @llvm.dbg.value(metadata i64* %1, metadata !280, metadata !DIExpression()) #9, !dbg !4285
  call void @llvm.dbg.value(metadata i64 1, metadata !281, metadata !DIExpression()) #9, !dbg !4286
  %3 = load i64, i64* %1, align 8, !dbg !4287, !tbaa !2935
  call void @llvm.dbg.value(metadata i64 %3, metadata !282, metadata !DIExpression()) #9, !dbg !4288
  %4 = icmp eq i8* %0, null, !dbg !4289
  br i1 %4, label %5, label %12, !dbg !4290

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4291
  br i1 %6, label %9, label %7, !dbg !4292

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !282, metadata !DIExpression()) #9, !dbg !4288
  %8 = icmp slt i64 %3, 0, !dbg !4293
  br i1 %8, label %11, label %9, !dbg !4294

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !282, metadata !DIExpression()) #9, !dbg !4288
  store i64 %10, i64* %1, align 8, !dbg !4295, !tbaa !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #9, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %18, metadata !4182, metadata !DIExpression()) #9, !dbg !4298
  br label %21, !dbg !4299

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !4300
  unreachable, !dbg !4300

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4301
  br i1 %13, label %15, label %14, !dbg !4302

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #16, !dbg !4303
  unreachable, !dbg !4303

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4304
  %17 = add i64 %3, 1, !dbg !4305
  %18 = add i64 %17, %16, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %18, metadata !282, metadata !DIExpression()) #9, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %18, metadata !282, metadata !DIExpression()) #9, !dbg !4288
  store i64 %18, i64* %1, align 8, !dbg !4295, !tbaa !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()) #9, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %18, metadata !4182, metadata !DIExpression()) #9, !dbg !4298
  %19 = icmp eq i64 %18, 0, !dbg !4307
  br i1 %19, label %20, label %21, !dbg !4299

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #9, !dbg !4308
  br label %28, !dbg !4309

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #9, !dbg !4310
  call void @llvm.dbg.value(metadata i8* %23, metadata !4177, metadata !DIExpression()) #9, !dbg !4296
  %24 = icmp eq i8* %23, null, !dbg !4311
  %25 = icmp ne i64 %22, 0, !dbg !4312
  %26 = and i1 %25, %24, !dbg !4313
  br i1 %26, label %27, label %28, !dbg !4313

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #16, !dbg !4314
  unreachable, !dbg !4314

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4315
  ret i8* %29, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4317 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()) #9, !dbg !4321
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()) #9, !dbg !4324
  %3 = icmp eq i8* %2, null, !dbg !4325
  %4 = icmp ne i64 %0, 0, !dbg !4326
  %5 = and i1 %4, %3, !dbg !4327
  br i1 %5, label %6, label %7, !dbg !4327

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4328
  unreachable, !dbg !4328

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4329
  ret i8* %2, !dbg !4330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4331 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4333, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()), !dbg !4337
  %3 = udiv i64 9223372036854775807, %1, !dbg !4338
  %4 = icmp ult i64 %3, %0, !dbg !4338
  br i1 %4, label %8, label %5, !dbg !4340

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !4341
  call void @llvm.dbg.value(metadata i8* %6, metadata !4335, metadata !DIExpression()), !dbg !4342
  %7 = icmp eq i8* %6, null, !dbg !4343
  br i1 %7, label %8, label %9, !dbg !4344

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !4345
  unreachable, !dbg !4345

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()) #9, !dbg !4357
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %3, metadata !4143, metadata !DIExpression()) #9, !dbg !4360
  %4 = icmp eq i8* %3, null, !dbg !4361
  %5 = icmp ne i64 %1, 0, !dbg !4362
  %6 = and i1 %5, %4, !dbg !4363
  br i1 %6, label %7, label %8, !dbg !4363

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !4364
  unreachable, !dbg !4364

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4365
  ret i8* %3, !dbg !4366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4369, metadata !DIExpression()), !dbg !4370
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !4371
  %3 = add i64 %2, 1, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()) #9, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %3, metadata !4354, metadata !DIExpression()) #9, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %3, metadata !4137, metadata !DIExpression()) #9, !dbg !4376
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %4, metadata !4143, metadata !DIExpression()) #9, !dbg !4379
  %5 = icmp eq i8* %4, null, !dbg !4380
  %6 = icmp ne i64 %3, 0, !dbg !4381
  %7 = and i1 %6, %5, !dbg !4382
  br i1 %7, label %8, label %9, !dbg !4382

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !4383
  unreachable, !dbg !4383

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #9, !dbg !4384
  ret i8* %4, !dbg !4385
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4386 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4388, !tbaa !894
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.131, i64 0, i64 0), i32 5) #9, !dbg !4389
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i64 0, i64 0), i8* %2) #9, !dbg !4390
  tail call void @abort() #16, !dbg !4391
  unreachable, !dbg !4391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4392 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4395, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %1, metadata !4396, metadata !DIExpression()), !dbg !4402
  %3 = icmp eq i64 %0, 0, !dbg !4403
  %4 = icmp eq i64 %1, 0, !dbg !4404
  %5 = or i1 %3, %4, !dbg !4405
  br i1 %5, label %12, label %6, !dbg !4405

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %7, metadata !4398, metadata !DIExpression()), !dbg !4407
  %8 = udiv i64 %7, %1, !dbg !4408
  %9 = icmp eq i64 %8, %0, !dbg !4410
  br i1 %9, label %12, label %10, !dbg !4411

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4412
  store i32 12, i32* %11, align 4, !dbg !4414, !tbaa !894
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4395, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %13, metadata !4396, metadata !DIExpression()), !dbg !4402
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !4415
  call void @llvm.dbg.value(metadata i8* %15, metadata !4397, metadata !DIExpression()), !dbg !4416
  br label %16, !dbg !4417

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4418
  ret i8* %17, !dbg !4419
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #7 !dbg !4420 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4437, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i8* %1, metadata !4438, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 %2, metadata !4439, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata %struct.savewd* %3, metadata !4440, metadata !DIExpression()), !dbg !4449
  %6 = bitcast i32* %5 to i8*, !dbg !4450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4450
  %7 = icmp eq i32* %0, null, !dbg !4451
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4453
  call void @llvm.dbg.value(metadata i32* %8, metadata !4437, metadata !DIExpression()), !dbg !4446
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.savewd* %3) #9, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %9, metadata !4441, metadata !DIExpression()), !dbg !4455
  %10 = icmp ugt i64 %9, -3, !dbg !4456
  %11 = icmp ne i64 %2, 0, !dbg !4457
  %12 = and i1 %11, %10, !dbg !4458
  br i1 %12, label %13, label %18, !dbg !4458

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !4459
  br i1 %14, label %18, label %15, !dbg !4460

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4461, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %16, metadata !4443, metadata !DIExpression()), !dbg !4462
  %17 = zext i8 %16 to i32, !dbg !4463
  store i32 %17, i32* %8, align 4, !dbg !4464, !tbaa !894
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4465
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4466
  ret i64 %19, !dbg !4466
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4467 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4506, metadata !DIExpression()), !dbg !4511
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !4512
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4513, metadata !DIExpression()), !dbg !4516
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4518
  %4 = load i32, i32* %3, align 8, !dbg !4518, !tbaa !4519
  %5 = and i32 %4, 32, !dbg !4518
  %6 = icmp eq i32 %5, 0, !dbg !4520
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !4521
  %8 = icmp ne i32 %7, 0, !dbg !4522
  br i1 %6, label %9, label %19, !dbg !4523

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4525
  %11 = xor i1 %8, true, !dbg !4526
  %12 = or i1 %10, %11, !dbg !4526
  %13 = sext i1 %8 to i32, !dbg !4526
  br i1 %12, label %22, label %14, !dbg !4526

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4527
  %16 = load i32, i32* %15, align 4, !dbg !4527, !tbaa !894
  %17 = icmp ne i32 %16, 9, !dbg !4528
  %18 = sext i1 %17 to i32, !dbg !4529
  br label %22, !dbg !4529

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4530

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4532
  store i32 0, i32* %21, align 4, !dbg !4534, !tbaa !894
  br label %22, !dbg !4532

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4535
  ret i32 %23, !dbg !4536
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #7 !dbg !4537 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !4542, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 %1, metadata !4543, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i32 0, metadata !4544, metadata !DIExpression()), !dbg !4559
  %4 = and i32 %1, 64, !dbg !4560
  %5 = icmp eq i32 %4, 0, !dbg !4560
  br i1 %5, label %25, label %6, !dbg !4561

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4562
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9, !dbg !4562
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4545, metadata !DIExpression()), !dbg !4563
  call void @llvm.va_start(i8* nonnull %7), !dbg !4564
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4565
  %9 = load i32, i32* %8, align 16, !dbg !4565
  %10 = icmp ult i32 %9, 41, !dbg !4565
  br i1 %10, label %11, label %17, !dbg !4565

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4565
  %13 = load i8*, i8** %12, align 16, !dbg !4565
  %14 = sext i32 %9 to i64, !dbg !4565
  %15 = getelementptr i8, i8* %13, i64 %14, !dbg !4565
  %16 = add i32 %9, 8, !dbg !4565
  store i32 %16, i32* %8, align 16, !dbg !4565
  br label %21, !dbg !4565

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4565
  %19 = load i8*, i8** %18, align 8, !dbg !4565
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4565
  store i8* %20, i8** %18, align 8, !dbg !4565
  br label %21, !dbg !4565

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4565
  %24 = load i32, i32* %23, align 4, !dbg !4565
  call void @llvm.dbg.value(metadata i32 %24, metadata !4544, metadata !DIExpression()), !dbg !4559
  call void @llvm.va_end(i8* nonnull %7), !dbg !4566
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9, !dbg !4567
  br label %25, !dbg !4568

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ], !dbg !4569
  call void @llvm.dbg.value(metadata i32 %26, metadata !4544, metadata !DIExpression()), !dbg !4559
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #9, !dbg !4570
  %28 = call i32 @fd_safer(i32 %27) #9, !dbg !4571
  ret i32 %28, !dbg !4572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4573 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4578, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i8 1, metadata !4579, metadata !DIExpression()), !dbg !4582
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4583
  call void @llvm.dbg.value(metadata i8* %2, metadata !4580, metadata !DIExpression()), !dbg !4584
  %3 = icmp eq i8* %2, null, !dbg !4585
  br i1 %3, label %11, label %4, !dbg !4587

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i64 0, i64 0)) #15, !dbg !4588
  %6 = icmp eq i32 %5, 0, !dbg !4593
  br i1 %6, label %10, label %7, !dbg !4594

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0)) #15, !dbg !4595
  %9 = icmp eq i32 %8, 0, !dbg !4596
  br i1 %9, label %10, label %11, !dbg !4597

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4579, metadata !DIExpression()), !dbg !4582
  br label %11, !dbg !4598

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4600 {
  %1 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %1, metadata !4605, metadata !DIExpression()), !dbg !4607
  %2 = icmp eq i8* %1, null, !dbg !4608
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.147, i64 0, i64 0), i8* %1, !dbg !4610
  call void @llvm.dbg.value(metadata i8* %3, metadata !4605, metadata !DIExpression()), !dbg !4607
  %4 = load i8, i8* %3, align 1, !dbg !4611, !tbaa !1183
  %5 = icmp eq i8 %4, 0, !dbg !4615
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i8* %3, !dbg !4616
  call void @llvm.dbg.value(metadata i8* %6, metadata !4605, metadata !DIExpression()), !dbg !4607
  ret i8* %6, !dbg !4617
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mkancesdirs(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)* nocapture, i8*) local_unnamed_addr #7 !dbg !4618 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4624, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !4625, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !4626, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8* %3, metadata !4627, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8* null, metadata !4628, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i8* %0, metadata !4629, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8* %0, metadata !4630, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 0, metadata !4632, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i8* %0, metadata !4630, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4647
  %5 = load i8, i8* %0, align 1, !dbg !4649, !tbaa !1183
  call void @llvm.dbg.value(metadata i8 %5, metadata !4631, metadata !DIExpression()), !dbg !4650
  %6 = icmp eq i8 %5, 0, !dbg !4651
  br i1 %6, label %76, label %7, !dbg !4651

; <label>:7:                                      ; preds = %4, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %4 ]
  %9 = phi i8* [ %13, %70 ], [ %0, %4 ]
  %10 = phi i8 [ %74, %70 ], [ 0, %4 ]
  %11 = phi i8* [ %73, %70 ], [ null, %4 ]
  %12 = phi i8* [ %72, %70 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4652
  call void @llvm.dbg.value(metadata i8 %10, metadata !4632, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i8* %11, metadata !4628, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i8* %12, metadata !4629, metadata !DIExpression()), !dbg !4646
  %14 = load i8, i8* %13, align 1, !dbg !4653, !tbaa !1183
  %15 = icmp eq i8 %14, 47, !dbg !4653
  %16 = icmp eq i8 %8, 47, !dbg !4654
  br i1 %15, label %17, label %19, !dbg !4655

; <label>:17:                                     ; preds = %7
  %18 = select i1 %16, i8* %11, i8* %13, !dbg !4656
  br label %70, !dbg !4656

; <label>:19:                                     ; preds = %7
  br i1 %16, label %20, label %70, !dbg !4658

; <label>:20:                                     ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !4659
  %22 = icmp ne i8* %11, null, !dbg !4660
  %23 = and i1 %22, %21, !dbg !4661
  br i1 %23, label %24, label %66, !dbg !4661

; <label>:24:                                     ; preds = %20
  %25 = ptrtoint i8* %11 to i64, !dbg !4662
  %26 = ptrtoint i8* %12 to i64, !dbg !4662
  %27 = sub i64 %25, %26, !dbg !4662
  %28 = icmp eq i64 %27, 1, !dbg !4663
  br i1 %28, label %29, label %33, !dbg !4664

; <label>:29:                                     ; preds = %24
  %30 = load i8, i8* %12, align 1, !dbg !4665, !tbaa !1183
  %31 = icmp eq i8 %30, 46, !dbg !4666
  br i1 %31, label %66, label %32, !dbg !4667

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 0, metadata !4639, metadata !DIExpression()), !dbg !4669
  store i8 0, i8* %11, align 1, !dbg !4670, !tbaa !1183
  br label %42, !dbg !4671

; <label>:33:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 0, metadata !4639, metadata !DIExpression()), !dbg !4669
  store i8 0, i8* %11, align 1, !dbg !4670, !tbaa !1183
  %34 = icmp eq i64 %27, 2, !dbg !4673
  br i1 %34, label %35, label %42, !dbg !4671

; <label>:35:                                     ; preds = %33
  %36 = load i8, i8* %12, align 1, !dbg !4674, !tbaa !1183
  %37 = icmp eq i8 %36, 46, !dbg !4675
  br i1 %37, label %38, label %42, !dbg !4676

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4677
  %40 = load i8, i8* %39, align 1, !dbg !4677, !tbaa !1183
  %41 = icmp eq i8 %40, 46, !dbg !4678
  br i1 %41, label %48, label %42, !dbg !4679

; <label>:42:                                     ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(i8* %0, i8* %12, i8* %3) #9, !dbg !4680
  %44 = icmp slt i32 %43, 0, !dbg !4682
  br i1 %44, label %45, label %48, !dbg !4683

; <label>:45:                                     ; preds = %42
  %46 = tail call i32* @__errno_location() #18, !dbg !4684
  %47 = load i32, i32* %46, align 4, !dbg !4684, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %47, metadata !4633, metadata !DIExpression()), !dbg !4668
  br label %48, !dbg !4685

; <label>:48:                                     ; preds = %42, %38, %45
  %49 = phi i8 [ %10, %45 ], [ 0, %38 ], [ 1, %42 ], !dbg !4686
  %50 = phi i32 [ %47, %45 ], [ 0, %38 ], [ 0, %42 ], !dbg !4687
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i8 %49, metadata !4632, metadata !DIExpression()), !dbg !4648
  %51 = and i8 %49, 1, !dbg !4688
  %52 = zext i8 %51 to i32, !dbg !4690
  call void @llvm.dbg.value(metadata i32 %52, metadata !4639, metadata !DIExpression()), !dbg !4669
  %53 = tail call i32 @savewd_chdir(%struct.savewd* %1, i8* %12, i32 %52, i32* null) #9, !dbg !4691
  call void @llvm.dbg.value(metadata i32 %53, metadata !4640, metadata !DIExpression()), !dbg !4692
  %54 = icmp eq i32 %53, -1, !dbg !4693
  br i1 %54, label %57, label %55, !dbg !4693

; <label>:55:                                     ; preds = %48
  store i8 47, i8* %11, align 1, !dbg !4694, !tbaa !1183
  %56 = icmp eq i32 %53, 0, !dbg !4696
  br i1 %56, label %66, label %57, !dbg !4698

; <label>:57:                                     ; preds = %48, %55
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i32 %50, metadata !4633, metadata !DIExpression()), !dbg !4668
  %58 = icmp eq i32 %50, 0, !dbg !4699
  br i1 %58, label %64, label %59, !dbg !4702

; <label>:59:                                     ; preds = %57
  %60 = tail call i32* @__errno_location() #18, !dbg !4703
  %61 = load i32, i32* %60, align 4, !dbg !4703, !tbaa !894
  %62 = icmp eq i32 %61, 2, !dbg !4704
  br i1 %62, label %63, label %64, !dbg !4705

; <label>:63:                                     ; preds = %59
  store i32 %50, i32* %60, align 4, !dbg !4706, !tbaa !894
  br label %64, !dbg !4707

; <label>:64:                                     ; preds = %59, %63, %57
  %65 = sext i32 %53 to i64, !dbg !4708
  br label %81

; <label>:66:                                     ; preds = %20, %29, %55
  %67 = phi i8* [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i8 [ %49, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, i8* %13, align 1, !dbg !4649, !tbaa !1183
  br label %70, !dbg !4649

; <label>:70:                                     ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !4649
  %72 = phi i8* [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !4709
  %73 = phi i8* [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !4709
  %74 = phi i8 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ], !dbg !4648
  call void @llvm.dbg.value(metadata i8 %74, metadata !4632, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i8* %73, metadata !4628, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i8* %13, metadata !4630, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %72, metadata !4629, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8* %13, metadata !4630, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4647
  call void @llvm.dbg.value(metadata i8 %71, metadata !4631, metadata !DIExpression()), !dbg !4650
  %75 = icmp eq i8 %71, 0, !dbg !4651
  br i1 %75, label %76, label %7, !dbg !4651, !llvm.loop !4710

; <label>:76:                                     ; preds = %70, %4
  %77 = phi i8* [ %0, %4 ], [ %72, %70 ], !dbg !4646
  call void @llvm.dbg.value(metadata i8* %77, metadata !4629, metadata !DIExpression()), !dbg !4646
  %78 = ptrtoint i8* %77 to i64, !dbg !4712
  %79 = ptrtoint i8* %0 to i64, !dbg !4712
  %80 = sub i64 %78, %79, !dbg !4712
  br label %81, !dbg !4713

; <label>:81:                                     ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !4709
  ret i64 %82, !dbg !4714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dirchownmod(i32, i8*, i32, i32, i32, i32, i32) local_unnamed_addr #7 !dbg !4715 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4720, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i8* %1, metadata !4721, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i32 %2, metadata !4722, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i32 %3, metadata !4723, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata i32 %4, metadata !4724, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.value(metadata i32 %5, metadata !4725, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i32 %6, metadata !4726, metadata !DIExpression()), !dbg !4770
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !4771
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %9) #9, !dbg !4771
  %10 = icmp slt i32 %0, 0, !dbg !4772
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4727, metadata !DIExpression(DW_OP_deref)), !dbg !4773
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4727, metadata !DIExpression(DW_OP_deref)), !dbg !4773
  br i1 %10, label %11, label %13, !dbg !4774

; <label>:11:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %1, metadata !4775, metadata !DIExpression()) #9, !dbg !4782
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4781, metadata !DIExpression()) #9, !dbg !4782
  %12 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %8) #9, !dbg !4784
  br label %15, !dbg !4774

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i32 %0, metadata !4785, metadata !DIExpression()) #9, !dbg !4791
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !4790, metadata !DIExpression()) #9, !dbg !4791
  %14 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %8) #9, !dbg !4793
  br label %15, !dbg !4774

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !4774
  call void @llvm.dbg.value(metadata i32 %16, metadata !4749, metadata !DIExpression()), !dbg !4794
  %17 = icmp eq i32 %16, 0, !dbg !4795
  br i1 %17, label %18, label %72, !dbg !4796

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3, !dbg !4797
  %20 = load i32, i32* %19, align 8, !dbg !4797, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %20, metadata !4750, metadata !DIExpression()), !dbg !4798
  %21 = and i32 %20, 61440, !dbg !4799
  %22 = icmp eq i32 %21, 16384, !dbg !4799
  br i1 %22, label %25, label %23, !dbg !4800

; <label>:23:                                     ; preds = %18
  %24 = tail call i32* @__errno_location() #18, !dbg !4801
  store i32 20, i32* %24, align 4, !dbg !4803, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !4749, metadata !DIExpression()), !dbg !4794
  br label %72, !dbg !4804

; <label>:25:                                     ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !4753, metadata !DIExpression()), !dbg !4805
  %26 = icmp eq i32 %3, -1, !dbg !4806
  br i1 %26, label %31, label %27, !dbg !4808

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4, !dbg !4809
  %29 = load i32, i32* %28, align 4, !dbg !4809, !tbaa !4810
  %30 = icmp eq i32 %29, %3, !dbg !4811
  br i1 %30, label %31, label %37, !dbg !4812

; <label>:31:                                     ; preds = %27, %25
  %32 = icmp eq i32 %4, -1, !dbg !4813
  br i1 %32, label %56, label %33, !dbg !4814

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5, !dbg !4815
  %35 = load i32, i32* %34, align 8, !dbg !4815, !tbaa !4816
  %36 = icmp eq i32 %35, %4, !dbg !4817
  br i1 %36, label %56, label %37, !dbg !4818

; <label>:37:                                     ; preds = %27, %33
  %38 = icmp sgt i32 %0, -1, !dbg !4819
  br i1 %38, label %39, label %41, !dbg !4821

; <label>:39:                                     ; preds = %37
  %40 = call i32 @fchown(i32 %0, i32 %3, i32 %4) #9, !dbg !4822
  br label %47, !dbg !4821

; <label>:41:                                     ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !4823
  br i1 %42, label %45, label %43, !dbg !4824

; <label>:43:                                     ; preds = %41
  %44 = call i32 @lchown(i8* %1, i32 %3, i32 %4) #9, !dbg !4825
  br label %47, !dbg !4824

; <label>:45:                                     ; preds = %41
  %46 = call i32 @chown(i8* %1, i32 %3, i32 %4) #9, !dbg !4826
  br label %47, !dbg !4824

; <label>:47:                                     ; preds = %39, %45, %43
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !4821
  call void @llvm.dbg.value(metadata i32 %48, metadata !4749, metadata !DIExpression()), !dbg !4794
  %49 = icmp ne i32 %48, 0, !dbg !4827
  %50 = and i32 %20, 73, !dbg !4829
  %51 = icmp eq i32 %50, 0, !dbg !4829
  %52 = or i1 %51, %49, !dbg !4830
  %53 = and i32 %20, 3072, !dbg !4831
  %54 = select i1 %52, i32 0, i32 %53, !dbg !4830
  call void @llvm.dbg.value(metadata i32 %48, metadata !4749, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i32 %54, metadata !4753, metadata !DIExpression()), !dbg !4805
  %55 = icmp eq i32 %48, 0, !dbg !4832
  br i1 %55, label %56, label %72, !dbg !4833

; <label>:56:                                     ; preds = %31, %33, %47
  %57 = phi i32 [ %54, %47 ], [ 0, %33 ], [ 0, %31 ]
  %58 = xor i32 %20, %5, !dbg !4834
  %59 = or i32 %57, %58, !dbg !4835
  %60 = and i32 %59, %6, !dbg !4836
  %61 = icmp eq i32 %60, 0, !dbg !4836
  br i1 %61, label %72, label %62, !dbg !4837

; <label>:62:                                     ; preds = %56
  %63 = and i32 %6, 4095, !dbg !4838
  %64 = xor i32 %63, 4095, !dbg !4838
  %65 = and i32 %64, %20, !dbg !4839
  %66 = or i32 %65, %5, !dbg !4840
  call void @llvm.dbg.value(metadata i32 %66, metadata !4756, metadata !DIExpression()), !dbg !4841
  %67 = icmp sgt i32 %0, -1, !dbg !4842
  br i1 %67, label %68, label %70, !dbg !4843

; <label>:68:                                     ; preds = %62
  %69 = call i32 @fchmod(i32 %0, i32 %66) #9, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %73, metadata !4749, metadata !DIExpression()), !dbg !4794
  br label %75, !dbg !4845

; <label>:70:                                     ; preds = %62
  %71 = call i32 @chmod(i8* %1, i32 %66) #9, !dbg !4846
  call void @llvm.dbg.value(metadata i32 %73, metadata !4749, metadata !DIExpression()), !dbg !4794
  br label %84, !dbg !4845

; <label>:72:                                     ; preds = %23, %56, %47, %15
  %73 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %56 ], [ %48, %47 ], !dbg !4847
  call void @llvm.dbg.value(metadata i32 %73, metadata !4749, metadata !DIExpression()), !dbg !4794
  %74 = icmp sgt i32 %0, -1, !dbg !4848
  br i1 %74, label %75, label %84, !dbg !4845

; <label>:75:                                     ; preds = %68, %72
  %76 = phi i32 [ %69, %68 ], [ %73, %72 ]
  %77 = icmp eq i32 %76, 0, !dbg !4849
  br i1 %77, label %78, label %80, !dbg !4850

; <label>:78:                                     ; preds = %75
  %79 = call i32 @close(i32 %0) #9, !dbg !4851
  call void @llvm.dbg.value(metadata i32 %79, metadata !4749, metadata !DIExpression()), !dbg !4794
  br label %84, !dbg !4852

; <label>:80:                                     ; preds = %75
  %81 = tail call i32* @__errno_location() #18, !dbg !4853
  %82 = load i32, i32* %81, align 4, !dbg !4853, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %82, metadata !4759, metadata !DIExpression()), !dbg !4854
  %83 = call i32 @close(i32 %0) #9, !dbg !4855
  store i32 %82, i32* %81, align 4, !dbg !4856, !tbaa !894
  br label %84

; <label>:84:                                     ; preds = %70, %78, %80, %72
  %85 = phi i32 [ %79, %78 ], [ %76, %80 ], [ %73, %72 ], [ %71, %70 ], !dbg !4846
  call void @llvm.dbg.value(metadata i32 %85, metadata !4749, metadata !DIExpression()), !dbg !4794
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %9) #9, !dbg !4857
  ret i32 %85, !dbg !4858
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lchown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_safer(i32) local_unnamed_addr #7 !dbg !4859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4864, metadata !DIExpression()), !dbg !4869
  %2 = icmp ult i32 %0, 3, !dbg !4870
  br i1 %2, label %3, label %8, !dbg !4870

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #9, !dbg !4871
  call void @llvm.dbg.value(metadata i32 %4, metadata !4865, metadata !DIExpression()), !dbg !4872
  %5 = tail call i32* @__errno_location() #18, !dbg !4873
  %6 = load i32, i32* %5, align 4, !dbg !4873, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !4868, metadata !DIExpression()), !dbg !4874
  %7 = tail call i32 @close(i32 %0) #9, !dbg !4875
  store i32 %6, i32* %5, align 4, !dbg !4876, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %4, metadata !4864, metadata !DIExpression()), !dbg !4869
  br label %8, !dbg !4877

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4864, metadata !DIExpression()), !dbg !4869
  ret i32 %9, !dbg !4878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4879 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4918, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i32 0, metadata !4919, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 0, metadata !4921, metadata !DIExpression()), !dbg !4924
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4925
  call void @llvm.dbg.value(metadata i32 %2, metadata !4920, metadata !DIExpression()), !dbg !4926
  %3 = icmp slt i32 %2, 0, !dbg !4927
  br i1 %3, label %4, label %6, !dbg !4929

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4930
  br label %24, !dbg !4931

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4932
  %8 = icmp eq i32 %7, 0, !dbg !4932
  br i1 %8, label %13, label %9, !dbg !4934

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4935
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !4936
  %12 = icmp eq i64 %11, -1, !dbg !4937
  br i1 %12, label %16, label %13, !dbg !4938

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4939
  %15 = icmp eq i32 %14, 0, !dbg !4939
  br i1 %15, label %16, label %18, !dbg !4940

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4919, metadata !DIExpression()), !dbg !4923
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4941
  call void @llvm.dbg.value(metadata i32 %21, metadata !4921, metadata !DIExpression()), !dbg !4924
  br label %24, !dbg !4942

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4943
  %20 = load i32, i32* %19, align 4, !dbg !4943, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %20, metadata !4919, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %20, metadata !4919, metadata !DIExpression()), !dbg !4923
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4941
  call void @llvm.dbg.value(metadata i32 %21, metadata !4921, metadata !DIExpression()), !dbg !4924
  %22 = icmp eq i32 %20, 0, !dbg !4944
  br i1 %22, label %24, label %23, !dbg !4942

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4946, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !4921, metadata !DIExpression()), !dbg !4924
  br label %24, !dbg !4948

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4949
  ret i32 %25, !dbg !4950
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4951 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4990, metadata !DIExpression()), !dbg !4991
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4992
  br i1 %2, label %6, label %3, !dbg !4994

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4995
  %5 = icmp eq i32 %4, 0, !dbg !4995
  br i1 %5, label %6, label %8, !dbg !4996

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4997
  br label %17, !dbg !4998

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4999, metadata !DIExpression()) #9, !dbg !5004
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5006
  %10 = load i32, i32* %9, align 8, !dbg !5006, !tbaa !4519
  %11 = and i32 %10, 256, !dbg !5008
  %12 = icmp eq i32 %11, 0, !dbg !5008
  br i1 %12, label %15, label %13, !dbg !5009

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !5010
  br label %15, !dbg !5010

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5011
  br label %17, !dbg !5012

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5013
  ret i32 %18, !dbg !5014
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5015 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5055, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata i64 %1, metadata !5056, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.value(metadata i32 %2, metadata !5057, metadata !DIExpression()), !dbg !5063
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5064
  %5 = load i8*, i8** %4, align 8, !dbg !5064, !tbaa !5065
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5066
  %7 = load i8*, i8** %6, align 8, !dbg !5066, !tbaa !5067
  %8 = icmp eq i8* %5, %7, !dbg !5068
  br i1 %8, label %9, label %28, !dbg !5069

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5070
  %11 = load i8*, i8** %10, align 8, !dbg !5070, !tbaa !1177
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5071
  %13 = load i8*, i8** %12, align 8, !dbg !5071, !tbaa !5072
  %14 = icmp eq i8* %11, %13, !dbg !5073
  br i1 %14, label %15, label %28, !dbg !5074

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5075
  %17 = load i8*, i8** %16, align 8, !dbg !5075, !tbaa !5076
  %18 = icmp eq i8* %17, null, !dbg !5077
  br i1 %18, label %19, label %28, !dbg !5078

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5079
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %21, metadata !5058, metadata !DIExpression()), !dbg !5081
  %22 = icmp eq i64 %21, -1, !dbg !5082
  br i1 %22, label %30, label %23, !dbg !5084

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5085
  %25 = load i32, i32* %24, align 8, !dbg !5086, !tbaa !4519
  %26 = and i32 %25, -17, !dbg !5086
  store i32 %26, i32* %24, align 8, !dbg !5086, !tbaa !4519
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5087
  store i64 %21, i64* %27, align 8, !dbg !5088, !tbaa !5089
  br label %30, !dbg !5090

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5091
  br label %30, !dbg !5092

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5093
  ret i32 %31, !dbg !5094
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !5095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5098, metadata !DIExpression()), !dbg !5099
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #9, !dbg !5100
  ret i32 %2, !dbg !5101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !178 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !186, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 %1, metadata !187, metadata !DIExpression()), !dbg !5103
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5104
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !5104
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !188, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata i32 -1, metadata !201, metadata !DIExpression()), !dbg !5106
  call void @llvm.va_start(i8* nonnull %4), !dbg !5107
  %5 = icmp eq i32 %1, 1030, !dbg !5108
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5109
  %7 = load i32, i32* %6, align 16, !dbg !5109
  %8 = icmp ult i32 %7, 41, !dbg !5109
  br i1 %5, label %9, label %58, !dbg !5108

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5110

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5110
  %12 = load i8*, i8** %11, align 16, !dbg !5110
  %13 = sext i32 %7 to i64, !dbg !5110
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5110
  %15 = add i32 %7, 8, !dbg !5110
  store i32 %15, i32* %6, align 16, !dbg !5110
  br label %20, !dbg !5110

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5110
  %18 = load i8*, i8** %17, align 8, !dbg !5110
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5110
  store i8* %19, i8** %17, align 8, !dbg !5110
  br label %20, !dbg !5110

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5110
  %23 = load i32, i32* %22, align 4, !dbg !5110
  call void @llvm.dbg.value(metadata i32 %23, metadata !202, metadata !DIExpression()), !dbg !5111
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5112, !tbaa !894
  %25 = icmp sgt i32 %24, -1, !dbg !5114
  br i1 %25, label %26, label %38, !dbg !5115

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9, !dbg !5116
  call void @llvm.dbg.value(metadata i32 %27, metadata !201, metadata !DIExpression()), !dbg !5106
  %28 = icmp sgt i32 %27, -1, !dbg !5118
  br i1 %28, label %33, label %29, !dbg !5120

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #18, !dbg !5121
  %31 = load i32, i32* %30, align 4, !dbg !5121, !tbaa !894
  %32 = icmp eq i32 %31, 22, !dbg !5122
  br i1 %32, label %34, label %33, !dbg !5123

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5124, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %44, metadata !201, metadata !DIExpression()), !dbg !5106
  br label %74, !dbg !5126

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5127
  call void @llvm.dbg.value(metadata i32 %35, metadata !201, metadata !DIExpression()), !dbg !5106
  %36 = icmp slt i32 %35, 0, !dbg !5129
  br i1 %36, label %74, label %37, !dbg !5131

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5132, !tbaa !894
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5133
  call void @llvm.dbg.value(metadata i32 %39, metadata !201, metadata !DIExpression()), !dbg !5106
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5134
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !5135
  call void @llvm.dbg.value(metadata i32 %44, metadata !201, metadata !DIExpression()), !dbg !5106
  %45 = icmp sgt i32 %44, -1, !dbg !5136
  %46 = and i1 %45, %43, !dbg !5126
  br i1 %46, label %47, label %74, !dbg !5126

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9, !dbg !5137
  call void @llvm.dbg.value(metadata i32 %48, metadata !205, metadata !DIExpression()), !dbg !5138
  %49 = icmp slt i32 %48, 0, !dbg !5139
  br i1 %49, label %54, label %50, !dbg !5140

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !5141
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #9, !dbg !5142
  %53 = icmp eq i32 %52, -1, !dbg !5143
  br i1 %53, label %54, label %74, !dbg !5144

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #18, !dbg !5145
  %56 = load i32, i32* %55, align 4, !dbg !5145, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %56, metadata !208, metadata !DIExpression()), !dbg !5146
  %57 = call i32 @close(i32 %44) #9, !dbg !5147
  store i32 %56, i32* %55, align 4, !dbg !5148, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !201, metadata !DIExpression()), !dbg !5106
  br label %74, !dbg !5149

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !5150

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5150
  %61 = load i8*, i8** %60, align 16, !dbg !5150
  %62 = sext i32 %7 to i64, !dbg !5150
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !5150
  %64 = add i32 %7, 8, !dbg !5150
  store i32 %64, i32* %6, align 16, !dbg !5150
  br label %69, !dbg !5150

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5150
  %67 = load i8*, i8** %66, align 8, !dbg !5150
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5150
  store i8* %68, i8** %66, align 8, !dbg !5150
  br label %69, !dbg !5150

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !5150
  %72 = load i8*, i8** %71, align 8, !dbg !5150
  call void @llvm.dbg.value(metadata i8* %72, metadata !211, metadata !DIExpression()), !dbg !5151
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #9, !dbg !5152
  call void @llvm.dbg.value(metadata i32 %73, metadata !201, metadata !DIExpression()), !dbg !5106
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !5109
  call void @llvm.dbg.value(metadata i32 %75, metadata !201, metadata !DIExpression()), !dbg !5106
  call void @llvm.va_end(i8* nonnull %4), !dbg !5153
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !5154
  ret i32 %75, !dbg !5155
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !213, !217, !68, !74, !83, !219, !237, !90, !97, !248, !261, !169, !269, !286, !288, !290, !292, !294, !296, !298, !687, !700, !705, !707, !709, !711, !713, !182}
!llvm.ident = !{!715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715, !715}
!llvm.module.flags = !{!716, !717, !718, !719, !720}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !51)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !21, line: 39, baseType: !7, size: 32, elements: !36)
!21 = !DIFile(filename: "./lib/savewd.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !21, line: 36, size: 64, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !21, line: 66, baseType: !20, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !22, file: !21, line: 74, baseType: !26, size: 32, offset: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !21, line: 69, size: 32, elements: !27)
!27 = !{!28, !30, !31}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !26, file: !21, line: 71, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !26, file: !21, line: 72, baseType: !29, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !26, file: !21, line: 73, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 97, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !35, line: 152, baseType: !29)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "INITIAL_STATE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "FD_STATE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "FORKING_STATE", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "ERROR_STATE", value: 4, isUnsigned: true)
!42 = !DIEnumerator(name: "FINAL_STATE", value: 5, isUnsigned: true)
!43 = !{!44, !46, !47, !49}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 79, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !35, line: 144, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 64, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !35, line: 145, baseType: !7)
!51 = !{!0}
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1792, elements: !64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !55, line: 50, size: 256, elements: !56)
!55 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!56 = !{!57, !60, !61, !63}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 52, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !55, line: 55, baseType: !29, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !55, line: 56, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !55, line: 57, baseType: !29, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 7)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "Version", scope: !68, file: !69, line: 2, type: !58, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !71)
!69 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!70 = !{}
!71 = !{!66}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "file_name", scope: !74, file: !79, line: 46, type: !58, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !76)
!75 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!76 = !{!72, !77}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !74, file: !79, line: 56, type: !80, isLocal: true, isDefinition: true)
!79 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!80 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "exit_failure", scope: !83, file: !86, line: 24, type: !87, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !85)
!84 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!85 = !{!81}
!86 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "program_name", scope: !90, file: !94, line: 33, type: !58, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !92, globals: !93)
!91 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!92 = !{!46, !44}
!93 = !{!88}
!94 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !97, file: !128, line: 85, type: !163, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !120, globals: !125)
!98 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!99 = !{!5, !100, !105}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 46, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!108 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!120 = !{!29, !121, !122, !44}
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 62, baseType: !124)
!123 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!124 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!125 = !{!95, !126, !133, !145, !147, !152, !159, !161}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !97, file: !128, line: 101, type: !129, isLocal: false, isDefinition: true)
!128 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 320, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!131 = !{!132}
!132 = !DISubrange(count: 10)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !97, file: !128, line: 1052, type: !135, isLocal: false, isDefinition: true)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !128, line: 65, size: 448, elements: !136)
!136 = !{!137, !138, !139, !143, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !135, file: !128, line: 68, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !128, line: 71, baseType: !29, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !135, file: !128, line: 75, baseType: !140, size: 256, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !135, file: !128, line: 78, baseType: !58, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !135, file: !128, line: 81, baseType: !58, size: 64, offset: 384)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !97, file: !128, line: 116, type: !135, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "slot0", scope: !97, file: !128, line: 842, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 256)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slotvec", scope: !97, file: !128, line: 845, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !128, line: 834, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !128, line: 836, baseType: !122, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !155, file: !128, line: 837, baseType: !44, size: 64, offset: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "nslots", scope: !97, file: !128, line: 843, type: !29, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "slotvec0", scope: !97, file: !128, line: 844, type: !155, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 704, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!165 = !{!166}
!166 = !DISubrange(count: 11)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !169, file: !172, line: 26, type: !173, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !171)
!170 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!171 = !{!167}
!172 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 376, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 47)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !178, file: !179, line: 339, type: !29, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "rpl_fcntl", scope: !179, file: !179, line: 276, type: !180, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !182, retainedNodes: !185)
!179 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!180 = !DISubroutineType(types: !181)
!181 = !{!29, !29, !29, null}
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !184)
!183 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!184 = !{!176}
!185 = !{!186, !187, !188, !201, !202, !205, !208, !211}
!186 = !DILocalVariable(name: "fd", arg: 1, scope: !178, file: !179, line: 276, type: !29)
!187 = !DILocalVariable(name: "action", arg: 2, scope: !178, file: !179, line: 276, type: !29)
!188 = !DILocalVariable(name: "arg", scope: !178, file: !179, line: 278, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !190, line: 30, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !183, line: 278, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !199)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !183, line: 278, size: 192, elements: !194)
!194 = !{!195, !196, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !193, file: !183, line: 278, baseType: !7, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !193, file: !183, line: 278, baseType: !7, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !193, file: !183, line: 278, baseType: !46, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !193, file: !183, line: 278, baseType: !46, size: 64, offset: 128)
!199 = !{!200}
!200 = !DISubrange(count: 1)
!201 = !DILocalVariable(name: "result", scope: !178, file: !179, line: 279, type: !29)
!202 = !DILocalVariable(name: "target", scope: !203, file: !179, line: 326, type: !29)
!203 = distinct !DILexicalBlock(scope: !204, file: !179, line: 325, column: 7)
!204 = distinct !DILexicalBlock(scope: !178, file: !179, line: 282, column: 5)
!205 = !DILocalVariable(name: "flags", scope: !206, file: !179, line: 363, type: !29)
!206 = distinct !DILexicalBlock(scope: !207, file: !179, line: 362, column: 11)
!207 = distinct !DILexicalBlock(scope: !203, file: !179, line: 361, column: 13)
!208 = !DILocalVariable(name: "saved_errno", scope: !209, file: !179, line: 366, type: !29)
!209 = distinct !DILexicalBlock(scope: !210, file: !179, line: 365, column: 15)
!210 = distinct !DILexicalBlock(scope: !206, file: !179, line: 364, column: 17)
!211 = !DILocalVariable(name: "p", scope: !212, file: !179, line: 408, type: !46)
!212 = distinct !DILexicalBlock(scope: !204, file: !179, line: 406, column: 7)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !215)
!214 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!215 = !{!216}
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!218 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !236)
!220 = !DIFile(filename: "./lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!221 = !{!222, !232}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !223, file: !21, line: 39, baseType: !7, size: 32, elements: !36)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !21, line: 36, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !223, file: !21, line: 66, baseType: !222, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !223, file: !21, line: 74, baseType: !227, size: 32, offset: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !21, line: 69, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !227, file: !21, line: 71, baseType: !29, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !227, file: !21, line: 72, baseType: !29, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !227, file: !21, line: 73, baseType: !32, size: 32)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 86, baseType: !7, size: 32, elements: !233)
!233 = !{!234, !235}
!234 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2, isUnsigned: true)
!236 = !{!47, !49}
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !247)
!238 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 78, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!242 = !{!243, !244, !245, !246}
!243 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!244 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!245 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!246 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!247 = !{!122}
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !250)
!249 = !DIFile(filename: "./lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!250 = !{!251, !232}
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !252, file: !21, line: 39, baseType: !7, size: 32, elements: !36)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !21, line: 36, size: 64, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !252, file: !21, line: 66, baseType: !251, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !21, line: 74, baseType: !256, size: 32, offset: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !21, line: 69, size: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !256, file: !21, line: 71, baseType: !29, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !256, file: !21, line: 72, baseType: !29, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !256, file: !21, line: 73, baseType: !32, size: 32)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !268)
!262 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 41, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!266 = !{!267}
!267 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!268 = !{!46}
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !271, retainedTypes: !285)
!270 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!271 = !{!272}
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !274, file: !273, line: 186, baseType: !7, size: 32, elements: !283)
!273 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!274 = distinct !DISubprogram(name: "x2nrealloc", scope: !273, file: !273, line: 174, type: !275, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !278)
!275 = !DISubroutineType(types: !276)
!276 = !{!46, !46, !277, !122}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!278 = !{!279, !280, !281, !282}
!279 = !DILocalVariable(name: "p", arg: 1, scope: !274, file: !273, line: 174, type: !46)
!280 = !DILocalVariable(name: "pn", arg: 2, scope: !274, file: !273, line: 174, type: !277)
!281 = !DILocalVariable(name: "s", arg: 3, scope: !274, file: !273, line: 174, type: !122)
!282 = !DILocalVariable(name: "n", scope: !274, file: !273, line: 176, type: !122)
!283 = !{!284}
!284 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!285 = !{!122, !44, !46}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!287 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !268)
!289 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !247)
!291 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!293 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!295 = !DIFile(filename: "./lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!297 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !300, retainedTypes: !268)
!299 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!300 = !{!301}
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !302, line: 41, baseType: !7, size: 32, elements: !303)
!302 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!304 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!305 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!307 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!308 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!309 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!310 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!314 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!315 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!316 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!317 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!338 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!340 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!341 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!342 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!343 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!344 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!345 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!346 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!347 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!348 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!349 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!350 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!351 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!352 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!353 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!412 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!423 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!425 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!426 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!499 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!572 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!573 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!574 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!575 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!576 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!577 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!578 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!579 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!580 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!581 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!582 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!583 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!584 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!585 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!586 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!590 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!591 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!593 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!619 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!620 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!621 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!622 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!623 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!628 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!629 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!630 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!631 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !689)
!688 = !DIFile(filename: "./lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!689 = !{!690, !232}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !691, file: !21, line: 39, baseType: !7, size: 32, elements: !36)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !21, line: 36, size: 64, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !691, file: !21, line: 66, baseType: !690, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !21, line: 74, baseType: !695, size: 32, offset: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !21, line: 69, size: 32, elements: !696)
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !695, file: !21, line: 71, baseType: !29, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !695, file: !21, line: 72, baseType: !29, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !695, file: !21, line: 73, baseType: !32, size: 32)
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !702)
!701 = !DIFile(filename: "./lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!702 = !{!47, !49, !703}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !33, line: 69, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 148, baseType: !7)
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!706 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!708 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !268)
!710 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !268)
!712 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!714 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!715 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!716 = !{i32 2, !"Dwarf Version", i32 4}
!717 = !{i32 2, !"Debug Info Version", i32 3}
!718 = !{i32 1, !"wchar_size", i32 4}
!719 = !{i32 7, !"PIC Level", i32 2}
!720 = !{i32 7, !"PIE Level", i32 2}
!721 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !722, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !29}
!724 = !{!725}
!725 = !DILocalVariable(name: "status", arg: 1, scope: !721, file: !3, line: 53, type: !29)
!726 = !DILocalVariable(name: "infomap", scope: !727, file: !728, line: 632, type: !742)
!727 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !728, file: !728, line: 630, type: !729, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !731)
!728 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!729 = !DISubroutineType(types: !730)
!730 = !{null, !58}
!731 = !{!732, !726, !733, !734, !741}
!732 = !DILocalVariable(name: "program", arg: 1, scope: !727, file: !728, line: 630, type: !58)
!733 = !DILocalVariable(name: "node", scope: !727, file: !728, line: 642, type: !58)
!734 = !DILocalVariable(name: "map_prog", scope: !727, file: !728, line: 643, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !727, file: !728, line: 632, size: 128, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !737, file: !728, line: 632, baseType: !58, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !728, line: 632, baseType: !58, size: 64, offset: 64)
!741 = !DILocalVariable(name: "lc_messages", scope: !727, file: !728, line: 655, type: !58)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 896, elements: !64)
!743 = !DILocation(line: 632, column: 67, scope: !727, inlinedAt: !744)
!744 = distinct !DILocation(line: 79, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 58, column: 5)
!746 = distinct !DILexicalBlock(scope: !721, file: !3, line: 55, column: 7)
!747 = !DILocation(line: 53, column: 12, scope: !721)
!748 = !DILocation(line: 55, column: 14, scope: !746)
!749 = !DILocation(line: 55, column: 7, scope: !721)
!750 = !DILocation(line: 56, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !3, line: 56, column: 5)
!752 = !{!753, !753, i64 0}
!753 = !{!"any pointer", !754, i64 0}
!754 = !{!"omnipotent char", !755, i64 0}
!755 = !{!"Simple C/C++ TBAA"}
!756 = !DILocation(line: 59, column: 7, scope: !745)
!757 = !DILocation(line: 60, column: 7, scope: !745)
!758 = !DILocation(line: 587, column: 3, scope: !759, inlinedAt: !762)
!759 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !728, file: !728, line: 585, type: !760, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !70)
!760 = !DISubroutineType(types: !761)
!761 = !{null}
!762 = distinct !DILocation(line: 64, column: 7, scope: !745)
!763 = !DILocation(line: 66, column: 7, scope: !745)
!764 = !DILocation(line: 71, column: 7, scope: !745)
!765 = !DILocation(line: 77, column: 7, scope: !745)
!766 = !DILocation(line: 78, column: 7, scope: !745)
!767 = !DILocation(line: 632, column: 3, scope: !727, inlinedAt: !744)
!768 = !DILocation(line: 643, column: 36, scope: !727, inlinedAt: !744)
!769 = !DILocation(line: 643, column: 25, scope: !727, inlinedAt: !744)
!770 = !DILocation(line: 645, column: 33, scope: !727, inlinedAt: !744)
!771 = !DILocation(line: 645, column: 3, scope: !727, inlinedAt: !744)
!772 = !DILocation(line: 646, column: 13, scope: !727, inlinedAt: !744)
!773 = !DILocation(line: 645, column: 20, scope: !727, inlinedAt: !744)
!774 = !{!775, !753, i64 0}
!775 = !{!"infomap", !753, i64 0, !753, i64 8}
!776 = !DILocation(line: 645, column: 10, scope: !727, inlinedAt: !744)
!777 = !DILocation(line: 645, column: 28, scope: !727, inlinedAt: !744)
!778 = distinct !{!778, !779, !780}
!779 = !DILocation(line: 645, column: 3, scope: !727)
!780 = !DILocation(line: 646, column: 13, scope: !727)
!781 = !DILocation(line: 648, column: 17, scope: !782, inlinedAt: !744)
!782 = distinct !DILexicalBlock(scope: !727, file: !728, line: 648, column: 7)
!783 = !{!775, !753, i64 8}
!784 = !DILocation(line: 648, column: 7, scope: !782, inlinedAt: !744)
!785 = !DILocation(line: 648, column: 7, scope: !727, inlinedAt: !744)
!786 = !DILocation(line: 642, column: 15, scope: !727, inlinedAt: !744)
!787 = !DILocation(line: 651, column: 3, scope: !727, inlinedAt: !744)
!788 = !DILocation(line: 655, column: 29, scope: !727, inlinedAt: !744)
!789 = !DILocation(line: 655, column: 15, scope: !727, inlinedAt: !744)
!790 = !DILocation(line: 656, column: 7, scope: !791, inlinedAt: !744)
!791 = distinct !DILexicalBlock(scope: !727, file: !728, line: 656, column: 7)
!792 = !DILocation(line: 656, column: 19, scope: !791, inlinedAt: !744)
!793 = !DILocation(line: 656, column: 22, scope: !791, inlinedAt: !744)
!794 = !DILocation(line: 656, column: 7, scope: !727, inlinedAt: !744)
!795 = !DILocation(line: 662, column: 7, scope: !796, inlinedAt: !744)
!796 = distinct !DILexicalBlock(scope: !791, file: !728, line: 657, column: 5)
!797 = !DILocation(line: 664, column: 5, scope: !796, inlinedAt: !744)
!798 = !DILocation(line: 665, column: 3, scope: !727, inlinedAt: !744)
!799 = !DILocation(line: 667, column: 3, scope: !727, inlinedAt: !744)
!800 = !DILocation(line: 669, column: 1, scope: !727, inlinedAt: !744)
!801 = !DILocation(line: 81, column: 3, scope: !721)
!802 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !803, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !806)
!803 = !DISubroutineType(types: !804)
!804 = !{!29, !29, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!806 = !{!807, !808, !809, !810, !811, !812, !824, !827, !830}
!807 = !DILocalVariable(name: "argc", arg: 1, scope: !802, file: !3, line: 189, type: !29)
!808 = !DILocalVariable(name: "argv", arg: 2, scope: !802, file: !3, line: 189, type: !805)
!809 = !DILocalVariable(name: "specified_mode", scope: !802, file: !3, line: 191, type: !58)
!810 = !DILocalVariable(name: "optc", scope: !802, file: !3, line: 192, type: !29)
!811 = !DILocalVariable(name: "scontext", scope: !802, file: !3, line: 193, type: !58)
!812 = !DILocalVariable(name: "options", scope: !802, file: !3, line: 194, type: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 85, size: 256, elements: !814)
!814 = !{!815, !819, !820, !821, !822, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !813, file: !3, line: 89, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!29, !58, !58, !46}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "umask_value", scope: !813, file: !3, line: 92, baseType: !703, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !813, file: !3, line: 95, baseType: !703, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !813, file: !3, line: 98, baseType: !703, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !813, file: !3, line: 101, baseType: !80, size: 8, offset: 160)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !813, file: !3, line: 104, baseType: !58, size: 64, offset: 192)
!824 = !DILocalVariable(name: "ret", scope: !825, file: !3, line: 261, type: !29)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 260, column: 5)
!826 = distinct !DILexicalBlock(scope: !802, file: !3, line: 259, column: 7)
!827 = !DILocalVariable(name: "umask_value", scope: !828, file: !3, line: 276, type: !703)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 275, column: 5)
!829 = distinct !DILexicalBlock(scope: !802, file: !3, line: 274, column: 7)
!830 = !DILocalVariable(name: "change", scope: !831, file: !3, line: 282, type: !833)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 281, column: 9)
!832 = distinct !DILexicalBlock(scope: !828, file: !3, line: 280, column: 11)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !835, line: 25, flags: DIFlagFwdDecl)
!835 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!836 = !DILocation(line: 189, column: 11, scope: !802)
!837 = !DILocation(line: 189, column: 24, scope: !802)
!838 = !DILocation(line: 191, column: 15, scope: !802)
!839 = !DILocation(line: 193, column: 15, scope: !802)
!840 = !DILocation(line: 194, column: 3, scope: !802)
!841 = !DILocation(line: 196, column: 11, scope: !802)
!842 = !DILocation(line: 196, column: 34, scope: !802)
!843 = !{!844, !753, i64 0}
!844 = !{!"mkdir_options", !753, i64 0, !845, i64 8, !845, i64 12, !845, i64 16, !846, i64 20, !753, i64 24}
!845 = !{!"int", !754, i64 0}
!846 = !{!"_Bool", !754, i64 0}
!847 = !DILocation(line: 197, column: 11, scope: !802)
!848 = !DILocation(line: 197, column: 16, scope: !802)
!849 = !{!844, !845, i64 12}
!850 = !DILocation(line: 198, column: 11, scope: !802)
!851 = !DILocation(line: 198, column: 21, scope: !802)
!852 = !{!844, !845, i64 16}
!853 = !DILocation(line: 199, column: 11, scope: !802)
!854 = !DILocation(line: 199, column: 36, scope: !802)
!855 = !{!844, !753, i64 24}
!856 = !DILocation(line: 200, column: 11, scope: !802)
!857 = !DILocation(line: 200, column: 32, scope: !802)
!858 = !{!844, !846, i64 20}
!859 = !DILocation(line: 203, column: 21, scope: !802)
!860 = !DILocation(line: 203, column: 3, scope: !802)
!861 = !DILocation(line: 204, column: 3, scope: !802)
!862 = !DILocation(line: 205, column: 3, scope: !802)
!863 = !DILocation(line: 206, column: 3, scope: !802)
!864 = !DILocation(line: 208, column: 3, scope: !802)
!865 = !DILocation(line: 210, column: 3, scope: !802)
!866 = !DILocation(line: 210, column: 18, scope: !802)
!867 = !DILocation(line: 192, column: 7, scope: !802)
!868 = !DILocation(line: 215, column: 42, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 213, column: 9)
!870 = distinct !DILexicalBlock(scope: !802, file: !3, line: 211, column: 5)
!871 = !DILocation(line: 216, column: 11, scope: !869)
!872 = distinct !{!872, !865, !873}
!873 = !DILocation(line: 248, column: 5, scope: !802)
!874 = !DILocation(line: 218, column: 28, scope: !869)
!875 = !DILocation(line: 219, column: 11, scope: !869)
!876 = !DILocation(line: 221, column: 46, scope: !869)
!877 = !DILocation(line: 221, column: 44, scope: !869)
!878 = !DILocation(line: 222, column: 11, scope: !869)
!879 = !DILocation(line: 0, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 236, column: 20)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 229, column: 20)
!882 = distinct !DILexicalBlock(scope: !869, file: !3, line: 224, column: 15)
!883 = !DILocation(line: 236, column: 20, scope: !880)
!884 = !DILocation(line: 236, column: 20, scope: !881)
!885 = !DILocation(line: 239, column: 22, scope: !886)
!886 = distinct !DILexicalBlock(scope: !880, file: !3, line: 237, column: 13)
!887 = !DILocation(line: 238, column: 15, scope: !886)
!888 = !DILocation(line: 241, column: 13, scope: !886)
!889 = !DILocation(line: 243, column: 9, scope: !869)
!890 = !DILocation(line: 244, column: 9, scope: !869)
!891 = !DILocation(line: 246, column: 11, scope: !869)
!892 = !DILocation(line: 250, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !802, file: !3, line: 250, column: 7)
!894 = !{!845, !845, i64 0}
!895 = !DILocation(line: 250, column: 14, scope: !893)
!896 = !DILocation(line: 250, column: 7, scope: !802)
!897 = !DILocation(line: 252, column: 20, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 251, column: 5)
!899 = !DILocation(line: 252, column: 7, scope: !898)
!900 = !DILocation(line: 253, column: 7, scope: !898)
!901 = !DILocation(line: 274, column: 7, scope: !829)
!902 = !DILocation(line: 274, column: 41, scope: !829)
!903 = !DILocation(line: 274, column: 38, scope: !829)
!904 = !DILocation(line: 276, column: 28, scope: !828)
!905 = !DILocation(line: 276, column: 14, scope: !828)
!906 = !DILocation(line: 277, column: 7, scope: !828)
!907 = !DILocation(line: 278, column: 15, scope: !828)
!908 = !DILocation(line: 278, column: 27, scope: !828)
!909 = !{!844, !845, i64 8}
!910 = !DILocation(line: 280, column: 11, scope: !828)
!911 = !DILocation(line: 282, column: 40, scope: !831)
!912 = !DILocation(line: 282, column: 31, scope: !831)
!913 = !DILocation(line: 283, column: 16, scope: !914)
!914 = distinct !DILexicalBlock(scope: !831, file: !3, line: 283, column: 15)
!915 = !DILocation(line: 283, column: 15, scope: !831)
!916 = !DILocation(line: 284, column: 13, scope: !914)
!917 = !DILocation(line: 286, column: 26, scope: !831)
!918 = !DILocation(line: 286, column: 24, scope: !831)
!919 = !DILocation(line: 288, column: 17, scope: !831)
!920 = !DILocation(line: 288, column: 11, scope: !831)
!921 = !DILocation(line: 289, column: 9, scope: !831)
!922 = !DILocation(line: 291, column: 22, scope: !832)
!923 = !DILocation(line: 294, column: 39, scope: !802)
!924 = !DILocation(line: 294, column: 37, scope: !802)
!925 = !DILocation(line: 294, column: 52, scope: !802)
!926 = !DILocation(line: 294, column: 10, scope: !802)
!927 = !DILocation(line: 296, column: 1, scope: !802)
!928 = !DILocation(line: 294, column: 3, scope: !802)
!929 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 122, type: !817, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !930)
!930 = !{!931, !932, !933, !934, !937, !938, !939, !940}
!931 = !DILocalVariable(name: "dir", arg: 1, scope: !929, file: !3, line: 122, type: !58)
!932 = !DILocalVariable(name: "component", arg: 2, scope: !929, file: !3, line: 122, type: !58)
!933 = !DILocalVariable(name: "options", arg: 3, scope: !929, file: !3, line: 122, type: !46)
!934 = !DILocalVariable(name: "o", scope: !929, file: !3, line: 124, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!937 = !DILocalVariable(name: "user_wx", scope: !929, file: !3, line: 131, type: !703)
!938 = !DILocalVariable(name: "self_denying_umask", scope: !929, file: !3, line: 132, type: !80)
!939 = !DILocalVariable(name: "r", scope: !929, file: !3, line: 135, type: !29)
!940 = !DILocalVariable(name: "mkdir_errno", scope: !941, file: !3, line: 138, type: !29)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 137, column: 5)
!942 = distinct !DILexicalBlock(scope: !929, file: !3, line: 136, column: 7)
!943 = !DILocation(line: 122, column: 28, scope: !929)
!944 = !DILocation(line: 122, column: 45, scope: !929)
!945 = !DILocation(line: 122, column: 62, scope: !929)
!946 = !DILocation(line: 124, column: 31, scope: !929)
!947 = !DILocation(line: 126, column: 10, scope: !948)
!948 = distinct !DILexicalBlock(scope: !929, file: !3, line: 126, column: 7)
!949 = !{i8 0, i8 2}
!950 = !DILocation(line: 126, column: 31, scope: !948)
!951 = !DILocalVariable(name: "path", arg: 1, scope: !952, file: !953, line: 44, type: !58)
!952 = distinct !DISubprogram(name: "defaultcon", scope: !953, file: !953, line: 44, type: !954, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !956)
!953 = !DIFile(filename: "src/selinux.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!954 = !DISubroutineType(types: !955)
!955 = !{!29, !58, !703}
!956 = !{!951, !957}
!957 = !DILocalVariable(name: "mode", arg: 2, scope: !952, file: !953, line: 44, type: !703)
!958 = !DILocation(line: 44, column: 25, scope: !952, inlinedAt: !959)
!959 = distinct !DILocation(line: 126, column: 34, scope: !948)
!960 = !DILocation(line: 44, column: 38, scope: !952, inlinedAt: !959)
!961 = !DILocation(line: 45, column: 3, scope: !952, inlinedAt: !959)
!962 = !DILocation(line: 45, column: 9, scope: !952, inlinedAt: !959)
!963 = !DILocation(line: 126, column: 7, scope: !929)
!964 = !DILocation(line: 131, column: 10, scope: !929)
!965 = !DILocation(line: 132, column: 33, scope: !929)
!966 = !DILocation(line: 132, column: 45, scope: !929)
!967 = !DILocation(line: 132, column: 56, scope: !929)
!968 = !DILocation(line: 133, column: 7, scope: !929)
!969 = !DILocation(line: 135, column: 11, scope: !929)
!970 = !DILocation(line: 135, column: 7, scope: !929)
!971 = !DILocation(line: 134, column: 27, scope: !972)
!972 = distinct !DILexicalBlock(scope: !929, file: !3, line: 133, column: 7)
!973 = !DILocation(line: 134, column: 5, scope: !972)
!974 = !DILocation(line: 138, column: 25, scope: !941)
!975 = !DILocation(line: 138, column: 11, scope: !941)
!976 = !DILocation(line: 139, column: 17, scope: !941)
!977 = !DILocation(line: 139, column: 7, scope: !941)
!978 = !DILocation(line: 140, column: 13, scope: !941)
!979 = !DILocation(line: 141, column: 5, scope: !941)
!980 = !DILocation(line: 142, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !929, file: !3, line: 142, column: 7)
!982 = !DILocation(line: 142, column: 7, scope: !929)
!983 = !DILocation(line: 144, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 143, column: 5)
!985 = !DILocation(line: 144, column: 38, scope: !984)
!986 = !DILocalVariable(name: "dir", arg: 1, scope: !987, file: !3, line: 109, type: !58)
!987 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 109, type: !988, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !58, !46}
!990 = !{!986, !991, !992}
!991 = !DILocalVariable(name: "options", arg: 2, scope: !987, file: !3, line: 109, type: !46)
!992 = !DILocalVariable(name: "o", scope: !987, file: !3, line: 111, type: !935)
!993 = !DILocation(line: 109, column: 29, scope: !987, inlinedAt: !994)
!994 = distinct !DILocation(line: 145, column: 7, scope: !984)
!995 = !DILocation(line: 109, column: 40, scope: !987, inlinedAt: !994)
!996 = !DILocation(line: 111, column: 31, scope: !987, inlinedAt: !994)
!997 = !DILocation(line: 112, column: 10, scope: !998, inlinedAt: !994)
!998 = distinct !DILexicalBlock(scope: !987, file: !3, line: 112, column: 7)
!999 = !DILocation(line: 112, column: 7, scope: !998, inlinedAt: !994)
!1000 = !DILocation(line: 112, column: 7, scope: !987, inlinedAt: !994)
!1001 = !DILocation(line: 113, column: 19, scope: !998, inlinedAt: !994)
!1002 = !DILocation(line: 113, column: 56, scope: !998, inlinedAt: !994)
!1003 = !DILocation(line: 113, column: 5, scope: !998, inlinedAt: !994)
!1004 = !DILocation(line: 0, scope: !929)
!1005 = !DILocation(line: 147, column: 3, scope: !929)
!1006 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 152, type: !1007, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1010)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!29, !44, !1009, !46}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1010 = !{!1011, !1012, !1013, !1014, !1015}
!1011 = !DILocalVariable(name: "dir", arg: 1, scope: !1006, file: !3, line: 152, type: !44)
!1012 = !DILocalVariable(name: "wd", arg: 2, scope: !1006, file: !3, line: 152, type: !1009)
!1013 = !DILocalVariable(name: "options", arg: 3, scope: !1006, file: !3, line: 152, type: !46)
!1014 = !DILocalVariable(name: "o", scope: !1006, file: !3, line: 154, type: !935)
!1015 = !DILocalVariable(name: "ret", scope: !1006, file: !3, line: 165, type: !29)
!1016 = !DILocation(line: 152, column: 20, scope: !1006)
!1017 = !DILocation(line: 152, column: 40, scope: !1006)
!1018 = !DILocation(line: 152, column: 50, scope: !1006)
!1019 = !DILocation(line: 157, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 157, column: 7)
!1021 = !DILocation(line: 0, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 159, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 158, column: 5)
!1024 = !DILocation(line: 159, column: 13, scope: !1022)
!1025 = !DILocation(line: 157, column: 7, scope: !1006)
!1026 = !DILocation(line: 154, column: 31, scope: !1006)
!1027 = !DILocation(line: 44, column: 25, scope: !952, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 159, column: 42, scope: !1022)
!1029 = !DILocation(line: 44, column: 38, scope: !952, inlinedAt: !1028)
!1030 = !DILocation(line: 45, column: 3, scope: !952, inlinedAt: !1028)
!1031 = !DILocation(line: 45, column: 9, scope: !952, inlinedAt: !1028)
!1032 = !DILocation(line: 159, column: 11, scope: !1023)
!1033 = !DILocation(line: 165, column: 44, scope: !1006)
!1034 = !DILocation(line: 166, column: 35, scope: !1006)
!1035 = !DILocation(line: 167, column: 35, scope: !1006)
!1036 = !DILocation(line: 165, column: 14, scope: !1006)
!1037 = !DILocation(line: 165, column: 7, scope: !1006)
!1038 = !DILocation(line: 176, column: 27, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 176, column: 7)
!1040 = !DILocation(line: 176, column: 33, scope: !1039)
!1041 = !DILocation(line: 177, column: 7, scope: !1039)
!1042 = !DILocation(line: 177, column: 13, scope: !1039)
!1043 = !DILocation(line: 177, column: 10, scope: !1039)
!1044 = !DILocation(line: 176, column: 7, scope: !1006)
!1045 = !DILocalVariable(name: "path", arg: 1, scope: !1046, file: !953, line: 40, type: !58)
!1046 = distinct !DISubprogram(name: "restorecon", scope: !953, file: !953, line: 40, type: !1047, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!80, !58, !80, !80}
!1049 = !{!1045, !1050, !1051}
!1050 = !DILocalVariable(name: "recurse", arg: 2, scope: !1046, file: !953, line: 40, type: !80)
!1051 = !DILocalVariable(name: "preserve", arg: 3, scope: !1046, file: !953, line: 40, type: !80)
!1052 = !DILocation(line: 40, column: 25, scope: !1046, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 179, column: 13, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 179, column: 11)
!1055 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 178, column: 5)
!1056 = !DILocation(line: 40, column: 36, scope: !1046, inlinedAt: !1053)
!1057 = !DILocation(line: 40, column: 50, scope: !1046, inlinedAt: !1053)
!1058 = !DILocation(line: 41, column: 3, scope: !1046, inlinedAt: !1053)
!1059 = !DILocation(line: 41, column: 9, scope: !1046, inlinedAt: !1053)
!1060 = !DILocation(line: 179, column: 11, scope: !1055)
!1061 = !DILocation(line: 185, column: 3, scope: !1006)
!1062 = !DILocation(line: 109, column: 29, scope: !987)
!1063 = !DILocation(line: 109, column: 40, scope: !987)
!1064 = !DILocation(line: 111, column: 31, scope: !987)
!1065 = !DILocation(line: 112, column: 10, scope: !998)
!1066 = !DILocation(line: 112, column: 7, scope: !998)
!1067 = !DILocation(line: 112, column: 7, scope: !987)
!1068 = !DILocation(line: 113, column: 19, scope: !998)
!1069 = !DILocation(line: 113, column: 56, scope: !998)
!1070 = !DILocation(line: 113, column: 5, scope: !998)
!1071 = !DILocation(line: 114, column: 1, scope: !987)
!1072 = distinct !DISubprogram(name: "prog_fprintf", scope: !214, file: !214, line: 28, type: !1073, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !213, retainedNodes: !1127)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1075, !58, null}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !1078)
!1077 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !1080)
!1079 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1096, !1098, !1099, !1100, !1103, !1104, !1106, !1108, !1111, !1113, !1116, !1119, !1120, !1121, !1122, !1123}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1078, file: !1079, line: 51, baseType: !29, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1078, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1078, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1078, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1078, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1078, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1078, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1078, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1078, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1078, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1078, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1078, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1078, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1079, line: 36, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1078, file: !1079, line: 70, baseType: !1097, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1078, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1078, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1078, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 150, baseType: !1102)
!1102 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1078, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1078, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!1105 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1078, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !199)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1078, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1079, line: 43, baseType: null)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1078, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 151, baseType: !1102)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1078, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1079, line: 37, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1078, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1079, line: 38, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1078, file: !1079, line: 93, baseType: !1097, size: 64, offset: 1344)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1078, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1078, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1078, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1078, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 20)
!1127 = !{!1128, !1129, !1130}
!1128 = !DILocalVariable(name: "fp", arg: 1, scope: !1072, file: !214, line: 28, type: !1075)
!1129 = !DILocalVariable(name: "fmt", arg: 2, scope: !1072, file: !214, line: 28, type: !58)
!1130 = !DILocalVariable(name: "ap", scope: !1072, file: !214, line: 30, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1132, line: 52, baseType: !1133)
!1132 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !190, line: 48, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !214, line: 30, baseType: !1135)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 192, elements: !199)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !214, line: 30, size: 192, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1136, file: !214, line: 30, baseType: !7, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1136, file: !214, line: 30, baseType: !7, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1136, file: !214, line: 30, baseType: !46, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1136, file: !214, line: 30, baseType: !46, size: 64, offset: 128)
!1142 = !DILocation(line: 28, column: 21, scope: !1072)
!1143 = !DILocation(line: 28, column: 37, scope: !1072)
!1144 = !DILocation(line: 30, column: 3, scope: !1072)
!1145 = !DILocation(line: 30, column: 11, scope: !1072)
!1146 = !DILocation(line: 31, column: 3, scope: !1072)
!1147 = !DILocation(line: 32, column: 3, scope: !1072)
!1148 = !DILocation(line: 33, column: 3, scope: !1072)
!1149 = !DILocalVariable(name: "__stream", arg: 1, scope: !1150, file: !1151, line: 127, type: !1154)
!1150 = distinct !DISubprogram(name: "vfprintf", scope: !1151, file: !1151, line: 127, type: !1152, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !213, retainedNodes: !1157)
!1151 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!29, !1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1075)
!1155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1157 = !{!1149, !1158, !1159}
!1158 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1150, file: !1151, line: 128, type: !1155)
!1159 = !DILocalVariable(name: "__ap", arg: 3, scope: !1150, file: !1151, line: 128, type: !1156)
!1160 = !DILocation(line: 127, column: 28, scope: !1150, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 34, column: 3, scope: !1072)
!1162 = !DILocation(line: 128, column: 27, scope: !1150, inlinedAt: !1161)
!1163 = !DILocation(line: 128, column: 49, scope: !1150, inlinedAt: !1161)
!1164 = !DILocation(line: 130, column: 10, scope: !1150, inlinedAt: !1161)
!1165 = !DILocation(line: 35, column: 3, scope: !1072)
!1166 = !DILocalVariable(name: "__c", arg: 1, scope: !1167, file: !1168, line: 91, type: !29)
!1167 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1168, file: !1168, line: 91, type: !1169, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !213, retainedNodes: !1171)
!1168 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!29, !29, !1075}
!1171 = !{!1166, !1172}
!1172 = !DILocalVariable(name: "__stream", arg: 2, scope: !1167, file: !1168, line: 91, type: !1075)
!1173 = !DILocation(line: 91, column: 21, scope: !1167, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 36, column: 3, scope: !1072)
!1175 = !DILocation(line: 91, column: 32, scope: !1167, inlinedAt: !1174)
!1176 = !DILocation(line: 93, column: 10, scope: !1167, inlinedAt: !1174)
!1177 = !{!1178, !753, i64 40}
!1178 = !{!"_IO_FILE", !845, i64 0, !753, i64 8, !753, i64 16, !753, i64 24, !753, i64 32, !753, i64 40, !753, i64 48, !753, i64 56, !753, i64 64, !753, i64 72, !753, i64 80, !753, i64 88, !753, i64 96, !753, i64 104, !845, i64 112, !845, i64 116, !1179, i64 120, !1180, i64 128, !754, i64 130, !754, i64 131, !753, i64 136, !1179, i64 144, !753, i64 152, !753, i64 160, !753, i64 168, !753, i64 176, !1179, i64 184, !845, i64 192, !754, i64 196}
!1179 = !{!"long", !754, i64 0}
!1180 = !{!"short", !754, i64 0}
!1181 = !{!1178, !753, i64 48}
!1182 = !{!"branch_weights", i32 2000, i32 1}
!1183 = !{!754, !754, i64 0}
!1184 = !DILocation(line: 37, column: 1, scope: !1072)
!1185 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !79, file: !79, line: 51, type: !729, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !74, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "file", arg: 1, scope: !1185, file: !79, line: 51, type: !58)
!1188 = !DILocation(line: 51, column: 41, scope: !1185)
!1189 = !DILocation(line: 53, column: 13, scope: !1185)
!1190 = !DILocation(line: 54, column: 1, scope: !1185)
!1191 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !79, file: !79, line: 88, type: !1192, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !74, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !80}
!1194 = !{!1195}
!1195 = !DILocalVariable(name: "ignore", arg: 1, scope: !1191, file: !79, line: 88, type: !80)
!1196 = !DILocation(line: 88, column: 37, scope: !1191)
!1197 = !DILocation(line: 90, column: 16, scope: !1191)
!1198 = !{!846, !846, i64 0}
!1199 = !DILocation(line: 91, column: 1, scope: !1191)
!1200 = distinct !DISubprogram(name: "close_stdout", scope: !79, file: !79, line: 117, type: !760, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !74, retainedNodes: !1201)
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "write_error", scope: !1203, file: !79, line: 122, type: !58)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !79, line: 121, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !79, line: 119, column: 7)
!1205 = !DILocation(line: 119, column: 21, scope: !1204)
!1206 = !DILocation(line: 119, column: 7, scope: !1204)
!1207 = !DILocation(line: 119, column: 29, scope: !1204)
!1208 = !DILocation(line: 120, column: 7, scope: !1204)
!1209 = !DILocation(line: 120, column: 12, scope: !1204)
!1210 = !DILocation(line: 120, column: 25, scope: !1204)
!1211 = !DILocation(line: 120, column: 28, scope: !1204)
!1212 = !DILocation(line: 120, column: 34, scope: !1204)
!1213 = !DILocation(line: 119, column: 7, scope: !1200)
!1214 = !DILocation(line: 122, column: 33, scope: !1203)
!1215 = !DILocation(line: 122, column: 19, scope: !1203)
!1216 = !DILocation(line: 123, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1203, file: !79, line: 123, column: 11)
!1218 = !DILocation(line: 0, scope: !1217)
!1219 = !DILocation(line: 123, column: 11, scope: !1203)
!1220 = !DILocation(line: 124, column: 36, scope: !1217)
!1221 = !DILocation(line: 124, column: 9, scope: !1217)
!1222 = !DILocation(line: 127, column: 9, scope: !1217)
!1223 = !DILocation(line: 129, column: 14, scope: !1203)
!1224 = !DILocation(line: 129, column: 7, scope: !1203)
!1225 = !DILocation(line: 134, column: 42, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1200, file: !79, line: 134, column: 7)
!1227 = !DILocation(line: 134, column: 28, scope: !1226)
!1228 = !DILocation(line: 134, column: 50, scope: !1226)
!1229 = !DILocation(line: 134, column: 7, scope: !1200)
!1230 = !DILocation(line: 135, column: 12, scope: !1226)
!1231 = !DILocation(line: 135, column: 5, scope: !1226)
!1232 = !DILocation(line: 136, column: 1, scope: !1200)
!1233 = distinct !DISubprogram(name: "make_dir_parents", scope: !1234, file: !1234, line: 85, type: !1235, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1239)
!1234 = !DIFile(filename: "lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!80, !44, !1237, !816, !46, !703, !1238, !703, !47, !49, !80}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1255, !1256, !1259, !1260, !1261, !1264, !1300, !1305, !1306, !1309}
!1240 = !DILocalVariable(name: "dir", arg: 1, scope: !1233, file: !1234, line: 85, type: !44)
!1241 = !DILocalVariable(name: "wd", arg: 2, scope: !1233, file: !1234, line: 86, type: !1237)
!1242 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1233, file: !1234, line: 87, type: !816)
!1243 = !DILocalVariable(name: "options", arg: 4, scope: !1233, file: !1234, line: 88, type: !46)
!1244 = !DILocalVariable(name: "mode", arg: 5, scope: !1233, file: !1234, line: 89, type: !703)
!1245 = !DILocalVariable(name: "announce", arg: 6, scope: !1233, file: !1234, line: 90, type: !1238)
!1246 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1233, file: !1234, line: 91, type: !703)
!1247 = !DILocalVariable(name: "owner", arg: 8, scope: !1233, file: !1234, line: 92, type: !47)
!1248 = !DILocalVariable(name: "group", arg: 9, scope: !1233, file: !1234, line: 93, type: !49)
!1249 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1233, file: !1234, line: 94, type: !80)
!1250 = !DILocalVariable(name: "mkdir_errno", scope: !1233, file: !1234, line: 96, type: !29)
!1251 = !DILocalVariable(name: "prefix_len", scope: !1252, file: !1234, line: 100, type: !1254)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !1234, line: 99, column: 5)
!1253 = distinct !DILexicalBlock(scope: !1233, file: !1234, line: 98, column: 7)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !123, line: 51, baseType: !1102)
!1255 = !DILocalVariable(name: "savewd_chdir_options", scope: !1252, file: !1234, line: 101, type: !29)
!1256 = !DILocalVariable(name: "keep_owner", scope: !1257, file: !1234, line: 121, type: !80)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !1234, line: 115, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !1234, line: 114, column: 11)
!1259 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1257, file: !1234, line: 122, type: !80)
!1260 = !DILocalVariable(name: "mkdir_mode", scope: !1257, file: !1234, line: 124, type: !703)
!1261 = !DILocalVariable(name: "umask_must_be_ok", scope: !1262, file: !1234, line: 134, type: !80)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1234, line: 131, column: 13)
!1263 = distinct !DILexicalBlock(scope: !1257, file: !1234, line: 130, column: 15)
!1264 = !DILocalVariable(name: "st", scope: !1265, file: !1234, line: 149, type: !1267)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1234, line: 148, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1257, file: !1234, line: 147, column: 15)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1268, line: 46, size: 1152, elements: !1269)
!1268 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1269 = !{!1270, !1272, !1274, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1284, !1286, !1294, !1295, !1296}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1267, file: !1268, line: 48, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !35, line: 143, baseType: !124)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1267, file: !1268, line: 53, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !35, line: 146, baseType: !124)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1267, file: !1268, line: 61, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !35, line: 149, baseType: !124)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1267, file: !1268, line: 62, baseType: !704, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1267, file: !1268, line: 64, baseType: !48, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1267, file: !1268, line: 65, baseType: !50, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1267, file: !1268, line: 67, baseType: !29, size: 32, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1267, file: !1268, line: 69, baseType: !1271, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1267, file: !1268, line: 74, baseType: !1101, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1267, file: !1268, line: 78, baseType: !1283, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !35, line: 172, baseType: !1102)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1267, file: !1268, line: 80, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !35, line: 177, baseType: !1102)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1267, file: !1268, line: 91, baseType: !1287, size: 128, offset: 576)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1288, line: 9, size: 128, elements: !1289)
!1288 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1289 = !{!1290, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1287, file: !1288, line: 11, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 158, baseType: !1102)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1287, file: !1288, line: 12, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 194, baseType: !1102)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1267, file: !1268, line: 92, baseType: !1287, size: 128, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1267, file: !1268, line: 93, baseType: !1287, size: 128, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1267, file: !1268, line: 106, baseType: !1297, size: 192, offset: 960)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 192, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 3)
!1300 = !DILocalVariable(name: "open_result", scope: !1301, file: !1234, line: 158, type: !1302)
!1301 = distinct !DILexicalBlock(scope: !1266, file: !1234, line: 157, column: 13)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 2)
!1305 = !DILocalVariable(name: "chdir_result", scope: !1301, file: !1234, line: 159, type: !29)
!1306 = !DILocalVariable(name: "chdir_ok", scope: !1307, file: !1234, line: 166, type: !80)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !1234, line: 165, column: 17)
!1308 = distinct !DILexicalBlock(scope: !1301, file: !1234, line: 162, column: 19)
!1309 = !DILocalVariable(name: "subdir", scope: !1307, file: !1234, line: 167, type: !58)
!1310 = !DILocation(line: 85, column: 25, scope: !1233)
!1311 = !DILocation(line: 86, column: 34, scope: !1233)
!1312 = !DILocation(line: 87, column: 25, scope: !1233)
!1313 = !DILocation(line: 88, column: 25, scope: !1233)
!1314 = !DILocation(line: 89, column: 26, scope: !1233)
!1315 = !DILocation(line: 90, column: 26, scope: !1233)
!1316 = !DILocation(line: 91, column: 26, scope: !1233)
!1317 = !DILocation(line: 92, column: 25, scope: !1233)
!1318 = !DILocation(line: 93, column: 25, scope: !1233)
!1319 = !DILocation(line: 94, column: 24, scope: !1233)
!1320 = !DILocation(line: 96, column: 22, scope: !1233)
!1321 = !DILocalVariable(name: "wd", arg: 1, scope: !1322, file: !21, line: 124, type: !1325)
!1322 = distinct !DISubprogram(name: "savewd_errno", scope: !21, file: !21, line: 124, type: !1323, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1327)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!29, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1327 = !{!1321}
!1328 = !DILocation(line: 124, column: 36, scope: !1322, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 96, column: 56, scope: !1233)
!1330 = !DILocation(line: 126, column: 15, scope: !1322, inlinedAt: !1329)
!1331 = !{!1332, !754, i64 0}
!1332 = !{!"savewd", !754, i64 0, !754, i64 4}
!1333 = !DILocation(line: 126, column: 21, scope: !1322, inlinedAt: !1329)
!1334 = !DILocation(line: 126, column: 11, scope: !1322, inlinedAt: !1329)
!1335 = !DILocation(line: 126, column: 46, scope: !1322, inlinedAt: !1329)
!1336 = !DILocation(line: 96, column: 7, scope: !1233)
!1337 = !DILocation(line: 98, column: 19, scope: !1253)
!1338 = !DILocation(line: 98, column: 7, scope: !1233)
!1339 = !DILocation(line: 100, column: 17, scope: !1252)
!1340 = !DILocation(line: 101, column: 11, scope: !1252)
!1341 = !DILocation(line: 103, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1252, file: !1234, line: 103, column: 11)
!1343 = !DILocation(line: 103, column: 11, scope: !1252)
!1344 = !DILocation(line: 105, column: 24, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !1234, line: 104, column: 9)
!1346 = !DILocation(line: 106, column: 26, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !1234, line: 106, column: 15)
!1348 = !DILocation(line: 106, column: 15, scope: !1345)
!1349 = !DILocation(line: 108, column: 30, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !1234, line: 108, column: 19)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !1234, line: 107, column: 13)
!1352 = !DILocation(line: 108, column: 19, scope: !1351)
!1353 = !DILocation(line: 110, column: 29, scope: !1351)
!1354 = !DILocation(line: 121, column: 49, scope: !1257)
!1355 = !DILocation(line: 123, column: 25, scope: !1257)
!1356 = !DILocation(line: 123, column: 56, scope: !1257)
!1357 = !DILocation(line: 123, column: 48, scope: !1257)
!1358 = !DILocation(line: 124, column: 18, scope: !1257)
!1359 = !DILocation(line: 125, column: 15, scope: !1257)
!1360 = !DILocation(line: 126, column: 24, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1257, file: !1234, line: 125, column: 15)
!1362 = !DILocation(line: 126, column: 13, scope: !1361)
!1363 = !DILocation(line: 123, column: 68, scope: !1257)
!1364 = !DILocation(line: 128, column: 24, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !1234, line: 127, column: 20)
!1366 = !DILocation(line: 127, column: 20, scope: !1361)
!1367 = !DILocation(line: 0, scope: !1361)
!1368 = !DILocation(line: 130, column: 26, scope: !1263)
!1369 = !DILocation(line: 130, column: 15, scope: !1263)
!1370 = !DILocation(line: 130, column: 52, scope: !1263)
!1371 = !DILocation(line: 130, column: 15, scope: !1257)
!1372 = !DILocation(line: 134, column: 45, scope: !1262)
!1373 = !DILocation(line: 134, column: 57, scope: !1262)
!1374 = !DILocation(line: 136, column: 15, scope: !1262)
!1375 = !DILocation(line: 138, column: 36, scope: !1262)
!1376 = !DILocation(line: 147, column: 15, scope: !1257)
!1377 = !DILocation(line: 149, column: 15, scope: !1265)
!1378 = !DILocation(line: 151, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1265, file: !1234, line: 150, column: 19)
!1380 = !DILocation(line: 143, column: 29, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1263, file: !1234, line: 142, column: 13)
!1382 = !DILocation(line: 150, column: 31, scope: !1379)
!1383 = !DILocation(line: 151, column: 35, scope: !1379)
!1384 = !DILocation(line: 151, column: 45, scope: !1379)
!1385 = !DILocation(line: 149, column: 27, scope: !1265)
!1386 = !DILocalVariable(name: "__path", arg: 1, scope: !1387, file: !1388, line: 453, type: !58)
!1387 = distinct !DISubprogram(name: "stat", scope: !1388, file: !1388, line: 453, type: !1389, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !219, retainedNodes: !1392)
!1388 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!29, !58, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1392 = !{!1386, !1393}
!1393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1387, file: !1388, line: 453, type: !1391)
!1394 = !DILocation(line: 453, column: 1, scope: !1387, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 152, column: 26, scope: !1379)
!1396 = !DILocation(line: 455, column: 10, scope: !1387, inlinedAt: !1395)
!1397 = !DILocation(line: 152, column: 55, scope: !1379)
!1398 = !DILocation(line: 153, column: 23, scope: !1379)
!1399 = !DILocation(line: 153, column: 26, scope: !1379)
!1400 = !{!1401, !845, i64 24}
!1401 = !{!"stat", !1179, i64 0, !1179, i64 8, !1179, i64 16, !845, i64 24, !845, i64 28, !845, i64 32, !845, i64 36, !1179, i64 40, !1179, i64 48, !1179, i64 56, !1179, i64 64, !1402, i64 72, !1402, i64 88, !1402, i64 104, !754, i64 120}
!1402 = !{!"timespec", !1179, i64 0, !1179, i64 8}
!1403 = !DILocation(line: 150, column: 19, scope: !1265)
!1404 = !DILocation(line: 155, column: 13, scope: !1266)
!1405 = !DILocation(line: 158, column: 15, scope: !1301)
!1406 = !DILocation(line: 158, column: 19, scope: !1301)
!1407 = !DILocation(line: 161, column: 53, scope: !1301)
!1408 = !DILocation(line: 160, column: 17, scope: !1301)
!1409 = !DILocation(line: 159, column: 19, scope: !1301)
!1410 = !DILocation(line: 162, column: 32, scope: !1308)
!1411 = !DILocation(line: 162, column: 19, scope: !1301)
!1412 = !DILocation(line: 185, column: 13, scope: !1266)
!1413 = !DILocation(line: 166, column: 49, scope: !1307)
!1414 = !DILocation(line: 167, column: 41, scope: !1307)
!1415 = !DILocation(line: 167, column: 31, scope: !1307)
!1416 = !DILocation(line: 168, column: 36, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1307, file: !1234, line: 168, column: 23)
!1418 = !DILocation(line: 168, column: 23, scope: !1417)
!1419 = !DILocation(line: 170, column: 23, scope: !1417)
!1420 = !DILocation(line: 168, column: 23, scope: !1307)
!1421 = !DILocation(line: 173, column: 35, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1307, file: !1234, line: 173, column: 23)
!1423 = !DILocation(line: 174, column: 23, scope: !1422)
!1424 = !DILocation(line: 177, column: 33, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !1234, line: 176, column: 21)
!1426 = !DILocation(line: 174, column: 39, scope: !1422)
!1427 = !DILocation(line: 174, column: 49, scope: !1422)
!1428 = !DILocation(line: 175, column: 30, scope: !1422)
!1429 = !DILocation(line: 175, column: 36, scope: !1422)
!1430 = !DILocation(line: 173, column: 23, scope: !1307)
!1431 = !DILocation(line: 178, column: 30, scope: !1425)
!1432 = !DILocation(line: 181, column: 30, scope: !1425)
!1433 = !DILocation(line: 177, column: 23, scope: !1425)
!1434 = !DILocation(line: 182, column: 23, scope: !1425)
!1435 = !DILocation(line: 189, column: 26, scope: !1233)
!1436 = !DILocation(line: 189, column: 59, scope: !1233)
!1437 = !DILocation(line: 189, column: 3, scope: !1233)
!1438 = !DILocation(line: 190, column: 3, scope: !1233)
!1439 = !DILocation(line: 0, scope: !1350)
!1440 = !DILocation(line: 191, column: 1, scope: !1233)
!1441 = distinct !DISubprogram(name: "mode_compile", scope: !241, file: !241, line: 134, type: !1442, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1452)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1444, !58}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !241, line: 98, size: 128, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1445, file: !241, line: 100, baseType: !45, size: 8)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1445, file: !241, line: 101, baseType: !45, size: 8, offset: 8)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1445, file: !241, line: 102, baseType: !703, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1445, file: !241, line: 103, baseType: !703, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1445, file: !241, line: 104, baseType: !703, size: 32, offset: 96)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1460, !1461, !1462, !1464, !1468, !1470, !1471, !1472, !1473, !1474}
!1453 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1441, file: !241, line: 134, type: !58)
!1454 = !DILocalVariable(name: "mc", scope: !1441, file: !241, line: 137, type: !1444)
!1455 = !DILocalVariable(name: "used", scope: !1441, file: !241, line: 138, type: !122)
!1456 = !DILocalVariable(name: "p", scope: !1441, file: !241, line: 139, type: !58)
!1457 = !DILocalVariable(name: "octal_mode", scope: !1458, file: !241, line: 143, type: !7)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !241, line: 142, column: 5)
!1459 = distinct !DILexicalBlock(scope: !1441, file: !241, line: 141, column: 7)
!1460 = !DILocalVariable(name: "mode", scope: !1458, file: !241, line: 144, type: !703)
!1461 = !DILocalVariable(name: "mentioned", scope: !1458, file: !241, line: 145, type: !703)
!1462 = !DILocalVariable(name: "needed", scope: !1463, file: !241, line: 168, type: !122)
!1463 = distinct !DILexicalBlock(scope: !1441, file: !241, line: 167, column: 3)
!1464 = !DILocalVariable(name: "affected", scope: !1465, file: !241, line: 179, type: !703)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !241, line: 177, column: 5)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !241, line: 176, column: 3)
!1467 = distinct !DILexicalBlock(scope: !1441, file: !241, line: 176, column: 3)
!1468 = !DILocalVariable(name: "op", scope: !1469, file: !241, line: 206, type: !45)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !241, line: 205, column: 9)
!1470 = !DILocalVariable(name: "value", scope: !1469, file: !241, line: 207, type: !703)
!1471 = !DILocalVariable(name: "mentioned", scope: !1469, file: !241, line: 208, type: !703)
!1472 = !DILocalVariable(name: "flag", scope: !1469, file: !241, line: 209, type: !45)
!1473 = !DILocalVariable(name: "change", scope: !1469, file: !241, line: 210, type: !1444)
!1474 = !DILocalVariable(name: "octal_mode", scope: !1475, file: !241, line: 217, type: !7)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !241, line: 216, column: 15)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !241, line: 213, column: 13)
!1477 = !DILocation(line: 134, column: 27, scope: !1441)
!1478 = !DILocation(line: 138, column: 10, scope: !1441)
!1479 = !DILocation(line: 141, column: 14, scope: !1459)
!1480 = !DILocation(line: 141, column: 27, scope: !1459)
!1481 = !DILocation(line: 150, column: 41, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1458, file: !241, line: 149, column: 9)
!1483 = !DILocation(line: 0, scope: !1482)
!1484 = !DILocation(line: 139, column: 15, scope: !1441)
!1485 = !DILocation(line: 143, column: 20, scope: !1458)
!1486 = !DILocation(line: 150, column: 26, scope: !1482)
!1487 = !DILocation(line: 150, column: 43, scope: !1482)
!1488 = !DILocation(line: 150, column: 39, scope: !1482)
!1489 = !DILocation(line: 150, column: 46, scope: !1482)
!1490 = !DILocation(line: 151, column: 20, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !241, line: 151, column: 15)
!1492 = !DILocation(line: 151, column: 15, scope: !1482)
!1493 = !DILocation(line: 154, column: 21, scope: !1458)
!1494 = !DILocation(line: 154, column: 24, scope: !1458)
!1495 = distinct !{!1495, !1496, !1497}
!1496 = !DILocation(line: 148, column: 7, scope: !1458)
!1497 = !DILocation(line: 154, column: 35, scope: !1458)
!1498 = !DILocation(line: 156, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1458, file: !241, line: 156, column: 11)
!1500 = !DILocation(line: 156, column: 11, scope: !1458)
!1501 = !DILocation(line: 144, column: 14, scope: !1458)
!1502 = !DILocation(line: 160, column: 22, scope: !1458)
!1503 = !DILocation(line: 160, column: 36, scope: !1458)
!1504 = !DILocation(line: 161, column: 28, scope: !1458)
!1505 = !DILocation(line: 161, column: 61, scope: !1458)
!1506 = !DILocation(line: 160, column: 20, scope: !1458)
!1507 = !DILocation(line: 145, column: 14, scope: !1458)
!1508 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1509, file: !241, line: 112, type: !703)
!1509 = distinct !DISubprogram(name: "make_node_op_equals", scope: !241, file: !241, line: 112, type: !1510, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1444, !703, !703}
!1512 = !{!1508, !1513, !1514}
!1513 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1509, file: !241, line: 112, type: !703)
!1514 = !DILocalVariable(name: "p", scope: !1509, file: !241, line: 114, type: !1444)
!1515 = !DILocation(line: 112, column: 29, scope: !1509, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 163, column: 14, scope: !1458)
!1517 = !DILocation(line: 112, column: 46, scope: !1509, inlinedAt: !1516)
!1518 = !DILocation(line: 114, column: 27, scope: !1509, inlinedAt: !1516)
!1519 = !DILocation(line: 114, column: 23, scope: !1509, inlinedAt: !1516)
!1520 = !DILocation(line: 115, column: 9, scope: !1509, inlinedAt: !1516)
!1521 = !{!1522, !754, i64 0}
!1522 = !{!"mode_change", !754, i64 0, !754, i64 1, !845, i64 4, !845, i64 8, !845, i64 12}
!1523 = !DILocation(line: 116, column: 6, scope: !1509, inlinedAt: !1516)
!1524 = !DILocation(line: 116, column: 11, scope: !1509, inlinedAt: !1516)
!1525 = !{!1522, !754, i64 1}
!1526 = !DILocation(line: 117, column: 6, scope: !1509, inlinedAt: !1516)
!1527 = !DILocation(line: 117, column: 15, scope: !1509, inlinedAt: !1516)
!1528 = !{!1522, !845, i64 4}
!1529 = !DILocation(line: 118, column: 6, scope: !1509, inlinedAt: !1516)
!1530 = !DILocation(line: 118, column: 12, scope: !1509, inlinedAt: !1516)
!1531 = !{!1522, !845, i64 8}
!1532 = !DILocation(line: 119, column: 6, scope: !1509, inlinedAt: !1516)
!1533 = !DILocation(line: 119, column: 16, scope: !1509, inlinedAt: !1516)
!1534 = !{!1522, !845, i64 12}
!1535 = !DILocation(line: 120, column: 8, scope: !1509, inlinedAt: !1516)
!1536 = !DILocation(line: 120, column: 13, scope: !1509, inlinedAt: !1516)
!1537 = !DILocation(line: 163, column: 7, scope: !1458)
!1538 = !DILocation(line: 169, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !241, line: 169, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1463, file: !241, line: 169, column: 5)
!1541 = !DILocation(line: 0, scope: !1539)
!1542 = !DILocation(line: 168, column: 12, scope: !1463)
!1543 = !DILocation(line: 169, column: 5, scope: !1540)
!1544 = !DILocation(line: 170, column: 41, scope: !1539)
!1545 = !DILocation(line: 170, column: 14, scope: !1539)
!1546 = !DILocation(line: 169, column: 32, scope: !1539)
!1547 = !DILocation(line: 169, column: 5, scope: !1539)
!1548 = distinct !{!1548, !1543, !1549}
!1549 = !DILocation(line: 170, column: 53, scope: !1540)
!1550 = !DILocalVariable(name: "n", arg: 1, scope: !1551, file: !273, line: 99, type: !122)
!1551 = distinct !DISubprogram(name: "xnmalloc", scope: !273, file: !273, line: 99, type: !1552, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!46, !122, !122}
!1554 = !{!1550, !1555}
!1555 = !DILocalVariable(name: "s", arg: 2, scope: !1551, file: !273, line: 99, type: !122)
!1556 = !DILocation(line: 99, column: 18, scope: !1551, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 171, column: 10, scope: !1463)
!1558 = !DILocation(line: 99, column: 28, scope: !1551, inlinedAt: !1557)
!1559 = !DILocation(line: 101, column: 7, scope: !1560, inlinedAt: !1557)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !273, line: 101, column: 7)
!1561 = !DILocation(line: 101, column: 7, scope: !1551, inlinedAt: !1557)
!1562 = !DILocation(line: 102, column: 5, scope: !1560, inlinedAt: !1557)
!1563 = !DILocation(line: 103, column: 21, scope: !1551, inlinedAt: !1557)
!1564 = !DILocation(line: 103, column: 10, scope: !1551, inlinedAt: !1557)
!1565 = !DILocation(line: 171, column: 10, scope: !1463)
!1566 = !DILocation(line: 137, column: 23, scope: !1441)
!1567 = !DILocation(line: 176, column: 8, scope: !1467)
!1568 = !DILocation(line: 0, scope: !1466)
!1569 = !DILocation(line: 179, column: 14, scope: !1465)
!1570 = !DILocation(line: 182, column: 7, scope: !1465)
!1571 = !DILocation(line: 0, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !241, line: 182, column: 7)
!1573 = distinct !DILexicalBlock(scope: !1465, file: !241, line: 182, column: 7)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !241, line: 184, column: 11)
!1576 = !DILocation(line: 183, column: 17, scope: !1572)
!1577 = !DILocation(line: 183, column: 9, scope: !1572)
!1578 = !DILocation(line: 206, column: 23, scope: !1469)
!1579 = !DILocation(line: 192, column: 13, scope: !1575)
!1580 = !DILocation(line: 195, column: 13, scope: !1575)
!1581 = !DILocation(line: 198, column: 13, scope: !1575)
!1582 = !DILocation(line: 182, column: 16, scope: !1572)
!1583 = !DILocation(line: 182, column: 7, scope: !1572)
!1584 = distinct !{!1584, !1585, !1586}
!1585 = !DILocation(line: 182, column: 7, scope: !1573)
!1586 = !DILocation(line: 201, column: 11, scope: !1573)
!1587 = !DILocation(line: 206, column: 21, scope: !1469)
!1588 = !DILocation(line: 0, scope: !1469)
!1589 = !DILocation(line: 206, column: 16, scope: !1469)
!1590 = !DILocation(line: 208, column: 18, scope: !1469)
!1591 = !DILocation(line: 209, column: 16, scope: !1469)
!1592 = !DILocation(line: 212, column: 19, scope: !1469)
!1593 = !DILocation(line: 212, column: 11, scope: !1469)
!1594 = !DILocation(line: 221, column: 36, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1475, file: !241, line: 220, column: 19)
!1596 = !DILocation(line: 221, column: 51, scope: !1595)
!1597 = !DILocation(line: 0, scope: !1595)
!1598 = !DILocation(line: 217, column: 30, scope: !1475)
!1599 = !DILocation(line: 221, column: 53, scope: !1595)
!1600 = !DILocation(line: 221, column: 49, scope: !1595)
!1601 = !DILocation(line: 221, column: 56, scope: !1595)
!1602 = !DILocation(line: 222, column: 30, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1595, file: !241, line: 222, column: 25)
!1604 = !DILocation(line: 222, column: 25, scope: !1595)
!1605 = !DILocation(line: 225, column: 31, scope: !1475)
!1606 = !DILocation(line: 225, column: 34, scope: !1475)
!1607 = distinct !{!1607, !1608, !1609}
!1608 = !DILocation(line: 219, column: 17, scope: !1475)
!1609 = !DILocation(line: 225, column: 45, scope: !1475)
!1610 = !DILocation(line: 227, column: 21, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1475, file: !241, line: 227, column: 21)
!1612 = !DILocation(line: 227, column: 30, scope: !1611)
!1613 = !DILocation(line: 227, column: 37, scope: !1611)
!1614 = !DILocation(line: 207, column: 18, scope: !1469)
!1615 = !DILocation(line: 239, column: 16, scope: !1476)
!1616 = !DILocation(line: 240, column: 15, scope: !1476)
!1617 = !DILocation(line: 245, column: 16, scope: !1476)
!1618 = !DILocation(line: 246, column: 15, scope: !1476)
!1619 = !DILocation(line: 251, column: 16, scope: !1476)
!1620 = !DILocation(line: 252, column: 15, scope: !1476)
!1621 = !DILocation(line: 259, column: 25, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !241, line: 258, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1476, file: !241, line: 258, column: 15)
!1624 = !DILocation(line: 0, scope: !1622)
!1625 = !DILocation(line: 0, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !241, line: 260, column: 19)
!1627 = !DILocation(line: 256, column: 20, scope: !1476)
!1628 = !DILocation(line: 259, column: 17, scope: !1622)
!1629 = !DILocation(line: 262, column: 27, scope: !1626)
!1630 = !DILocation(line: 263, column: 21, scope: !1626)
!1631 = !DILocation(line: 265, column: 27, scope: !1626)
!1632 = !DILocation(line: 266, column: 21, scope: !1626)
!1633 = !DILocation(line: 268, column: 27, scope: !1626)
!1634 = !DILocation(line: 269, column: 21, scope: !1626)
!1635 = !DILocation(line: 275, column: 27, scope: !1626)
!1636 = !DILocation(line: 276, column: 21, scope: !1626)
!1637 = !DILocation(line: 279, column: 27, scope: !1626)
!1638 = !DILocation(line: 280, column: 21, scope: !1626)
!1639 = !DILocation(line: 0, scope: !1476)
!1640 = !DILocation(line: 258, column: 24, scope: !1622)
!1641 = !DILocation(line: 258, column: 15, scope: !1622)
!1642 = distinct !{!1642, !1643, !1644}
!1643 = !DILocation(line: 258, column: 15, scope: !1623)
!1644 = !DILocation(line: 283, column: 19, scope: !1623)
!1645 = !DILocation(line: 287, column: 28, scope: !1469)
!1646 = !DILocation(line: 288, column: 19, scope: !1469)
!1647 = !DILocation(line: 288, column: 22, scope: !1469)
!1648 = !DILocation(line: 289, column: 19, scope: !1469)
!1649 = !DILocation(line: 289, column: 24, scope: !1469)
!1650 = !DILocation(line: 290, column: 19, scope: !1469)
!1651 = !DILocation(line: 290, column: 28, scope: !1469)
!1652 = !DILocation(line: 291, column: 19, scope: !1469)
!1653 = !DILocation(line: 291, column: 25, scope: !1469)
!1654 = !DILocation(line: 293, column: 14, scope: !1469)
!1655 = !DILocation(line: 293, column: 38, scope: !1469)
!1656 = !DILocation(line: 292, column: 19, scope: !1469)
!1657 = !DILocation(line: 292, column: 29, scope: !1469)
!1658 = !DILocation(line: 295, column: 14, scope: !1465)
!1659 = !DILocation(line: 295, column: 24, scope: !1465)
!1660 = !DILocation(line: 176, column: 28, scope: !1466)
!1661 = !DILocation(line: 176, column: 3, scope: !1466)
!1662 = distinct !{!1662, !1663, !1664}
!1663 = !DILocation(line: 176, column: 3, scope: !1467)
!1664 = !DILocation(line: 299, column: 5, scope: !1467)
!1665 = !DILocation(line: 303, column: 16, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !241, line: 302, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1441, file: !241, line: 301, column: 7)
!1668 = !DILocation(line: 303, column: 21, scope: !1666)
!1669 = !DILocation(line: 304, column: 7, scope: !1666)
!1670 = !DILocation(line: 308, column: 3, scope: !1441)
!1671 = !DILocation(line: 309, column: 3, scope: !1441)
!1672 = !DILocation(line: 310, column: 1, scope: !1441)
!1673 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !241, file: !241, line: 316, type: !1442, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1674)
!1674 = !{!1675, !1676}
!1675 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1673, file: !241, line: 316, type: !58)
!1676 = !DILocalVariable(name: "ref_stats", scope: !1673, file: !241, line: 318, type: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1268, line: 46, size: 1152, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1695, !1696, !1697}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1677, file: !1268, line: 48, baseType: !1271, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1677, file: !1268, line: 53, baseType: !1273, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1677, file: !1268, line: 61, baseType: !1275, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1677, file: !1268, line: 62, baseType: !704, size: 32, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1677, file: !1268, line: 64, baseType: !48, size: 32, offset: 224)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1677, file: !1268, line: 65, baseType: !50, size: 32, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1677, file: !1268, line: 67, baseType: !29, size: 32, offset: 288)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1677, file: !1268, line: 69, baseType: !1271, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1677, file: !1268, line: 74, baseType: !1101, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1677, file: !1268, line: 78, baseType: !1283, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1677, file: !1268, line: 80, baseType: !1285, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1677, file: !1268, line: 91, baseType: !1691, size: 128, offset: 576)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1288, line: 9, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1691, file: !1288, line: 11, baseType: !1291, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1691, file: !1288, line: 12, baseType: !1293, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1677, file: !1268, line: 92, baseType: !1691, size: 128, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1677, file: !1268, line: 93, baseType: !1691, size: 128, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1677, file: !1268, line: 106, baseType: !1297, size: 192, offset: 960)
!1698 = !DILocation(line: 316, column: 35, scope: !1673)
!1699 = !DILocation(line: 318, column: 3, scope: !1673)
!1700 = !DILocation(line: 318, column: 15, scope: !1673)
!1701 = !DILocalVariable(name: "__path", arg: 1, scope: !1702, file: !1388, line: 453, type: !58)
!1702 = distinct !DISubprogram(name: "stat", scope: !1388, file: !1388, line: 453, type: !1703, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1706)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!29, !58, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1706 = !{!1701, !1707}
!1707 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1702, file: !1388, line: 453, type: !1705)
!1708 = !DILocation(line: 453, column: 1, scope: !1702, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 320, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1673, file: !241, line: 320, column: 7)
!1711 = !DILocation(line: 455, column: 10, scope: !1702, inlinedAt: !1709)
!1712 = !DILocation(line: 320, column: 35, scope: !1710)
!1713 = !DILocation(line: 320, column: 7, scope: !1673)
!1714 = !DILocation(line: 322, column: 41, scope: !1673)
!1715 = !DILocation(line: 112, column: 29, scope: !1509, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 322, column: 10, scope: !1673)
!1717 = !DILocation(line: 112, column: 46, scope: !1509, inlinedAt: !1716)
!1718 = !DILocation(line: 114, column: 27, scope: !1509, inlinedAt: !1716)
!1719 = !DILocation(line: 114, column: 23, scope: !1509, inlinedAt: !1716)
!1720 = !DILocation(line: 115, column: 9, scope: !1509, inlinedAt: !1716)
!1721 = !DILocation(line: 116, column: 6, scope: !1509, inlinedAt: !1716)
!1722 = !DILocation(line: 116, column: 11, scope: !1509, inlinedAt: !1716)
!1723 = !DILocation(line: 117, column: 6, scope: !1509, inlinedAt: !1716)
!1724 = !DILocation(line: 117, column: 15, scope: !1509, inlinedAt: !1716)
!1725 = !DILocation(line: 118, column: 6, scope: !1509, inlinedAt: !1716)
!1726 = !DILocation(line: 118, column: 12, scope: !1509, inlinedAt: !1716)
!1727 = !DILocation(line: 119, column: 6, scope: !1509, inlinedAt: !1716)
!1728 = !DILocation(line: 119, column: 16, scope: !1509, inlinedAt: !1716)
!1729 = !DILocation(line: 120, column: 8, scope: !1509, inlinedAt: !1716)
!1730 = !DILocation(line: 120, column: 13, scope: !1509, inlinedAt: !1716)
!1731 = !DILocation(line: 322, column: 3, scope: !1673)
!1732 = !DILocation(line: 0, scope: !1673)
!1733 = !DILocation(line: 323, column: 1, scope: !1673)
!1734 = distinct !DISubprogram(name: "mode_adjust", scope: !241, file: !241, line: 339, type: !1735, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !237, retainedNodes: !1740)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!703, !703, !80, !703, !1737, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1752, !1753, !1754}
!1741 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1734, file: !241, line: 339, type: !703)
!1742 = !DILocalVariable(name: "dir", arg: 2, scope: !1734, file: !241, line: 339, type: !80)
!1743 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1734, file: !241, line: 339, type: !703)
!1744 = !DILocalVariable(name: "changes", arg: 4, scope: !1734, file: !241, line: 340, type: !1737)
!1745 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1734, file: !241, line: 340, type: !1739)
!1746 = !DILocalVariable(name: "newmode", scope: !1734, file: !241, line: 343, type: !703)
!1747 = !DILocalVariable(name: "mode_bits", scope: !1734, file: !241, line: 346, type: !703)
!1748 = !DILocalVariable(name: "affected", scope: !1749, file: !241, line: 350, type: !703)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !241, line: 349, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !241, line: 348, column: 3)
!1751 = distinct !DILexicalBlock(scope: !1734, file: !241, line: 348, column: 3)
!1752 = !DILocalVariable(name: "omit_change", scope: !1749, file: !241, line: 351, type: !703)
!1753 = !DILocalVariable(name: "value", scope: !1749, file: !241, line: 353, type: !703)
!1754 = !DILocalVariable(name: "preserved", scope: !1755, file: !241, line: 393, type: !703)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !241, line: 392, column: 11)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !241, line: 387, column: 9)
!1757 = !DILocation(line: 339, column: 21, scope: !1734)
!1758 = !DILocation(line: 339, column: 35, scope: !1734)
!1759 = !DILocation(line: 339, column: 47, scope: !1734)
!1760 = !DILocation(line: 340, column: 40, scope: !1734)
!1761 = !DILocation(line: 340, column: 57, scope: !1734)
!1762 = !DILocation(line: 343, column: 28, scope: !1734)
!1763 = !DILocation(line: 343, column: 10, scope: !1734)
!1764 = !DILocation(line: 346, column: 10, scope: !1734)
!1765 = !DILocation(line: 348, column: 19, scope: !1750)
!1766 = !DILocation(line: 348, column: 24, scope: !1750)
!1767 = !DILocation(line: 348, column: 3, scope: !1751)
!1768 = !DILocation(line: 348, column: 10, scope: !1750)
!1769 = !DILocation(line: 350, column: 34, scope: !1749)
!1770 = !DILocation(line: 350, column: 14, scope: !1749)
!1771 = !DILocation(line: 352, column: 52, scope: !1749)
!1772 = !DILocation(line: 352, column: 41, scope: !1749)
!1773 = !DILocation(line: 352, column: 39, scope: !1749)
!1774 = !DILocation(line: 351, column: 14, scope: !1749)
!1775 = !DILocation(line: 353, column: 31, scope: !1749)
!1776 = !DILocation(line: 353, column: 14, scope: !1749)
!1777 = !DILocation(line: 355, column: 7, scope: !1749)
!1778 = !DILocation(line: 362, column: 17, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1749, file: !241, line: 356, column: 9)
!1780 = !DILocation(line: 365, column: 28, scope: !1779)
!1781 = !DILocation(line: 365, column: 22, scope: !1779)
!1782 = !DILocation(line: 367, column: 30, scope: !1779)
!1783 = !DILocation(line: 367, column: 24, scope: !1779)
!1784 = !DILocation(line: 369, column: 30, scope: !1779)
!1785 = !DILocation(line: 369, column: 24, scope: !1779)
!1786 = !DILocation(line: 367, column: 21, scope: !1779)
!1787 = !DILocation(line: 369, column: 21, scope: !1779)
!1788 = !DILocation(line: 365, column: 17, scope: !1779)
!1789 = !DILocation(line: 371, column: 11, scope: !1779)
!1790 = !DILocation(line: 376, column: 24, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1779, file: !241, line: 376, column: 15)
!1792 = !DILocation(line: 376, column: 57, scope: !1791)
!1793 = !DILocation(line: 377, column: 19, scope: !1791)
!1794 = !DILocation(line: 376, column: 15, scope: !1779)
!1795 = !DILocation(line: 0, scope: !1749)
!1796 = !DILocation(line: 384, column: 17, scope: !1749)
!1797 = !DILocation(line: 384, column: 55, scope: !1749)
!1798 = !DILocation(line: 384, column: 53, scope: !1749)
!1799 = !DILocation(line: 384, column: 13, scope: !1749)
!1800 = !DILocation(line: 386, column: 24, scope: !1749)
!1801 = !DILocation(line: 386, column: 15, scope: !1749)
!1802 = !DILocation(line: 386, column: 7, scope: !1749)
!1803 = !DILocation(line: 393, column: 44, scope: !1755)
!1804 = !DILocation(line: 393, column: 33, scope: !1755)
!1805 = !DILocation(line: 393, column: 59, scope: !1755)
!1806 = !DILocation(line: 393, column: 20, scope: !1755)
!1807 = !DILocation(line: 394, column: 42, scope: !1755)
!1808 = !DILocation(line: 394, column: 23, scope: !1755)
!1809 = !DILocation(line: 395, column: 32, scope: !1755)
!1810 = !DILocation(line: 395, column: 45, scope: !1755)
!1811 = !DILocation(line: 400, column: 21, scope: !1756)
!1812 = !DILocation(line: 401, column: 19, scope: !1756)
!1813 = !DILocation(line: 402, column: 11, scope: !1756)
!1814 = !DILocation(line: 405, column: 21, scope: !1756)
!1815 = !DILocation(line: 406, column: 22, scope: !1756)
!1816 = !DILocation(line: 406, column: 19, scope: !1756)
!1817 = !DILocation(line: 407, column: 11, scope: !1756)
!1818 = !DILocation(line: 0, scope: !1755)
!1819 = !DILocation(line: 348, column: 45, scope: !1750)
!1820 = distinct !{!1820, !1767, !1821}
!1821 = !DILocation(line: 409, column: 5, scope: !1751)
!1822 = !DILocation(line: 411, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1734, file: !241, line: 411, column: 7)
!1824 = !DILocation(line: 411, column: 7, scope: !1734)
!1825 = !DILocation(line: 412, column: 17, scope: !1823)
!1826 = !DILocation(line: 412, column: 5, scope: !1823)
!1827 = !DILocation(line: 413, column: 3, scope: !1734)
!1828 = distinct !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 39, type: !729, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DILocalVariable(name: "argv0", arg: 1, scope: !1828, file: !94, line: 39, type: !58)
!1831 = !DILocalVariable(name: "slash", scope: !1828, file: !94, line: 46, type: !58)
!1832 = !DILocalVariable(name: "base", scope: !1828, file: !94, line: 47, type: !58)
!1833 = !DILocation(line: 39, column: 31, scope: !1828)
!1834 = !DILocation(line: 51, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1828, file: !94, line: 51, column: 7)
!1836 = !DILocation(line: 51, column: 7, scope: !1828)
!1837 = !DILocation(line: 55, column: 14, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !94, line: 52, column: 5)
!1839 = !DILocation(line: 54, column: 7, scope: !1838)
!1840 = !DILocation(line: 56, column: 7, scope: !1838)
!1841 = !DILocation(line: 59, column: 11, scope: !1828)
!1842 = !DILocation(line: 46, column: 15, scope: !1828)
!1843 = !DILocation(line: 60, column: 17, scope: !1828)
!1844 = !DILocation(line: 60, column: 33, scope: !1828)
!1845 = !DILocation(line: 60, column: 11, scope: !1828)
!1846 = !DILocation(line: 47, column: 15, scope: !1828)
!1847 = !DILocation(line: 61, column: 12, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1828, file: !94, line: 61, column: 7)
!1849 = !DILocation(line: 61, column: 20, scope: !1848)
!1850 = !DILocation(line: 61, column: 25, scope: !1848)
!1851 = !DILocation(line: 61, column: 42, scope: !1848)
!1852 = !DILocation(line: 61, column: 28, scope: !1848)
!1853 = !DILocation(line: 61, column: 61, scope: !1848)
!1854 = !DILocation(line: 61, column: 7, scope: !1828)
!1855 = !DILocation(line: 64, column: 11, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !94, line: 64, column: 11)
!1857 = distinct !DILexicalBlock(scope: !1848, file: !94, line: 62, column: 5)
!1858 = !DILocation(line: 64, column: 36, scope: !1856)
!1859 = !DILocation(line: 64, column: 11, scope: !1857)
!1860 = !DILocation(line: 66, column: 24, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !94, line: 65, column: 9)
!1862 = !DILocation(line: 70, column: 41, scope: !1861)
!1863 = !DILocation(line: 72, column: 9, scope: !1861)
!1864 = !DILocation(line: 84, column: 16, scope: !1828)
!1865 = !DILocation(line: 90, column: 27, scope: !1828)
!1866 = !DILocation(line: 92, column: 1, scope: !1828)
!1867 = distinct !DISubprogram(name: "clone_quoting_options", scope: !128, file: !128, line: 122, type: !1868, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1871)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1870, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1871 = !{!1872, !1873, !1874}
!1872 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !128, line: 122, type: !1870)
!1873 = !DILocalVariable(name: "e", scope: !1867, file: !128, line: 124, type: !29)
!1874 = !DILocalVariable(name: "p", scope: !1867, file: !128, line: 125, type: !1870)
!1875 = !DILocation(line: 122, column: 48, scope: !1867)
!1876 = !DILocation(line: 124, column: 11, scope: !1867)
!1877 = !DILocation(line: 124, column: 7, scope: !1867)
!1878 = !DILocation(line: 125, column: 40, scope: !1867)
!1879 = !DILocation(line: 125, column: 31, scope: !1867)
!1880 = !DILocation(line: 125, column: 27, scope: !1867)
!1881 = !DILocation(line: 127, column: 9, scope: !1867)
!1882 = !DILocation(line: 128, column: 3, scope: !1867)
!1883 = distinct !DISubprogram(name: "get_quoting_style", scope: !128, file: !128, line: 133, type: !1884, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1888)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!5, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "o", arg: 1, scope: !1883, file: !128, line: 133, type: !1886)
!1890 = !DILocation(line: 133, column: 50, scope: !1883)
!1891 = !DILocation(line: 135, column: 11, scope: !1883)
!1892 = !DILocation(line: 135, column: 46, scope: !1883)
!1893 = !{!1894, !754, i64 0}
!1894 = !{!"quoting_options", !754, i64 0, !845, i64 4, !754, i64 8, !753, i64 40, !753, i64 48}
!1895 = !DILocation(line: 135, column: 3, scope: !1883)
!1896 = distinct !DISubprogram(name: "set_quoting_style", scope: !128, file: !128, line: 141, type: !1897, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1870, !5}
!1899 = !{!1900, !1901}
!1900 = !DILocalVariable(name: "o", arg: 1, scope: !1896, file: !128, line: 141, type: !1870)
!1901 = !DILocalVariable(name: "s", arg: 2, scope: !1896, file: !128, line: 141, type: !5)
!1902 = !DILocation(line: 141, column: 44, scope: !1896)
!1903 = !DILocation(line: 141, column: 66, scope: !1896)
!1904 = !DILocation(line: 143, column: 4, scope: !1896)
!1905 = !DILocation(line: 143, column: 39, scope: !1896)
!1906 = !DILocation(line: 143, column: 45, scope: !1896)
!1907 = !DILocation(line: 144, column: 1, scope: !1896)
!1908 = distinct !DISubprogram(name: "set_char_quoting", scope: !128, file: !128, line: 152, type: !1909, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!29, !1870, !45, !29}
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1918, !1919}
!1912 = !DILocalVariable(name: "o", arg: 1, scope: !1908, file: !128, line: 152, type: !1870)
!1913 = !DILocalVariable(name: "c", arg: 2, scope: !1908, file: !128, line: 152, type: !45)
!1914 = !DILocalVariable(name: "i", arg: 3, scope: !1908, file: !128, line: 152, type: !29)
!1915 = !DILocalVariable(name: "uc", scope: !1908, file: !128, line: 154, type: !216)
!1916 = !DILocalVariable(name: "p", scope: !1908, file: !128, line: 155, type: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1918 = !DILocalVariable(name: "shift", scope: !1908, file: !128, line: 157, type: !29)
!1919 = !DILocalVariable(name: "r", scope: !1908, file: !128, line: 158, type: !29)
!1920 = !DILocation(line: 152, column: 43, scope: !1908)
!1921 = !DILocation(line: 152, column: 51, scope: !1908)
!1922 = !DILocation(line: 152, column: 58, scope: !1908)
!1923 = !DILocation(line: 154, column: 17, scope: !1908)
!1924 = !DILocation(line: 156, column: 6, scope: !1908)
!1925 = !DILocation(line: 156, column: 62, scope: !1908)
!1926 = !DILocation(line: 156, column: 57, scope: !1908)
!1927 = !DILocation(line: 155, column: 17, scope: !1908)
!1928 = !DILocation(line: 157, column: 15, scope: !1908)
!1929 = !DILocation(line: 157, column: 7, scope: !1908)
!1930 = !DILocation(line: 158, column: 12, scope: !1908)
!1931 = !DILocation(line: 158, column: 15, scope: !1908)
!1932 = !DILocation(line: 158, column: 25, scope: !1908)
!1933 = !DILocation(line: 158, column: 7, scope: !1908)
!1934 = !DILocation(line: 159, column: 13, scope: !1908)
!1935 = !DILocation(line: 159, column: 18, scope: !1908)
!1936 = !DILocation(line: 159, column: 23, scope: !1908)
!1937 = !DILocation(line: 159, column: 6, scope: !1908)
!1938 = !DILocation(line: 160, column: 3, scope: !1908)
!1939 = distinct !DISubprogram(name: "set_quoting_flags", scope: !128, file: !128, line: 168, type: !1940, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!29, !1870, !29}
!1942 = !{!1943, !1944, !1945}
!1943 = !DILocalVariable(name: "o", arg: 1, scope: !1939, file: !128, line: 168, type: !1870)
!1944 = !DILocalVariable(name: "i", arg: 2, scope: !1939, file: !128, line: 168, type: !29)
!1945 = !DILocalVariable(name: "r", scope: !1939, file: !128, line: 170, type: !29)
!1946 = !DILocation(line: 168, column: 44, scope: !1939)
!1947 = !DILocation(line: 168, column: 51, scope: !1939)
!1948 = !DILocation(line: 171, column: 8, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1939, file: !128, line: 171, column: 7)
!1950 = !DILocation(line: 171, column: 7, scope: !1939)
!1951 = !DILocation(line: 173, column: 10, scope: !1939)
!1952 = !{!1894, !845, i64 4}
!1953 = !DILocation(line: 170, column: 7, scope: !1939)
!1954 = !DILocation(line: 174, column: 12, scope: !1939)
!1955 = !DILocation(line: 175, column: 3, scope: !1939)
!1956 = distinct !DISubprogram(name: "set_custom_quoting", scope: !128, file: !128, line: 179, type: !1957, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1870, !58, !58}
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "o", arg: 1, scope: !1956, file: !128, line: 179, type: !1870)
!1961 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1956, file: !128, line: 180, type: !58)
!1962 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1956, file: !128, line: 180, type: !58)
!1963 = !DILocation(line: 179, column: 45, scope: !1956)
!1964 = !DILocation(line: 180, column: 33, scope: !1956)
!1965 = !DILocation(line: 180, column: 57, scope: !1956)
!1966 = !DILocation(line: 182, column: 8, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1956, file: !128, line: 182, column: 7)
!1968 = !DILocation(line: 182, column: 7, scope: !1956)
!1969 = !DILocation(line: 184, column: 6, scope: !1956)
!1970 = !DILocation(line: 184, column: 12, scope: !1956)
!1971 = !DILocation(line: 185, column: 8, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1956, file: !128, line: 185, column: 7)
!1973 = !DILocation(line: 185, column: 23, scope: !1972)
!1974 = !DILocation(line: 185, column: 19, scope: !1972)
!1975 = !DILocation(line: 186, column: 5, scope: !1972)
!1976 = !DILocation(line: 187, column: 6, scope: !1956)
!1977 = !DILocation(line: 187, column: 17, scope: !1956)
!1978 = !{!1894, !753, i64 40}
!1979 = !DILocation(line: 188, column: 6, scope: !1956)
!1980 = !DILocation(line: 188, column: 18, scope: !1956)
!1981 = !{!1894, !753, i64 48}
!1982 = !DILocation(line: 189, column: 1, scope: !1956)
!1983 = distinct !DISubprogram(name: "quotearg_buffer", scope: !128, file: !128, line: 784, type: !1984, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!122, !44, !122, !58, !122, !1886}
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1987 = !DILocalVariable(name: "buffer", arg: 1, scope: !1983, file: !128, line: 784, type: !44)
!1988 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1983, file: !128, line: 784, type: !122)
!1989 = !DILocalVariable(name: "arg", arg: 3, scope: !1983, file: !128, line: 785, type: !58)
!1990 = !DILocalVariable(name: "argsize", arg: 4, scope: !1983, file: !128, line: 785, type: !122)
!1991 = !DILocalVariable(name: "o", arg: 5, scope: !1983, file: !128, line: 786, type: !1886)
!1992 = !DILocalVariable(name: "p", scope: !1983, file: !128, line: 788, type: !1886)
!1993 = !DILocalVariable(name: "e", scope: !1983, file: !128, line: 789, type: !29)
!1994 = !DILocalVariable(name: "r", scope: !1983, file: !128, line: 790, type: !122)
!1995 = !DILocation(line: 784, column: 24, scope: !1983)
!1996 = !DILocation(line: 784, column: 39, scope: !1983)
!1997 = !DILocation(line: 785, column: 30, scope: !1983)
!1998 = !DILocation(line: 785, column: 42, scope: !1983)
!1999 = !DILocation(line: 786, column: 48, scope: !1983)
!2000 = !DILocation(line: 788, column: 37, scope: !1983)
!2001 = !DILocation(line: 788, column: 33, scope: !1983)
!2002 = !DILocation(line: 789, column: 11, scope: !1983)
!2003 = !DILocation(line: 789, column: 7, scope: !1983)
!2004 = !DILocation(line: 791, column: 43, scope: !1983)
!2005 = !DILocation(line: 791, column: 53, scope: !1983)
!2006 = !DILocation(line: 791, column: 60, scope: !1983)
!2007 = !DILocation(line: 792, column: 43, scope: !1983)
!2008 = !DILocation(line: 792, column: 58, scope: !1983)
!2009 = !DILocation(line: 790, column: 14, scope: !1983)
!2010 = !DILocation(line: 790, column: 10, scope: !1983)
!2011 = !DILocation(line: 793, column: 9, scope: !1983)
!2012 = !DILocation(line: 794, column: 3, scope: !1983)
!2013 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !128, file: !128, line: 256, type: !2014, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2018)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!122, !44, !122, !58, !122, !5, !29, !2016, !58, !58}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2043, !2044, !2045, !2046, !2047, !2050, !2051, !2069, !2072, !2073, !2080}
!2019 = !DILocalVariable(name: "buffer", arg: 1, scope: !2013, file: !128, line: 256, type: !44)
!2020 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2013, file: !128, line: 256, type: !122)
!2021 = !DILocalVariable(name: "arg", arg: 3, scope: !2013, file: !128, line: 257, type: !58)
!2022 = !DILocalVariable(name: "argsize", arg: 4, scope: !2013, file: !128, line: 257, type: !122)
!2023 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2013, file: !128, line: 258, type: !5)
!2024 = !DILocalVariable(name: "flags", arg: 6, scope: !2013, file: !128, line: 258, type: !29)
!2025 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2013, file: !128, line: 259, type: !2016)
!2026 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2013, file: !128, line: 260, type: !58)
!2027 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2013, file: !128, line: 261, type: !58)
!2028 = !DILocalVariable(name: "i", scope: !2013, file: !128, line: 263, type: !122)
!2029 = !DILocalVariable(name: "len", scope: !2013, file: !128, line: 264, type: !122)
!2030 = !DILocalVariable(name: "orig_buffersize", scope: !2013, file: !128, line: 265, type: !122)
!2031 = !DILocalVariable(name: "quote_string", scope: !2013, file: !128, line: 266, type: !58)
!2032 = !DILocalVariable(name: "quote_string_len", scope: !2013, file: !128, line: 267, type: !122)
!2033 = !DILocalVariable(name: "backslash_escapes", scope: !2013, file: !128, line: 268, type: !80)
!2034 = !DILocalVariable(name: "unibyte_locale", scope: !2013, file: !128, line: 269, type: !80)
!2035 = !DILocalVariable(name: "elide_outer_quotes", scope: !2013, file: !128, line: 270, type: !80)
!2036 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2013, file: !128, line: 271, type: !80)
!2037 = !DILocalVariable(name: "encountered_single_quote", scope: !2013, file: !128, line: 272, type: !80)
!2038 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2013, file: !128, line: 273, type: !80)
!2039 = !DILocalVariable(name: "c", scope: !2040, file: !128, line: 402, type: !216)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !128, line: 401, column: 5)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !128, line: 400, column: 3)
!2042 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 400, column: 3)
!2043 = !DILocalVariable(name: "esc", scope: !2040, file: !128, line: 403, type: !216)
!2044 = !DILocalVariable(name: "is_right_quote", scope: !2040, file: !128, line: 404, type: !80)
!2045 = !DILocalVariable(name: "escaping", scope: !2040, file: !128, line: 405, type: !80)
!2046 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2040, file: !128, line: 406, type: !80)
!2047 = !DILocalVariable(name: "m", scope: !2048, file: !128, line: 610, type: !122)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 608, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 426, column: 9)
!2050 = !DILocalVariable(name: "printable", scope: !2048, file: !128, line: 612, type: !80)
!2051 = !DILocalVariable(name: "mbstate", scope: !2052, file: !128, line: 621, type: !2054)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !128, line: 620, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !128, line: 614, column: 17)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2055, line: 6, baseType: !2056)
!2055 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2057, line: 21, baseType: !2058)
!2057 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 13, size: 64, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2058, file: !2057, line: 15, baseType: !29, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2058, file: !2057, line: 20, baseType: !2062, size: 32, offset: 32)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2058, file: !2057, line: 16, size: 32, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2062, file: !2057, line: 18, baseType: !7, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2062, file: !2057, line: 19, baseType: !2066, size: 32)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !2067)
!2067 = !{!2068}
!2068 = !DISubrange(count: 4)
!2069 = !DILocalVariable(name: "w", scope: !2070, file: !128, line: 631, type: !2071)
!2070 = distinct !DILexicalBlock(scope: !2052, file: !128, line: 630, column: 19)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !123, line: 90, baseType: !29)
!2072 = !DILocalVariable(name: "bytes", scope: !2070, file: !128, line: 632, type: !122)
!2073 = !DILocalVariable(name: "j", scope: !2074, file: !128, line: 657, type: !122)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !128, line: 656, column: 27)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !128, line: 654, column: 29)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !128, line: 649, column: 23)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !128, line: 641, column: 30)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !128, line: 636, column: 30)
!2079 = distinct !DILexicalBlock(scope: !2070, file: !128, line: 634, column: 25)
!2080 = !DILocalVariable(name: "ilim", scope: !2081, file: !128, line: 684, type: !122)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !128, line: 681, column: 15)
!2082 = distinct !DILexicalBlock(scope: !2048, file: !128, line: 680, column: 17)
!2083 = !DILocation(line: 256, column: 33, scope: !2013)
!2084 = !DILocation(line: 256, column: 48, scope: !2013)
!2085 = !DILocation(line: 257, column: 39, scope: !2013)
!2086 = !DILocation(line: 257, column: 51, scope: !2013)
!2087 = !DILocation(line: 258, column: 46, scope: !2013)
!2088 = !DILocation(line: 258, column: 65, scope: !2013)
!2089 = !DILocation(line: 259, column: 47, scope: !2013)
!2090 = !DILocation(line: 260, column: 39, scope: !2013)
!2091 = !DILocation(line: 261, column: 39, scope: !2013)
!2092 = !DILocation(line: 264, column: 10, scope: !2013)
!2093 = !DILocation(line: 265, column: 10, scope: !2013)
!2094 = !DILocation(line: 266, column: 15, scope: !2013)
!2095 = !DILocation(line: 267, column: 10, scope: !2013)
!2096 = !DILocation(line: 268, column: 8, scope: !2013)
!2097 = !DILocation(line: 269, column: 25, scope: !2013)
!2098 = !DILocation(line: 269, column: 36, scope: !2013)
!2099 = !DILocation(line: 270, column: 8, scope: !2013)
!2100 = !DILocation(line: 271, column: 8, scope: !2013)
!2101 = !DILocation(line: 272, column: 8, scope: !2013)
!2102 = !DILocation(line: 273, column: 8, scope: !2013)
!2103 = !DILocation(line: 273, column: 3, scope: !2013)
!2104 = !DILocation(line: 0, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 317, column: 5)
!2106 = !DILocation(line: 316, column: 3, scope: !2013)
!2107 = !DILocation(line: 323, column: 11, scope: !2105)
!2108 = !DILocation(line: 323, column: 12, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !128, line: 323, column: 11)
!2110 = !DILocation(line: 324, column: 9, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !128, line: 324, column: 9)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !128, line: 324, column: 9)
!2113 = !DILocation(line: 324, column: 9, scope: !2112)
!2114 = !DILocation(line: 362, column: 26, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !128, line: 340, column: 11)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !128, line: 339, column: 13)
!2117 = distinct !DILexicalBlock(scope: !2105, file: !128, line: 338, column: 7)
!2118 = !DILocation(line: 363, column: 27, scope: !2115)
!2119 = !DILocation(line: 364, column: 11, scope: !2115)
!2120 = !DILocation(line: 365, column: 14, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !128, line: 365, column: 13)
!2122 = !DILocation(line: 365, column: 13, scope: !2117)
!2123 = !DILocation(line: 366, column: 43, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !128, line: 366, column: 11)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !128, line: 366, column: 11)
!2126 = !DILocation(line: 366, column: 11, scope: !2125)
!2127 = !DILocation(line: 367, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !128, line: 367, column: 13)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !128, line: 367, column: 13)
!2130 = !DILocation(line: 367, column: 13, scope: !2129)
!2131 = !DILocation(line: 366, column: 70, scope: !2124)
!2132 = distinct !{!2132, !2126, !2133}
!2133 = !DILocation(line: 367, column: 13, scope: !2125)
!2134 = !DILocation(line: 370, column: 28, scope: !2117)
!2135 = !DILocation(line: 372, column: 7, scope: !2105)
!2136 = !DILocation(line: 376, column: 7, scope: !2105)
!2137 = !DILocation(line: 379, column: 7, scope: !2105)
!2138 = !DILocation(line: 381, column: 12, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2105, file: !128, line: 381, column: 11)
!2140 = !DILocation(line: 381, column: 11, scope: !2105)
!2141 = !DILocation(line: 0, scope: !2139)
!2142 = !DILocation(line: 386, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2105, file: !128, line: 386, column: 11)
!2144 = !DILocation(line: 386, column: 11, scope: !2105)
!2145 = !DILocation(line: 387, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !128, line: 387, column: 9)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !128, line: 387, column: 9)
!2148 = !DILocation(line: 387, column: 9, scope: !2147)
!2149 = !DILocation(line: 394, column: 7, scope: !2105)
!2150 = !DILocation(line: 397, column: 7, scope: !2105)
!2151 = !DILocation(line: 0, scope: !2013)
!2152 = !DILocation(line: 263, column: 10, scope: !2013)
!2153 = !DILocation(line: 400, column: 8, scope: !2042)
!2154 = !DILocation(line: 0, scope: !2041)
!2155 = !DILocation(line: 400, column: 27, scope: !2041)
!2156 = !DILocation(line: 400, column: 19, scope: !2041)
!2157 = !DILocation(line: 400, column: 41, scope: !2041)
!2158 = !DILocation(line: 400, column: 48, scope: !2041)
!2159 = !DILocation(line: 400, column: 3, scope: !2042)
!2160 = !DILocation(line: 400, column: 60, scope: !2041)
!2161 = !DILocation(line: 404, column: 12, scope: !2040)
!2162 = !DILocation(line: 405, column: 12, scope: !2040)
!2163 = !DILocation(line: 406, column: 12, scope: !2040)
!2164 = !DILocation(line: 409, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 408, column: 11)
!2166 = !DILocation(line: 411, column: 17, scope: !2165)
!2167 = !DILocation(line: 412, column: 39, scope: !2165)
!2168 = !DILocation(line: 416, column: 32, scope: !2165)
!2169 = !DILocation(line: 412, column: 19, scope: !2165)
!2170 = !DILocation(line: 412, column: 15, scope: !2165)
!2171 = !DILocation(line: 417, column: 11, scope: !2165)
!2172 = !DILocation(line: 417, column: 26, scope: !2165)
!2173 = !DILocation(line: 417, column: 14, scope: !2165)
!2174 = !DILocation(line: 417, column: 63, scope: !2165)
!2175 = !DILocation(line: 408, column: 11, scope: !2040)
!2176 = !DILocation(line: 0, scope: !2040)
!2177 = !DILocation(line: 424, column: 11, scope: !2040)
!2178 = !DILocation(line: 402, column: 21, scope: !2040)
!2179 = !DILocation(line: 425, column: 7, scope: !2040)
!2180 = !DILocation(line: 428, column: 15, scope: !2049)
!2181 = !DILocation(line: 430, column: 15, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !128, line: 430, column: 15)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !128, line: 429, column: 13)
!2184 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 428, column: 15)
!2185 = !DILocation(line: 430, column: 15, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !128, line: 430, column: 15)
!2187 = !DILocation(line: 430, column: 15, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !128, line: 430, column: 15)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !128, line: 430, column: 15)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !128, line: 430, column: 15)
!2191 = !DILocation(line: 430, column: 15, scope: !2189)
!2192 = !DILocation(line: 430, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !128, line: 430, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !128, line: 430, column: 15)
!2195 = !DILocation(line: 430, column: 15, scope: !2194)
!2196 = !DILocation(line: 430, column: 15, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !128, line: 430, column: 15)
!2198 = distinct !DILexicalBlock(scope: !2190, file: !128, line: 430, column: 15)
!2199 = !DILocation(line: 430, column: 15, scope: !2198)
!2200 = !DILocation(line: 430, column: 15, scope: !2190)
!2201 = !DILocation(line: 430, column: 15, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !128, line: 430, column: 15)
!2203 = distinct !DILexicalBlock(scope: !2182, file: !128, line: 430, column: 15)
!2204 = !DILocation(line: 430, column: 15, scope: !2203)
!2205 = !DILocation(line: 438, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2183, file: !128, line: 437, column: 19)
!2207 = !DILocation(line: 438, column: 24, scope: !2206)
!2208 = !DILocation(line: 438, column: 28, scope: !2206)
!2209 = !DILocation(line: 438, column: 38, scope: !2206)
!2210 = !DILocation(line: 438, column: 48, scope: !2206)
!2211 = !DILocation(line: 438, column: 59, scope: !2206)
!2212 = !DILocation(line: 440, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !128, line: 440, column: 19)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !128, line: 440, column: 19)
!2215 = distinct !DILexicalBlock(scope: !2206, file: !128, line: 439, column: 17)
!2216 = !DILocation(line: 440, column: 19, scope: !2214)
!2217 = !DILocation(line: 441, column: 19, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !128, line: 441, column: 19)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !128, line: 441, column: 19)
!2220 = !DILocation(line: 441, column: 19, scope: !2219)
!2221 = !DILocation(line: 442, column: 17, scope: !2215)
!2222 = !DILocation(line: 449, column: 20, scope: !2184)
!2223 = !DILocation(line: 454, column: 11, scope: !2049)
!2224 = !DILocation(line: 457, column: 19, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 455, column: 13)
!2226 = !DILocation(line: 463, column: 19, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2225, file: !128, line: 462, column: 19)
!2228 = !DILocation(line: 463, column: 24, scope: !2227)
!2229 = !DILocation(line: 463, column: 28, scope: !2227)
!2230 = !DILocation(line: 463, column: 38, scope: !2227)
!2231 = !DILocation(line: 463, column: 47, scope: !2227)
!2232 = !DILocation(line: 463, column: 41, scope: !2227)
!2233 = !DILocation(line: 463, column: 52, scope: !2227)
!2234 = !DILocation(line: 462, column: 19, scope: !2225)
!2235 = !DILocation(line: 464, column: 25, scope: !2227)
!2236 = !DILocation(line: 464, column: 17, scope: !2227)
!2237 = !DILocation(line: 471, column: 25, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2227, file: !128, line: 465, column: 19)
!2239 = !DILocation(line: 475, column: 21, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !128, line: 475, column: 21)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !128, line: 475, column: 21)
!2242 = !DILocation(line: 475, column: 21, scope: !2241)
!2243 = !DILocation(line: 476, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !128, line: 476, column: 21)
!2245 = distinct !DILexicalBlock(scope: !2238, file: !128, line: 476, column: 21)
!2246 = !DILocation(line: 476, column: 21, scope: !2245)
!2247 = !DILocation(line: 477, column: 21, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !128, line: 477, column: 21)
!2249 = distinct !DILexicalBlock(scope: !2238, file: !128, line: 477, column: 21)
!2250 = !DILocation(line: 477, column: 21, scope: !2249)
!2251 = !DILocation(line: 478, column: 21, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !128, line: 478, column: 21)
!2253 = distinct !DILexicalBlock(scope: !2238, file: !128, line: 478, column: 21)
!2254 = !DILocation(line: 478, column: 21, scope: !2253)
!2255 = !DILocation(line: 479, column: 21, scope: !2238)
!2256 = !DILocation(line: 403, column: 21, scope: !2040)
!2257 = !DILocation(line: 492, column: 31, scope: !2049)
!2258 = !DILocation(line: 493, column: 31, scope: !2049)
!2259 = !DILocation(line: 495, column: 31, scope: !2049)
!2260 = !DILocation(line: 496, column: 31, scope: !2049)
!2261 = !DILocation(line: 497, column: 31, scope: !2049)
!2262 = !DILocation(line: 500, column: 15, scope: !2049)
!2263 = !DILocation(line: 502, column: 19, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !128, line: 501, column: 13)
!2265 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 500, column: 15)
!2266 = !DILocation(line: 509, column: 33, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 509, column: 15)
!2268 = !DILocation(line: 0, scope: !2049)
!2269 = !DILocation(line: 514, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 513, column: 15)
!2271 = !DILocation(line: 518, column: 15, scope: !2049)
!2272 = !DILocation(line: 526, column: 26, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 526, column: 15)
!2274 = !DILocation(line: 526, column: 15, scope: !2049)
!2275 = !DILocation(line: 526, column: 40, scope: !2273)
!2276 = !DILocation(line: 526, column: 47, scope: !2273)
!2277 = !DILocation(line: 530, column: 17, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 530, column: 15)
!2279 = !DILocation(line: 526, column: 18, scope: !2273)
!2280 = !DILocation(line: 526, column: 65, scope: !2273)
!2281 = !DILocation(line: 530, column: 15, scope: !2049)
!2282 = !DILocation(line: 535, column: 11, scope: !2049)
!2283 = !DILocation(line: 549, column: 15, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 548, column: 15)
!2285 = !DILocation(line: 556, column: 15, scope: !2049)
!2286 = !DILocation(line: 558, column: 19, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !128, line: 557, column: 13)
!2288 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 556, column: 15)
!2289 = !DILocation(line: 561, column: 19, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !128, line: 561, column: 19)
!2291 = !DILocation(line: 561, column: 35, scope: !2290)
!2292 = !DILocation(line: 561, column: 30, scope: !2290)
!2293 = !DILocation(line: 570, column: 15, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !128, line: 570, column: 15)
!2295 = distinct !DILexicalBlock(scope: !2287, file: !128, line: 570, column: 15)
!2296 = !DILocation(line: 570, column: 15, scope: !2295)
!2297 = !DILocation(line: 571, column: 15, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !128, line: 571, column: 15)
!2299 = distinct !DILexicalBlock(scope: !2287, file: !128, line: 571, column: 15)
!2300 = !DILocation(line: 571, column: 15, scope: !2299)
!2301 = !DILocation(line: 572, column: 15, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !128, line: 572, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2287, file: !128, line: 572, column: 15)
!2304 = !DILocation(line: 572, column: 15, scope: !2303)
!2305 = !DILocation(line: 574, column: 13, scope: !2287)
!2306 = !DILocation(line: 614, column: 17, scope: !2048)
!2307 = !DILocation(line: 610, column: 20, scope: !2048)
!2308 = !DILocation(line: 617, column: 29, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2053, file: !128, line: 615, column: 15)
!2310 = !{!1180, !1180, i64 0}
!2311 = !DILocation(line: 617, column: 27, scope: !2309)
!2312 = !DILocation(line: 612, column: 18, scope: !2048)
!2313 = !DILocation(line: 618, column: 15, scope: !2309)
!2314 = !DILocation(line: 621, column: 17, scope: !2052)
!2315 = !DILocation(line: 622, column: 17, scope: !2052)
!2316 = !DILocation(line: 626, column: 29, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2052, file: !128, line: 626, column: 21)
!2318 = !DILocation(line: 626, column: 21, scope: !2052)
!2319 = !DILocation(line: 627, column: 29, scope: !2317)
!2320 = !DILocation(line: 627, column: 19, scope: !2317)
!2321 = !DILocation(line: 0, scope: !2165)
!2322 = !DILocation(line: 629, column: 17, scope: !2052)
!2323 = !DILocation(line: 624, column: 19, scope: !2052)
!2324 = !DILocation(line: 625, column: 27, scope: !2052)
!2325 = !DILocation(line: 631, column: 21, scope: !2070)
!2326 = !DILocation(line: 632, column: 56, scope: !2070)
!2327 = !DILocation(line: 632, column: 50, scope: !2070)
!2328 = !DILocation(line: 633, column: 53, scope: !2070)
!2329 = !DILocation(line: 621, column: 27, scope: !2052)
!2330 = !DILocation(line: 631, column: 29, scope: !2070)
!2331 = !DILocation(line: 632, column: 36, scope: !2070)
!2332 = !DILocation(line: 632, column: 28, scope: !2070)
!2333 = !DILocation(line: 634, column: 25, scope: !2070)
!2334 = !DILocation(line: 644, column: 38, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2077, file: !128, line: 642, column: 23)
!2336 = !DILocation(line: 644, column: 48, scope: !2335)
!2337 = !DILocation(line: 644, column: 51, scope: !2335)
!2338 = !DILocation(line: 644, column: 25, scope: !2335)
!2339 = !DILocation(line: 645, column: 28, scope: !2335)
!2340 = !DILocation(line: 644, column: 34, scope: !2335)
!2341 = distinct !{!2341, !2338, !2339}
!2342 = !DILocation(line: 658, column: 43, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !128, line: 658, column: 29)
!2344 = distinct !DILexicalBlock(scope: !2074, file: !128, line: 658, column: 29)
!2345 = !DILocation(line: 655, column: 29, scope: !2075)
!2346 = !DILocation(line: 657, column: 36, scope: !2074)
!2347 = !DILocation(line: 659, column: 49, scope: !2343)
!2348 = !DILocation(line: 659, column: 39, scope: !2343)
!2349 = !DILocation(line: 659, column: 31, scope: !2343)
!2350 = !DILocation(line: 658, column: 53, scope: !2343)
!2351 = !DILocation(line: 658, column: 29, scope: !2344)
!2352 = distinct !{!2352, !2351, !2353}
!2353 = !DILocation(line: 667, column: 33, scope: !2344)
!2354 = !DILocation(line: 674, column: 19, scope: !2052)
!2355 = !DILocation(line: 670, column: 41, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2076, file: !128, line: 670, column: 29)
!2357 = !DILocation(line: 670, column: 31, scope: !2356)
!2358 = !DILocation(line: 670, column: 29, scope: !2076)
!2359 = !DILocation(line: 672, column: 27, scope: !2076)
!2360 = !DILocation(line: 675, column: 26, scope: !2052)
!2361 = !DILocation(line: 675, column: 24, scope: !2052)
!2362 = !DILocation(line: 674, column: 19, scope: !2070)
!2363 = distinct !{!2363, !2322, !2364}
!2364 = !DILocation(line: 675, column: 44, scope: !2052)
!2365 = !DILocation(line: 676, column: 15, scope: !2053)
!2366 = !DILocation(line: 0, scope: !2317)
!2367 = !DILocation(line: 0, scope: !2052)
!2368 = !DILocation(line: 678, column: 40, scope: !2048)
!2369 = !DILocation(line: 680, column: 19, scope: !2082)
!2370 = !DILocation(line: 680, column: 45, scope: !2082)
!2371 = !DILocation(line: 680, column: 23, scope: !2082)
!2372 = !DILocation(line: 684, column: 33, scope: !2081)
!2373 = !DILocation(line: 684, column: 24, scope: !2081)
!2374 = !DILocation(line: 686, column: 17, scope: !2081)
!2375 = !DILocation(line: 0, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !128, line: 687, column: 19)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !128, line: 686, column: 17)
!2378 = distinct !DILexicalBlock(scope: !2081, file: !128, line: 686, column: 17)
!2379 = !DILocation(line: 0, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !128, line: 703, column: 21)
!2381 = !DILocation(line: 0, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !128, line: 696, column: 23)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !128, line: 695, column: 30)
!2384 = distinct !DILexicalBlock(scope: !2376, file: !128, line: 688, column: 25)
!2385 = !DILocation(line: 688, column: 43, scope: !2384)
!2386 = !DILocation(line: 690, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !128, line: 690, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !128, line: 689, column: 23)
!2389 = !DILocation(line: 690, column: 25, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !128, line: 690, column: 25)
!2391 = !DILocation(line: 690, column: 25, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !128, line: 690, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !128, line: 690, column: 25)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !128, line: 690, column: 25)
!2395 = !DILocation(line: 690, column: 25, scope: !2393)
!2396 = !DILocation(line: 690, column: 25, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !128, line: 690, column: 25)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !128, line: 690, column: 25)
!2399 = !DILocation(line: 690, column: 25, scope: !2398)
!2400 = !DILocation(line: 690, column: 25, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !128, line: 690, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2394, file: !128, line: 690, column: 25)
!2403 = !DILocation(line: 690, column: 25, scope: !2402)
!2404 = !DILocation(line: 690, column: 25, scope: !2394)
!2405 = !DILocation(line: 690, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !128, line: 690, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2387, file: !128, line: 690, column: 25)
!2408 = !DILocation(line: 690, column: 25, scope: !2407)
!2409 = !DILocation(line: 691, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !128, line: 691, column: 25)
!2411 = distinct !DILexicalBlock(scope: !2388, file: !128, line: 691, column: 25)
!2412 = !DILocation(line: 691, column: 25, scope: !2411)
!2413 = !DILocation(line: 692, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !128, line: 692, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2388, file: !128, line: 692, column: 25)
!2416 = !DILocation(line: 692, column: 25, scope: !2415)
!2417 = !DILocation(line: 693, column: 38, scope: !2388)
!2418 = !DILocation(line: 693, column: 33, scope: !2388)
!2419 = !DILocation(line: 694, column: 23, scope: !2388)
!2420 = !DILocation(line: 695, column: 30, scope: !2383)
!2421 = !DILocation(line: 695, column: 30, scope: !2384)
!2422 = !DILocation(line: 697, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !128, line: 697, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2382, file: !128, line: 697, column: 25)
!2425 = !DILocation(line: 697, column: 25, scope: !2424)
!2426 = !DILocation(line: 699, column: 23, scope: !2382)
!2427 = !DILocation(line: 0, scope: !2415)
!2428 = !DILocation(line: 0, scope: !2388)
!2429 = !DILocation(line: 0, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2165, file: !128, line: 418, column: 9)
!2431 = !DILocation(line: 0, scope: !2387)
!2432 = !DILocation(line: 700, column: 35, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2376, file: !128, line: 700, column: 25)
!2434 = !DILocation(line: 700, column: 30, scope: !2433)
!2435 = !DILocation(line: 700, column: 25, scope: !2376)
!2436 = !DILocation(line: 702, column: 21, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !128, line: 702, column: 21)
!2438 = distinct !DILexicalBlock(scope: !2376, file: !128, line: 702, column: 21)
!2439 = !DILocation(line: 702, column: 21, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !128, line: 702, column: 21)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !128, line: 702, column: 21)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !128, line: 702, column: 21)
!2443 = !DILocation(line: 702, column: 21, scope: !2441)
!2444 = !DILocation(line: 702, column: 21, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !128, line: 702, column: 21)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !128, line: 702, column: 21)
!2447 = !DILocation(line: 702, column: 21, scope: !2446)
!2448 = !DILocation(line: 702, column: 21, scope: !2442)
!2449 = !DILocation(line: 0, scope: !2424)
!2450 = !DILocation(line: 703, column: 21, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2380, file: !128, line: 703, column: 21)
!2452 = !DILocation(line: 703, column: 21, scope: !2380)
!2453 = !DILocation(line: 704, column: 25, scope: !2376)
!2454 = !DILocation(line: 686, column: 17, scope: !2377)
!2455 = distinct !{!2455, !2456, !2457}
!2456 = !DILocation(line: 686, column: 17, scope: !2378)
!2457 = !DILocation(line: 705, column: 19, scope: !2378)
!2458 = !DILocation(line: 0, scope: !2042)
!2459 = !DILocation(line: 416, column: 30, scope: !2165)
!2460 = !DILocation(line: 712, column: 34, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 712, column: 11)
!2462 = !DILocation(line: 714, column: 14, scope: !2461)
!2463 = !DILocation(line: 715, column: 14, scope: !2461)
!2464 = !DILocation(line: 715, column: 35, scope: !2461)
!2465 = !DILocation(line: 715, column: 17, scope: !2461)
!2466 = !DILocation(line: 715, column: 47, scope: !2461)
!2467 = !DILocation(line: 715, column: 65, scope: !2461)
!2468 = !DILocation(line: 716, column: 15, scope: !2461)
!2469 = !DILocation(line: 716, column: 11, scope: !2461)
!2470 = !DILocation(line: 712, column: 11, scope: !2040)
!2471 = !DILocation(line: 400, column: 10, scope: !2042)
!2472 = !DILocation(line: 0, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !128, line: 519, column: 13)
!2474 = distinct !DILexicalBlock(scope: !2049, file: !128, line: 518, column: 15)
!2475 = !DILocation(line: 720, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 720, column: 7)
!2477 = !DILocation(line: 720, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !128, line: 720, column: 7)
!2479 = !DILocation(line: 720, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !128, line: 720, column: 7)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !128, line: 720, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !128, line: 720, column: 7)
!2483 = !DILocation(line: 720, column: 7, scope: !2481)
!2484 = !DILocation(line: 720, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !128, line: 720, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !128, line: 720, column: 7)
!2487 = !DILocation(line: 720, column: 7, scope: !2486)
!2488 = !DILocation(line: 720, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !128, line: 720, column: 7)
!2490 = distinct !DILexicalBlock(scope: !2482, file: !128, line: 720, column: 7)
!2491 = !DILocation(line: 720, column: 7, scope: !2490)
!2492 = !DILocation(line: 720, column: 7, scope: !2482)
!2493 = !DILocation(line: 720, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !128, line: 720, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2476, file: !128, line: 720, column: 7)
!2496 = !DILocation(line: 720, column: 7, scope: !2495)
!2497 = !DILocation(line: 723, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !128, line: 723, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 723, column: 7)
!2500 = !DILocation(line: 424, column: 9, scope: !2040)
!2501 = !DILocation(line: 723, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !128, line: 723, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !128, line: 723, column: 7)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !128, line: 723, column: 7)
!2505 = !DILocation(line: 723, column: 7, scope: !2503)
!2506 = !DILocation(line: 723, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !128, line: 723, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !128, line: 723, column: 7)
!2509 = !DILocation(line: 723, column: 7, scope: !2508)
!2510 = !DILocation(line: 723, column: 7, scope: !2504)
!2511 = !DILocation(line: 724, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !128, line: 724, column: 7)
!2513 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 724, column: 7)
!2514 = !DILocation(line: 724, column: 7, scope: !2513)
!2515 = !DILocation(line: 726, column: 13, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 726, column: 11)
!2517 = !DILocation(line: 726, column: 11, scope: !2040)
!2518 = !DILocation(line: 728, column: 5, scope: !2041)
!2519 = !DILocation(line: 400, column: 75, scope: !2041)
!2520 = !DILocation(line: 400, column: 3, scope: !2041)
!2521 = distinct !{!2521, !2159, !2522}
!2522 = !DILocation(line: 728, column: 5, scope: !2042)
!2523 = !DILocation(line: 730, column: 11, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 730, column: 7)
!2525 = !DILocation(line: 730, column: 16, scope: !2524)
!2526 = !DILocation(line: 738, column: 51, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 738, column: 7)
!2528 = !DILocation(line: 739, column: 10, scope: !2527)
!2529 = !DILocation(line: 741, column: 11, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !128, line: 741, column: 11)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !128, line: 740, column: 5)
!2532 = !DILocation(line: 741, column: 11, scope: !2531)
!2533 = !DILocation(line: 742, column: 16, scope: !2530)
!2534 = !DILocation(line: 742, column: 9, scope: !2530)
!2535 = !DILocation(line: 746, column: 18, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !128, line: 746, column: 16)
!2537 = !DILocation(line: 746, column: 32, scope: !2536)
!2538 = !DILocation(line: 746, column: 29, scope: !2536)
!2539 = !DILocation(line: 755, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 755, column: 7)
!2541 = !DILocation(line: 755, column: 20, scope: !2540)
!2542 = !DILocation(line: 756, column: 12, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !128, line: 756, column: 5)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !128, line: 756, column: 5)
!2545 = !DILocation(line: 756, column: 5, scope: !2544)
!2546 = !DILocation(line: 757, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !128, line: 757, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !128, line: 757, column: 7)
!2549 = !DILocation(line: 757, column: 7, scope: !2548)
!2550 = !DILocation(line: 756, column: 39, scope: !2543)
!2551 = distinct !{!2551, !2545, !2552}
!2552 = !DILocation(line: 757, column: 7, scope: !2544)
!2553 = !DILocation(line: 759, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 759, column: 7)
!2555 = !DILocation(line: 759, column: 7, scope: !2013)
!2556 = !DILocation(line: 760, column: 5, scope: !2554)
!2557 = !DILocation(line: 760, column: 17, scope: !2554)
!2558 = !DILocation(line: 766, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2013, file: !128, line: 766, column: 7)
!2560 = !DILocation(line: 766, column: 54, scope: !2559)
!2561 = !DILocation(line: 766, column: 51, scope: !2559)
!2562 = !DILocation(line: 770, column: 42, scope: !2013)
!2563 = !DILocation(line: 768, column: 10, scope: !2013)
!2564 = !DILocation(line: 768, column: 3, scope: !2013)
!2565 = !DILocation(line: 772, column: 1, scope: !2013)
!2566 = distinct !DISubprogram(name: "gettext_quote", scope: !128, file: !128, line: 207, type: !2567, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!58, !58, !5}
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DILocalVariable(name: "msgid", arg: 1, scope: !2566, file: !128, line: 207, type: !58)
!2571 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !128, line: 207, type: !5)
!2572 = !DILocalVariable(name: "translation", scope: !2566, file: !128, line: 209, type: !58)
!2573 = !DILocalVariable(name: "locale_code", scope: !2566, file: !128, line: 210, type: !58)
!2574 = !DILocation(line: 207, column: 28, scope: !2566)
!2575 = !DILocation(line: 207, column: 54, scope: !2566)
!2576 = !DILocation(line: 209, column: 29, scope: !2566)
!2577 = !DILocation(line: 209, column: 15, scope: !2566)
!2578 = !DILocation(line: 212, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2566, file: !128, line: 212, column: 7)
!2580 = !DILocation(line: 212, column: 7, scope: !2566)
!2581 = !DILocation(line: 233, column: 17, scope: !2566)
!2582 = !DILocation(line: 210, column: 15, scope: !2566)
!2583 = !DILocalVariable(name: "s1", arg: 1, scope: !2584, file: !2585, line: 160, type: !58)
!2584 = distinct !DISubprogram(name: "strcaseeq0", scope: !2585, file: !2585, line: 160, type: !2586, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2588)
!2585 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!29, !58, !58, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2588 = !{!2583, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2589 = !DILocalVariable(name: "s2", arg: 2, scope: !2584, file: !2585, line: 160, type: !58)
!2590 = !DILocalVariable(name: "s20", arg: 3, scope: !2584, file: !2585, line: 160, type: !45)
!2591 = !DILocalVariable(name: "s21", arg: 4, scope: !2584, file: !2585, line: 160, type: !45)
!2592 = !DILocalVariable(name: "s22", arg: 5, scope: !2584, file: !2585, line: 160, type: !45)
!2593 = !DILocalVariable(name: "s23", arg: 6, scope: !2584, file: !2585, line: 160, type: !45)
!2594 = !DILocalVariable(name: "s24", arg: 7, scope: !2584, file: !2585, line: 160, type: !45)
!2595 = !DILocalVariable(name: "s25", arg: 8, scope: !2584, file: !2585, line: 160, type: !45)
!2596 = !DILocalVariable(name: "s26", arg: 9, scope: !2584, file: !2585, line: 160, type: !45)
!2597 = !DILocalVariable(name: "s27", arg: 10, scope: !2584, file: !2585, line: 160, type: !45)
!2598 = !DILocalVariable(name: "s28", arg: 11, scope: !2584, file: !2585, line: 160, type: !45)
!2599 = !DILocation(line: 160, column: 25, scope: !2584, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 234, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2566, file: !128, line: 234, column: 7)
!2602 = !DILocation(line: 160, column: 41, scope: !2584, inlinedAt: !2600)
!2603 = !DILocation(line: 160, column: 50, scope: !2584, inlinedAt: !2600)
!2604 = !DILocation(line: 160, column: 60, scope: !2584, inlinedAt: !2600)
!2605 = !DILocation(line: 160, column: 70, scope: !2584, inlinedAt: !2600)
!2606 = !DILocation(line: 160, column: 80, scope: !2584, inlinedAt: !2600)
!2607 = !DILocation(line: 160, column: 90, scope: !2584, inlinedAt: !2600)
!2608 = !DILocation(line: 160, column: 100, scope: !2584, inlinedAt: !2600)
!2609 = !DILocation(line: 160, column: 110, scope: !2584, inlinedAt: !2600)
!2610 = !DILocation(line: 160, column: 120, scope: !2584, inlinedAt: !2600)
!2611 = !DILocation(line: 160, column: 130, scope: !2584, inlinedAt: !2600)
!2612 = !DILocation(line: 162, column: 7, scope: !2613, inlinedAt: !2600)
!2613 = distinct !DILexicalBlock(scope: !2584, file: !2585, line: 162, column: 7)
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2615, file: !2585, line: 146, type: !58)
!2615 = distinct !DISubprogram(name: "strcaseeq1", scope: !2585, file: !2585, line: 146, type: !2616, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!29, !58, !58, !45, !45, !45, !45, !45, !45, !45, !45}
!2618 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2619 = !DILocalVariable(name: "s2", arg: 2, scope: !2615, file: !2585, line: 146, type: !58)
!2620 = !DILocalVariable(name: "s21", arg: 3, scope: !2615, file: !2585, line: 146, type: !45)
!2621 = !DILocalVariable(name: "s22", arg: 4, scope: !2615, file: !2585, line: 146, type: !45)
!2622 = !DILocalVariable(name: "s23", arg: 5, scope: !2615, file: !2585, line: 146, type: !45)
!2623 = !DILocalVariable(name: "s24", arg: 6, scope: !2615, file: !2585, line: 146, type: !45)
!2624 = !DILocalVariable(name: "s25", arg: 7, scope: !2615, file: !2585, line: 146, type: !45)
!2625 = !DILocalVariable(name: "s26", arg: 8, scope: !2615, file: !2585, line: 146, type: !45)
!2626 = !DILocalVariable(name: "s27", arg: 9, scope: !2615, file: !2585, line: 146, type: !45)
!2627 = !DILocalVariable(name: "s28", arg: 10, scope: !2615, file: !2585, line: 146, type: !45)
!2628 = !DILocation(line: 146, column: 25, scope: !2615, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2600)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !2585, line: 164, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2613, file: !2585, line: 163, column: 5)
!2632 = !DILocation(line: 146, column: 41, scope: !2615, inlinedAt: !2629)
!2633 = !DILocation(line: 146, column: 50, scope: !2615, inlinedAt: !2629)
!2634 = !DILocation(line: 146, column: 60, scope: !2615, inlinedAt: !2629)
!2635 = !DILocation(line: 146, column: 70, scope: !2615, inlinedAt: !2629)
!2636 = !DILocation(line: 146, column: 80, scope: !2615, inlinedAt: !2629)
!2637 = !DILocation(line: 146, column: 90, scope: !2615, inlinedAt: !2629)
!2638 = !DILocation(line: 146, column: 100, scope: !2615, inlinedAt: !2629)
!2639 = !DILocation(line: 146, column: 110, scope: !2615, inlinedAt: !2629)
!2640 = !DILocation(line: 146, column: 120, scope: !2615, inlinedAt: !2629)
!2641 = !DILocation(line: 148, column: 7, scope: !2642, inlinedAt: !2629)
!2642 = distinct !DILexicalBlock(scope: !2615, file: !2585, line: 148, column: 7)
!2643 = !DILocalVariable(name: "s1", arg: 1, scope: !2644, file: !2585, line: 132, type: !58)
!2644 = distinct !DISubprogram(name: "strcaseeq2", scope: !2585, file: !2585, line: 132, type: !2645, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!29, !58, !58, !45, !45, !45, !45, !45, !45, !45}
!2647 = !{!2643, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2648 = !DILocalVariable(name: "s2", arg: 2, scope: !2644, file: !2585, line: 132, type: !58)
!2649 = !DILocalVariable(name: "s22", arg: 3, scope: !2644, file: !2585, line: 132, type: !45)
!2650 = !DILocalVariable(name: "s23", arg: 4, scope: !2644, file: !2585, line: 132, type: !45)
!2651 = !DILocalVariable(name: "s24", arg: 5, scope: !2644, file: !2585, line: 132, type: !45)
!2652 = !DILocalVariable(name: "s25", arg: 6, scope: !2644, file: !2585, line: 132, type: !45)
!2653 = !DILocalVariable(name: "s26", arg: 7, scope: !2644, file: !2585, line: 132, type: !45)
!2654 = !DILocalVariable(name: "s27", arg: 8, scope: !2644, file: !2585, line: 132, type: !45)
!2655 = !DILocalVariable(name: "s28", arg: 9, scope: !2644, file: !2585, line: 132, type: !45)
!2656 = !DILocation(line: 132, column: 25, scope: !2644, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 153, column: 16, scope: !2658, inlinedAt: !2629)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !2585, line: 150, column: 11)
!2659 = distinct !DILexicalBlock(scope: !2642, file: !2585, line: 149, column: 5)
!2660 = !DILocation(line: 132, column: 41, scope: !2644, inlinedAt: !2657)
!2661 = !DILocation(line: 132, column: 50, scope: !2644, inlinedAt: !2657)
!2662 = !DILocation(line: 132, column: 60, scope: !2644, inlinedAt: !2657)
!2663 = !DILocation(line: 132, column: 70, scope: !2644, inlinedAt: !2657)
!2664 = !DILocation(line: 132, column: 80, scope: !2644, inlinedAt: !2657)
!2665 = !DILocation(line: 132, column: 90, scope: !2644, inlinedAt: !2657)
!2666 = !DILocation(line: 132, column: 100, scope: !2644, inlinedAt: !2657)
!2667 = !DILocation(line: 132, column: 110, scope: !2644, inlinedAt: !2657)
!2668 = !DILocation(line: 134, column: 7, scope: !2669, inlinedAt: !2657)
!2669 = distinct !DILexicalBlock(scope: !2644, file: !2585, line: 134, column: 7)
!2670 = !DILocalVariable(name: "s1", arg: 1, scope: !2671, file: !2585, line: 118, type: !58)
!2671 = distinct !DISubprogram(name: "strcaseeq3", scope: !2585, file: !2585, line: 118, type: !2672, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!29, !58, !58, !45, !45, !45, !45, !45, !45}
!2674 = !{!2670, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2675 = !DILocalVariable(name: "s2", arg: 2, scope: !2671, file: !2585, line: 118, type: !58)
!2676 = !DILocalVariable(name: "s23", arg: 3, scope: !2671, file: !2585, line: 118, type: !45)
!2677 = !DILocalVariable(name: "s24", arg: 4, scope: !2671, file: !2585, line: 118, type: !45)
!2678 = !DILocalVariable(name: "s25", arg: 5, scope: !2671, file: !2585, line: 118, type: !45)
!2679 = !DILocalVariable(name: "s26", arg: 6, scope: !2671, file: !2585, line: 118, type: !45)
!2680 = !DILocalVariable(name: "s27", arg: 7, scope: !2671, file: !2585, line: 118, type: !45)
!2681 = !DILocalVariable(name: "s28", arg: 8, scope: !2671, file: !2585, line: 118, type: !45)
!2682 = !DILocation(line: 118, column: 25, scope: !2671, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 139, column: 16, scope: !2684, inlinedAt: !2657)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !2585, line: 136, column: 11)
!2685 = distinct !DILexicalBlock(scope: !2669, file: !2585, line: 135, column: 5)
!2686 = !DILocation(line: 118, column: 41, scope: !2671, inlinedAt: !2683)
!2687 = !DILocation(line: 118, column: 50, scope: !2671, inlinedAt: !2683)
!2688 = !DILocation(line: 118, column: 60, scope: !2671, inlinedAt: !2683)
!2689 = !DILocation(line: 118, column: 70, scope: !2671, inlinedAt: !2683)
!2690 = !DILocation(line: 118, column: 80, scope: !2671, inlinedAt: !2683)
!2691 = !DILocation(line: 118, column: 90, scope: !2671, inlinedAt: !2683)
!2692 = !DILocation(line: 118, column: 100, scope: !2671, inlinedAt: !2683)
!2693 = !DILocation(line: 120, column: 7, scope: !2694, inlinedAt: !2683)
!2694 = distinct !DILexicalBlock(scope: !2671, file: !2585, line: 120, column: 7)
!2695 = !DILocation(line: 120, column: 7, scope: !2671, inlinedAt: !2683)
!2696 = !DILocalVariable(name: "s1", arg: 1, scope: !2697, file: !2585, line: 104, type: !58)
!2697 = distinct !DISubprogram(name: "strcaseeq4", scope: !2585, file: !2585, line: 104, type: !2698, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!29, !58, !58, !45, !45, !45, !45, !45}
!2700 = !{!2696, !2701, !2702, !2703, !2704, !2705, !2706}
!2701 = !DILocalVariable(name: "s2", arg: 2, scope: !2697, file: !2585, line: 104, type: !58)
!2702 = !DILocalVariable(name: "s24", arg: 3, scope: !2697, file: !2585, line: 104, type: !45)
!2703 = !DILocalVariable(name: "s25", arg: 4, scope: !2697, file: !2585, line: 104, type: !45)
!2704 = !DILocalVariable(name: "s26", arg: 5, scope: !2697, file: !2585, line: 104, type: !45)
!2705 = !DILocalVariable(name: "s27", arg: 6, scope: !2697, file: !2585, line: 104, type: !45)
!2706 = !DILocalVariable(name: "s28", arg: 7, scope: !2697, file: !2585, line: 104, type: !45)
!2707 = !DILocation(line: 104, column: 25, scope: !2697, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 125, column: 16, scope: !2709, inlinedAt: !2683)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2585, line: 122, column: 11)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !2585, line: 121, column: 5)
!2711 = !DILocation(line: 104, column: 41, scope: !2697, inlinedAt: !2708)
!2712 = !DILocation(line: 104, column: 50, scope: !2697, inlinedAt: !2708)
!2713 = !DILocation(line: 104, column: 60, scope: !2697, inlinedAt: !2708)
!2714 = !DILocation(line: 104, column: 70, scope: !2697, inlinedAt: !2708)
!2715 = !DILocation(line: 104, column: 80, scope: !2697, inlinedAt: !2708)
!2716 = !DILocation(line: 104, column: 90, scope: !2697, inlinedAt: !2708)
!2717 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2708)
!2718 = distinct !DILexicalBlock(scope: !2697, file: !2585, line: 106, column: 7)
!2719 = !DILocation(line: 106, column: 7, scope: !2697, inlinedAt: !2708)
!2720 = !DILocalVariable(name: "s1", arg: 1, scope: !2721, file: !2585, line: 90, type: !58)
!2721 = distinct !DISubprogram(name: "strcaseeq5", scope: !2585, file: !2585, line: 90, type: !2722, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!29, !58, !58, !45, !45, !45, !45}
!2724 = !{!2720, !2725, !2726, !2727, !2728, !2729}
!2725 = !DILocalVariable(name: "s2", arg: 2, scope: !2721, file: !2585, line: 90, type: !58)
!2726 = !DILocalVariable(name: "s25", arg: 3, scope: !2721, file: !2585, line: 90, type: !45)
!2727 = !DILocalVariable(name: "s26", arg: 4, scope: !2721, file: !2585, line: 90, type: !45)
!2728 = !DILocalVariable(name: "s27", arg: 5, scope: !2721, file: !2585, line: 90, type: !45)
!2729 = !DILocalVariable(name: "s28", arg: 6, scope: !2721, file: !2585, line: 90, type: !45)
!2730 = !DILocation(line: 90, column: 25, scope: !2721, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 111, column: 16, scope: !2732, inlinedAt: !2708)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !2585, line: 108, column: 11)
!2733 = distinct !DILexicalBlock(scope: !2718, file: !2585, line: 107, column: 5)
!2734 = !DILocation(line: 90, column: 41, scope: !2721, inlinedAt: !2731)
!2735 = !DILocation(line: 90, column: 50, scope: !2721, inlinedAt: !2731)
!2736 = !DILocation(line: 90, column: 60, scope: !2721, inlinedAt: !2731)
!2737 = !DILocation(line: 90, column: 70, scope: !2721, inlinedAt: !2731)
!2738 = !DILocation(line: 90, column: 80, scope: !2721, inlinedAt: !2731)
!2739 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2731)
!2740 = distinct !DILexicalBlock(scope: !2721, file: !2585, line: 92, column: 7)
!2741 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2731)
!2742 = !DILocation(line: 235, column: 12, scope: !2601)
!2743 = !DILocation(line: 235, column: 21, scope: !2601)
!2744 = !DILocation(line: 235, column: 5, scope: !2601)
!2745 = !DILocation(line: 146, column: 25, scope: !2615, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 236, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2566, file: !128, line: 236, column: 7)
!2749 = !DILocation(line: 146, column: 41, scope: !2615, inlinedAt: !2746)
!2750 = !DILocation(line: 146, column: 50, scope: !2615, inlinedAt: !2746)
!2751 = !DILocation(line: 146, column: 60, scope: !2615, inlinedAt: !2746)
!2752 = !DILocation(line: 146, column: 70, scope: !2615, inlinedAt: !2746)
!2753 = !DILocation(line: 146, column: 80, scope: !2615, inlinedAt: !2746)
!2754 = !DILocation(line: 146, column: 90, scope: !2615, inlinedAt: !2746)
!2755 = !DILocation(line: 146, column: 100, scope: !2615, inlinedAt: !2746)
!2756 = !DILocation(line: 146, column: 110, scope: !2615, inlinedAt: !2746)
!2757 = !DILocation(line: 146, column: 120, scope: !2615, inlinedAt: !2746)
!2758 = !DILocation(line: 148, column: 7, scope: !2642, inlinedAt: !2746)
!2759 = !DILocation(line: 132, column: 25, scope: !2644, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 153, column: 16, scope: !2658, inlinedAt: !2746)
!2761 = !DILocation(line: 132, column: 41, scope: !2644, inlinedAt: !2760)
!2762 = !DILocation(line: 132, column: 50, scope: !2644, inlinedAt: !2760)
!2763 = !DILocation(line: 132, column: 60, scope: !2644, inlinedAt: !2760)
!2764 = !DILocation(line: 132, column: 70, scope: !2644, inlinedAt: !2760)
!2765 = !DILocation(line: 132, column: 80, scope: !2644, inlinedAt: !2760)
!2766 = !DILocation(line: 132, column: 90, scope: !2644, inlinedAt: !2760)
!2767 = !DILocation(line: 132, column: 100, scope: !2644, inlinedAt: !2760)
!2768 = !DILocation(line: 132, column: 110, scope: !2644, inlinedAt: !2760)
!2769 = !DILocation(line: 134, column: 7, scope: !2669, inlinedAt: !2760)
!2770 = !DILocation(line: 134, column: 7, scope: !2644, inlinedAt: !2760)
!2771 = !DILocation(line: 118, column: 25, scope: !2671, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 139, column: 16, scope: !2684, inlinedAt: !2760)
!2773 = !DILocation(line: 118, column: 41, scope: !2671, inlinedAt: !2772)
!2774 = !DILocation(line: 118, column: 50, scope: !2671, inlinedAt: !2772)
!2775 = !DILocation(line: 118, column: 60, scope: !2671, inlinedAt: !2772)
!2776 = !DILocation(line: 118, column: 70, scope: !2671, inlinedAt: !2772)
!2777 = !DILocation(line: 118, column: 80, scope: !2671, inlinedAt: !2772)
!2778 = !DILocation(line: 118, column: 90, scope: !2671, inlinedAt: !2772)
!2779 = !DILocation(line: 118, column: 100, scope: !2671, inlinedAt: !2772)
!2780 = !DILocation(line: 120, column: 7, scope: !2694, inlinedAt: !2772)
!2781 = !DILocation(line: 120, column: 7, scope: !2671, inlinedAt: !2772)
!2782 = !DILocation(line: 104, column: 25, scope: !2697, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 125, column: 16, scope: !2709, inlinedAt: !2772)
!2784 = !DILocation(line: 104, column: 41, scope: !2697, inlinedAt: !2783)
!2785 = !DILocation(line: 104, column: 50, scope: !2697, inlinedAt: !2783)
!2786 = !DILocation(line: 104, column: 60, scope: !2697, inlinedAt: !2783)
!2787 = !DILocation(line: 104, column: 70, scope: !2697, inlinedAt: !2783)
!2788 = !DILocation(line: 104, column: 80, scope: !2697, inlinedAt: !2783)
!2789 = !DILocation(line: 104, column: 90, scope: !2697, inlinedAt: !2783)
!2790 = !DILocation(line: 106, column: 7, scope: !2718, inlinedAt: !2783)
!2791 = !DILocation(line: 106, column: 7, scope: !2697, inlinedAt: !2783)
!2792 = !DILocation(line: 90, column: 25, scope: !2721, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 111, column: 16, scope: !2732, inlinedAt: !2783)
!2794 = !DILocation(line: 90, column: 41, scope: !2721, inlinedAt: !2793)
!2795 = !DILocation(line: 90, column: 50, scope: !2721, inlinedAt: !2793)
!2796 = !DILocation(line: 90, column: 60, scope: !2721, inlinedAt: !2793)
!2797 = !DILocation(line: 90, column: 70, scope: !2721, inlinedAt: !2793)
!2798 = !DILocation(line: 90, column: 80, scope: !2721, inlinedAt: !2793)
!2799 = !DILocation(line: 92, column: 7, scope: !2740, inlinedAt: !2793)
!2800 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2793)
!2801 = !DILocalVariable(name: "s1", arg: 1, scope: !2802, file: !2585, line: 76, type: !58)
!2802 = distinct !DISubprogram(name: "strcaseeq6", scope: !2585, file: !2585, line: 76, type: !2803, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!29, !58, !58, !45, !45, !45}
!2805 = !{!2801, !2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "s2", arg: 2, scope: !2802, file: !2585, line: 76, type: !58)
!2807 = !DILocalVariable(name: "s26", arg: 3, scope: !2802, file: !2585, line: 76, type: !45)
!2808 = !DILocalVariable(name: "s27", arg: 4, scope: !2802, file: !2585, line: 76, type: !45)
!2809 = !DILocalVariable(name: "s28", arg: 5, scope: !2802, file: !2585, line: 76, type: !45)
!2810 = !DILocation(line: 76, column: 25, scope: !2802, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 97, column: 16, scope: !2812, inlinedAt: !2793)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !2585, line: 94, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2740, file: !2585, line: 93, column: 5)
!2814 = !DILocation(line: 76, column: 41, scope: !2802, inlinedAt: !2811)
!2815 = !DILocation(line: 76, column: 50, scope: !2802, inlinedAt: !2811)
!2816 = !DILocation(line: 76, column: 60, scope: !2802, inlinedAt: !2811)
!2817 = !DILocation(line: 76, column: 70, scope: !2802, inlinedAt: !2811)
!2818 = !DILocation(line: 78, column: 7, scope: !2819, inlinedAt: !2811)
!2819 = distinct !DILexicalBlock(scope: !2802, file: !2585, line: 78, column: 7)
!2820 = !DILocation(line: 78, column: 7, scope: !2802, inlinedAt: !2811)
!2821 = !DILocalVariable(name: "s1", arg: 1, scope: !2822, file: !2585, line: 62, type: !58)
!2822 = distinct !DISubprogram(name: "strcaseeq7", scope: !2585, file: !2585, line: 62, type: !2823, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!29, !58, !58, !45, !45}
!2825 = !{!2821, !2826, !2827, !2828}
!2826 = !DILocalVariable(name: "s2", arg: 2, scope: !2822, file: !2585, line: 62, type: !58)
!2827 = !DILocalVariable(name: "s27", arg: 3, scope: !2822, file: !2585, line: 62, type: !45)
!2828 = !DILocalVariable(name: "s28", arg: 4, scope: !2822, file: !2585, line: 62, type: !45)
!2829 = !DILocation(line: 62, column: 25, scope: !2822, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 83, column: 16, scope: !2831, inlinedAt: !2811)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2585, line: 80, column: 11)
!2832 = distinct !DILexicalBlock(scope: !2819, file: !2585, line: 79, column: 5)
!2833 = !DILocation(line: 62, column: 41, scope: !2822, inlinedAt: !2830)
!2834 = !DILocation(line: 62, column: 50, scope: !2822, inlinedAt: !2830)
!2835 = !DILocation(line: 62, column: 60, scope: !2822, inlinedAt: !2830)
!2836 = !DILocation(line: 64, column: 7, scope: !2837, inlinedAt: !2830)
!2837 = distinct !DILexicalBlock(scope: !2822, file: !2585, line: 64, column: 7)
!2838 = !DILocation(line: 236, column: 7, scope: !2566)
!2839 = !DILocation(line: 237, column: 12, scope: !2748)
!2840 = !DILocation(line: 237, column: 21, scope: !2748)
!2841 = !DILocation(line: 237, column: 5, scope: !2748)
!2842 = !DILocation(line: 239, column: 13, scope: !2566)
!2843 = !DILocation(line: 239, column: 11, scope: !2566)
!2844 = !DILocation(line: 239, column: 3, scope: !2566)
!2845 = !DILocation(line: 0, scope: !2566)
!2846 = !DILocation(line: 240, column: 1, scope: !2566)
!2847 = distinct !DISubprogram(name: "quotearg_alloc", scope: !128, file: !128, line: 799, type: !2848, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!44, !58, !122, !1886}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !128, line: 799, type: !58)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !128, line: 799, type: !122)
!2853 = !DILocalVariable(name: "o", arg: 3, scope: !2847, file: !128, line: 800, type: !1886)
!2854 = !DILocation(line: 799, column: 29, scope: !2847)
!2855 = !DILocation(line: 799, column: 41, scope: !2847)
!2856 = !DILocation(line: 800, column: 47, scope: !2847)
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !128, line: 812, type: !58)
!2858 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !128, file: !128, line: 812, type: !2859, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!44, !58, !122, !277, !1886}
!2861 = !{!2857, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2862 = !DILocalVariable(name: "argsize", arg: 2, scope: !2858, file: !128, line: 812, type: !122)
!2863 = !DILocalVariable(name: "size", arg: 3, scope: !2858, file: !128, line: 812, type: !277)
!2864 = !DILocalVariable(name: "o", arg: 4, scope: !2858, file: !128, line: 813, type: !1886)
!2865 = !DILocalVariable(name: "p", scope: !2858, file: !128, line: 815, type: !1886)
!2866 = !DILocalVariable(name: "e", scope: !2858, file: !128, line: 816, type: !29)
!2867 = !DILocalVariable(name: "flags", scope: !2858, file: !128, line: 818, type: !29)
!2868 = !DILocalVariable(name: "bufsize", scope: !2858, file: !128, line: 819, type: !122)
!2869 = !DILocalVariable(name: "buf", scope: !2858, file: !128, line: 823, type: !44)
!2870 = !DILocation(line: 812, column: 33, scope: !2858, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 802, column: 10, scope: !2847)
!2872 = !DILocation(line: 812, column: 45, scope: !2858, inlinedAt: !2871)
!2873 = !DILocation(line: 812, column: 62, scope: !2858, inlinedAt: !2871)
!2874 = !DILocation(line: 813, column: 51, scope: !2858, inlinedAt: !2871)
!2875 = !DILocation(line: 815, column: 37, scope: !2858, inlinedAt: !2871)
!2876 = !DILocation(line: 815, column: 33, scope: !2858, inlinedAt: !2871)
!2877 = !DILocation(line: 816, column: 11, scope: !2858, inlinedAt: !2871)
!2878 = !DILocation(line: 816, column: 7, scope: !2858, inlinedAt: !2871)
!2879 = !DILocation(line: 818, column: 18, scope: !2858, inlinedAt: !2871)
!2880 = !DILocation(line: 818, column: 24, scope: !2858, inlinedAt: !2871)
!2881 = !DILocation(line: 818, column: 7, scope: !2858, inlinedAt: !2871)
!2882 = !DILocation(line: 819, column: 69, scope: !2858, inlinedAt: !2871)
!2883 = !DILocation(line: 820, column: 53, scope: !2858, inlinedAt: !2871)
!2884 = !DILocation(line: 821, column: 49, scope: !2858, inlinedAt: !2871)
!2885 = !DILocation(line: 822, column: 49, scope: !2858, inlinedAt: !2871)
!2886 = !DILocation(line: 819, column: 20, scope: !2858, inlinedAt: !2871)
!2887 = !DILocation(line: 822, column: 62, scope: !2858, inlinedAt: !2871)
!2888 = !DILocation(line: 819, column: 10, scope: !2858, inlinedAt: !2871)
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !273, line: 216, type: !122)
!2890 = distinct !DISubprogram(name: "xcharalloc", scope: !273, file: !273, line: 216, type: !2891, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!44, !122}
!2893 = !{!2889}
!2894 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 823, column: 15, scope: !2858, inlinedAt: !2871)
!2896 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !2895)
!2897 = !DILocation(line: 823, column: 9, scope: !2858, inlinedAt: !2871)
!2898 = !DILocation(line: 824, column: 60, scope: !2858, inlinedAt: !2871)
!2899 = !DILocation(line: 826, column: 32, scope: !2858, inlinedAt: !2871)
!2900 = !DILocation(line: 826, column: 47, scope: !2858, inlinedAt: !2871)
!2901 = !DILocation(line: 824, column: 3, scope: !2858, inlinedAt: !2871)
!2902 = !DILocation(line: 827, column: 9, scope: !2858, inlinedAt: !2871)
!2903 = !DILocation(line: 802, column: 3, scope: !2847)
!2904 = !DILocation(line: 812, column: 33, scope: !2858)
!2905 = !DILocation(line: 812, column: 45, scope: !2858)
!2906 = !DILocation(line: 812, column: 62, scope: !2858)
!2907 = !DILocation(line: 813, column: 51, scope: !2858)
!2908 = !DILocation(line: 815, column: 37, scope: !2858)
!2909 = !DILocation(line: 815, column: 33, scope: !2858)
!2910 = !DILocation(line: 816, column: 11, scope: !2858)
!2911 = !DILocation(line: 816, column: 7, scope: !2858)
!2912 = !DILocation(line: 818, column: 18, scope: !2858)
!2913 = !DILocation(line: 818, column: 27, scope: !2858)
!2914 = !DILocation(line: 818, column: 24, scope: !2858)
!2915 = !DILocation(line: 818, column: 7, scope: !2858)
!2916 = !DILocation(line: 819, column: 69, scope: !2858)
!2917 = !DILocation(line: 820, column: 53, scope: !2858)
!2918 = !DILocation(line: 821, column: 49, scope: !2858)
!2919 = !DILocation(line: 822, column: 49, scope: !2858)
!2920 = !DILocation(line: 819, column: 20, scope: !2858)
!2921 = !DILocation(line: 822, column: 62, scope: !2858)
!2922 = !DILocation(line: 819, column: 10, scope: !2858)
!2923 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 823, column: 15, scope: !2858)
!2925 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !2924)
!2926 = !DILocation(line: 823, column: 9, scope: !2858)
!2927 = !DILocation(line: 824, column: 60, scope: !2858)
!2928 = !DILocation(line: 826, column: 32, scope: !2858)
!2929 = !DILocation(line: 826, column: 47, scope: !2858)
!2930 = !DILocation(line: 824, column: 3, scope: !2858)
!2931 = !DILocation(line: 827, column: 9, scope: !2858)
!2932 = !DILocation(line: 828, column: 7, scope: !2858)
!2933 = !DILocation(line: 829, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2858, file: !128, line: 828, column: 7)
!2935 = !{!1179, !1179, i64 0}
!2936 = !DILocation(line: 829, column: 5, scope: !2934)
!2937 = !DILocation(line: 830, column: 3, scope: !2858)
!2938 = distinct !DISubprogram(name: "quotearg_free", scope: !128, file: !128, line: 848, type: !760, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2939)
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "sv", scope: !2938, file: !128, line: 850, type: !154)
!2941 = !DILocalVariable(name: "i", scope: !2938, file: !128, line: 851, type: !29)
!2942 = !DILocation(line: 850, column: 24, scope: !2938)
!2943 = !DILocation(line: 850, column: 19, scope: !2938)
!2944 = !DILocation(line: 851, column: 7, scope: !2938)
!2945 = !DILocation(line: 852, column: 19, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !128, line: 852, column: 3)
!2947 = distinct !DILexicalBlock(scope: !2938, file: !128, line: 852, column: 3)
!2948 = !DILocation(line: 852, column: 17, scope: !2946)
!2949 = !DILocation(line: 852, column: 3, scope: !2947)
!2950 = !DILocation(line: 853, column: 17, scope: !2946)
!2951 = !{!2952, !753, i64 8}
!2952 = !{!"slotvec", !1179, i64 0, !753, i64 8}
!2953 = !DILocation(line: 853, column: 5, scope: !2946)
!2954 = !DILocation(line: 852, column: 28, scope: !2946)
!2955 = distinct !{!2955, !2949, !2956}
!2956 = !DILocation(line: 853, column: 20, scope: !2947)
!2957 = !DILocation(line: 854, column: 13, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2938, file: !128, line: 854, column: 7)
!2959 = !DILocation(line: 854, column: 17, scope: !2958)
!2960 = !DILocation(line: 854, column: 7, scope: !2938)
!2961 = !DILocation(line: 856, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !128, line: 855, column: 5)
!2963 = !DILocation(line: 857, column: 21, scope: !2962)
!2964 = !{!2952, !1179, i64 0}
!2965 = !DILocation(line: 858, column: 20, scope: !2962)
!2966 = !DILocation(line: 859, column: 5, scope: !2962)
!2967 = !DILocation(line: 860, column: 10, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2938, file: !128, line: 860, column: 7)
!2969 = !DILocation(line: 860, column: 7, scope: !2938)
!2970 = !DILocation(line: 862, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !128, line: 861, column: 5)
!2972 = !DILocation(line: 862, column: 7, scope: !2971)
!2973 = !DILocation(line: 863, column: 15, scope: !2971)
!2974 = !DILocation(line: 864, column: 5, scope: !2971)
!2975 = !DILocation(line: 865, column: 10, scope: !2938)
!2976 = !DILocation(line: 866, column: 1, scope: !2938)
!2977 = distinct !DISubprogram(name: "quotearg_n", scope: !128, file: !128, line: 931, type: !2978, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!44, !29, !58}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !128, line: 931, type: !29)
!2982 = !DILocalVariable(name: "arg", arg: 2, scope: !2977, file: !128, line: 931, type: !58)
!2983 = !DILocation(line: 931, column: 17, scope: !2977)
!2984 = !DILocation(line: 931, column: 32, scope: !2977)
!2985 = !DILocation(line: 933, column: 10, scope: !2977)
!2986 = !DILocation(line: 933, column: 3, scope: !2977)
!2987 = distinct !DISubprogram(name: "quotearg_n_options", scope: !128, file: !128, line: 877, type: !2988, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!44, !29, !58, !122, !1886}
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !3000, !3001, !3003, !3004, !3005}
!2991 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !128, line: 877, type: !29)
!2992 = !DILocalVariable(name: "arg", arg: 2, scope: !2987, file: !128, line: 877, type: !58)
!2993 = !DILocalVariable(name: "argsize", arg: 3, scope: !2987, file: !128, line: 877, type: !122)
!2994 = !DILocalVariable(name: "options", arg: 4, scope: !2987, file: !128, line: 878, type: !1886)
!2995 = !DILocalVariable(name: "e", scope: !2987, file: !128, line: 880, type: !29)
!2996 = !DILocalVariable(name: "sv", scope: !2987, file: !128, line: 882, type: !154)
!2997 = !DILocalVariable(name: "preallocated", scope: !2998, file: !128, line: 889, type: !80)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !128, line: 888, column: 5)
!2999 = distinct !DILexicalBlock(scope: !2987, file: !128, line: 887, column: 7)
!3000 = !DILocalVariable(name: "nmax", scope: !2998, file: !128, line: 890, type: !29)
!3001 = !DILocalVariable(name: "size", scope: !3002, file: !128, line: 903, type: !122)
!3002 = distinct !DILexicalBlock(scope: !2987, file: !128, line: 902, column: 3)
!3003 = !DILocalVariable(name: "val", scope: !3002, file: !128, line: 904, type: !44)
!3004 = !DILocalVariable(name: "flags", scope: !3002, file: !128, line: 906, type: !29)
!3005 = !DILocalVariable(name: "qsize", scope: !3002, file: !128, line: 907, type: !122)
!3006 = !DILocation(line: 877, column: 25, scope: !2987)
!3007 = !DILocation(line: 877, column: 40, scope: !2987)
!3008 = !DILocation(line: 877, column: 52, scope: !2987)
!3009 = !DILocation(line: 878, column: 51, scope: !2987)
!3010 = !DILocation(line: 880, column: 11, scope: !2987)
!3011 = !DILocation(line: 880, column: 7, scope: !2987)
!3012 = !DILocation(line: 882, column: 24, scope: !2987)
!3013 = !DILocation(line: 882, column: 19, scope: !2987)
!3014 = !DILocation(line: 884, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2987, file: !128, line: 884, column: 7)
!3016 = !DILocation(line: 884, column: 7, scope: !2987)
!3017 = !DILocation(line: 885, column: 5, scope: !3015)
!3018 = !DILocation(line: 887, column: 7, scope: !2999)
!3019 = !DILocation(line: 887, column: 14, scope: !2999)
!3020 = !DILocation(line: 887, column: 7, scope: !2987)
!3021 = !DILocation(line: 889, column: 31, scope: !2998)
!3022 = !DILocation(line: 890, column: 11, scope: !2998)
!3023 = !DILocation(line: 892, column: 16, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2998, file: !128, line: 892, column: 11)
!3025 = !DILocation(line: 892, column: 11, scope: !2998)
!3026 = !DILocation(line: 893, column: 9, scope: !3024)
!3027 = !DILocation(line: 895, column: 32, scope: !2998)
!3028 = !DILocation(line: 895, column: 61, scope: !2998)
!3029 = !DILocation(line: 895, column: 58, scope: !2998)
!3030 = !DILocation(line: 895, column: 66, scope: !2998)
!3031 = !DILocation(line: 895, column: 22, scope: !2998)
!3032 = !DILocation(line: 895, column: 15, scope: !2998)
!3033 = !DILocation(line: 896, column: 11, scope: !2998)
!3034 = !DILocation(line: 897, column: 15, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2998, file: !128, line: 896, column: 11)
!3036 = !{i64 0, i64 8, !2935, i64 8, i64 8, !752}
!3037 = !DILocation(line: 897, column: 9, scope: !3035)
!3038 = !DILocation(line: 898, column: 20, scope: !2998)
!3039 = !DILocation(line: 898, column: 18, scope: !2998)
!3040 = !DILocation(line: 898, column: 7, scope: !2998)
!3041 = !DILocation(line: 898, column: 38, scope: !2998)
!3042 = !DILocation(line: 898, column: 31, scope: !2998)
!3043 = !DILocation(line: 898, column: 48, scope: !2998)
!3044 = !DILocation(line: 899, column: 14, scope: !2998)
!3045 = !DILocation(line: 900, column: 5, scope: !2998)
!3046 = !DILocation(line: 0, scope: !2987)
!3047 = !DILocation(line: 903, column: 19, scope: !3002)
!3048 = !DILocation(line: 903, column: 25, scope: !3002)
!3049 = !DILocation(line: 903, column: 12, scope: !3002)
!3050 = !DILocation(line: 904, column: 23, scope: !3002)
!3051 = !DILocation(line: 904, column: 11, scope: !3002)
!3052 = !DILocation(line: 906, column: 26, scope: !3002)
!3053 = !DILocation(line: 906, column: 32, scope: !3002)
!3054 = !DILocation(line: 906, column: 9, scope: !3002)
!3055 = !DILocation(line: 908, column: 55, scope: !3002)
!3056 = !DILocation(line: 909, column: 46, scope: !3002)
!3057 = !DILocation(line: 910, column: 55, scope: !3002)
!3058 = !DILocation(line: 911, column: 55, scope: !3002)
!3059 = !DILocation(line: 907, column: 20, scope: !3002)
!3060 = !DILocation(line: 907, column: 12, scope: !3002)
!3061 = !DILocation(line: 913, column: 14, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3002, file: !128, line: 913, column: 9)
!3063 = !DILocation(line: 913, column: 9, scope: !3002)
!3064 = !DILocation(line: 915, column: 35, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !128, line: 914, column: 7)
!3066 = !DILocation(line: 915, column: 20, scope: !3065)
!3067 = !DILocation(line: 916, column: 17, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !128, line: 916, column: 13)
!3069 = !DILocation(line: 916, column: 13, scope: !3065)
!3070 = !DILocation(line: 917, column: 11, scope: !3068)
!3071 = !DILocation(line: 216, column: 20, scope: !2890, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 918, column: 27, scope: !3065)
!3073 = !DILocation(line: 218, column: 10, scope: !2890, inlinedAt: !3072)
!3074 = !DILocation(line: 918, column: 19, scope: !3065)
!3075 = !DILocation(line: 919, column: 69, scope: !3065)
!3076 = !DILocation(line: 921, column: 44, scope: !3065)
!3077 = !DILocation(line: 922, column: 44, scope: !3065)
!3078 = !DILocation(line: 919, column: 9, scope: !3065)
!3079 = !DILocation(line: 923, column: 7, scope: !3065)
!3080 = !DILocation(line: 0, scope: !3002)
!3081 = !DILocation(line: 925, column: 11, scope: !3002)
!3082 = !DILocation(line: 926, column: 5, scope: !3002)
!3083 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !128, file: !128, line: 937, type: !3084, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!44, !29, !58, !122}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !128, line: 937, type: !29)
!3088 = !DILocalVariable(name: "arg", arg: 2, scope: !3083, file: !128, line: 937, type: !58)
!3089 = !DILocalVariable(name: "argsize", arg: 3, scope: !3083, file: !128, line: 937, type: !122)
!3090 = !DILocation(line: 937, column: 21, scope: !3083)
!3091 = !DILocation(line: 937, column: 36, scope: !3083)
!3092 = !DILocation(line: 937, column: 48, scope: !3083)
!3093 = !DILocation(line: 939, column: 10, scope: !3083)
!3094 = !DILocation(line: 939, column: 3, scope: !3083)
!3095 = distinct !DISubprogram(name: "quotearg", scope: !128, file: !128, line: 943, type: !3096, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!44, !58}
!3098 = !{!3099}
!3099 = !DILocalVariable(name: "arg", arg: 1, scope: !3095, file: !128, line: 943, type: !58)
!3100 = !DILocation(line: 943, column: 23, scope: !3095)
!3101 = !DILocation(line: 931, column: 17, scope: !2977, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 945, column: 10, scope: !3095)
!3103 = !DILocation(line: 931, column: 32, scope: !2977, inlinedAt: !3102)
!3104 = !DILocation(line: 933, column: 10, scope: !2977, inlinedAt: !3102)
!3105 = !DILocation(line: 945, column: 3, scope: !3095)
!3106 = distinct !DISubprogram(name: "quotearg_mem", scope: !128, file: !128, line: 949, type: !3107, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!44, !58, !122}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "arg", arg: 1, scope: !3106, file: !128, line: 949, type: !58)
!3111 = !DILocalVariable(name: "argsize", arg: 2, scope: !3106, file: !128, line: 949, type: !122)
!3112 = !DILocation(line: 949, column: 27, scope: !3106)
!3113 = !DILocation(line: 949, column: 39, scope: !3106)
!3114 = !DILocation(line: 937, column: 21, scope: !3083, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 951, column: 10, scope: !3106)
!3116 = !DILocation(line: 937, column: 36, scope: !3083, inlinedAt: !3115)
!3117 = !DILocation(line: 937, column: 48, scope: !3083, inlinedAt: !3115)
!3118 = !DILocation(line: 939, column: 10, scope: !3083, inlinedAt: !3115)
!3119 = !DILocation(line: 951, column: 3, scope: !3106)
!3120 = distinct !DISubprogram(name: "quotearg_n_style", scope: !128, file: !128, line: 955, type: !3121, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!44, !29, !5, !58}
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3120, file: !128, line: 955, type: !29)
!3125 = !DILocalVariable(name: "s", arg: 2, scope: !3120, file: !128, line: 955, type: !5)
!3126 = !DILocalVariable(name: "arg", arg: 3, scope: !3120, file: !128, line: 955, type: !58)
!3127 = !DILocalVariable(name: "o", scope: !3120, file: !128, line: 957, type: !1887)
!3128 = !DILocation(line: 955, column: 23, scope: !3120)
!3129 = !DILocation(line: 955, column: 45, scope: !3120)
!3130 = !DILocation(line: 955, column: 60, scope: !3120)
!3131 = !DILocation(line: 957, column: 3, scope: !3120)
!3132 = !DILocation(line: 957, column: 32, scope: !3120)
!3133 = !DILocalVariable(name: "style", arg: 1, scope: !3134, file: !128, line: 193, type: !5)
!3134 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !128, file: !128, line: 193, type: !3135, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!135, !5}
!3137 = !{!3133, !3138}
!3138 = !DILocalVariable(name: "o", scope: !3134, file: !128, line: 195, type: !135)
!3139 = !DILocation(line: 193, column: 48, scope: !3134, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 957, column: 36, scope: !3120)
!3141 = !DILocation(line: 195, column: 26, scope: !3134, inlinedAt: !3140)
!3142 = !{!3143}
!3143 = distinct !{!3143, !3144, !"quoting_options_from_style: argument 0"}
!3144 = distinct !{!3144, !"quoting_options_from_style"}
!3145 = !DILocation(line: 196, column: 13, scope: !3146, inlinedAt: !3140)
!3146 = distinct !DILexicalBlock(scope: !3134, file: !128, line: 196, column: 7)
!3147 = !DILocation(line: 196, column: 7, scope: !3134, inlinedAt: !3140)
!3148 = !DILocation(line: 197, column: 5, scope: !3146, inlinedAt: !3140)
!3149 = !DILocation(line: 198, column: 5, scope: !3134, inlinedAt: !3140)
!3150 = !DILocation(line: 198, column: 11, scope: !3134, inlinedAt: !3140)
!3151 = !DILocation(line: 958, column: 10, scope: !3120)
!3152 = !DILocation(line: 959, column: 1, scope: !3120)
!3153 = !DILocation(line: 958, column: 3, scope: !3120)
!3154 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !128, file: !128, line: 962, type: !3155, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!44, !29, !5, !58, !122}
!3157 = !{!3158, !3159, !3160, !3161, !3162}
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3154, file: !128, line: 962, type: !29)
!3159 = !DILocalVariable(name: "s", arg: 2, scope: !3154, file: !128, line: 962, type: !5)
!3160 = !DILocalVariable(name: "arg", arg: 3, scope: !3154, file: !128, line: 963, type: !58)
!3161 = !DILocalVariable(name: "argsize", arg: 4, scope: !3154, file: !128, line: 963, type: !122)
!3162 = !DILocalVariable(name: "o", scope: !3154, file: !128, line: 965, type: !1887)
!3163 = !DILocation(line: 962, column: 27, scope: !3154)
!3164 = !DILocation(line: 962, column: 49, scope: !3154)
!3165 = !DILocation(line: 963, column: 35, scope: !3154)
!3166 = !DILocation(line: 963, column: 47, scope: !3154)
!3167 = !DILocation(line: 965, column: 3, scope: !3154)
!3168 = !DILocation(line: 965, column: 32, scope: !3154)
!3169 = !DILocation(line: 193, column: 48, scope: !3134, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 965, column: 36, scope: !3154)
!3171 = !DILocation(line: 195, column: 26, scope: !3134, inlinedAt: !3170)
!3172 = !{!3173}
!3173 = distinct !{!3173, !3174, !"quoting_options_from_style: argument 0"}
!3174 = distinct !{!3174, !"quoting_options_from_style"}
!3175 = !DILocation(line: 196, column: 13, scope: !3146, inlinedAt: !3170)
!3176 = !DILocation(line: 196, column: 7, scope: !3134, inlinedAt: !3170)
!3177 = !DILocation(line: 197, column: 5, scope: !3146, inlinedAt: !3170)
!3178 = !DILocation(line: 198, column: 5, scope: !3134, inlinedAt: !3170)
!3179 = !DILocation(line: 198, column: 11, scope: !3134, inlinedAt: !3170)
!3180 = !DILocation(line: 966, column: 10, scope: !3154)
!3181 = !DILocation(line: 967, column: 1, scope: !3154)
!3182 = !DILocation(line: 966, column: 3, scope: !3154)
!3183 = distinct !DISubprogram(name: "quotearg_style", scope: !128, file: !128, line: 970, type: !3184, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!44, !5, !58}
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "s", arg: 1, scope: !3183, file: !128, line: 970, type: !5)
!3188 = !DILocalVariable(name: "arg", arg: 2, scope: !3183, file: !128, line: 970, type: !58)
!3189 = !DILocation(line: 970, column: 36, scope: !3183)
!3190 = !DILocation(line: 970, column: 51, scope: !3183)
!3191 = !DILocation(line: 955, column: 23, scope: !3120, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 972, column: 10, scope: !3183)
!3193 = !DILocation(line: 955, column: 45, scope: !3120, inlinedAt: !3192)
!3194 = !DILocation(line: 955, column: 60, scope: !3120, inlinedAt: !3192)
!3195 = !DILocation(line: 957, column: 3, scope: !3120, inlinedAt: !3192)
!3196 = !DILocation(line: 957, column: 32, scope: !3120, inlinedAt: !3192)
!3197 = !DILocation(line: 193, column: 48, scope: !3134, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 957, column: 36, scope: !3120, inlinedAt: !3192)
!3199 = !DILocation(line: 195, column: 26, scope: !3134, inlinedAt: !3198)
!3200 = !{!3201}
!3201 = distinct !{!3201, !3202, !"quoting_options_from_style: argument 0"}
!3202 = distinct !{!3202, !"quoting_options_from_style"}
!3203 = !DILocation(line: 196, column: 13, scope: !3146, inlinedAt: !3198)
!3204 = !DILocation(line: 196, column: 7, scope: !3134, inlinedAt: !3198)
!3205 = !DILocation(line: 197, column: 5, scope: !3146, inlinedAt: !3198)
!3206 = !DILocation(line: 198, column: 5, scope: !3134, inlinedAt: !3198)
!3207 = !DILocation(line: 198, column: 11, scope: !3134, inlinedAt: !3198)
!3208 = !DILocation(line: 958, column: 10, scope: !3120, inlinedAt: !3192)
!3209 = !DILocation(line: 959, column: 1, scope: !3120, inlinedAt: !3192)
!3210 = !DILocation(line: 972, column: 3, scope: !3183)
!3211 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !128, file: !128, line: 976, type: !3212, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!44, !5, !58, !122}
!3214 = !{!3215, !3216, !3217}
!3215 = !DILocalVariable(name: "s", arg: 1, scope: !3211, file: !128, line: 976, type: !5)
!3216 = !DILocalVariable(name: "arg", arg: 2, scope: !3211, file: !128, line: 976, type: !58)
!3217 = !DILocalVariable(name: "argsize", arg: 3, scope: !3211, file: !128, line: 976, type: !122)
!3218 = !DILocation(line: 976, column: 40, scope: !3211)
!3219 = !DILocation(line: 976, column: 55, scope: !3211)
!3220 = !DILocation(line: 976, column: 67, scope: !3211)
!3221 = !DILocation(line: 962, column: 27, scope: !3154, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 978, column: 10, scope: !3211)
!3223 = !DILocation(line: 962, column: 49, scope: !3154, inlinedAt: !3222)
!3224 = !DILocation(line: 963, column: 35, scope: !3154, inlinedAt: !3222)
!3225 = !DILocation(line: 963, column: 47, scope: !3154, inlinedAt: !3222)
!3226 = !DILocation(line: 965, column: 3, scope: !3154, inlinedAt: !3222)
!3227 = !DILocation(line: 965, column: 32, scope: !3154, inlinedAt: !3222)
!3228 = !DILocation(line: 193, column: 48, scope: !3134, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 965, column: 36, scope: !3154, inlinedAt: !3222)
!3230 = !DILocation(line: 195, column: 26, scope: !3134, inlinedAt: !3229)
!3231 = !{!3232}
!3232 = distinct !{!3232, !3233, !"quoting_options_from_style: argument 0"}
!3233 = distinct !{!3233, !"quoting_options_from_style"}
!3234 = !DILocation(line: 196, column: 13, scope: !3146, inlinedAt: !3229)
!3235 = !DILocation(line: 196, column: 7, scope: !3134, inlinedAt: !3229)
!3236 = !DILocation(line: 197, column: 5, scope: !3146, inlinedAt: !3229)
!3237 = !DILocation(line: 198, column: 5, scope: !3134, inlinedAt: !3229)
!3238 = !DILocation(line: 198, column: 11, scope: !3134, inlinedAt: !3229)
!3239 = !DILocation(line: 966, column: 10, scope: !3154, inlinedAt: !3222)
!3240 = !DILocation(line: 967, column: 1, scope: !3154, inlinedAt: !3222)
!3241 = !DILocation(line: 978, column: 3, scope: !3211)
!3242 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !128, file: !128, line: 982, type: !3243, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!44, !58, !122, !45}
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "arg", arg: 1, scope: !3242, file: !128, line: 982, type: !58)
!3247 = !DILocalVariable(name: "argsize", arg: 2, scope: !3242, file: !128, line: 982, type: !122)
!3248 = !DILocalVariable(name: "ch", arg: 3, scope: !3242, file: !128, line: 982, type: !45)
!3249 = !DILocalVariable(name: "options", scope: !3242, file: !128, line: 984, type: !135)
!3250 = !DILocation(line: 982, column: 32, scope: !3242)
!3251 = !DILocation(line: 982, column: 44, scope: !3242)
!3252 = !DILocation(line: 982, column: 58, scope: !3242)
!3253 = !DILocation(line: 984, column: 3, scope: !3242)
!3254 = !DILocation(line: 985, column: 13, scope: !3242)
!3255 = !{i64 0, i64 4, !1183, i64 4, i64 4, !894, i64 8, i64 32, !1183, i64 40, i64 8, !752, i64 48, i64 8, !752}
!3256 = !DILocation(line: 984, column: 26, scope: !3242)
!3257 = !DILocation(line: 152, column: 43, scope: !1908, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 986, column: 3, scope: !3242)
!3259 = !DILocation(line: 152, column: 51, scope: !1908, inlinedAt: !3258)
!3260 = !DILocation(line: 152, column: 58, scope: !1908, inlinedAt: !3258)
!3261 = !DILocation(line: 154, column: 17, scope: !1908, inlinedAt: !3258)
!3262 = !DILocation(line: 156, column: 62, scope: !1908, inlinedAt: !3258)
!3263 = !DILocation(line: 156, column: 57, scope: !1908, inlinedAt: !3258)
!3264 = !DILocation(line: 155, column: 17, scope: !1908, inlinedAt: !3258)
!3265 = !DILocation(line: 157, column: 15, scope: !1908, inlinedAt: !3258)
!3266 = !DILocation(line: 157, column: 7, scope: !1908, inlinedAt: !3258)
!3267 = !DILocation(line: 158, column: 12, scope: !1908, inlinedAt: !3258)
!3268 = !DILocation(line: 158, column: 15, scope: !1908, inlinedAt: !3258)
!3269 = !DILocation(line: 158, column: 25, scope: !1908, inlinedAt: !3258)
!3270 = !DILocation(line: 158, column: 7, scope: !1908, inlinedAt: !3258)
!3271 = !DILocation(line: 159, column: 18, scope: !1908, inlinedAt: !3258)
!3272 = !DILocation(line: 159, column: 23, scope: !1908, inlinedAt: !3258)
!3273 = !DILocation(line: 159, column: 6, scope: !1908, inlinedAt: !3258)
!3274 = !DILocation(line: 987, column: 10, scope: !3242)
!3275 = !DILocation(line: 988, column: 1, scope: !3242)
!3276 = !DILocation(line: 987, column: 3, scope: !3242)
!3277 = distinct !DISubprogram(name: "quotearg_char", scope: !128, file: !128, line: 991, type: !3278, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!44, !58, !45}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "arg", arg: 1, scope: !3277, file: !128, line: 991, type: !58)
!3282 = !DILocalVariable(name: "ch", arg: 2, scope: !3277, file: !128, line: 991, type: !45)
!3283 = !DILocation(line: 991, column: 28, scope: !3277)
!3284 = !DILocation(line: 991, column: 38, scope: !3277)
!3285 = !DILocation(line: 982, column: 32, scope: !3242, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 993, column: 10, scope: !3277)
!3287 = !DILocation(line: 982, column: 44, scope: !3242, inlinedAt: !3286)
!3288 = !DILocation(line: 982, column: 58, scope: !3242, inlinedAt: !3286)
!3289 = !DILocation(line: 984, column: 3, scope: !3242, inlinedAt: !3286)
!3290 = !DILocation(line: 985, column: 13, scope: !3242, inlinedAt: !3286)
!3291 = !DILocation(line: 984, column: 26, scope: !3242, inlinedAt: !3286)
!3292 = !DILocation(line: 152, column: 43, scope: !1908, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 986, column: 3, scope: !3242, inlinedAt: !3286)
!3294 = !DILocation(line: 152, column: 51, scope: !1908, inlinedAt: !3293)
!3295 = !DILocation(line: 152, column: 58, scope: !1908, inlinedAt: !3293)
!3296 = !DILocation(line: 154, column: 17, scope: !1908, inlinedAt: !3293)
!3297 = !DILocation(line: 156, column: 62, scope: !1908, inlinedAt: !3293)
!3298 = !DILocation(line: 156, column: 57, scope: !1908, inlinedAt: !3293)
!3299 = !DILocation(line: 155, column: 17, scope: !1908, inlinedAt: !3293)
!3300 = !DILocation(line: 157, column: 15, scope: !1908, inlinedAt: !3293)
!3301 = !DILocation(line: 157, column: 7, scope: !1908, inlinedAt: !3293)
!3302 = !DILocation(line: 158, column: 12, scope: !1908, inlinedAt: !3293)
!3303 = !DILocation(line: 158, column: 15, scope: !1908, inlinedAt: !3293)
!3304 = !DILocation(line: 158, column: 25, scope: !1908, inlinedAt: !3293)
!3305 = !DILocation(line: 158, column: 7, scope: !1908, inlinedAt: !3293)
!3306 = !DILocation(line: 159, column: 18, scope: !1908, inlinedAt: !3293)
!3307 = !DILocation(line: 159, column: 23, scope: !1908, inlinedAt: !3293)
!3308 = !DILocation(line: 159, column: 6, scope: !1908, inlinedAt: !3293)
!3309 = !DILocation(line: 987, column: 10, scope: !3242, inlinedAt: !3286)
!3310 = !DILocation(line: 988, column: 1, scope: !3242, inlinedAt: !3286)
!3311 = !DILocation(line: 993, column: 3, scope: !3277)
!3312 = distinct !DISubprogram(name: "quotearg_colon", scope: !128, file: !128, line: 997, type: !3096, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3313)
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "arg", arg: 1, scope: !3312, file: !128, line: 997, type: !58)
!3315 = !DILocation(line: 997, column: 29, scope: !3312)
!3316 = !DILocation(line: 991, column: 28, scope: !3277, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 999, column: 10, scope: !3312)
!3318 = !DILocation(line: 991, column: 38, scope: !3277, inlinedAt: !3317)
!3319 = !DILocation(line: 982, column: 32, scope: !3242, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 993, column: 10, scope: !3277, inlinedAt: !3317)
!3321 = !DILocation(line: 982, column: 44, scope: !3242, inlinedAt: !3320)
!3322 = !DILocation(line: 982, column: 58, scope: !3242, inlinedAt: !3320)
!3323 = !DILocation(line: 984, column: 3, scope: !3242, inlinedAt: !3320)
!3324 = !DILocation(line: 985, column: 13, scope: !3242, inlinedAt: !3320)
!3325 = !DILocation(line: 984, column: 26, scope: !3242, inlinedAt: !3320)
!3326 = !DILocation(line: 152, column: 43, scope: !1908, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 986, column: 3, scope: !3242, inlinedAt: !3320)
!3328 = !DILocation(line: 152, column: 51, scope: !1908, inlinedAt: !3327)
!3329 = !DILocation(line: 152, column: 58, scope: !1908, inlinedAt: !3327)
!3330 = !DILocation(line: 154, column: 17, scope: !1908, inlinedAt: !3327)
!3331 = !DILocation(line: 156, column: 57, scope: !1908, inlinedAt: !3327)
!3332 = !DILocation(line: 155, column: 17, scope: !1908, inlinedAt: !3327)
!3333 = !DILocation(line: 157, column: 7, scope: !1908, inlinedAt: !3327)
!3334 = !DILocation(line: 158, column: 12, scope: !1908, inlinedAt: !3327)
!3335 = !DILocation(line: 159, column: 6, scope: !1908, inlinedAt: !3327)
!3336 = !DILocation(line: 987, column: 10, scope: !3242, inlinedAt: !3320)
!3337 = !DILocation(line: 988, column: 1, scope: !3242, inlinedAt: !3320)
!3338 = !DILocation(line: 999, column: 3, scope: !3312)
!3339 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !128, file: !128, line: 1003, type: !3107, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3340)
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !128, line: 1003, type: !58)
!3342 = !DILocalVariable(name: "argsize", arg: 2, scope: !3339, file: !128, line: 1003, type: !122)
!3343 = !DILocation(line: 1003, column: 33, scope: !3339)
!3344 = !DILocation(line: 1003, column: 45, scope: !3339)
!3345 = !DILocation(line: 982, column: 32, scope: !3242, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1005, column: 10, scope: !3339)
!3347 = !DILocation(line: 982, column: 44, scope: !3242, inlinedAt: !3346)
!3348 = !DILocation(line: 982, column: 58, scope: !3242, inlinedAt: !3346)
!3349 = !DILocation(line: 984, column: 3, scope: !3242, inlinedAt: !3346)
!3350 = !DILocation(line: 985, column: 13, scope: !3242, inlinedAt: !3346)
!3351 = !DILocation(line: 984, column: 26, scope: !3242, inlinedAt: !3346)
!3352 = !DILocation(line: 152, column: 43, scope: !1908, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 986, column: 3, scope: !3242, inlinedAt: !3346)
!3354 = !DILocation(line: 152, column: 51, scope: !1908, inlinedAt: !3353)
!3355 = !DILocation(line: 152, column: 58, scope: !1908, inlinedAt: !3353)
!3356 = !DILocation(line: 154, column: 17, scope: !1908, inlinedAt: !3353)
!3357 = !DILocation(line: 156, column: 57, scope: !1908, inlinedAt: !3353)
!3358 = !DILocation(line: 155, column: 17, scope: !1908, inlinedAt: !3353)
!3359 = !DILocation(line: 157, column: 7, scope: !1908, inlinedAt: !3353)
!3360 = !DILocation(line: 158, column: 12, scope: !1908, inlinedAt: !3353)
!3361 = !DILocation(line: 159, column: 6, scope: !1908, inlinedAt: !3353)
!3362 = !DILocation(line: 987, column: 10, scope: !3242, inlinedAt: !3346)
!3363 = !DILocation(line: 988, column: 1, scope: !3242, inlinedAt: !3346)
!3364 = !DILocation(line: 1005, column: 3, scope: !3339)
!3365 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !128, file: !128, line: 1009, type: !3121, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3366)
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3365, file: !128, line: 1009, type: !29)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3365, file: !128, line: 1009, type: !5)
!3369 = !DILocalVariable(name: "arg", arg: 3, scope: !3365, file: !128, line: 1009, type: !58)
!3370 = !DILocalVariable(name: "options", scope: !3365, file: !128, line: 1011, type: !135)
!3371 = !DILocation(line: 195, column: 26, scope: !3134, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1012, column: 13, scope: !3365)
!3373 = !DILocation(line: 1009, column: 29, scope: !3365)
!3374 = !DILocation(line: 1009, column: 51, scope: !3365)
!3375 = !DILocation(line: 1009, column: 66, scope: !3365)
!3376 = !DILocation(line: 1011, column: 3, scope: !3365)
!3377 = !DILocation(line: 1012, column: 13, scope: !3365)
!3378 = !DILocation(line: 193, column: 48, scope: !3134, inlinedAt: !3372)
!3379 = !{!3380}
!3380 = distinct !{!3380, !3381, !"quoting_options_from_style: argument 0"}
!3381 = distinct !{!3381, !"quoting_options_from_style"}
!3382 = !DILocation(line: 196, column: 13, scope: !3146, inlinedAt: !3372)
!3383 = !DILocation(line: 196, column: 7, scope: !3134, inlinedAt: !3372)
!3384 = !DILocation(line: 197, column: 5, scope: !3146, inlinedAt: !3372)
!3385 = !DILocation(line: 1011, column: 26, scope: !3365)
!3386 = !DILocation(line: 152, column: 43, scope: !1908, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 1013, column: 3, scope: !3365)
!3388 = !DILocation(line: 152, column: 51, scope: !1908, inlinedAt: !3387)
!3389 = !DILocation(line: 152, column: 58, scope: !1908, inlinedAt: !3387)
!3390 = !DILocation(line: 154, column: 17, scope: !1908, inlinedAt: !3387)
!3391 = !DILocation(line: 156, column: 57, scope: !1908, inlinedAt: !3387)
!3392 = !DILocation(line: 155, column: 17, scope: !1908, inlinedAt: !3387)
!3393 = !DILocation(line: 157, column: 7, scope: !1908, inlinedAt: !3387)
!3394 = !DILocation(line: 158, column: 12, scope: !1908, inlinedAt: !3387)
!3395 = !DILocation(line: 159, column: 6, scope: !1908, inlinedAt: !3387)
!3396 = !DILocation(line: 1014, column: 10, scope: !3365)
!3397 = !DILocation(line: 1015, column: 1, scope: !3365)
!3398 = !DILocation(line: 1014, column: 3, scope: !3365)
!3399 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !128, file: !128, line: 1018, type: !3400, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!44, !29, !58, !58, !58}
!3402 = !{!3403, !3404, !3405, !3406}
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3399, file: !128, line: 1018, type: !29)
!3404 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3399, file: !128, line: 1018, type: !58)
!3405 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3399, file: !128, line: 1019, type: !58)
!3406 = !DILocalVariable(name: "arg", arg: 4, scope: !3399, file: !128, line: 1019, type: !58)
!3407 = !DILocation(line: 1018, column: 24, scope: !3399)
!3408 = !DILocation(line: 1018, column: 39, scope: !3399)
!3409 = !DILocation(line: 1019, column: 32, scope: !3399)
!3410 = !DILocation(line: 1019, column: 57, scope: !3399)
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !128, line: 1026, type: !29)
!3412 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !128, file: !128, line: 1026, type: !3413, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!44, !29, !58, !58, !58, !122}
!3415 = !{!3411, !3416, !3417, !3418, !3419, !3420}
!3416 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3412, file: !128, line: 1026, type: !58)
!3417 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3412, file: !128, line: 1027, type: !58)
!3418 = !DILocalVariable(name: "arg", arg: 4, scope: !3412, file: !128, line: 1028, type: !58)
!3419 = !DILocalVariable(name: "argsize", arg: 5, scope: !3412, file: !128, line: 1028, type: !122)
!3420 = !DILocalVariable(name: "o", scope: !3412, file: !128, line: 1030, type: !135)
!3421 = !DILocation(line: 1026, column: 28, scope: !3412, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 1021, column: 10, scope: !3399)
!3423 = !DILocation(line: 1026, column: 43, scope: !3412, inlinedAt: !3422)
!3424 = !DILocation(line: 1027, column: 36, scope: !3412, inlinedAt: !3422)
!3425 = !DILocation(line: 1028, column: 36, scope: !3412, inlinedAt: !3422)
!3426 = !DILocation(line: 1028, column: 48, scope: !3412, inlinedAt: !3422)
!3427 = !DILocation(line: 1030, column: 3, scope: !3412, inlinedAt: !3422)
!3428 = !DILocation(line: 1030, column: 30, scope: !3412, inlinedAt: !3422)
!3429 = !DILocation(line: 1030, column: 26, scope: !3412, inlinedAt: !3422)
!3430 = !DILocation(line: 179, column: 45, scope: !1956, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1031, column: 3, scope: !3412, inlinedAt: !3422)
!3432 = !DILocation(line: 180, column: 33, scope: !1956, inlinedAt: !3431)
!3433 = !DILocation(line: 180, column: 57, scope: !1956, inlinedAt: !3431)
!3434 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3431)
!3435 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3431)
!3436 = !DILocation(line: 185, column: 8, scope: !1972, inlinedAt: !3431)
!3437 = !DILocation(line: 185, column: 23, scope: !1972, inlinedAt: !3431)
!3438 = !DILocation(line: 185, column: 19, scope: !1972, inlinedAt: !3431)
!3439 = !DILocation(line: 186, column: 5, scope: !1972, inlinedAt: !3431)
!3440 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3431)
!3441 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3431)
!3442 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3431)
!3443 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3431)
!3444 = !DILocation(line: 1032, column: 10, scope: !3412, inlinedAt: !3422)
!3445 = !DILocation(line: 1033, column: 1, scope: !3412, inlinedAt: !3422)
!3446 = !DILocation(line: 1021, column: 3, scope: !3399)
!3447 = !DILocation(line: 1026, column: 28, scope: !3412)
!3448 = !DILocation(line: 1026, column: 43, scope: !3412)
!3449 = !DILocation(line: 1027, column: 36, scope: !3412)
!3450 = !DILocation(line: 1028, column: 36, scope: !3412)
!3451 = !DILocation(line: 1028, column: 48, scope: !3412)
!3452 = !DILocation(line: 1030, column: 3, scope: !3412)
!3453 = !DILocation(line: 1030, column: 30, scope: !3412)
!3454 = !DILocation(line: 1030, column: 26, scope: !3412)
!3455 = !DILocation(line: 179, column: 45, scope: !1956, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 1031, column: 3, scope: !3412)
!3457 = !DILocation(line: 180, column: 33, scope: !1956, inlinedAt: !3456)
!3458 = !DILocation(line: 180, column: 57, scope: !1956, inlinedAt: !3456)
!3459 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3456)
!3460 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3456)
!3461 = !DILocation(line: 185, column: 8, scope: !1972, inlinedAt: !3456)
!3462 = !DILocation(line: 185, column: 23, scope: !1972, inlinedAt: !3456)
!3463 = !DILocation(line: 185, column: 19, scope: !1972, inlinedAt: !3456)
!3464 = !DILocation(line: 186, column: 5, scope: !1972, inlinedAt: !3456)
!3465 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3456)
!3466 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3456)
!3467 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3456)
!3468 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3456)
!3469 = !DILocation(line: 1032, column: 10, scope: !3412)
!3470 = !DILocation(line: 1033, column: 1, scope: !3412)
!3471 = !DILocation(line: 1032, column: 3, scope: !3412)
!3472 = distinct !DISubprogram(name: "quotearg_custom", scope: !128, file: !128, line: 1036, type: !3473, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!44, !58, !58, !58}
!3475 = !{!3476, !3477, !3478}
!3476 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3472, file: !128, line: 1036, type: !58)
!3477 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3472, file: !128, line: 1036, type: !58)
!3478 = !DILocalVariable(name: "arg", arg: 3, scope: !3472, file: !128, line: 1037, type: !58)
!3479 = !DILocation(line: 1036, column: 30, scope: !3472)
!3480 = !DILocation(line: 1036, column: 54, scope: !3472)
!3481 = !DILocation(line: 1037, column: 30, scope: !3472)
!3482 = !DILocation(line: 1018, column: 24, scope: !3399, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 1039, column: 10, scope: !3472)
!3484 = !DILocation(line: 1018, column: 39, scope: !3399, inlinedAt: !3483)
!3485 = !DILocation(line: 1019, column: 32, scope: !3399, inlinedAt: !3483)
!3486 = !DILocation(line: 1019, column: 57, scope: !3399, inlinedAt: !3483)
!3487 = !DILocation(line: 1026, column: 28, scope: !3412, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 1021, column: 10, scope: !3399, inlinedAt: !3483)
!3489 = !DILocation(line: 1026, column: 43, scope: !3412, inlinedAt: !3488)
!3490 = !DILocation(line: 1027, column: 36, scope: !3412, inlinedAt: !3488)
!3491 = !DILocation(line: 1028, column: 36, scope: !3412, inlinedAt: !3488)
!3492 = !DILocation(line: 1028, column: 48, scope: !3412, inlinedAt: !3488)
!3493 = !DILocation(line: 1030, column: 3, scope: !3412, inlinedAt: !3488)
!3494 = !DILocation(line: 1030, column: 30, scope: !3412, inlinedAt: !3488)
!3495 = !DILocation(line: 1030, column: 26, scope: !3412, inlinedAt: !3488)
!3496 = !DILocation(line: 179, column: 45, scope: !1956, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1031, column: 3, scope: !3412, inlinedAt: !3488)
!3498 = !DILocation(line: 180, column: 33, scope: !1956, inlinedAt: !3497)
!3499 = !DILocation(line: 180, column: 57, scope: !1956, inlinedAt: !3497)
!3500 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3497)
!3501 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3497)
!3502 = !DILocation(line: 185, column: 8, scope: !1972, inlinedAt: !3497)
!3503 = !DILocation(line: 185, column: 23, scope: !1972, inlinedAt: !3497)
!3504 = !DILocation(line: 185, column: 19, scope: !1972, inlinedAt: !3497)
!3505 = !DILocation(line: 186, column: 5, scope: !1972, inlinedAt: !3497)
!3506 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3497)
!3507 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3497)
!3508 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3497)
!3509 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3497)
!3510 = !DILocation(line: 1032, column: 10, scope: !3412, inlinedAt: !3488)
!3511 = !DILocation(line: 1033, column: 1, scope: !3412, inlinedAt: !3488)
!3512 = !DILocation(line: 1039, column: 3, scope: !3472)
!3513 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !128, file: !128, line: 1043, type: !3514, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!44, !58, !58, !58, !122}
!3516 = !{!3517, !3518, !3519, !3520}
!3517 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3513, file: !128, line: 1043, type: !58)
!3518 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3513, file: !128, line: 1043, type: !58)
!3519 = !DILocalVariable(name: "arg", arg: 3, scope: !3513, file: !128, line: 1044, type: !58)
!3520 = !DILocalVariable(name: "argsize", arg: 4, scope: !3513, file: !128, line: 1044, type: !122)
!3521 = !DILocation(line: 1043, column: 34, scope: !3513)
!3522 = !DILocation(line: 1043, column: 58, scope: !3513)
!3523 = !DILocation(line: 1044, column: 34, scope: !3513)
!3524 = !DILocation(line: 1044, column: 46, scope: !3513)
!3525 = !DILocation(line: 1026, column: 28, scope: !3412, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1046, column: 10, scope: !3513)
!3527 = !DILocation(line: 1026, column: 43, scope: !3412, inlinedAt: !3526)
!3528 = !DILocation(line: 1027, column: 36, scope: !3412, inlinedAt: !3526)
!3529 = !DILocation(line: 1028, column: 36, scope: !3412, inlinedAt: !3526)
!3530 = !DILocation(line: 1028, column: 48, scope: !3412, inlinedAt: !3526)
!3531 = !DILocation(line: 1030, column: 3, scope: !3412, inlinedAt: !3526)
!3532 = !DILocation(line: 1030, column: 30, scope: !3412, inlinedAt: !3526)
!3533 = !DILocation(line: 1030, column: 26, scope: !3412, inlinedAt: !3526)
!3534 = !DILocation(line: 179, column: 45, scope: !1956, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 1031, column: 3, scope: !3412, inlinedAt: !3526)
!3536 = !DILocation(line: 180, column: 33, scope: !1956, inlinedAt: !3535)
!3537 = !DILocation(line: 180, column: 57, scope: !1956, inlinedAt: !3535)
!3538 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3535)
!3539 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3535)
!3540 = !DILocation(line: 185, column: 8, scope: !1972, inlinedAt: !3535)
!3541 = !DILocation(line: 185, column: 23, scope: !1972, inlinedAt: !3535)
!3542 = !DILocation(line: 185, column: 19, scope: !1972, inlinedAt: !3535)
!3543 = !DILocation(line: 186, column: 5, scope: !1972, inlinedAt: !3535)
!3544 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3535)
!3545 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3535)
!3546 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3535)
!3547 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3535)
!3548 = !DILocation(line: 1032, column: 10, scope: !3412, inlinedAt: !3526)
!3549 = !DILocation(line: 1033, column: 1, scope: !3412, inlinedAt: !3526)
!3550 = !DILocation(line: 1046, column: 3, scope: !3513)
!3551 = distinct !DISubprogram(name: "quote_n_mem", scope: !128, file: !128, line: 1061, type: !3552, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!58, !29, !58, !122}
!3554 = !{!3555, !3556, !3557}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3551, file: !128, line: 1061, type: !29)
!3556 = !DILocalVariable(name: "arg", arg: 2, scope: !3551, file: !128, line: 1061, type: !58)
!3557 = !DILocalVariable(name: "argsize", arg: 3, scope: !3551, file: !128, line: 1061, type: !122)
!3558 = !DILocation(line: 1061, column: 18, scope: !3551)
!3559 = !DILocation(line: 1061, column: 33, scope: !3551)
!3560 = !DILocation(line: 1061, column: 45, scope: !3551)
!3561 = !DILocation(line: 1063, column: 10, scope: !3551)
!3562 = !DILocation(line: 1063, column: 3, scope: !3551)
!3563 = distinct !DISubprogram(name: "quote_mem", scope: !128, file: !128, line: 1067, type: !3564, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!58, !58, !122}
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "arg", arg: 1, scope: !3563, file: !128, line: 1067, type: !58)
!3568 = !DILocalVariable(name: "argsize", arg: 2, scope: !3563, file: !128, line: 1067, type: !122)
!3569 = !DILocation(line: 1067, column: 24, scope: !3563)
!3570 = !DILocation(line: 1067, column: 36, scope: !3563)
!3571 = !DILocation(line: 1061, column: 18, scope: !3551, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 1069, column: 10, scope: !3563)
!3573 = !DILocation(line: 1061, column: 33, scope: !3551, inlinedAt: !3572)
!3574 = !DILocation(line: 1061, column: 45, scope: !3551, inlinedAt: !3572)
!3575 = !DILocation(line: 1063, column: 10, scope: !3551, inlinedAt: !3572)
!3576 = !DILocation(line: 1069, column: 3, scope: !3563)
!3577 = distinct !DISubprogram(name: "quote_n", scope: !128, file: !128, line: 1073, type: !3578, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!58, !29, !58}
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "n", arg: 1, scope: !3577, file: !128, line: 1073, type: !29)
!3582 = !DILocalVariable(name: "arg", arg: 2, scope: !3577, file: !128, line: 1073, type: !58)
!3583 = !DILocation(line: 1073, column: 14, scope: !3577)
!3584 = !DILocation(line: 1073, column: 29, scope: !3577)
!3585 = !DILocation(line: 1061, column: 18, scope: !3551, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 1075, column: 10, scope: !3577)
!3587 = !DILocation(line: 1061, column: 33, scope: !3551, inlinedAt: !3586)
!3588 = !DILocation(line: 1061, column: 45, scope: !3551, inlinedAt: !3586)
!3589 = !DILocation(line: 1063, column: 10, scope: !3551, inlinedAt: !3586)
!3590 = !DILocation(line: 1075, column: 3, scope: !3577)
!3591 = distinct !DISubprogram(name: "quote", scope: !128, file: !128, line: 1079, type: !3592, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !97, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!58, !58}
!3594 = !{!3595}
!3595 = !DILocalVariable(name: "arg", arg: 1, scope: !3591, file: !128, line: 1079, type: !58)
!3596 = !DILocation(line: 1079, column: 20, scope: !3591)
!3597 = !DILocation(line: 1073, column: 14, scope: !3577, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1081, column: 10, scope: !3591)
!3599 = !DILocation(line: 1073, column: 29, scope: !3577, inlinedAt: !3598)
!3600 = !DILocation(line: 1061, column: 18, scope: !3551, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 1075, column: 10, scope: !3577, inlinedAt: !3598)
!3602 = !DILocation(line: 1061, column: 33, scope: !3551, inlinedAt: !3601)
!3603 = !DILocation(line: 1061, column: 45, scope: !3551, inlinedAt: !3601)
!3604 = !DILocation(line: 1063, column: 10, scope: !3551, inlinedAt: !3601)
!3605 = !DILocation(line: 1081, column: 3, scope: !3591)
!3606 = distinct !DISubprogram(name: "savewd_init", scope: !21, file: !21, line: 79, type: !3607, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3610)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!3610 = !{!3611}
!3611 = !DILocalVariable(name: "wd", arg: 1, scope: !3606, file: !21, line: 79, type: !3609)
!3612 = !DILocation(line: 79, column: 29, scope: !3606)
!3613 = !DILocation(line: 81, column: 7, scope: !3606)
!3614 = !DILocation(line: 81, column: 13, scope: !3606)
!3615 = !DILocation(line: 82, column: 1, scope: !3606)
!3616 = distinct !DISubprogram(name: "savewd_errno", scope: !21, file: !21, line: 124, type: !3617, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3621)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!29, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "wd", arg: 1, scope: !3616, file: !21, line: 124, type: !3619)
!3623 = !DILocation(line: 124, column: 36, scope: !3616)
!3624 = !DILocation(line: 126, column: 15, scope: !3616)
!3625 = !DILocation(line: 126, column: 21, scope: !3616)
!3626 = !DILocation(line: 126, column: 11, scope: !3616)
!3627 = !DILocation(line: 126, column: 46, scope: !3616)
!3628 = !DILocation(line: 126, column: 3, scope: !3616)
!3629 = distinct !DISubprogram(name: "savewd_chdir", scope: !3630, file: !3630, line: 106, type: !3631, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3633)
!3630 = !DIFile(filename: "lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!29, !3609, !58, !29, !62}
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640}
!3634 = !DILocalVariable(name: "wd", arg: 1, scope: !3629, file: !3630, line: 106, type: !3609)
!3635 = !DILocalVariable(name: "dir", arg: 2, scope: !3629, file: !3630, line: 106, type: !58)
!3636 = !DILocalVariable(name: "options", arg: 3, scope: !3629, file: !3630, line: 106, type: !29)
!3637 = !DILocalVariable(name: "open_result", arg: 4, scope: !3629, file: !3630, line: 107, type: !62)
!3638 = !DILocalVariable(name: "fd", scope: !3629, file: !3630, line: 109, type: !29)
!3639 = !DILocalVariable(name: "result", scope: !3629, file: !3630, line: 110, type: !29)
!3640 = !DILocalVariable(name: "e", scope: !3641, file: !3630, line: 166, type: !29)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3630, line: 165, column: 5)
!3642 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 164, column: 7)
!3643 = !DILocation(line: 106, column: 30, scope: !3629)
!3644 = !DILocation(line: 106, column: 46, scope: !3629)
!3645 = !DILocation(line: 106, column: 55, scope: !3629)
!3646 = !DILocation(line: 107, column: 19, scope: !3629)
!3647 = !DILocation(line: 109, column: 7, scope: !3629)
!3648 = !DILocation(line: 110, column: 7, scope: !3629)
!3649 = !DILocation(line: 114, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 114, column: 7)
!3651 = !DILocation(line: 115, column: 7, scope: !3650)
!3652 = !DILocation(line: 115, column: 19, scope: !3650)
!3653 = !DILocation(line: 119, column: 22, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !3630, line: 116, column: 5)
!3655 = !DILocation(line: 119, column: 19, scope: !3654)
!3656 = !DILocation(line: 117, column: 12, scope: !3654)
!3657 = !DILocation(line: 121, column: 11, scope: !3654)
!3658 = !DILocation(line: 123, column: 26, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3630, line: 122, column: 9)
!3660 = distinct !DILexicalBlock(scope: !3654, file: !3630, line: 121, column: 11)
!3661 = !DILocation(line: 124, column: 28, scope: !3659)
!3662 = !DILocation(line: 124, column: 11, scope: !3659)
!3663 = !DILocation(line: 124, column: 26, scope: !3659)
!3664 = !DILocation(line: 125, column: 9, scope: !3659)
!3665 = !DILocation(line: 127, column: 14, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3654, file: !3630, line: 127, column: 11)
!3667 = !DILocation(line: 127, column: 18, scope: !3666)
!3668 = !DILocation(line: 127, column: 21, scope: !3666)
!3669 = !DILocation(line: 127, column: 27, scope: !3666)
!3670 = !DILocation(line: 131, column: 44, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 131, column: 7)
!3672 = !DILocation(line: 131, column: 33, scope: !3671)
!3673 = !DILocalVariable(name: "wd", arg: 1, scope: !3674, file: !3630, line: 51, type: !3609)
!3674 = distinct !DISubprogram(name: "savewd_save", scope: !3630, file: !3630, line: 51, type: !3675, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!80, !3609}
!3677 = !{!3673, !3678}
!3678 = !DILocalVariable(name: "fd", scope: !3679, file: !3630, line: 58, type: !29)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3630, line: 57, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3674, file: !3630, line: 54, column: 5)
!3681 = !DILocation(line: 51, column: 29, scope: !3674, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 133, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3630, line: 133, column: 11)
!3684 = distinct !DILexicalBlock(scope: !3671, file: !3630, line: 132, column: 5)
!3685 = !DILocation(line: 53, column: 15, scope: !3674, inlinedAt: !3682)
!3686 = !DILocation(line: 53, column: 3, scope: !3674, inlinedAt: !3682)
!3687 = !DILocation(line: 58, column: 18, scope: !3679, inlinedAt: !3682)
!3688 = !DILocation(line: 58, column: 13, scope: !3679, inlinedAt: !3682)
!3689 = !DILocation(line: 59, column: 15, scope: !3690, inlinedAt: !3682)
!3690 = distinct !DILexicalBlock(scope: !3679, file: !3630, line: 59, column: 13)
!3691 = !DILocation(line: 59, column: 13, scope: !3679, inlinedAt: !3682)
!3692 = !DILocation(line: 61, column: 23, scope: !3693, inlinedAt: !3682)
!3693 = distinct !DILexicalBlock(scope: !3690, file: !3630, line: 60, column: 11)
!3694 = !DILocation(line: 62, column: 21, scope: !3693, inlinedAt: !3682)
!3695 = !DILocation(line: 62, column: 24, scope: !3693, inlinedAt: !3682)
!3696 = !DILocation(line: 65, column: 13, scope: !3697, inlinedAt: !3682)
!3697 = distinct !DILexicalBlock(scope: !3679, file: !3630, line: 65, column: 13)
!3698 = !DILocation(line: 65, column: 29, scope: !3697, inlinedAt: !3682)
!3699 = !DILocation(line: 67, column: 23, scope: !3700, inlinedAt: !3682)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !3630, line: 66, column: 11)
!3701 = !DILocation(line: 68, column: 21, scope: !3700, inlinedAt: !3682)
!3702 = !DILocation(line: 68, column: 28, scope: !3700, inlinedAt: !3682)
!3703 = !DILocation(line: 72, column: 17, scope: !3680, inlinedAt: !3682)
!3704 = !DILocation(line: 73, column: 15, scope: !3680, inlinedAt: !3682)
!3705 = !DILocation(line: 73, column: 21, scope: !3680, inlinedAt: !3682)
!3706 = !DILocation(line: 76, column: 11, scope: !3680, inlinedAt: !3682)
!3707 = !DILocation(line: 76, column: 19, scope: !3708, inlinedAt: !3682)
!3708 = distinct !DILexicalBlock(scope: !3680, file: !3630, line: 76, column: 11)
!3709 = !DILocation(line: 81, column: 27, scope: !3710, inlinedAt: !3682)
!3710 = distinct !DILexicalBlock(scope: !3708, file: !3630, line: 77, column: 9)
!3711 = !DILocation(line: 81, column: 25, scope: !3710, inlinedAt: !3682)
!3712 = !DILocation(line: 82, column: 29, scope: !3713, inlinedAt: !3682)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3630, line: 82, column: 15)
!3714 = !DILocation(line: 82, column: 15, scope: !3710, inlinedAt: !3682)
!3715 = !DILocation(line: 84, column: 21, scope: !3716, inlinedAt: !3682)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3630, line: 84, column: 19)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !3630, line: 83, column: 13)
!3718 = !DILocation(line: 84, column: 19, scope: !3717, inlinedAt: !3682)
!3719 = !DILocation(line: 86, column: 25, scope: !3717, inlinedAt: !3682)
!3720 = !DILocation(line: 87, column: 32, scope: !3717, inlinedAt: !3682)
!3721 = !DILocation(line: 87, column: 30, scope: !3717, inlinedAt: !3682)
!3722 = !DILocation(line: 88, column: 13, scope: !3717, inlinedAt: !3682)
!3723 = !DILocation(line: 99, column: 7, scope: !3724, inlinedAt: !3682)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3630, line: 99, column: 7)
!3725 = distinct !DILexicalBlock(scope: !3680, file: !3630, line: 99, column: 7)
!3726 = !DILocation(line: 140, column: 24, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3683, file: !3630, line: 139, column: 9)
!3728 = !DILocation(line: 140, column: 21, scope: !3727)
!3729 = !DILocation(line: 140, column: 30, scope: !3727)
!3730 = !DILocation(line: 140, column: 44, scope: !3727)
!3731 = !DILocation(line: 142, column: 22, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3727, file: !3630, line: 142, column: 15)
!3733 = !DILocation(line: 142, column: 15, scope: !3727)
!3734 = !DILocation(line: 143, column: 25, scope: !3732)
!3735 = !DILocation(line: 143, column: 13, scope: !3732)
!3736 = !DILocation(line: 146, column: 27, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3732, file: !3630, line: 144, column: 15)
!3738 = !DILocation(line: 147, column: 17, scope: !3737)
!3739 = !DILocation(line: 155, column: 17, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3630, line: 155, column: 17)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !3630, line: 155, column: 17)
!3742 = !DILocation(line: 155, column: 17, scope: !3741)
!3743 = !DILocation(line: 159, column: 17, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3630, line: 159, column: 17)
!3745 = distinct !DILexicalBlock(scope: !3737, file: !3630, line: 159, column: 17)
!3746 = !DILocation(line: 0, scope: !3666)
!3747 = !DILocation(line: 164, column: 9, scope: !3642)
!3748 = !DILocation(line: 164, column: 20, scope: !3642)
!3749 = !DILocation(line: 164, column: 15, scope: !3642)
!3750 = !DILocation(line: 166, column: 15, scope: !3641)
!3751 = !DILocation(line: 166, column: 11, scope: !3641)
!3752 = !DILocation(line: 167, column: 7, scope: !3641)
!3753 = !DILocation(line: 168, column: 13, scope: !3641)
!3754 = !DILocation(line: 169, column: 5, scope: !3641)
!3755 = !DILocation(line: 171, column: 3, scope: !3629)
!3756 = distinct !DISubprogram(name: "savewd_restore", scope: !3630, file: !3630, line: 175, type: !3757, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!29, !3609, !29}
!3759 = !{!3760, !3761, !3762, !3766, !3768}
!3760 = !DILocalVariable(name: "wd", arg: 1, scope: !3756, file: !3630, line: 175, type: !3609)
!3761 = !DILocalVariable(name: "status", arg: 2, scope: !3756, file: !3630, line: 175, type: !29)
!3762 = !DILocalVariable(name: "chdir_errno", scope: !3763, file: !3630, line: 194, type: !29)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3630, line: 193, column: 9)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3630, line: 187, column: 11)
!3765 = distinct !DILexicalBlock(scope: !3756, file: !3630, line: 178, column: 5)
!3766 = !DILocalVariable(name: "child", scope: !3767, file: !3630, line: 209, type: !32)
!3767 = distinct !DILexicalBlock(scope: !3765, file: !3630, line: 208, column: 7)
!3768 = !DILocalVariable(name: "child_status", scope: !3769, file: !3630, line: 214, type: !29)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3630, line: 213, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !3630, line: 212, column: 13)
!3771 = !DILocation(line: 175, column: 32, scope: !3756)
!3772 = !DILocation(line: 175, column: 40, scope: !3756)
!3773 = !DILocation(line: 177, column: 15, scope: !3756)
!3774 = !DILocation(line: 177, column: 3, scope: !3756)
!3775 = !DILocation(line: 202, column: 23, scope: !3765)
!3776 = !DILocation(line: 202, column: 7, scope: !3765)
!3777 = !DILocation(line: 187, column: 27, scope: !3764)
!3778 = !DILocation(line: 187, column: 11, scope: !3764)
!3779 = !DILocation(line: 187, column: 31, scope: !3764)
!3780 = !DILocation(line: 187, column: 11, scope: !3765)
!3781 = !DILocation(line: 189, column: 21, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3764, file: !3630, line: 188, column: 9)
!3783 = !DILocation(line: 190, column: 11, scope: !3782)
!3784 = !DILocation(line: 194, column: 29, scope: !3763)
!3785 = !DILocation(line: 194, column: 15, scope: !3763)
!3786 = !DILocation(line: 195, column: 26, scope: !3763)
!3787 = !DILocation(line: 195, column: 11, scope: !3763)
!3788 = !DILocation(line: 196, column: 21, scope: !3763)
!3789 = !DILocation(line: 197, column: 26, scope: !3763)
!3790 = !DILocation(line: 199, column: 7, scope: !3765)
!3791 = !DILocation(line: 202, column: 13, scope: !3765)
!3792 = !DILocation(line: 203, column: 7, scope: !3765)
!3793 = !DILocation(line: 209, column: 31, scope: !3767)
!3794 = !DILocation(line: 209, column: 15, scope: !3767)
!3795 = !DILocation(line: 210, column: 19, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3767, file: !3630, line: 210, column: 13)
!3797 = !DILocation(line: 210, column: 13, scope: !3767)
!3798 = !DILocation(line: 211, column: 11, scope: !3796)
!3799 = !DILocation(line: 212, column: 15, scope: !3770)
!3800 = !DILocation(line: 212, column: 13, scope: !3767)
!3801 = !DILocation(line: 214, column: 13, scope: !3769)
!3802 = !DILocation(line: 215, column: 13, scope: !3769)
!3803 = !DILocation(line: 214, column: 17, scope: !3769)
!3804 = !DILocation(line: 215, column: 20, scope: !3769)
!3805 = !DILocation(line: 215, column: 54, scope: !3769)
!3806 = !DILocation(line: 216, column: 15, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !3630, line: 216, column: 15)
!3808 = distinct !DILexicalBlock(scope: !3769, file: !3630, line: 216, column: 15)
!3809 = !DILocation(line: 216, column: 15, scope: !3808)
!3810 = distinct !{!3810, !3802, !3811}
!3811 = !DILocation(line: 216, column: 15, scope: !3769)
!3812 = !DILocation(line: 217, column: 27, scope: !3769)
!3813 = !DILocation(line: 218, column: 19, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3769, file: !3630, line: 218, column: 17)
!3815 = !DILocation(line: 218, column: 17, scope: !3769)
!3816 = !DILocation(line: 219, column: 15, scope: !3814)
!3817 = !DILocation(line: 220, column: 20, scope: !3769)
!3818 = !DILocation(line: 221, column: 11, scope: !3770)
!3819 = !DILocation(line: 226, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3630, line: 226, column: 7)
!3821 = distinct !DILexicalBlock(scope: !3765, file: !3630, line: 226, column: 7)
!3822 = !DILocation(line: 0, scope: !3765)
!3823 = !DILocation(line: 230, column: 1, scope: !3756)
!3824 = distinct !DISubprogram(name: "savewd_finish", scope: !3630, file: !3630, line: 233, type: !3607, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3825)
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "wd", arg: 1, scope: !3824, file: !3630, line: 233, type: !3609)
!3827 = !DILocation(line: 233, column: 31, scope: !3824)
!3828 = !DILocation(line: 235, column: 15, scope: !3824)
!3829 = !DILocation(line: 235, column: 3, scope: !3824)
!3830 = !DILocation(line: 243, column: 22, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3824, file: !3630, line: 236, column: 5)
!3832 = !DILocation(line: 243, column: 7, scope: !3831)
!3833 = !DILocation(line: 244, column: 7, scope: !3831)
!3834 = !DILocation(line: 247, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3630, line: 247, column: 7)
!3836 = distinct !DILexicalBlock(scope: !3831, file: !3630, line: 247, column: 7)
!3837 = !DILocation(line: 247, column: 7, scope: !3836)
!3838 = !DILocation(line: 251, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3630, line: 251, column: 7)
!3840 = distinct !DILexicalBlock(scope: !3831, file: !3630, line: 251, column: 7)
!3841 = !DILocation(line: 254, column: 13, scope: !3824)
!3842 = !DILocation(line: 255, column: 1, scope: !3824)
!3843 = distinct !DISubprogram(name: "savewd_process_files", scope: !3630, file: !3630, line: 274, type: !3844, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3849)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!29, !29, !805, !3846, !46}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!29, !44, !3609, !46}
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3864, !3867}
!3850 = !DILocalVariable(name: "n_files", arg: 1, scope: !3843, file: !3630, line: 274, type: !29)
!3851 = !DILocalVariable(name: "file", arg: 2, scope: !3843, file: !3630, line: 274, type: !805)
!3852 = !DILocalVariable(name: "act", arg: 3, scope: !3843, file: !3630, line: 275, type: !3846)
!3853 = !DILocalVariable(name: "options", arg: 4, scope: !3843, file: !3630, line: 276, type: !46)
!3854 = !DILocalVariable(name: "i", scope: !3843, file: !3630, line: 278, type: !29)
!3855 = !DILocalVariable(name: "last_relative", scope: !3843, file: !3630, line: 279, type: !29)
!3856 = !DILocalVariable(name: "exit_status", scope: !3843, file: !3630, line: 280, type: !29)
!3857 = !DILocalVariable(name: "wd", scope: !3843, file: !3630, line: 281, type: !252)
!3858 = !DILocalVariable(name: "s", scope: !3859, file: !3630, line: 292, type: !29)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3630, line: 291, column: 9)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3630, line: 290, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3630, line: 289, column: 5)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3630, line: 288, column: 3)
!3863 = distinct !DILexicalBlock(scope: !3843, file: !3630, line: 288, column: 3)
!3864 = !DILocalVariable(name: "r", scope: !3865, file: !3630, line: 299, type: !29)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3630, line: 298, column: 9)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !3630, line: 297, column: 11)
!3867 = !DILocalVariable(name: "s", scope: !3868, file: !3630, line: 309, type: !29)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3630, line: 308, column: 5)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3630, line: 307, column: 3)
!3870 = distinct !DILexicalBlock(scope: !3843, file: !3630, line: 307, column: 3)
!3871 = !DILocation(line: 274, column: 27, scope: !3843)
!3872 = !DILocation(line: 274, column: 43, scope: !3843)
!3873 = !DILocation(line: 275, column: 29, scope: !3843)
!3874 = !DILocation(line: 276, column: 29, scope: !3843)
!3875 = !DILocation(line: 278, column: 7, scope: !3843)
!3876 = !DILocation(line: 280, column: 7, scope: !3843)
!3877 = !DILocation(line: 281, column: 3, scope: !3843)
!3878 = !DILocation(line: 281, column: 17, scope: !3843)
!3879 = !DILocation(line: 79, column: 29, scope: !3606, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 282, column: 3, scope: !3843)
!3881 = !DILocation(line: 81, column: 7, scope: !3606, inlinedAt: !3880)
!3882 = !DILocation(line: 81, column: 13, scope: !3606, inlinedAt: !3880)
!3883 = !DILocation(line: 279, column: 7, scope: !3843)
!3884 = !DILocation(line: 284, column: 8, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3843, file: !3630, line: 284, column: 3)
!3886 = !DILocation(line: 0, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3885, file: !3630, line: 284, column: 3)
!3888 = !DILocation(line: 284, column: 39, scope: !3887)
!3889 = !DILocation(line: 284, column: 3, scope: !3885)
!3890 = !DILocation(line: 285, column: 11, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !3630, line: 285, column: 9)
!3892 = !DILocation(line: 285, column: 9, scope: !3887)
!3893 = distinct !{!3893, !3889, !3894}
!3894 = !DILocation(line: 286, column: 7, scope: !3885)
!3895 = !DILocation(line: 288, column: 12, scope: !3862)
!3896 = !DILocation(line: 288, column: 3, scope: !3863)
!3897 = !DILocation(line: 270, column: 52, scope: !3898, inlinedAt: !3903)
!3898 = distinct !DISubprogram(name: "savewd_delegating", scope: !3630, file: !3630, line: 268, type: !3899, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !248, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!80, !3619}
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "wd", arg: 1, scope: !3898, file: !3630, line: 268, type: !3619)
!3903 = distinct !DILocation(line: 290, column: 13, scope: !3860)
!3904 = !DILocation(line: 268, column: 41, scope: !3898, inlinedAt: !3903)
!3905 = !DILocation(line: 270, column: 20, scope: !3898, inlinedAt: !3903)
!3906 = !DILocation(line: 270, column: 42, scope: !3898, inlinedAt: !3903)
!3907 = !DILocation(line: 270, column: 37, scope: !3898, inlinedAt: !3903)
!3908 = !DILocation(line: 292, column: 24, scope: !3859)
!3909 = !DILocation(line: 292, column: 19, scope: !3859)
!3910 = !DILocation(line: 292, column: 15, scope: !3859)
!3911 = !DILocation(line: 293, column: 27, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3859, file: !3630, line: 293, column: 15)
!3913 = !DILocation(line: 293, column: 15, scope: !3859)
!3914 = !DILocation(line: 295, column: 9, scope: !3859)
!3915 = !DILocation(line: 0, scope: !3912)
!3916 = !DILocation(line: 297, column: 13, scope: !3866)
!3917 = !DILocation(line: 297, column: 11, scope: !3861)
!3918 = !DILocation(line: 299, column: 19, scope: !3865)
!3919 = !DILocation(line: 299, column: 15, scope: !3865)
!3920 = !DILocation(line: 300, column: 27, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3865, file: !3630, line: 300, column: 15)
!3922 = !DILocation(line: 300, column: 15, scope: !3865)
!3923 = !DILocation(line: 302, column: 9, scope: !3865)
!3924 = !DILocation(line: 0, scope: !3921)
!3925 = !DILocation(line: 0, scope: !3843)
!3926 = distinct !{!3926, !3896, !3927}
!3927 = !DILocation(line: 303, column: 5, scope: !3863)
!3928 = !DILocation(line: 233, column: 31, scope: !3824, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 305, column: 3, scope: !3843)
!3930 = !DILocation(line: 235, column: 3, scope: !3824, inlinedAt: !3929)
!3931 = !DILocation(line: 243, column: 22, scope: !3831, inlinedAt: !3929)
!3932 = !DILocation(line: 243, column: 7, scope: !3831, inlinedAt: !3929)
!3933 = !DILocation(line: 244, column: 7, scope: !3831, inlinedAt: !3929)
!3934 = !DILocation(line: 247, column: 7, scope: !3835, inlinedAt: !3929)
!3935 = !DILocation(line: 247, column: 7, scope: !3836, inlinedAt: !3929)
!3936 = !DILocation(line: 251, column: 7, scope: !3839, inlinedAt: !3929)
!3937 = !DILocation(line: 254, column: 13, scope: !3824, inlinedAt: !3929)
!3938 = !DILocation(line: 307, column: 12, scope: !3869)
!3939 = !DILocation(line: 307, column: 3, scope: !3870)
!3940 = !DILocation(line: 309, column: 20, scope: !3868)
!3941 = !DILocation(line: 309, column: 15, scope: !3868)
!3942 = !DILocation(line: 309, column: 11, scope: !3868)
!3943 = !DILocation(line: 310, column: 23, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3868, file: !3630, line: 310, column: 11)
!3945 = !DILocation(line: 310, column: 11, scope: !3868)
!3946 = !DILocation(line: 307, column: 24, scope: !3869)
!3947 = distinct !{!3947, !3939, !3948}
!3948 = !DILocation(line: 312, column: 5, scope: !3870)
!3949 = !DILocation(line: 0, scope: !3944)
!3950 = !DILocation(line: 315, column: 1, scope: !3843)
!3951 = !DILocation(line: 314, column: 3, scope: !3843)
!3952 = distinct !DISubprogram(name: "version_etc_arn", scope: !265, file: !265, line: 62, type: !3953, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3990)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3955, !58, !58, !58, !3989, !122}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3957, file: !1079, line: 51, baseType: !29, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3957, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3957, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3957, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3957, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3957, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3957, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3957, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3957, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3957, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3957, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3957, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3957, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3957, file: !1079, line: 70, baseType: !3973, size: 64, offset: 832)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3957, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3957, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3957, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3957, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3957, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3957, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3957, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3957, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3957, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3957, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3957, file: !1079, line: 93, baseType: !3973, size: 64, offset: 1344)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3957, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3957, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3957, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3957, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996}
!3991 = !DILocalVariable(name: "stream", arg: 1, scope: !3952, file: !265, line: 62, type: !3955)
!3992 = !DILocalVariable(name: "command_name", arg: 2, scope: !3952, file: !265, line: 63, type: !58)
!3993 = !DILocalVariable(name: "package", arg: 3, scope: !3952, file: !265, line: 63, type: !58)
!3994 = !DILocalVariable(name: "version", arg: 4, scope: !3952, file: !265, line: 64, type: !58)
!3995 = !DILocalVariable(name: "authors", arg: 5, scope: !3952, file: !265, line: 65, type: !3989)
!3996 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3952, file: !265, line: 65, type: !122)
!3997 = !DILocation(line: 62, column: 24, scope: !3952)
!3998 = !DILocation(line: 63, column: 30, scope: !3952)
!3999 = !DILocation(line: 63, column: 56, scope: !3952)
!4000 = !DILocation(line: 64, column: 30, scope: !3952)
!4001 = !DILocation(line: 65, column: 39, scope: !3952)
!4002 = !DILocation(line: 65, column: 55, scope: !3952)
!4003 = !DILocation(line: 67, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3952, file: !265, line: 67, column: 7)
!4005 = !DILocation(line: 67, column: 7, scope: !3952)
!4006 = !DILocation(line: 68, column: 5, scope: !4004)
!4007 = !DILocation(line: 70, column: 5, scope: !4004)
!4008 = !DILocation(line: 84, column: 3, scope: !3952)
!4009 = !DILocation(line: 86, column: 3, scope: !3952)
!4010 = !DILocation(line: 95, column: 3, scope: !3952)
!4011 = !DILocation(line: 99, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3952, file: !265, line: 96, column: 5)
!4013 = !DILocation(line: 102, column: 7, scope: !4012)
!4014 = !DILocation(line: 103, column: 7, scope: !4012)
!4015 = !DILocation(line: 106, column: 7, scope: !4012)
!4016 = !DILocation(line: 107, column: 7, scope: !4012)
!4017 = !DILocation(line: 110, column: 7, scope: !4012)
!4018 = !DILocation(line: 112, column: 7, scope: !4012)
!4019 = !DILocation(line: 117, column: 7, scope: !4012)
!4020 = !DILocation(line: 119, column: 7, scope: !4012)
!4021 = !DILocation(line: 124, column: 7, scope: !4012)
!4022 = !DILocation(line: 126, column: 7, scope: !4012)
!4023 = !DILocation(line: 131, column: 7, scope: !4012)
!4024 = !DILocation(line: 134, column: 7, scope: !4012)
!4025 = !DILocation(line: 139, column: 7, scope: !4012)
!4026 = !DILocation(line: 142, column: 7, scope: !4012)
!4027 = !DILocation(line: 147, column: 7, scope: !4012)
!4028 = !DILocation(line: 151, column: 7, scope: !4012)
!4029 = !DILocation(line: 156, column: 7, scope: !4012)
!4030 = !DILocation(line: 160, column: 7, scope: !4012)
!4031 = !DILocation(line: 167, column: 7, scope: !4012)
!4032 = !DILocation(line: 171, column: 7, scope: !4012)
!4033 = !DILocation(line: 173, column: 1, scope: !3952)
!4034 = distinct !DISubprogram(name: "version_etc_ar", scope: !265, file: !265, line: 180, type: !4035, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3955, !58, !58, !58, !3989}
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043}
!4038 = !DILocalVariable(name: "stream", arg: 1, scope: !4034, file: !265, line: 180, type: !3955)
!4039 = !DILocalVariable(name: "command_name", arg: 2, scope: !4034, file: !265, line: 181, type: !58)
!4040 = !DILocalVariable(name: "package", arg: 3, scope: !4034, file: !265, line: 181, type: !58)
!4041 = !DILocalVariable(name: "version", arg: 4, scope: !4034, file: !265, line: 182, type: !58)
!4042 = !DILocalVariable(name: "authors", arg: 5, scope: !4034, file: !265, line: 182, type: !3989)
!4043 = !DILocalVariable(name: "n_authors", scope: !4034, file: !265, line: 184, type: !122)
!4044 = !DILocation(line: 180, column: 23, scope: !4034)
!4045 = !DILocation(line: 181, column: 29, scope: !4034)
!4046 = !DILocation(line: 181, column: 55, scope: !4034)
!4047 = !DILocation(line: 182, column: 29, scope: !4034)
!4048 = !DILocation(line: 182, column: 59, scope: !4034)
!4049 = !DILocation(line: 184, column: 10, scope: !4034)
!4050 = !DILocation(line: 186, column: 8, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4034, file: !265, line: 186, column: 3)
!4052 = !DILocation(line: 0, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4051, file: !265, line: 186, column: 3)
!4054 = !DILocation(line: 186, column: 23, scope: !4053)
!4055 = !DILocation(line: 186, column: 3, scope: !4051)
!4056 = !DILocation(line: 186, column: 52, scope: !4053)
!4057 = distinct !{!4057, !4055, !4058}
!4058 = !DILocation(line: 187, column: 5, scope: !4051)
!4059 = !DILocation(line: 188, column: 3, scope: !4034)
!4060 = !DILocation(line: 189, column: 1, scope: !4034)
!4061 = distinct !DISubprogram(name: "version_etc_va", scope: !265, file: !265, line: 196, type: !4062, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4071)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !3955, !58, !58, !58, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !262, line: 189, size: 192, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4065, file: !262, line: 189, baseType: !7, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4065, file: !262, line: 189, baseType: !7, size: 32, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4065, file: !262, line: 189, baseType: !46, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4065, file: !262, line: 189, baseType: !46, size: 64, offset: 128)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078}
!4072 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !265, line: 196, type: !3955)
!4073 = !DILocalVariable(name: "command_name", arg: 2, scope: !4061, file: !265, line: 197, type: !58)
!4074 = !DILocalVariable(name: "package", arg: 3, scope: !4061, file: !265, line: 197, type: !58)
!4075 = !DILocalVariable(name: "version", arg: 4, scope: !4061, file: !265, line: 198, type: !58)
!4076 = !DILocalVariable(name: "authors", arg: 5, scope: !4061, file: !265, line: 198, type: !4064)
!4077 = !DILocalVariable(name: "n_authors", scope: !4061, file: !265, line: 200, type: !122)
!4078 = !DILocalVariable(name: "authtab", scope: !4061, file: !265, line: 201, type: !4079)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !131)
!4080 = !DILocation(line: 196, column: 23, scope: !4061)
!4081 = !DILocation(line: 197, column: 29, scope: !4061)
!4082 = !DILocation(line: 197, column: 55, scope: !4061)
!4083 = !DILocation(line: 198, column: 29, scope: !4061)
!4084 = !DILocation(line: 198, column: 46, scope: !4061)
!4085 = !DILocation(line: 201, column: 3, scope: !4061)
!4086 = !DILocation(line: 201, column: 15, scope: !4061)
!4087 = !DILocation(line: 200, column: 10, scope: !4061)
!4088 = !DILocation(line: 205, column: 35, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !265, line: 203, column: 3)
!4090 = distinct !DILexicalBlock(scope: !4061, file: !265, line: 203, column: 3)
!4091 = !DILocation(line: 205, column: 14, scope: !4089)
!4092 = !DILocation(line: 205, column: 33, scope: !4089)
!4093 = !DILocation(line: 205, column: 67, scope: !4089)
!4094 = !DILocation(line: 203, column: 3, scope: !4090)
!4095 = !DILocation(line: 0, scope: !4089)
!4096 = !DILocation(line: 208, column: 3, scope: !4061)
!4097 = !DILocation(line: 210, column: 1, scope: !4061)
!4098 = distinct !DISubprogram(name: "version_etc", scope: !265, file: !265, line: 227, type: !4099, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !3955, !58, !58, !58, null}
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DILocalVariable(name: "stream", arg: 1, scope: !4098, file: !265, line: 227, type: !3955)
!4103 = !DILocalVariable(name: "command_name", arg: 2, scope: !4098, file: !265, line: 228, type: !58)
!4104 = !DILocalVariable(name: "package", arg: 3, scope: !4098, file: !265, line: 228, type: !58)
!4105 = !DILocalVariable(name: "version", arg: 4, scope: !4098, file: !265, line: 229, type: !58)
!4106 = !DILocalVariable(name: "authors", scope: !4098, file: !265, line: 231, type: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1132, line: 52, baseType: !4108)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !190, line: 48, baseType: !4109)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !262, line: 231, baseType: !4110)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4065, size: 192, elements: !199)
!4111 = !DILocation(line: 227, column: 20, scope: !4098)
!4112 = !DILocation(line: 228, column: 26, scope: !4098)
!4113 = !DILocation(line: 228, column: 52, scope: !4098)
!4114 = !DILocation(line: 229, column: 26, scope: !4098)
!4115 = !DILocation(line: 231, column: 3, scope: !4098)
!4116 = !DILocation(line: 231, column: 11, scope: !4098)
!4117 = !DILocation(line: 233, column: 3, scope: !4098)
!4118 = !DILocation(line: 234, column: 3, scope: !4098)
!4119 = !DILocation(line: 235, column: 3, scope: !4098)
!4120 = !DILocation(line: 236, column: 1, scope: !4098)
!4121 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !265, file: !265, line: 239, type: !760, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !70)
!4122 = !DILocation(line: 245, column: 3, scope: !4121)
!4123 = !DILocation(line: 251, column: 3, scope: !4121)
!4124 = !DILocation(line: 256, column: 3, scope: !4121)
!4125 = !DILocation(line: 258, column: 1, scope: !4121)
!4126 = distinct !DISubprogram(name: "xnmalloc", scope: !273, file: !273, line: 99, type: !1552, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4127)
!4127 = !{!4128, !4129}
!4128 = !DILocalVariable(name: "n", arg: 1, scope: !4126, file: !273, line: 99, type: !122)
!4129 = !DILocalVariable(name: "s", arg: 2, scope: !4126, file: !273, line: 99, type: !122)
!4130 = !DILocation(line: 99, column: 18, scope: !4126)
!4131 = !DILocation(line: 99, column: 28, scope: !4126)
!4132 = !DILocation(line: 101, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4126, file: !273, line: 101, column: 7)
!4134 = !DILocation(line: 101, column: 7, scope: !4126)
!4135 = !DILocation(line: 102, column: 5, scope: !4133)
!4136 = !DILocation(line: 103, column: 21, scope: !4126)
!4137 = !DILocalVariable(name: "n", arg: 1, scope: !4138, file: !4139, line: 39, type: !122)
!4138 = distinct !DISubprogram(name: "xmalloc", scope: !4139, file: !4139, line: 39, type: !4140, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4142)
!4139 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!46, !122}
!4142 = !{!4137, !4143}
!4143 = !DILocalVariable(name: "p", scope: !4138, file: !4139, line: 41, type: !46)
!4144 = !DILocation(line: 39, column: 17, scope: !4138, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 103, column: 10, scope: !4126)
!4146 = !DILocation(line: 41, column: 13, scope: !4138, inlinedAt: !4145)
!4147 = !DILocation(line: 41, column: 9, scope: !4138, inlinedAt: !4145)
!4148 = !DILocation(line: 42, column: 8, scope: !4149, inlinedAt: !4145)
!4149 = distinct !DILexicalBlock(scope: !4138, file: !4139, line: 42, column: 7)
!4150 = !DILocation(line: 42, column: 15, scope: !4149, inlinedAt: !4145)
!4151 = !DILocation(line: 42, column: 10, scope: !4149, inlinedAt: !4145)
!4152 = !DILocation(line: 43, column: 5, scope: !4149, inlinedAt: !4145)
!4153 = !DILocation(line: 103, column: 3, scope: !4126)
!4154 = !DILocation(line: 39, column: 17, scope: !4138)
!4155 = !DILocation(line: 41, column: 13, scope: !4138)
!4156 = !DILocation(line: 41, column: 9, scope: !4138)
!4157 = !DILocation(line: 42, column: 8, scope: !4149)
!4158 = !DILocation(line: 42, column: 15, scope: !4149)
!4159 = !DILocation(line: 42, column: 10, scope: !4149)
!4160 = !DILocation(line: 43, column: 5, scope: !4149)
!4161 = !DILocation(line: 44, column: 3, scope: !4138)
!4162 = distinct !DISubprogram(name: "xnrealloc", scope: !273, file: !273, line: 112, type: !4163, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!46, !46, !122, !122}
!4165 = !{!4166, !4167, !4168}
!4166 = !DILocalVariable(name: "p", arg: 1, scope: !4162, file: !273, line: 112, type: !46)
!4167 = !DILocalVariable(name: "n", arg: 2, scope: !4162, file: !273, line: 112, type: !122)
!4168 = !DILocalVariable(name: "s", arg: 3, scope: !4162, file: !273, line: 112, type: !122)
!4169 = !DILocation(line: 112, column: 18, scope: !4162)
!4170 = !DILocation(line: 112, column: 28, scope: !4162)
!4171 = !DILocation(line: 112, column: 38, scope: !4162)
!4172 = !DILocation(line: 114, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4162, file: !273, line: 114, column: 7)
!4174 = !DILocation(line: 114, column: 7, scope: !4162)
!4175 = !DILocation(line: 115, column: 5, scope: !4173)
!4176 = !DILocation(line: 116, column: 25, scope: !4162)
!4177 = !DILocalVariable(name: "p", arg: 1, scope: !4178, file: !4139, line: 51, type: !46)
!4178 = distinct !DISubprogram(name: "xrealloc", scope: !4139, file: !4139, line: 51, type: !4179, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!46, !46, !122}
!4181 = !{!4177, !4182}
!4182 = !DILocalVariable(name: "n", arg: 2, scope: !4178, file: !4139, line: 51, type: !122)
!4183 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 116, column: 10, scope: !4162)
!4185 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4184)
!4186 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4184)
!4187 = distinct !DILexicalBlock(scope: !4178, file: !4139, line: 53, column: 7)
!4188 = !DILocation(line: 53, column: 13, scope: !4187, inlinedAt: !4184)
!4189 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4184)
!4190 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4184)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !4139, line: 54, column: 5)
!4192 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4184)
!4193 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4184)
!4194 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4184)
!4195 = distinct !DILexicalBlock(scope: !4178, file: !4139, line: 62, column: 7)
!4196 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4184)
!4197 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4184)
!4198 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4184)
!4199 = !DILocation(line: 0, scope: !4178, inlinedAt: !4184)
!4200 = !DILocation(line: 116, column: 3, scope: !4162)
!4201 = !DILocation(line: 51, column: 17, scope: !4178)
!4202 = !DILocation(line: 51, column: 27, scope: !4178)
!4203 = !DILocation(line: 53, column: 8, scope: !4187)
!4204 = !DILocation(line: 53, column: 13, scope: !4187)
!4205 = !DILocation(line: 53, column: 10, scope: !4187)
!4206 = !DILocation(line: 57, column: 7, scope: !4191)
!4207 = !DILocation(line: 58, column: 7, scope: !4191)
!4208 = !DILocation(line: 61, column: 7, scope: !4178)
!4209 = !DILocation(line: 62, column: 8, scope: !4195)
!4210 = !DILocation(line: 62, column: 13, scope: !4195)
!4211 = !DILocation(line: 62, column: 10, scope: !4195)
!4212 = !DILocation(line: 63, column: 5, scope: !4195)
!4213 = !DILocation(line: 0, scope: !4178)
!4214 = !DILocation(line: 65, column: 1, scope: !4178)
!4215 = !DILocation(line: 174, column: 19, scope: !274)
!4216 = !DILocation(line: 174, column: 30, scope: !274)
!4217 = !DILocation(line: 174, column: 41, scope: !274)
!4218 = !DILocation(line: 176, column: 14, scope: !274)
!4219 = !DILocation(line: 176, column: 10, scope: !274)
!4220 = !DILocation(line: 178, column: 9, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !274, file: !273, line: 178, column: 7)
!4222 = !DILocation(line: 178, column: 7, scope: !274)
!4223 = !DILocation(line: 180, column: 13, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !273, line: 180, column: 11)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !273, line: 179, column: 5)
!4226 = !DILocation(line: 180, column: 11, scope: !4225)
!4227 = !DILocation(line: 188, column: 30, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4224, file: !273, line: 181, column: 9)
!4229 = !DILocation(line: 189, column: 16, scope: !4228)
!4230 = !DILocation(line: 189, column: 13, scope: !4228)
!4231 = !DILocation(line: 190, column: 9, scope: !4228)
!4232 = !DILocation(line: 0, scope: !4228)
!4233 = !DILocation(line: 191, column: 11, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4225, file: !273, line: 191, column: 11)
!4235 = !DILocation(line: 191, column: 11, scope: !4225)
!4236 = !DILocation(line: 206, column: 7, scope: !274)
!4237 = !DILocation(line: 207, column: 25, scope: !274)
!4238 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 207, column: 10, scope: !274)
!4240 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4239)
!4241 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4239)
!4242 = !DILocation(line: 192, column: 9, scope: !4234)
!4243 = !DILocation(line: 200, column: 69, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !273, line: 200, column: 11)
!4245 = distinct !DILexicalBlock(scope: !4221, file: !273, line: 195, column: 5)
!4246 = !DILocation(line: 201, column: 11, scope: !4244)
!4247 = !DILocation(line: 200, column: 11, scope: !4245)
!4248 = !DILocation(line: 202, column: 9, scope: !4244)
!4249 = !DILocation(line: 203, column: 14, scope: !4245)
!4250 = !DILocation(line: 203, column: 18, scope: !4245)
!4251 = !DILocation(line: 203, column: 9, scope: !4245)
!4252 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4239)
!4253 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4239)
!4254 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4239)
!4255 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4239)
!4256 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4239)
!4257 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4239)
!4258 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4239)
!4259 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4239)
!4260 = !DILocation(line: 0, scope: !4178, inlinedAt: !4239)
!4261 = !DILocation(line: 207, column: 3, scope: !274)
!4262 = distinct !DISubprogram(name: "xcharalloc", scope: !273, file: !273, line: 216, type: !2891, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "n", arg: 1, scope: !4262, file: !273, line: 216, type: !122)
!4265 = !DILocation(line: 216, column: 20, scope: !4262)
!4266 = !DILocation(line: 39, column: 17, scope: !4138, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 218, column: 10, scope: !4262)
!4268 = !DILocation(line: 41, column: 13, scope: !4138, inlinedAt: !4267)
!4269 = !DILocation(line: 41, column: 9, scope: !4138, inlinedAt: !4267)
!4270 = !DILocation(line: 42, column: 8, scope: !4149, inlinedAt: !4267)
!4271 = !DILocation(line: 42, column: 15, scope: !4149, inlinedAt: !4267)
!4272 = !DILocation(line: 42, column: 10, scope: !4149, inlinedAt: !4267)
!4273 = !DILocation(line: 43, column: 5, scope: !4149, inlinedAt: !4267)
!4274 = !DILocation(line: 218, column: 3, scope: !4262)
!4275 = distinct !DISubprogram(name: "x2realloc", scope: !4139, file: !4139, line: 74, type: !4276, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4278)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!46, !46, !277}
!4278 = !{!4279, !4280}
!4279 = !DILocalVariable(name: "p", arg: 1, scope: !4275, file: !4139, line: 74, type: !46)
!4280 = !DILocalVariable(name: "pn", arg: 2, scope: !4275, file: !4139, line: 74, type: !277)
!4281 = !DILocation(line: 74, column: 18, scope: !4275)
!4282 = !DILocation(line: 74, column: 29, scope: !4275)
!4283 = !DILocation(line: 174, column: 19, scope: !274, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 76, column: 10, scope: !4275)
!4285 = !DILocation(line: 174, column: 30, scope: !274, inlinedAt: !4284)
!4286 = !DILocation(line: 174, column: 41, scope: !274, inlinedAt: !4284)
!4287 = !DILocation(line: 176, column: 14, scope: !274, inlinedAt: !4284)
!4288 = !DILocation(line: 176, column: 10, scope: !274, inlinedAt: !4284)
!4289 = !DILocation(line: 178, column: 9, scope: !4221, inlinedAt: !4284)
!4290 = !DILocation(line: 178, column: 7, scope: !274, inlinedAt: !4284)
!4291 = !DILocation(line: 180, column: 13, scope: !4224, inlinedAt: !4284)
!4292 = !DILocation(line: 180, column: 11, scope: !4225, inlinedAt: !4284)
!4293 = !DILocation(line: 191, column: 11, scope: !4234, inlinedAt: !4284)
!4294 = !DILocation(line: 191, column: 11, scope: !4225, inlinedAt: !4284)
!4295 = !DILocation(line: 206, column: 7, scope: !274, inlinedAt: !4284)
!4296 = !DILocation(line: 51, column: 17, scope: !4178, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 207, column: 10, scope: !274, inlinedAt: !4284)
!4298 = !DILocation(line: 51, column: 27, scope: !4178, inlinedAt: !4297)
!4299 = !DILocation(line: 53, column: 10, scope: !4187, inlinedAt: !4297)
!4300 = !DILocation(line: 192, column: 9, scope: !4234, inlinedAt: !4284)
!4301 = !DILocation(line: 201, column: 11, scope: !4244, inlinedAt: !4284)
!4302 = !DILocation(line: 200, column: 11, scope: !4245, inlinedAt: !4284)
!4303 = !DILocation(line: 202, column: 9, scope: !4244, inlinedAt: !4284)
!4304 = !DILocation(line: 203, column: 14, scope: !4245, inlinedAt: !4284)
!4305 = !DILocation(line: 203, column: 18, scope: !4245, inlinedAt: !4284)
!4306 = !DILocation(line: 203, column: 9, scope: !4245, inlinedAt: !4284)
!4307 = !DILocation(line: 53, column: 8, scope: !4187, inlinedAt: !4297)
!4308 = !DILocation(line: 57, column: 7, scope: !4191, inlinedAt: !4297)
!4309 = !DILocation(line: 58, column: 7, scope: !4191, inlinedAt: !4297)
!4310 = !DILocation(line: 61, column: 7, scope: !4178, inlinedAt: !4297)
!4311 = !DILocation(line: 62, column: 8, scope: !4195, inlinedAt: !4297)
!4312 = !DILocation(line: 62, column: 13, scope: !4195, inlinedAt: !4297)
!4313 = !DILocation(line: 62, column: 10, scope: !4195, inlinedAt: !4297)
!4314 = !DILocation(line: 63, column: 5, scope: !4195, inlinedAt: !4297)
!4315 = !DILocation(line: 0, scope: !4178, inlinedAt: !4297)
!4316 = !DILocation(line: 76, column: 3, scope: !4275)
!4317 = distinct !DISubprogram(name: "xzalloc", scope: !4139, file: !4139, line: 84, type: !4140, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4318)
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "s", arg: 1, scope: !4317, file: !4139, line: 84, type: !122)
!4320 = !DILocation(line: 84, column: 17, scope: !4317)
!4321 = !DILocation(line: 39, column: 17, scope: !4138, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 86, column: 18, scope: !4317)
!4323 = !DILocation(line: 41, column: 13, scope: !4138, inlinedAt: !4322)
!4324 = !DILocation(line: 41, column: 9, scope: !4138, inlinedAt: !4322)
!4325 = !DILocation(line: 42, column: 8, scope: !4149, inlinedAt: !4322)
!4326 = !DILocation(line: 42, column: 15, scope: !4149, inlinedAt: !4322)
!4327 = !DILocation(line: 42, column: 10, scope: !4149, inlinedAt: !4322)
!4328 = !DILocation(line: 43, column: 5, scope: !4149, inlinedAt: !4322)
!4329 = !DILocation(line: 86, column: 10, scope: !4317)
!4330 = !DILocation(line: 86, column: 3, scope: !4317)
!4331 = distinct !DISubprogram(name: "xcalloc", scope: !4139, file: !4139, line: 93, type: !1552, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4332)
!4332 = !{!4333, !4334, !4335}
!4333 = !DILocalVariable(name: "n", arg: 1, scope: !4331, file: !4139, line: 93, type: !122)
!4334 = !DILocalVariable(name: "s", arg: 2, scope: !4331, file: !4139, line: 93, type: !122)
!4335 = !DILocalVariable(name: "p", scope: !4331, file: !4139, line: 95, type: !46)
!4336 = !DILocation(line: 93, column: 17, scope: !4331)
!4337 = !DILocation(line: 93, column: 27, scope: !4331)
!4338 = !DILocation(line: 100, column: 7, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !4139, line: 100, column: 7)
!4340 = !DILocation(line: 101, column: 7, scope: !4339)
!4341 = !DILocation(line: 101, column: 18, scope: !4339)
!4342 = !DILocation(line: 95, column: 9, scope: !4331)
!4343 = !DILocation(line: 101, column: 16, scope: !4339)
!4344 = !DILocation(line: 100, column: 7, scope: !4331)
!4345 = !DILocation(line: 102, column: 5, scope: !4339)
!4346 = !DILocation(line: 103, column: 3, scope: !4331)
!4347 = distinct !DISubprogram(name: "xmemdup", scope: !4139, file: !4139, line: 111, type: !4348, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4352)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!46, !4350, !122}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "p", arg: 1, scope: !4347, file: !4139, line: 111, type: !4350)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4347, file: !4139, line: 111, type: !122)
!4355 = !DILocation(line: 111, column: 22, scope: !4347)
!4356 = !DILocation(line: 111, column: 32, scope: !4347)
!4357 = !DILocation(line: 39, column: 17, scope: !4138, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 113, column: 18, scope: !4347)
!4359 = !DILocation(line: 41, column: 13, scope: !4138, inlinedAt: !4358)
!4360 = !DILocation(line: 41, column: 9, scope: !4138, inlinedAt: !4358)
!4361 = !DILocation(line: 42, column: 8, scope: !4149, inlinedAt: !4358)
!4362 = !DILocation(line: 42, column: 15, scope: !4149, inlinedAt: !4358)
!4363 = !DILocation(line: 42, column: 10, scope: !4149, inlinedAt: !4358)
!4364 = !DILocation(line: 43, column: 5, scope: !4149, inlinedAt: !4358)
!4365 = !DILocation(line: 113, column: 10, scope: !4347)
!4366 = !DILocation(line: 113, column: 3, scope: !4347)
!4367 = distinct !DISubprogram(name: "xstrdup", scope: !4139, file: !4139, line: 119, type: !3096, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !269, retainedNodes: !4368)
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "string", arg: 1, scope: !4367, file: !4139, line: 119, type: !58)
!4370 = !DILocation(line: 119, column: 22, scope: !4367)
!4371 = !DILocation(line: 121, column: 27, scope: !4367)
!4372 = !DILocation(line: 121, column: 43, scope: !4367)
!4373 = !DILocation(line: 111, column: 22, scope: !4347, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 121, column: 10, scope: !4367)
!4375 = !DILocation(line: 111, column: 32, scope: !4347, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 17, scope: !4138, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 113, column: 18, scope: !4347, inlinedAt: !4374)
!4378 = !DILocation(line: 41, column: 13, scope: !4138, inlinedAt: !4377)
!4379 = !DILocation(line: 41, column: 9, scope: !4138, inlinedAt: !4377)
!4380 = !DILocation(line: 42, column: 8, scope: !4149, inlinedAt: !4377)
!4381 = !DILocation(line: 42, column: 15, scope: !4149, inlinedAt: !4377)
!4382 = !DILocation(line: 42, column: 10, scope: !4149, inlinedAt: !4377)
!4383 = !DILocation(line: 43, column: 5, scope: !4149, inlinedAt: !4377)
!4384 = !DILocation(line: 113, column: 10, scope: !4347, inlinedAt: !4374)
!4385 = !DILocation(line: 121, column: 3, scope: !4367)
!4386 = distinct !DISubprogram(name: "xalloc_die", scope: !4387, file: !4387, line: 32, type: !760, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !286, retainedNodes: !70)
!4387 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4388 = !DILocation(line: 34, column: 10, scope: !4386)
!4389 = !DILocation(line: 34, column: 33, scope: !4386)
!4390 = !DILocation(line: 34, column: 3, scope: !4386)
!4391 = !DILocation(line: 40, column: 3, scope: !4386)
!4392 = distinct !DISubprogram(name: "rpl_calloc", scope: !4393, file: !4393, line: 42, type: !1552, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4394)
!4393 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4394 = !{!4395, !4396, !4397, !4398}
!4395 = !DILocalVariable(name: "n", arg: 1, scope: !4392, file: !4393, line: 42, type: !122)
!4396 = !DILocalVariable(name: "s", arg: 2, scope: !4392, file: !4393, line: 42, type: !122)
!4397 = !DILocalVariable(name: "result", scope: !4392, file: !4393, line: 44, type: !46)
!4398 = !DILocalVariable(name: "bytes", scope: !4399, file: !4393, line: 56, type: !122)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !4393, line: 53, column: 5)
!4400 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 47, column: 7)
!4401 = !DILocation(line: 42, column: 20, scope: !4392)
!4402 = !DILocation(line: 42, column: 30, scope: !4392)
!4403 = !DILocation(line: 47, column: 9, scope: !4400)
!4404 = !DILocation(line: 47, column: 19, scope: !4400)
!4405 = !DILocation(line: 47, column: 14, scope: !4400)
!4406 = !DILocation(line: 56, column: 24, scope: !4399)
!4407 = !DILocation(line: 56, column: 14, scope: !4399)
!4408 = !DILocation(line: 57, column: 17, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4399, file: !4393, line: 57, column: 11)
!4410 = !DILocation(line: 57, column: 21, scope: !4409)
!4411 = !DILocation(line: 57, column: 11, scope: !4399)
!4412 = !DILocation(line: 59, column: 11, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4409, file: !4393, line: 58, column: 9)
!4414 = !DILocation(line: 59, column: 17, scope: !4413)
!4415 = !DILocation(line: 65, column: 12, scope: !4392)
!4416 = !DILocation(line: 44, column: 9, scope: !4392)
!4417 = !DILocation(line: 72, column: 3, scope: !4392)
!4418 = !DILocation(line: 0, scope: !4413)
!4419 = !DILocation(line: 73, column: 1, scope: !4392)
!4420 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4421, file: !4421, line: 385, type: !4422, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !290, retainedNodes: !4436)
!4421 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!122, !4424, !58, !122, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2055, line: 6, baseType: !4427)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2057, line: 21, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 13, size: 64, elements: !4429)
!4429 = !{!4430, !4431}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4428, file: !2057, line: 15, baseType: !29, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4428, file: !2057, line: 20, baseType: !4432, size: 32, offset: 32)
!4432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4428, file: !2057, line: 16, size: 32, elements: !4433)
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4432, file: !2057, line: 18, baseType: !7, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4432, file: !2057, line: 19, baseType: !2066, size: 32)
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4443}
!4437 = !DILocalVariable(name: "pwc", arg: 1, scope: !4420, file: !4421, line: 385, type: !4424)
!4438 = !DILocalVariable(name: "s", arg: 2, scope: !4420, file: !4421, line: 385, type: !58)
!4439 = !DILocalVariable(name: "n", arg: 3, scope: !4420, file: !4421, line: 385, type: !122)
!4440 = !DILocalVariable(name: "ps", arg: 4, scope: !4420, file: !4421, line: 385, type: !4425)
!4441 = !DILocalVariable(name: "ret", scope: !4420, file: !4421, line: 387, type: !122)
!4442 = !DILocalVariable(name: "wc", scope: !4420, file: !4421, line: 388, type: !2071)
!4443 = !DILocalVariable(name: "uc", scope: !4444, file: !4421, line: 449, type: !216)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !4421, line: 448, column: 5)
!4445 = distinct !DILexicalBlock(scope: !4420, file: !4421, line: 447, column: 7)
!4446 = !DILocation(line: 385, column: 23, scope: !4420)
!4447 = !DILocation(line: 385, column: 40, scope: !4420)
!4448 = !DILocation(line: 385, column: 50, scope: !4420)
!4449 = !DILocation(line: 385, column: 64, scope: !4420)
!4450 = !DILocation(line: 388, column: 3, scope: !4420)
!4451 = !DILocation(line: 404, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4420, file: !4421, line: 404, column: 7)
!4453 = !DILocation(line: 404, column: 7, scope: !4420)
!4454 = !DILocation(line: 439, column: 9, scope: !4420)
!4455 = !DILocation(line: 387, column: 10, scope: !4420)
!4456 = !DILocation(line: 447, column: 19, scope: !4445)
!4457 = !DILocation(line: 447, column: 31, scope: !4445)
!4458 = !DILocation(line: 447, column: 26, scope: !4445)
!4459 = !DILocation(line: 447, column: 41, scope: !4445)
!4460 = !DILocation(line: 447, column: 7, scope: !4420)
!4461 = !DILocation(line: 449, column: 26, scope: !4444)
!4462 = !DILocation(line: 449, column: 21, scope: !4444)
!4463 = !DILocation(line: 450, column: 14, scope: !4444)
!4464 = !DILocation(line: 450, column: 12, scope: !4444)
!4465 = !DILocation(line: 0, scope: !4444)
!4466 = !DILocation(line: 456, column: 1, scope: !4420)
!4467 = distinct !DISubprogram(name: "close_stream", scope: !4468, file: !4468, line: 56, type: !4469, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !4505)
!4468 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!29, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4473, file: !1079, line: 51, baseType: !29, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4473, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4473, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4473, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4473, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4473, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4473, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4473, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4473, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4473, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4473, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4473, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4473, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4473, file: !1079, line: 70, baseType: !4489, size: 64, offset: 832)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4473, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4473, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4473, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4473, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4473, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4473, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4473, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4473, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4473, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4473, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4473, file: !1079, line: 93, baseType: !4489, size: 64, offset: 1344)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4473, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4473, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4473, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4473, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!4505 = !{!4506, !4507, !4509, !4510}
!4506 = !DILocalVariable(name: "stream", arg: 1, scope: !4467, file: !4468, line: 56, type: !4471)
!4507 = !DILocalVariable(name: "some_pending", scope: !4467, file: !4468, line: 58, type: !4508)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4509 = !DILocalVariable(name: "prev_fail", scope: !4467, file: !4468, line: 59, type: !4508)
!4510 = !DILocalVariable(name: "fclose_fail", scope: !4467, file: !4468, line: 60, type: !4508)
!4511 = !DILocation(line: 56, column: 21, scope: !4467)
!4512 = !DILocation(line: 58, column: 30, scope: !4467)
!4513 = !DILocalVariable(name: "__stream", arg: 1, scope: !4514, file: !1168, line: 135, type: !4471)
!4514 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1168, file: !1168, line: 135, type: !4469, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !4515)
!4515 = !{!4513}
!4516 = !DILocation(line: 135, column: 1, scope: !4514, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 59, column: 27, scope: !4467)
!4518 = !DILocation(line: 137, column: 10, scope: !4514, inlinedAt: !4517)
!4519 = !{!1178, !845, i64 0}
!4520 = !DILocation(line: 59, column: 43, scope: !4467)
!4521 = !DILocation(line: 60, column: 29, scope: !4467)
!4522 = !DILocation(line: 60, column: 45, scope: !4467)
!4523 = !DILocation(line: 70, column: 17, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4467, file: !4468, line: 70, column: 7)
!4525 = !DILocation(line: 58, column: 50, scope: !4467)
!4526 = !DILocation(line: 70, column: 33, scope: !4524)
!4527 = !DILocation(line: 70, column: 53, scope: !4524)
!4528 = !DILocation(line: 70, column: 59, scope: !4524)
!4529 = !DILocation(line: 70, column: 7, scope: !4467)
!4530 = !DILocation(line: 72, column: 11, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4524, file: !4468, line: 71, column: 5)
!4532 = !DILocation(line: 73, column: 9, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4531, file: !4468, line: 72, column: 11)
!4534 = !DILocation(line: 73, column: 15, scope: !4533)
!4535 = !DILocation(line: 0, scope: !4467)
!4536 = !DILocation(line: 78, column: 1, scope: !4467)
!4537 = distinct !DISubprogram(name: "open_safer", scope: !4538, file: !4538, line: 29, type: !4539, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4541)
!4538 = !DIFile(filename: "lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!29, !58, !29, null}
!4541 = !{!4542, !4543, !4544, !4545}
!4542 = !DILocalVariable(name: "file", arg: 1, scope: !4537, file: !4538, line: 29, type: !58)
!4543 = !DILocalVariable(name: "flags", arg: 2, scope: !4537, file: !4538, line: 29, type: !29)
!4544 = !DILocalVariable(name: "mode", scope: !4537, file: !4538, line: 31, type: !703)
!4545 = !DILocalVariable(name: "ap", scope: !4546, file: !4538, line: 35, type: !4548)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !4538, line: 34, column: 5)
!4547 = distinct !DILexicalBlock(scope: !4537, file: !4538, line: 33, column: 7)
!4548 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !190, line: 30, baseType: !4549)
!4549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !295, line: 35, baseType: !4550)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4551, size: 192, elements: !199)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !295, line: 35, size: 192, elements: !4552)
!4552 = !{!4553, !4554, !4555, !4556}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4551, file: !295, line: 35, baseType: !7, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4551, file: !295, line: 35, baseType: !7, size: 32, offset: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4551, file: !295, line: 35, baseType: !46, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4551, file: !295, line: 35, baseType: !46, size: 64, offset: 128)
!4557 = !DILocation(line: 29, column: 25, scope: !4537)
!4558 = !DILocation(line: 29, column: 35, scope: !4537)
!4559 = !DILocation(line: 31, column: 10, scope: !4537)
!4560 = !DILocation(line: 33, column: 13, scope: !4547)
!4561 = !DILocation(line: 33, column: 7, scope: !4537)
!4562 = !DILocation(line: 35, column: 7, scope: !4546)
!4563 = !DILocation(line: 35, column: 15, scope: !4546)
!4564 = !DILocation(line: 36, column: 7, scope: !4546)
!4565 = !DILocation(line: 40, column: 14, scope: !4546)
!4566 = !DILocation(line: 42, column: 7, scope: !4546)
!4567 = !DILocation(line: 43, column: 5, scope: !4547)
!4568 = !DILocation(line: 43, column: 5, scope: !4546)
!4569 = !DILocation(line: 0, scope: !4537)
!4570 = !DILocation(line: 45, column: 20, scope: !4537)
!4571 = !DILocation(line: 45, column: 10, scope: !4537)
!4572 = !DILocation(line: 45, column: 3, scope: !4537)
!4573 = distinct !DISubprogram(name: "hard_locale", scope: !4574, file: !4574, line: 38, type: !4575, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !4577)
!4574 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!80, !29}
!4577 = !{!4578, !4579, !4580}
!4578 = !DILocalVariable(name: "category", arg: 1, scope: !4573, file: !4574, line: 38, type: !29)
!4579 = !DILocalVariable(name: "hard", scope: !4573, file: !4574, line: 40, type: !80)
!4580 = !DILocalVariable(name: "p", scope: !4573, file: !4574, line: 41, type: !58)
!4581 = !DILocation(line: 38, column: 18, scope: !4573)
!4582 = !DILocation(line: 40, column: 8, scope: !4573)
!4583 = !DILocation(line: 41, column: 19, scope: !4573)
!4584 = !DILocation(line: 41, column: 15, scope: !4573)
!4585 = !DILocation(line: 43, column: 7, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4573, file: !4574, line: 43, column: 7)
!4587 = !DILocation(line: 43, column: 7, scope: !4573)
!4588 = !DILocation(line: 47, column: 15, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !4574, line: 47, column: 15)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !4574, line: 46, column: 9)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !4574, line: 45, column: 11)
!4592 = distinct !DILexicalBlock(scope: !4586, file: !4574, line: 44, column: 5)
!4593 = !DILocation(line: 47, column: 31, scope: !4589)
!4594 = !DILocation(line: 47, column: 36, scope: !4589)
!4595 = !DILocation(line: 47, column: 39, scope: !4589)
!4596 = !DILocation(line: 47, column: 59, scope: !4589)
!4597 = !DILocation(line: 47, column: 15, scope: !4590)
!4598 = !DILocation(line: 48, column: 13, scope: !4589)
!4599 = !DILocation(line: 71, column: 3, scope: !4573)
!4600 = distinct !DISubprogram(name: "locale_charset", scope: !4601, file: !4601, line: 687, type: !4602, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !298, retainedNodes: !4604)
!4601 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!58}
!4604 = !{!4605}
!4605 = !DILocalVariable(name: "codeset", scope: !4600, file: !4601, line: 689, type: !58)
!4606 = !DILocation(line: 696, column: 13, scope: !4600)
!4607 = !DILocation(line: 689, column: 15, scope: !4600)
!4608 = !DILocation(line: 754, column: 15, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4600, file: !4601, line: 754, column: 7)
!4610 = !DILocation(line: 754, column: 7, scope: !4600)
!4611 = !DILocation(line: 907, column: 13, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !4601, line: 907, column: 13)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !4601, line: 897, column: 7)
!4614 = distinct !DILexicalBlock(scope: !4600, file: !4601, line: 856, column: 3)
!4615 = !DILocation(line: 907, column: 24, scope: !4612)
!4616 = !DILocation(line: 907, column: 13, scope: !4613)
!4617 = !DILocation(line: 995, column: 3, scope: !4600)
!4618 = distinct !DISubprogram(name: "mkancesdirs", scope: !4619, file: !4619, line: 65, type: !4620, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !687, retainedNodes: !4623)
!4619 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!1254, !44, !4622, !816, !46}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4623 = !{!4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4639, !4640}
!4624 = !DILocalVariable(name: "file", arg: 1, scope: !4618, file: !4619, line: 65, type: !44)
!4625 = !DILocalVariable(name: "wd", arg: 2, scope: !4618, file: !4619, line: 65, type: !4622)
!4626 = !DILocalVariable(name: "make_dir", arg: 3, scope: !4618, file: !4619, line: 66, type: !816)
!4627 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !4618, file: !4619, line: 67, type: !46)
!4628 = !DILocalVariable(name: "sep", scope: !4618, file: !4619, line: 72, type: !44)
!4629 = !DILocalVariable(name: "component", scope: !4618, file: !4619, line: 76, type: !44)
!4630 = !DILocalVariable(name: "p", scope: !4618, file: !4619, line: 78, type: !44)
!4631 = !DILocalVariable(name: "c", scope: !4618, file: !4619, line: 79, type: !45)
!4632 = !DILocalVariable(name: "made_dir", scope: !4618, file: !4619, line: 80, type: !80)
!4633 = !DILocalVariable(name: "make_dir_errno", scope: !4634, file: !4619, line: 100, type: !29)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !4619, line: 99, column: 11)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !4619, line: 98, column: 13)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !4619, line: 95, column: 7)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !4619, line: 94, column: 14)
!4638 = distinct !DILexicalBlock(scope: !4618, file: !4619, line: 89, column: 9)
!4639 = !DILocalVariable(name: "savewd_chdir_options", scope: !4634, file: !4619, line: 101, type: !29)
!4640 = !DILocalVariable(name: "chdir_result", scope: !4634, file: !4619, line: 102, type: !29)
!4641 = !DILocation(line: 65, column: 20, scope: !4618)
!4642 = !DILocation(line: 65, column: 41, scope: !4618)
!4643 = !DILocation(line: 66, column: 20, scope: !4618)
!4644 = !DILocation(line: 67, column: 20, scope: !4618)
!4645 = !DILocation(line: 72, column: 9, scope: !4618)
!4646 = !DILocation(line: 76, column: 9, scope: !4618)
!4647 = !DILocation(line: 78, column: 9, scope: !4618)
!4648 = !DILocation(line: 80, column: 8, scope: !4618)
!4649 = !DILocation(line: 88, column: 15, scope: !4618)
!4650 = !DILocation(line: 79, column: 8, scope: !4618)
!4651 = !DILocation(line: 88, column: 3, scope: !4618)
!4652 = !DILocation(line: 88, column: 17, scope: !4618)
!4653 = !DILocation(line: 89, column: 9, scope: !4638)
!4654 = !DILocation(line: 0, scope: !4637)
!4655 = !DILocation(line: 89, column: 9, scope: !4618)
!4656 = !DILocation(line: 91, column: 13, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4638, file: !4619, line: 90, column: 7)
!4658 = !DILocation(line: 94, column: 26, scope: !4637)
!4659 = !DILocation(line: 94, column: 29, scope: !4637)
!4660 = !DILocation(line: 94, column: 35, scope: !4637)
!4661 = !DILocation(line: 94, column: 32, scope: !4637)
!4662 = !DILocation(line: 98, column: 20, scope: !4635)
!4663 = !DILocation(line: 98, column: 32, scope: !4635)
!4664 = !DILocation(line: 98, column: 37, scope: !4635)
!4665 = !DILocation(line: 98, column: 40, scope: !4635)
!4666 = !DILocation(line: 98, column: 53, scope: !4635)
!4667 = !DILocation(line: 98, column: 13, scope: !4636)
!4668 = !DILocation(line: 100, column: 17, scope: !4634)
!4669 = !DILocation(line: 101, column: 17, scope: !4634)
!4670 = !DILocation(line: 106, column: 18, scope: !4634)
!4671 = !DILocation(line: 111, column: 17, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4634, file: !4619, line: 110, column: 17)
!4673 = !DILocation(line: 110, column: 33, scope: !4672)
!4674 = !DILocation(line: 111, column: 20, scope: !4672)
!4675 = !DILocation(line: 111, column: 33, scope: !4672)
!4676 = !DILocation(line: 111, column: 40, scope: !4672)
!4677 = !DILocation(line: 111, column: 43, scope: !4672)
!4678 = !DILocation(line: 111, column: 56, scope: !4672)
!4679 = !DILocation(line: 110, column: 17, scope: !4634)
!4680 = !DILocation(line: 113, column: 22, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4672, file: !4619, line: 113, column: 22)
!4682 = !DILocation(line: 113, column: 63, scope: !4681)
!4683 = !DILocation(line: 113, column: 22, scope: !4672)
!4684 = !DILocation(line: 114, column: 32, scope: !4681)
!4685 = !DILocation(line: 114, column: 15, scope: !4681)
!4686 = !DILocation(line: 0, scope: !4681)
!4687 = !DILocation(line: 0, scope: !4634)
!4688 = !DILocation(line: 118, column: 17, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4634, file: !4619, line: 118, column: 17)
!4690 = !DILocation(line: 118, column: 17, scope: !4634)
!4691 = !DILocation(line: 122, column: 15, scope: !4634)
!4692 = !DILocation(line: 102, column: 17, scope: !4634)
!4693 = !DILocation(line: 126, column: 17, scope: !4634)
!4694 = !DILocation(line: 127, column: 20, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4634, file: !4619, line: 126, column: 17)
!4696 = !DILocation(line: 129, column: 30, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4634, file: !4619, line: 129, column: 17)
!4698 = !DILocation(line: 129, column: 17, scope: !4634)
!4699 = !DILocation(line: 131, column: 36, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4619, line: 131, column: 21)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !4619, line: 130, column: 15)
!4702 = !DILocation(line: 131, column: 41, scope: !4700)
!4703 = !DILocation(line: 131, column: 44, scope: !4700)
!4704 = !DILocation(line: 131, column: 50, scope: !4700)
!4705 = !DILocation(line: 131, column: 21, scope: !4701)
!4706 = !DILocation(line: 132, column: 25, scope: !4700)
!4707 = !DILocation(line: 132, column: 19, scope: !4700)
!4708 = !DILocation(line: 133, column: 24, scope: !4701)
!4709 = !DILocation(line: 0, scope: !4618)
!4710 = distinct !{!4710, !4651, !4711}
!4711 = !DILocation(line: 138, column: 7, scope: !4618)
!4712 = !DILocation(line: 140, column: 20, scope: !4618)
!4713 = !DILocation(line: 140, column: 3, scope: !4618)
!4714 = !DILocation(line: 141, column: 1, scope: !4618)
!4715 = distinct !DISubprogram(name: "dirchownmod", scope: !4716, file: !4716, line: 61, type: !4717, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !4719)
!4716 = !DIFile(filename: "lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!29, !29, !58, !703, !47, !49, !703, !703}
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4749, !4750, !4753, !4756, !4759}
!4720 = !DILocalVariable(name: "fd", arg: 1, scope: !4715, file: !4716, line: 61, type: !29)
!4721 = !DILocalVariable(name: "dir", arg: 2, scope: !4715, file: !4716, line: 61, type: !58)
!4722 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !4715, file: !4716, line: 61, type: !703)
!4723 = !DILocalVariable(name: "owner", arg: 4, scope: !4715, file: !4716, line: 62, type: !47)
!4724 = !DILocalVariable(name: "group", arg: 5, scope: !4715, file: !4716, line: 62, type: !49)
!4725 = !DILocalVariable(name: "mode", arg: 6, scope: !4715, file: !4716, line: 63, type: !703)
!4726 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !4715, file: !4716, line: 63, type: !703)
!4727 = !DILocalVariable(name: "st", scope: !4715, file: !4716, line: 65, type: !4728)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1268, line: 46, size: 1152, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4746, !4747, !4748}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4728, file: !1268, line: 48, baseType: !1271, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4728, file: !1268, line: 53, baseType: !1273, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4728, file: !1268, line: 61, baseType: !1275, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4728, file: !1268, line: 62, baseType: !704, size: 32, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4728, file: !1268, line: 64, baseType: !48, size: 32, offset: 224)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4728, file: !1268, line: 65, baseType: !50, size: 32, offset: 256)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4728, file: !1268, line: 67, baseType: !29, size: 32, offset: 288)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4728, file: !1268, line: 69, baseType: !1271, size: 64, offset: 320)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4728, file: !1268, line: 74, baseType: !1101, size: 64, offset: 384)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4728, file: !1268, line: 78, baseType: !1283, size: 64, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4728, file: !1268, line: 80, baseType: !1285, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4728, file: !1268, line: 91, baseType: !4742, size: 128, offset: 576)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1288, line: 9, size: 128, elements: !4743)
!4743 = !{!4744, !4745}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4742, file: !1288, line: 11, baseType: !1291, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4742, file: !1288, line: 12, baseType: !1293, size: 64, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4728, file: !1268, line: 92, baseType: !4742, size: 128, offset: 704)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4728, file: !1268, line: 93, baseType: !4742, size: 128, offset: 832)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4728, file: !1268, line: 106, baseType: !1297, size: 192, offset: 960)
!4749 = !DILocalVariable(name: "result", scope: !4715, file: !4716, line: 66, type: !29)
!4750 = !DILocalVariable(name: "dir_mode", scope: !4751, file: !4716, line: 70, type: !703)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !4716, line: 69, column: 5)
!4752 = distinct !DILexicalBlock(scope: !4715, file: !4716, line: 68, column: 7)
!4753 = !DILocalVariable(name: "indeterminate", scope: !4754, file: !4716, line: 87, type: !703)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !4716, line: 82, column: 9)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !4716, line: 76, column: 11)
!4756 = !DILocalVariable(name: "chmod_mode", scope: !4757, file: !4716, line: 117, type: !703)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !4716, line: 116, column: 13)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !4716, line: 115, column: 15)
!4759 = !DILocalVariable(name: "e", scope: !4760, file: !4716, line: 134, type: !29)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !4716, line: 133, column: 9)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !4716, line: 130, column: 11)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !4716, line: 129, column: 5)
!4763 = distinct !DILexicalBlock(scope: !4715, file: !4716, line: 128, column: 7)
!4764 = !DILocation(line: 61, column: 18, scope: !4715)
!4765 = !DILocation(line: 61, column: 34, scope: !4715)
!4766 = !DILocation(line: 61, column: 46, scope: !4715)
!4767 = !DILocation(line: 62, column: 20, scope: !4715)
!4768 = !DILocation(line: 62, column: 33, scope: !4715)
!4769 = !DILocation(line: 63, column: 21, scope: !4715)
!4770 = !DILocation(line: 63, column: 34, scope: !4715)
!4771 = !DILocation(line: 65, column: 3, scope: !4715)
!4772 = !DILocation(line: 66, column: 20, scope: !4715)
!4773 = !DILocation(line: 65, column: 15, scope: !4715)
!4774 = !DILocation(line: 66, column: 17, scope: !4715)
!4775 = !DILocalVariable(name: "__path", arg: 1, scope: !4776, file: !1388, line: 453, type: !58)
!4776 = distinct !DISubprogram(name: "stat", scope: !1388, file: !1388, line: 453, type: !4777, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !4780)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!29, !58, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4780 = !{!4775, !4781}
!4781 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4776, file: !1388, line: 453, type: !4779)
!4782 = !DILocation(line: 453, column: 1, scope: !4776, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 66, column: 26, scope: !4715)
!4784 = !DILocation(line: 455, column: 10, scope: !4776, inlinedAt: !4783)
!4785 = !DILocalVariable(name: "__fd", arg: 1, scope: !4786, file: !1388, line: 467, type: !29)
!4786 = distinct !DISubprogram(name: "fstat", scope: !1388, file: !1388, line: 467, type: !4787, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!29, !29, !4779}
!4789 = !{!4785, !4790}
!4790 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !4786, file: !1388, line: 467, type: !4779)
!4791 = !DILocation(line: 467, column: 1, scope: !4786, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 66, column: 44, scope: !4715)
!4793 = !DILocation(line: 469, column: 10, scope: !4786, inlinedAt: !4792)
!4794 = !DILocation(line: 66, column: 7, scope: !4715)
!4795 = !DILocation(line: 68, column: 14, scope: !4752)
!4796 = !DILocation(line: 68, column: 7, scope: !4715)
!4797 = !DILocation(line: 70, column: 28, scope: !4751)
!4798 = !DILocation(line: 70, column: 14, scope: !4751)
!4799 = !DILocation(line: 76, column: 13, scope: !4755)
!4800 = !DILocation(line: 76, column: 11, scope: !4751)
!4801 = !DILocation(line: 78, column: 11, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4755, file: !4716, line: 77, column: 9)
!4803 = !DILocation(line: 78, column: 17, scope: !4802)
!4804 = !DILocation(line: 80, column: 9, scope: !4802)
!4805 = !DILocation(line: 87, column: 18, scope: !4754)
!4806 = !DILocation(line: 94, column: 22, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4754, file: !4716, line: 94, column: 15)
!4808 = !DILocation(line: 94, column: 36, scope: !4807)
!4809 = !DILocation(line: 94, column: 51, scope: !4807)
!4810 = !{!1401, !845, i64 28}
!4811 = !DILocation(line: 94, column: 45, scope: !4807)
!4812 = !DILocation(line: 95, column: 15, scope: !4807)
!4813 = !DILocation(line: 95, column: 25, scope: !4807)
!4814 = !DILocation(line: 95, column: 39, scope: !4807)
!4815 = !DILocation(line: 95, column: 54, scope: !4807)
!4816 = !{!1401, !845, i64 32}
!4817 = !DILocation(line: 95, column: 48, scope: !4807)
!4818 = !DILocation(line: 94, column: 15, scope: !4754)
!4819 = !DILocation(line: 97, column: 27, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4807, file: !4716, line: 96, column: 13)
!4821 = !DILocation(line: 97, column: 25, scope: !4820)
!4822 = !DILocation(line: 98, column: 27, scope: !4820)
!4823 = !DILocation(line: 99, column: 38, scope: !4820)
!4824 = !DILocation(line: 99, column: 27, scope: !4820)
!4825 = !DILocation(line: 100, column: 27, scope: !4820)
!4826 = !DILocation(line: 101, column: 27, scope: !4820)
!4827 = !DILocation(line: 108, column: 26, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4820, file: !4716, line: 108, column: 19)
!4829 = !DILocation(line: 108, column: 44, scope: !4828)
!4830 = !DILocation(line: 108, column: 31, scope: !4828)
!4831 = !DILocation(line: 109, column: 42, scope: !4828)
!4832 = !DILocation(line: 115, column: 22, scope: !4758)
!4833 = !DILocation(line: 115, column: 27, scope: !4758)
!4834 = !DILocation(line: 115, column: 42, scope: !4758)
!4835 = !DILocation(line: 115, column: 50, scope: !4758)
!4836 = !DILocation(line: 115, column: 67, scope: !4758)
!4837 = !DILocation(line: 115, column: 15, scope: !4754)
!4838 = !DILocation(line: 118, column: 34, scope: !4757)
!4839 = !DILocation(line: 118, column: 52, scope: !4757)
!4840 = !DILocation(line: 118, column: 22, scope: !4757)
!4841 = !DILocation(line: 117, column: 22, scope: !4757)
!4842 = !DILocation(line: 119, column: 42, scope: !4757)
!4843 = !DILocation(line: 119, column: 25, scope: !4757)
!4844 = !DILocation(line: 120, column: 27, scope: !4757)
!4845 = !DILocation(line: 128, column: 7, scope: !4715)
!4846 = !DILocation(line: 0, scope: !4757)
!4847 = !DILocation(line: 0, scope: !4715)
!4848 = !DILocation(line: 128, column: 9, scope: !4763)
!4849 = !DILocation(line: 130, column: 18, scope: !4761)
!4850 = !DILocation(line: 130, column: 11, scope: !4762)
!4851 = !DILocation(line: 131, column: 18, scope: !4761)
!4852 = !DILocation(line: 131, column: 9, scope: !4761)
!4853 = !DILocation(line: 134, column: 19, scope: !4760)
!4854 = !DILocation(line: 134, column: 15, scope: !4760)
!4855 = !DILocation(line: 135, column: 11, scope: !4760)
!4856 = !DILocation(line: 136, column: 17, scope: !4760)
!4857 = !DILocation(line: 141, column: 1, scope: !4715)
!4858 = !DILocation(line: 140, column: 3, scope: !4715)
!4859 = distinct !DISubprogram(name: "fd_safer", scope: !4860, file: !4860, line: 37, type: !4861, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !705, retainedNodes: !4863)
!4860 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!29, !29}
!4863 = !{!4864, !4865, !4868}
!4864 = !DILocalVariable(name: "fd", arg: 1, scope: !4859, file: !4860, line: 37, type: !29)
!4865 = !DILocalVariable(name: "f", scope: !4866, file: !4860, line: 41, type: !29)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !4860, line: 40, column: 5)
!4867 = distinct !DILexicalBlock(scope: !4859, file: !4860, line: 39, column: 7)
!4868 = !DILocalVariable(name: "e", scope: !4866, file: !4860, line: 42, type: !29)
!4869 = !DILocation(line: 37, column: 15, scope: !4859)
!4870 = !DILocation(line: 39, column: 26, scope: !4867)
!4871 = !DILocation(line: 41, column: 15, scope: !4866)
!4872 = !DILocation(line: 41, column: 11, scope: !4866)
!4873 = !DILocation(line: 42, column: 15, scope: !4866)
!4874 = !DILocation(line: 42, column: 11, scope: !4866)
!4875 = !DILocation(line: 43, column: 7, scope: !4866)
!4876 = !DILocation(line: 44, column: 13, scope: !4866)
!4877 = !DILocation(line: 46, column: 5, scope: !4866)
!4878 = !DILocation(line: 48, column: 3, scope: !4859)
!4879 = distinct !DISubprogram(name: "rpl_fclose", scope: !4880, file: !4880, line: 58, type: !4881, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !707, retainedNodes: !4917)
!4880 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!29, !4883}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !4885)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4885, file: !1079, line: 51, baseType: !29, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4885, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4885, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4885, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4885, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4885, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4885, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4885, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4885, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4885, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4885, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4885, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4885, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4885, file: !1079, line: 70, baseType: !4901, size: 64, offset: 832)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4885, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4885, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4885, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4885, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4885, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4885, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4885, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4885, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4885, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4885, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4885, file: !1079, line: 93, baseType: !4901, size: 64, offset: 1344)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4885, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4885, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4885, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4885, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!4917 = !{!4918, !4919, !4920, !4921}
!4918 = !DILocalVariable(name: "fp", arg: 1, scope: !4879, file: !4880, line: 58, type: !4883)
!4919 = !DILocalVariable(name: "saved_errno", scope: !4879, file: !4880, line: 60, type: !29)
!4920 = !DILocalVariable(name: "fd", scope: !4879, file: !4880, line: 61, type: !29)
!4921 = !DILocalVariable(name: "result", scope: !4879, file: !4880, line: 62, type: !29)
!4922 = !DILocation(line: 58, column: 19, scope: !4879)
!4923 = !DILocation(line: 60, column: 7, scope: !4879)
!4924 = !DILocation(line: 62, column: 7, scope: !4879)
!4925 = !DILocation(line: 65, column: 8, scope: !4879)
!4926 = !DILocation(line: 61, column: 7, scope: !4879)
!4927 = !DILocation(line: 66, column: 10, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4879, file: !4880, line: 66, column: 7)
!4929 = !DILocation(line: 66, column: 7, scope: !4879)
!4930 = !DILocation(line: 67, column: 12, scope: !4928)
!4931 = !DILocation(line: 67, column: 5, scope: !4928)
!4932 = !DILocation(line: 72, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4879, file: !4880, line: 72, column: 7)
!4934 = !DILocation(line: 72, column: 23, scope: !4933)
!4935 = !DILocation(line: 72, column: 33, scope: !4933)
!4936 = !DILocation(line: 72, column: 26, scope: !4933)
!4937 = !DILocation(line: 72, column: 59, scope: !4933)
!4938 = !DILocation(line: 73, column: 7, scope: !4933)
!4939 = !DILocation(line: 73, column: 10, scope: !4933)
!4940 = !DILocation(line: 72, column: 7, scope: !4879)
!4941 = !DILocation(line: 100, column: 12, scope: !4879)
!4942 = !DILocation(line: 105, column: 7, scope: !4879)
!4943 = !DILocation(line: 74, column: 19, scope: !4933)
!4944 = !DILocation(line: 105, column: 19, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4879, file: !4880, line: 105, column: 7)
!4946 = !DILocation(line: 107, column: 13, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4945, file: !4880, line: 106, column: 5)
!4948 = !DILocation(line: 109, column: 5, scope: !4947)
!4949 = !DILocation(line: 0, scope: !4879)
!4950 = !DILocation(line: 112, column: 1, scope: !4879)
!4951 = distinct !DISubprogram(name: "rpl_fflush", scope: !4952, file: !4952, line: 129, type: !4953, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !709, retainedNodes: !4989)
!4952 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!29, !4955}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !4957)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !4958)
!4958 = !{!4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4957, file: !1079, line: 51, baseType: !29, size: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4957, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4957, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4957, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4957, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4957, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4957, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4957, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4957, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4957, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4957, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4957, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4957, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4957, file: !1079, line: 70, baseType: !4973, size: 64, offset: 832)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4957, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4957, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4957, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4957, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4957, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4957, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4957, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4957, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4957, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4957, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4957, file: !1079, line: 93, baseType: !4973, size: 64, offset: 1344)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4957, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4957, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4957, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4957, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!4989 = !{!4990}
!4990 = !DILocalVariable(name: "stream", arg: 1, scope: !4951, file: !4952, line: 129, type: !4955)
!4991 = !DILocation(line: 129, column: 19, scope: !4951)
!4992 = !DILocation(line: 150, column: 14, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4951, file: !4952, line: 150, column: 7)
!4994 = !DILocation(line: 150, column: 22, scope: !4993)
!4995 = !DILocation(line: 150, column: 27, scope: !4993)
!4996 = !DILocation(line: 150, column: 7, scope: !4951)
!4997 = !DILocation(line: 151, column: 12, scope: !4993)
!4998 = !DILocation(line: 151, column: 5, scope: !4993)
!4999 = !DILocalVariable(name: "fp", arg: 1, scope: !5000, file: !4952, line: 41, type: !4955)
!5000 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4952, file: !4952, line: 41, type: !5001, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !709, retainedNodes: !5003)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{null, !4955}
!5003 = !{!4999}
!5004 = !DILocation(line: 41, column: 48, scope: !5000, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 156, column: 3, scope: !4951)
!5006 = !DILocation(line: 43, column: 11, scope: !5007, inlinedAt: !5005)
!5007 = distinct !DILexicalBlock(scope: !5000, file: !4952, line: 43, column: 7)
!5008 = !DILocation(line: 43, column: 18, scope: !5007, inlinedAt: !5005)
!5009 = !DILocation(line: 43, column: 7, scope: !5000, inlinedAt: !5005)
!5010 = !DILocation(line: 45, column: 5, scope: !5007, inlinedAt: !5005)
!5011 = !DILocation(line: 158, column: 10, scope: !4951)
!5012 = !DILocation(line: 158, column: 3, scope: !4951)
!5013 = !DILocation(line: 0, scope: !4951)
!5014 = !DILocation(line: 232, column: 1, scope: !4951)
!5015 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5016, file: !5016, line: 28, type: !5017, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !711, retainedNodes: !5054)
!5016 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!29, !5019, !5053, !29}
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1077, line: 7, baseType: !5021)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1079, line: 49, size: 1728, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5021, file: !1079, line: 51, baseType: !29, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5021, file: !1079, line: 54, baseType: !44, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5021, file: !1079, line: 55, baseType: !44, size: 64, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5021, file: !1079, line: 56, baseType: !44, size: 64, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5021, file: !1079, line: 57, baseType: !44, size: 64, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5021, file: !1079, line: 58, baseType: !44, size: 64, offset: 320)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5021, file: !1079, line: 59, baseType: !44, size: 64, offset: 384)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5021, file: !1079, line: 60, baseType: !44, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5021, file: !1079, line: 61, baseType: !44, size: 64, offset: 512)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5021, file: !1079, line: 64, baseType: !44, size: 64, offset: 576)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5021, file: !1079, line: 65, baseType: !44, size: 64, offset: 640)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5021, file: !1079, line: 66, baseType: !44, size: 64, offset: 704)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5021, file: !1079, line: 68, baseType: !1094, size: 64, offset: 768)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5021, file: !1079, line: 70, baseType: !5037, size: 64, offset: 832)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5021, file: !1079, line: 72, baseType: !29, size: 32, offset: 896)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5021, file: !1079, line: 73, baseType: !29, size: 32, offset: 928)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5021, file: !1079, line: 74, baseType: !1101, size: 64, offset: 960)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5021, file: !1079, line: 77, baseType: !121, size: 16, offset: 1024)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5021, file: !1079, line: 78, baseType: !1105, size: 8, offset: 1040)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5021, file: !1079, line: 79, baseType: !1107, size: 8, offset: 1048)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5021, file: !1079, line: 81, baseType: !1109, size: 64, offset: 1088)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5021, file: !1079, line: 89, baseType: !1112, size: 64, offset: 1152)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5021, file: !1079, line: 91, baseType: !1114, size: 64, offset: 1216)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5021, file: !1079, line: 92, baseType: !1117, size: 64, offset: 1280)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5021, file: !1079, line: 93, baseType: !5037, size: 64, offset: 1344)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5021, file: !1079, line: 94, baseType: !46, size: 64, offset: 1408)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5021, file: !1079, line: 95, baseType: !122, size: 64, offset: 1472)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5021, file: !1079, line: 96, baseType: !29, size: 32, offset: 1536)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5021, file: !1079, line: 98, baseType: !1124, size: 160, offset: 1568)
!5053 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1132, line: 63, baseType: !1101)
!5054 = !{!5055, !5056, !5057, !5058}
!5055 = !DILocalVariable(name: "fp", arg: 1, scope: !5015, file: !5016, line: 28, type: !5019)
!5056 = !DILocalVariable(name: "offset", arg: 2, scope: !5015, file: !5016, line: 28, type: !5053)
!5057 = !DILocalVariable(name: "whence", arg: 3, scope: !5015, file: !5016, line: 28, type: !29)
!5058 = !DILocalVariable(name: "pos", scope: !5059, file: !5016, line: 117, type: !5053)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !5016, line: 113, column: 5)
!5060 = distinct !DILexicalBlock(scope: !5015, file: !5016, line: 52, column: 7)
!5061 = !DILocation(line: 28, column: 15, scope: !5015)
!5062 = !DILocation(line: 28, column: 25, scope: !5015)
!5063 = !DILocation(line: 28, column: 37, scope: !5015)
!5064 = !DILocation(line: 52, column: 11, scope: !5060)
!5065 = !{!1178, !753, i64 16}
!5066 = !DILocation(line: 52, column: 31, scope: !5060)
!5067 = !{!1178, !753, i64 8}
!5068 = !DILocation(line: 52, column: 24, scope: !5060)
!5069 = !DILocation(line: 53, column: 7, scope: !5060)
!5070 = !DILocation(line: 53, column: 14, scope: !5060)
!5071 = !DILocation(line: 53, column: 35, scope: !5060)
!5072 = !{!1178, !753, i64 32}
!5073 = !DILocation(line: 53, column: 28, scope: !5060)
!5074 = !DILocation(line: 54, column: 7, scope: !5060)
!5075 = !DILocation(line: 54, column: 14, scope: !5060)
!5076 = !{!1178, !753, i64 72}
!5077 = !DILocation(line: 54, column: 28, scope: !5060)
!5078 = !DILocation(line: 52, column: 7, scope: !5015)
!5079 = !DILocation(line: 117, column: 26, scope: !5059)
!5080 = !DILocation(line: 117, column: 19, scope: !5059)
!5081 = !DILocation(line: 117, column: 13, scope: !5059)
!5082 = !DILocation(line: 118, column: 15, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5059, file: !5016, line: 118, column: 11)
!5084 = !DILocation(line: 118, column: 11, scope: !5059)
!5085 = !DILocation(line: 129, column: 11, scope: !5059)
!5086 = !DILocation(line: 129, column: 18, scope: !5059)
!5087 = !DILocation(line: 130, column: 11, scope: !5059)
!5088 = !DILocation(line: 130, column: 19, scope: !5059)
!5089 = !{!1178, !1179, i64 144}
!5090 = !DILocation(line: 161, column: 7, scope: !5059)
!5091 = !DILocation(line: 163, column: 10, scope: !5015)
!5092 = !DILocation(line: 163, column: 3, scope: !5015)
!5093 = !DILocation(line: 0, scope: !5015)
!5094 = !DILocation(line: 164, column: 1, scope: !5015)
!5095 = distinct !DISubprogram(name: "dup_safer", scope: !5096, file: !5096, line: 31, type: !4861, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !713, retainedNodes: !5097)
!5096 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5097 = !{!5098}
!5098 = !DILocalVariable(name: "fd", arg: 1, scope: !5095, file: !5096, line: 31, type: !29)
!5099 = !DILocation(line: 31, column: 16, scope: !5095)
!5100 = !DILocation(line: 33, column: 10, scope: !5095)
!5101 = !DILocation(line: 33, column: 3, scope: !5095)
!5102 = !DILocation(line: 276, column: 16, scope: !178)
!5103 = !DILocation(line: 276, column: 24, scope: !178)
!5104 = !DILocation(line: 278, column: 3, scope: !178)
!5105 = !DILocation(line: 278, column: 11, scope: !178)
!5106 = !DILocation(line: 279, column: 7, scope: !178)
!5107 = !DILocation(line: 280, column: 3, scope: !178)
!5108 = !DILocation(line: 281, column: 3, scope: !178)
!5109 = !DILocation(line: 0, scope: !212)
!5110 = !DILocation(line: 326, column: 22, scope: !203)
!5111 = !DILocation(line: 326, column: 13, scope: !203)
!5112 = !DILocation(line: 340, column: 18, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !203, file: !179, line: 340, column: 13)
!5114 = !DILocation(line: 340, column: 15, scope: !5113)
!5115 = !DILocation(line: 340, column: 13, scope: !203)
!5116 = !DILocation(line: 342, column: 22, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !179, line: 341, column: 11)
!5118 = !DILocation(line: 343, column: 19, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5117, file: !179, line: 343, column: 17)
!5120 = !DILocation(line: 343, column: 29, scope: !5119)
!5121 = !DILocation(line: 343, column: 32, scope: !5119)
!5122 = !DILocation(line: 343, column: 38, scope: !5119)
!5123 = !DILocation(line: 343, column: 17, scope: !5117)
!5124 = !DILocation(line: 345, column: 36, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5119, file: !179, line: 344, column: 15)
!5126 = !DILocation(line: 361, column: 25, scope: !207)
!5127 = !DILocation(line: 353, column: 26, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5119, file: !179, line: 352, column: 15)
!5129 = !DILocation(line: 354, column: 28, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5128, file: !179, line: 354, column: 21)
!5131 = !DILocation(line: 354, column: 21, scope: !5128)
!5132 = !DILocation(line: 356, column: 36, scope: !5128)
!5133 = !DILocation(line: 360, column: 20, scope: !5113)
!5134 = !DILocation(line: 361, column: 28, scope: !207)
!5135 = !DILocation(line: 0, scope: !5113)
!5136 = !DILocation(line: 361, column: 15, scope: !207)
!5137 = !DILocation(line: 363, column: 25, scope: !206)
!5138 = !DILocation(line: 363, column: 17, scope: !206)
!5139 = !DILocation(line: 364, column: 23, scope: !210)
!5140 = !DILocation(line: 364, column: 27, scope: !210)
!5141 = !DILocation(line: 364, column: 60, scope: !210)
!5142 = !DILocation(line: 364, column: 30, scope: !210)
!5143 = !DILocation(line: 364, column: 74, scope: !210)
!5144 = !DILocation(line: 364, column: 17, scope: !206)
!5145 = !DILocation(line: 366, column: 35, scope: !209)
!5146 = !DILocation(line: 366, column: 21, scope: !209)
!5147 = !DILocation(line: 367, column: 17, scope: !209)
!5148 = !DILocation(line: 368, column: 23, scope: !209)
!5149 = !DILocation(line: 370, column: 15, scope: !209)
!5150 = !DILocation(line: 408, column: 19, scope: !212)
!5151 = !DILocation(line: 408, column: 15, scope: !212)
!5152 = !DILocation(line: 409, column: 18, scope: !212)
!5153 = !DILocation(line: 416, column: 3, scope: !178)
!5154 = !DILocation(line: 418, column: 1, scope: !178)
!5155 = !DILocation(line: 417, column: 3, scope: !178)
