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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), align 8, !dbg !66
@.str.41 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !72
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !77
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !80
@.str.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.1.52 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.3.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.4.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !86
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !92
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !123
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !129
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !141
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !148
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !155
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !143
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !157
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !163
@.str.1.135 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !171

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !697 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !701, metadata !DIExpression()), !dbg !702
  %3 = icmp eq i32 %0, 0, !dbg !703
  br i1 %3, label %9, label %4, !dbg !705

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706, !tbaa !708
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !706
  %7 = load i8*, i8** @program_name, align 8, !dbg !706, !tbaa !708
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !706
  br label %67, !dbg !706

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !712
  %11 = load i8*, i8** @program_name, align 8, !dbg !712, !tbaa !708
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !712
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !714
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !708
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !714
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #28, !dbg !715
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !708
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #28, !dbg !715
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !721
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !708
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !721
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !722
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !708
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !722
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !723
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !708
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !723
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !724
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !708
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !725, metadata !DIExpression()) #28, !dbg !741
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !743
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #28, !dbg !743
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !730, metadata !DIExpression()) #28, !dbg !744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !737, metadata !DIExpression()) #28, !dbg !741
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !738, metadata !DIExpression()) #28, !dbg !741
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !745
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !738, metadata !DIExpression()) #28, !dbg !741
  br label %33, !dbg !746

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !738, metadata !DIExpression()) #28, !dbg !741
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #29, !dbg !747
  %37 = icmp eq i32 %36, 0, !dbg !747
  br i1 %37, label %43, label %38, !dbg !746

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !748
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !738, metadata !DIExpression()) #28, !dbg !741
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !749
  %41 = load i8*, i8** %40, align 8, !dbg !749, !tbaa !750
  %42 = icmp eq i8* %41, null, !dbg !752
  br i1 %42, label %43, label %33, !dbg !753, !llvm.loop !754

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !756
  %46 = load i8*, i8** %45, align 8, !dbg !756, !tbaa !758
  %47 = icmp eq i8* %46, null, !dbg !759
  %48 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !760
  call void @llvm.dbg.value(metadata i8* %48, metadata !737, metadata !DIExpression()) #28, !dbg !741
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #28, !dbg !761
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #28, !dbg !761
  %51 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !762
  call void @llvm.dbg.value(metadata i8* %51, metadata !740, metadata !DIExpression()) #28, !dbg !741
  %52 = icmp eq i8* %51, null, !dbg !763
  br i1 %52, label %60, label %53, !dbg !765

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #29, !dbg !766
  %55 = icmp eq i32 %54, 0, !dbg !766
  br i1 %55, label %60, label %56, !dbg !767

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0), i32 5) #28, !dbg !768
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !708
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #28, !dbg !768
  br label %60, !dbg !770

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 5) #28, !dbg !771
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !771
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #28, !dbg !772
  %64 = icmp eq i8* %48, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !772
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !772
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #28, !dbg !772
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #28, !dbg !773
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #30, !dbg !774
  unreachable, !dbg !774
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !775 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !779 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !834 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !838 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !843, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8** %1, metadata !844, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* null, metadata !845, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* null, metadata !847, metadata !DIExpression()), !dbg !872
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !873
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #28, !dbg !873
  call void @llvm.dbg.declare(metadata %struct.mkdir_options* %3, metadata !848, metadata !DIExpression()), !dbg !874
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !875
  store i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !876, !tbaa !877
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !881
  store i32 511, i32* %6, align 4, !dbg !882, !tbaa !883
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !884
  store i32 0, i32* %7, align 8, !dbg !885, !tbaa !886
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 5, !dbg !887
  store i8* null, i8** %8, align 8, !dbg !888, !tbaa !889
  %9 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !890
  store i8 0, i8* %9, align 4, !dbg !891, !tbaa !892
  %10 = load i8*, i8** %1, align 8, !dbg !893, !tbaa !708
  tail call void @set_program_name(i8* %10) #28, !dbg !894
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #28, !dbg !895
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !896
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !897
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !898
  br label %15, !dbg !899

15:                                               ; preds = %22, %2
  %16 = phi i1 [ true, %22 ], [ false, %2 ]
  %17 = phi i8* [ %19, %22 ], [ null, %2 ]
  br label %18, !dbg !899

18:                                               ; preds = %15, %23
  %19 = phi i8* [ %17, %15 ], [ %24, %23 ]
  br label %20, !dbg !899

20:                                               ; preds = %32, %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !845, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* null, metadata !847, metadata !DIExpression()), !dbg !872
  %21 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #28, !dbg !900
  call void @llvm.dbg.value(metadata i32 %21, metadata !846, metadata !DIExpression()), !dbg !872
  switch i32 %21, label %37 [
    i32 -1, label %38
    i32 112, label %22
    i32 109, label %23
    i32 118, label %25
    i32 90, label %27
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !899

22:                                               ; preds = %20
  store i32 (i8*, i8*, i8*)* @make_ancestor, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !901, !tbaa !877
  br label %15, !dbg !904, !llvm.loop !905

23:                                               ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !907, !tbaa !708
  call void @llvm.dbg.value(metadata i8* %24, metadata !845, metadata !DIExpression()), !dbg !872
  br label %18, !dbg !908, !llvm.loop !905

25:                                               ; preds = %20
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #28, !dbg !909
  store i8* %26, i8** %8, align 8, !dbg !910, !tbaa !889
  br label %32, !dbg !911

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8, !dbg !912, !tbaa !708
  %29 = icmp eq i8* %28, null, !dbg !912
  br i1 %29, label %32, label %30, !dbg !916

30:                                               ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 5) #28, !dbg !917
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #28, !dbg !919
  br label %32, !dbg !920

32:                                               ; preds = %30, %27, %25
  br label %20, !dbg !872, !llvm.loop !905

33:                                               ; preds = %20
  tail call void @usage(i32 0) #31, !dbg !921
  unreachable, !dbg !921

34:                                               ; preds = %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !922, !tbaa !708
  %36 = load i8*, i8** @Version, align 8, !dbg !922, !tbaa !708
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #28, !dbg !922
  tail call void @exit(i32 0) #30, !dbg !922
  unreachable, !dbg !922

37:                                               ; preds = %20
  tail call void @usage(i32 1) #31, !dbg !923
  unreachable, !dbg !923

38:                                               ; preds = %20
  %39 = load i32, i32* @optind, align 4, !dbg !924, !tbaa !926
  %40 = icmp eq i32 %39, %0, !dbg !927
  br i1 %40, label %41, label %43, !dbg !928

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #28, !dbg !929
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42) #28, !dbg !931
  tail call void @usage(i32 1) #31, !dbg !932
  unreachable, !dbg !932

43:                                               ; preds = %38
  %44 = icmp ne i8* %19, null
  %45 = or i1 %44, %16, !dbg !933
  br i1 %45, label %46, label %60, !dbg !933

46:                                               ; preds = %43
  %47 = tail call i32 @umask(i32 0) #28, !dbg !934
  call void @llvm.dbg.value(metadata i32 %47, metadata !863, metadata !DIExpression()), !dbg !935
  %48 = tail call i32 @umask(i32 %47) #28, !dbg !936
  %49 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !937
  store i32 %47, i32* %49, align 8, !dbg !938, !tbaa !939
  br i1 %44, label %50, label %59, !dbg !940

50:                                               ; preds = %46
  %51 = tail call %struct.mode_change* @mode_compile(i8* nonnull %19) #28, !dbg !941
  call void @llvm.dbg.value(metadata %struct.mode_change* %51, metadata !866, metadata !DIExpression()), !dbg !942
  %52 = icmp eq %struct.mode_change* %51, null, !dbg !943
  br i1 %52, label %53, label %56, !dbg !945

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 5) #28, !dbg !946
  %55 = tail call i8* @quote(i8* nonnull %19) #28, !dbg !946
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %54, i8* %55) #28, !dbg !946
  unreachable, !dbg !946

56:                                               ; preds = %50
  %57 = call i32 @mode_adjust(i32 511, i1 zeroext true, i32 %47, %struct.mode_change* nonnull %51, i32* nonnull %7) #28, !dbg !947
  store i32 %57, i32* %6, align 4, !dbg !948, !tbaa !883
  %58 = bitcast %struct.mode_change* %51 to i8*, !dbg !949
  call void @free(i8* %58) #28, !dbg !950
  br label %60, !dbg !951

59:                                               ; preds = %46
  store i32 511, i32* %6, align 4, !dbg !952, !tbaa !883
  br label %60

60:                                               ; preds = %56, %59, %43
  %61 = load i32, i32* @optind, align 4, !dbg !953, !tbaa !926
  %62 = sub nsw i32 %0, %61, !dbg !954
  %63 = sext i32 %61 to i64, !dbg !955
  %64 = getelementptr inbounds i8*, i8** %1, i64 %63, !dbg !955
  %65 = call i32 @savewd_process_files(i32 %62, i8** nonnull %64, i32 (i8*, %struct.savewd*, i8*)* nonnull @process_dir, i8* nonnull %4) #28, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #28, !dbg !957
  ret i32 %65, !dbg !958
}

; Function Attrs: nounwind
declare !dbg !959 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !962 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !965 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !970 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @make_ancestor(i8* %0, i8* nocapture readonly %1, i8* nocapture readonly %2) #8 !dbg !976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !978, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %1, metadata !979, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %2, metadata !980, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %2, metadata !981, metadata !DIExpression()), !dbg !990
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !991
  %5 = load i8, i8* %4, align 4, !dbg !991, !tbaa !892, !range !993
  %6 = icmp eq i8 %5, 0, !dbg !991
  br i1 %6, label %9, label %7, !dbg !994

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* undef, metadata !995, metadata !DIExpression()) #28, !dbg !1002
  call void @llvm.dbg.value(metadata i32 undef, metadata !1001, metadata !DIExpression()) #28, !dbg !1002
  %8 = tail call i32* @__errno_location() #32, !dbg !1004
  store i32 95, i32* %8, align 4, !dbg !1005, !tbaa !926
  br label %9, !dbg !1006

9:                                                ; preds = %7, %3
  call void @llvm.dbg.value(metadata i32 192, metadata !984, metadata !DIExpression()), !dbg !990
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1007
  %11 = bitcast i8* %10 to i32*, !dbg !1007
  %12 = load i32, i32* %11, align 8, !dbg !1007, !tbaa !939
  %13 = and i32 %12, 192, !dbg !1008
  %14 = icmp eq i32 %13, 0, !dbg !1009
  call void @llvm.dbg.value(metadata i1 %14, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !990
  br i1 %14, label %15, label %17, !dbg !1010

15:                                               ; preds = %9
  %16 = tail call i32 @mkdir(i8* %1, i32 511) #28, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %20, metadata !986, metadata !DIExpression()), !dbg !990
  br label %25, !dbg !1012

17:                                               ; preds = %9
  %18 = and i32 %12, -193, !dbg !1013
  %19 = tail call i32 @umask(i32 %18) #28, !dbg !1015
  %20 = tail call i32 @mkdir(i8* %1, i32 511) #28, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %20, metadata !986, metadata !DIExpression()), !dbg !990
  %21 = tail call i32* @__errno_location() #32, !dbg !1016
  %22 = load i32, i32* %21, align 4, !dbg !1016, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %22, metadata !987, metadata !DIExpression()), !dbg !1017
  %23 = load i32, i32* %11, align 8, !dbg !1018, !tbaa !939
  %24 = tail call i32 @umask(i32 %23) #28, !dbg !1019
  store i32 %22, i32* %21, align 4, !dbg !1020, !tbaa !926
  br label %25, !dbg !1021

25:                                               ; preds = %15, %17
  %26 = phi i32 [ %16, %15 ], [ %20, %17 ]
  %27 = icmp eq i32 %26, 0, !dbg !1022
  br i1 %27, label %28, label %39, !dbg !1024

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 8, !dbg !1025, !tbaa !939
  %30 = lshr i32 %29, 8, !dbg !1027
  %31 = and i32 %30, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %31, metadata !986, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()) #28, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %2, metadata !1033, metadata !DIExpression()) #28, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()) #28, !dbg !1035
  %32 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1037
  %33 = bitcast i8* %32 to i8**, !dbg !1037
  %34 = load i8*, i8** %33, align 8, !dbg !1037, !tbaa !889
  %35 = icmp eq i8* %34, null, !dbg !1039
  br i1 %35, label %39, label %36, !dbg !1040

36:                                               ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1041, !tbaa !708
  %38 = tail call i8* @quotearg_style(i32 4, i8* %0) #28, !dbg !1042
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %37, i8* nonnull %34, i8* %38) #28, !dbg !1043
  br label %39, !dbg !1043

39:                                               ; preds = %36, %28, %25
  %40 = phi i32 [ %26, %25 ], [ %31, %28 ], [ %31, %36 ], !dbg !990
  call void @llvm.dbg.value(metadata i32 %40, metadata !986, metadata !DIExpression()), !dbg !990
  ret i32 %40, !dbg !1044
}

declare !dbg !1045 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1049 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @process_dir(i8* %0, %struct.savewd* %1, i8* %2) #8 !dbg !1053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1058, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1059, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %2, metadata !1060, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %2, metadata !1061, metadata !DIExpression()), !dbg !1063
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1064
  %5 = load i8, i8* %4, align 4, !dbg !1064, !tbaa !892, !range !993
  %6 = icmp ne i8 %5, 0, !dbg !1064
  %7 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1063, !tbaa !877
  %9 = icmp eq i32 (i8*, i8*, i8*)* %8, null
  %10 = and i1 %6, %9, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %2, metadata !1061, metadata !DIExpression()), !dbg !1063
  br i1 %10, label %11, label %13, !dbg !1066

11:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* undef, metadata !995, metadata !DIExpression()) #28, !dbg !1067
  call void @llvm.dbg.value(metadata i32 undef, metadata !1001, metadata !DIExpression()) #28, !dbg !1067
  %12 = tail call i32* @__errno_location() #32, !dbg !1071
  store i32 95, i32* %12, align 4, !dbg !1072, !tbaa !926
  br label %13, !dbg !1073

13:                                               ; preds = %3, %11
  %14 = phi i32 (i8*, i8*, i8*)* [ null, %11 ], [ %8, %3 ], !dbg !1074
  %15 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1075
  %16 = bitcast i8* %15 to i32*, !dbg !1075
  %17 = load i32, i32* %16, align 4, !dbg !1075, !tbaa !883
  %18 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1076
  %19 = bitcast i8* %18 to i32*, !dbg !1076
  %20 = load i32, i32* %19, align 8, !dbg !1076, !tbaa !886
  %21 = tail call zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %14, i8* nonnull %2, i32 %17, void (i8*, i8*)* nonnull @announce_mkdir, i32 %20, i32 -1, i32 -1, i1 zeroext true) #28, !dbg !1077
  call void @llvm.dbg.value(metadata i32 undef, metadata !1062, metadata !DIExpression()), !dbg !1063
  br i1 %21, label %22, label %30, !dbg !1078

22:                                               ; preds = %13
  %23 = load i8, i8* %4, align 4, !dbg !1080, !tbaa !892, !range !993
  %24 = icmp eq i8 %23, 0, !dbg !1080
  br i1 %24, label %30, label %25, !dbg !1081

25:                                               ; preds = %22
  %26 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1082, !tbaa !877
  %27 = icmp eq i32 (i8*, i8*, i8*)* %26, null, !dbg !1083
  br i1 %27, label %30, label %28, !dbg !1084

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* undef, metadata !1085, metadata !DIExpression()) #28, !dbg !1092
  call void @llvm.dbg.value(metadata i1 undef, metadata !1090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1092
  call void @llvm.dbg.value(metadata i1 undef, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1092
  %29 = tail call i32* @__errno_location() #32, !dbg !1096
  store i32 95, i32* %29, align 4, !dbg !1097, !tbaa !926
  br label %30, !dbg !1098

30:                                               ; preds = %28, %25, %22, %13
  %31 = xor i1 %21, true, !dbg !1077
  %32 = zext i1 %31 to i32, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %32, metadata !1062, metadata !DIExpression()), !dbg !1063
  ret i32 %32, !dbg !1099
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal void @announce_mkdir(i8* %0, i8* nocapture readonly %1) #8 !dbg !1029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %1, metadata !1033, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %1, metadata !1034, metadata !DIExpression()), !dbg !1100
  %3 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1101
  %4 = bitcast i8* %3 to i8**, !dbg !1101
  %5 = load i8*, i8** %4, align 8, !dbg !1101, !tbaa !889
  %6 = icmp eq i8* %5, null, !dbg !1102
  br i1 %6, label %10, label %7, !dbg !1103

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104, !tbaa !708
  %9 = tail call i8* @quotearg_style(i32 4, i8* %0) #28, !dbg !1105
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %8, i8* nonnull %5, i8* %9) #28, !dbg !1106
  br label %10, !dbg !1106

10:                                               ; preds = %7, %2
  ret void, !dbg !1107
}

; Function Attrs: nofree nounwind
declare !dbg !1108 noundef i32 @mkdir(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* %0, i8* %1, ...) local_unnamed_addr #8 !dbg !1111 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1150, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %1, metadata !1151, metadata !DIExpression()), !dbg !1164
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1165
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #28, !dbg !1165
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1152, metadata !DIExpression()), !dbg !1166
  %5 = load i8*, i8** @program_name, align 8, !dbg !1167, !tbaa !708
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !1167
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !1168
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1169
  call void @llvm.va_start(i8* nonnull %4), !dbg !1169
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1170, metadata !DIExpression()) #28, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %1, metadata !1179, metadata !DIExpression()) #28, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !1180, metadata !DIExpression()) #28, !dbg !1181
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #28, !dbg !1183
  call void @llvm.va_end(i8* nonnull %4), !dbg !1184
  call void @llvm.dbg.value(metadata i32 10, metadata !1185, metadata !DIExpression()) #28, !dbg !1192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #28, !dbg !1192
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1194
  %11 = load i8*, i8** %10, align 8, !dbg !1194, !tbaa !1195
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1194
  %13 = load i8*, i8** %12, align 8, !dbg !1194, !tbaa !1199
  %14 = icmp ult i8* %11, %13, !dbg !1194
  br i1 %14, label %17, label %15, !dbg !1194, !prof !1200

15:                                               ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #28, !dbg !1194
  br label %19, !dbg !1194

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1194
  store i8* %18, i8** %10, align 8, !dbg !1194, !tbaa !1195
  store i8 10, i8* %11, align 1, !dbg !1194, !tbaa !1201
  br label %19, !dbg !1194

19:                                               ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #28, !dbg !1202
  ret void, !dbg !1202
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i8* %0, i8** @file_name, align 8, !dbg !1207, !tbaa !708
  ret void, !dbg !1208
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1209 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1213, metadata !DIExpression()), !dbg !1214
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1215, !tbaa !1216
  ret void, !dbg !1217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1218 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1223, !tbaa !708
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1224
  %3 = icmp eq i32 %2, 0, !dbg !1225
  br i1 %3, label %22, label %4, !dbg !1226

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1227, !tbaa !1216, !range !993
  %6 = icmp eq i8 %5, 0, !dbg !1227
  br i1 %6, label %11, label %7, !dbg !1228

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1229
  %9 = load i32, i32* %8, align 4, !dbg !1229, !tbaa !926
  %10 = icmp eq i32 %9, 32, !dbg !1230
  br i1 %10, label %22, label %11, !dbg !1231

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #28, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %12, metadata !1220, metadata !DIExpression()), !dbg !1233
  %13 = load i8*, i8** @file_name, align 8, !dbg !1234, !tbaa !708
  %14 = icmp eq i8* %13, null, !dbg !1234
  %15 = tail call i32* @__errno_location() #32, !dbg !1236
  %16 = load i32, i32* %15, align 4, !dbg !1236, !tbaa !926
  br i1 %14, label %19, label %17, !dbg !1237

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1238
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1239
  br label %20, !dbg !1239

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #28, !dbg !1240
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1241, !tbaa !926
  tail call void @_exit(i32 %21) #30, !dbg !1242
  unreachable, !dbg !1242

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1243, !tbaa !708
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1245
  %25 = icmp eq i32 %24, 0, !dbg !1246
  br i1 %25, label %28, label %26, !dbg !1247

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1248, !tbaa !926
  tail call void @_exit(i32 %27) #30, !dbg !1249
  unreachable, !dbg !1249

28:                                               ; preds = %22
  ret void, !dbg !1250
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %2, i8* %3, i32 %4, void (i8*, i8*)* nocapture %5, i32 %6, i32 %7, i32 %8, i1 zeroext %9) local_unnamed_addr #8 !dbg !1251 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1257, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1258, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !1259, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %3, metadata !1260, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %4, metadata !1261, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, metadata !1262, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %6, metadata !1263, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %7, metadata !1264, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %8, metadata !1265, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i1 %9, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1329
  %13 = load i8, i8* %0, align 1, !dbg !1330, !tbaa !1201
  %14 = icmp eq i8 %13, 47, !dbg !1330
  br i1 %14, label %23, label %15, !dbg !1330

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1331, metadata !DIExpression()), !dbg !1338
  %16 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1340
  %17 = load i32, i32* %16, align 4, !dbg !1340, !tbaa !1341
  %18 = icmp eq i32 %17, 4, !dbg !1343
  br i1 %18, label %19, label %23, !dbg !1344

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1345
  %21 = load i32, i32* %20, align 4, !dbg !1345, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %21, metadata !1267, metadata !DIExpression()), !dbg !1329
  %22 = icmp eq i32 %21, 0, !dbg !1346
  br i1 %22, label %23, label %114, !dbg !1347

23:                                               ; preds = %15, %10, %19
  call void @llvm.dbg.value(metadata i64 0, metadata !1268, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i32 2, metadata !1272, metadata !DIExpression()), !dbg !1348
  %24 = icmp ne i32 (i8*, i8*, i8*)* %2, null, !dbg !1349
  br i1 %24, label %25, label %33, !dbg !1351

25:                                               ; preds = %23
  %26 = tail call i64 @mkancesdirs(i8* nonnull %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nonnull %2, i8* %3) #28, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %26, metadata !1268, metadata !DIExpression()), !dbg !1348
  %27 = icmp slt i64 %26, 0, !dbg !1354
  br i1 %27, label %28, label %33, !dbg !1356

28:                                               ; preds = %25
  %29 = icmp eq i64 %26, -1, !dbg !1357
  br i1 %29, label %30, label %118, !dbg !1360

30:                                               ; preds = %28
  %31 = tail call i32* @__errno_location() #32, !dbg !1361
  %32 = load i32, i32* %31, align 4, !dbg !1361, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %32, metadata !1267, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i64 -1, metadata !1268, metadata !DIExpression()), !dbg !1348
  br label %114, !dbg !1362

33:                                               ; preds = %25, %23
  %34 = phi i64 [ 0, %23 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !1267, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i64 -1, metadata !1268, metadata !DIExpression()), !dbg !1348
  %35 = and i32 %8, %7, !dbg !1363
  %36 = icmp eq i32 %35, -1, !dbg !1363
  call void @llvm.dbg.value(metadata i1 %36, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1364
  %37 = and i32 %6, 3072, !dbg !1365
  %38 = and i32 %4, 512, !dbg !1366
  %39 = or i32 %37, %38, !dbg !1367
  call void @llvm.dbg.value(metadata i1 undef, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1364
  call void @llvm.dbg.value(metadata i32 %4, metadata !1277, metadata !DIExpression()), !dbg !1364
  %40 = and i32 %4, -64, !dbg !1368
  %41 = icmp eq i32 %39, 0, !dbg !1368
  %42 = and i32 %4, -19, !dbg !1368
  %43 = select i1 %41, i32 %4, i32 %42, !dbg !1368
  %44 = select i1 %36, i32 %43, i32 %40, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %44, metadata !1277, metadata !DIExpression()), !dbg !1364
  %45 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1369
  %46 = tail call i32 @mkdir(i8* nonnull %45, i32 %44) #28, !dbg !1370
  %47 = icmp eq i32 %46, 0, !dbg !1371
  br i1 %47, label %48, label %54, !dbg !1372

48:                                               ; preds = %33
  %49 = and i32 %4, 511, !dbg !1373
  %50 = and i32 %49, %6, !dbg !1374
  call void @llvm.dbg.value(metadata i1 undef, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1375
  tail call void %5(i8* nonnull %0, i8* %3) #28, !dbg !1376
  %51 = or i32 %39, %50, !dbg !1377
  %52 = icmp eq i32 %51, 0, !dbg !1377
  %53 = and i1 %52, %36, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %56, metadata !1267, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 -1, metadata !1277, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i32 2, metadata !1272, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i1 %9, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1329
  br i1 %53, label %118, label %80, !dbg !1378

54:                                               ; preds = %33
  %55 = tail call i32* @__errno_location() #32, !dbg !1379
  %56 = load i32, i32* %55, align 4, !dbg !1379, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %56, metadata !1267, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 -1, metadata !1277, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i32 2, metadata !1272, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i1 %9, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1329
  br i1 %9, label %57, label %80, !dbg !1378

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !1381
  br i1 %58, label %118, label %59, !dbg !1383

59:                                               ; preds = %57
  %60 = icmp ne i32 %56, 2, !dbg !1384
  %61 = and i1 %24, %60, !dbg !1385
  br i1 %61, label %62, label %114, !dbg !1385

62:                                               ; preds = %59
  %63 = bitcast %struct.stat* %11 to i8*, !dbg !1386
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %63) #28, !dbg !1386
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1281, metadata !DIExpression()), !dbg !1387
  %64 = call i32 @stat(i8* nonnull %45, %struct.stat* nonnull %11) #28, !dbg !1388
  %65 = icmp eq i32 %64, 0, !dbg !1390
  br i1 %65, label %66, label %71, !dbg !1391

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3, !dbg !1392
  %68 = load i32, i32* %67, align 8, !dbg !1392, !tbaa !1395
  %69 = and i32 %68, 61440, !dbg !1392
  %70 = icmp eq i32 %69, 16384, !dbg !1392
  br i1 %70, label %78, label %79, !dbg !1398

71:                                               ; preds = %62
  %72 = icmp eq i32 %56, 17, !dbg !1399
  br i1 %72, label %73, label %79, !dbg !1401

73:                                               ; preds = %71
  %74 = load i32, i32* %55, align 4, !dbg !1402, !tbaa !926
  switch i32 %74, label %75 [
    i32 2, label %79
    i32 20, label %79
  ], !dbg !1403

75:                                               ; preds = %73
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 5) #28, !dbg !1404
  %77 = tail call i8* @quote(i8* nonnull %0) #28, !dbg !1406
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %74, i8* %76, i8* %77) #28, !dbg !1407
  br label %78, !dbg !1408

78:                                               ; preds = %75, %66
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #28, !dbg !1409
  br label %118

79:                                               ; preds = %66, %71, %73, %73
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %63) #28, !dbg !1409
  br label %114

80:                                               ; preds = %48, %54
  %81 = phi i32 [ 0, %48 ], [ %56, %54 ]
  %82 = phi i32 [ %44, %48 ], [ -1, %54 ]
  %83 = phi i32 [ 3, %48 ], [ 2, %54 ]
  %84 = bitcast [2 x i32]* %12 to i8*, !dbg !1410
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #28, !dbg !1410
  call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1319, metadata !DIExpression()), !dbg !1411
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1412
  %86 = call i32 @savewd_chdir(%struct.savewd* %1, i8* nonnull %45, i32 %83, i32* nonnull %85) #28, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %86, metadata !1324, metadata !DIExpression()), !dbg !1414
  %87 = icmp slt i32 %86, -1, !dbg !1415
  br i1 %87, label %111, label %88, !dbg !1416

88:                                               ; preds = %80
  %89 = icmp eq i32 %86, 0, !dbg !1417
  call void @llvm.dbg.value(metadata i1 %89, metadata !1325, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1418
  %90 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.52, i64 0, i64 0), i8* %45, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %90, metadata !1328, metadata !DIExpression()), !dbg !1418
  %91 = load i32, i32* %85, align 4, !dbg !1420, !tbaa !926
  %92 = call i32 @dirchownmod(i32 %91, i8* %90, i32 %82, i32 %7, i32 %8, i32 %4, i32 %6) #28, !dbg !1422
  %93 = icmp eq i32 %92, 0, !dbg !1423
  br i1 %93, label %111, label %94, !dbg !1424

94:                                               ; preds = %88
  %95 = icmp eq i32 %81, 0, !dbg !1425
  br i1 %95, label %96, label %98, !dbg !1427

96:                                               ; preds = %94
  %97 = tail call i32* @__errno_location() #32, !dbg !1428
  br label %105, !dbg !1427

98:                                               ; preds = %94
  %99 = icmp ne i32 %81, 2, !dbg !1430
  %100 = and i1 %24, %99, !dbg !1431
  br i1 %100, label %101, label %113, !dbg !1431

101:                                              ; preds = %98
  %102 = tail call i32* @__errno_location() #32, !dbg !1432
  %103 = load i32, i32* %102, align 4, !dbg !1432, !tbaa !926
  %104 = icmp eq i32 %103, 20, !dbg !1433
  br i1 %104, label %113, label %105, !dbg !1434

105:                                              ; preds = %96, %101
  %106 = phi i32* [ %97, %96 ], [ %102, %101 ], !dbg !1428
  %107 = load i32, i32* %106, align 4, !dbg !1428, !tbaa !926
  %108 = select i1 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.53, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.54, i64 0, i64 0), !dbg !1435
  %109 = call i8* @dcgettext(i8* null, i8* %108, i32 5) #28, !dbg !1435
  %110 = call i8* @quote(i8* nonnull %0) #28, !dbg !1436
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* %109, i8* %110) #28, !dbg !1437
  br label %111, !dbg !1438

111:                                              ; preds = %80, %105, %88
  %112 = phi i1 [ true, %88 ], [ false, %105 ], [ true, %80 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #28, !dbg !1439
  br label %118

113:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #28, !dbg !1439
  br label %114

114:                                              ; preds = %30, %59, %79, %113, %19
  %115 = phi i32 [ %21, %19 ], [ %81, %113 ], [ %56, %59 ], [ %56, %79 ], [ %32, %30 ], !dbg !1440
  call void @llvm.dbg.value(metadata i32 %115, metadata !1267, metadata !DIExpression()), !dbg !1329
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.55, i64 0, i64 0), i32 5) #28, !dbg !1441
  %117 = call i8* @quote(i8* nonnull %0) #28, !dbg !1442
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* %116, i8* %117) #28, !dbg !1443
  br label %118, !dbg !1444

118:                                              ; preds = %48, %111, %78, %57, %28, %114
  %119 = phi i1 [ false, %114 ], [ true, %28 ], [ %112, %111 ], [ %65, %78 ], [ true, %57 ], [ true, %48 ], !dbg !1329
  ret i1 %119, !dbg !1445
}

; Function Attrs: nofree nounwind
declare !dbg !1446 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !1450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1462, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 0, metadata !1464, metadata !DIExpression()), !dbg !1489
  %2 = load i8, i8* %0, align 1, !dbg !1490, !tbaa !1201
  %3 = and i8 %2, -8, !dbg !1491
  %4 = icmp eq i8 %3, 48, !dbg !1491
  br i1 %4, label %5, label %39, !dbg !1491

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1492
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1494
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1494
  call void @llvm.dbg.value(metadata i8* %8, metadata !1465, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %7, metadata !1466, metadata !DIExpression()), !dbg !1494
  %9 = shl i32 %7, 3, !dbg !1495
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %10, metadata !1465, metadata !DIExpression()), !dbg !1489
  %11 = zext i8 %6 to i32, !dbg !1492
  %12 = add i32 %9, -48, !dbg !1497
  %13 = add i32 %12, %11, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %13, metadata !1466, metadata !DIExpression()), !dbg !1494
  %14 = icmp ugt i32 %13, 4095, !dbg !1499
  br i1 %14, label %149, label %15, !dbg !1501

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1502, !tbaa !1201
  %17 = and i8 %16, -8, !dbg !1503
  %18 = icmp eq i8 %17, 48, !dbg !1503
  br i1 %18, label %5, label %19, !dbg !1503, !llvm.loop !1504

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1507
  br i1 %20, label %21, label %149, !dbg !1509

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1469, metadata !DIExpression()), !dbg !1494
  %22 = ptrtoint i8* %10 to i64, !dbg !1510
  %23 = ptrtoint i8* %0 to i64, !dbg !1510
  %24 = sub i64 %22, %23, !dbg !1510
  %25 = icmp slt i64 %24, 5, !dbg !1511
  %26 = and i32 %13, 3072, !dbg !1512
  %27 = or i32 %26, 1023, !dbg !1512
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %28, metadata !1470, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %13, metadata !1513, metadata !DIExpression()) #28, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %28, metadata !1518, metadata !DIExpression()) #28, !dbg !1520
  %29 = tail call noalias i8* @xmalloc(i64 32) #28, !dbg !1522
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1522
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1519, metadata !DIExpression()) #28, !dbg !1520
  store i8 61, i8* %29, align 4, !dbg !1523, !tbaa !1524
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1526
  store i8 1, i8* %31, align 1, !dbg !1527, !tbaa !1528
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1529
  %33 = bitcast i8* %32 to i32*, !dbg !1529
  store i32 4095, i32* %33, align 4, !dbg !1530, !tbaa !1531
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1532
  %35 = bitcast i8* %34 to i32*, !dbg !1532
  store i32 %13, i32* %35, align 4, !dbg !1533, !tbaa !1534
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1535
  %37 = bitcast i8* %36 to i32*, !dbg !1535
  store i32 %28, i32* %37, align 4, !dbg !1536, !tbaa !1537
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1538
  store i8 0, i8* %38, align 1, !dbg !1539, !tbaa !1528
  br label %149, !dbg !1540

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1541
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1544
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1545
  call void @llvm.dbg.value(metadata i64 %42, metadata !1471, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8* %41, metadata !1465, metadata !DIExpression()), !dbg !1489
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1546

43:                                               ; preds = %39
  br label %44, !dbg !1547

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %46, metadata !1471, metadata !DIExpression()), !dbg !1545
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %47, metadata !1465, metadata !DIExpression()), !dbg !1489
  %48 = load i8, i8* %47, align 1, !dbg !1541, !tbaa !1201
  br label %39, !dbg !1550, !llvm.loop !1551

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1553, metadata !DIExpression()) #28, !dbg !1559
  call void @llvm.dbg.value(metadata i64 16, metadata !1558, metadata !DIExpression()) #28, !dbg !1559
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1561
  br i1 %50, label %51, label %52, !dbg !1563

51:                                               ; preds = %49
  tail call void @xalloc_die() #30, !dbg !1564
  unreachable, !dbg !1564

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !1565
  %54 = tail call noalias i8* @xmalloc(i64 %53) #28, !dbg !1566
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1463, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %0, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %56, !dbg !1568

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !1569
  %58 = phi i64 [ 0, %52 ], [ %132, %144 ], !dbg !1570
  call void @llvm.dbg.value(metadata i32 undef, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %58, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %57, metadata !1465, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 0, metadata !1473, metadata !DIExpression()), !dbg !1572
  br label %59, !dbg !1573

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1569
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1572
  call void @llvm.dbg.value(metadata i32 %61, metadata !1473, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %60, metadata !1465, metadata !DIExpression()), !dbg !1489
  %62 = load i8, i8* %60, align 1, !dbg !1574, !tbaa !1201
  %63 = sext i8 %62 to i32, !dbg !1574
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1577

64:                                               ; preds = %59, %59, %59
  br label %72, !dbg !1578

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1473, metadata !DIExpression()), !dbg !1572
  br label %68, !dbg !1579

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1473, metadata !DIExpression()), !dbg !1572
  br label %68, !dbg !1581

67:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1473, metadata !DIExpression()), !dbg !1572
  br label %68, !dbg !1582

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %70, metadata !1473, metadata !DIExpression()), !dbg !1572
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %71, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %59, !dbg !1585, !llvm.loop !1586

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !1589
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !1569
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !1590
  %76 = phi i64 [ %58, %64 ], [ %132, %143 ], !dbg !1489
  call void @llvm.dbg.value(metadata i32 undef, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %76, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %75, metadata !1473, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %74, metadata !1465, metadata !DIExpression()), !dbg !1489
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1591
  call void @llvm.dbg.value(metadata i8* %77, metadata !1465, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %73, metadata !1477, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 0, metadata !1480, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8 3, metadata !1481, metadata !DIExpression()), !dbg !1571
  %78 = load i8, i8* %77, align 1, !dbg !1592, !tbaa !1201
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
  ], !dbg !1578

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1593

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1594
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1571
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1596
  call void @llvm.dbg.value(metadata i32 %84, metadata !1483, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %83, metadata !1465, metadata !DIExpression()), !dbg !1489
  %85 = shl i32 %84, 3, !dbg !1597
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %86, metadata !1465, metadata !DIExpression()), !dbg !1489
  %87 = sext i8 %82 to i32, !dbg !1594
  %88 = add i32 %85, -48, !dbg !1599
  %89 = add i32 %88, %87, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %89, metadata !1483, metadata !DIExpression()), !dbg !1596
  %90 = icmp ugt i32 %89, 4095, !dbg !1601
  br i1 %90, label %148, label %91, !dbg !1603

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1604, !tbaa !1201
  %93 = and i8 %92, -8, !dbg !1605
  %94 = icmp eq i8 %93, 48, !dbg !1605
  br i1 %94, label %81, label %95, !dbg !1605, !llvm.loop !1606

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1608
  br i1 %96, label %97, label %148, !dbg !1610

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1611

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1479, metadata !DIExpression()), !dbg !1571
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %99, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %125, !dbg !1613

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1479, metadata !DIExpression()), !dbg !1571
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %101, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %125, !dbg !1615

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1479, metadata !DIExpression()), !dbg !1571
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %103, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %125, !dbg !1617

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1618
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1571
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1621
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1622
  call void @llvm.dbg.value(metadata i8 %108, metadata !1481, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %107, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %106, metadata !1465, metadata !DIExpression()), !dbg !1489
  %109 = sext i8 %105 to i32, !dbg !1618
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1623

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %111, metadata !1479, metadata !DIExpression()), !dbg !1571
  br label %120, !dbg !1626

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %113, metadata !1479, metadata !DIExpression()), !dbg !1571
  br label %120, !dbg !1628

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %115, metadata !1479, metadata !DIExpression()), !dbg !1571
  br label %120, !dbg !1630

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %117, metadata !1479, metadata !DIExpression()), !dbg !1571
  br label %120, !dbg !1632

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %119, metadata !1479, metadata !DIExpression()), !dbg !1571
  br label %120, !dbg !1634

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1621
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %122, metadata !1481, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %121, metadata !1479, metadata !DIExpression()), !dbg !1571
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %123, metadata !1465, metadata !DIExpression()), !dbg !1489
  %124 = load i8, i8* %123, align 1, !dbg !1618, !tbaa !1201
  br label %104, !dbg !1636, !llvm.loop !1637

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1571
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1590
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i1 [ true, %102 ], [ true, %100 ], [ true, %98 ], [ false, %97 ], [ false, %97 ], [ true, %104 ], !dbg !1640
  %130 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1640
  %131 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1571
  call void @llvm.dbg.value(metadata i8 %131, metadata !1481, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %130, metadata !1480, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %128, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %127, metadata !1473, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %126, metadata !1465, metadata !DIExpression()), !dbg !1489
  %132 = add i64 %76, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %132, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !1482, metadata !DIExpression()), !dbg !1571
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1642
  store i8 %73, i8* %133, align 4, !dbg !1643, !tbaa !1524
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1644
  store i8 %131, i8* %134, align 1, !dbg !1645, !tbaa !1528
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1646
  store i32 %127, i32* %135, align 4, !dbg !1647, !tbaa !1531
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1648
  store i32 %128, i32* %136, align 4, !dbg !1649, !tbaa !1534
  %137 = icmp eq i32 %127, 0, !dbg !1650
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !1650
  %139 = and i32 %138, %128, !dbg !1650
  %140 = select i1 %129, i32 %139, i32 %130, !dbg !1650
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1651
  store i32 %140, i32* %141, align 4, !dbg !1652, !tbaa !1537
  call void @llvm.dbg.value(metadata i32 undef, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %76, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %75, metadata !1473, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %86, metadata !1465, metadata !DIExpression()), !dbg !1489
  %142 = load i8, i8* %126, align 1, !dbg !1653, !tbaa !1201
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !1654

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !1571

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i32 undef, metadata !1479, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %132, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %126, metadata !1465, metadata !DIExpression()), !dbg !1489
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %145, metadata !1465, metadata !DIExpression()), !dbg !1489
  br label %56, !dbg !1656, !llvm.loop !1657

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %132, i32 1, !dbg !1660
  store i8 0, i8* %147, align 1, !dbg !1663, !tbaa !1528
  br label %149, !dbg !1664

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !1488), !dbg !1665
  tail call void @free(i8* %54) #28, !dbg !1666
  br label %149, !dbg !1667

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !1668
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture readonly %0) local_unnamed_addr #8 !dbg !1669 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1671, metadata !DIExpression()), !dbg !1694
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1695
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #28, !dbg !1695
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1672, metadata !DIExpression()), !dbg !1696
  %4 = call i32 @stat(i8* %0, %struct.stat* nonnull %2) #28, !dbg !1697
  %5 = icmp eq i32 %4, 0, !dbg !1699
  br i1 %5, label %6, label %19, !dbg !1700

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1701
  %8 = load i32, i32* %7, align 8, !dbg !1701, !tbaa !1395
  call void @llvm.dbg.value(metadata i32 %8, metadata !1513, metadata !DIExpression()) #28, !dbg !1702
  call void @llvm.dbg.value(metadata i32 4095, metadata !1518, metadata !DIExpression()) #28, !dbg !1702
  %9 = tail call noalias i8* @xmalloc(i64 32) #28, !dbg !1704
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1519, metadata !DIExpression()) #28, !dbg !1702
  store i8 61, i8* %9, align 4, !dbg !1705, !tbaa !1524
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1706
  store i8 1, i8* %11, align 1, !dbg !1707, !tbaa !1528
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1708
  %13 = bitcast i8* %12 to i32*, !dbg !1708
  store i32 4095, i32* %13, align 4, !dbg !1709, !tbaa !1531
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1710
  %15 = bitcast i8* %14 to i32*, !dbg !1710
  store i32 %8, i32* %15, align 4, !dbg !1711, !tbaa !1534
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1712
  %17 = bitcast i8* %16 to i32*, !dbg !1712
  store i32 4095, i32* %17, align 4, !dbg !1713, !tbaa !1537
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1714
  store i8 0, i8* %18, align 1, !dbg !1715, !tbaa !1528
  br label %19, !dbg !1716

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #28, !dbg !1717
  ret %struct.mode_change* %20, !dbg !1717
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #14 !dbg !1718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i1 %1, metadata !1726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %2, metadata !1727, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1728, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32* %4, metadata !1729, metadata !DIExpression()), !dbg !1741
  %6 = and i32 %0, 4095, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %6, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 0, metadata !1731, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1728, metadata !DIExpression()), !dbg !1741
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1743
  %8 = load i8, i8* %7, align 1, !dbg !1743, !tbaa !1528
  %9 = icmp eq i8 %8, 0, !dbg !1744
  br i1 %9, label %81, label %10, !dbg !1745

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1745

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1728, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %17, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %18, metadata !1731, metadata !DIExpression()), !dbg !1741
  %19 = sext i8 %15 to i32, !dbg !1746
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1747
  %21 = load i32, i32* %20, align 4, !dbg !1747, !tbaa !1531
  call void @llvm.dbg.value(metadata i32 %21, metadata !1732, metadata !DIExpression()), !dbg !1748
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1749
  %23 = load i32, i32* %22, align 4, !dbg !1749, !tbaa !1537
  %24 = xor i32 %23, -1, !dbg !1750
  %25 = and i32 %11, %24, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %25, metadata !1736, metadata !DIExpression()), !dbg !1748
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1752
  %27 = load i32, i32* %26, align 4, !dbg !1752, !tbaa !1534
  call void @llvm.dbg.value(metadata i32 %27, metadata !1737, metadata !DIExpression()), !dbg !1748
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1753

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %29, metadata !1737, metadata !DIExpression()), !dbg !1748
  %30 = and i32 %29, 292, !dbg !1756
  %31 = icmp eq i32 %30, 0, !dbg !1757
  %32 = select i1 %31, i32 0, i32 292, !dbg !1757
  %33 = and i32 %29, 146, !dbg !1758
  %34 = icmp eq i32 %33, 0, !dbg !1759
  %35 = select i1 %34, i32 0, i32 146, !dbg !1759
  %36 = and i32 %29, 73, !dbg !1760
  %37 = icmp eq i32 %36, 0, !dbg !1761
  %38 = select i1 %37, i32 0, i32 73, !dbg !1761
  %39 = or i32 %35, %29, !dbg !1762
  %40 = or i32 %39, %32, !dbg !1763
  %41 = or i32 %40, %38, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %41, metadata !1737, metadata !DIExpression()), !dbg !1748
  br label %48, !dbg !1765

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1766
  %44 = or i32 %43, %12, !dbg !1768
  %45 = icmp eq i32 %44, 0, !dbg !1768
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1769
  br label %48, !dbg !1769

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1748
  call void @llvm.dbg.value(metadata i32 %49, metadata !1737, metadata !DIExpression()), !dbg !1748
  %50 = icmp eq i32 %21, 0, !dbg !1770
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !1770
  %52 = xor i32 %25, -1, !dbg !1771
  %53 = and i32 %51, %52, !dbg !1772
  %54 = and i32 %53, %49, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %54, metadata !1737, metadata !DIExpression()), !dbg !1748
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1774
  %56 = load i8, i8* %55, align 4, !dbg !1774, !tbaa !1524
  %57 = sext i8 %56 to i32, !dbg !1775
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1776

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1777
  %60 = select i1 %50, i32 0, i32 %59, !dbg !1777
  %61 = or i32 %60, %25, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %61, metadata !1738, metadata !DIExpression()), !dbg !1779
  %62 = and i32 %61, 4095, !dbg !1780
  %63 = xor i32 %62, 4095, !dbg !1780
  %64 = or i32 %63, %18, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %64, metadata !1731, metadata !DIExpression()), !dbg !1741
  %65 = and i32 %61, %17, !dbg !1782
  %66 = or i32 %54, %65, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %66, metadata !1730, metadata !DIExpression()), !dbg !1741
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %68, metadata !1731, metadata !DIExpression()), !dbg !1741
  %69 = or i32 %54, %17, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %69, metadata !1730, metadata !DIExpression()), !dbg !1741
  br label %74, !dbg !1786

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %71, metadata !1731, metadata !DIExpression()), !dbg !1741
  %72 = xor i32 %54, -1, !dbg !1788
  %73 = and i32 %17, %72, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %73, metadata !1730, metadata !DIExpression()), !dbg !1741
  br label %74, !dbg !1790

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1741
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1741
  call void @llvm.dbg.value(metadata i32 %76, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %75, metadata !1731, metadata !DIExpression()), !dbg !1741
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1728, metadata !DIExpression()), !dbg !1741
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1743
  %79 = load i8, i8* %78, align 1, !dbg !1743, !tbaa !1528
  %80 = icmp eq i8 %79, 0, !dbg !1744
  br i1 %80, label %81, label %14, !dbg !1745, !llvm.loop !1792

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1794
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1795
  %84 = icmp eq i32* %4, null, !dbg !1796
  br i1 %84, label %86, label %85, !dbg !1798

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1799, !tbaa !926
  br label %86, !dbg !1800

86:                                               ; preds = %85, %81
  ret i32 %83, !dbg !1801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1804, metadata !DIExpression()), !dbg !1807
  %2 = icmp eq i8* %0, null, !dbg !1808
  br i1 %2, label %3, label %6, !dbg !1810

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1811, !tbaa !708
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1813
  tail call void @abort() #30, !dbg !1814
  unreachable, !dbg !1814

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1815
  call void @llvm.dbg.value(metadata i8* %7, metadata !1805, metadata !DIExpression()), !dbg !1807
  %8 = icmp eq i8* %7, null, !dbg !1816
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1817
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1817
  call void @llvm.dbg.value(metadata i8* %10, metadata !1806, metadata !DIExpression()), !dbg !1807
  %11 = ptrtoint i8* %10 to i64, !dbg !1818
  %12 = ptrtoint i8* %0 to i64, !dbg !1818
  %13 = sub i64 %11, %12, !dbg !1818
  %14 = icmp sgt i64 %13, 6, !dbg !1820
  br i1 %14, label %15, label %24, !dbg !1821

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1822
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #29, !dbg !1823
  %18 = icmp eq i32 %17, 0, !dbg !1824
  br i1 %18, label %19, label %24, !dbg !1825

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1804, metadata !DIExpression()), !dbg !1807
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #29, !dbg !1826
  %21 = icmp eq i32 %20, 0, !dbg !1829
  br i1 %21, label %22, label %24, !dbg !1830

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %23, metadata !1804, metadata !DIExpression()), !dbg !1807
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1833, !tbaa !708
  br label %24, !dbg !1834

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1804, metadata !DIExpression()), !dbg !1807
  store i8* %25, i8** @program_name, align 8, !dbg !1835, !tbaa !708
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1836, !tbaa !708
  ret void, !dbg !1837
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1838 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1843, metadata !DIExpression()), !dbg !1846
  %2 = tail call i32* @__errno_location() #32, !dbg !1847
  %3 = load i32, i32* %2, align 4, !dbg !1847, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %3, metadata !1844, metadata !DIExpression()), !dbg !1846
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1848
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1848
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1848
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1849
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i32 %3, i32* %2, align 4, !dbg !1850, !tbaa !926
  ret %struct.quoting_options* %8, !dbg !1851
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1852 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1858, metadata !DIExpression()), !dbg !1859
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1860
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1860
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1861
  %5 = load i32, i32* %4, align 8, !dbg !1861, !tbaa !1862
  ret i32 %5, !dbg !1864
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1865 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1869, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 %1, metadata !1870, metadata !DIExpression()), !dbg !1871
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1872
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1872
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1873
  store i32 %1, i32* %5, align 8, !dbg !1874, !tbaa !1862
  ret void, !dbg !1875
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1876 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1880, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %1, metadata !1881, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %2, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %1, metadata !1883, metadata !DIExpression()), !dbg !1888
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1889
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1889
  %6 = lshr i8 %1, 5, !dbg !1890
  %7 = zext i8 %6 to i64, !dbg !1890
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1891
  call void @llvm.dbg.value(metadata i32* %8, metadata !1884, metadata !DIExpression()), !dbg !1888
  %9 = and i8 %1, 31, !dbg !1892
  %10 = zext i8 %9 to i32, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %10, metadata !1886, metadata !DIExpression()), !dbg !1888
  %11 = load i32, i32* %8, align 4, !dbg !1893, !tbaa !926
  %12 = lshr i32 %11, %10, !dbg !1894
  %13 = and i32 %12, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %13, metadata !1887, metadata !DIExpression()), !dbg !1888
  %14 = and i32 %2, 1, !dbg !1896
  %15 = xor i32 %13, %14, !dbg !1897
  %16 = shl i32 %15, %10, !dbg !1898
  %17 = xor i32 %16, %11, !dbg !1899
  store i32 %17, i32* %8, align 4, !dbg !1899, !tbaa !926
  ret i32 %13, !dbg !1900
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1901 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1905, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i32 %1, metadata !1906, metadata !DIExpression()), !dbg !1908
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1909
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1905, metadata !DIExpression()), !dbg !1908
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1912
  %6 = load i32, i32* %5, align 4, !dbg !1912, !tbaa !1913
  call void @llvm.dbg.value(metadata i32 %6, metadata !1907, metadata !DIExpression()), !dbg !1908
  store i32 %1, i32* %5, align 4, !dbg !1914, !tbaa !1913
  ret i32 %6, !dbg !1915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1916 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1920, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* %2, metadata !1922, metadata !DIExpression()), !dbg !1923
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1924
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1926
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1920, metadata !DIExpression()), !dbg !1923
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1927
  store i32 10, i32* %6, align 8, !dbg !1928, !tbaa !1862
  %7 = icmp ne i8* %1, null, !dbg !1929
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1931
  br i1 %9, label %11, label %10, !dbg !1931

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1932
  unreachable, !dbg !1932

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1933
  store i8* %1, i8** %12, align 8, !dbg !1934, !tbaa !1935
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1936
  store i8* %2, i8** %13, align 8, !dbg !1937, !tbaa !1938
  ret void, !dbg !1939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1944, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i64 %1, metadata !1945, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %2, metadata !1946, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i64 %3, metadata !1947, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1948, metadata !DIExpression()), !dbg !1952
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1953
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1949, metadata !DIExpression()), !dbg !1952
  %8 = tail call i32* @__errno_location() #32, !dbg !1954
  %9 = load i32, i32* %8, align 4, !dbg !1954, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %9, metadata !1950, metadata !DIExpression()), !dbg !1952
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1955
  %11 = load i32, i32* %10, align 8, !dbg !1955, !tbaa !1862
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1956
  %13 = load i32, i32* %12, align 4, !dbg !1956, !tbaa !1913
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1957
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1958
  %16 = load i8*, i8** %15, align 8, !dbg !1958, !tbaa !1935
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1959
  %18 = load i8*, i8** %17, align 8, !dbg !1959, !tbaa !1938
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %19, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i32 %9, i32* %8, align 4, !dbg !1961, !tbaa !926
  ret i64 %19, !dbg !1962
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1963 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.savewd*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1969, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %1, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %2, metadata !1971, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %3, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %4, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %5, metadata !1974, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32* %6, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %7, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %8, metadata !1977, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* null, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !2039
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !2040
  %14 = icmp eq i64 %13, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i1 %14, metadata !1984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2039
  %15 = lshr i32 %5, 1, !dbg !2042
  %16 = trunc i32 %15 to i8, !dbg !2042
  %17 = and i8 %16, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i8 %17, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2039
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2043

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2044
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2045
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2046
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2047
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2039
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2048
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2049
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2050
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %38, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %37, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %36, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %35, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %34, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %33, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %32, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %31, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %30, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %29, metadata !1977, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %28, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %27, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2033), !dbg !2051
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
  ], !dbg !2052

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 5, metadata !1973, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2053

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 5, metadata !1973, metadata !DIExpression()), !dbg !2039
  %42 = and i8 %35, 1, !dbg !2055
  %43 = icmp eq i8 %42, 0, !dbg !2055
  br i1 %43, label %44, label %92, !dbg !2053

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2057
  br i1 %45, label %92, label %46, !dbg !2060

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2057, !tbaa !1201
  br label %92, !dbg !2057

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !2061
  call void @llvm.dbg.value(metadata i8* %48, metadata !1976, metadata !DIExpression()), !dbg !2039
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %49, metadata !1977, metadata !DIExpression()), !dbg !2039
  br label %50, !dbg !2066

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1977, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %51, metadata !1976, metadata !DIExpression()), !dbg !2039
  %53 = and i8 %35, 1, !dbg !2067
  %54 = icmp eq i8 %53, 0, !dbg !2067
  br i1 %54, label %55, label %70, !dbg !2069

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2039
  %56 = load i8, i8* %51, align 1, !dbg !2070, !tbaa !1201
  %57 = icmp eq i8 %56, 0, !dbg !2073
  br i1 %57, label %70, label %58, !dbg !2073

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %61, metadata !1979, metadata !DIExpression()), !dbg !2039
  %62 = icmp ult i64 %61, %39, !dbg !2074
  br i1 %62, label %63, label %65, !dbg !2077

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2074
  store i8 %59, i8* %64, align 1, !dbg !2074, !tbaa !1201
  br label %65, !dbg !2074

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %66, metadata !1979, metadata !DIExpression()), !dbg !2039
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2078
  call void @llvm.dbg.value(metadata i8* %67, metadata !1981, metadata !DIExpression()), !dbg !2039
  %68 = load i8, i8* %67, align 1, !dbg !2070, !tbaa !1201
  %69 = icmp eq i8 %68, 0, !dbg !2073
  br i1 %69, label %70, label %58, !dbg !2073, !llvm.loop !2079

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2081
  call void @llvm.dbg.value(metadata i64 %71, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %52, metadata !1981, metadata !DIExpression()), !dbg !2039
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %72, metadata !1982, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2083

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1983, metadata !DIExpression()), !dbg !2039
  br label %74, !dbg !2084

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %75, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1985, metadata !DIExpression()), !dbg !2039
  br label %76, !dbg !2085

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2047
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %78, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %77, metadata !1983, metadata !DIExpression()), !dbg !2039
  %79 = and i8 %78, 1, !dbg !2086
  %80 = icmp eq i8 %79, 0, !dbg !2086
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2088
  br label %82, !dbg !2088

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2039
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2042
  call void @llvm.dbg.value(metadata i8 %84, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %83, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 2, metadata !1973, metadata !DIExpression()), !dbg !2039
  %85 = and i8 %84, 1, !dbg !2089
  %86 = icmp eq i8 %85, 0, !dbg !2089
  br i1 %86, label %87, label %92, !dbg !2091

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2092
  br i1 %88, label %92, label %89, !dbg !2095

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2092, !tbaa !1201
  br label %92, !dbg !2092

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2096

91:                                               ; preds = %26
  call void @abort() #30, !dbg !2097
  unreachable, !dbg !2097

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2081
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !2039
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2039
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2039
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %100, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %99, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %98, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %97, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %96, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %95, metadata !1977, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %94, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %93, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1978, metadata !DIExpression()), !dbg !2039
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
  br label %121, !dbg !2098

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2099
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2081
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2044
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2048
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2049
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2050
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %128, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %127, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %126, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %125, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %124, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %123, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %122, metadata !1978, metadata !DIExpression()), !dbg !2039
  %130 = icmp eq i64 %125, -1, !dbg !2100
  br i1 %130, label %131, label %135, !dbg !2101

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2102
  %133 = load i8, i8* %132, align 1, !dbg !2102, !tbaa !1201
  %134 = icmp eq i8 %133, 0, !dbg !2103
  br i1 %134, label %587, label %137, !dbg !2104

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2105
  br i1 %136, label %587, label %137, !dbg !2104

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2106
  br i1 %106, label %138, label %153, !dbg !2107

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2109
  %140 = and i1 %107, %130, !dbg !2110
  br i1 %140, label %141, label %143, !dbg !2110

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %142, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %143, !dbg !2112

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %144, metadata !1972, metadata !DIExpression()), !dbg !2039
  %145 = icmp ugt i64 %139, %144, !dbg !2113
  br i1 %145, label %153, label %146, !dbg !2114

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2115
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2116
  %149 = icmp ne i32 %148, 0, !dbg !2117
  %150 = or i1 %149, %109, !dbg !2118
  %151 = xor i1 %149, true, !dbg !2118
  %152 = zext i1 %151 to i8, !dbg !2118
  br i1 %150, label %153, label %646, !dbg !2118

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2106
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %156, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %154, metadata !1972, metadata !DIExpression()), !dbg !2039
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2119
  %158 = load i8, i8* %157, align 1, !dbg !2119, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 %158, metadata !1989, metadata !DIExpression()), !dbg !2106
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
  ], !dbg !2120

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2121

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2122

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1995, metadata !DIExpression()), !dbg !2106
  %162 = and i8 %126, 1, !dbg !2126
  %163 = icmp eq i8 %162, 0, !dbg !2126
  %164 = and i1 %110, %163, !dbg !2126
  br i1 %164, label %165, label %181, !dbg !2126

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2128
  br i1 %166, label %167, label %169, !dbg !2132

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2128
  store i8 39, i8* %168, align 1, !dbg !2128, !tbaa !1201
  br label %169, !dbg !2128

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %170, metadata !1979, metadata !DIExpression()), !dbg !2039
  %171 = icmp ult i64 %170, %129, !dbg !2133
  br i1 %171, label %172, label %174, !dbg !2136

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2133
  store i8 36, i8* %173, align 1, !dbg !2133, !tbaa !1201
  br label %174, !dbg !2133

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %175, metadata !1979, metadata !DIExpression()), !dbg !2039
  %176 = icmp ult i64 %175, %129, !dbg !2137
  br i1 %176, label %177, label %179, !dbg !2140

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2137
  store i8 39, i8* %178, align 1, !dbg !2137, !tbaa !1201
  br label %179, !dbg !2137

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %180, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %181, !dbg !2141

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2039
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %183, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %182, metadata !1979, metadata !DIExpression()), !dbg !2039
  %184 = icmp ult i64 %182, %129, !dbg !2142
  br i1 %184, label %185, label %187, !dbg !2145

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2142
  store i8 92, i8* %186, align 1, !dbg !2142, !tbaa !1201
  br label %187, !dbg !2142

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %188, metadata !1979, metadata !DIExpression()), !dbg !2039
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2146
  br i1 %191, label %192, label %473, !dbg !2146

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2148
  %194 = load i8, i8* %193, align 1, !dbg !2148, !tbaa !1201
  %195 = add i8 %194, -48, !dbg !2149
  %196 = icmp ult i8 %195, 10, !dbg !2149
  br i1 %196, label %197, label %473, !dbg !2149

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2150
  br i1 %198, label %199, label %201, !dbg !2154

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2150
  store i8 48, i8* %200, align 1, !dbg !2150, !tbaa !1201
  br label %201, !dbg !2150

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %202, metadata !1979, metadata !DIExpression()), !dbg !2039
  %203 = icmp ult i64 %202, %129, !dbg !2155
  br i1 %203, label %204, label %206, !dbg !2158

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2155
  store i8 48, i8* %205, align 1, !dbg !2155, !tbaa !1201
  br label %206, !dbg !2155

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %207, metadata !1979, metadata !DIExpression()), !dbg !2039
  br label %473, !dbg !2159

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2160

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2161

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2162

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2164
  br i1 %214, label %215, label %473, !dbg !2164

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2166
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2167
  %218 = load i8, i8* %217, align 1, !dbg !2167, !tbaa !1201
  %219 = icmp eq i8 %218, 63, !dbg !2168
  br i1 %219, label %220, label %473, !dbg !2169

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2170
  %222 = load i8, i8* %221, align 1, !dbg !2170, !tbaa !1201
  %223 = sext i8 %222 to i32, !dbg !2170
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
  ], !dbg !2171

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2172

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 undef, metadata !1978, metadata !DIExpression()), !dbg !2039
  %226 = icmp ult i64 %123, %129, !dbg !2174
  br i1 %226, label %227, label %229, !dbg !2177

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2174
  store i8 63, i8* %228, align 1, !dbg !2174, !tbaa !1201
  br label %229, !dbg !2174

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %230, metadata !1979, metadata !DIExpression()), !dbg !2039
  %231 = icmp ult i64 %230, %129, !dbg !2178
  br i1 %231, label %232, label %234, !dbg !2181

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2178
  store i8 34, i8* %233, align 1, !dbg !2178, !tbaa !1201
  br label %234, !dbg !2178

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %235, metadata !1979, metadata !DIExpression()), !dbg !2039
  %236 = icmp ult i64 %235, %129, !dbg !2182
  br i1 %236, label %237, label %239, !dbg !2185

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2182
  store i8 34, i8* %238, align 1, !dbg !2182, !tbaa !1201
  br label %239, !dbg !2182

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %240, metadata !1979, metadata !DIExpression()), !dbg !2039
  %241 = icmp ult i64 %240, %129, !dbg !2186
  br i1 %241, label %242, label %244, !dbg !2189

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2186
  store i8 63, i8* %243, align 1, !dbg !2186, !tbaa !1201
  br label %244, !dbg !2186

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %245, metadata !1979, metadata !DIExpression()), !dbg !2039
  br label %473, !dbg !2190

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1993, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2191

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1993, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2192

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1993, metadata !DIExpression()), !dbg !2106
  br label %254, !dbg !2193

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1993, metadata !DIExpression()), !dbg !2106
  br label %254, !dbg !2194

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1993, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2195

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1993, metadata !DIExpression()), !dbg !2106
  br i1 %110, label %252, label %253, !dbg !2196

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2197

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2200

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8 %255, metadata !1993, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2034), !dbg !2203
  br i1 %111, label %256, label %631, !dbg !2204

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8 %257, metadata !1993, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2035), !dbg !2206
  br i1 %102, label %495, label %473, !dbg !2207

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2208

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2209, !tbaa !1201
  %261 = icmp eq i8 %260, 0, !dbg !2211
  br i1 %261, label %262, label %473, !dbg !2212

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2213
  br i1 %263, label %264, label %473, !dbg !2215

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %265, !dbg !2216

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %266, metadata !1996, metadata !DIExpression()), !dbg !2106
  br i1 %111, label %473, label %631, !dbg !2217

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1996, metadata !DIExpression()), !dbg !2106
  br i1 %110, label %268, label %473, !dbg !2219

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2220

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2223
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2225
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2225
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %274, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %273, metadata !1980, metadata !DIExpression()), !dbg !2039
  %275 = icmp ult i64 %123, %274, !dbg !2226
  br i1 %275, label %276, label %278, !dbg !2229

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2226
  store i8 39, i8* %277, align 1, !dbg !2226, !tbaa !1201
  br label %278, !dbg !2226

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %279, metadata !1979, metadata !DIExpression()), !dbg !2039
  %280 = icmp ult i64 %279, %274, !dbg !2230
  br i1 %280, label %281, label %283, !dbg !2233

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2230
  store i8 92, i8* %282, align 1, !dbg !2230, !tbaa !1201
  br label %283, !dbg !2230

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %284, metadata !1979, metadata !DIExpression()), !dbg !2039
  %285 = icmp ult i64 %284, %274, !dbg !2234
  br i1 %285, label %286, label %288, !dbg !2237

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2234
  store i8 39, i8* %287, align 1, !dbg !2234, !tbaa !1201
  br label %288, !dbg !2234

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %289, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %473, !dbg !2238

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2239

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1997, metadata !DIExpression()), !dbg !2240
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2241
  %293 = load i16*, i16** %292, align 8, !dbg !2241, !tbaa !708
  %294 = zext i8 %158 to i64, !dbg !2241
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2241
  %296 = load i16, i16* %295, align 2, !dbg !2241, !tbaa !2243
  %297 = lshr i16 %296, 14, !dbg !2244
  %298 = trunc i16 %297 to i8, !dbg !2244
  %299 = and i8 %298, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i8 %354, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %355, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %306, metadata !1972, metadata !DIExpression()), !dbg !2039
  %300 = icmp eq i8 %299, 0, !dbg !2245
  call void @llvm.dbg.value(metadata i1 %357, metadata !1996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2106
  br label %359, !dbg !2246

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2247
  call void @llvm.dbg.declare(metadata %struct.savewd* %11, metadata !2001, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %23, metadata !2249, metadata !DIExpression()) #28, !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()) #28, !dbg !2257
  call void @llvm.dbg.value(metadata i64 8, metadata !2256, metadata !DIExpression()) #28, !dbg !2257
  store i64 0, i64* %10, align 8, !dbg !2259
  call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 1, metadata !2000, metadata !DIExpression()), !dbg !2240
  %302 = icmp eq i64 %154, -1, !dbg !2260
  br i1 %302, label %303, label %305, !dbg !2262

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %304, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %305, !dbg !2264

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2106
  call void @llvm.dbg.value(metadata i64 %306, metadata !1972, metadata !DIExpression()), !dbg !2039
  br label %307, !dbg !2265

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2266
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2267
  call void @llvm.dbg.value(metadata i8 %309, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %308, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2268
  %310 = add i64 %308, %122, !dbg !2269
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2270
  %312 = sub i64 %306, %310, !dbg !2271
  call void @llvm.dbg.value(metadata i32* %12, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2272
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.savewd* nonnull %11) #28, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %313, metadata !2022, metadata !DIExpression()), !dbg !2272
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2274

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1997, metadata !DIExpression()), !dbg !2240
  %315 = icmp ugt i64 %306, %310, !dbg !2275
  br i1 %315, label %316, label %341, !dbg !2277

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2278
  br label %318, !dbg !2278

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1997, metadata !DIExpression()), !dbg !2240
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2279
  %322 = load i8, i8* %321, align 1, !dbg !2279, !tbaa !1201
  %323 = icmp eq i8 %322, 0, !dbg !2277
  br i1 %323, label %341, label %324, !dbg !2278

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %325, metadata !1997, metadata !DIExpression()), !dbg !2240
  %326 = add i64 %325, %122, !dbg !2281
  %327 = icmp ult i64 %326, %306, !dbg !2275
  br i1 %327, label %318, label %341, !dbg !2277, !llvm.loop !2282

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2283
  call void @llvm.dbg.value(metadata i64 1, metadata !2023, metadata !DIExpression()), !dbg !2284
  br i1 %330, label %331, label %344, !dbg !2283

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2023, metadata !DIExpression()), !dbg !2284
  %333 = add i64 %332, %310, !dbg !2285
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2288
  %335 = load i8, i8* %334, align 1, !dbg !2288, !tbaa !1201
  %336 = sext i8 %335 to i32, !dbg !2288
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2289

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %338, metadata !2023, metadata !DIExpression()), !dbg !2284
  %339 = icmp eq i64 %338, %313, !dbg !2291
  br i1 %339, label %344, label %331, !dbg !2292, !llvm.loop !2293

340:                                              ; preds = %307
  br label %341, !dbg !2295

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 undef, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2295
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2296, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %345, metadata !2019, metadata !DIExpression()), !dbg !2272
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2298
  %347 = icmp eq i32 %346, 0, !dbg !2298
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %348, metadata !2000, metadata !DIExpression()), !dbg !2240
  %349 = add i64 %313, %308, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %349, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2295
  %350 = call i32 @mbsinit(%struct.savewd* nonnull %11) #29, !dbg !2301
  %351 = icmp eq i32 %350, 0, !dbg !2302
  br i1 %351, label %307, label %353, !dbg !2303, !llvm.loop !2304

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 undef, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2306
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2306
  call void @llvm.dbg.value(metadata i8 %354, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %355, metadata !1997, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %306, metadata !1972, metadata !DIExpression()), !dbg !2039
  %356 = and i8 %354, 1, !dbg !2245
  %357 = icmp eq i8 %356, 0, !dbg !2245
  call void @llvm.dbg.value(metadata i1 %357, metadata !1996, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2106
  %358 = icmp ugt i64 %355, 1, !dbg !2307
  br i1 %358, label %367, label %359, !dbg !2246

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2308
  br i1 %364, label %367, label %365, !dbg !2308

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8 %472, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %371, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1978, metadata !DIExpression()), !dbg !2039
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %372, metadata !2030, metadata !DIExpression()), !dbg !2310
  %373 = and i1 %102, %368
  br label %374, !dbg !2311

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2099
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2039
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2048
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2106
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2106
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2312
  call void @llvm.dbg.value(metadata i8 %380, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %379, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %378, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %377, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %376, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1978, metadata !DIExpression()), !dbg !2039
  br i1 %373, label %381, label %427, !dbg !2313

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2318

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1995, metadata !DIExpression()), !dbg !2106
  %383 = and i8 %377, 1, !dbg !2321
  %384 = icmp eq i8 %383, 0, !dbg !2321
  %385 = and i1 %110, %384, !dbg !2321
  br i1 %385, label %386, label %402, !dbg !2321

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2323
  br i1 %387, label %388, label %390, !dbg !2327

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2323
  store i8 39, i8* %389, align 1, !dbg !2323, !tbaa !1201
  br label %390, !dbg !2323

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %391, metadata !1979, metadata !DIExpression()), !dbg !2039
  %392 = icmp ult i64 %391, %129, !dbg !2328
  br i1 %392, label %393, label %395, !dbg !2331

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2328
  store i8 36, i8* %394, align 1, !dbg !2328, !tbaa !1201
  br label %395, !dbg !2328

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %396, metadata !1979, metadata !DIExpression()), !dbg !2039
  %397 = icmp ult i64 %396, %129, !dbg !2332
  br i1 %397, label %398, label %400, !dbg !2335

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2332
  store i8 39, i8* %399, align 1, !dbg !2332, !tbaa !1201
  br label %400, !dbg !2332

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %401, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %402, !dbg !2336

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2039
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %404, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %403, metadata !1979, metadata !DIExpression()), !dbg !2039
  %405 = icmp ult i64 %403, %129, !dbg !2337
  br i1 %405, label %406, label %408, !dbg !2340

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2337
  store i8 92, i8* %407, align 1, !dbg !2337, !tbaa !1201
  br label %408, !dbg !2337

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %409, metadata !1979, metadata !DIExpression()), !dbg !2039
  %410 = icmp ult i64 %409, %129, !dbg !2341
  br i1 %410, label %411, label %415, !dbg !2344

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2341
  %413 = or i8 %412, 48, !dbg !2341
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2341
  store i8 %413, i8* %414, align 1, !dbg !2341, !tbaa !1201
  br label %415, !dbg !2341

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %416, metadata !1979, metadata !DIExpression()), !dbg !2039
  %417 = icmp ult i64 %416, %129, !dbg !2345
  br i1 %417, label %418, label %423, !dbg !2348

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2345
  %420 = and i8 %419, 7, !dbg !2345
  %421 = or i8 %420, 48, !dbg !2345
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2345
  store i8 %421, i8* %422, align 1, !dbg !2345, !tbaa !1201
  br label %423, !dbg !2345

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %424, metadata !1979, metadata !DIExpression()), !dbg !2039
  %425 = and i8 %378, 7, !dbg !2349
  %426 = or i8 %425, 48, !dbg !2350
  call void @llvm.dbg.value(metadata i8 %426, metadata !1989, metadata !DIExpression()), !dbg !2106
  br label %436, !dbg !2351

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2352
  %429 = icmp eq i8 %428, 0, !dbg !2352
  br i1 %429, label %436, label %430, !dbg !2354

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2355
  br i1 %431, label %432, label %434, !dbg !2359

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2355
  store i8 92, i8* %433, align 1, !dbg !2355, !tbaa !1201
  br label %434, !dbg !2355

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %435, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2106
  br label %436, !dbg !2360

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2039
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2048
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2106
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2106
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1979, metadata !DIExpression()), !dbg !2039
  %442 = add i64 %375, 1, !dbg !2361
  %443 = icmp ugt i64 %372, %442, !dbg !2363
  br i1 %443, label %444, label %471, !dbg !2364

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2365
  %446 = icmp ne i8 %445, 0, !dbg !2365
  %447 = and i8 %441, 1, !dbg !2365
  %448 = icmp eq i8 %447, 0, !dbg !2365
  %449 = and i1 %446, %448, !dbg !2365
  br i1 %449, label %450, label %461, !dbg !2365

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2368
  br i1 %451, label %452, label %454, !dbg !2372

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2368
  store i8 39, i8* %453, align 1, !dbg !2368, !tbaa !1201
  br label %454, !dbg !2368

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %455, metadata !1979, metadata !DIExpression()), !dbg !2039
  %456 = icmp ult i64 %455, %129, !dbg !2373
  br i1 %456, label %457, label %459, !dbg !2376

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2373
  store i8 39, i8* %458, align 1, !dbg !2373, !tbaa !1201
  br label %459, !dbg !2373

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %460, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %461, !dbg !2377

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2378
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %463, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %462, metadata !1979, metadata !DIExpression()), !dbg !2039
  %464 = icmp ult i64 %462, %129, !dbg !2379
  br i1 %464, label %465, label %467, !dbg !2382

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2379
  store i8 %439, i8* %466, align 1, !dbg !2379, !tbaa !1201
  br label %467, !dbg !2379

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %468, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %442, metadata !1978, metadata !DIExpression()), !dbg !2039
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2383
  %470 = load i8, i8* %469, align 1, !dbg !2383, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 %470, metadata !1989, metadata !DIExpression()), !dbg !2106
  br label %374, !dbg !2384, !llvm.loop !2385

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8 %472, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %371, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1978, metadata !DIExpression()), !dbg !2039
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2099
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2039
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2044
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2388
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2039
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2039
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2106
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2106
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2106
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %482, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %481, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %156, metadata !1994, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %480, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %479, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %478, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %477, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %476, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %475, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %474, metadata !1978, metadata !DIExpression()), !dbg !2039
  br i1 %116, label %494, label %484, !dbg !2389

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2391
  %486 = zext i8 %485 to i64, !dbg !2391
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2392
  %488 = load i32, i32* %487, align 4, !dbg !2392, !tbaa !926
  %489 = and i8 %480, 31, !dbg !2393
  %490 = zext i8 %489 to i32, !dbg !2393
  %491 = shl nuw i32 1, %490, !dbg !2394
  %492 = and i32 %488, %491, !dbg !2394
  %493 = icmp eq i32 %492, 0, !dbg !2394
  br i1 %493, label %494, label %495, !dbg !2395

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2396

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2397
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2039
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2044
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2388
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2048
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2049
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2106
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2106
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %503, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %502, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %501, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %500, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %499, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %498, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %497, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %496, metadata !1978, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2036), !dbg !2398
  br i1 %109, label %505, label %635, !dbg !2399

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1995, metadata !DIExpression()), !dbg !2106
  %506 = and i8 %500, 1, !dbg !2401
  %507 = icmp eq i8 %506, 0, !dbg !2401
  %508 = and i1 %110, %507, !dbg !2401
  br i1 %508, label %509, label %525, !dbg !2401

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2403
  br i1 %510, label %511, label %513, !dbg !2407

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2403
  store i8 39, i8* %512, align 1, !dbg !2403, !tbaa !1201
  br label %513, !dbg !2403

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %514, metadata !1979, metadata !DIExpression()), !dbg !2039
  %515 = icmp ult i64 %514, %504, !dbg !2408
  br i1 %515, label %516, label %518, !dbg !2411

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2408
  store i8 36, i8* %517, align 1, !dbg !2408, !tbaa !1201
  br label %518, !dbg !2408

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %519, metadata !1979, metadata !DIExpression()), !dbg !2039
  %520 = icmp ult i64 %519, %504, !dbg !2412
  br i1 %520, label %521, label %523, !dbg !2415

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2412
  store i8 39, i8* %522, align 1, !dbg !2412, !tbaa !1201
  br label %523, !dbg !2412

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %524, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %525, !dbg !2416

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2106
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %527, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %526, metadata !1979, metadata !DIExpression()), !dbg !2039
  %528 = icmp ult i64 %526, %504, !dbg !2417
  br i1 %528, label %529, label %531, !dbg !2420

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2417
  store i8 92, i8* %530, align 1, !dbg !2417, !tbaa !1201
  br label %531, !dbg !2417

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %543, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %542, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %541, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %540, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %539, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %538, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %537, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %536, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %535, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %534, metadata !1978, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2037), !dbg !2421
  br label %560, !dbg !2422

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2397
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2039
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2044
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2388
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2048
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2049
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2425
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2106
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2106
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %542, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %541, metadata !1995, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %540, metadata !1989, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %539, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %538, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %537, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %536, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %535, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %534, metadata !1978, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2037), !dbg !2421
  %544 = and i8 %538, 1, !dbg !2422
  %545 = icmp ne i8 %544, 0, !dbg !2422
  %546 = and i8 %541, 1, !dbg !2422
  %547 = icmp eq i8 %546, 0, !dbg !2422
  %548 = and i1 %545, %547, !dbg !2422
  br i1 %548, label %549, label %560, !dbg !2422

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2426
  br i1 %550, label %551, label %553, !dbg !2430

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2426
  store i8 39, i8* %552, align 1, !dbg !2426, !tbaa !1201
  br label %553, !dbg !2426

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %554, metadata !1979, metadata !DIExpression()), !dbg !2039
  %555 = icmp ult i64 %554, %543, !dbg !2431
  br i1 %555, label %556, label %558, !dbg !2434

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2431
  store i8 39, i8* %557, align 1, !dbg !2431, !tbaa !1201
  br label %558, !dbg !2431

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %559, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %560, !dbg !2435

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2106
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %569, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %568, metadata !1979, metadata !DIExpression()), !dbg !2039
  %570 = icmp ult i64 %568, %561, !dbg !2436
  br i1 %570, label %571, label %573, !dbg !2439

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2436
  store i8 %563, i8* %572, align 1, !dbg !2436, !tbaa !1201
  br label %573, !dbg !2436

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %574, metadata !1979, metadata !DIExpression()), !dbg !2039
  %575 = icmp eq i8 %562, 0, !dbg !2440
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2442
  call void @llvm.dbg.value(metadata i8 %576, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %577, !dbg !2443

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2397
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2039
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2044
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2388
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2048
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2039
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2050
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %584, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %583, metadata !1987, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %582, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %581, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %580, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %579, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %578, metadata !1978, metadata !DIExpression()), !dbg !2039
  %586 = add i64 %578, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %586, metadata !1978, metadata !DIExpression()), !dbg !2039
  br label %121, !dbg !2445, !llvm.loop !2446

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2448
  %590 = and i1 %110, %589, !dbg !2450
  %591 = xor i1 %590, true, !dbg !2450
  %592 = or i1 %109, %591, !dbg !2450
  br i1 %592, label %593, label %635, !dbg !2450

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2451
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2451
  br i1 %597, label %598, label %607, !dbg !2451

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2453
  %600 = icmp eq i8 %599, 0, !dbg !2453
  br i1 %600, label %603, label %601, !dbg !2456

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2457
  br label %652, !dbg !2458

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2459
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2461
  br i1 %606, label %26, label %607, !dbg !2461

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2462
  %610 = and i1 %609, %608, !dbg !2464
  br i1 %610, label %611, label %626, !dbg !2464

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %123, metadata !1979, metadata !DIExpression()), !dbg !2039
  %612 = load i8, i8* %97, align 1, !dbg !2465, !tbaa !1201
  %613 = icmp eq i8 %612, 0, !dbg !2468
  br i1 %613, label %626, label %614, !dbg !2468

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %617, metadata !1979, metadata !DIExpression()), !dbg !2039
  %618 = icmp ult i64 %617, %129, !dbg !2469
  br i1 %618, label %619, label %621, !dbg !2472

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2469
  store i8 %615, i8* %620, align 1, !dbg !2469, !tbaa !1201
  br label %621, !dbg !2469

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %622, metadata !1979, metadata !DIExpression()), !dbg !2039
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2473
  call void @llvm.dbg.value(metadata i8* %623, metadata !1981, metadata !DIExpression()), !dbg !2039
  %624 = load i8, i8* %623, align 1, !dbg !2465, !tbaa !1201
  %625 = icmp eq i8 %624, 0, !dbg !2468
  br i1 %625, label %626, label %614, !dbg !2468, !llvm.loop !2474

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2081
  call void @llvm.dbg.value(metadata i64 %627, metadata !1979, metadata !DIExpression()), !dbg !2039
  %628 = icmp ult i64 %627, %129, !dbg !2476
  br i1 %628, label %629, label %652, !dbg !2478

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2479
  store i8 0, i8* %630, align 1, !dbg !2480, !tbaa !1201
  br label %652, !dbg !2479

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %637, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2038), !dbg !2481
  %633 = icmp eq i8 %101, 0, !dbg !2482
  %634 = select i1 %633, i32 2, i32 4, !dbg !2482
  br label %642, !dbg !2482

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1970, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %637, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2038), !dbg !2481
  %639 = icmp eq i32 %93, 2, !dbg !2484
  %640 = icmp eq i8 %636, 0, !dbg !2482
  %641 = select i1 %640, i32 2, i32 4, !dbg !2482
  br i1 %639, label %642, label %646, !dbg !2482

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2482

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1973, metadata !DIExpression()), !dbg !2039
  %650 = and i32 %5, -3, !dbg !2485
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2486
  br label %652, !dbg !2487

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2488
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()), !dbg !2497
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %3, metadata !2495, metadata !DIExpression()), !dbg !2497
  %4 = icmp eq i8* %3, %0, !dbg !2499
  br i1 %4, label %5, label %72, !dbg !2501

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %6, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %6, metadata !2503, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* undef, metadata !2509, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 85, metadata !2510, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 84, metadata !2511, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 70, metadata !2512, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 45, metadata !2513, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 56, metadata !2514, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2519
  %7 = load i8, i8* %6, align 1, !dbg !2522, !tbaa !1201
  %8 = and i8 %7, -33, !dbg !2522
  %9 = sext i8 %8 to i32, !dbg !2522
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2522

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2524, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* undef, metadata !2529, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 84, metadata !2530, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 70, metadata !2531, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 45, metadata !2532, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 56, metadata !2533, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2538
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2542
  %12 = load i8, i8* %11, align 1, !dbg !2542, !tbaa !1201
  %13 = and i8 %12, -33, !dbg !2542
  %14 = icmp eq i8 %13, 84, !dbg !2542
  br i1 %14, label %15, label %69, !dbg !2542

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* undef, metadata !2549, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 70, metadata !2550, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 45, metadata !2551, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 56, metadata !2552, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2557
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2561
  %17 = load i8, i8* %16, align 1, !dbg !2561, !tbaa !1201
  %18 = and i8 %17, -33, !dbg !2561
  %19 = icmp eq i8 %18, 70, !dbg !2561
  br i1 %19, label %20, label %69, !dbg !2561

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2563, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2568, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 45, metadata !2569, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 56, metadata !2570, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2575
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2579
  %22 = load i8, i8* %21, align 1, !dbg !2579, !tbaa !1201
  %23 = icmp eq i8 %22, 45, !dbg !2579
  br i1 %23, label %24, label %69, !dbg !2581

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2582, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* undef, metadata !2587, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 56, metadata !2588, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2592, metadata !DIExpression()), !dbg !2593
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2597
  %26 = load i8, i8* %25, align 1, !dbg !2597, !tbaa !1201
  %27 = icmp eq i8 %26, 56, !dbg !2597
  br i1 %27, label %28, label %69, !dbg !2599

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2600, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* undef, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2609, metadata !DIExpression()), !dbg !2610
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2614
  %30 = load i8, i8* %29, align 1, !dbg !2614, !tbaa !1201
  %31 = icmp eq i8 %30, 0, !dbg !2614
  br i1 %31, label %32, label %69, !dbg !2616

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2617, !tbaa !1201
  %34 = icmp eq i8 %33, 96, !dbg !2618
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2617
  br label %72, !dbg !2619

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2524, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* undef, metadata !2529, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 66, metadata !2530, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 49, metadata !2531, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 56, metadata !2532, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 48, metadata !2533, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 51, metadata !2534, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 48, metadata !2535, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2620
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2624
  %38 = load i8, i8* %37, align 1, !dbg !2624, !tbaa !1201
  %39 = and i8 %38, -33, !dbg !2624
  %40 = icmp eq i8 %39, 66, !dbg !2624
  br i1 %40, label %41, label %69, !dbg !2624

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* undef, metadata !2549, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 49, metadata !2550, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 56, metadata !2551, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 48, metadata !2552, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 51, metadata !2553, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 48, metadata !2554, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2625
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2627
  %43 = load i8, i8* %42, align 1, !dbg !2627, !tbaa !1201
  %44 = icmp eq i8 %43, 49, !dbg !2627
  br i1 %44, label %45, label %69, !dbg !2628

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2563, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* undef, metadata !2568, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 56, metadata !2569, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 48, metadata !2570, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 51, metadata !2571, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 48, metadata !2572, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2629
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2631
  %47 = load i8, i8* %46, align 1, !dbg !2631, !tbaa !1201
  %48 = icmp eq i8 %47, 56, !dbg !2631
  br i1 %48, label %49, label %69, !dbg !2632

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2582, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* undef, metadata !2587, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 48, metadata !2588, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 51, metadata !2589, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 48, metadata !2590, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 0, metadata !2592, metadata !DIExpression()), !dbg !2633
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2635
  %51 = load i8, i8* %50, align 1, !dbg !2635, !tbaa !1201
  %52 = icmp eq i8 %51, 48, !dbg !2635
  br i1 %52, label %53, label %69, !dbg !2636

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2600, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* undef, metadata !2605, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 51, metadata !2606, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 48, metadata !2607, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2609, metadata !DIExpression()), !dbg !2637
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2639
  %55 = load i8, i8* %54, align 1, !dbg !2639, !tbaa !1201
  %56 = icmp eq i8 %55, 51, !dbg !2639
  br i1 %56, label %57, label %69, !dbg !2640

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2641, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* undef, metadata !2646, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 48, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2650
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2654
  %59 = load i8, i8* %58, align 1, !dbg !2654, !tbaa !1201
  %60 = icmp eq i8 %59, 48, !dbg !2654
  br i1 %60, label %61, label %69, !dbg !2656

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2657, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* undef, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2665
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2669
  %63 = load i8, i8* %62, align 1, !dbg !2669, !tbaa !1201
  %64 = icmp eq i8 %63, 0, !dbg !2669
  br i1 %64, label %65, label %69, !dbg !2671

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2672, !tbaa !1201
  %67 = icmp eq i8 %66, 96, !dbg !2673
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2672
  br label %72, !dbg !2674

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2675
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2676
  br label %72, !dbg !2677

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2497
  ret i8* %73, !dbg !2678
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2679 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2683 i32 @mbsinit(%struct.savewd*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %1, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()) #28, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()) #28, !dbg !2710
  call void @llvm.dbg.value(metadata i64* null, metadata !2703, metadata !DIExpression()) #28, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2704, metadata !DIExpression()) #28, !dbg !2710
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2712
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2705, metadata !DIExpression()) #28, !dbg !2710
  %6 = tail call i32* @__errno_location() #32, !dbg !2713
  %7 = load i32, i32* %6, align 4, !dbg !2713, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %7, metadata !2706, metadata !DIExpression()) #28, !dbg !2710
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2714
  %9 = load i32, i32* %8, align 4, !dbg !2714, !tbaa !1913
  %10 = or i32 %9, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %10, metadata !2707, metadata !DIExpression()) #28, !dbg !2710
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2716
  %12 = load i32, i32* %11, align 8, !dbg !2716, !tbaa !1862
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2717
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2718
  %15 = load i8*, i8** %14, align 8, !dbg !2718, !tbaa !1935
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2719
  %17 = load i8*, i8** %16, align 8, !dbg !2719, !tbaa !1938
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2720
  %19 = add i64 %18, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %19, metadata !2708, metadata !DIExpression()) #28, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %19, metadata !2722, metadata !DIExpression()) #28, !dbg !2727
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %20, metadata !2709, metadata !DIExpression()) #28, !dbg !2710
  %21 = load i32, i32* %11, align 8, !dbg !2730, !tbaa !1862
  %22 = load i8*, i8** %14, align 8, !dbg !2731, !tbaa !1935
  %23 = load i8*, i8** %16, align 8, !dbg !2732, !tbaa !1938
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2733
  store i32 %7, i32* %6, align 4, !dbg !2734, !tbaa !926
  ret i8* %20, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64* %2, metadata !2703, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2704, metadata !DIExpression()), !dbg !2736
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2737
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2705, metadata !DIExpression()), !dbg !2736
  %7 = tail call i32* @__errno_location() #32, !dbg !2738
  %8 = load i32, i32* %7, align 4, !dbg !2738, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %8, metadata !2706, metadata !DIExpression()), !dbg !2736
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2739
  %10 = load i32, i32* %9, align 4, !dbg !2739, !tbaa !1913
  %11 = icmp eq i64* %2, null, !dbg !2740
  %12 = zext i1 %11 to i32, !dbg !2740
  %13 = or i32 %10, %12, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %13, metadata !2707, metadata !DIExpression()), !dbg !2736
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2742
  %15 = load i32, i32* %14, align 8, !dbg !2742, !tbaa !1862
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2743
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2744
  %18 = load i8*, i8** %17, align 8, !dbg !2744, !tbaa !1935
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2745
  %20 = load i8*, i8** %19, align 8, !dbg !2745, !tbaa !1938
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2746
  %22 = add i64 %21, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %22, metadata !2708, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %22, metadata !2722, metadata !DIExpression()) #28, !dbg !2748
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %23, metadata !2709, metadata !DIExpression()), !dbg !2736
  %24 = load i32, i32* %14, align 8, !dbg !2751, !tbaa !1862
  %25 = load i8*, i8** %17, align 8, !dbg !2752, !tbaa !1935
  %26 = load i8*, i8** %19, align 8, !dbg !2753, !tbaa !1938
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2754
  store i32 %8, i32* %7, align 4, !dbg !2755, !tbaa !926
  br i1 %11, label %29, label %28, !dbg !2756

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2757, !tbaa !2759
  br label %29, !dbg !2760

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2762 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2766, !tbaa !708
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 1, metadata !2765, metadata !DIExpression()), !dbg !2767
  %2 = load i32, i32* @nslots, align 4, !dbg !2768, !tbaa !926
  %3 = icmp sgt i32 %2, 1, !dbg !2771
  br i1 %3, label %4, label %12, !dbg !2772

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2771
  br label %6, !dbg !2772

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2765, metadata !DIExpression()), !dbg !2767
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2773
  %9 = load i8*, i8** %8, align 8, !dbg !2773, !tbaa !2774
  tail call void @free(i8* %9) #28, !dbg !2776
  %10 = add nuw nsw i64 %7, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %10, metadata !2765, metadata !DIExpression()), !dbg !2767
  %11 = icmp eq i64 %10, %5, !dbg !2771
  br i1 %11, label %12, label %6, !dbg !2772, !llvm.loop !2778

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2780
  %14 = load i8*, i8** %13, align 8, !dbg !2780, !tbaa !2774
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2782
  br i1 %15, label %17, label %16, !dbg !2783

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2784
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2786, !tbaa !2787
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2788, !tbaa !2774
  br label %17, !dbg !2789

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2790
  br i1 %18, label %21, label %19, !dbg !2792

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2793
  tail call void @free(i8* %20) #28, !dbg !2795
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2796, !tbaa !708
  br label %21, !dbg !2797

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2798, !tbaa !926
  ret void, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()), !dbg !2804
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2805
  ret i8* %3, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2812, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %2, metadata !2813, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2814, metadata !DIExpression()), !dbg !2826
  %5 = tail call i32* @__errno_location() #32, !dbg !2827
  %6 = load i32, i32* %5, align 4, !dbg !2827, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %6, metadata !2815, metadata !DIExpression()), !dbg !2826
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2828, !tbaa !708
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2816, metadata !DIExpression()), !dbg !2826
  %8 = icmp slt i32 %0, 0, !dbg !2829
  br i1 %8, label %9, label %10, !dbg !2831

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2832
  unreachable, !dbg !2832

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2833, !tbaa !926
  %12 = icmp sgt i32 %11, %0, !dbg !2834
  br i1 %12, label %34, label %13, !dbg !2835

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2836
  call void @llvm.dbg.value(metadata i1 %14, metadata !2817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2837
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2820, metadata !DIExpression()), !dbg !2837
  %15 = icmp eq i32 %0, 2147483647, !dbg !2838
  br i1 %15, label %16, label %17, !dbg !2840

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2841
  unreachable, !dbg !2841

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2842
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2842
  %20 = add nuw nsw i32 %0, 1, !dbg !2843
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2844
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2845
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2845
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2816, metadata !DIExpression()), !dbg !2826
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2846, !tbaa !708
  br i1 %14, label %25, label %26, !dbg !2847

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2848, !tbaa.struct !2850
  br label %26, !dbg !2851

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2852, !tbaa !926
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2853
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2854
  %31 = sub nsw i32 %20, %27, !dbg !2855
  %32 = sext i32 %31 to i64, !dbg !2856
  %33 = shl nsw i64 %32, 4, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %30, metadata !2249, metadata !DIExpression()) #28, !dbg !2858
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()) #28, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %33, metadata !2256, metadata !DIExpression()) #28, !dbg !2858
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2860
  store i32 %20, i32* @nslots, align 4, !dbg !2861, !tbaa !926
  br label %34, !dbg !2862

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2826
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2816, metadata !DIExpression()), !dbg !2826
  %36 = zext i32 %0 to i64, !dbg !2863
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2864
  %38 = load i64, i64* %37, align 8, !dbg !2864, !tbaa !2787
  call void @llvm.dbg.value(metadata i64 %38, metadata !2821, metadata !DIExpression()), !dbg !2865
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2866
  %40 = load i8*, i8** %39, align 8, !dbg !2866, !tbaa !2774
  call void @llvm.dbg.value(metadata i8* %40, metadata !2823, metadata !DIExpression()), !dbg !2865
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2867
  %42 = load i32, i32* %41, align 4, !dbg !2867, !tbaa !1913
  %43 = or i32 %42, 1, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %43, metadata !2824, metadata !DIExpression()), !dbg !2865
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2869
  %45 = load i32, i32* %44, align 8, !dbg !2869, !tbaa !1862
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2870
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2871
  %48 = load i8*, i8** %47, align 8, !dbg !2871, !tbaa !1935
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2872
  %50 = load i8*, i8** %49, align 8, !dbg !2872, !tbaa !1938
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %51, metadata !2825, metadata !DIExpression()), !dbg !2865
  %52 = icmp ugt i64 %38, %51, !dbg !2874
  br i1 %52, label %63, label %53, !dbg !2876

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %54, metadata !2821, metadata !DIExpression()), !dbg !2865
  store i64 %54, i64* %37, align 8, !dbg !2879, !tbaa !2787
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2880
  br i1 %55, label %57, label %56, !dbg !2882

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2883
  br label %57, !dbg !2883

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2722, metadata !DIExpression()) #28, !dbg !2884
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %58, metadata !2823, metadata !DIExpression()), !dbg !2865
  store i8* %58, i8** %39, align 8, !dbg !2887, !tbaa !2774
  %59 = load i32, i32* %44, align 8, !dbg !2888, !tbaa !1862
  %60 = load i8*, i8** %47, align 8, !dbg !2889, !tbaa !1935
  %61 = load i8*, i8** %49, align 8, !dbg !2890, !tbaa !1938
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2891
  br label %63, !dbg !2892

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2865
  call void @llvm.dbg.value(metadata i8* %64, metadata !2823, metadata !DIExpression()), !dbg !2865
  store i32 %6, i32* %5, align 4, !dbg !2893, !tbaa !926
  ret i8* %64, !dbg !2894
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %2, metadata !2901, metadata !DIExpression()), !dbg !2902
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2903
  ret i8* %4, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 0, metadata !2802, metadata !DIExpression()) #28, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %0, metadata !2803, metadata !DIExpression()) #28, !dbg !2909
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2911
  ret i8* %2, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2899, metadata !DIExpression()) #28, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()) #28, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()) #28, !dbg !2920
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2922
  ret i8* %3, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2924 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %1, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %2, metadata !2930, metadata !DIExpression()), !dbg !2932
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2933
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2931, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %1, metadata !2939, metadata !DIExpression()) #28, !dbg !2945
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2944, metadata !DIExpression()) #28, !dbg !2947
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2947, !alias.scope !2935
  %6 = icmp eq i32 %1, 10, !dbg !2948
  br i1 %6, label %7, label %8, !dbg !2950

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2951, !noalias !2935
  unreachable, !dbg !2951

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2952
  store i32 %1, i32* %9, align 8, !dbg !2953, !tbaa !1862, !alias.scope !2935
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2954
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2955
  ret i8* %10, !dbg !2956
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2957 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %1, metadata !2962, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %2, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %3, metadata !2964, metadata !DIExpression()), !dbg !2966
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2967
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2965, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %1, metadata !2939, metadata !DIExpression()) #28, !dbg !2973
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2944, metadata !DIExpression()) #28, !dbg !2975
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !2975, !alias.scope !2969
  %7 = icmp eq i32 %1, 10, !dbg !2976
  br i1 %7, label %8, label %9, !dbg !2977

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2978, !noalias !2969
  unreachable, !dbg !2978

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2979
  store i32 %1, i32* %10, align 8, !dbg !2980, !tbaa !1862, !alias.scope !2969
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2981
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2982
  ret i8* %11, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2984 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()) #28, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()) #28, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2930, metadata !DIExpression()) #28, !dbg !2991
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2993
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2931, metadata !DIExpression()) #28, !dbg !2994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2995) #28, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()) #28, !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2944, metadata !DIExpression()) #28, !dbg !3001
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !3001, !alias.scope !2995
  %5 = icmp eq i32 %0, 10, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3003

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !3004, !noalias !2995
  unreachable, !dbg !3004

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3005
  store i32 %0, i32* %8, align 8, !dbg !3006, !tbaa !1862, !alias.scope !2995
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3008
  ret i8* %9, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3010 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %1, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %2, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !2961, metadata !DIExpression()) #28, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()) #28, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2963, metadata !DIExpression()) #28, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %2, metadata !2964, metadata !DIExpression()) #28, !dbg !3018
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3020
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2965, metadata !DIExpression()) #28, !dbg !3021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022) #28, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()) #28, !dbg !3026
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2944, metadata !DIExpression()) #28, !dbg !3028
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3028, !alias.scope !3022
  %6 = icmp eq i32 %0, 10, !dbg !3029
  br i1 %6, label %7, label %8, !dbg !3030

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3031, !noalias !3022
  unreachable, !dbg !3031

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3032
  store i32 %0, i32* %9, align 8, !dbg !3033, !tbaa !1862, !alias.scope !3022
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3035
  ret i8* %10, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3037 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %2, metadata !3043, metadata !DIExpression()), !dbg !3045
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3048, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1880, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %2, metadata !1881, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %2, metadata !1883, metadata !DIExpression()), !dbg !3050
  %6 = lshr i8 %2, 5, !dbg !3052
  %7 = zext i8 %6 to i64, !dbg !3052
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3053
  call void @llvm.dbg.value(metadata i32* %8, metadata !1884, metadata !DIExpression()), !dbg !3050
  %9 = and i8 %2, 31, !dbg !3054
  %10 = zext i8 %9 to i32, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %10, metadata !1886, metadata !DIExpression()), !dbg !3050
  %11 = load i32, i32* %8, align 4, !dbg !3055, !tbaa !926
  %12 = lshr i32 %11, %10, !dbg !3056
  %13 = and i32 %12, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i32 %13, metadata !1887, metadata !DIExpression()), !dbg !3050
  %14 = xor i32 %13, 1, !dbg !3058
  %15 = shl i32 %14, %10, !dbg !3059
  %16 = xor i32 %15, %11, !dbg !3060
  store i32 %16, i32* %8, align 4, !dbg !3060, !tbaa !926
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3062
  ret i8* %17, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3064 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8 %1, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()) #28, !dbg !3071
  call void @llvm.dbg.value(metadata i64 -1, metadata !3042, metadata !DIExpression()) #28, !dbg !3071
  call void @llvm.dbg.value(metadata i8 %1, metadata !3043, metadata !DIExpression()) #28, !dbg !3071
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3073
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3044, metadata !DIExpression()) #28, !dbg !3074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3075, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1880, metadata !DIExpression()) #28, !dbg !3076
  call void @llvm.dbg.value(metadata i8 %1, metadata !1881, metadata !DIExpression()) #28, !dbg !3076
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()) #28, !dbg !3076
  call void @llvm.dbg.value(metadata i8 %1, metadata !1883, metadata !DIExpression()) #28, !dbg !3076
  %5 = lshr i8 %1, 5, !dbg !3078
  %6 = zext i8 %5 to i64, !dbg !3078
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3079
  call void @llvm.dbg.value(metadata i32* %7, metadata !1884, metadata !DIExpression()) #28, !dbg !3076
  %8 = and i8 %1, 31, !dbg !3080
  %9 = zext i8 %8 to i32, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %9, metadata !1886, metadata !DIExpression()) #28, !dbg !3076
  %10 = load i32, i32* %7, align 4, !dbg !3081, !tbaa !926
  %11 = lshr i32 %10, %9, !dbg !3082
  %12 = and i32 %11, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %12, metadata !1887, metadata !DIExpression()) #28, !dbg !3076
  %13 = xor i32 %12, 1, !dbg !3084
  %14 = shl i32 %13, %9, !dbg !3085
  %15 = xor i32 %14, %10, !dbg !3086
  store i32 %15, i32* %7, align 4, !dbg !3086, !tbaa !926
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3088
  ret i8* %16, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3090 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #28, !dbg !3094
  call void @llvm.dbg.value(metadata i8 58, metadata !3069, metadata !DIExpression()) #28, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()) #28, !dbg !3096
  call void @llvm.dbg.value(metadata i64 -1, metadata !3042, metadata !DIExpression()) #28, !dbg !3096
  call void @llvm.dbg.value(metadata i8 58, metadata !3043, metadata !DIExpression()) #28, !dbg !3096
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3098
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3044, metadata !DIExpression()) #28, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3100, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1880, metadata !DIExpression()) #28, !dbg !3101
  call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()) #28, !dbg !3101
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()) #28, !dbg !3101
  call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()) #28, !dbg !3101
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3103
  call void @llvm.dbg.value(metadata i32* %4, metadata !1884, metadata !DIExpression()) #28, !dbg !3101
  call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()) #28, !dbg !3101
  %5 = load i32, i32* %4, align 4, !dbg !3104, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %5, metadata !1887, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3101
  %6 = or i32 %5, 67108864, !dbg !3105
  store i32 %6, i32* %4, align 4, !dbg !3105, !tbaa !926
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !3106
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3107
  ret i8* %7, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3109 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()) #28, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()) #28, !dbg !3114
  call void @llvm.dbg.value(metadata i8 58, metadata !3043, metadata !DIExpression()) #28, !dbg !3114
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3116
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3044, metadata !DIExpression()) #28, !dbg !3117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3118, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1880, metadata !DIExpression()) #28, !dbg !3119
  call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()) #28, !dbg !3119
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()) #28, !dbg !3119
  call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()) #28, !dbg !3119
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3121
  call void @llvm.dbg.value(metadata i32* %5, metadata !1884, metadata !DIExpression()) #28, !dbg !3119
  call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()) #28, !dbg !3119
  %6 = load i32, i32* %5, align 4, !dbg !3122, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %6, metadata !1887, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3119
  %7 = or i32 %6, 67108864, !dbg !3123
  store i32 %7, i32* %5, align 4, !dbg !3123, !tbaa !926
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3124
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3125
  ret i8* %8, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3127 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2944, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %0, metadata !3129, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %2, metadata !3131, metadata !DIExpression()), !dbg !3135
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3132, metadata !DIExpression()), !dbg !3137
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3138
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %1, metadata !2939, metadata !DIExpression()) #28, !dbg !3142
  call void @llvm.dbg.value(metadata i32 0, metadata !2944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3142
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3133, !alias.scope !3139
  %8 = icmp eq i32 %1, 10, !dbg !3143
  br i1 %8, label %9, label %10, !dbg !3144

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3145, !noalias !3139
  unreachable, !dbg !3145

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2944, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3142
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3138
  store i32 %1, i32* %11, align 8, !dbg !3138, !tbaa.struct !3049
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3138
  %13 = bitcast i32* %12 to i8*, !dbg !3138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3138, !tbaa.struct !3146
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1880, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8 58, metadata !1881, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 1, metadata !1882, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8 58, metadata !1883, metadata !DIExpression()), !dbg !3147
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3149
  call void @llvm.dbg.value(metadata i32* %14, metadata !1884, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 26, metadata !1886, metadata !DIExpression()), !dbg !3147
  %15 = load i32, i32* %14, align 4, !dbg !3150, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %15, metadata !1887, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3147
  %16 = or i32 %15, 67108864, !dbg !3151
  store i32 %16, i32* %14, align 4, !dbg !3151, !tbaa !926
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3153
  ret i8* %17, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3155 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %3, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i32 %0, metadata !3164, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %3, metadata !3171, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i64 -1, metadata !3172, metadata !DIExpression()) #28, !dbg !3174
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3176
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3173, metadata !DIExpression()) #28, !dbg !3177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3178, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1920, metadata !DIExpression()) #28, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()) #28, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %2, metadata !1922, metadata !DIExpression()) #28, !dbg !3179
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1920, metadata !DIExpression()) #28, !dbg !3179
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3181
  store i32 10, i32* %7, align 8, !dbg !3182, !tbaa !1862
  %8 = icmp ne i8* %1, null, !dbg !3183
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3184
  br i1 %10, label %12, label %11, !dbg !3184

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3185
  unreachable, !dbg !3185

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3186
  store i8* %1, i8** %13, align 8, !dbg !3187, !tbaa !1935
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3188
  store i8* %2, i8** %14, align 8, !dbg !3189, !tbaa !1938
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3191
  ret i8* %15, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3165 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3164, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %3, metadata !3171, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %4, metadata !3172, metadata !DIExpression()), !dbg !3193
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3194
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3173, metadata !DIExpression()), !dbg !3195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3196, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1920, metadata !DIExpression()) #28, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()) #28, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %2, metadata !1922, metadata !DIExpression()) #28, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1920, metadata !DIExpression()) #28, !dbg !3197
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3199
  store i32 10, i32* %8, align 8, !dbg !3200, !tbaa !1862
  %9 = icmp ne i8* %1, null, !dbg !3201
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3202
  br i1 %11, label %13, label %12, !dbg !3202

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3203
  unreachable, !dbg !3203

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3204
  store i8* %1, i8** %14, align 8, !dbg !3205, !tbaa !1935
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3206
  store i8* %2, i8** %15, align 8, !dbg !3207, !tbaa !1938
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3209
  ret i8* %16, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3211 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %2, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3159, metadata !DIExpression()) #28, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #28, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3161, metadata !DIExpression()) #28, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %2, metadata !3162, metadata !DIExpression()) #28, !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()) #28, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()) #28, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()) #28, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #28, !dbg !3221
  call void @llvm.dbg.value(metadata i64 -1, metadata !3172, metadata !DIExpression()) #28, !dbg !3221
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3223
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3173, metadata !DIExpression()) #28, !dbg !3224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3225, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1920, metadata !DIExpression()) #28, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %0, metadata !1921, metadata !DIExpression()) #28, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !1922, metadata !DIExpression()) #28, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1920, metadata !DIExpression()) #28, !dbg !3226
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3228
  store i32 10, i32* %6, align 8, !dbg !3229, !tbaa !1862
  %7 = icmp ne i8* %0, null, !dbg !3230
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3231
  br i1 %9, label %11, label %10, !dbg !3231

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3232
  unreachable, !dbg !3232

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3233
  store i8* %0, i8** %12, align 8, !dbg !3234, !tbaa !1935
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3235
  store i8* %1, i8** %13, align 8, !dbg !3236, !tbaa !1938
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3238
  ret i8* %14, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3240 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %1, metadata !3245, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %2, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %3, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()) #28, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()) #28, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()) #28, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()) #28, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %3, metadata !3172, metadata !DIExpression()) #28, !dbg !3249
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3173, metadata !DIExpression()) #28, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3253, !tbaa.struct !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1920, metadata !DIExpression()) #28, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %0, metadata !1921, metadata !DIExpression()) #28, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !1922, metadata !DIExpression()) #28, !dbg !3254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1920, metadata !DIExpression()) #28, !dbg !3254
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3256
  store i32 10, i32* %7, align 8, !dbg !3257, !tbaa !1862
  %8 = icmp ne i8* %0, null, !dbg !3258
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3259
  br i1 %10, label %12, label %11, !dbg !3259

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3260
  unreachable, !dbg !3260

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3261
  store i8* %0, i8** %13, align 8, !dbg !3262, !tbaa !1935
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3263
  store i8* %1, i8** %14, align 8, !dbg !3264, !tbaa !1938
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3266
  ret i8* %15, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %1, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %2, metadata !3274, metadata !DIExpression()), !dbg !3275
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3276
  ret i8* %4, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3282, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %1, metadata !3283, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()) #28, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()) #28, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %1, metadata !3274, metadata !DIExpression()) #28, !dbg !3285
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3287
  ret i8* %3, !dbg !3288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()) #28, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !3273, metadata !DIExpression()) #28, !dbg !3296
  call void @llvm.dbg.value(metadata i64 -1, metadata !3274, metadata !DIExpression()) #28, !dbg !3296
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3298
  ret i8* %3, !dbg !3299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 0, metadata !3293, metadata !DIExpression()) #28, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %0, metadata !3294, metadata !DIExpression()) #28, !dbg !3306
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()) #28, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()) #28, !dbg !3308
  call void @llvm.dbg.value(metadata i64 -1, metadata !3274, metadata !DIExpression()) #28, !dbg !3308
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3310
  ret i8* %2, !dbg !3311
}

; Function Attrs: inlinehint nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @savewd_init(%struct.savewd* nocapture %0) local_unnamed_addr #22 !dbg !3312 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3317, metadata !DIExpression()), !dbg !3318
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3319
  store i32 0, i32* %2, align 4, !dbg !3320, !tbaa !1341
  ret void, !dbg !3321
}

; Function Attrs: inlinehint norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @savewd_errno(%struct.savewd* nocapture readonly %0) local_unnamed_addr #23 !dbg !3322 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3328, metadata !DIExpression()), !dbg !3329
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3330
  %3 = load i32, i32* %2, align 4, !dbg !3330, !tbaa !1341
  %4 = icmp eq i32 %3, 4, !dbg !3331
  br i1 %4, label %5, label %8, !dbg !3332

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3333
  %7 = load i32, i32* %6, align 4, !dbg !3333, !tbaa !1201
  br label %8, !dbg !3332

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3332
  ret i32 %9, !dbg !3334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_chdir(%struct.savewd* nocapture %0, i8* %1, i32 %2, i32* %3) local_unnamed_addr #8 !dbg !3335 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3339, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !3340, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %2, metadata !3341, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32* %3, metadata !3342, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 -1, metadata !3343, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3348
  %5 = icmp eq i32* %3, null, !dbg !3349
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3351
  br i1 %8, label %27, label %9, !dbg !3351

9:                                                ; preds = %4
  %10 = shl i32 %2, 17, !dbg !3352
  %11 = and i32 %10, 131072, !dbg !3352
  %12 = or i32 %11, 67840, !dbg !3354
  %13 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %12) #28, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %13, metadata !3343, metadata !DIExpression()), !dbg !3348
  br i1 %5, label %18, label %14, !dbg !3356

14:                                               ; preds = %9
  store i32 %13, i32* %3, align 4, !dbg !3357, !tbaa !926
  %15 = tail call i32* @__errno_location() #32, !dbg !3360
  %16 = load i32, i32* %15, align 4, !dbg !3360, !tbaa !926
  %17 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3361
  store i32 %16, i32* %17, align 4, !dbg !3362, !tbaa !926
  br label %18, !dbg !3363

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3364
  br i1 %19, label %20, label %24, !dbg !3366

20:                                               ; preds = %18
  %21 = tail call i32* @__errno_location() #32, !dbg !3367
  %22 = load i32, i32* %21, align 4, !dbg !3367, !tbaa !926
  %23 = icmp eq i32 %22, 13, !dbg !3368
  call void @llvm.dbg.value(metadata i32 undef, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %13, metadata !3343, metadata !DIExpression()), !dbg !3348
  br i1 %23, label %27, label %86, !dbg !3369

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 undef, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %13, metadata !3343, metadata !DIExpression()), !dbg !3348
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75, !dbg !3371

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3372, metadata !DIExpression()) #28, !dbg !3380
  %29 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3384
  %30 = load i32, i32* %29, align 4, !dbg !3384, !tbaa !1341
  switch i32 %30, label %56 [
    i32 0, label %31
    i32 3, label %43
    i32 1, label %57
    i32 2, label %57
    i32 4, label %57
    i32 5, label %57
  ], !dbg !3385

31:                                               ; preds = %27
  %32 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.92, i64 0, i64 0), i32 0) #28, !dbg !3386
  call void @llvm.dbg.value(metadata i32 %32, metadata !3377, metadata !DIExpression()) #28, !dbg !3387
  %33 = icmp sgt i32 %32, -1, !dbg !3388
  br i1 %33, label %34, label %36, !dbg !3390

34:                                               ; preds = %31
  store i32 1, i32* %29, align 4, !dbg !3391, !tbaa !1341
  %35 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3393
  store i32 %32, i32* %35, align 4, !dbg !3394, !tbaa !1201
  br label %57

36:                                               ; preds = %31
  %37 = tail call i32* @__errno_location() #32, !dbg !3395
  %38 = load i32, i32* %37, align 4, !dbg !3395, !tbaa !926
  switch i32 %38, label %39 [
    i32 13, label %41
    i32 116, label %41
  ], !dbg !3397

39:                                               ; preds = %36
  store i32 4, i32* %29, align 4, !dbg !3398, !tbaa !1341
  %40 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3400
  store i32 %38, i32* %40, align 4, !dbg !3401, !tbaa !1201
  br label %57

41:                                               ; preds = %36, %36
  store i32 3, i32* %29, align 4, !dbg !3402, !tbaa !1341
  %42 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3403
  store i32 -1, i32* %42, align 4, !dbg !3404, !tbaa !1201
  br label %47, !dbg !3405

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %45 = load i32, i32* %44, align 4, !dbg !3406, !tbaa !1201
  %46 = icmp slt i32 %45, 0, !dbg !3385
  br i1 %46, label %47, label %57, !dbg !3405

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3406
  %49 = tail call i32 @fork() #28, !dbg !3408
  store i32 %49, i32* %48, align 4, !dbg !3410, !tbaa !1201
  %50 = icmp eq i32 %49, 0, !dbg !3411
  br i1 %50, label %57, label %51, !dbg !3413

51:                                               ; preds = %47
  %52 = icmp sgt i32 %49, 0, !dbg !3414
  br i1 %52, label %75, label %53, !dbg !3417

53:                                               ; preds = %51
  store i32 4, i32* %29, align 4, !dbg !3418, !tbaa !1341
  %54 = tail call i32* @__errno_location() #32, !dbg !3419
  %55 = load i32, i32* %54, align 4, !dbg !3419, !tbaa !926
  store i32 %55, i32* %48, align 4, !dbg !3420, !tbaa !1201
  br label %57, !dbg !3421

56:                                               ; preds = %27
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #30, !dbg !3422
  unreachable, !dbg !3422

57:                                               ; preds = %34, %39, %27, %27, %27, %27, %43, %53, %47
  %58 = icmp slt i32 %28, 0, !dbg !3425
  br i1 %58, label %59, label %61, !dbg !3427

59:                                               ; preds = %57
  %60 = tail call i32 @chdir(i8* %1) #28, !dbg !3428
  br label %63, !dbg !3427

61:                                               ; preds = %57
  %62 = tail call i32 @fchdir(i32 %28) #28, !dbg !3429
  br label %63, !dbg !3427

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ], !dbg !3427
  call void @llvm.dbg.value(metadata i32 %64, metadata !3344, metadata !DIExpression()), !dbg !3348
  %65 = icmp eq i32 %64, 0, !dbg !3430
  br i1 %65, label %66, label %75, !dbg !3432

66:                                               ; preds = %63
  %67 = load i32, i32* %29, align 4, !dbg !3433, !tbaa !1341
  switch i32 %67, label %74 [
    i32 1, label %68
    i32 4, label %75
    i32 2, label %75
    i32 5, label %75
    i32 3, label %69
  ], !dbg !3434

68:                                               ; preds = %66
  store i32 2, i32* %29, align 4, !dbg !3435, !tbaa !1341
  br label %75, !dbg !3437

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3438
  %71 = load i32, i32* %70, align 4, !dbg !3438, !tbaa !1201
  %72 = icmp eq i32 %71, 0, !dbg !3438
  br i1 %72, label %75, label %73, !dbg !3441

73:                                               ; preds = %69
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #30, !dbg !3438
  unreachable, !dbg !3438

74:                                               ; preds = %66
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #30, !dbg !3442
  unreachable, !dbg !3442

75:                                               ; preds = %51, %24, %68, %66, %66, %66, %69, %63
  %76 = phi i32 [ %28, %69 ], [ %28, %66 ], [ %28, %66 ], [ %28, %66 ], [ %28, %68 ], [ %28, %63 ], [ %13, %24 ], [ %28, %51 ]
  %77 = phi i32 [ 0, %69 ], [ 0, %66 ], [ 0, %66 ], [ 0, %66 ], [ 0, %68 ], [ %64, %63 ], [ 0, %24 ], [ -2, %51 ], !dbg !3348
  %78 = phi i32* [ %3, %69 ], [ %3, %66 ], [ %3, %66 ], [ %3, %66 ], [ %3, %68 ], [ %3, %63 ], [ %3, %24 ], [ null, %51 ]
  call void @llvm.dbg.value(metadata i32* %78, metadata !3342, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %77, metadata !3344, metadata !DIExpression()), !dbg !3348
  %79 = icmp slt i32 %76, 0, !dbg !3445
  %80 = icmp ne i32* %78, null
  %81 = or i1 %79, %80, !dbg !3446
  br i1 %81, label %86, label %82, !dbg !3446

82:                                               ; preds = %75
  %83 = tail call i32* @__errno_location() #32, !dbg !3447
  %84 = load i32, i32* %83, align 4, !dbg !3447, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %84, metadata !3345, metadata !DIExpression()), !dbg !3448
  %85 = tail call i32 @close(i32 %76) #28, !dbg !3449
  store i32 %84, i32* %83, align 4, !dbg !3450, !tbaa !926
  br label %86, !dbg !3451

86:                                               ; preds = %20, %82, %75
  %87 = phi i32 [ %77, %82 ], [ %77, %75 ], [ -1, %20 ]
  ret i32 %87, !dbg !3452
}

; Function Attrs: nofree
declare !dbg !3453 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare !dbg !3457 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3461 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3464 i32 @fchdir(i32) local_unnamed_addr #2

declare !dbg !3467 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_restore(%struct.savewd* nocapture %0, i32 %1) local_unnamed_addr #8 !dbg !3468 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3472, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %1, metadata !3473, metadata !DIExpression()), !dbg !3483
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3484
  %5 = load i32, i32* %4, align 4, !dbg !3484, !tbaa !1341
  switch i32 %5, label %52 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !3485

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !dbg !3486, !tbaa !1201
  %9 = tail call i32* @__errno_location() #32, !dbg !3487
  br label %21, !dbg !3485

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3488
  %12 = load i32, i32* %11, align 4, !dbg !3488, !tbaa !1201
  %13 = tail call i32 @fchdir(i32 %12) #28, !dbg !3489
  %14 = icmp eq i32 %13, 0, !dbg !3490
  br i1 %14, label %15, label %16, !dbg !3491

15:                                               ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !3492, !tbaa !1341
  br label %53, !dbg !3494

16:                                               ; preds = %10
  %17 = tail call i32* @__errno_location() #32, !dbg !3495
  %18 = load i32, i32* %17, align 4, !dbg !3495, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %18, metadata !3474, metadata !DIExpression()), !dbg !3496
  %19 = load i32, i32* %11, align 4, !dbg !3497, !tbaa !1201
  %20 = tail call i32 @close(i32 %19) #28, !dbg !3498
  store i32 4, i32* %4, align 4, !dbg !3499, !tbaa !1341
  store i32 %18, i32* %11, align 4, !dbg !3500, !tbaa !1201
  br label %21, !dbg !3501

21:                                               ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !3487
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !3486
  store i32 %23, i32* %22, align 4, !dbg !3502, !tbaa !926
  br label %53, !dbg !3503

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3504
  %26 = load i32, i32* %25, align 4, !dbg !3504, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %26, metadata !3478, metadata !DIExpression()), !dbg !3505
  %27 = icmp eq i32 %26, 0, !dbg !3506
  br i1 %27, label %28, label %29, !dbg !3508

28:                                               ; preds = %24
  tail call void @_exit(i32 %1) #30, !dbg !3509
  unreachable, !dbg !3509

29:                                               ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !3510
  br i1 %30, label %31, label %53, !dbg !3511

31:                                               ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !3512
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #28, !dbg !3512
  br label %33, !dbg !3513

33:                                               ; preds = %36, %31
  call void @llvm.dbg.value(metadata i32* %3, metadata !3480, metadata !DIExpression(DW_OP_deref)), !dbg !3514
  %34 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #28, !dbg !3515
  %35 = icmp slt i32 %34, 0, !dbg !3516
  br i1 %35, label %36, label %41, !dbg !3513

36:                                               ; preds = %33
  %37 = tail call i32* @__errno_location() #32, !dbg !3517
  %38 = load i32, i32* %37, align 4, !dbg !3517, !tbaa !926
  %39 = icmp eq i32 %38, 4, !dbg !3517
  br i1 %39, label %33, label %40, !dbg !3520, !llvm.loop !3521

40:                                               ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.96, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #30, !dbg !3517
  unreachable, !dbg !3517

41:                                               ; preds = %33
  store i32 -1, i32* %25, align 4, !dbg !3523, !tbaa !1201
  %42 = load i32, i32* %3, align 4, !dbg !3524, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %42, metadata !3480, metadata !DIExpression()), !dbg !3514
  %43 = and i32 %42, 127, !dbg !3524
  %44 = icmp eq i32 %43, 0, !dbg !3524
  br i1 %44, label %48, label %45, !dbg !3526

45:                                               ; preds = %41
  %46 = call i32 @raise(i32 %43) #28, !dbg !3527
  %47 = load i32, i32* %3, align 4, !dbg !3528, !tbaa !926
  br label %48, !dbg !3527

48:                                               ; preds = %41, %45
  %49 = phi i32 [ %42, %41 ], [ %47, %45 ], !dbg !3528
  call void @llvm.dbg.value(metadata i32 %49, metadata !3480, metadata !DIExpression()), !dbg !3514
  %50 = lshr i32 %49, 8, !dbg !3528
  %51 = and i32 %50, 255, !dbg !3528
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #28, !dbg !3529
  br label %53

52:                                               ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #30, !dbg !3530
  unreachable, !dbg !3530

53:                                               ; preds = %15, %2, %2, %29, %48, %21
  %54 = phi i32 [ %51, %48 ], [ -1, %21 ], [ 0, %29 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], !dbg !3483
  ret i32 %54, !dbg !3533
}

declare !dbg !3534 i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3538 i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @savewd_finish(%struct.savewd* nocapture %0) local_unnamed_addr #8 !dbg !3540 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3542, metadata !DIExpression()), !dbg !3543
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3544
  %3 = load i32, i32* %2, align 4, !dbg !3544, !tbaa !1341
  switch i32 %3, label %13 [
    i32 0, label %14
    i32 4, label %14
    i32 1, label %4
    i32 2, label %4
    i32 3, label %8
  ], !dbg !3545

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3546
  %6 = load i32, i32* %5, align 4, !dbg !3546, !tbaa !1201
  %7 = tail call i32 @close(i32 %6) #28, !dbg !3548
  br label %14, !dbg !3549

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3550
  %10 = load i32, i32* %9, align 4, !dbg !3550, !tbaa !1201
  %11 = icmp slt i32 %10, 0, !dbg !3550
  br i1 %11, label %14, label %12, !dbg !3553

12:                                               ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.97, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #30, !dbg !3550
  unreachable, !dbg !3550

13:                                               ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #30, !dbg !3554
  unreachable, !dbg !3554

14:                                               ; preds = %8, %1, %1, %4
  store i32 5, i32* %2, align 4, !dbg !3557, !tbaa !1341
  ret void, !dbg !3558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @savewd_process_files(i32 %0, i8** nocapture readonly %1, i32 (i8*, %struct.savewd*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !3559 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8** %1, metadata !3567, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, metadata !3568, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %3, metadata !3569, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3587
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #28, !dbg !3588
  call void @llvm.dbg.declare(metadata %struct.savewd* %5, metadata !3573, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3317, metadata !DIExpression()), !dbg !3590
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !3592
  store i32 0, i32* %7, align 4, !dbg !3593, !tbaa !1341
  call void @llvm.dbg.value(metadata i32 %0, metadata !3571, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3587
  %8 = sext i32 %0 to i64, !dbg !3594
  br label %9, !dbg !3594

9:                                                ; preds = %13, %4
  %10 = phi i64 [ %11, %13 ], [ %8, %4 ]
  %11 = add nsw i64 %10, -1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %11, metadata !3571, metadata !DIExpression()), !dbg !3587
  %12 = icmp sgt i64 %10, 0, !dbg !3597
  br i1 %12, label %13, label %69, !dbg !3599

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !3600
  %15 = load i8*, i8** %14, align 8, !dbg !3600, !tbaa !708
  %16 = load i8, i8* %15, align 1, !dbg !3600, !tbaa !1201
  %17 = icmp eq i8 %16, 47, !dbg !3600
  br i1 %17, label %9, label %18, !dbg !3602, !llvm.loop !3603

18:                                               ; preds = %13
  %19 = trunc i64 %10 to i32, !dbg !3599
  %20 = trunc i64 %11 to i32, !dbg !3599
  call void @llvm.dbg.value(metadata i32 0, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3587
  %21 = icmp sgt i32 %19, 1, !dbg !3605
  br i1 %21, label %22, label %69, !dbg !3606

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0
  %24 = icmp sgt i32 %20, 1, !dbg !3606
  %25 = select i1 %24, i32 %20, i32 1, !dbg !3606
  %26 = zext i32 %25 to i64, !dbg !3605
  br label %27, !dbg !3606

27:                                               ; preds = %56, %22
  %28 = phi i32 [ undef, %22 ], [ %57, %56 ]
  %29 = phi i32 [ 0, %22 ], [ %55, %56 ], !dbg !3607
  %30 = phi i64 [ 0, %22 ], [ %43, %56 ]
  %31 = phi i32 [ 0, %22 ], [ %53, %56 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %31, metadata !3572, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3612, metadata !DIExpression()), !dbg !3614
  %32 = icmp eq i32 %29, 3, !dbg !3615
  %33 = icmp sgt i32 %28, 0
  %34 = and i1 %32, %33, !dbg !3616
  br i1 %34, label %41, label %35, !dbg !3616

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !3617
  %37 = load i8*, i8** %36, align 8, !dbg !3617, !tbaa !708
  %38 = call i32 %2(i8* %37, %struct.savewd* nonnull %5, i8* %3) #28, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %38, metadata !3574, metadata !DIExpression()), !dbg !3619
  %39 = icmp slt i32 %31, %38, !dbg !3620
  %40 = select i1 %39, i32 %38, i32 %31, !dbg !3622
  call void @llvm.dbg.value(metadata i32 %40, metadata !3572, metadata !DIExpression()), !dbg !3587
  br label %41, !dbg !3623

41:                                               ; preds = %27, %35
  %42 = phi i32 [ %40, %35 ], [ %31, %27 ], !dbg !3587
  call void @llvm.dbg.value(metadata i32 %42, metadata !3572, metadata !DIExpression()), !dbg !3587
  %43 = add nuw nsw i64 %30, 1, !dbg !3624
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !3624
  %45 = load i8*, i8** %44, align 8, !dbg !3624, !tbaa !708
  %46 = load i8, i8* %45, align 1, !dbg !3624, !tbaa !1201
  %47 = icmp eq i8 %46, 47, !dbg !3624
  br i1 %47, label %52, label %48, !dbg !3625

48:                                               ; preds = %41
  %49 = call i32 @savewd_restore(%struct.savewd* nonnull %5, i32 %42), !dbg !3626
  call void @llvm.dbg.value(metadata i32 %49, metadata !3580, metadata !DIExpression()), !dbg !3627
  %50 = icmp slt i32 %42, %49, !dbg !3628
  %51 = select i1 %50, i32 %49, i32 %42, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %51, metadata !3572, metadata !DIExpression()), !dbg !3587
  br label %52, !dbg !3631

52:                                               ; preds = %41, %48
  %53 = phi i32 [ %42, %41 ], [ %51, %48 ], !dbg !3587
  call void @llvm.dbg.value(metadata i64 %43, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %53, metadata !3572, metadata !DIExpression()), !dbg !3587
  %54 = icmp eq i64 %43, %26, !dbg !3605
  %55 = load i32, i32* %7, align 4, !dbg !3587, !tbaa !1341
  br i1 %54, label %58, label %56, !dbg !3606, !llvm.loop !3632

56:                                               ; preds = %52
  %57 = load i32, i32* %23, align 4
  br label %27, !dbg !3606

58:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3542, metadata !DIExpression()) #28, !dbg !3634
  switch i32 %55, label %68 [
    i32 0, label %69
    i32 4, label %69
    i32 1, label %59
    i32 2, label %59
    i32 3, label %63
  ], !dbg !3636

59:                                               ; preds = %58, %58
  %60 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3637
  %61 = load i32, i32* %60, align 4, !dbg !3637, !tbaa !1201
  %62 = call i32 @close(i32 %61) #28, !dbg !3638
  br label %69, !dbg !3639

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3640
  %65 = load i32, i32* %64, align 4, !dbg !3640, !tbaa !1201
  %66 = icmp slt i32 %65, 0, !dbg !3640
  br i1 %66, label %69, label %67, !dbg !3641

67:                                               ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.97, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #30, !dbg !3640
  unreachable, !dbg !3640

68:                                               ; preds = %58
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.94, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #30, !dbg !3642
  unreachable, !dbg !3642

69:                                               ; preds = %9, %18, %58, %58, %59, %63
  %70 = phi i32 [ %25, %58 ], [ %25, %58 ], [ %25, %59 ], [ %25, %63 ], [ 0, %18 ], [ 0, %9 ]
  %71 = phi i32 [ %53, %58 ], [ %53, %58 ], [ %53, %59 ], [ %53, %63 ], [ 0, %18 ], [ 0, %9 ]
  store i32 5, i32* %7, align 4, !dbg !3643, !tbaa !1341
  call void @llvm.dbg.value(metadata i32 %25, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %53, metadata !3572, metadata !DIExpression()), !dbg !3587
  %72 = icmp slt i32 %70, %0, !dbg !3644
  br i1 %72, label %73, label %86, !dbg !3645

73:                                               ; preds = %69
  %74 = zext i32 %70 to i64, !dbg !3645
  %75 = zext i32 %0 to i64
  br label %76, !dbg !3645

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %74, %73 ], [ %84, %76 ]
  %78 = phi i32 [ %71, %73 ], [ %83, %76 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !3570, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %78, metadata !3572, metadata !DIExpression()), !dbg !3587
  %79 = getelementptr inbounds i8*, i8** %1, i64 %77, !dbg !3646
  %80 = load i8*, i8** %79, align 8, !dbg !3646, !tbaa !708
  %81 = call i32 %2(i8* %80, %struct.savewd* nonnull %5, i8* %3) #28, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %81, metadata !3583, metadata !DIExpression()), !dbg !3648
  %82 = icmp slt i32 %78, %81, !dbg !3649
  %83 = select i1 %82, i32 %81, i32 %78, !dbg !3651
  call void @llvm.dbg.value(metadata i32 %83, metadata !3572, metadata !DIExpression()), !dbg !3587
  %84 = add nuw nsw i64 %77, 1, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %84, metadata !3570, metadata !DIExpression()), !dbg !3587
  %85 = icmp eq i64 %84, %75
  br i1 %85, label %86, label %76, !dbg !3645, !llvm.loop !3653

86:                                               ; preds = %76, %69
  %87 = phi i32 [ %71, %69 ], [ %83, %76 ], !dbg !3587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #28, !dbg !3655
  ret i32 %87, !dbg !3656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3657 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3696, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %1, metadata !3697, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !3698, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %3, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8** %4, metadata !3700, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %5, metadata !3701, metadata !DIExpression()), !dbg !3702
  %7 = icmp eq i8* %1, null, !dbg !3703
  br i1 %7, label %10, label %8, !dbg !3705

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3706
  br label %12, !dbg !3706

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3707
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.102, i64 0, i64 0), i32 5) #28, !dbg !3708
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3708
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3709
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.104, i64 0, i64 0), i32 5) #28, !dbg !3710
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.105, i64 0, i64 0)) #28, !dbg !3710
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3711
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
  ], !dbg !3712

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.106, i64 0, i64 0), i32 5) #28, !dbg !3713
  %21 = load i8*, i8** %4, align 8, !dbg !3713, !tbaa !708
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3713
  br label %147, !dbg !3715

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.107, i64 0, i64 0), i32 5) #28, !dbg !3716
  %25 = load i8*, i8** %4, align 8, !dbg !3716, !tbaa !708
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3716
  %27 = load i8*, i8** %26, align 8, !dbg !3716, !tbaa !708
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3716
  br label %147, !dbg !3717

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.108, i64 0, i64 0), i32 5) #28, !dbg !3718
  %31 = load i8*, i8** %4, align 8, !dbg !3718, !tbaa !708
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3718
  %33 = load i8*, i8** %32, align 8, !dbg !3718, !tbaa !708
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3718
  %35 = load i8*, i8** %34, align 8, !dbg !3718, !tbaa !708
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3718
  br label %147, !dbg !3719

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.109, i64 0, i64 0), i32 5) #28, !dbg !3720
  %39 = load i8*, i8** %4, align 8, !dbg !3720, !tbaa !708
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3720
  %41 = load i8*, i8** %40, align 8, !dbg !3720, !tbaa !708
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3720
  %43 = load i8*, i8** %42, align 8, !dbg !3720, !tbaa !708
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3720
  %45 = load i8*, i8** %44, align 8, !dbg !3720, !tbaa !708
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3720
  br label %147, !dbg !3721

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.110, i64 0, i64 0), i32 5) #28, !dbg !3722
  %49 = load i8*, i8** %4, align 8, !dbg !3722, !tbaa !708
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3722
  %51 = load i8*, i8** %50, align 8, !dbg !3722, !tbaa !708
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3722
  %53 = load i8*, i8** %52, align 8, !dbg !3722, !tbaa !708
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3722
  %55 = load i8*, i8** %54, align 8, !dbg !3722, !tbaa !708
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3722
  %57 = load i8*, i8** %56, align 8, !dbg !3722, !tbaa !708
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3722
  br label %147, !dbg !3723

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.111, i64 0, i64 0), i32 5) #28, !dbg !3724
  %61 = load i8*, i8** %4, align 8, !dbg !3724, !tbaa !708
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3724
  %63 = load i8*, i8** %62, align 8, !dbg !3724, !tbaa !708
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3724
  %65 = load i8*, i8** %64, align 8, !dbg !3724, !tbaa !708
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3724
  %67 = load i8*, i8** %66, align 8, !dbg !3724, !tbaa !708
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3724
  %69 = load i8*, i8** %68, align 8, !dbg !3724, !tbaa !708
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3724
  %71 = load i8*, i8** %70, align 8, !dbg !3724, !tbaa !708
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3724
  br label %147, !dbg !3725

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.112, i64 0, i64 0), i32 5) #28, !dbg !3726
  %75 = load i8*, i8** %4, align 8, !dbg !3726, !tbaa !708
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3726
  %77 = load i8*, i8** %76, align 8, !dbg !3726, !tbaa !708
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3726
  %79 = load i8*, i8** %78, align 8, !dbg !3726, !tbaa !708
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3726
  %81 = load i8*, i8** %80, align 8, !dbg !3726, !tbaa !708
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3726
  %83 = load i8*, i8** %82, align 8, !dbg !3726, !tbaa !708
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3726
  %85 = load i8*, i8** %84, align 8, !dbg !3726, !tbaa !708
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3726
  %87 = load i8*, i8** %86, align 8, !dbg !3726, !tbaa !708
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3726
  br label %147, !dbg !3727

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.113, i64 0, i64 0), i32 5) #28, !dbg !3728
  %91 = load i8*, i8** %4, align 8, !dbg !3728, !tbaa !708
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3728
  %93 = load i8*, i8** %92, align 8, !dbg !3728, !tbaa !708
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3728
  %95 = load i8*, i8** %94, align 8, !dbg !3728, !tbaa !708
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3728
  %97 = load i8*, i8** %96, align 8, !dbg !3728, !tbaa !708
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3728
  %99 = load i8*, i8** %98, align 8, !dbg !3728, !tbaa !708
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3728
  %101 = load i8*, i8** %100, align 8, !dbg !3728, !tbaa !708
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3728
  %103 = load i8*, i8** %102, align 8, !dbg !3728, !tbaa !708
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3728
  %105 = load i8*, i8** %104, align 8, !dbg !3728, !tbaa !708
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3728
  br label %147, !dbg !3729

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.114, i64 0, i64 0), i32 5) #28, !dbg !3730
  %109 = load i8*, i8** %4, align 8, !dbg !3730, !tbaa !708
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3730
  %111 = load i8*, i8** %110, align 8, !dbg !3730, !tbaa !708
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3730
  %113 = load i8*, i8** %112, align 8, !dbg !3730, !tbaa !708
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3730
  %115 = load i8*, i8** %114, align 8, !dbg !3730, !tbaa !708
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3730
  %117 = load i8*, i8** %116, align 8, !dbg !3730, !tbaa !708
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3730
  %119 = load i8*, i8** %118, align 8, !dbg !3730, !tbaa !708
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3730
  %121 = load i8*, i8** %120, align 8, !dbg !3730, !tbaa !708
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3730
  %123 = load i8*, i8** %122, align 8, !dbg !3730, !tbaa !708
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3730
  %125 = load i8*, i8** %124, align 8, !dbg !3730, !tbaa !708
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3730
  br label %147, !dbg !3731

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.115, i64 0, i64 0), i32 5) #28, !dbg !3732
  %129 = load i8*, i8** %4, align 8, !dbg !3732, !tbaa !708
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3732
  %131 = load i8*, i8** %130, align 8, !dbg !3732, !tbaa !708
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3732
  %133 = load i8*, i8** %132, align 8, !dbg !3732, !tbaa !708
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3732
  %135 = load i8*, i8** %134, align 8, !dbg !3732, !tbaa !708
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3732
  %137 = load i8*, i8** %136, align 8, !dbg !3732, !tbaa !708
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3732
  %139 = load i8*, i8** %138, align 8, !dbg !3732, !tbaa !708
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3732
  %141 = load i8*, i8** %140, align 8, !dbg !3732, !tbaa !708
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3732
  %143 = load i8*, i8** %142, align 8, !dbg !3732, !tbaa !708
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3732
  %145 = load i8*, i8** %144, align 8, !dbg !3732, !tbaa !708
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3732
  br label %147, !dbg !3733

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3735 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3739, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %1, metadata !3740, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %2, metadata !3741, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %3, metadata !3742, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8** %4, metadata !3743, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 0, metadata !3744, metadata !DIExpression()), !dbg !3745
  br label %6, !dbg !3746

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3748
  call void @llvm.dbg.value(metadata i64 %7, metadata !3744, metadata !DIExpression()), !dbg !3745
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3749
  %9 = load i8*, i8** %8, align 8, !dbg !3749, !tbaa !708
  %10 = icmp eq i8* %9, null, !dbg !3751
  %11 = add i64 %7, 1, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %11, metadata !3744, metadata !DIExpression()), !dbg !3745
  br i1 %10, label %12, label %6, !dbg !3751, !llvm.loop !3753

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3755
  ret void, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3757 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3768, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %2, metadata !3770, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %3, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3772, metadata !DIExpression()), !dbg !3776
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3777
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3777
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  %11 = load i32, i32* %8, align 8, !dbg !3779
  %12 = icmp ult i32 %11, 41, !dbg !3779
  br i1 %12, label %13, label %18, !dbg !3779

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3779
  %15 = zext i32 %11 to i64, !dbg !3779
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3779
  %17 = add nuw nsw i32 %11, 8, !dbg !3779
  store i32 %17, i32* %8, align 8, !dbg !3779
  br label %21, !dbg !3779

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3779
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3779
  store i8* %20, i8** %9, align 8, !dbg !3779
  br label %21, !dbg !3779

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3779
  %25 = load i8*, i8** %24, align 8, !dbg !3779
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3782
  store i8* %25, i8** %26, align 16, !dbg !3783, !tbaa !708
  %27 = icmp eq i8* %25, null, !dbg !3784
  br i1 %27, label %30, label %28, !dbg !3785

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 1, metadata !3773, metadata !DIExpression()), !dbg !3776
  %29 = icmp ult i32 %22, 41, !dbg !3779
  br i1 %29, label %35, label %32, !dbg !3779

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3786
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3787
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3788
  ret void, !dbg !3788

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3779
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3779
  store i8* %34, i8** %9, align 8, !dbg !3779
  br label %40, !dbg !3779

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3779
  %37 = zext i32 %22 to i64, !dbg !3779
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3779
  %39 = add nuw nsw i32 %22, 8, !dbg !3779
  store i32 %39, i32* %8, align 8, !dbg !3779
  br label %40, !dbg !3779

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3779
  %44 = load i8*, i8** %43, align 8, !dbg !3779
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3782
  store i8* %44, i8** %45, align 8, !dbg !3783, !tbaa !708
  %46 = icmp eq i8* %44, null, !dbg !3784
  br i1 %46, label %30, label %47, !dbg !3785

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 2, metadata !3773, metadata !DIExpression()), !dbg !3776
  %48 = icmp ult i32 %41, 41, !dbg !3779
  br i1 %48, label %52, label %49, !dbg !3779

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3779
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3779
  store i8* %51, i8** %9, align 8, !dbg !3779
  br label %57, !dbg !3779

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3779
  %54 = zext i32 %41 to i64, !dbg !3779
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3779
  %56 = add nuw nsw i32 %41, 8, !dbg !3779
  store i32 %56, i32* %8, align 8, !dbg !3779
  br label %57, !dbg !3779

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3779
  %61 = load i8*, i8** %60, align 8, !dbg !3779
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3782
  store i8* %61, i8** %62, align 16, !dbg !3783, !tbaa !708
  %63 = icmp eq i8* %61, null, !dbg !3784
  br i1 %63, label %30, label %64, !dbg !3785

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 3, metadata !3773, metadata !DIExpression()), !dbg !3776
  %65 = icmp ult i32 %58, 41, !dbg !3779
  br i1 %65, label %69, label %66, !dbg !3779

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3779
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3779
  store i8* %68, i8** %9, align 8, !dbg !3779
  br label %74, !dbg !3779

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3779
  %71 = zext i32 %58 to i64, !dbg !3779
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3779
  %73 = add nuw nsw i32 %58, 8, !dbg !3779
  store i32 %73, i32* %8, align 8, !dbg !3779
  br label %74, !dbg !3779

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3779
  %78 = load i8*, i8** %77, align 8, !dbg !3779
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3782
  store i8* %78, i8** %79, align 8, !dbg !3783, !tbaa !708
  %80 = icmp eq i8* %78, null, !dbg !3784
  br i1 %80, label %30, label %81, !dbg !3785

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 4, metadata !3773, metadata !DIExpression()), !dbg !3776
  %82 = icmp ult i32 %75, 41, !dbg !3779
  br i1 %82, label %86, label %83, !dbg !3779

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3779
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3779
  store i8* %85, i8** %9, align 8, !dbg !3779
  br label %91, !dbg !3779

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3779
  %88 = zext i32 %75 to i64, !dbg !3779
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3779
  %90 = add nuw nsw i32 %75, 8, !dbg !3779
  store i32 %90, i32* %8, align 8, !dbg !3779
  br label %91, !dbg !3779

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3779
  %95 = load i8*, i8** %94, align 8, !dbg !3779
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3782
  store i8* %95, i8** %96, align 16, !dbg !3783, !tbaa !708
  %97 = icmp eq i8* %95, null, !dbg !3784
  br i1 %97, label %30, label %98, !dbg !3785

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 5, metadata !3773, metadata !DIExpression()), !dbg !3776
  %99 = icmp ult i32 %92, 41, !dbg !3779
  br i1 %99, label %103, label %100, !dbg !3779

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3779
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3779
  store i8* %102, i8** %9, align 8, !dbg !3779
  br label %108, !dbg !3779

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3779
  %105 = zext i32 %92 to i64, !dbg !3779
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3779
  %107 = add nuw nsw i32 %92, 8, !dbg !3779
  store i32 %107, i32* %8, align 8, !dbg !3779
  br label %108, !dbg !3779

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3779
  %111 = load i8*, i8** %110, align 8, !dbg !3779
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3782
  store i8* %111, i8** %112, align 8, !dbg !3783, !tbaa !708
  %113 = icmp eq i8* %111, null, !dbg !3784
  br i1 %113, label %30, label %114, !dbg !3785

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3773, metadata !DIExpression()), !dbg !3776
  %115 = load i8*, i8** %9, align 8, !dbg !3779
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3779
  store i8* %116, i8** %9, align 8, !dbg !3779
  %117 = bitcast i8* %115 to i8**, !dbg !3779
  %118 = load i8*, i8** %117, align 8, !dbg !3779
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3782
  store i8* %118, i8** %119, align 16, !dbg !3783, !tbaa !708
  %120 = icmp eq i8* %118, null, !dbg !3784
  br i1 %120, label %30, label %121, !dbg !3785

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3773, metadata !DIExpression()), !dbg !3776
  %122 = load i8*, i8** %9, align 8, !dbg !3779
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3779
  store i8* %123, i8** %9, align 8, !dbg !3779
  %124 = bitcast i8* %122 to i8**, !dbg !3779
  %125 = load i8*, i8** %124, align 8, !dbg !3779
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3782
  store i8* %125, i8** %126, align 8, !dbg !3783, !tbaa !708
  %127 = icmp eq i8* %125, null, !dbg !3784
  br i1 %127, label %30, label %128, !dbg !3785

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3773, metadata !DIExpression()), !dbg !3776
  %129 = load i8*, i8** %9, align 8, !dbg !3779
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3779
  store i8* %130, i8** %9, align 8, !dbg !3779
  %131 = bitcast i8* %129 to i8**, !dbg !3779
  %132 = load i8*, i8** %131, align 8, !dbg !3779
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3782
  store i8* %132, i8** %133, align 16, !dbg !3783, !tbaa !708
  %134 = icmp eq i8* %132, null, !dbg !3784
  br i1 %134, label %30, label %135, !dbg !3785

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3773, metadata !DIExpression()), !dbg !3776
  %136 = load i8*, i8** %9, align 8, !dbg !3779
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3779
  store i8* %137, i8** %9, align 8, !dbg !3779
  %138 = bitcast i8* %136 to i8**, !dbg !3779
  %139 = load i8*, i8** %138, align 8, !dbg !3779
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3782
  store i8* %139, i8** %140, align 8, !dbg !3783, !tbaa !708
  %141 = icmp eq i8* %139, null, !dbg !3784
  %142 = select i1 %141, i64 9, i64 10, !dbg !3785
  br label %30, !dbg !3785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3789 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3793, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %1, metadata !3794, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %2, metadata !3795, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %3, metadata !3796, metadata !DIExpression()), !dbg !3802
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3803
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3803
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3797, metadata !DIExpression()), !dbg !3804
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3805
  call void @llvm.va_start(i8* nonnull %6), !dbg !3805
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3806
  call void @llvm.va_end(i8* nonnull %6), !dbg !3807
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3808
  ret void, !dbg !3808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3809 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3810, !tbaa !708
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.103, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3810
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.118, i64 0, i64 0), i32 5) #28, !dbg !3811
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.119, i64 0, i64 0)) #28, !dbg !3811
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.120, i64 0, i64 0), i32 5) #28, !dbg !3812
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.121, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.122, i64 0, i64 0)) #28, !dbg !3812
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.123, i64 0, i64 0), i32 5) #28, !dbg !3813
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.124, i64 0, i64 0)) #28, !dbg !3813
  ret void, !dbg !3814
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3818, metadata !DIExpression()), !dbg !3819
  %3 = udiv i64 9223372036854775807, %1, !dbg !3820
  %4 = icmp ult i64 %3, %0, !dbg !3820
  br i1 %4, label %5, label %6, !dbg !3822

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3823
  unreachable, !dbg !3823

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %7, metadata !3825, metadata !DIExpression()) #28, !dbg !3831
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %8, metadata !3830, metadata !DIExpression()) #28, !dbg !3831
  %9 = icmp eq i8* %8, null, !dbg !3834
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3836
  br i1 %11, label %12, label %13, !dbg !3836

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3837
  unreachable, !dbg !3837

13:                                               ; preds = %6
  ret i8* %8, !dbg !3838
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3826 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3839
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %2, metadata !3830, metadata !DIExpression()), !dbg !3839
  %3 = icmp eq i8* %2, null, !dbg !3841
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3842
  br i1 %5, label %6, label %7, !dbg !3842

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3843
  unreachable, !dbg !3843

7:                                                ; preds = %1
  ret i8* %2, !dbg !3844
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3845 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3849, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %1, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %2, metadata !3851, metadata !DIExpression()), !dbg !3852
  %4 = udiv i64 9223372036854775807, %2, !dbg !3853
  %5 = icmp ult i64 %4, %1, !dbg !3853
  br i1 %5, label %6, label %7, !dbg !3855

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3856
  unreachable, !dbg !3856

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %0, metadata !3858, metadata !DIExpression()) #28, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %8, metadata !3863, metadata !DIExpression()) #28, !dbg !3864
  %9 = icmp eq i64 %8, 0, !dbg !3866
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3868
  br i1 %11, label %12, label %13, !dbg !3868

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3869
  br label %19, !dbg !3871

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %14, metadata !3858, metadata !DIExpression()) #28, !dbg !3864
  %15 = icmp eq i8* %14, null, !dbg !3873
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3875
  br i1 %17, label %18, label %19, !dbg !3875

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3876
  unreachable, !dbg !3876

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3864
  ret i8* %20, !dbg !3877
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3858, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()), !dbg !3878
  %3 = icmp eq i64 %1, 0, !dbg !3879
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3880
  br i1 %5, label %6, label %7, !dbg !3880

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3881
  br label %13, !dbg !3882

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %8, metadata !3858, metadata !DIExpression()), !dbg !3878
  %9 = icmp eq i8* %8, null, !dbg !3884
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3885
  br i1 %11, label %12, label %13, !dbg !3885

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3886
  unreachable, !dbg !3886

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3878
  ret i8* %14, !dbg !3887
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64* %1, metadata !254, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %2, metadata !255, metadata !DIExpression()), !dbg !3888
  %4 = load i64, i64* %1, align 8, !dbg !3889, !tbaa !2759
  call void @llvm.dbg.value(metadata i64 %4, metadata !256, metadata !DIExpression()), !dbg !3888
  %5 = icmp eq i8* %0, null, !dbg !3890
  br i1 %5, label %6, label %20, !dbg !3892

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3893
  br i1 %7, label %8, label %13, !dbg !3896

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %9, metadata !256, metadata !DIExpression()), !dbg !3888
  %10 = icmp ugt i64 %2, 128, !dbg !3899
  %11 = zext i1 %10 to i64, !dbg !3899
  %12 = add nuw nsw i64 %9, %11, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %12, metadata !256, metadata !DIExpression()), !dbg !3888
  br label %13, !dbg !3901

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3888
  call void @llvm.dbg.value(metadata i64 %14, metadata !256, metadata !DIExpression()), !dbg !3888
  %15 = udiv i64 9223372036854775807, %2, !dbg !3902
  %16 = icmp ult i64 %15, %14, !dbg !3902
  br i1 %16, label %19, label %17, !dbg !3904

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !256, metadata !DIExpression()), !dbg !3888
  store i64 %14, i64* %1, align 8, !dbg !3905, !tbaa !2759
  %18 = mul i64 %14, %2, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %0, metadata !3858, metadata !DIExpression()) #28, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %28, metadata !3863, metadata !DIExpression()) #28, !dbg !3907
  br label %31, !dbg !3909

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3910
  unreachable, !dbg !3910

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3911
  %22 = icmp ugt i64 %21, %4, !dbg !3914
  br i1 %22, label %24, label %23, !dbg !3915

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3916
  unreachable, !dbg !3916

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3917
  %26 = add nuw i64 %4, 1, !dbg !3918
  %27 = add i64 %26, %25, !dbg !3919
  call void @llvm.dbg.value(metadata i64 %27, metadata !256, metadata !DIExpression()), !dbg !3888
  store i64 %27, i64* %1, align 8, !dbg !3905, !tbaa !2759
  %28 = mul i64 %27, %2, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %0, metadata !3858, metadata !DIExpression()) #28, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %28, metadata !3863, metadata !DIExpression()) #28, !dbg !3907
  %29 = icmp eq i64 %28, 0, !dbg !3920
  br i1 %29, label %30, label %31, !dbg !3909

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3921
  br label %38, !dbg !3922

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %33, metadata !3858, metadata !DIExpression()) #28, !dbg !3907
  %34 = icmp eq i8* %33, null, !dbg !3924
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3925
  br i1 %36, label %37, label %38, !dbg !3925

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3926
  unreachable, !dbg !3926

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3907
  ret i8* %39, !dbg !3927
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3928 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()) #28, !dbg !3932
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3934
  call void @llvm.dbg.value(metadata i8* %2, metadata !3830, metadata !DIExpression()) #28, !dbg !3932
  %3 = icmp eq i8* %2, null, !dbg !3935
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3936
  br i1 %5, label %6, label %7, !dbg !3936

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3937
  unreachable, !dbg !3937

7:                                                ; preds = %1
  ret i8* %2, !dbg !3938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3939 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3943, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64* %1, metadata !3944, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()) #28, !dbg !3946
  call void @llvm.dbg.value(metadata i64* %1, metadata !254, metadata !DIExpression()) #28, !dbg !3946
  call void @llvm.dbg.value(metadata i64 1, metadata !255, metadata !DIExpression()) #28, !dbg !3946
  %3 = load i64, i64* %1, align 8, !dbg !3948, !tbaa !2759
  call void @llvm.dbg.value(metadata i64 %3, metadata !256, metadata !DIExpression()) #28, !dbg !3946
  %4 = icmp eq i8* %0, null, !dbg !3949
  br i1 %4, label %5, label %10, !dbg !3950

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3951
  br i1 %6, label %17, label %7, !dbg !3952

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !256, metadata !DIExpression()) #28, !dbg !3946
  %8 = icmp slt i64 %3, 0, !dbg !3953
  br i1 %8, label %9, label %17, !dbg !3954

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3955
  unreachable, !dbg !3955

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3956
  br i1 %11, label %13, label %12, !dbg !3957

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3958
  unreachable, !dbg !3958

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3959
  %15 = add nuw nsw i64 %3, 1, !dbg !3960
  %16 = add nuw nsw i64 %15, %14, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %16, metadata !256, metadata !DIExpression()) #28, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %0, metadata !3858, metadata !DIExpression()) #28, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %16, metadata !3863, metadata !DIExpression()) #28, !dbg !3962
  br label %17, !dbg !3964

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3965
  store i64 %18, i64* %1, align 8, !dbg !3965, !tbaa !2759
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3966
  call void @llvm.dbg.value(metadata i8* %19, metadata !3858, metadata !DIExpression()) #28, !dbg !3962
  %20 = icmp eq i8* %19, null, !dbg !3967
  br i1 %20, label %21, label %22, !dbg !3968

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3969
  unreachable, !dbg !3969

22:                                               ; preds = %17
  ret i8* %19, !dbg !3970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3973, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i64 %0, metadata !3975, metadata !DIExpression()) #28, !dbg !3980
  call void @llvm.dbg.value(metadata i64 1, metadata !3978, metadata !DIExpression()) #28, !dbg !3980
  %2 = icmp slt i64 %0, 0, !dbg !3982
  br i1 %2, label %6, label %3, !dbg !3984

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %4, metadata !3979, metadata !DIExpression()) #28, !dbg !3980
  %5 = icmp eq i8* %4, null, !dbg !3986
  br i1 %5, label %6, label %7, !dbg !3987

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3988
  unreachable, !dbg !3988

7:                                                ; preds = %3
  ret i8* %4, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3975, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !3990
  %3 = udiv i64 9223372036854775807, %1, !dbg !3991
  %4 = icmp ult i64 %3, %0, !dbg !3991
  br i1 %4, label %8, label %5, !dbg !3992

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %6, metadata !3979, metadata !DIExpression()), !dbg !3990
  %7 = icmp eq i8* %6, null, !dbg !3994
  br i1 %7, label %8, label %9, !dbg !3995

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3996
  unreachable, !dbg !3996

9:                                                ; preds = %5
  ret i8* %6, !dbg !3997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()) #28, !dbg !4007
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %3, metadata !3830, metadata !DIExpression()) #28, !dbg !4007
  %4 = icmp eq i8* %3, null, !dbg !4010
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4011
  br i1 %6, label %7, label %8, !dbg !4011

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !4012
  unreachable, !dbg !4012

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4013, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %0, metadata !4020, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !4021, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !4024
  ret i8* %3, !dbg !4025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4026 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4028, metadata !DIExpression()), !dbg !4029
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !4030
  %3 = add i64 %2, 1, !dbg !4031
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()) #28, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %3, metadata !4005, metadata !DIExpression()) #28, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %3, metadata !3825, metadata !DIExpression()) #28, !dbg !4034
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %4, metadata !3830, metadata !DIExpression()) #28, !dbg !4034
  %5 = icmp eq i8* %4, null, !dbg !4037
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4038
  br i1 %7, label %8, label %9, !dbg !4038

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !4039
  unreachable, !dbg !4039

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4013, metadata !DIExpression()) #28, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %0, metadata !4020, metadata !DIExpression()) #28, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %3, metadata !4021, metadata !DIExpression()) #28, !dbg !4040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !4042
  ret i8* %4, !dbg !4043
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4044 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4045, !tbaa !926
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #28, !dbg !4046
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i64 0, i64 0), i8* %2) #28, !dbg !4047
  tail call void @abort() #30, !dbg !4048
  unreachable, !dbg !4048
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !4049 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4051, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4057
  %3 = icmp eq i64 %0, 0, !dbg !4058
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4059
  br i1 %5, label %11, label %6, !dbg !4059

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4054, metadata !DIExpression()), !dbg !4060
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4061
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4061
  br i1 %8, label %9, label %11, !dbg !4063

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !4064
  store i32 12, i32* %10, align 4, !dbg !4066, !tbaa !926
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4051, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 %12, metadata !4052, metadata !DIExpression()), !dbg !4057
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !4067
  call void @llvm.dbg.value(metadata i8* %14, metadata !4053, metadata !DIExpression()), !dbg !4057
  br label %15, !dbg !4068

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4057
  ret i8* %16, !dbg !4069
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.savewd* %3) local_unnamed_addr #8 !dbg !4070 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4086, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8* %1, metadata !4087, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %2, metadata !4088, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.savewd* %3, metadata !4089, metadata !DIExpression()), !dbg !4095
  %6 = bitcast i32* %5 to i8*, !dbg !4096
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4096
  %7 = icmp eq i32* %0, null, !dbg !4097
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4099
  call void @llvm.dbg.value(metadata i32* %8, metadata !4086, metadata !DIExpression()), !dbg !4095
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.savewd* %3) #28, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %9, metadata !4090, metadata !DIExpression()), !dbg !4095
  %10 = icmp ugt i64 %9, -3, !dbg !4101
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4102
  br i1 %12, label %13, label %18, !dbg !4102

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !4103
  br i1 %14, label %18, label %15, !dbg !4104

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4105, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 %16, metadata !4092, metadata !DIExpression()), !dbg !4106
  %17 = zext i8 %16 to i32, !dbg !4107
  store i32 %17, i32* %8, align 4, !dbg !4108, !tbaa !926
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4095
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4109
  ret i64 %19, !dbg !4109
}

; Function Attrs: nounwind
declare !dbg !4110 i64 @mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4114 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4152, metadata !DIExpression()), !dbg !4157
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !4158
  call void @llvm.dbg.value(metadata i1 undef, metadata !4153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4159, metadata !DIExpression()), !dbg !4162
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4164
  %4 = load i32, i32* %3, align 8, !dbg !4164, !tbaa !4165
  %5 = and i32 %4, 32, !dbg !4166
  %6 = icmp eq i32 %5, 0, !dbg !4166
  call void @llvm.dbg.value(metadata i1 %6, metadata !4155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4157
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !4167
  %8 = icmp eq i32 %7, 0, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %8, metadata !4156, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4157
  br i1 %6, label %9, label %19, !dbg !4169

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4171
  call void @llvm.dbg.value(metadata i1 %10, metadata !4153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4157
  %11 = or i1 %10, %8, !dbg !4172
  %12 = xor i1 %8, true, !dbg !4172
  %13 = sext i1 %12 to i32, !dbg !4172
  br i1 %11, label %22, label %14, !dbg !4172

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4173
  %16 = load i32, i32* %15, align 4, !dbg !4173, !tbaa !926
  %17 = icmp ne i32 %16, 9, !dbg !4174
  %18 = sext i1 %17 to i32, !dbg !4175
  br label %22, !dbg !4175

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4176

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4178
  store i32 0, i32* %21, align 4, !dbg !4180, !tbaa !926
  br label %22, !dbg !4178

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4157
  ret i32 %23, !dbg !4181
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @open_safer(i8* nocapture readonly %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4182 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !4184, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i32 %1, metadata !4185, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i32 0, metadata !4186, metadata !DIExpression()), !dbg !4199
  %4 = and i32 %1, 64, !dbg !4200
  %5 = icmp eq i32 %4, 0, !dbg !4200
  br i1 %5, label %25, label %6, !dbg !4201

6:                                                ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4202
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #28, !dbg !4202
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4187, metadata !DIExpression()), !dbg !4203
  call void @llvm.va_start(i8* nonnull %7), !dbg !4204
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4205
  %9 = load i32, i32* %8, align 16, !dbg !4205
  %10 = icmp ult i32 %9, 41, !dbg !4205
  br i1 %10, label %11, label %17, !dbg !4205

11:                                               ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4205
  %13 = load i8*, i8** %12, align 16, !dbg !4205
  %14 = zext i32 %9 to i64, !dbg !4205
  %15 = getelementptr i8, i8* %13, i64 %14, !dbg !4205
  %16 = add nuw nsw i32 %9, 8, !dbg !4205
  store i32 %16, i32* %8, align 16, !dbg !4205
  br label %21, !dbg !4205

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4205
  %19 = load i8*, i8** %18, align 8, !dbg !4205
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4205
  store i8* %20, i8** %18, align 8, !dbg !4205
  br label %21, !dbg !4205

21:                                               ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4205
  %24 = load i32, i32* %23, align 4, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %24, metadata !4186, metadata !DIExpression()), !dbg !4199
  call void @llvm.va_end(i8* nonnull %7), !dbg !4206
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #28, !dbg !4207
  br label %25, !dbg !4208

25:                                               ; preds = %21, %2
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ], !dbg !4199
  call void @llvm.dbg.value(metadata i32 %26, metadata !4186, metadata !DIExpression()), !dbg !4199
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #28, !dbg !4209
  %28 = call i32 @fd_safer(i32 %27) #28, !dbg !4210
  ret i32 %28, !dbg !4211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4212 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4216, metadata !DIExpression()), !dbg !4221
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4222
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4222
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4217, metadata !DIExpression()), !dbg !4223
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !4224
  %5 = icmp eq i32 %4, 0, !dbg !4224
  br i1 %5, label %6, label %13, !dbg !4226

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4227
  %8 = load i16, i16* %7, align 16, !dbg !4227
  %9 = icmp eq i16 %8, 67, !dbg !4227
  br i1 %9, label %13, label %10, !dbg !4228

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i64 6), !dbg !4229
  %12 = icmp ne i32 %11, 0, !dbg !4230
  br label %13, !dbg !4228

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4221
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4231
  ret i1 %14, !dbg !4231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4232 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  %2 = icmp eq i8* %1, null, !dbg !4239
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.150, i64 0, i64 0), i8* %1, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %3, metadata !4236, metadata !DIExpression()), !dbg !4238
  %4 = load i8, i8* %3, align 1, !dbg !4242, !tbaa !1201
  %5 = icmp eq i8 %4, 0, !dbg !4246
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i8* %3, !dbg !4247
  call void @llvm.dbg.value(metadata i8* %6, metadata !4236, metadata !DIExpression()), !dbg !4238
  ret i8* %6, !dbg !4248
}

; Function Attrs: nounwind
declare !dbg !4249 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mkancesdirs(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !4252 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4257, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !4258, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !4259, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %3, metadata !4260, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* null, metadata !4261, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %0, metadata !4262, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %0, metadata !4263, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8 0, metadata !4265, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %0, metadata !4263, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4274
  %5 = load i8, i8* %0, align 1, !dbg !4275, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 %5, metadata !4264, metadata !DIExpression()), !dbg !4274
  %6 = icmp eq i8 %5, 0, !dbg !4276
  br i1 %6, label %76, label %7, !dbg !4276

7:                                                ; preds = %4, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %4 ]
  %9 = phi i8* [ %13, %70 ], [ %0, %4 ]
  %10 = phi i8 [ %74, %70 ], [ 0, %4 ]
  %11 = phi i8* [ %73, %70 ], [ null, %4 ]
  %12 = phi i8* [ %72, %70 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4277
  call void @llvm.dbg.value(metadata i8 %10, metadata !4265, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %11, metadata !4261, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %12, metadata !4262, metadata !DIExpression()), !dbg !4274
  %14 = load i8, i8* %13, align 1, !dbg !4278, !tbaa !1201
  %15 = icmp eq i8 %14, 47, !dbg !4278
  %16 = icmp eq i8 %8, 47, !dbg !4279
  br i1 %15, label %17, label %19, !dbg !4280

17:                                               ; preds = %7
  %18 = select i1 %16, i8* %11, i8* %13, !dbg !4281
  br label %70, !dbg !4281

19:                                               ; preds = %7
  br i1 %16, label %20, label %70, !dbg !4283

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !4284
  %22 = icmp ne i8* %11, null
  %23 = and i1 %22, %21, !dbg !4285
  br i1 %23, label %24, label %66, !dbg !4285

24:                                               ; preds = %20
  %25 = ptrtoint i8* %11 to i64, !dbg !4286
  %26 = ptrtoint i8* %12 to i64, !dbg !4286
  %27 = sub i64 %25, %26, !dbg !4286
  %28 = icmp eq i64 %27, 1, !dbg !4287
  br i1 %28, label %29, label %33, !dbg !4288

29:                                               ; preds = %24
  %30 = load i8, i8* %12, align 1, !dbg !4289, !tbaa !1201
  %31 = icmp eq i8 %30, 46, !dbg !4290
  br i1 %31, label %66, label %32, !dbg !4291

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !4266, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4292
  store i8 0, i8* %11, align 1, !dbg !4293, !tbaa !1201
  br label %42, !dbg !4294

33:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !4266, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4292
  store i8 0, i8* %11, align 1, !dbg !4293, !tbaa !1201
  %34 = icmp eq i64 %27, 2, !dbg !4296
  br i1 %34, label %35, label %42, !dbg !4294

35:                                               ; preds = %33
  %36 = load i8, i8* %12, align 1, !dbg !4297, !tbaa !1201
  %37 = icmp eq i8 %36, 46, !dbg !4298
  br i1 %37, label %38, label %42, !dbg !4299

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4300
  %40 = load i8, i8* %39, align 1, !dbg !4300, !tbaa !1201
  %41 = icmp eq i8 %40, 46, !dbg !4301
  br i1 %41, label %48, label %42, !dbg !4302

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(i8* nonnull %0, i8* %12, i8* %3) #28, !dbg !4303
  %44 = icmp slt i32 %43, 0, !dbg !4305
  br i1 %44, label %45, label %48, !dbg !4306

45:                                               ; preds = %42
  %46 = tail call i32* @__errno_location() #32, !dbg !4307
  %47 = load i32, i32* %46, align 4, !dbg !4307, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %47, metadata !4266, metadata !DIExpression()), !dbg !4292
  br label %48, !dbg !4308

48:                                               ; preds = %42, %38, %45
  %49 = phi i8 [ %10, %45 ], [ 0, %38 ], [ 1, %42 ], !dbg !4274
  %50 = phi i32 [ %47, %45 ], [ 0, %38 ], [ 0, %42 ], !dbg !4292
  call void @llvm.dbg.value(metadata i32 %50, metadata !4266, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i8 %49, metadata !4265, metadata !DIExpression()), !dbg !4274
  %51 = and i8 %49, 1, !dbg !4309
  %52 = zext i8 %51 to i32, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %52, metadata !4272, metadata !DIExpression()), !dbg !4292
  %53 = tail call i32 @savewd_chdir(%struct.savewd* %1, i8* %12, i32 %52, i32* null) #28, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %53, metadata !4273, metadata !DIExpression()), !dbg !4292
  %54 = icmp eq i32 %53, -1, !dbg !4313
  br i1 %54, label %57, label %55, !dbg !4315

55:                                               ; preds = %48
  store i8 47, i8* %11, align 1, !dbg !4316, !tbaa !1201
  %56 = icmp eq i32 %53, 0, !dbg !4317
  br i1 %56, label %66, label %57, !dbg !4319

57:                                               ; preds = %48, %55
  %58 = icmp eq i32 %50, 0, !dbg !4320
  br i1 %58, label %64, label %59, !dbg !4323

59:                                               ; preds = %57
  %60 = tail call i32* @__errno_location() #32, !dbg !4324
  %61 = load i32, i32* %60, align 4, !dbg !4324, !tbaa !926
  %62 = icmp eq i32 %61, 2, !dbg !4325
  br i1 %62, label %63, label %64, !dbg !4326

63:                                               ; preds = %59
  store i32 %50, i32* %60, align 4, !dbg !4327, !tbaa !926
  br label %64, !dbg !4328

64:                                               ; preds = %57, %59, %63
  %65 = sext i32 %53 to i64, !dbg !4329
  br label %81

66:                                               ; preds = %20, %29, %55
  %67 = phi i8* [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i8 [ %49, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, i8* %13, align 1, !dbg !4275, !tbaa !1201
  br label %70, !dbg !4275

70:                                               ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !4275
  %72 = phi i8* [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !4274
  %73 = phi i8* [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !4274
  %74 = phi i8 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ], !dbg !4330
  call void @llvm.dbg.value(metadata i8 %74, metadata !4265, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %73, metadata !4261, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %72, metadata !4262, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i8* %13, metadata !4263, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4274
  call void @llvm.dbg.value(metadata i8 %71, metadata !4264, metadata !DIExpression()), !dbg !4274
  %75 = icmp eq i8 %71, 0, !dbg !4276
  br i1 %75, label %76, label %7, !dbg !4276, !llvm.loop !4331

76:                                               ; preds = %70, %4
  %77 = phi i8* [ %0, %4 ], [ %72, %70 ], !dbg !4333
  %78 = ptrtoint i8* %77 to i64, !dbg !4334
  %79 = ptrtoint i8* %0 to i64, !dbg !4334
  %80 = sub i64 %78, %79, !dbg !4334
  br label %81, !dbg !4335

81:                                               ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !4274
  ret i64 %82, !dbg !4336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dirchownmod(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #8 !dbg !4337 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4341, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i8* %1, metadata !4342, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %2, metadata !4343, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %3, metadata !4344, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %4, metadata !4345, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %5, metadata !4346, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 %6, metadata !4347, metadata !DIExpression()), !dbg !4385
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !4386
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %9) #28, !dbg !4386
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !4348, metadata !DIExpression()), !dbg !4387
  %10 = icmp slt i32 %0, 0, !dbg !4388
  br i1 %10, label %11, label %13, !dbg !4389

11:                                               ; preds = %7
  %12 = call i32 @stat(i8* %1, %struct.stat* nonnull %8) #28, !dbg !4390
  br label %15, !dbg !4389

13:                                               ; preds = %7
  %14 = call i32 @fstat(i32 %0, %struct.stat* nonnull %8) #28, !dbg !4391
  br label %15, !dbg !4389

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !4389
  call void @llvm.dbg.value(metadata i32 %16, metadata !4370, metadata !DIExpression()), !dbg !4385
  %17 = icmp eq i32 %16, 0, !dbg !4392
  br i1 %17, label %18, label %75, !dbg !4393

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3, !dbg !4394
  %20 = load i32, i32* %19, align 8, !dbg !4394, !tbaa !1395
  call void @llvm.dbg.value(metadata i32 %20, metadata !4371, metadata !DIExpression()), !dbg !4395
  %21 = and i32 %20, 61440, !dbg !4396
  %22 = icmp eq i32 %21, 16384, !dbg !4396
  br i1 %22, label %25, label %23, !dbg !4397

23:                                               ; preds = %18
  %24 = tail call i32* @__errno_location() #32, !dbg !4398
  store i32 20, i32* %24, align 4, !dbg !4400, !tbaa !926
  call void @llvm.dbg.value(metadata i32 -1, metadata !4370, metadata !DIExpression()), !dbg !4385
  br label %75, !dbg !4401

25:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !4374, metadata !DIExpression()), !dbg !4402
  %26 = icmp eq i32 %3, -1, !dbg !4403
  br i1 %26, label %31, label %27, !dbg !4405

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4, !dbg !4406
  %29 = load i32, i32* %28, align 4, !dbg !4406, !tbaa !4407
  %30 = icmp eq i32 %29, %3, !dbg !4408
  br i1 %30, label %31, label %37, !dbg !4409

31:                                               ; preds = %27, %25
  %32 = icmp eq i32 %4, -1, !dbg !4410
  br i1 %32, label %55, label %33, !dbg !4411

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5, !dbg !4412
  %35 = load i32, i32* %34, align 8, !dbg !4412, !tbaa !4413
  %36 = icmp eq i32 %35, %4, !dbg !4414
  br i1 %36, label %55, label %37, !dbg !4415

37:                                               ; preds = %33, %27
  %38 = icmp sgt i32 %0, -1, !dbg !4416
  br i1 %38, label %39, label %41, !dbg !4418

39:                                               ; preds = %37
  %40 = tail call i32 @fchown(i32 %0, i32 %3, i32 %4) #28, !dbg !4419
  br label %47, !dbg !4418

41:                                               ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !4420
  br i1 %42, label %45, label %43, !dbg !4421

43:                                               ; preds = %41
  %44 = tail call i32 @lchown(i8* %1, i32 %3, i32 %4) #28, !dbg !4422
  br label %47, !dbg !4421

45:                                               ; preds = %41
  %46 = tail call i32 @chown(i8* %1, i32 %3, i32 %4) #28, !dbg !4423
  br label %47, !dbg !4421

47:                                               ; preds = %43, %45, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !4418
  call void @llvm.dbg.value(metadata i32 %48, metadata !4370, metadata !DIExpression()), !dbg !4385
  %49 = icmp eq i32 %48, 0, !dbg !4424
  br i1 %49, label %50, label %75, !dbg !4426

50:                                               ; preds = %47
  %51 = and i32 %20, 73, !dbg !4427
  %52 = icmp eq i32 %51, 0, !dbg !4427
  %53 = and i32 %20, 3072
  %54 = select i1 %52, i32 0, i32 %53, !dbg !4428
  br label %55, !dbg !4428

55:                                               ; preds = %33, %31, %50
  %56 = phi i32 [ %54, %50 ], [ 0, %31 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4370, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 undef, metadata !4374, metadata !DIExpression()), !dbg !4402
  %57 = xor i32 %20, %5, !dbg !4429
  %58 = or i32 %56, %57, !dbg !4430
  %59 = and i32 %58, %6, !dbg !4431
  %60 = icmp eq i32 %59, 0, !dbg !4431
  br i1 %60, label %75, label %61, !dbg !4432

61:                                               ; preds = %55
  %62 = and i32 %6, 4095, !dbg !4433
  %63 = xor i32 %62, 4095, !dbg !4433
  %64 = and i32 %63, %20, !dbg !4434
  %65 = or i32 %64, %5, !dbg !4435
  call void @llvm.dbg.value(metadata i32 %65, metadata !4377, metadata !DIExpression()), !dbg !4436
  %66 = icmp sgt i32 %0, -1, !dbg !4437
  br i1 %66, label %67, label %69, !dbg !4438

67:                                               ; preds = %61
  %68 = tail call i32 @fchmod(i32 %0, i32 %65) #28, !dbg !4439
  call void @llvm.dbg.value(metadata i32 %76, metadata !4370, metadata !DIExpression()), !dbg !4385
  br label %78, !dbg !4440

69:                                               ; preds = %61
  %70 = icmp eq i32 %2, -1, !dbg !4441
  br i1 %70, label %73, label %71, !dbg !4442

71:                                               ; preds = %69
  %72 = tail call i32 @lchmod(i8* %1, i32 %65) #28, !dbg !4443
  br label %87, !dbg !4442

73:                                               ; preds = %69
  %74 = tail call i32 @chmod(i8* %1, i32 %65) #28, !dbg !4444
  br label %87, !dbg !4442

75:                                               ; preds = %47, %23, %55, %15
  %76 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %55 ], [ %48, %47 ], !dbg !4385
  call void @llvm.dbg.value(metadata i32 %76, metadata !4370, metadata !DIExpression()), !dbg !4385
  %77 = icmp sgt i32 %0, -1, !dbg !4445
  br i1 %77, label %78, label %87, !dbg !4440

78:                                               ; preds = %67, %75
  %79 = phi i32 [ %68, %67 ], [ %76, %75 ]
  %80 = icmp eq i32 %79, 0, !dbg !4446
  br i1 %80, label %81, label %83, !dbg !4447

81:                                               ; preds = %78
  %82 = tail call i32 @close(i32 %0) #28, !dbg !4448
  call void @llvm.dbg.value(metadata i32 %82, metadata !4370, metadata !DIExpression()), !dbg !4385
  br label %87, !dbg !4449

83:                                               ; preds = %78
  %84 = tail call i32* @__errno_location() #32, !dbg !4450
  %85 = load i32, i32* %84, align 4, !dbg !4450, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %85, metadata !4380, metadata !DIExpression()), !dbg !4451
  %86 = tail call i32 @close(i32 %0) #28, !dbg !4452
  store i32 %85, i32* %84, align 4, !dbg !4453, !tbaa !926
  br label %87

87:                                               ; preds = %71, %73, %81, %83, %75
  %88 = phi i32 [ %82, %81 ], [ %79, %83 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], !dbg !4385
  call void @llvm.dbg.value(metadata i32 %88, metadata !4370, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %9) #28, !dbg !4454
  ret i32 %88, !dbg !4455
}

; Function Attrs: nofree nounwind
declare !dbg !4456 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4460 i32 @fchown(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4463 noundef i32 @lchown(i8* nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4466 noundef i32 @chown(i8* nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4467 i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4470 i32 @lchmod(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4471 noundef i32 @chmod(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4476, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i8* %1, metadata !4477, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %2, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()) #28, !dbg !4489
  call void @llvm.dbg.value(metadata i8* %1, metadata !4483, metadata !DIExpression()) #28, !dbg !4489
  call void @llvm.dbg.value(metadata i64 %2, metadata !4484, metadata !DIExpression()) #28, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()) #28, !dbg !4497
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4499
  call void @llvm.dbg.value(metadata i8* %4, metadata !4496, metadata !DIExpression()) #28, !dbg !4497
  call void @llvm.dbg.value(metadata i8* %4, metadata !4485, metadata !DIExpression()) #28, !dbg !4489
  %5 = icmp eq i8* %4, null, !dbg !4500
  br i1 %5, label %6, label %9, !dbg !4501

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4502
  br i1 %7, label %19, label %8, !dbg !4505

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4506, !tbaa !1201
  br label %19, !dbg !4507

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %10, metadata !4486, metadata !DIExpression()) #28, !dbg !4509
  %11 = icmp ult i64 %10, %2, !dbg !4510
  br i1 %11, label %12, label %14, !dbg !4512

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4513
  call void @llvm.dbg.value(metadata i8* %1, metadata !4515, metadata !DIExpression()) #28, !dbg !4520
  call void @llvm.dbg.value(metadata i8* %4, metadata !4518, metadata !DIExpression()) #28, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %13, metadata !4519, metadata !DIExpression()) #28, !dbg !4520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !4522
  br label %19, !dbg !4523

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4524
  br i1 %15, label %19, label %16, !dbg !4527

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4528
  call void @llvm.dbg.value(metadata i8* %1, metadata !4515, metadata !DIExpression()) #28, !dbg !4530
  call void @llvm.dbg.value(metadata i8* %4, metadata !4518, metadata !DIExpression()) #28, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %17, metadata !4519, metadata !DIExpression()) #28, !dbg !4530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !4532
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4533
  store i8 0, i8* %18, align 1, !dbg !4534, !tbaa !1201
  br label %19, !dbg !4535

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4536
  ret i32 %20, !dbg !4537
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()) #28, !dbg !4542
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4544
  call void @llvm.dbg.value(metadata i8* %2, metadata !4496, metadata !DIExpression()) #28, !dbg !4542
  ret i8* %2, !dbg !4545
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_safer(i32 %0) local_unnamed_addr #8 !dbg !4546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4548, metadata !DIExpression()), !dbg !4553
  %2 = icmp ult i32 %0, 3, !dbg !4554
  br i1 %2, label %3, label %8, !dbg !4554

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #28, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %4, metadata !4549, metadata !DIExpression()), !dbg !4556
  %5 = tail call i32* @__errno_location() #32, !dbg !4557
  %6 = load i32, i32* %5, align 4, !dbg !4557, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %6, metadata !4552, metadata !DIExpression()), !dbg !4556
  %7 = tail call i32 @close(i32 %0) #28, !dbg !4558
  store i32 %6, i32* %5, align 4, !dbg !4559, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %4, metadata !4548, metadata !DIExpression()), !dbg !4553
  br label %8, !dbg !4560

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4548, metadata !DIExpression()), !dbg !4553
  ret i32 %9, !dbg !4561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4562 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4600, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 0, metadata !4601, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 0, metadata !4603, metadata !DIExpression()), !dbg !4604
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4605
  call void @llvm.dbg.value(metadata i32 %2, metadata !4602, metadata !DIExpression()), !dbg !4604
  %3 = icmp slt i32 %2, 0, !dbg !4606
  br i1 %3, label %4, label %6, !dbg !4608

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4609
  br label %24, !dbg !4610

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4611
  %8 = icmp eq i32 %7, 0, !dbg !4611
  br i1 %8, label %13, label %9, !dbg !4613

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4614
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !4615
  %12 = icmp eq i64 %11, -1, !dbg !4616
  br i1 %12, label %16, label %13, !dbg !4617

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !4618
  %15 = icmp eq i32 %14, 0, !dbg !4618
  br i1 %15, label %16, label %18, !dbg !4619

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4601, metadata !DIExpression()), !dbg !4604
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4620
  call void @llvm.dbg.value(metadata i32 %21, metadata !4603, metadata !DIExpression()), !dbg !4604
  br label %24, !dbg !4621

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4622
  %20 = load i32, i32* %19, align 4, !dbg !4622, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %20, metadata !4601, metadata !DIExpression()), !dbg !4604
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4620
  call void @llvm.dbg.value(metadata i32 %21, metadata !4603, metadata !DIExpression()), !dbg !4604
  %22 = icmp eq i32 %20, 0, !dbg !4623
  br i1 %22, label %24, label %23, !dbg !4621

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4625, !tbaa !926
  call void @llvm.dbg.value(metadata i32 -1, metadata !4603, metadata !DIExpression()), !dbg !4604
  br label %24, !dbg !4627

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4604
  ret i32 %25, !dbg !4628
}

; Function Attrs: nofree nounwind
declare !dbg !4629 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4632 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4633 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4636 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4674, metadata !DIExpression()), !dbg !4675
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4676
  br i1 %2, label %6, label %3, !dbg !4678

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4679
  %5 = icmp eq i32 %4, 0, !dbg !4679
  br i1 %5, label %6, label %8, !dbg !4680

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4681
  br label %17, !dbg !4682

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4683, metadata !DIExpression()) #28, !dbg !4688
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4690
  %10 = load i32, i32* %9, align 8, !dbg !4690, !tbaa !4165
  %11 = and i32 %10, 256, !dbg !4692
  %12 = icmp eq i32 %11, 0, !dbg !4692
  br i1 %12, label %15, label %13, !dbg !4693

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !4694
  br label %15, !dbg !4694

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4695
  br label %17, !dbg !4696

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4675
  ret i32 %18, !dbg !4697
}

; Function Attrs: nofree nounwind
declare !dbg !4698 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4701 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4740, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %1, metadata !4741, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %2, metadata !4742, metadata !DIExpression()), !dbg !4746
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4747
  %5 = load i8*, i8** %4, align 8, !dbg !4747, !tbaa !4748
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4749
  %7 = load i8*, i8** %6, align 8, !dbg !4749, !tbaa !4750
  %8 = icmp eq i8* %5, %7, !dbg !4751
  br i1 %8, label %9, label %28, !dbg !4752

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4753
  %11 = load i8*, i8** %10, align 8, !dbg !4753, !tbaa !1195
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4754
  %13 = load i8*, i8** %12, align 8, !dbg !4754, !tbaa !4755
  %14 = icmp eq i8* %11, %13, !dbg !4756
  br i1 %14, label %15, label %28, !dbg !4757

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4758
  %17 = load i8*, i8** %16, align 8, !dbg !4758, !tbaa !4759
  %18 = icmp eq i8* %17, null, !dbg !4760
  br i1 %18, label %19, label %28, !dbg !4761

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4762
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %21, metadata !4743, metadata !DIExpression()), !dbg !4764
  %22 = icmp eq i64 %21, -1, !dbg !4765
  br i1 %22, label %30, label %23, !dbg !4767

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4768
  %25 = load i32, i32* %24, align 8, !dbg !4769, !tbaa !4165
  %26 = and i32 %25, -17, !dbg !4769
  store i32 %26, i32* %24, align 8, !dbg !4769, !tbaa !4165
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4770
  store i64 %21, i64* %27, align 8, !dbg !4771, !tbaa !4772
  br label %30, !dbg !4773

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4774
  br label %30, !dbg !4775

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4746
  ret i32 %31, !dbg !4776
}

; Function Attrs: nofree nounwind
declare !dbg !4777 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !4780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4782, metadata !DIExpression()), !dbg !4783
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #28, !dbg !4784
  ret i32 %2, !dbg !4785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4786 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4790, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %1, metadata !4791, metadata !DIExpression()), !dbg !4814
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4815
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #28, !dbg !4815
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4792, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i32 -1, metadata !4802, metadata !DIExpression()), !dbg !4814
  call void @llvm.va_start(i8* nonnull %4), !dbg !4817
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
  ], !dbg !4818

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4819
  %7 = load i32, i32* %6, align 16, !dbg !4819
  %8 = icmp ult i32 %7, 41, !dbg !4819
  br i1 %8, label %9, label %15, !dbg !4819

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4819
  %11 = load i8*, i8** %10, align 16, !dbg !4819
  %12 = zext i32 %7 to i64, !dbg !4819
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4819
  %14 = add nuw nsw i32 %7, 8, !dbg !4819
  store i32 %14, i32* %6, align 16, !dbg !4819
  br label %19, !dbg !4819

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4819
  %17 = load i8*, i8** %16, align 8, !dbg !4819
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4819
  store i8* %18, i8** %16, align 8, !dbg !4819
  br label %19, !dbg !4819

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4819
  %22 = load i32, i32* %21, align 4, !dbg !4819
  call void @llvm.dbg.value(metadata i32 %22, metadata !4803, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 %0, metadata !4821, metadata !DIExpression()) #28, !dbg !4826
  call void @llvm.dbg.value(metadata i32 %22, metadata !4824, metadata !DIExpression()) #28, !dbg !4826
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #28, !dbg !4828
  call void @llvm.dbg.value(metadata i32 %23, metadata !4825, metadata !DIExpression()) #28, !dbg !4826
  call void @llvm.dbg.value(metadata i32 %23, metadata !4802, metadata !DIExpression()), !dbg !4814
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4829
  %26 = load i32, i32* %25, align 16, !dbg !4829
  %27 = icmp ult i32 %26, 41, !dbg !4829
  br i1 %27, label %28, label %34, !dbg !4829

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4829
  %30 = load i8*, i8** %29, align 16, !dbg !4829
  %31 = zext i32 %26 to i64, !dbg !4829
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4829
  %33 = add nuw nsw i32 %26, 8, !dbg !4829
  store i32 %33, i32* %25, align 16, !dbg !4829
  br label %38, !dbg !4829

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4829
  %36 = load i8*, i8** %35, align 8, !dbg !4829
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4829
  store i8* %37, i8** %35, align 8, !dbg !4829
  br label %38, !dbg !4829

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4829
  %41 = load i32, i32* %40, align 4, !dbg !4829
  call void @llvm.dbg.value(metadata i32 %41, metadata !4806, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %0, metadata !180, metadata !DIExpression()) #28, !dbg !4831
  call void @llvm.dbg.value(metadata i32 %41, metadata !181, metadata !DIExpression()) #28, !dbg !4831
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4833, !tbaa !926
  %43 = icmp sgt i32 %42, -1, !dbg !4835
  br i1 %43, label %44, label %56, !dbg !4836

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #28, !dbg !4837
  call void @llvm.dbg.value(metadata i32 %45, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  %46 = icmp sgt i32 %45, -1, !dbg !4839
  br i1 %46, label %51, label %47, !dbg !4841

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #32, !dbg !4842
  %49 = load i32, i32* %48, align 4, !dbg !4842, !tbaa !926
  %50 = icmp eq i32 %49, 22, !dbg !4843
  br i1 %50, label %52, label %51, !dbg !4844

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4845, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %62, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  br label %116, !dbg !4847

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4821, metadata !DIExpression()) #28, !dbg !4848
  call void @llvm.dbg.value(metadata i32 %41, metadata !4824, metadata !DIExpression()) #28, !dbg !4848
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #28, !dbg !4851
  call void @llvm.dbg.value(metadata i32 %53, metadata !4825, metadata !DIExpression()) #28, !dbg !4848
  call void @llvm.dbg.value(metadata i32 %53, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  %54 = icmp sgt i32 %53, -1, !dbg !4852
  br i1 %54, label %55, label %116, !dbg !4854

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4855, !tbaa !926
  br label %60, !dbg !4856

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4821, metadata !DIExpression()) #28, !dbg !4857
  call void @llvm.dbg.value(metadata i32 %41, metadata !4824, metadata !DIExpression()) #28, !dbg !4857
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #28, !dbg !4859
  call void @llvm.dbg.value(metadata i32 %57, metadata !4825, metadata !DIExpression()) #28, !dbg !4857
  call void @llvm.dbg.value(metadata i32 %57, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4860
  call void @llvm.dbg.value(metadata i32 %62, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  %63 = icmp sgt i32 %62, -1, !dbg !4861
  %64 = and i1 %61, %63, !dbg !4847
  br i1 %64, label %65, label %116, !dbg !4847

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #28, !dbg !4862
  call void @llvm.dbg.value(metadata i32 %66, metadata !183, metadata !DIExpression()) #28, !dbg !4863
  %67 = icmp slt i32 %66, 0, !dbg !4864
  br i1 %67, label %72, label %68, !dbg !4865

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4866
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #28, !dbg !4867
  %71 = icmp eq i32 %70, -1, !dbg !4868
  br i1 %71, label %72, label %116, !dbg !4869

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #32, !dbg !4870
  %74 = load i32, i32* %73, align 4, !dbg !4870, !tbaa !926
  call void @llvm.dbg.value(metadata i32 %74, metadata !186, metadata !DIExpression()) #28, !dbg !4871
  %75 = call i32 @close(i32 %62) #28, !dbg !4872
  store i32 %74, i32* %73, align 4, !dbg !4873, !tbaa !926
  call void @llvm.dbg.value(metadata i32 -1, metadata !182, metadata !DIExpression()) #28, !dbg !4831
  br label %116, !dbg !4874

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #28, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %77, metadata !4802, metadata !DIExpression()), !dbg !4814
  br label %116, !dbg !4876

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4877
  %80 = load i32, i32* %79, align 16, !dbg !4877
  %81 = icmp ult i32 %80, 41, !dbg !4877
  br i1 %81, label %82, label %88, !dbg !4877

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4877
  %84 = load i8*, i8** %83, align 16, !dbg !4877
  %85 = zext i32 %80 to i64, !dbg !4877
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4877
  %87 = add nuw nsw i32 %80, 8, !dbg !4877
  store i32 %87, i32* %79, align 16, !dbg !4877
  br label %92, !dbg !4877

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4877
  %90 = load i8*, i8** %89, align 8, !dbg !4877
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4877
  store i8* %91, i8** %89, align 8, !dbg !4877
  br label %92, !dbg !4877

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4877
  %95 = load i32, i32* %94, align 4, !dbg !4877
  call void @llvm.dbg.value(metadata i32 %95, metadata !4808, metadata !DIExpression()), !dbg !4878
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #28, !dbg !4879
  call void @llvm.dbg.value(metadata i32 %96, metadata !4802, metadata !DIExpression()), !dbg !4814
  br label %116, !dbg !4880

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4881
  %99 = load i32, i32* %98, align 16, !dbg !4881
  %100 = icmp ult i32 %99, 41, !dbg !4881
  br i1 %100, label %101, label %107, !dbg !4881

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4881
  %103 = load i8*, i8** %102, align 16, !dbg !4881
  %104 = zext i32 %99 to i64, !dbg !4881
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4881
  %106 = add nuw nsw i32 %99, 8, !dbg !4881
  store i32 %106, i32* %98, align 16, !dbg !4881
  br label %111, !dbg !4881

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4881
  %109 = load i8*, i8** %108, align 8, !dbg !4881
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4881
  store i8* %110, i8** %108, align 8, !dbg !4881
  br label %111, !dbg !4881

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4881
  %114 = load i8*, i8** %113, align 8, !dbg !4881
  call void @llvm.dbg.value(metadata i8* %114, metadata !4812, metadata !DIExpression()), !dbg !4882
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #28, !dbg !4883
  call void @llvm.dbg.value(metadata i32 %115, metadata !4802, metadata !DIExpression()), !dbg !4814
  br label %116, !dbg !4884

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4885
  call void @llvm.dbg.value(metadata i32 %117, metadata !4802, metadata !DIExpression()), !dbg !4814
  call void @llvm.va_end(i8* nonnull %4), !dbg !4886
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #28, !dbg !4887
  ret i32 %117, !dbg !4888
}

declare !dbg !4889 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inlinehint norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!2, !189, !193, !68, !74, !82, !195, !213, !88, !94, !223, !236, !165, !243, !260, !262, !264, !266, !268, !270, !272, !661, !674, !679, !681, !683, !685, !687, !689, !177}
!llvm.ident = !{!691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691}
!llvm.module.flags = !{!692, !693, !694, !695, !696}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!6 = !DIFile(filename: "./lib/savewd.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!30 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!43 = !{!44, !46, !47, !49}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 79, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 146, baseType: !21)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 64, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 147, baseType: !21)
!51 = !{!0}
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1792, elements: !64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !55, line: 50, size: 256, elements: !56)
!55 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!56 = !{!57, !60, !61, !63}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !55, line: 52, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !55, line: 55, baseType: !14, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !55, line: 56, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !55, line: 57, baseType: !14, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 7)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "Version", scope: !68, file: !69, line: 2, type: !58, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !71, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{}
!71 = !{!66}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "file_name", scope: !74, file: !75, line: 46, type: !58, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !76, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!76 = !{!72, !77}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !74, file: !75, line: 56, type: !79, isLocal: true, isDefinition: true)
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "exit_failure", scope: !82, file: !83, line: 24, type: !85, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!84 = !{!80}
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "program_name", scope: !88, file: !89, line: 33, type: !58, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !90, globals: !91, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!90 = !{!46, !44}
!91 = !{!86}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !94, file: !95, line: 85, type: !159, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !96, retainedTypes: !117, globals: !122, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!96 = !{!29, !97, !102}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 242, baseType: !21, size: 32, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 46, baseType: !21, size: 32, elements: !104)
!103 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!105 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!117 = !{!14, !118, !119, !44}
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !{!92, !123, !129, !141, !143, !148, !155, !157}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !94, file: !95, line: 101, type: !125, isLocal: false, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !127)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !94, file: !95, line: 1052, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !95, line: 65, size: 448, elements: !132)
!132 = !{!133, !134, !135, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !131, file: !95, line: 68, baseType: !29, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !95, line: 71, baseType: !14, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !131, file: !95, line: 75, baseType: !136, size: 256, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !131, file: !95, line: 78, baseType: !58, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !131, file: !95, line: 81, baseType: !58, size: 64, offset: 384)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !94, file: !95, line: 116, type: !131, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "slot0", scope: !94, file: !95, line: 842, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 256)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "slotvec", scope: !94, file: !95, line: 845, type: !150, isLocal: true, isDefinition: true)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !95, line: 834, size: 128, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !151, file: !95, line: 836, baseType: !119, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !95, line: 837, baseType: !44, size: 64, offset: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "nslots", scope: !94, file: !95, line: 843, type: !14, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slotvec0", scope: !94, file: !95, line: 844, type: !151, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 704, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!161 = !{!162}
!162 = !DISubrange(count: 11)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !165, file: !166, line: 26, type: !168, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !167, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !{!163}
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 376, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 47)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !173, file: !174, line: 507, type: !14, isLocal: true, isDefinition: true)
!173 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !174, file: !174, line: 488, type: !175, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !179)
!174 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !14, !14}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !178, splitDebugInlining: false, nameTableKind: None)
!178 = !{!171}
!179 = !{!180, !181, !182, !183, !186}
!180 = !DILocalVariable(name: "fd", arg: 1, scope: !173, file: !174, line: 488, type: !14)
!181 = !DILocalVariable(name: "target", arg: 2, scope: !173, file: !174, line: 488, type: !14)
!182 = !DILocalVariable(name: "result", scope: !173, file: !174, line: 490, type: !14)
!183 = !DILocalVariable(name: "flags", scope: !184, file: !174, line: 531, type: !14)
!184 = distinct !DILexicalBlock(scope: !185, file: !174, line: 530, column: 5)
!185 = distinct !DILexicalBlock(scope: !173, file: !174, line: 529, column: 7)
!186 = !DILocalVariable(name: "saved_errno", scope: !187, file: !174, line: 534, type: !14)
!187 = distinct !DILexicalBlock(scope: !188, file: !174, line: 533, column: 9)
!188 = distinct !DILexicalBlock(scope: !184, file: !174, line: 532, column: 11)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !191, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!192}
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "src/selinux.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/mkdir-p.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !{!198, !208}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !199, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !199, file: !6, line: 66, baseType: !198, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !6, line: 74, baseType: !203, size: 32, offset: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !6, line: 69, size: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !203, file: !6, line: 71, baseType: !14, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !203, file: !6, line: 72, baseType: !14, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !203, file: !6, line: 73, baseType: !17, size: 32)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 86, baseType: !21, size: 32, elements: !209)
!209 = !{!210, !211}
!210 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2, isUnsigned: true)
!212 = !{!47, !49}
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !222, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !214, line: 78, baseType: !21, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!220 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!221 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!222 = !{!119}
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/savewd.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !{!226, !208}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !227, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !227, file: !6, line: 66, baseType: !226, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !6, line: 74, baseType: !231, size: 32, offset: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !6, line: 69, size: 32, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !231, file: !6, line: 71, baseType: !14, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !231, file: !6, line: 72, baseType: !14, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !231, file: !6, line: 73, baseType: !17, size: 32)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = !{!239}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 40, baseType: !21, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!242 = !{!46}
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !259, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = !{!246}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !248, file: !247, line: 186, baseType: !21, size: 32, elements: !257)
!247 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!248 = distinct !DISubprogram(name: "x2nrealloc", scope: !247, file: !247, line: 174, type: !249, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!46, !46, !251, !119}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!252 = !{!253, !254, !255, !256}
!253 = !DILocalVariable(name: "p", arg: 1, scope: !248, file: !247, line: 174, type: !46)
!254 = !DILocalVariable(name: "pn", arg: 2, scope: !248, file: !247, line: 174, type: !251)
!255 = !DILocalVariable(name: "s", arg: 3, scope: !248, file: !247, line: 174, type: !119)
!256 = !DILocalVariable(name: "n", scope: !248, file: !247, line: 176, type: !119)
!257 = !{!258}
!258 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!259 = !{!119, !44, !46}
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !222, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/open-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!274 = !{!275}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 41, baseType: !21, size: 32, elements: !277)
!276 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!278 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!279 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!280 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!281 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!282 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!283 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!284 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!285 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!286 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!287 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!288 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!289 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!290 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!291 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!316 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!317 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!318 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!319 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!320 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!321 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!322 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!323 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!324 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!325 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!326 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!327 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!386 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!473 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!546 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!547 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!548 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!549 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!550 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!551 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!552 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!554 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!555 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!556 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!557 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!558 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!559 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!560 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!563 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!565 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!593 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!594 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!595 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!596 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!597 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!602 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!603 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!604 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!605 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!664, !208}
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !665, file: !6, line: 39, baseType: !21, size: 32, elements: !22)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 36, size: 64, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !665, file: !6, line: 66, baseType: !664, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !6, line: 74, baseType: !669, size: 32, offset: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !6, line: 69, size: 32, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !669, file: !6, line: 71, baseType: !14, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !669, file: !6, line: 72, baseType: !14, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !669, file: !6, line: 73, baseType: !17, size: 32)
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !676, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/dirchownmod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!676 = !{!47, !49, !677}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !18, line: 69, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 150, baseType: !21)
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!691 = !{!"clang version 12.0.1"}
!692 = !{i32 7, !"Dwarf Version", i32 4}
!693 = !{i32 2, !"Debug Info Version", i32 3}
!694 = !{i32 1, !"wchar_size", i32 4}
!695 = !{i32 7, !"PIC Level", i32 2}
!696 = !{i32 7, !"PIE Level", i32 2}
!697 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !698, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !14}
!700 = !{!701}
!701 = !DILocalVariable(name: "status", arg: 1, scope: !697, file: !3, line: 53, type: !14)
!702 = !DILocation(line: 0, scope: !697)
!703 = !DILocation(line: 55, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 55, column: 7)
!705 = !DILocation(line: 55, column: 7, scope: !697)
!706 = !DILocation(line: 56, column: 5, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 56, column: 5)
!708 = !{!709, !709, i64 0}
!709 = !{!"any pointer", !710, i64 0}
!710 = !{!"omnipotent char", !711, i64 0}
!711 = !{!"Simple C/C++ TBAA"}
!712 = !DILocation(line: 59, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !704, file: !3, line: 58, column: 5)
!714 = !DILocation(line: 60, column: 7, scope: !713)
!715 = !DILocation(line: 590, column: 3, scope: !716, inlinedAt: !720)
!716 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !717, file: !717, line: 588, type: !718, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!717 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!718 = !DISubroutineType(types: !719)
!719 = !{null}
!720 = distinct !DILocation(line: 64, column: 7, scope: !713)
!721 = !DILocation(line: 66, column: 7, scope: !713)
!722 = !DILocation(line: 71, column: 7, scope: !713)
!723 = !DILocation(line: 77, column: 7, scope: !713)
!724 = !DILocation(line: 78, column: 7, scope: !713)
!725 = !DILocalVariable(name: "program", arg: 1, scope: !726, file: !717, line: 634, type: !58)
!726 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !717, file: !717, line: 634, type: !727, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !58}
!729 = !{!725, !730, !737, !738, !740}
!730 = !DILocalVariable(name: "infomap", scope: !726, file: !717, line: 636, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 896, elements: !64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !726, file: !717, line: 636, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !733, file: !717, line: 636, baseType: !58, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !717, line: 636, baseType: !58, size: 64, offset: 64)
!737 = !DILocalVariable(name: "node", scope: !726, file: !717, line: 646, type: !58)
!738 = !DILocalVariable(name: "map_prog", scope: !726, file: !717, line: 647, type: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!740 = !DILocalVariable(name: "lc_messages", scope: !726, file: !717, line: 659, type: !58)
!741 = !DILocation(line: 0, scope: !726, inlinedAt: !742)
!742 = distinct !DILocation(line: 79, column: 7, scope: !713)
!743 = !DILocation(line: 636, column: 3, scope: !726, inlinedAt: !742)
!744 = !DILocation(line: 636, column: 67, scope: !726, inlinedAt: !742)
!745 = !DILocation(line: 647, column: 36, scope: !726, inlinedAt: !742)
!746 = !DILocation(line: 649, column: 3, scope: !726, inlinedAt: !742)
!747 = !DILocation(line: 649, column: 33, scope: !726, inlinedAt: !742)
!748 = !DILocation(line: 650, column: 13, scope: !726, inlinedAt: !742)
!749 = !DILocation(line: 649, column: 20, scope: !726, inlinedAt: !742)
!750 = !{!751, !709, i64 0}
!751 = !{!"infomap", !709, i64 0, !709, i64 8}
!752 = !DILocation(line: 649, column: 10, scope: !726, inlinedAt: !742)
!753 = !DILocation(line: 649, column: 28, scope: !726, inlinedAt: !742)
!754 = distinct !{!754, !746, !748, !755}
!755 = !{!"llvm.loop.mustprogress"}
!756 = !DILocation(line: 652, column: 17, scope: !757, inlinedAt: !742)
!757 = distinct !DILexicalBlock(scope: !726, file: !717, line: 652, column: 7)
!758 = !{!751, !709, i64 8}
!759 = !DILocation(line: 652, column: 7, scope: !757, inlinedAt: !742)
!760 = !DILocation(line: 652, column: 7, scope: !726, inlinedAt: !742)
!761 = !DILocation(line: 655, column: 3, scope: !726, inlinedAt: !742)
!762 = !DILocation(line: 659, column: 29, scope: !726, inlinedAt: !742)
!763 = !DILocation(line: 660, column: 7, scope: !764, inlinedAt: !742)
!764 = distinct !DILexicalBlock(scope: !726, file: !717, line: 660, column: 7)
!765 = !DILocation(line: 660, column: 19, scope: !764, inlinedAt: !742)
!766 = !DILocation(line: 660, column: 22, scope: !764, inlinedAt: !742)
!767 = !DILocation(line: 660, column: 7, scope: !726, inlinedAt: !742)
!768 = !DILocation(line: 666, column: 7, scope: !769, inlinedAt: !742)
!769 = distinct !DILexicalBlock(scope: !764, file: !717, line: 661, column: 5)
!770 = !DILocation(line: 668, column: 5, scope: !769, inlinedAt: !742)
!771 = !DILocation(line: 669, column: 3, scope: !726, inlinedAt: !742)
!772 = !DILocation(line: 671, column: 3, scope: !726, inlinedAt: !742)
!773 = !DILocation(line: 673, column: 1, scope: !726, inlinedAt: !742)
!774 = !DILocation(line: 81, column: 3, scope: !697)
!775 = !DISubprogram(name: "dcgettext", scope: !776, file: !776, line: 51, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!776 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!777 = !DISubroutineType(types: !778)
!778 = !{!44, !58, !58, !14}
!779 = !DISubprogram(name: "fputs_unlocked", scope: !780, file: !780, line: 667, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!780 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!781 = !DISubroutineType(types: !782)
!782 = !{!14, !58, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !786)
!785 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !802, !803, !804, !805, !808, !809, !811, !815, !818, !820, !823, !826, !827, !828, !829, !830}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !784, file: !785, line: 51, baseType: !14, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !784, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !784, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !784, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !784, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !784, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !784, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !784, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !784, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !784, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !784, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !784, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !784, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !785, line: 36, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !784, file: !785, line: 70, baseType: !783, size: 64, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !784, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !784, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !784, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 152, baseType: !807)
!807 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !784, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !784, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!810 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !784, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 1)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !784, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !785, line: 43, baseType: null)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !784, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 153, baseType: !807)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !784, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !785, line: 37, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !784, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !785, line: 38, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !784, file: !785, line: 93, baseType: !783, size: 64, offset: 1344)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !784, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !784, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !784, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !784, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 20)
!834 = !DISubprogram(name: "setlocale", scope: !835, file: !835, line: 122, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!835 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!836 = !DISubroutineType(types: !837)
!837 = !{!44, !14, !58}
!838 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !839, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!839 = !DISubroutineType(types: !840)
!840 = !{!14, !14, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!842 = !{!843, !844, !845, !846, !847, !848, !860, !863, !866}
!843 = !DILocalVariable(name: "argc", arg: 1, scope: !838, file: !3, line: 189, type: !14)
!844 = !DILocalVariable(name: "argv", arg: 2, scope: !838, file: !3, line: 189, type: !841)
!845 = !DILocalVariable(name: "specified_mode", scope: !838, file: !3, line: 191, type: !58)
!846 = !DILocalVariable(name: "optc", scope: !838, file: !3, line: 192, type: !14)
!847 = !DILocalVariable(name: "scontext", scope: !838, file: !3, line: 193, type: !58)
!848 = !DILocalVariable(name: "options", scope: !838, file: !3, line: 194, type: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 85, size: 256, elements: !850)
!850 = !{!851, !855, !856, !857, !858, !859}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !849, file: !3, line: 89, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!14, !58, !58, !46}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "umask_value", scope: !849, file: !3, line: 92, baseType: !677, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !849, file: !3, line: 95, baseType: !677, size: 32, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !849, file: !3, line: 98, baseType: !677, size: 32, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !849, file: !3, line: 101, baseType: !79, size: 8, offset: 160)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !849, file: !3, line: 104, baseType: !58, size: 64, offset: 192)
!860 = !DILocalVariable(name: "ret", scope: !861, file: !3, line: 261, type: !14)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 260, column: 5)
!862 = distinct !DILexicalBlock(scope: !838, file: !3, line: 259, column: 7)
!863 = !DILocalVariable(name: "umask_value", scope: !864, file: !3, line: 276, type: !677)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 275, column: 5)
!865 = distinct !DILexicalBlock(scope: !838, file: !3, line: 274, column: 7)
!866 = !DILocalVariable(name: "change", scope: !867, file: !3, line: 282, type: !869)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 281, column: 9)
!868 = distinct !DILexicalBlock(scope: !864, file: !3, line: 280, column: 11)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !871, line: 25, flags: DIFlagFwdDecl)
!871 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!872 = !DILocation(line: 0, scope: !838)
!873 = !DILocation(line: 194, column: 3, scope: !838)
!874 = !DILocation(line: 194, column: 24, scope: !838)
!875 = !DILocation(line: 196, column: 11, scope: !838)
!876 = !DILocation(line: 196, column: 34, scope: !838)
!877 = !{!878, !709, i64 0}
!878 = !{!"mkdir_options", !709, i64 0, !879, i64 8, !879, i64 12, !879, i64 16, !880, i64 20, !709, i64 24}
!879 = !{!"int", !710, i64 0}
!880 = !{!"_Bool", !710, i64 0}
!881 = !DILocation(line: 197, column: 11, scope: !838)
!882 = !DILocation(line: 197, column: 16, scope: !838)
!883 = !{!878, !879, i64 12}
!884 = !DILocation(line: 198, column: 11, scope: !838)
!885 = !DILocation(line: 198, column: 21, scope: !838)
!886 = !{!878, !879, i64 16}
!887 = !DILocation(line: 199, column: 11, scope: !838)
!888 = !DILocation(line: 199, column: 36, scope: !838)
!889 = !{!878, !709, i64 24}
!890 = !DILocation(line: 200, column: 11, scope: !838)
!891 = !DILocation(line: 200, column: 32, scope: !838)
!892 = !{!878, !880, i64 20}
!893 = !DILocation(line: 203, column: 21, scope: !838)
!894 = !DILocation(line: 203, column: 3, scope: !838)
!895 = !DILocation(line: 204, column: 3, scope: !838)
!896 = !DILocation(line: 205, column: 3, scope: !838)
!897 = !DILocation(line: 206, column: 3, scope: !838)
!898 = !DILocation(line: 208, column: 3, scope: !838)
!899 = !DILocation(line: 210, column: 3, scope: !838)
!900 = !DILocation(line: 210, column: 18, scope: !838)
!901 = !DILocation(line: 215, column: 42, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 213, column: 9)
!903 = distinct !DILexicalBlock(scope: !838, file: !3, line: 211, column: 5)
!904 = !DILocation(line: 216, column: 11, scope: !902)
!905 = distinct !{!905, !899, !906, !755}
!906 = !DILocation(line: 248, column: 5, scope: !838)
!907 = !DILocation(line: 218, column: 28, scope: !902)
!908 = !DILocation(line: 219, column: 11, scope: !902)
!909 = !DILocation(line: 221, column: 46, scope: !902)
!910 = !DILocation(line: 221, column: 44, scope: !902)
!911 = !DILocation(line: 222, column: 11, scope: !902)
!912 = !DILocation(line: 236, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 236, column: 20)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 229, column: 20)
!915 = distinct !DILexicalBlock(scope: !902, file: !3, line: 224, column: 15)
!916 = !DILocation(line: 236, column: 20, scope: !914)
!917 = !DILocation(line: 239, column: 22, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 237, column: 13)
!919 = !DILocation(line: 238, column: 15, scope: !918)
!920 = !DILocation(line: 241, column: 13, scope: !918)
!921 = !DILocation(line: 243, column: 9, scope: !902)
!922 = !DILocation(line: 244, column: 9, scope: !902)
!923 = !DILocation(line: 246, column: 11, scope: !902)
!924 = !DILocation(line: 250, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !838, file: !3, line: 250, column: 7)
!926 = !{!879, !879, i64 0}
!927 = !DILocation(line: 250, column: 14, scope: !925)
!928 = !DILocation(line: 250, column: 7, scope: !838)
!929 = !DILocation(line: 252, column: 20, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 251, column: 5)
!931 = !DILocation(line: 252, column: 7, scope: !930)
!932 = !DILocation(line: 253, column: 7, scope: !930)
!933 = !DILocation(line: 274, column: 38, scope: !865)
!934 = !DILocation(line: 276, column: 28, scope: !864)
!935 = !DILocation(line: 0, scope: !864)
!936 = !DILocation(line: 277, column: 7, scope: !864)
!937 = !DILocation(line: 278, column: 15, scope: !864)
!938 = !DILocation(line: 278, column: 27, scope: !864)
!939 = !{!878, !879, i64 8}
!940 = !DILocation(line: 280, column: 11, scope: !864)
!941 = !DILocation(line: 282, column: 40, scope: !867)
!942 = !DILocation(line: 0, scope: !867)
!943 = !DILocation(line: 283, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !867, file: !3, line: 283, column: 15)
!945 = !DILocation(line: 283, column: 15, scope: !867)
!946 = !DILocation(line: 284, column: 13, scope: !944)
!947 = !DILocation(line: 286, column: 26, scope: !867)
!948 = !DILocation(line: 286, column: 24, scope: !867)
!949 = !DILocation(line: 288, column: 17, scope: !867)
!950 = !DILocation(line: 288, column: 11, scope: !867)
!951 = !DILocation(line: 289, column: 9, scope: !867)
!952 = !DILocation(line: 291, column: 22, scope: !868)
!953 = !DILocation(line: 294, column: 39, scope: !838)
!954 = !DILocation(line: 294, column: 37, scope: !838)
!955 = !DILocation(line: 294, column: 52, scope: !838)
!956 = !DILocation(line: 294, column: 10, scope: !838)
!957 = !DILocation(line: 296, column: 1, scope: !838)
!958 = !DILocation(line: 294, column: 3, scope: !838)
!959 = !DISubprogram(name: "bindtextdomain", scope: !776, file: !776, line: 86, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!960 = !DISubroutineType(types: !961)
!961 = !{!44, !58, !58}
!962 = !DISubprogram(name: "textdomain", scope: !776, file: !776, line: 82, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!963 = !DISubroutineType(types: !964)
!964 = !{!44, !58}
!965 = !DISubprogram(name: "atexit", scope: !966, file: !966, line: 595, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!966 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!967 = !DISubroutineType(types: !968)
!968 = !{!14, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!970 = !DISubprogram(name: "getopt_long", scope: !55, file: !55, line: 66, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!971 = !DISubroutineType(types: !972)
!972 = !{!14, !14, !973, !58, !975, !62}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!976 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 122, type: !853, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!977 = !{!978, !979, !980, !981, !984, !985, !986, !987}
!978 = !DILocalVariable(name: "dir", arg: 1, scope: !976, file: !3, line: 122, type: !58)
!979 = !DILocalVariable(name: "component", arg: 2, scope: !976, file: !3, line: 122, type: !58)
!980 = !DILocalVariable(name: "options", arg: 3, scope: !976, file: !3, line: 122, type: !46)
!981 = !DILocalVariable(name: "o", scope: !976, file: !3, line: 124, type: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!984 = !DILocalVariable(name: "user_wx", scope: !976, file: !3, line: 131, type: !677)
!985 = !DILocalVariable(name: "self_denying_umask", scope: !976, file: !3, line: 132, type: !79)
!986 = !DILocalVariable(name: "r", scope: !976, file: !3, line: 135, type: !14)
!987 = !DILocalVariable(name: "mkdir_errno", scope: !988, file: !3, line: 138, type: !14)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 137, column: 5)
!989 = distinct !DILexicalBlock(scope: !976, file: !3, line: 136, column: 7)
!990 = !DILocation(line: 0, scope: !976)
!991 = !DILocation(line: 126, column: 10, scope: !992)
!992 = distinct !DILexicalBlock(scope: !976, file: !3, line: 126, column: 7)
!993 = !{i8 0, i8 2}
!994 = !DILocation(line: 126, column: 31, scope: !992)
!995 = !DILocalVariable(name: "path", arg: 1, scope: !996, file: !997, line: 44, type: !58)
!996 = distinct !DISubprogram(name: "defaultcon", scope: !997, file: !997, line: 44, type: !998, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!997 = !DIFile(filename: "src/selinux.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!998 = !DISubroutineType(types: !999)
!999 = !{!14, !58, !677}
!1000 = !{!995, !1001}
!1001 = !DILocalVariable(name: "mode", arg: 2, scope: !996, file: !997, line: 44, type: !677)
!1002 = !DILocation(line: 0, scope: !996, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 126, column: 34, scope: !992)
!1004 = !DILocation(line: 45, column: 3, scope: !996, inlinedAt: !1003)
!1005 = !DILocation(line: 45, column: 9, scope: !996, inlinedAt: !1003)
!1006 = !DILocation(line: 126, column: 7, scope: !976)
!1007 = !DILocation(line: 132, column: 33, scope: !976)
!1008 = !DILocation(line: 132, column: 45, scope: !976)
!1009 = !DILocation(line: 132, column: 56, scope: !976)
!1010 = !DILocation(line: 133, column: 7, scope: !976)
!1011 = !DILocation(line: 135, column: 11, scope: !976)
!1012 = !DILocation(line: 136, column: 7, scope: !976)
!1013 = !DILocation(line: 134, column: 27, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !976, file: !3, line: 133, column: 7)
!1015 = !DILocation(line: 134, column: 5, scope: !1014)
!1016 = !DILocation(line: 138, column: 25, scope: !988)
!1017 = !DILocation(line: 0, scope: !988)
!1018 = !DILocation(line: 139, column: 17, scope: !988)
!1019 = !DILocation(line: 139, column: 7, scope: !988)
!1020 = !DILocation(line: 140, column: 13, scope: !988)
!1021 = !DILocation(line: 141, column: 5, scope: !988)
!1022 = !DILocation(line: 142, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !976, file: !3, line: 142, column: 7)
!1024 = !DILocation(line: 142, column: 7, scope: !976)
!1025 = !DILocation(line: 144, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 143, column: 5)
!1027 = !DILocation(line: 144, column: 38, scope: !1026)
!1028 = !DILocalVariable(name: "dir", arg: 1, scope: !1029, file: !3, line: 109, type: !58)
!1029 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 109, type: !1030, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !58, !46}
!1032 = !{!1028, !1033, !1034}
!1033 = !DILocalVariable(name: "options", arg: 2, scope: !1029, file: !3, line: 109, type: !46)
!1034 = !DILocalVariable(name: "o", scope: !1029, file: !3, line: 111, type: !982)
!1035 = !DILocation(line: 0, scope: !1029, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 145, column: 7, scope: !1026)
!1037 = !DILocation(line: 112, column: 10, scope: !1038, inlinedAt: !1036)
!1038 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 112, column: 7)
!1039 = !DILocation(line: 112, column: 7, scope: !1038, inlinedAt: !1036)
!1040 = !DILocation(line: 112, column: 7, scope: !1029, inlinedAt: !1036)
!1041 = !DILocation(line: 113, column: 19, scope: !1038, inlinedAt: !1036)
!1042 = !DILocation(line: 113, column: 56, scope: !1038, inlinedAt: !1036)
!1043 = !DILocation(line: 113, column: 5, scope: !1038, inlinedAt: !1036)
!1044 = !DILocation(line: 147, column: 3, scope: !976)
!1045 = !DISubprogram(name: "error", scope: !1046, file: !1046, line: 52, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!1046 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !14, !14, !58, null}
!1049 = !DISubprogram(name: "umask", scope: !1050, file: !1050, line: 308, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!1050 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!21, !21}
!1053 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 152, type: !1054, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!14, !44, !1056, !46}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1057 = !{!1058, !1059, !1060, !1061, !1062}
!1058 = !DILocalVariable(name: "dir", arg: 1, scope: !1053, file: !3, line: 152, type: !44)
!1059 = !DILocalVariable(name: "wd", arg: 2, scope: !1053, file: !3, line: 152, type: !1056)
!1060 = !DILocalVariable(name: "options", arg: 3, scope: !1053, file: !3, line: 152, type: !46)
!1061 = !DILocalVariable(name: "o", scope: !1053, file: !3, line: 154, type: !982)
!1062 = !DILocalVariable(name: "ret", scope: !1053, file: !3, line: 165, type: !14)
!1063 = !DILocation(line: 0, scope: !1053)
!1064 = !DILocation(line: 157, column: 10, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 157, column: 7)
!1066 = !DILocation(line: 157, column: 7, scope: !1053)
!1067 = !DILocation(line: 0, scope: !996, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 159, column: 42, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 159, column: 11)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 158, column: 5)
!1071 = !DILocation(line: 45, column: 3, scope: !996, inlinedAt: !1068)
!1072 = !DILocation(line: 45, column: 9, scope: !996, inlinedAt: !1068)
!1073 = !DILocation(line: 159, column: 11, scope: !1070)
!1074 = !DILocation(line: 165, column: 44, scope: !1053)
!1075 = !DILocation(line: 166, column: 35, scope: !1053)
!1076 = !DILocation(line: 167, column: 35, scope: !1053)
!1077 = !DILocation(line: 165, column: 14, scope: !1053)
!1078 = !DILocation(line: 176, column: 27, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 176, column: 7)
!1080 = !DILocation(line: 176, column: 33, scope: !1079)
!1081 = !DILocation(line: 177, column: 7, scope: !1079)
!1082 = !DILocation(line: 177, column: 13, scope: !1079)
!1083 = !DILocation(line: 177, column: 10, scope: !1079)
!1084 = !DILocation(line: 176, column: 7, scope: !1053)
!1085 = !DILocalVariable(name: "path", arg: 1, scope: !1086, file: !997, line: 40, type: !58)
!1086 = distinct !DISubprogram(name: "restorecon", scope: !997, file: !997, line: 40, type: !1087, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!79, !58, !79, !79}
!1089 = !{!1085, !1090, !1091}
!1090 = !DILocalVariable(name: "recurse", arg: 2, scope: !1086, file: !997, line: 40, type: !79)
!1091 = !DILocalVariable(name: "preserve", arg: 3, scope: !1086, file: !997, line: 40, type: !79)
!1092 = !DILocation(line: 0, scope: !1086, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 179, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 179, column: 11)
!1095 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 178, column: 5)
!1096 = !DILocation(line: 41, column: 3, scope: !1086, inlinedAt: !1093)
!1097 = !DILocation(line: 41, column: 9, scope: !1086, inlinedAt: !1093)
!1098 = !DILocation(line: 179, column: 11, scope: !1095)
!1099 = !DILocation(line: 185, column: 3, scope: !1053)
!1100 = !DILocation(line: 0, scope: !1029)
!1101 = !DILocation(line: 112, column: 10, scope: !1038)
!1102 = !DILocation(line: 112, column: 7, scope: !1038)
!1103 = !DILocation(line: 112, column: 7, scope: !1029)
!1104 = !DILocation(line: 113, column: 19, scope: !1038)
!1105 = !DILocation(line: 113, column: 56, scope: !1038)
!1106 = !DILocation(line: 113, column: 5, scope: !1038)
!1107 = !DILocation(line: 114, column: 1, scope: !1029)
!1108 = !DISubprogram(name: "mkdir", scope: !1050, file: !1050, line: 317, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!14, !58, !21}
!1111 = distinct !DISubprogram(name: "prog_fprintf", scope: !190, file: !190, line: 28, type: !1112, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1149)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1114, !58, null}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !1117)
!1116 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1117, file: !785, line: 51, baseType: !14, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1117, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1117, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1117, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1117, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1117, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1117, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1117, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1117, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1117, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1117, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1117, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1117, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1117, file: !785, line: 70, baseType: !1133, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1117, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1117, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1117, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1117, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1117, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1117, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1117, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1117, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1117, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1117, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1117, file: !785, line: 93, baseType: !1133, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1117, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1117, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1117, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1117, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!1149 = !{!1150, !1151, !1152}
!1150 = !DILocalVariable(name: "fp", arg: 1, scope: !1111, file: !190, line: 28, type: !1114)
!1151 = !DILocalVariable(name: "fmt", arg: 2, scope: !1111, file: !190, line: 28, type: !58)
!1152 = !DILocalVariable(name: "ap", scope: !1111, file: !190, line: 30, type: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !780, line: 52, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1155, line: 32, baseType: !1156)
!1155 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !190, baseType: !1157)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 192, elements: !813)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1158, file: !190, line: 30, baseType: !21, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1158, file: !190, line: 30, baseType: !21, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1158, file: !190, line: 30, baseType: !46, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1158, file: !190, line: 30, baseType: !46, size: 64, offset: 128)
!1164 = !DILocation(line: 0, scope: !1111)
!1165 = !DILocation(line: 30, column: 3, scope: !1111)
!1166 = !DILocation(line: 30, column: 11, scope: !1111)
!1167 = !DILocation(line: 31, column: 3, scope: !1111)
!1168 = !DILocation(line: 32, column: 3, scope: !1111)
!1169 = !DILocation(line: 33, column: 3, scope: !1111)
!1170 = !DILocalVariable(name: "__stream", arg: 1, scope: !1171, file: !1172, line: 132, type: !1175)
!1171 = distinct !DISubprogram(name: "vfprintf", scope: !1172, file: !1172, line: 132, type: !1173, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1178)
!1172 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!14, !1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1114)
!1176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1178 = !{!1170, !1179, !1180}
!1179 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1171, file: !1172, line: 133, type: !1176)
!1180 = !DILocalVariable(name: "__ap", arg: 3, scope: !1171, file: !1172, line: 133, type: !1177)
!1181 = !DILocation(line: 0, scope: !1171, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 34, column: 3, scope: !1111)
!1183 = !DILocation(line: 135, column: 10, scope: !1171, inlinedAt: !1182)
!1184 = !DILocation(line: 35, column: 3, scope: !1111)
!1185 = !DILocalVariable(name: "__c", arg: 1, scope: !1186, file: !1187, line: 91, type: !14)
!1186 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1187, file: !1187, line: 91, type: !1188, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1190)
!1187 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!14, !14, !1114}
!1190 = !{!1185, !1191}
!1191 = !DILocalVariable(name: "__stream", arg: 2, scope: !1186, file: !1187, line: 91, type: !1114)
!1192 = !DILocation(line: 0, scope: !1186, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 36, column: 3, scope: !1111)
!1194 = !DILocation(line: 93, column: 10, scope: !1186, inlinedAt: !1193)
!1195 = !{!1196, !709, i64 40}
!1196 = !{!"_IO_FILE", !879, i64 0, !709, i64 8, !709, i64 16, !709, i64 24, !709, i64 32, !709, i64 40, !709, i64 48, !709, i64 56, !709, i64 64, !709, i64 72, !709, i64 80, !709, i64 88, !709, i64 96, !709, i64 104, !879, i64 112, !879, i64 116, !1197, i64 120, !1198, i64 128, !710, i64 130, !710, i64 131, !709, i64 136, !1197, i64 144, !709, i64 152, !709, i64 160, !709, i64 168, !709, i64 176, !1197, i64 184, !879, i64 192, !710, i64 196}
!1197 = !{!"long", !710, i64 0}
!1198 = !{!"short", !710, i64 0}
!1199 = !{!1196, !709, i64 48}
!1200 = !{!"branch_weights", i32 2000, i32 1}
!1201 = !{!710, !710, i64 0}
!1202 = !DILocation(line: 37, column: 1, scope: !1111)
!1203 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !75, file: !75, line: 51, type: !727, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1204)
!1204 = !{!1205}
!1205 = !DILocalVariable(name: "file", arg: 1, scope: !1203, file: !75, line: 51, type: !58)
!1206 = !DILocation(line: 0, scope: !1203)
!1207 = !DILocation(line: 53, column: 13, scope: !1203)
!1208 = !DILocation(line: 54, column: 1, scope: !1203)
!1209 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !75, file: !75, line: 88, type: !1210, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !79}
!1212 = !{!1213}
!1213 = !DILocalVariable(name: "ignore", arg: 1, scope: !1209, file: !75, line: 88, type: !79)
!1214 = !DILocation(line: 0, scope: !1209)
!1215 = !DILocation(line: 90, column: 16, scope: !1209)
!1216 = !{!880, !880, i64 0}
!1217 = !DILocation(line: 91, column: 1, scope: !1209)
!1218 = distinct !DISubprogram(name: "close_stdout", scope: !75, file: !75, line: 117, type: !718, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1219)
!1219 = !{!1220}
!1220 = !DILocalVariable(name: "write_error", scope: !1221, file: !75, line: 122, type: !58)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !75, line: 121, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !75, line: 119, column: 7)
!1223 = !DILocation(line: 119, column: 21, scope: !1222)
!1224 = !DILocation(line: 119, column: 7, scope: !1222)
!1225 = !DILocation(line: 119, column: 29, scope: !1222)
!1226 = !DILocation(line: 120, column: 7, scope: !1222)
!1227 = !DILocation(line: 120, column: 12, scope: !1222)
!1228 = !DILocation(line: 120, column: 25, scope: !1222)
!1229 = !DILocation(line: 120, column: 28, scope: !1222)
!1230 = !DILocation(line: 120, column: 34, scope: !1222)
!1231 = !DILocation(line: 119, column: 7, scope: !1218)
!1232 = !DILocation(line: 122, column: 33, scope: !1221)
!1233 = !DILocation(line: 0, scope: !1221)
!1234 = !DILocation(line: 123, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1221, file: !75, line: 123, column: 11)
!1236 = !DILocation(line: 0, scope: !1235)
!1237 = !DILocation(line: 123, column: 11, scope: !1221)
!1238 = !DILocation(line: 124, column: 36, scope: !1235)
!1239 = !DILocation(line: 124, column: 9, scope: !1235)
!1240 = !DILocation(line: 127, column: 9, scope: !1235)
!1241 = !DILocation(line: 129, column: 14, scope: !1221)
!1242 = !DILocation(line: 129, column: 7, scope: !1221)
!1243 = !DILocation(line: 134, column: 42, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1218, file: !75, line: 134, column: 7)
!1245 = !DILocation(line: 134, column: 28, scope: !1244)
!1246 = !DILocation(line: 134, column: 50, scope: !1244)
!1247 = !DILocation(line: 134, column: 7, scope: !1218)
!1248 = !DILocation(line: 135, column: 12, scope: !1244)
!1249 = !DILocation(line: 135, column: 5, scope: !1244)
!1250 = !DILocation(line: 136, column: 1, scope: !1218)
!1251 = distinct !DISubprogram(name: "make_dir_parents", scope: !196, file: !196, line: 85, type: !1252, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1256)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!79, !44, !1254, !852, !46, !677, !1255, !677, !47, !49, !79}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1272, !1273, !1276, !1277, !1278, !1281, !1319, !1324, !1325, !1328}
!1257 = !DILocalVariable(name: "dir", arg: 1, scope: !1251, file: !196, line: 85, type: !44)
!1258 = !DILocalVariable(name: "wd", arg: 2, scope: !1251, file: !196, line: 86, type: !1254)
!1259 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1251, file: !196, line: 87, type: !852)
!1260 = !DILocalVariable(name: "options", arg: 4, scope: !1251, file: !196, line: 88, type: !46)
!1261 = !DILocalVariable(name: "mode", arg: 5, scope: !1251, file: !196, line: 89, type: !677)
!1262 = !DILocalVariable(name: "announce", arg: 6, scope: !1251, file: !196, line: 90, type: !1255)
!1263 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1251, file: !196, line: 91, type: !677)
!1264 = !DILocalVariable(name: "owner", arg: 8, scope: !1251, file: !196, line: 92, type: !47)
!1265 = !DILocalVariable(name: "group", arg: 9, scope: !1251, file: !196, line: 93, type: !49)
!1266 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1251, file: !196, line: 94, type: !79)
!1267 = !DILocalVariable(name: "mkdir_errno", scope: !1251, file: !196, line: 96, type: !14)
!1268 = !DILocalVariable(name: "prefix_len", scope: !1269, file: !196, line: 100, type: !1271)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !196, line: 99, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1251, file: !196, line: 98, column: 7)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !120, line: 35, baseType: !807)
!1272 = !DILocalVariable(name: "savewd_chdir_options", scope: !1269, file: !196, line: 101, type: !14)
!1273 = !DILocalVariable(name: "keep_owner", scope: !1274, file: !196, line: 121, type: !79)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !196, line: 115, column: 9)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !196, line: 114, column: 11)
!1276 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1274, file: !196, line: 122, type: !79)
!1277 = !DILocalVariable(name: "mkdir_mode", scope: !1274, file: !196, line: 124, type: !677)
!1278 = !DILocalVariable(name: "umask_must_be_ok", scope: !1279, file: !196, line: 134, type: !79)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !196, line: 131, column: 13)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !196, line: 130, column: 15)
!1281 = !DILocalVariable(name: "st", scope: !1282, file: !196, line: 153, type: !1286)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !196, line: 152, column: 17)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !196, line: 151, column: 19)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !196, line: 148, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1274, file: !196, line: 147, column: 15)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1287, line: 26, size: 1152, elements: !1288)
!1287 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1288 = !{!1289, !1291, !1293, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1303, !1305, !1313, !1314, !1315}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1286, file: !1287, line: 28, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 145, baseType: !121)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1286, file: !1287, line: 33, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 148, baseType: !121)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1286, file: !1287, line: 41, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 151, baseType: !121)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1286, file: !1287, line: 42, baseType: !678, size: 32, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1286, file: !1287, line: 44, baseType: !48, size: 32, offset: 224)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1286, file: !1287, line: 45, baseType: !50, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1286, file: !1287, line: 47, baseType: !14, size: 32, offset: 288)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1286, file: !1287, line: 49, baseType: !1290, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1286, file: !1287, line: 54, baseType: !806, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1286, file: !1287, line: 58, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 175, baseType: !807)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1286, file: !1287, line: 60, baseType: !1304, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 180, baseType: !807)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1286, file: !1287, line: 71, baseType: !1306, size: 128, offset: 576)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1307, line: 10, size: 128, elements: !1308)
!1307 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1308 = !{!1309, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1306, file: !1307, line: 12, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 160, baseType: !807)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1306, file: !1307, line: 16, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 197, baseType: !807)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1286, file: !1287, line: 72, baseType: !1306, size: 128, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1286, file: !1287, line: 73, baseType: !1306, size: 128, offset: 832)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1286, file: !1287, line: 86, baseType: !1316, size: 192, offset: 960)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 192, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 3)
!1319 = !DILocalVariable(name: "open_result", scope: !1320, file: !196, line: 169, type: !1321)
!1320 = distinct !DILexicalBlock(scope: !1285, file: !196, line: 168, column: 13)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 2)
!1324 = !DILocalVariable(name: "chdir_result", scope: !1320, file: !196, line: 170, type: !14)
!1325 = !DILocalVariable(name: "chdir_ok", scope: !1326, file: !196, line: 177, type: !79)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !196, line: 176, column: 17)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !196, line: 173, column: 19)
!1328 = !DILocalVariable(name: "subdir", scope: !1326, file: !196, line: 178, type: !58)
!1329 = !DILocation(line: 0, scope: !1251)
!1330 = !DILocation(line: 96, column: 22, scope: !1251)
!1331 = !DILocalVariable(name: "wd", arg: 1, scope: !1332, file: !6, line: 124, type: !1335)
!1332 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 124, type: !1333, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1337)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!14, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1337 = !{!1331}
!1338 = !DILocation(line: 0, scope: !1332, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 96, column: 56, scope: !1251)
!1340 = !DILocation(line: 126, column: 15, scope: !1332, inlinedAt: !1339)
!1341 = !{!1342, !710, i64 0}
!1342 = !{!"savewd", !710, i64 0, !710, i64 4}
!1343 = !DILocation(line: 126, column: 21, scope: !1332, inlinedAt: !1339)
!1344 = !DILocation(line: 126, column: 11, scope: !1332, inlinedAt: !1339)
!1345 = !DILocation(line: 126, column: 46, scope: !1332, inlinedAt: !1339)
!1346 = !DILocation(line: 98, column: 19, scope: !1270)
!1347 = !DILocation(line: 98, column: 7, scope: !1251)
!1348 = !DILocation(line: 0, scope: !1269)
!1349 = !DILocation(line: 103, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1269, file: !196, line: 103, column: 11)
!1351 = !DILocation(line: 103, column: 11, scope: !1269)
!1352 = !DILocation(line: 105, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !196, line: 104, column: 9)
!1354 = !DILocation(line: 106, column: 26, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1353, file: !196, line: 106, column: 15)
!1356 = !DILocation(line: 106, column: 15, scope: !1353)
!1357 = !DILocation(line: 108, column: 30, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !196, line: 108, column: 19)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !196, line: 107, column: 13)
!1360 = !DILocation(line: 108, column: 19, scope: !1359)
!1361 = !DILocation(line: 110, column: 29, scope: !1359)
!1362 = !DILocation(line: 114, column: 11, scope: !1269)
!1363 = !DILocation(line: 121, column: 49, scope: !1274)
!1364 = !DILocation(line: 0, scope: !1274)
!1365 = !DILocation(line: 123, column: 25, scope: !1274)
!1366 = !DILocation(line: 123, column: 56, scope: !1274)
!1367 = !DILocation(line: 123, column: 48, scope: !1274)
!1368 = !DILocation(line: 125, column: 15, scope: !1274)
!1369 = !DILocation(line: 130, column: 26, scope: !1280)
!1370 = !DILocation(line: 130, column: 15, scope: !1280)
!1371 = !DILocation(line: 130, column: 52, scope: !1280)
!1372 = !DILocation(line: 130, column: 15, scope: !1274)
!1373 = !DILocation(line: 134, column: 45, scope: !1279)
!1374 = !DILocation(line: 134, column: 57, scope: !1279)
!1375 = !DILocation(line: 0, scope: !1279)
!1376 = !DILocation(line: 136, column: 15, scope: !1279)
!1377 = !DILocation(line: 138, column: 36, scope: !1279)
!1378 = !DILocation(line: 147, column: 15, scope: !1274)
!1379 = !DILocation(line: 143, column: 29, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1280, file: !196, line: 142, column: 13)
!1381 = !DILocation(line: 149, column: 31, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1284, file: !196, line: 149, column: 19)
!1383 = !DILocation(line: 149, column: 19, scope: !1284)
!1384 = !DILocation(line: 151, column: 31, scope: !1283)
!1385 = !DILocation(line: 151, column: 41, scope: !1283)
!1386 = !DILocation(line: 153, column: 19, scope: !1282)
!1387 = !DILocation(line: 153, column: 31, scope: !1282)
!1388 = !DILocation(line: 154, column: 23, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1282, file: !196, line: 154, column: 23)
!1390 = !DILocation(line: 154, column: 52, scope: !1389)
!1391 = !DILocation(line: 154, column: 23, scope: !1282)
!1392 = !DILocation(line: 156, column: 27, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !196, line: 156, column: 27)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !196, line: 155, column: 21)
!1395 = !{!1396, !879, i64 24}
!1396 = !{!"stat", !1197, i64 0, !1197, i64 8, !1197, i64 16, !879, i64 24, !879, i64 28, !879, i64 32, !879, i64 36, !1197, i64 40, !1197, i64 48, !1197, i64 56, !1197, i64 64, !1397, i64 72, !1397, i64 88, !1397, i64 104, !710, i64 120}
!1397 = !{!"timespec", !1197, i64 0, !1197, i64 8}
!1398 = !DILocation(line: 156, column: 27, scope: !1394)
!1399 = !DILocation(line: 159, column: 40, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1389, file: !196, line: 159, column: 28)
!1401 = !DILocation(line: 160, column: 28, scope: !1400)
!1402 = !DILocation(line: 160, column: 31, scope: !1400)
!1403 = !DILocation(line: 160, column: 47, scope: !1400)
!1404 = !DILocation(line: 162, column: 40, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !196, line: 161, column: 21)
!1406 = !DILocation(line: 162, column: 61, scope: !1405)
!1407 = !DILocation(line: 162, column: 23, scope: !1405)
!1408 = !DILocation(line: 163, column: 23, scope: !1405)
!1409 = !DILocation(line: 165, column: 17, scope: !1283)
!1410 = !DILocation(line: 169, column: 15, scope: !1320)
!1411 = !DILocation(line: 169, column: 19, scope: !1320)
!1412 = !DILocation(line: 172, column: 53, scope: !1320)
!1413 = !DILocation(line: 171, column: 17, scope: !1320)
!1414 = !DILocation(line: 0, scope: !1320)
!1415 = !DILocation(line: 173, column: 32, scope: !1327)
!1416 = !DILocation(line: 173, column: 19, scope: !1320)
!1417 = !DILocation(line: 177, column: 49, scope: !1326)
!1418 = !DILocation(line: 0, scope: !1326)
!1419 = !DILocation(line: 178, column: 41, scope: !1326)
!1420 = !DILocation(line: 179, column: 36, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1326, file: !196, line: 179, column: 23)
!1422 = !DILocation(line: 179, column: 23, scope: !1421)
!1423 = !DILocation(line: 181, column: 23, scope: !1421)
!1424 = !DILocation(line: 179, column: 23, scope: !1326)
!1425 = !DILocation(line: 184, column: 35, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1326, file: !196, line: 184, column: 23)
!1427 = !DILocation(line: 185, column: 23, scope: !1426)
!1428 = !DILocation(line: 188, column: 33, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !196, line: 187, column: 21)
!1430 = !DILocation(line: 185, column: 39, scope: !1426)
!1431 = !DILocation(line: 185, column: 49, scope: !1426)
!1432 = !DILocation(line: 186, column: 30, scope: !1426)
!1433 = !DILocation(line: 186, column: 36, scope: !1426)
!1434 = !DILocation(line: 184, column: 23, scope: !1326)
!1435 = !DILocation(line: 189, column: 30, scope: !1429)
!1436 = !DILocation(line: 192, column: 30, scope: !1429)
!1437 = !DILocation(line: 188, column: 23, scope: !1429)
!1438 = !DILocation(line: 193, column: 23, scope: !1429)
!1439 = !DILocation(line: 196, column: 13, scope: !1285)
!1440 = !DILocation(line: 96, column: 7, scope: !1251)
!1441 = !DILocation(line: 200, column: 26, scope: !1251)
!1442 = !DILocation(line: 200, column: 59, scope: !1251)
!1443 = !DILocation(line: 200, column: 3, scope: !1251)
!1444 = !DILocation(line: 201, column: 3, scope: !1251)
!1445 = !DILocation(line: 202, column: 1, scope: !1251)
!1446 = !DISubprogram(name: "stat", scope: !1050, file: !1050, line: 205, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!14, !58, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1450 = distinct !DISubprogram(name: "mode_compile", scope: !214, file: !214, line: 134, type: !1451, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1461)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1453, !58}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !214, line: 98, size: 128, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1454, file: !214, line: 100, baseType: !45, size: 8)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1454, file: !214, line: 101, baseType: !45, size: 8, offset: 8)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1454, file: !214, line: 102, baseType: !677, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1454, file: !214, line: 103, baseType: !677, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1454, file: !214, line: 104, baseType: !677, size: 32, offset: 96)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1469, !1470, !1471, !1473, !1477, !1479, !1480, !1481, !1482, !1483, !1486, !1487, !1488}
!1462 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1450, file: !214, line: 134, type: !58)
!1463 = !DILocalVariable(name: "mc", scope: !1450, file: !214, line: 137, type: !1453)
!1464 = !DILocalVariable(name: "used", scope: !1450, file: !214, line: 138, type: !119)
!1465 = !DILocalVariable(name: "p", scope: !1450, file: !214, line: 139, type: !58)
!1466 = !DILocalVariable(name: "octal_mode", scope: !1467, file: !214, line: 143, type: !21)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !214, line: 142, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1450, file: !214, line: 141, column: 7)
!1469 = !DILocalVariable(name: "mode", scope: !1467, file: !214, line: 144, type: !677)
!1470 = !DILocalVariable(name: "mentioned", scope: !1467, file: !214, line: 145, type: !677)
!1471 = !DILocalVariable(name: "needed", scope: !1472, file: !214, line: 168, type: !119)
!1472 = distinct !DILexicalBlock(scope: !1450, file: !214, line: 167, column: 3)
!1473 = !DILocalVariable(name: "affected", scope: !1474, file: !214, line: 179, type: !677)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !214, line: 177, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !214, line: 176, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1450, file: !214, line: 176, column: 3)
!1477 = !DILocalVariable(name: "op", scope: !1478, file: !214, line: 206, type: !45)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !214, line: 205, column: 9)
!1479 = !DILocalVariable(name: "value", scope: !1478, file: !214, line: 207, type: !677)
!1480 = !DILocalVariable(name: "mentioned", scope: !1478, file: !214, line: 208, type: !677)
!1481 = !DILocalVariable(name: "flag", scope: !1478, file: !214, line: 209, type: !45)
!1482 = !DILocalVariable(name: "change", scope: !1478, file: !214, line: 210, type: !1453)
!1483 = !DILocalVariable(name: "octal_mode", scope: !1484, file: !214, line: 217, type: !21)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !214, line: 216, column: 15)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !214, line: 213, column: 13)
!1486 = !DILabel(scope: !1474, name: "no_more_affected", file: !214, line: 202)
!1487 = !DILabel(scope: !1485, name: "no_more_values", file: !214, line: 284)
!1488 = !DILabel(scope: !1450, name: "invalid", file: !214, line: 307)
!1489 = !DILocation(line: 0, scope: !1450)
!1490 = !DILocation(line: 141, column: 14, scope: !1468)
!1491 = !DILocation(line: 141, column: 27, scope: !1468)
!1492 = !DILocation(line: 150, column: 41, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1467, file: !214, line: 149, column: 9)
!1494 = !DILocation(line: 0, scope: !1467)
!1495 = !DILocation(line: 150, column: 26, scope: !1493)
!1496 = !DILocation(line: 150, column: 43, scope: !1493)
!1497 = !DILocation(line: 150, column: 39, scope: !1493)
!1498 = !DILocation(line: 150, column: 46, scope: !1493)
!1499 = !DILocation(line: 151, column: 20, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !214, line: 151, column: 15)
!1501 = !DILocation(line: 151, column: 15, scope: !1493)
!1502 = !DILocation(line: 154, column: 21, scope: !1467)
!1503 = !DILocation(line: 154, column: 24, scope: !1467)
!1504 = distinct !{!1504, !1505, !1506, !755}
!1505 = !DILocation(line: 148, column: 7, scope: !1467)
!1506 = !DILocation(line: 154, column: 35, scope: !1467)
!1507 = !DILocation(line: 156, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1467, file: !214, line: 156, column: 11)
!1509 = !DILocation(line: 156, column: 11, scope: !1467)
!1510 = !DILocation(line: 160, column: 22, scope: !1467)
!1511 = !DILocation(line: 160, column: 36, scope: !1467)
!1512 = !DILocation(line: 160, column: 20, scope: !1467)
!1513 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1514, file: !214, line: 112, type: !677)
!1514 = distinct !DISubprogram(name: "make_node_op_equals", scope: !214, file: !214, line: 112, type: !1515, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1453, !677, !677}
!1517 = !{!1513, !1518, !1519}
!1518 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1514, file: !214, line: 112, type: !677)
!1519 = !DILocalVariable(name: "p", scope: !1514, file: !214, line: 114, type: !1453)
!1520 = !DILocation(line: 0, scope: !1514, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 163, column: 14, scope: !1467)
!1522 = !DILocation(line: 114, column: 27, scope: !1514, inlinedAt: !1521)
!1523 = !DILocation(line: 115, column: 9, scope: !1514, inlinedAt: !1521)
!1524 = !{!1525, !710, i64 0}
!1525 = !{!"mode_change", !710, i64 0, !710, i64 1, !879, i64 4, !879, i64 8, !879, i64 12}
!1526 = !DILocation(line: 116, column: 6, scope: !1514, inlinedAt: !1521)
!1527 = !DILocation(line: 116, column: 11, scope: !1514, inlinedAt: !1521)
!1528 = !{!1525, !710, i64 1}
!1529 = !DILocation(line: 117, column: 6, scope: !1514, inlinedAt: !1521)
!1530 = !DILocation(line: 117, column: 15, scope: !1514, inlinedAt: !1521)
!1531 = !{!1525, !879, i64 4}
!1532 = !DILocation(line: 118, column: 6, scope: !1514, inlinedAt: !1521)
!1533 = !DILocation(line: 118, column: 12, scope: !1514, inlinedAt: !1521)
!1534 = !{!1525, !879, i64 8}
!1535 = !DILocation(line: 119, column: 6, scope: !1514, inlinedAt: !1521)
!1536 = !DILocation(line: 119, column: 16, scope: !1514, inlinedAt: !1521)
!1537 = !{!1525, !879, i64 12}
!1538 = !DILocation(line: 120, column: 8, scope: !1514, inlinedAt: !1521)
!1539 = !DILocation(line: 120, column: 13, scope: !1514, inlinedAt: !1521)
!1540 = !DILocation(line: 163, column: 7, scope: !1467)
!1541 = !DILocation(line: 169, column: 27, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !214, line: 169, column: 5)
!1543 = distinct !DILexicalBlock(scope: !1472, file: !214, line: 169, column: 5)
!1544 = !DILocation(line: 0, scope: !1543)
!1545 = !DILocation(line: 0, scope: !1472)
!1546 = !DILocation(line: 169, column: 5, scope: !1543)
!1547 = !DILocation(line: 170, column: 41, scope: !1542)
!1548 = !DILocation(line: 170, column: 14, scope: !1542)
!1549 = !DILocation(line: 169, column: 32, scope: !1542)
!1550 = !DILocation(line: 169, column: 5, scope: !1542)
!1551 = distinct !{!1551, !1546, !1552, !755}
!1552 = !DILocation(line: 170, column: 53, scope: !1543)
!1553 = !DILocalVariable(name: "n", arg: 1, scope: !1554, file: !247, line: 99, type: !119)
!1554 = distinct !DISubprogram(name: "xnmalloc", scope: !247, file: !247, line: 99, type: !1555, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!46, !119, !119}
!1557 = !{!1553, !1558}
!1558 = !DILocalVariable(name: "s", arg: 2, scope: !1554, file: !247, line: 99, type: !119)
!1559 = !DILocation(line: 0, scope: !1554, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 171, column: 10, scope: !1472)
!1561 = !DILocation(line: 101, column: 7, scope: !1562, inlinedAt: !1560)
!1562 = distinct !DILexicalBlock(scope: !1554, file: !247, line: 101, column: 7)
!1563 = !DILocation(line: 101, column: 7, scope: !1554, inlinedAt: !1560)
!1564 = !DILocation(line: 102, column: 5, scope: !1562, inlinedAt: !1560)
!1565 = !DILocation(line: 103, column: 21, scope: !1554, inlinedAt: !1560)
!1566 = !DILocation(line: 103, column: 10, scope: !1554, inlinedAt: !1560)
!1567 = !DILocation(line: 171, column: 10, scope: !1472)
!1568 = !DILocation(line: 176, column: 8, scope: !1476)
!1569 = !DILocation(line: 0, scope: !1476)
!1570 = !DILocation(line: 138, column: 10, scope: !1450)
!1571 = !DILocation(line: 0, scope: !1478)
!1572 = !DILocation(line: 0, scope: !1474)
!1573 = !DILocation(line: 182, column: 7, scope: !1474)
!1574 = !DILocation(line: 183, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !214, line: 182, column: 7)
!1576 = distinct !DILexicalBlock(scope: !1474, file: !214, line: 182, column: 7)
!1577 = !DILocation(line: 183, column: 9, scope: !1575)
!1578 = !DILocation(line: 212, column: 11, scope: !1478)
!1579 = !DILocation(line: 192, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !214, line: 184, column: 11)
!1581 = !DILocation(line: 195, column: 13, scope: !1580)
!1582 = !DILocation(line: 198, column: 13, scope: !1580)
!1583 = !DILocation(line: 0, scope: !1580)
!1584 = !DILocation(line: 182, column: 16, scope: !1575)
!1585 = !DILocation(line: 182, column: 7, scope: !1575)
!1586 = distinct !{!1586, !1587, !1588}
!1587 = !DILocation(line: 182, column: 7, scope: !1576)
!1588 = !DILocation(line: 201, column: 11, scope: !1576)
!1589 = !DILocation(line: 206, column: 21, scope: !1478)
!1590 = !DILocation(line: 179, column: 14, scope: !1474)
!1591 = !DILocation(line: 206, column: 23, scope: !1478)
!1592 = !DILocation(line: 212, column: 19, scope: !1478)
!1593 = !DILocation(line: 219, column: 17, scope: !1484)
!1594 = !DILocation(line: 221, column: 51, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1484, file: !214, line: 220, column: 19)
!1596 = !DILocation(line: 0, scope: !1484)
!1597 = !DILocation(line: 221, column: 36, scope: !1595)
!1598 = !DILocation(line: 221, column: 53, scope: !1595)
!1599 = !DILocation(line: 221, column: 49, scope: !1595)
!1600 = !DILocation(line: 221, column: 56, scope: !1595)
!1601 = !DILocation(line: 222, column: 30, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !214, line: 222, column: 25)
!1603 = !DILocation(line: 222, column: 25, scope: !1595)
!1604 = !DILocation(line: 225, column: 31, scope: !1484)
!1605 = !DILocation(line: 225, column: 34, scope: !1484)
!1606 = distinct !{!1606, !1593, !1607, !755}
!1607 = !DILocation(line: 225, column: 45, scope: !1484)
!1608 = !DILocation(line: 227, column: 21, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1484, file: !214, line: 227, column: 21)
!1610 = !DILocation(line: 227, column: 30, scope: !1609)
!1611 = !DILocation(line: 227, column: 37, scope: !1609)
!1612 = !DILocation(line: 239, column: 16, scope: !1485)
!1613 = !DILocation(line: 240, column: 15, scope: !1485)
!1614 = !DILocation(line: 245, column: 16, scope: !1485)
!1615 = !DILocation(line: 246, column: 15, scope: !1485)
!1616 = !DILocation(line: 251, column: 16, scope: !1485)
!1617 = !DILocation(line: 252, column: 15, scope: !1485)
!1618 = !DILocation(line: 259, column: 25, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !214, line: 258, column: 15)
!1620 = distinct !DILexicalBlock(scope: !1485, file: !214, line: 258, column: 15)
!1621 = !DILocation(line: 0, scope: !1485)
!1622 = !DILocation(line: 256, column: 20, scope: !1485)
!1623 = !DILocation(line: 259, column: 17, scope: !1619)
!1624 = !DILocation(line: 262, column: 27, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !214, line: 260, column: 19)
!1626 = !DILocation(line: 263, column: 21, scope: !1625)
!1627 = !DILocation(line: 265, column: 27, scope: !1625)
!1628 = !DILocation(line: 266, column: 21, scope: !1625)
!1629 = !DILocation(line: 268, column: 27, scope: !1625)
!1630 = !DILocation(line: 269, column: 21, scope: !1625)
!1631 = !DILocation(line: 275, column: 27, scope: !1625)
!1632 = !DILocation(line: 276, column: 21, scope: !1625)
!1633 = !DILocation(line: 279, column: 27, scope: !1625)
!1634 = !DILocation(line: 280, column: 21, scope: !1625)
!1635 = !DILocation(line: 258, column: 24, scope: !1619)
!1636 = !DILocation(line: 258, column: 15, scope: !1619)
!1637 = distinct !{!1637, !1638, !1639}
!1638 = !DILocation(line: 258, column: 15, scope: !1620)
!1639 = !DILocation(line: 283, column: 19, scope: !1620)
!1640 = !DILocation(line: 208, column: 18, scope: !1478)
!1641 = !DILocation(line: 287, column: 28, scope: !1478)
!1642 = !DILocation(line: 288, column: 19, scope: !1478)
!1643 = !DILocation(line: 288, column: 22, scope: !1478)
!1644 = !DILocation(line: 289, column: 19, scope: !1478)
!1645 = !DILocation(line: 289, column: 24, scope: !1478)
!1646 = !DILocation(line: 290, column: 19, scope: !1478)
!1647 = !DILocation(line: 290, column: 28, scope: !1478)
!1648 = !DILocation(line: 291, column: 19, scope: !1478)
!1649 = !DILocation(line: 291, column: 25, scope: !1478)
!1650 = !DILocation(line: 293, column: 14, scope: !1478)
!1651 = !DILocation(line: 292, column: 19, scope: !1478)
!1652 = !DILocation(line: 292, column: 29, scope: !1478)
!1653 = !DILocation(line: 295, column: 14, scope: !1474)
!1654 = !DILocation(line: 295, column: 24, scope: !1474)
!1655 = !DILocation(line: 176, column: 28, scope: !1475)
!1656 = !DILocation(line: 176, column: 3, scope: !1475)
!1657 = distinct !{!1657, !1658, !1659}
!1658 = !DILocation(line: 176, column: 3, scope: !1476)
!1659 = !DILocation(line: 299, column: 5, scope: !1476)
!1660 = !DILocation(line: 303, column: 16, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !214, line: 302, column: 5)
!1662 = distinct !DILexicalBlock(scope: !1450, file: !214, line: 301, column: 7)
!1663 = !DILocation(line: 303, column: 21, scope: !1661)
!1664 = !DILocation(line: 304, column: 7, scope: !1661)
!1665 = !DILocation(line: 307, column: 1, scope: !1450)
!1666 = !DILocation(line: 308, column: 3, scope: !1450)
!1667 = !DILocation(line: 309, column: 3, scope: !1450)
!1668 = !DILocation(line: 310, column: 1, scope: !1450)
!1669 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !214, file: !214, line: 316, type: !1451, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1670)
!1670 = !{!1671, !1672}
!1671 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1669, file: !214, line: 316, type: !58)
!1672 = !DILocalVariable(name: "ref_stats", scope: !1669, file: !214, line: 318, type: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1287, line: 26, size: 1152, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1691, !1692, !1693}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1673, file: !1287, line: 28, baseType: !1290, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1673, file: !1287, line: 33, baseType: !1292, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1673, file: !1287, line: 41, baseType: !1294, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1673, file: !1287, line: 42, baseType: !678, size: 32, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1673, file: !1287, line: 44, baseType: !48, size: 32, offset: 224)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1673, file: !1287, line: 45, baseType: !50, size: 32, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1673, file: !1287, line: 47, baseType: !14, size: 32, offset: 288)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1673, file: !1287, line: 49, baseType: !1290, size: 64, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1673, file: !1287, line: 54, baseType: !806, size: 64, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1673, file: !1287, line: 58, baseType: !1302, size: 64, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1673, file: !1287, line: 60, baseType: !1304, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1673, file: !1287, line: 71, baseType: !1687, size: 128, offset: 576)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1307, line: 10, size: 128, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1687, file: !1307, line: 12, baseType: !1310, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1687, file: !1307, line: 16, baseType: !1312, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1673, file: !1287, line: 72, baseType: !1687, size: 128, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1673, file: !1287, line: 73, baseType: !1687, size: 128, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1673, file: !1287, line: 86, baseType: !1316, size: 192, offset: 960)
!1694 = !DILocation(line: 0, scope: !1669)
!1695 = !DILocation(line: 318, column: 3, scope: !1669)
!1696 = !DILocation(line: 318, column: 15, scope: !1669)
!1697 = !DILocation(line: 320, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1669, file: !214, line: 320, column: 7)
!1699 = !DILocation(line: 320, column: 35, scope: !1698)
!1700 = !DILocation(line: 320, column: 7, scope: !1669)
!1701 = !DILocation(line: 322, column: 41, scope: !1669)
!1702 = !DILocation(line: 0, scope: !1514, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 322, column: 10, scope: !1669)
!1704 = !DILocation(line: 114, column: 27, scope: !1514, inlinedAt: !1703)
!1705 = !DILocation(line: 115, column: 9, scope: !1514, inlinedAt: !1703)
!1706 = !DILocation(line: 116, column: 6, scope: !1514, inlinedAt: !1703)
!1707 = !DILocation(line: 116, column: 11, scope: !1514, inlinedAt: !1703)
!1708 = !DILocation(line: 117, column: 6, scope: !1514, inlinedAt: !1703)
!1709 = !DILocation(line: 117, column: 15, scope: !1514, inlinedAt: !1703)
!1710 = !DILocation(line: 118, column: 6, scope: !1514, inlinedAt: !1703)
!1711 = !DILocation(line: 118, column: 12, scope: !1514, inlinedAt: !1703)
!1712 = !DILocation(line: 119, column: 6, scope: !1514, inlinedAt: !1703)
!1713 = !DILocation(line: 119, column: 16, scope: !1514, inlinedAt: !1703)
!1714 = !DILocation(line: 120, column: 8, scope: !1514, inlinedAt: !1703)
!1715 = !DILocation(line: 120, column: 13, scope: !1514, inlinedAt: !1703)
!1716 = !DILocation(line: 322, column: 3, scope: !1669)
!1717 = !DILocation(line: 323, column: 1, scope: !1669)
!1718 = distinct !DISubprogram(name: "mode_adjust", scope: !214, file: !214, line: 339, type: !1719, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1724)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!677, !677, !79, !677, !1721, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1736, !1737, !1738}
!1725 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1718, file: !214, line: 339, type: !677)
!1726 = !DILocalVariable(name: "dir", arg: 2, scope: !1718, file: !214, line: 339, type: !79)
!1727 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1718, file: !214, line: 339, type: !677)
!1728 = !DILocalVariable(name: "changes", arg: 4, scope: !1718, file: !214, line: 340, type: !1721)
!1729 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1718, file: !214, line: 340, type: !1723)
!1730 = !DILocalVariable(name: "newmode", scope: !1718, file: !214, line: 343, type: !677)
!1731 = !DILocalVariable(name: "mode_bits", scope: !1718, file: !214, line: 346, type: !677)
!1732 = !DILocalVariable(name: "affected", scope: !1733, file: !214, line: 350, type: !677)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !214, line: 349, column: 5)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !214, line: 348, column: 3)
!1735 = distinct !DILexicalBlock(scope: !1718, file: !214, line: 348, column: 3)
!1736 = !DILocalVariable(name: "omit_change", scope: !1733, file: !214, line: 351, type: !677)
!1737 = !DILocalVariable(name: "value", scope: !1733, file: !214, line: 353, type: !677)
!1738 = !DILocalVariable(name: "preserved", scope: !1739, file: !214, line: 393, type: !677)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !214, line: 392, column: 11)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !214, line: 387, column: 9)
!1741 = !DILocation(line: 0, scope: !1718)
!1742 = !DILocation(line: 343, column: 28, scope: !1718)
!1743 = !DILocation(line: 348, column: 19, scope: !1734)
!1744 = !DILocation(line: 348, column: 24, scope: !1734)
!1745 = !DILocation(line: 348, column: 3, scope: !1735)
!1746 = !DILocation(line: 348, column: 10, scope: !1734)
!1747 = !DILocation(line: 350, column: 34, scope: !1733)
!1748 = !DILocation(line: 0, scope: !1733)
!1749 = !DILocation(line: 352, column: 52, scope: !1733)
!1750 = !DILocation(line: 352, column: 41, scope: !1733)
!1751 = !DILocation(line: 352, column: 39, scope: !1733)
!1752 = !DILocation(line: 353, column: 31, scope: !1733)
!1753 = !DILocation(line: 355, column: 7, scope: !1733)
!1754 = !DILocation(line: 362, column: 17, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1733, file: !214, line: 356, column: 9)
!1756 = !DILocation(line: 365, column: 28, scope: !1755)
!1757 = !DILocation(line: 365, column: 22, scope: !1755)
!1758 = !DILocation(line: 367, column: 30, scope: !1755)
!1759 = !DILocation(line: 367, column: 24, scope: !1755)
!1760 = !DILocation(line: 369, column: 30, scope: !1755)
!1761 = !DILocation(line: 369, column: 24, scope: !1755)
!1762 = !DILocation(line: 367, column: 21, scope: !1755)
!1763 = !DILocation(line: 369, column: 21, scope: !1755)
!1764 = !DILocation(line: 365, column: 17, scope: !1755)
!1765 = !DILocation(line: 371, column: 11, scope: !1755)
!1766 = !DILocation(line: 376, column: 24, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1755, file: !214, line: 376, column: 15)
!1768 = !DILocation(line: 376, column: 57, scope: !1767)
!1769 = !DILocation(line: 376, column: 15, scope: !1755)
!1770 = !DILocation(line: 384, column: 17, scope: !1733)
!1771 = !DILocation(line: 384, column: 55, scope: !1733)
!1772 = !DILocation(line: 384, column: 53, scope: !1733)
!1773 = !DILocation(line: 384, column: 13, scope: !1733)
!1774 = !DILocation(line: 386, column: 24, scope: !1733)
!1775 = !DILocation(line: 386, column: 15, scope: !1733)
!1776 = !DILocation(line: 386, column: 7, scope: !1733)
!1777 = !DILocation(line: 393, column: 33, scope: !1739)
!1778 = !DILocation(line: 393, column: 59, scope: !1739)
!1779 = !DILocation(line: 0, scope: !1739)
!1780 = !DILocation(line: 394, column: 42, scope: !1739)
!1781 = !DILocation(line: 394, column: 23, scope: !1739)
!1782 = !DILocation(line: 395, column: 32, scope: !1739)
!1783 = !DILocation(line: 395, column: 45, scope: !1739)
!1784 = !DILocation(line: 400, column: 21, scope: !1740)
!1785 = !DILocation(line: 401, column: 19, scope: !1740)
!1786 = !DILocation(line: 402, column: 11, scope: !1740)
!1787 = !DILocation(line: 405, column: 21, scope: !1740)
!1788 = !DILocation(line: 406, column: 22, scope: !1740)
!1789 = !DILocation(line: 406, column: 19, scope: !1740)
!1790 = !DILocation(line: 407, column: 11, scope: !1740)
!1791 = !DILocation(line: 348, column: 45, scope: !1734)
!1792 = distinct !{!1792, !1745, !1793, !755}
!1793 = !DILocation(line: 409, column: 5, scope: !1735)
!1794 = !DILocation(line: 346, column: 10, scope: !1718)
!1795 = !DILocation(line: 343, column: 10, scope: !1718)
!1796 = !DILocation(line: 411, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1718, file: !214, line: 411, column: 7)
!1798 = !DILocation(line: 411, column: 7, scope: !1718)
!1799 = !DILocation(line: 412, column: 17, scope: !1797)
!1800 = !DILocation(line: 412, column: 5, scope: !1797)
!1801 = !DILocation(line: 413, column: 3, scope: !1718)
!1802 = distinct !DISubprogram(name: "set_program_name", scope: !89, file: !89, line: 39, type: !727, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DILocalVariable(name: "argv0", arg: 1, scope: !1802, file: !89, line: 39, type: !58)
!1805 = !DILocalVariable(name: "slash", scope: !1802, file: !89, line: 46, type: !58)
!1806 = !DILocalVariable(name: "base", scope: !1802, file: !89, line: 47, type: !58)
!1807 = !DILocation(line: 0, scope: !1802)
!1808 = !DILocation(line: 51, column: 13, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !89, line: 51, column: 7)
!1810 = !DILocation(line: 51, column: 7, scope: !1802)
!1811 = !DILocation(line: 55, column: 14, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !89, line: 52, column: 5)
!1813 = !DILocation(line: 54, column: 7, scope: !1812)
!1814 = !DILocation(line: 56, column: 7, scope: !1812)
!1815 = !DILocation(line: 59, column: 11, scope: !1802)
!1816 = !DILocation(line: 60, column: 17, scope: !1802)
!1817 = !DILocation(line: 60, column: 11, scope: !1802)
!1818 = !DILocation(line: 61, column: 12, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1802, file: !89, line: 61, column: 7)
!1820 = !DILocation(line: 61, column: 20, scope: !1819)
!1821 = !DILocation(line: 61, column: 25, scope: !1819)
!1822 = !DILocation(line: 61, column: 42, scope: !1819)
!1823 = !DILocation(line: 61, column: 28, scope: !1819)
!1824 = !DILocation(line: 61, column: 61, scope: !1819)
!1825 = !DILocation(line: 61, column: 7, scope: !1802)
!1826 = !DILocation(line: 64, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !89, line: 64, column: 11)
!1828 = distinct !DILexicalBlock(scope: !1819, file: !89, line: 62, column: 5)
!1829 = !DILocation(line: 64, column: 36, scope: !1827)
!1830 = !DILocation(line: 64, column: 11, scope: !1828)
!1831 = !DILocation(line: 66, column: 24, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !89, line: 65, column: 9)
!1833 = !DILocation(line: 70, column: 41, scope: !1832)
!1834 = !DILocation(line: 72, column: 9, scope: !1832)
!1835 = !DILocation(line: 84, column: 16, scope: !1802)
!1836 = !DILocation(line: 90, column: 27, scope: !1802)
!1837 = !DILocation(line: 92, column: 1, scope: !1802)
!1838 = distinct !DISubprogram(name: "clone_quoting_options", scope: !95, file: !95, line: 122, type: !1839, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1842)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1841, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1842 = !{!1843, !1844, !1845}
!1843 = !DILocalVariable(name: "o", arg: 1, scope: !1838, file: !95, line: 122, type: !1841)
!1844 = !DILocalVariable(name: "e", scope: !1838, file: !95, line: 124, type: !14)
!1845 = !DILocalVariable(name: "p", scope: !1838, file: !95, line: 125, type: !1841)
!1846 = !DILocation(line: 0, scope: !1838)
!1847 = !DILocation(line: 124, column: 11, scope: !1838)
!1848 = !DILocation(line: 125, column: 40, scope: !1838)
!1849 = !DILocation(line: 125, column: 31, scope: !1838)
!1850 = !DILocation(line: 127, column: 9, scope: !1838)
!1851 = !DILocation(line: 128, column: 3, scope: !1838)
!1852 = distinct !DISubprogram(name: "get_quoting_style", scope: !95, file: !95, line: 133, type: !1853, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1857)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!29, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "o", arg: 1, scope: !1852, file: !95, line: 133, type: !1855)
!1859 = !DILocation(line: 0, scope: !1852)
!1860 = !DILocation(line: 135, column: 11, scope: !1852)
!1861 = !DILocation(line: 135, column: 46, scope: !1852)
!1862 = !{!1863, !710, i64 0}
!1863 = !{!"quoting_options", !710, i64 0, !879, i64 4, !710, i64 8, !709, i64 40, !709, i64 48}
!1864 = !DILocation(line: 135, column: 3, scope: !1852)
!1865 = distinct !DISubprogram(name: "set_quoting_style", scope: !95, file: !95, line: 141, type: !1866, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1841, !29}
!1868 = !{!1869, !1870}
!1869 = !DILocalVariable(name: "o", arg: 1, scope: !1865, file: !95, line: 141, type: !1841)
!1870 = !DILocalVariable(name: "s", arg: 2, scope: !1865, file: !95, line: 141, type: !29)
!1871 = !DILocation(line: 0, scope: !1865)
!1872 = !DILocation(line: 143, column: 4, scope: !1865)
!1873 = !DILocation(line: 143, column: 39, scope: !1865)
!1874 = !DILocation(line: 143, column: 45, scope: !1865)
!1875 = !DILocation(line: 144, column: 1, scope: !1865)
!1876 = distinct !DISubprogram(name: "set_char_quoting", scope: !95, file: !95, line: 152, type: !1877, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!14, !1841, !45, !14}
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1886, !1887}
!1880 = !DILocalVariable(name: "o", arg: 1, scope: !1876, file: !95, line: 152, type: !1841)
!1881 = !DILocalVariable(name: "c", arg: 2, scope: !1876, file: !95, line: 152, type: !45)
!1882 = !DILocalVariable(name: "i", arg: 3, scope: !1876, file: !95, line: 152, type: !14)
!1883 = !DILocalVariable(name: "uc", scope: !1876, file: !95, line: 154, type: !192)
!1884 = !DILocalVariable(name: "p", scope: !1876, file: !95, line: 155, type: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1886 = !DILocalVariable(name: "shift", scope: !1876, file: !95, line: 157, type: !14)
!1887 = !DILocalVariable(name: "r", scope: !1876, file: !95, line: 158, type: !14)
!1888 = !DILocation(line: 0, scope: !1876)
!1889 = !DILocation(line: 156, column: 6, scope: !1876)
!1890 = !DILocation(line: 156, column: 62, scope: !1876)
!1891 = !DILocation(line: 156, column: 57, scope: !1876)
!1892 = !DILocation(line: 157, column: 15, scope: !1876)
!1893 = !DILocation(line: 158, column: 12, scope: !1876)
!1894 = !DILocation(line: 158, column: 15, scope: !1876)
!1895 = !DILocation(line: 158, column: 25, scope: !1876)
!1896 = !DILocation(line: 159, column: 13, scope: !1876)
!1897 = !DILocation(line: 159, column: 18, scope: !1876)
!1898 = !DILocation(line: 159, column: 23, scope: !1876)
!1899 = !DILocation(line: 159, column: 6, scope: !1876)
!1900 = !DILocation(line: 160, column: 3, scope: !1876)
!1901 = distinct !DISubprogram(name: "set_quoting_flags", scope: !95, file: !95, line: 168, type: !1902, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!14, !1841, !14}
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "o", arg: 1, scope: !1901, file: !95, line: 168, type: !1841)
!1906 = !DILocalVariable(name: "i", arg: 2, scope: !1901, file: !95, line: 168, type: !14)
!1907 = !DILocalVariable(name: "r", scope: !1901, file: !95, line: 170, type: !14)
!1908 = !DILocation(line: 0, scope: !1901)
!1909 = !DILocation(line: 171, column: 8, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1901, file: !95, line: 171, column: 7)
!1911 = !DILocation(line: 171, column: 7, scope: !1901)
!1912 = !DILocation(line: 173, column: 10, scope: !1901)
!1913 = !{!1863, !879, i64 4}
!1914 = !DILocation(line: 174, column: 12, scope: !1901)
!1915 = !DILocation(line: 175, column: 3, scope: !1901)
!1916 = distinct !DISubprogram(name: "set_custom_quoting", scope: !95, file: !95, line: 179, type: !1917, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1841, !58, !58}
!1919 = !{!1920, !1921, !1922}
!1920 = !DILocalVariable(name: "o", arg: 1, scope: !1916, file: !95, line: 179, type: !1841)
!1921 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1916, file: !95, line: 180, type: !58)
!1922 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1916, file: !95, line: 180, type: !58)
!1923 = !DILocation(line: 0, scope: !1916)
!1924 = !DILocation(line: 182, column: 8, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1916, file: !95, line: 182, column: 7)
!1926 = !DILocation(line: 182, column: 7, scope: !1916)
!1927 = !DILocation(line: 184, column: 6, scope: !1916)
!1928 = !DILocation(line: 184, column: 12, scope: !1916)
!1929 = !DILocation(line: 185, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1916, file: !95, line: 185, column: 7)
!1931 = !DILocation(line: 185, column: 19, scope: !1930)
!1932 = !DILocation(line: 186, column: 5, scope: !1930)
!1933 = !DILocation(line: 187, column: 6, scope: !1916)
!1934 = !DILocation(line: 187, column: 17, scope: !1916)
!1935 = !{!1863, !709, i64 40}
!1936 = !DILocation(line: 188, column: 6, scope: !1916)
!1937 = !DILocation(line: 188, column: 18, scope: !1916)
!1938 = !{!1863, !709, i64 48}
!1939 = !DILocation(line: 189, column: 1, scope: !1916)
!1940 = distinct !DISubprogram(name: "quotearg_buffer", scope: !95, file: !95, line: 784, type: !1941, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!119, !44, !119, !58, !119, !1855}
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951}
!1944 = !DILocalVariable(name: "buffer", arg: 1, scope: !1940, file: !95, line: 784, type: !44)
!1945 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1940, file: !95, line: 784, type: !119)
!1946 = !DILocalVariable(name: "arg", arg: 3, scope: !1940, file: !95, line: 785, type: !58)
!1947 = !DILocalVariable(name: "argsize", arg: 4, scope: !1940, file: !95, line: 785, type: !119)
!1948 = !DILocalVariable(name: "o", arg: 5, scope: !1940, file: !95, line: 786, type: !1855)
!1949 = !DILocalVariable(name: "p", scope: !1940, file: !95, line: 788, type: !1855)
!1950 = !DILocalVariable(name: "e", scope: !1940, file: !95, line: 789, type: !14)
!1951 = !DILocalVariable(name: "r", scope: !1940, file: !95, line: 790, type: !119)
!1952 = !DILocation(line: 0, scope: !1940)
!1953 = !DILocation(line: 788, column: 37, scope: !1940)
!1954 = !DILocation(line: 789, column: 11, scope: !1940)
!1955 = !DILocation(line: 791, column: 43, scope: !1940)
!1956 = !DILocation(line: 791, column: 53, scope: !1940)
!1957 = !DILocation(line: 791, column: 60, scope: !1940)
!1958 = !DILocation(line: 792, column: 43, scope: !1940)
!1959 = !DILocation(line: 792, column: 58, scope: !1940)
!1960 = !DILocation(line: 790, column: 14, scope: !1940)
!1961 = !DILocation(line: 793, column: 9, scope: !1940)
!1962 = !DILocation(line: 794, column: 3, scope: !1940)
!1963 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !95, file: !95, line: 256, type: !1964, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !1968)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!119, !44, !119, !58, !119, !29, !14, !1966, !58, !58}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1993, !1994, !1995, !1996, !1997, !2000, !2001, !2019, !2022, !2023, !2030, !2033, !2034, !2035, !2036, !2037, !2038}
!1969 = !DILocalVariable(name: "buffer", arg: 1, scope: !1963, file: !95, line: 256, type: !44)
!1970 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1963, file: !95, line: 256, type: !119)
!1971 = !DILocalVariable(name: "arg", arg: 3, scope: !1963, file: !95, line: 257, type: !58)
!1972 = !DILocalVariable(name: "argsize", arg: 4, scope: !1963, file: !95, line: 257, type: !119)
!1973 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1963, file: !95, line: 258, type: !29)
!1974 = !DILocalVariable(name: "flags", arg: 6, scope: !1963, file: !95, line: 258, type: !14)
!1975 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1963, file: !95, line: 259, type: !1966)
!1976 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1963, file: !95, line: 260, type: !58)
!1977 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1963, file: !95, line: 261, type: !58)
!1978 = !DILocalVariable(name: "i", scope: !1963, file: !95, line: 263, type: !119)
!1979 = !DILocalVariable(name: "len", scope: !1963, file: !95, line: 264, type: !119)
!1980 = !DILocalVariable(name: "orig_buffersize", scope: !1963, file: !95, line: 265, type: !119)
!1981 = !DILocalVariable(name: "quote_string", scope: !1963, file: !95, line: 266, type: !58)
!1982 = !DILocalVariable(name: "quote_string_len", scope: !1963, file: !95, line: 267, type: !119)
!1983 = !DILocalVariable(name: "backslash_escapes", scope: !1963, file: !95, line: 268, type: !79)
!1984 = !DILocalVariable(name: "unibyte_locale", scope: !1963, file: !95, line: 269, type: !79)
!1985 = !DILocalVariable(name: "elide_outer_quotes", scope: !1963, file: !95, line: 270, type: !79)
!1986 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1963, file: !95, line: 271, type: !79)
!1987 = !DILocalVariable(name: "encountered_single_quote", scope: !1963, file: !95, line: 272, type: !79)
!1988 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1963, file: !95, line: 273, type: !79)
!1989 = !DILocalVariable(name: "c", scope: !1990, file: !95, line: 402, type: !192)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !95, line: 401, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !95, line: 400, column: 3)
!1992 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 400, column: 3)
!1993 = !DILocalVariable(name: "esc", scope: !1990, file: !95, line: 403, type: !192)
!1994 = !DILocalVariable(name: "is_right_quote", scope: !1990, file: !95, line: 404, type: !79)
!1995 = !DILocalVariable(name: "escaping", scope: !1990, file: !95, line: 405, type: !79)
!1996 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1990, file: !95, line: 406, type: !79)
!1997 = !DILocalVariable(name: "m", scope: !1998, file: !95, line: 610, type: !119)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 608, column: 11)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 426, column: 9)
!2000 = !DILocalVariable(name: "printable", scope: !1998, file: !95, line: 612, type: !79)
!2001 = !DILocalVariable(name: "mbstate", scope: !2002, file: !95, line: 621, type: !2004)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !95, line: 620, column: 15)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !95, line: 614, column: 17)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2005, line: 6, baseType: !2006)
!2005 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2007, line: 21, baseType: !2008)
!2007 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2007, line: 13, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2008, file: !2007, line: 15, baseType: !14, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2008, file: !2007, line: 20, baseType: !2012, size: 32, offset: 32)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !2007, line: 16, size: 32, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2012, file: !2007, line: 18, baseType: !21, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2012, file: !2007, line: 19, baseType: !2016, size: 32)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 4)
!2019 = !DILocalVariable(name: "w", scope: !2020, file: !95, line: 631, type: !2021)
!2020 = distinct !DILexicalBlock(scope: !2002, file: !95, line: 630, column: 19)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !120, line: 74, baseType: !14)
!2022 = !DILocalVariable(name: "bytes", scope: !2020, file: !95, line: 632, type: !119)
!2023 = !DILocalVariable(name: "j", scope: !2024, file: !95, line: 657, type: !119)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !95, line: 656, column: 27)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !95, line: 654, column: 29)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !95, line: 649, column: 23)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !95, line: 641, column: 30)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !95, line: 636, column: 30)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !95, line: 634, column: 25)
!2030 = !DILocalVariable(name: "ilim", scope: !2031, file: !95, line: 684, type: !119)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !95, line: 681, column: 15)
!2032 = distinct !DILexicalBlock(scope: !1998, file: !95, line: 680, column: 17)
!2033 = !DILabel(scope: !1963, name: "process_input", file: !95, line: 314)
!2034 = !DILabel(scope: !1999, name: "c_and_shell_escape", file: !95, line: 512)
!2035 = !DILabel(scope: !1999, name: "c_escape", file: !95, line: 517)
!2036 = !DILabel(scope: !1990, name: "store_escape", file: !95, line: 719)
!2037 = !DILabel(scope: !1990, name: "store_c", file: !95, line: 722)
!2038 = !DILabel(scope: !1963, name: "force_outer_quoting_style", file: !95, line: 763)
!2039 = !DILocation(line: 0, scope: !1963)
!2040 = !DILocation(line: 269, column: 25, scope: !1963)
!2041 = !DILocation(line: 269, column: 36, scope: !1963)
!2042 = !DILocation(line: 270, column: 8, scope: !1963)
!2043 = !DILocation(line: 273, column: 3, scope: !1963)
!2044 = !DILocation(line: 265, column: 10, scope: !1963)
!2045 = !DILocation(line: 266, column: 15, scope: !1963)
!2046 = !DILocation(line: 267, column: 10, scope: !1963)
!2047 = !DILocation(line: 268, column: 8, scope: !1963)
!2048 = !DILocation(line: 271, column: 8, scope: !1963)
!2049 = !DILocation(line: 272, column: 8, scope: !1963)
!2050 = !DILocation(line: 273, column: 8, scope: !1963)
!2051 = !DILocation(line: 314, column: 2, scope: !1963)
!2052 = !DILocation(line: 316, column: 3, scope: !1963)
!2053 = !DILocation(line: 323, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 317, column: 5)
!2055 = !DILocation(line: 323, column: 12, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2054, file: !95, line: 323, column: 11)
!2057 = !DILocation(line: 324, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !95, line: 324, column: 9)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !95, line: 324, column: 9)
!2060 = !DILocation(line: 324, column: 9, scope: !2059)
!2061 = !DILocation(line: 362, column: 26, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !95, line: 340, column: 11)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !95, line: 339, column: 13)
!2064 = distinct !DILexicalBlock(scope: !2054, file: !95, line: 338, column: 7)
!2065 = !DILocation(line: 363, column: 27, scope: !2062)
!2066 = !DILocation(line: 364, column: 11, scope: !2062)
!2067 = !DILocation(line: 365, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !95, line: 365, column: 13)
!2069 = !DILocation(line: 365, column: 13, scope: !2064)
!2070 = !DILocation(line: 366, column: 43, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !95, line: 366, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !95, line: 366, column: 11)
!2073 = !DILocation(line: 366, column: 11, scope: !2072)
!2074 = !DILocation(line: 367, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !95, line: 367, column: 13)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !95, line: 367, column: 13)
!2077 = !DILocation(line: 367, column: 13, scope: !2076)
!2078 = !DILocation(line: 366, column: 70, scope: !2071)
!2079 = distinct !{!2079, !2073, !2080, !755}
!2080 = !DILocation(line: 367, column: 13, scope: !2072)
!2081 = !DILocation(line: 264, column: 10, scope: !1963)
!2082 = !DILocation(line: 370, column: 28, scope: !2064)
!2083 = !DILocation(line: 372, column: 7, scope: !2054)
!2084 = !DILocation(line: 376, column: 7, scope: !2054)
!2085 = !DILocation(line: 379, column: 7, scope: !2054)
!2086 = !DILocation(line: 381, column: 12, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2054, file: !95, line: 381, column: 11)
!2088 = !DILocation(line: 381, column: 11, scope: !2054)
!2089 = !DILocation(line: 386, column: 12, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2054, file: !95, line: 386, column: 11)
!2091 = !DILocation(line: 386, column: 11, scope: !2054)
!2092 = !DILocation(line: 387, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !95, line: 387, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !95, line: 387, column: 9)
!2095 = !DILocation(line: 387, column: 9, scope: !2094)
!2096 = !DILocation(line: 394, column: 7, scope: !2054)
!2097 = !DILocation(line: 397, column: 7, scope: !2054)
!2098 = !DILocation(line: 400, column: 8, scope: !1992)
!2099 = !DILocation(line: 0, scope: !1992)
!2100 = !DILocation(line: 400, column: 27, scope: !1991)
!2101 = !DILocation(line: 400, column: 19, scope: !1991)
!2102 = !DILocation(line: 400, column: 41, scope: !1991)
!2103 = !DILocation(line: 400, column: 48, scope: !1991)
!2104 = !DILocation(line: 400, column: 3, scope: !1992)
!2105 = !DILocation(line: 400, column: 60, scope: !1991)
!2106 = !DILocation(line: 0, scope: !1990)
!2107 = !DILocation(line: 409, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 408, column: 11)
!2109 = !DILocation(line: 411, column: 17, scope: !2108)
!2110 = !DILocation(line: 412, column: 39, scope: !2108)
!2111 = !DILocation(line: 416, column: 32, scope: !2108)
!2112 = !DILocation(line: 412, column: 19, scope: !2108)
!2113 = !DILocation(line: 412, column: 15, scope: !2108)
!2114 = !DILocation(line: 417, column: 11, scope: !2108)
!2115 = !DILocation(line: 417, column: 26, scope: !2108)
!2116 = !DILocation(line: 417, column: 14, scope: !2108)
!2117 = !DILocation(line: 417, column: 63, scope: !2108)
!2118 = !DILocation(line: 408, column: 11, scope: !1990)
!2119 = !DILocation(line: 424, column: 11, scope: !1990)
!2120 = !DILocation(line: 425, column: 7, scope: !1990)
!2121 = !DILocation(line: 428, column: 15, scope: !1999)
!2122 = !DILocation(line: 430, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !95, line: 430, column: 15)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !95, line: 429, column: 13)
!2125 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 428, column: 15)
!2126 = !DILocation(line: 430, column: 15, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !95, line: 430, column: 15)
!2128 = !DILocation(line: 430, column: 15, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !95, line: 430, column: 15)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !95, line: 430, column: 15)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !95, line: 430, column: 15)
!2132 = !DILocation(line: 430, column: 15, scope: !2130)
!2133 = !DILocation(line: 430, column: 15, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !95, line: 430, column: 15)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !95, line: 430, column: 15)
!2136 = !DILocation(line: 430, column: 15, scope: !2135)
!2137 = !DILocation(line: 430, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !95, line: 430, column: 15)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !95, line: 430, column: 15)
!2140 = !DILocation(line: 430, column: 15, scope: !2139)
!2141 = !DILocation(line: 430, column: 15, scope: !2131)
!2142 = !DILocation(line: 430, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !95, line: 430, column: 15)
!2144 = distinct !DILexicalBlock(scope: !2123, file: !95, line: 430, column: 15)
!2145 = !DILocation(line: 430, column: 15, scope: !2144)
!2146 = !DILocation(line: 438, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2124, file: !95, line: 437, column: 19)
!2148 = !DILocation(line: 438, column: 48, scope: !2147)
!2149 = !DILocation(line: 438, column: 59, scope: !2147)
!2150 = !DILocation(line: 440, column: 19, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !95, line: 440, column: 19)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 440, column: 19)
!2153 = distinct !DILexicalBlock(scope: !2147, file: !95, line: 439, column: 17)
!2154 = !DILocation(line: 440, column: 19, scope: !2152)
!2155 = !DILocation(line: 441, column: 19, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !95, line: 441, column: 19)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !95, line: 441, column: 19)
!2158 = !DILocation(line: 441, column: 19, scope: !2157)
!2159 = !DILocation(line: 442, column: 17, scope: !2153)
!2160 = !DILocation(line: 449, column: 20, scope: !2125)
!2161 = !DILocation(line: 454, column: 11, scope: !1999)
!2162 = !DILocation(line: 457, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 455, column: 13)
!2164 = !DILocation(line: 463, column: 19, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2163, file: !95, line: 462, column: 19)
!2166 = !DILocation(line: 463, column: 47, scope: !2165)
!2167 = !DILocation(line: 463, column: 41, scope: !2165)
!2168 = !DILocation(line: 463, column: 52, scope: !2165)
!2169 = !DILocation(line: 462, column: 19, scope: !2163)
!2170 = !DILocation(line: 464, column: 25, scope: !2165)
!2171 = !DILocation(line: 464, column: 17, scope: !2165)
!2172 = !DILocation(line: 471, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2165, file: !95, line: 465, column: 19)
!2174 = !DILocation(line: 475, column: 21, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !95, line: 475, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !95, line: 475, column: 21)
!2177 = !DILocation(line: 475, column: 21, scope: !2176)
!2178 = !DILocation(line: 476, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !95, line: 476, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !95, line: 476, column: 21)
!2181 = !DILocation(line: 476, column: 21, scope: !2180)
!2182 = !DILocation(line: 477, column: 21, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !95, line: 477, column: 21)
!2184 = distinct !DILexicalBlock(scope: !2173, file: !95, line: 477, column: 21)
!2185 = !DILocation(line: 477, column: 21, scope: !2184)
!2186 = !DILocation(line: 478, column: 21, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !95, line: 478, column: 21)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !95, line: 478, column: 21)
!2189 = !DILocation(line: 478, column: 21, scope: !2188)
!2190 = !DILocation(line: 479, column: 21, scope: !2173)
!2191 = !DILocation(line: 492, column: 31, scope: !1999)
!2192 = !DILocation(line: 493, column: 31, scope: !1999)
!2193 = !DILocation(line: 495, column: 31, scope: !1999)
!2194 = !DILocation(line: 496, column: 31, scope: !1999)
!2195 = !DILocation(line: 497, column: 31, scope: !1999)
!2196 = !DILocation(line: 500, column: 15, scope: !1999)
!2197 = !DILocation(line: 502, column: 19, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !95, line: 501, column: 13)
!2199 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 500, column: 15)
!2200 = !DILocation(line: 509, column: 33, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 509, column: 15)
!2202 = !DILocation(line: 0, scope: !1999)
!2203 = !DILocation(line: 512, column: 9, scope: !1999)
!2204 = !DILocation(line: 514, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 513, column: 15)
!2206 = !DILocation(line: 517, column: 9, scope: !1999)
!2207 = !DILocation(line: 518, column: 15, scope: !1999)
!2208 = !DILocation(line: 526, column: 15, scope: !1999)
!2209 = !DILocation(line: 526, column: 40, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 526, column: 15)
!2211 = !DILocation(line: 526, column: 47, scope: !2210)
!2212 = !DILocation(line: 526, column: 18, scope: !2210)
!2213 = !DILocation(line: 530, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 530, column: 15)
!2215 = !DILocation(line: 530, column: 15, scope: !1999)
!2216 = !DILocation(line: 535, column: 11, scope: !1999)
!2217 = !DILocation(line: 549, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 548, column: 15)
!2219 = !DILocation(line: 556, column: 15, scope: !1999)
!2220 = !DILocation(line: 558, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !95, line: 557, column: 13)
!2222 = distinct !DILexicalBlock(scope: !1999, file: !95, line: 556, column: 15)
!2223 = !DILocation(line: 561, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 561, column: 19)
!2225 = !DILocation(line: 561, column: 30, scope: !2224)
!2226 = !DILocation(line: 570, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !95, line: 570, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 570, column: 15)
!2229 = !DILocation(line: 570, column: 15, scope: !2228)
!2230 = !DILocation(line: 571, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !95, line: 571, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 571, column: 15)
!2233 = !DILocation(line: 571, column: 15, scope: !2232)
!2234 = !DILocation(line: 572, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !95, line: 572, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2221, file: !95, line: 572, column: 15)
!2237 = !DILocation(line: 572, column: 15, scope: !2236)
!2238 = !DILocation(line: 574, column: 13, scope: !2221)
!2239 = !DILocation(line: 614, column: 17, scope: !1998)
!2240 = !DILocation(line: 0, scope: !1998)
!2241 = !DILocation(line: 617, column: 29, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2003, file: !95, line: 615, column: 15)
!2243 = !{!1198, !1198, i64 0}
!2244 = !DILocation(line: 617, column: 27, scope: !2242)
!2245 = !DILocation(line: 678, column: 40, scope: !1998)
!2246 = !DILocation(line: 680, column: 23, scope: !2032)
!2247 = !DILocation(line: 621, column: 17, scope: !2002)
!2248 = !DILocation(line: 621, column: 27, scope: !2002)
!2249 = !DILocalVariable(name: "__dest", arg: 1, scope: !2250, file: !2251, line: 57, type: !46)
!2250 = distinct !DISubprogram(name: "memset", scope: !2251, file: !2251, line: 57, type: !2252, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2254)
!2251 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!46, !46, !14, !119}
!2254 = !{!2249, !2255, !2256}
!2255 = !DILocalVariable(name: "__ch", arg: 2, scope: !2250, file: !2251, line: 57, type: !14)
!2256 = !DILocalVariable(name: "__len", arg: 3, scope: !2250, file: !2251, line: 57, type: !119)
!2257 = !DILocation(line: 0, scope: !2250, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 622, column: 17, scope: !2002)
!2259 = !DILocation(line: 59, column: 10, scope: !2250, inlinedAt: !2258)
!2260 = !DILocation(line: 626, column: 29, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2002, file: !95, line: 626, column: 21)
!2262 = !DILocation(line: 626, column: 21, scope: !2002)
!2263 = !DILocation(line: 627, column: 29, scope: !2261)
!2264 = !DILocation(line: 627, column: 19, scope: !2261)
!2265 = !DILocation(line: 629, column: 17, scope: !2002)
!2266 = !DILocation(line: 624, column: 19, scope: !2002)
!2267 = !DILocation(line: 625, column: 27, scope: !2002)
!2268 = !DILocation(line: 631, column: 21, scope: !2020)
!2269 = !DILocation(line: 632, column: 56, scope: !2020)
!2270 = !DILocation(line: 632, column: 50, scope: !2020)
!2271 = !DILocation(line: 633, column: 53, scope: !2020)
!2272 = !DILocation(line: 0, scope: !2020)
!2273 = !DILocation(line: 632, column: 36, scope: !2020)
!2274 = !DILocation(line: 634, column: 25, scope: !2020)
!2275 = !DILocation(line: 644, column: 38, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2027, file: !95, line: 642, column: 23)
!2277 = !DILocation(line: 644, column: 48, scope: !2276)
!2278 = !DILocation(line: 644, column: 25, scope: !2276)
!2279 = !DILocation(line: 644, column: 51, scope: !2276)
!2280 = !DILocation(line: 645, column: 28, scope: !2276)
!2281 = !DILocation(line: 644, column: 34, scope: !2276)
!2282 = distinct !{!2282, !2278, !2280, !755}
!2283 = !DILocation(line: 655, column: 29, scope: !2025)
!2284 = !DILocation(line: 0, scope: !2024)
!2285 = !DILocation(line: 659, column: 49, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !95, line: 658, column: 29)
!2287 = distinct !DILexicalBlock(scope: !2024, file: !95, line: 658, column: 29)
!2288 = !DILocation(line: 659, column: 39, scope: !2286)
!2289 = !DILocation(line: 659, column: 31, scope: !2286)
!2290 = !DILocation(line: 658, column: 53, scope: !2286)
!2291 = !DILocation(line: 658, column: 43, scope: !2286)
!2292 = !DILocation(line: 658, column: 29, scope: !2287)
!2293 = distinct !{!2293, !2292, !2294, !755}
!2294 = !DILocation(line: 667, column: 33, scope: !2287)
!2295 = !DILocation(line: 674, column: 19, scope: !2002)
!2296 = !DILocation(line: 670, column: 41, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2026, file: !95, line: 670, column: 29)
!2298 = !DILocation(line: 670, column: 31, scope: !2297)
!2299 = !DILocation(line: 670, column: 29, scope: !2026)
!2300 = !DILocation(line: 672, column: 27, scope: !2026)
!2301 = !DILocation(line: 675, column: 26, scope: !2002)
!2302 = !DILocation(line: 675, column: 24, scope: !2002)
!2303 = !DILocation(line: 674, column: 19, scope: !2020)
!2304 = distinct !{!2304, !2265, !2305, !755}
!2305 = !DILocation(line: 675, column: 44, scope: !2002)
!2306 = !DILocation(line: 676, column: 15, scope: !2003)
!2307 = !DILocation(line: 680, column: 19, scope: !2032)
!2308 = !DILocation(line: 680, column: 45, scope: !2032)
!2309 = !DILocation(line: 684, column: 33, scope: !2031)
!2310 = !DILocation(line: 0, scope: !2031)
!2311 = !DILocation(line: 686, column: 17, scope: !2031)
!2312 = !DILocation(line: 405, column: 12, scope: !1990)
!2313 = !DILocation(line: 688, column: 43, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !95, line: 688, column: 25)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !95, line: 687, column: 19)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !95, line: 686, column: 17)
!2317 = distinct !DILexicalBlock(scope: !2031, file: !95, line: 686, column: 17)
!2318 = !DILocation(line: 690, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !95, line: 690, column: 25)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !95, line: 689, column: 23)
!2321 = !DILocation(line: 690, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !95, line: 690, column: 25)
!2323 = !DILocation(line: 690, column: 25, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !95, line: 690, column: 25)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !95, line: 690, column: 25)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !95, line: 690, column: 25)
!2327 = !DILocation(line: 690, column: 25, scope: !2325)
!2328 = !DILocation(line: 690, column: 25, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !95, line: 690, column: 25)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !95, line: 690, column: 25)
!2331 = !DILocation(line: 690, column: 25, scope: !2330)
!2332 = !DILocation(line: 690, column: 25, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !95, line: 690, column: 25)
!2334 = distinct !DILexicalBlock(scope: !2326, file: !95, line: 690, column: 25)
!2335 = !DILocation(line: 690, column: 25, scope: !2334)
!2336 = !DILocation(line: 690, column: 25, scope: !2326)
!2337 = !DILocation(line: 690, column: 25, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !95, line: 690, column: 25)
!2339 = distinct !DILexicalBlock(scope: !2319, file: !95, line: 690, column: 25)
!2340 = !DILocation(line: 690, column: 25, scope: !2339)
!2341 = !DILocation(line: 691, column: 25, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !95, line: 691, column: 25)
!2343 = distinct !DILexicalBlock(scope: !2320, file: !95, line: 691, column: 25)
!2344 = !DILocation(line: 691, column: 25, scope: !2343)
!2345 = !DILocation(line: 692, column: 25, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !95, line: 692, column: 25)
!2347 = distinct !DILexicalBlock(scope: !2320, file: !95, line: 692, column: 25)
!2348 = !DILocation(line: 692, column: 25, scope: !2347)
!2349 = !DILocation(line: 693, column: 38, scope: !2320)
!2350 = !DILocation(line: 693, column: 33, scope: !2320)
!2351 = !DILocation(line: 694, column: 23, scope: !2320)
!2352 = !DILocation(line: 695, column: 30, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2314, file: !95, line: 695, column: 30)
!2354 = !DILocation(line: 695, column: 30, scope: !2314)
!2355 = !DILocation(line: 697, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !95, line: 697, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !95, line: 697, column: 25)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !95, line: 696, column: 23)
!2359 = !DILocation(line: 697, column: 25, scope: !2357)
!2360 = !DILocation(line: 699, column: 23, scope: !2358)
!2361 = !DILocation(line: 700, column: 35, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2315, file: !95, line: 700, column: 25)
!2363 = !DILocation(line: 700, column: 30, scope: !2362)
!2364 = !DILocation(line: 700, column: 25, scope: !2315)
!2365 = !DILocation(line: 702, column: 21, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !95, line: 702, column: 21)
!2367 = distinct !DILexicalBlock(scope: !2315, file: !95, line: 702, column: 21)
!2368 = !DILocation(line: 702, column: 21, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !95, line: 702, column: 21)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !95, line: 702, column: 21)
!2371 = distinct !DILexicalBlock(scope: !2366, file: !95, line: 702, column: 21)
!2372 = !DILocation(line: 702, column: 21, scope: !2370)
!2373 = !DILocation(line: 702, column: 21, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !95, line: 702, column: 21)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !95, line: 702, column: 21)
!2376 = !DILocation(line: 702, column: 21, scope: !2375)
!2377 = !DILocation(line: 702, column: 21, scope: !2371)
!2378 = !DILocation(line: 0, scope: !2315)
!2379 = !DILocation(line: 703, column: 21, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !95, line: 703, column: 21)
!2381 = distinct !DILexicalBlock(scope: !2315, file: !95, line: 703, column: 21)
!2382 = !DILocation(line: 703, column: 21, scope: !2381)
!2383 = !DILocation(line: 704, column: 25, scope: !2315)
!2384 = !DILocation(line: 686, column: 17, scope: !2316)
!2385 = distinct !{!2385, !2386, !2387}
!2386 = !DILocation(line: 686, column: 17, scope: !2317)
!2387 = !DILocation(line: 705, column: 19, scope: !2317)
!2388 = !DILocation(line: 416, column: 30, scope: !2108)
!2389 = !DILocation(line: 712, column: 34, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 712, column: 11)
!2391 = !DILocation(line: 715, column: 35, scope: !2390)
!2392 = !DILocation(line: 715, column: 17, scope: !2390)
!2393 = !DILocation(line: 715, column: 47, scope: !2390)
!2394 = !DILocation(line: 715, column: 65, scope: !2390)
!2395 = !DILocation(line: 716, column: 11, scope: !2390)
!2396 = !DILocation(line: 712, column: 11, scope: !1990)
!2397 = !DILocation(line: 400, column: 10, scope: !1992)
!2398 = !DILocation(line: 719, column: 5, scope: !1990)
!2399 = !DILocation(line: 720, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 720, column: 7)
!2401 = !DILocation(line: 720, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2400, file: !95, line: 720, column: 7)
!2403 = !DILocation(line: 720, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !95, line: 720, column: 7)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !95, line: 720, column: 7)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !95, line: 720, column: 7)
!2407 = !DILocation(line: 720, column: 7, scope: !2405)
!2408 = !DILocation(line: 720, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !95, line: 720, column: 7)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !95, line: 720, column: 7)
!2411 = !DILocation(line: 720, column: 7, scope: !2410)
!2412 = !DILocation(line: 720, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !95, line: 720, column: 7)
!2414 = distinct !DILexicalBlock(scope: !2406, file: !95, line: 720, column: 7)
!2415 = !DILocation(line: 720, column: 7, scope: !2414)
!2416 = !DILocation(line: 720, column: 7, scope: !2406)
!2417 = !DILocation(line: 720, column: 7, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !95, line: 720, column: 7)
!2419 = distinct !DILexicalBlock(scope: !2400, file: !95, line: 720, column: 7)
!2420 = !DILocation(line: 720, column: 7, scope: !2419)
!2421 = !DILocation(line: 722, column: 5, scope: !1990)
!2422 = !DILocation(line: 723, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !95, line: 723, column: 7)
!2424 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 723, column: 7)
!2425 = !DILocation(line: 424, column: 9, scope: !1990)
!2426 = !DILocation(line: 723, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !95, line: 723, column: 7)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !95, line: 723, column: 7)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !95, line: 723, column: 7)
!2430 = !DILocation(line: 723, column: 7, scope: !2428)
!2431 = !DILocation(line: 723, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !95, line: 723, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !95, line: 723, column: 7)
!2434 = !DILocation(line: 723, column: 7, scope: !2433)
!2435 = !DILocation(line: 723, column: 7, scope: !2429)
!2436 = !DILocation(line: 724, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !95, line: 724, column: 7)
!2438 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 724, column: 7)
!2439 = !DILocation(line: 724, column: 7, scope: !2438)
!2440 = !DILocation(line: 726, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !1990, file: !95, line: 726, column: 11)
!2442 = !DILocation(line: 726, column: 11, scope: !1990)
!2443 = !DILocation(line: 728, column: 5, scope: !1991)
!2444 = !DILocation(line: 400, column: 75, scope: !1991)
!2445 = !DILocation(line: 400, column: 3, scope: !1991)
!2446 = distinct !{!2446, !2104, !2447, !755}
!2447 = !DILocation(line: 728, column: 5, scope: !1992)
!2448 = !DILocation(line: 730, column: 11, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 730, column: 7)
!2450 = !DILocation(line: 730, column: 16, scope: !2449)
!2451 = !DILocation(line: 738, column: 51, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 738, column: 7)
!2453 = !DILocation(line: 741, column: 11, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !95, line: 741, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !95, line: 740, column: 5)
!2456 = !DILocation(line: 741, column: 11, scope: !2455)
!2457 = !DILocation(line: 742, column: 16, scope: !2454)
!2458 = !DILocation(line: 742, column: 9, scope: !2454)
!2459 = !DILocation(line: 746, column: 18, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !95, line: 746, column: 16)
!2461 = !DILocation(line: 746, column: 29, scope: !2460)
!2462 = !DILocation(line: 755, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 755, column: 7)
!2464 = !DILocation(line: 755, column: 20, scope: !2463)
!2465 = !DILocation(line: 756, column: 12, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !95, line: 756, column: 5)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !95, line: 756, column: 5)
!2468 = !DILocation(line: 756, column: 5, scope: !2467)
!2469 = !DILocation(line: 757, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !95, line: 757, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !95, line: 757, column: 7)
!2472 = !DILocation(line: 757, column: 7, scope: !2471)
!2473 = !DILocation(line: 756, column: 39, scope: !2466)
!2474 = distinct !{!2474, !2468, !2475, !755}
!2475 = !DILocation(line: 757, column: 7, scope: !2467)
!2476 = !DILocation(line: 759, column: 11, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 759, column: 7)
!2478 = !DILocation(line: 759, column: 7, scope: !1963)
!2479 = !DILocation(line: 760, column: 5, scope: !2477)
!2480 = !DILocation(line: 760, column: 17, scope: !2477)
!2481 = !DILocation(line: 763, column: 2, scope: !1963)
!2482 = !DILocation(line: 766, column: 51, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !1963, file: !95, line: 766, column: 7)
!2484 = !DILocation(line: 766, column: 21, scope: !2483)
!2485 = !DILocation(line: 770, column: 42, scope: !1963)
!2486 = !DILocation(line: 768, column: 10, scope: !1963)
!2487 = !DILocation(line: 768, column: 3, scope: !1963)
!2488 = !DILocation(line: 772, column: 1, scope: !1963)
!2489 = distinct !DISubprogram(name: "gettext_quote", scope: !95, file: !95, line: 207, type: !2490, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!58, !58, !29}
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "msgid", arg: 1, scope: !2489, file: !95, line: 207, type: !58)
!2494 = !DILocalVariable(name: "s", arg: 2, scope: !2489, file: !95, line: 207, type: !29)
!2495 = !DILocalVariable(name: "translation", scope: !2489, file: !95, line: 209, type: !58)
!2496 = !DILocalVariable(name: "locale_code", scope: !2489, file: !95, line: 210, type: !58)
!2497 = !DILocation(line: 0, scope: !2489)
!2498 = !DILocation(line: 209, column: 29, scope: !2489)
!2499 = !DILocation(line: 212, column: 19, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2489, file: !95, line: 212, column: 7)
!2501 = !DILocation(line: 212, column: 7, scope: !2489)
!2502 = !DILocation(line: 233, column: 17, scope: !2489)
!2503 = !DILocalVariable(name: "s1", arg: 1, scope: !2504, file: !2505, line: 160, type: !58)
!2504 = distinct !DISubprogram(name: "strcaseeq0", scope: !2505, file: !2505, line: 160, type: !2506, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2508)
!2505 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!14, !58, !58, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2508 = !{!2503, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2509 = !DILocalVariable(name: "s2", arg: 2, scope: !2504, file: !2505, line: 160, type: !58)
!2510 = !DILocalVariable(name: "s20", arg: 3, scope: !2504, file: !2505, line: 160, type: !45)
!2511 = !DILocalVariable(name: "s21", arg: 4, scope: !2504, file: !2505, line: 160, type: !45)
!2512 = !DILocalVariable(name: "s22", arg: 5, scope: !2504, file: !2505, line: 160, type: !45)
!2513 = !DILocalVariable(name: "s23", arg: 6, scope: !2504, file: !2505, line: 160, type: !45)
!2514 = !DILocalVariable(name: "s24", arg: 7, scope: !2504, file: !2505, line: 160, type: !45)
!2515 = !DILocalVariable(name: "s25", arg: 8, scope: !2504, file: !2505, line: 160, type: !45)
!2516 = !DILocalVariable(name: "s26", arg: 9, scope: !2504, file: !2505, line: 160, type: !45)
!2517 = !DILocalVariable(name: "s27", arg: 10, scope: !2504, file: !2505, line: 160, type: !45)
!2518 = !DILocalVariable(name: "s28", arg: 11, scope: !2504, file: !2505, line: 160, type: !45)
!2519 = !DILocation(line: 0, scope: !2504, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 234, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2489, file: !95, line: 234, column: 7)
!2522 = !DILocation(line: 162, column: 7, scope: !2523, inlinedAt: !2520)
!2523 = distinct !DILexicalBlock(scope: !2504, file: !2505, line: 162, column: 7)
!2524 = !DILocalVariable(name: "s1", arg: 1, scope: !2525, file: !2505, line: 146, type: !58)
!2525 = distinct !DISubprogram(name: "strcaseeq1", scope: !2505, file: !2505, line: 146, type: !2526, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!14, !58, !58, !45, !45, !45, !45, !45, !45, !45, !45}
!2528 = !{!2524, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2529 = !DILocalVariable(name: "s2", arg: 2, scope: !2525, file: !2505, line: 146, type: !58)
!2530 = !DILocalVariable(name: "s21", arg: 3, scope: !2525, file: !2505, line: 146, type: !45)
!2531 = !DILocalVariable(name: "s22", arg: 4, scope: !2525, file: !2505, line: 146, type: !45)
!2532 = !DILocalVariable(name: "s23", arg: 5, scope: !2525, file: !2505, line: 146, type: !45)
!2533 = !DILocalVariable(name: "s24", arg: 6, scope: !2525, file: !2505, line: 146, type: !45)
!2534 = !DILocalVariable(name: "s25", arg: 7, scope: !2525, file: !2505, line: 146, type: !45)
!2535 = !DILocalVariable(name: "s26", arg: 8, scope: !2525, file: !2505, line: 146, type: !45)
!2536 = !DILocalVariable(name: "s27", arg: 9, scope: !2525, file: !2505, line: 146, type: !45)
!2537 = !DILocalVariable(name: "s28", arg: 10, scope: !2525, file: !2505, line: 146, type: !45)
!2538 = !DILocation(line: 0, scope: !2525, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 167, column: 16, scope: !2540, inlinedAt: !2520)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2505, line: 164, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2523, file: !2505, line: 163, column: 5)
!2542 = !DILocation(line: 148, column: 7, scope: !2543, inlinedAt: !2539)
!2543 = distinct !DILexicalBlock(scope: !2525, file: !2505, line: 148, column: 7)
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2545, file: !2505, line: 132, type: !58)
!2545 = distinct !DISubprogram(name: "strcaseeq2", scope: !2505, file: !2505, line: 132, type: !2546, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!14, !58, !58, !45, !45, !45, !45, !45, !45, !45}
!2548 = !{!2544, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2549 = !DILocalVariable(name: "s2", arg: 2, scope: !2545, file: !2505, line: 132, type: !58)
!2550 = !DILocalVariable(name: "s22", arg: 3, scope: !2545, file: !2505, line: 132, type: !45)
!2551 = !DILocalVariable(name: "s23", arg: 4, scope: !2545, file: !2505, line: 132, type: !45)
!2552 = !DILocalVariable(name: "s24", arg: 5, scope: !2545, file: !2505, line: 132, type: !45)
!2553 = !DILocalVariable(name: "s25", arg: 6, scope: !2545, file: !2505, line: 132, type: !45)
!2554 = !DILocalVariable(name: "s26", arg: 7, scope: !2545, file: !2505, line: 132, type: !45)
!2555 = !DILocalVariable(name: "s27", arg: 8, scope: !2545, file: !2505, line: 132, type: !45)
!2556 = !DILocalVariable(name: "s28", arg: 9, scope: !2545, file: !2505, line: 132, type: !45)
!2557 = !DILocation(line: 0, scope: !2545, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 153, column: 16, scope: !2559, inlinedAt: !2539)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !2505, line: 150, column: 11)
!2560 = distinct !DILexicalBlock(scope: !2543, file: !2505, line: 149, column: 5)
!2561 = !DILocation(line: 134, column: 7, scope: !2562, inlinedAt: !2558)
!2562 = distinct !DILexicalBlock(scope: !2545, file: !2505, line: 134, column: 7)
!2563 = !DILocalVariable(name: "s1", arg: 1, scope: !2564, file: !2505, line: 118, type: !58)
!2564 = distinct !DISubprogram(name: "strcaseeq3", scope: !2505, file: !2505, line: 118, type: !2565, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!14, !58, !58, !45, !45, !45, !45, !45, !45}
!2567 = !{!2563, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2568 = !DILocalVariable(name: "s2", arg: 2, scope: !2564, file: !2505, line: 118, type: !58)
!2569 = !DILocalVariable(name: "s23", arg: 3, scope: !2564, file: !2505, line: 118, type: !45)
!2570 = !DILocalVariable(name: "s24", arg: 4, scope: !2564, file: !2505, line: 118, type: !45)
!2571 = !DILocalVariable(name: "s25", arg: 5, scope: !2564, file: !2505, line: 118, type: !45)
!2572 = !DILocalVariable(name: "s26", arg: 6, scope: !2564, file: !2505, line: 118, type: !45)
!2573 = !DILocalVariable(name: "s27", arg: 7, scope: !2564, file: !2505, line: 118, type: !45)
!2574 = !DILocalVariable(name: "s28", arg: 8, scope: !2564, file: !2505, line: 118, type: !45)
!2575 = !DILocation(line: 0, scope: !2564, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 139, column: 16, scope: !2577, inlinedAt: !2558)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !2505, line: 136, column: 11)
!2578 = distinct !DILexicalBlock(scope: !2562, file: !2505, line: 135, column: 5)
!2579 = !DILocation(line: 120, column: 7, scope: !2580, inlinedAt: !2576)
!2580 = distinct !DILexicalBlock(scope: !2564, file: !2505, line: 120, column: 7)
!2581 = !DILocation(line: 120, column: 7, scope: !2564, inlinedAt: !2576)
!2582 = !DILocalVariable(name: "s1", arg: 1, scope: !2583, file: !2505, line: 104, type: !58)
!2583 = distinct !DISubprogram(name: "strcaseeq4", scope: !2505, file: !2505, line: 104, type: !2584, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!14, !58, !58, !45, !45, !45, !45, !45}
!2586 = !{!2582, !2587, !2588, !2589, !2590, !2591, !2592}
!2587 = !DILocalVariable(name: "s2", arg: 2, scope: !2583, file: !2505, line: 104, type: !58)
!2588 = !DILocalVariable(name: "s24", arg: 3, scope: !2583, file: !2505, line: 104, type: !45)
!2589 = !DILocalVariable(name: "s25", arg: 4, scope: !2583, file: !2505, line: 104, type: !45)
!2590 = !DILocalVariable(name: "s26", arg: 5, scope: !2583, file: !2505, line: 104, type: !45)
!2591 = !DILocalVariable(name: "s27", arg: 6, scope: !2583, file: !2505, line: 104, type: !45)
!2592 = !DILocalVariable(name: "s28", arg: 7, scope: !2583, file: !2505, line: 104, type: !45)
!2593 = !DILocation(line: 0, scope: !2583, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 125, column: 16, scope: !2595, inlinedAt: !2576)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !2505, line: 122, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2580, file: !2505, line: 121, column: 5)
!2597 = !DILocation(line: 106, column: 7, scope: !2598, inlinedAt: !2594)
!2598 = distinct !DILexicalBlock(scope: !2583, file: !2505, line: 106, column: 7)
!2599 = !DILocation(line: 106, column: 7, scope: !2583, inlinedAt: !2594)
!2600 = !DILocalVariable(name: "s1", arg: 1, scope: !2601, file: !2505, line: 90, type: !58)
!2601 = distinct !DISubprogram(name: "strcaseeq5", scope: !2505, file: !2505, line: 90, type: !2602, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!14, !58, !58, !45, !45, !45, !45}
!2604 = !{!2600, !2605, !2606, !2607, !2608, !2609}
!2605 = !DILocalVariable(name: "s2", arg: 2, scope: !2601, file: !2505, line: 90, type: !58)
!2606 = !DILocalVariable(name: "s25", arg: 3, scope: !2601, file: !2505, line: 90, type: !45)
!2607 = !DILocalVariable(name: "s26", arg: 4, scope: !2601, file: !2505, line: 90, type: !45)
!2608 = !DILocalVariable(name: "s27", arg: 5, scope: !2601, file: !2505, line: 90, type: !45)
!2609 = !DILocalVariable(name: "s28", arg: 6, scope: !2601, file: !2505, line: 90, type: !45)
!2610 = !DILocation(line: 0, scope: !2601, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 111, column: 16, scope: !2612, inlinedAt: !2594)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !2505, line: 108, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2598, file: !2505, line: 107, column: 5)
!2614 = !DILocation(line: 92, column: 7, scope: !2615, inlinedAt: !2611)
!2615 = distinct !DILexicalBlock(scope: !2601, file: !2505, line: 92, column: 7)
!2616 = !DILocation(line: 92, column: 7, scope: !2601, inlinedAt: !2611)
!2617 = !DILocation(line: 235, column: 12, scope: !2521)
!2618 = !DILocation(line: 235, column: 21, scope: !2521)
!2619 = !DILocation(line: 235, column: 5, scope: !2521)
!2620 = !DILocation(line: 0, scope: !2525, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 167, column: 16, scope: !2540, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 236, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2489, file: !95, line: 236, column: 7)
!2624 = !DILocation(line: 148, column: 7, scope: !2543, inlinedAt: !2621)
!2625 = !DILocation(line: 0, scope: !2545, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 153, column: 16, scope: !2559, inlinedAt: !2621)
!2627 = !DILocation(line: 134, column: 7, scope: !2562, inlinedAt: !2626)
!2628 = !DILocation(line: 134, column: 7, scope: !2545, inlinedAt: !2626)
!2629 = !DILocation(line: 0, scope: !2564, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 139, column: 16, scope: !2577, inlinedAt: !2626)
!2631 = !DILocation(line: 120, column: 7, scope: !2580, inlinedAt: !2630)
!2632 = !DILocation(line: 120, column: 7, scope: !2564, inlinedAt: !2630)
!2633 = !DILocation(line: 0, scope: !2583, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 125, column: 16, scope: !2595, inlinedAt: !2630)
!2635 = !DILocation(line: 106, column: 7, scope: !2598, inlinedAt: !2634)
!2636 = !DILocation(line: 106, column: 7, scope: !2583, inlinedAt: !2634)
!2637 = !DILocation(line: 0, scope: !2601, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 111, column: 16, scope: !2612, inlinedAt: !2634)
!2639 = !DILocation(line: 92, column: 7, scope: !2615, inlinedAt: !2638)
!2640 = !DILocation(line: 92, column: 7, scope: !2601, inlinedAt: !2638)
!2641 = !DILocalVariable(name: "s1", arg: 1, scope: !2642, file: !2505, line: 76, type: !58)
!2642 = distinct !DISubprogram(name: "strcaseeq6", scope: !2505, file: !2505, line: 76, type: !2643, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!14, !58, !58, !45, !45, !45}
!2645 = !{!2641, !2646, !2647, !2648, !2649}
!2646 = !DILocalVariable(name: "s2", arg: 2, scope: !2642, file: !2505, line: 76, type: !58)
!2647 = !DILocalVariable(name: "s26", arg: 3, scope: !2642, file: !2505, line: 76, type: !45)
!2648 = !DILocalVariable(name: "s27", arg: 4, scope: !2642, file: !2505, line: 76, type: !45)
!2649 = !DILocalVariable(name: "s28", arg: 5, scope: !2642, file: !2505, line: 76, type: !45)
!2650 = !DILocation(line: 0, scope: !2642, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 97, column: 16, scope: !2652, inlinedAt: !2638)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !2505, line: 94, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2615, file: !2505, line: 93, column: 5)
!2654 = !DILocation(line: 78, column: 7, scope: !2655, inlinedAt: !2651)
!2655 = distinct !DILexicalBlock(scope: !2642, file: !2505, line: 78, column: 7)
!2656 = !DILocation(line: 78, column: 7, scope: !2642, inlinedAt: !2651)
!2657 = !DILocalVariable(name: "s1", arg: 1, scope: !2658, file: !2505, line: 62, type: !58)
!2658 = distinct !DISubprogram(name: "strcaseeq7", scope: !2505, file: !2505, line: 62, type: !2659, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!14, !58, !58, !45, !45}
!2661 = !{!2657, !2662, !2663, !2664}
!2662 = !DILocalVariable(name: "s2", arg: 2, scope: !2658, file: !2505, line: 62, type: !58)
!2663 = !DILocalVariable(name: "s27", arg: 3, scope: !2658, file: !2505, line: 62, type: !45)
!2664 = !DILocalVariable(name: "s28", arg: 4, scope: !2658, file: !2505, line: 62, type: !45)
!2665 = !DILocation(line: 0, scope: !2658, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 83, column: 16, scope: !2667, inlinedAt: !2651)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2505, line: 80, column: 11)
!2668 = distinct !DILexicalBlock(scope: !2655, file: !2505, line: 79, column: 5)
!2669 = !DILocation(line: 64, column: 7, scope: !2670, inlinedAt: !2666)
!2670 = distinct !DILexicalBlock(scope: !2658, file: !2505, line: 64, column: 7)
!2671 = !DILocation(line: 236, column: 7, scope: !2489)
!2672 = !DILocation(line: 237, column: 12, scope: !2623)
!2673 = !DILocation(line: 237, column: 21, scope: !2623)
!2674 = !DILocation(line: 237, column: 5, scope: !2623)
!2675 = !DILocation(line: 239, column: 13, scope: !2489)
!2676 = !DILocation(line: 239, column: 11, scope: !2489)
!2677 = !DILocation(line: 239, column: 3, scope: !2489)
!2678 = !DILocation(line: 240, column: 1, scope: !2489)
!2679 = !DISubprogram(name: "iswprint", scope: !2680, file: !2680, line: 120, type: !2681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!2680 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!14, !21}
!2683 = !DISubprogram(name: "mbsinit", scope: !2684, file: !2684, line: 292, type: !2685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!2684 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!14, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2689 = distinct !DISubprogram(name: "quotearg_alloc", scope: !95, file: !95, line: 799, type: !2690, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!44, !58, !119, !1855}
!2692 = !{!2693, !2694, !2695}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2689, file: !95, line: 799, type: !58)
!2694 = !DILocalVariable(name: "argsize", arg: 2, scope: !2689, file: !95, line: 799, type: !119)
!2695 = !DILocalVariable(name: "o", arg: 3, scope: !2689, file: !95, line: 800, type: !1855)
!2696 = !DILocation(line: 0, scope: !2689)
!2697 = !DILocalVariable(name: "arg", arg: 1, scope: !2698, file: !95, line: 812, type: !58)
!2698 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !95, file: !95, line: 812, type: !2699, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!44, !58, !119, !251, !1855}
!2701 = !{!2697, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2702 = !DILocalVariable(name: "argsize", arg: 2, scope: !2698, file: !95, line: 812, type: !119)
!2703 = !DILocalVariable(name: "size", arg: 3, scope: !2698, file: !95, line: 812, type: !251)
!2704 = !DILocalVariable(name: "o", arg: 4, scope: !2698, file: !95, line: 813, type: !1855)
!2705 = !DILocalVariable(name: "p", scope: !2698, file: !95, line: 815, type: !1855)
!2706 = !DILocalVariable(name: "e", scope: !2698, file: !95, line: 816, type: !14)
!2707 = !DILocalVariable(name: "flags", scope: !2698, file: !95, line: 818, type: !14)
!2708 = !DILocalVariable(name: "bufsize", scope: !2698, file: !95, line: 819, type: !119)
!2709 = !DILocalVariable(name: "buf", scope: !2698, file: !95, line: 823, type: !44)
!2710 = !DILocation(line: 0, scope: !2698, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 802, column: 10, scope: !2689)
!2712 = !DILocation(line: 815, column: 37, scope: !2698, inlinedAt: !2711)
!2713 = !DILocation(line: 816, column: 11, scope: !2698, inlinedAt: !2711)
!2714 = !DILocation(line: 818, column: 18, scope: !2698, inlinedAt: !2711)
!2715 = !DILocation(line: 818, column: 24, scope: !2698, inlinedAt: !2711)
!2716 = !DILocation(line: 819, column: 69, scope: !2698, inlinedAt: !2711)
!2717 = !DILocation(line: 820, column: 53, scope: !2698, inlinedAt: !2711)
!2718 = !DILocation(line: 821, column: 49, scope: !2698, inlinedAt: !2711)
!2719 = !DILocation(line: 822, column: 49, scope: !2698, inlinedAt: !2711)
!2720 = !DILocation(line: 819, column: 20, scope: !2698, inlinedAt: !2711)
!2721 = !DILocation(line: 822, column: 62, scope: !2698, inlinedAt: !2711)
!2722 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !247, line: 216, type: !119)
!2723 = distinct !DISubprogram(name: "xcharalloc", scope: !247, file: !247, line: 216, type: !2724, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!44, !119}
!2726 = !{!2722}
!2727 = !DILocation(line: 0, scope: !2723, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 823, column: 15, scope: !2698, inlinedAt: !2711)
!2729 = !DILocation(line: 218, column: 10, scope: !2723, inlinedAt: !2728)
!2730 = !DILocation(line: 824, column: 60, scope: !2698, inlinedAt: !2711)
!2731 = !DILocation(line: 826, column: 32, scope: !2698, inlinedAt: !2711)
!2732 = !DILocation(line: 826, column: 47, scope: !2698, inlinedAt: !2711)
!2733 = !DILocation(line: 824, column: 3, scope: !2698, inlinedAt: !2711)
!2734 = !DILocation(line: 827, column: 9, scope: !2698, inlinedAt: !2711)
!2735 = !DILocation(line: 802, column: 3, scope: !2689)
!2736 = !DILocation(line: 0, scope: !2698)
!2737 = !DILocation(line: 815, column: 37, scope: !2698)
!2738 = !DILocation(line: 816, column: 11, scope: !2698)
!2739 = !DILocation(line: 818, column: 18, scope: !2698)
!2740 = !DILocation(line: 818, column: 27, scope: !2698)
!2741 = !DILocation(line: 818, column: 24, scope: !2698)
!2742 = !DILocation(line: 819, column: 69, scope: !2698)
!2743 = !DILocation(line: 820, column: 53, scope: !2698)
!2744 = !DILocation(line: 821, column: 49, scope: !2698)
!2745 = !DILocation(line: 822, column: 49, scope: !2698)
!2746 = !DILocation(line: 819, column: 20, scope: !2698)
!2747 = !DILocation(line: 822, column: 62, scope: !2698)
!2748 = !DILocation(line: 0, scope: !2723, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 823, column: 15, scope: !2698)
!2750 = !DILocation(line: 218, column: 10, scope: !2723, inlinedAt: !2749)
!2751 = !DILocation(line: 824, column: 60, scope: !2698)
!2752 = !DILocation(line: 826, column: 32, scope: !2698)
!2753 = !DILocation(line: 826, column: 47, scope: !2698)
!2754 = !DILocation(line: 824, column: 3, scope: !2698)
!2755 = !DILocation(line: 827, column: 9, scope: !2698)
!2756 = !DILocation(line: 828, column: 7, scope: !2698)
!2757 = !DILocation(line: 829, column: 11, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2698, file: !95, line: 828, column: 7)
!2759 = !{!1197, !1197, i64 0}
!2760 = !DILocation(line: 829, column: 5, scope: !2758)
!2761 = !DILocation(line: 830, column: 3, scope: !2698)
!2762 = distinct !DISubprogram(name: "quotearg_free", scope: !95, file: !95, line: 848, type: !718, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2763)
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "sv", scope: !2762, file: !95, line: 850, type: !150)
!2765 = !DILocalVariable(name: "i", scope: !2762, file: !95, line: 851, type: !14)
!2766 = !DILocation(line: 850, column: 24, scope: !2762)
!2767 = !DILocation(line: 0, scope: !2762)
!2768 = !DILocation(line: 852, column: 19, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !95, line: 852, column: 3)
!2770 = distinct !DILexicalBlock(scope: !2762, file: !95, line: 852, column: 3)
!2771 = !DILocation(line: 852, column: 17, scope: !2769)
!2772 = !DILocation(line: 852, column: 3, scope: !2770)
!2773 = !DILocation(line: 853, column: 17, scope: !2769)
!2774 = !{!2775, !709, i64 8}
!2775 = !{!"slotvec", !1197, i64 0, !709, i64 8}
!2776 = !DILocation(line: 853, column: 5, scope: !2769)
!2777 = !DILocation(line: 852, column: 28, scope: !2769)
!2778 = distinct !{!2778, !2772, !2779, !755}
!2779 = !DILocation(line: 853, column: 20, scope: !2770)
!2780 = !DILocation(line: 854, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2762, file: !95, line: 854, column: 7)
!2782 = !DILocation(line: 854, column: 17, scope: !2781)
!2783 = !DILocation(line: 854, column: 7, scope: !2762)
!2784 = !DILocation(line: 856, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !95, line: 855, column: 5)
!2786 = !DILocation(line: 857, column: 21, scope: !2785)
!2787 = !{!2775, !1197, i64 0}
!2788 = !DILocation(line: 858, column: 20, scope: !2785)
!2789 = !DILocation(line: 859, column: 5, scope: !2785)
!2790 = !DILocation(line: 860, column: 10, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2762, file: !95, line: 860, column: 7)
!2792 = !DILocation(line: 860, column: 7, scope: !2762)
!2793 = !DILocation(line: 862, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !95, line: 861, column: 5)
!2795 = !DILocation(line: 862, column: 7, scope: !2794)
!2796 = !DILocation(line: 863, column: 15, scope: !2794)
!2797 = !DILocation(line: 864, column: 5, scope: !2794)
!2798 = !DILocation(line: 865, column: 10, scope: !2762)
!2799 = !DILocation(line: 866, column: 1, scope: !2762)
!2800 = distinct !DISubprogram(name: "quotearg_n", scope: !95, file: !95, line: 931, type: !836, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2801)
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !95, line: 931, type: !14)
!2803 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !95, line: 931, type: !58)
!2804 = !DILocation(line: 0, scope: !2800)
!2805 = !DILocation(line: 933, column: 10, scope: !2800)
!2806 = !DILocation(line: 933, column: 3, scope: !2800)
!2807 = distinct !DISubprogram(name: "quotearg_n_options", scope: !95, file: !95, line: 877, type: !2808, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!44, !14, !58, !119, !1855}
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2816, !2817, !2820, !2821, !2823, !2824, !2825}
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2807, file: !95, line: 877, type: !14)
!2812 = !DILocalVariable(name: "arg", arg: 2, scope: !2807, file: !95, line: 877, type: !58)
!2813 = !DILocalVariable(name: "argsize", arg: 3, scope: !2807, file: !95, line: 877, type: !119)
!2814 = !DILocalVariable(name: "options", arg: 4, scope: !2807, file: !95, line: 878, type: !1855)
!2815 = !DILocalVariable(name: "e", scope: !2807, file: !95, line: 880, type: !14)
!2816 = !DILocalVariable(name: "sv", scope: !2807, file: !95, line: 882, type: !150)
!2817 = !DILocalVariable(name: "preallocated", scope: !2818, file: !95, line: 889, type: !79)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !95, line: 888, column: 5)
!2819 = distinct !DILexicalBlock(scope: !2807, file: !95, line: 887, column: 7)
!2820 = !DILocalVariable(name: "nmax", scope: !2818, file: !95, line: 890, type: !14)
!2821 = !DILocalVariable(name: "size", scope: !2822, file: !95, line: 903, type: !119)
!2822 = distinct !DILexicalBlock(scope: !2807, file: !95, line: 902, column: 3)
!2823 = !DILocalVariable(name: "val", scope: !2822, file: !95, line: 904, type: !44)
!2824 = !DILocalVariable(name: "flags", scope: !2822, file: !95, line: 906, type: !14)
!2825 = !DILocalVariable(name: "qsize", scope: !2822, file: !95, line: 907, type: !119)
!2826 = !DILocation(line: 0, scope: !2807)
!2827 = !DILocation(line: 880, column: 11, scope: !2807)
!2828 = !DILocation(line: 882, column: 24, scope: !2807)
!2829 = !DILocation(line: 884, column: 9, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2807, file: !95, line: 884, column: 7)
!2831 = !DILocation(line: 884, column: 7, scope: !2807)
!2832 = !DILocation(line: 885, column: 5, scope: !2830)
!2833 = !DILocation(line: 887, column: 7, scope: !2819)
!2834 = !DILocation(line: 887, column: 14, scope: !2819)
!2835 = !DILocation(line: 887, column: 7, scope: !2807)
!2836 = !DILocation(line: 889, column: 31, scope: !2818)
!2837 = !DILocation(line: 0, scope: !2818)
!2838 = !DILocation(line: 892, column: 16, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2818, file: !95, line: 892, column: 11)
!2840 = !DILocation(line: 892, column: 11, scope: !2818)
!2841 = !DILocation(line: 893, column: 9, scope: !2839)
!2842 = !DILocation(line: 895, column: 32, scope: !2818)
!2843 = !DILocation(line: 895, column: 61, scope: !2818)
!2844 = !DILocation(line: 895, column: 66, scope: !2818)
!2845 = !DILocation(line: 895, column: 22, scope: !2818)
!2846 = !DILocation(line: 895, column: 15, scope: !2818)
!2847 = !DILocation(line: 896, column: 11, scope: !2818)
!2848 = !DILocation(line: 897, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2818, file: !95, line: 896, column: 11)
!2850 = !{i64 0, i64 8, !2759, i64 8, i64 8, !708}
!2851 = !DILocation(line: 897, column: 9, scope: !2849)
!2852 = !DILocation(line: 898, column: 20, scope: !2818)
!2853 = !DILocation(line: 898, column: 18, scope: !2818)
!2854 = !DILocation(line: 898, column: 15, scope: !2818)
!2855 = !DILocation(line: 898, column: 38, scope: !2818)
!2856 = !DILocation(line: 898, column: 31, scope: !2818)
!2857 = !DILocation(line: 898, column: 48, scope: !2818)
!2858 = !DILocation(line: 0, scope: !2250, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 898, column: 7, scope: !2818)
!2860 = !DILocation(line: 59, column: 10, scope: !2250, inlinedAt: !2859)
!2861 = !DILocation(line: 899, column: 14, scope: !2818)
!2862 = !DILocation(line: 900, column: 5, scope: !2818)
!2863 = !DILocation(line: 903, column: 19, scope: !2822)
!2864 = !DILocation(line: 903, column: 25, scope: !2822)
!2865 = !DILocation(line: 0, scope: !2822)
!2866 = !DILocation(line: 904, column: 23, scope: !2822)
!2867 = !DILocation(line: 906, column: 26, scope: !2822)
!2868 = !DILocation(line: 906, column: 32, scope: !2822)
!2869 = !DILocation(line: 908, column: 55, scope: !2822)
!2870 = !DILocation(line: 909, column: 46, scope: !2822)
!2871 = !DILocation(line: 910, column: 55, scope: !2822)
!2872 = !DILocation(line: 911, column: 55, scope: !2822)
!2873 = !DILocation(line: 907, column: 20, scope: !2822)
!2874 = !DILocation(line: 913, column: 14, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2822, file: !95, line: 913, column: 9)
!2876 = !DILocation(line: 913, column: 9, scope: !2822)
!2877 = !DILocation(line: 915, column: 35, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !95, line: 914, column: 7)
!2879 = !DILocation(line: 915, column: 20, scope: !2878)
!2880 = !DILocation(line: 916, column: 17, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !95, line: 916, column: 13)
!2882 = !DILocation(line: 916, column: 13, scope: !2878)
!2883 = !DILocation(line: 917, column: 11, scope: !2881)
!2884 = !DILocation(line: 0, scope: !2723, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 918, column: 27, scope: !2878)
!2886 = !DILocation(line: 218, column: 10, scope: !2723, inlinedAt: !2885)
!2887 = !DILocation(line: 918, column: 19, scope: !2878)
!2888 = !DILocation(line: 919, column: 69, scope: !2878)
!2889 = !DILocation(line: 921, column: 44, scope: !2878)
!2890 = !DILocation(line: 922, column: 44, scope: !2878)
!2891 = !DILocation(line: 919, column: 9, scope: !2878)
!2892 = !DILocation(line: 923, column: 7, scope: !2878)
!2893 = !DILocation(line: 925, column: 11, scope: !2822)
!2894 = !DILocation(line: 926, column: 5, scope: !2822)
!2895 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !95, file: !95, line: 937, type: !2896, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!44, !14, !58, !119}
!2898 = !{!2899, !2900, !2901}
!2899 = !DILocalVariable(name: "n", arg: 1, scope: !2895, file: !95, line: 937, type: !14)
!2900 = !DILocalVariable(name: "arg", arg: 2, scope: !2895, file: !95, line: 937, type: !58)
!2901 = !DILocalVariable(name: "argsize", arg: 3, scope: !2895, file: !95, line: 937, type: !119)
!2902 = !DILocation(line: 0, scope: !2895)
!2903 = !DILocation(line: 939, column: 10, scope: !2895)
!2904 = !DILocation(line: 939, column: 3, scope: !2895)
!2905 = distinct !DISubprogram(name: "quotearg", scope: !95, file: !95, line: 943, type: !963, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2906)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "arg", arg: 1, scope: !2905, file: !95, line: 943, type: !58)
!2908 = !DILocation(line: 0, scope: !2905)
!2909 = !DILocation(line: 0, scope: !2800, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 945, column: 10, scope: !2905)
!2911 = !DILocation(line: 933, column: 10, scope: !2800, inlinedAt: !2910)
!2912 = !DILocation(line: 945, column: 3, scope: !2905)
!2913 = distinct !DISubprogram(name: "quotearg_mem", scope: !95, file: !95, line: 949, type: !2914, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!44, !58, !119}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !95, line: 949, type: !58)
!2918 = !DILocalVariable(name: "argsize", arg: 2, scope: !2913, file: !95, line: 949, type: !119)
!2919 = !DILocation(line: 0, scope: !2913)
!2920 = !DILocation(line: 0, scope: !2895, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 951, column: 10, scope: !2913)
!2922 = !DILocation(line: 939, column: 10, scope: !2895, inlinedAt: !2921)
!2923 = !DILocation(line: 951, column: 3, scope: !2913)
!2924 = distinct !DISubprogram(name: "quotearg_n_style", scope: !95, file: !95, line: 955, type: !2925, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!44, !14, !29, !58}
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2924, file: !95, line: 955, type: !14)
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2924, file: !95, line: 955, type: !29)
!2930 = !DILocalVariable(name: "arg", arg: 3, scope: !2924, file: !95, line: 955, type: !58)
!2931 = !DILocalVariable(name: "o", scope: !2924, file: !95, line: 957, type: !1856)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocation(line: 957, column: 3, scope: !2924)
!2934 = !DILocation(line: 957, column: 32, scope: !2924)
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"quoting_options_from_style: argument 0"}
!2937 = distinct !{!2937, !"quoting_options_from_style"}
!2938 = !DILocation(line: 957, column: 36, scope: !2924)
!2939 = !DILocalVariable(name: "style", arg: 1, scope: !2940, file: !95, line: 193, type: !29)
!2940 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !95, file: !95, line: 193, type: !2941, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!131, !29}
!2943 = !{!2939, !2944}
!2944 = !DILocalVariable(name: "o", scope: !2940, file: !95, line: 195, type: !131)
!2945 = !DILocation(line: 0, scope: !2940, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 957, column: 36, scope: !2924)
!2947 = !DILocation(line: 195, column: 26, scope: !2940, inlinedAt: !2946)
!2948 = !DILocation(line: 196, column: 13, scope: !2949, inlinedAt: !2946)
!2949 = distinct !DILexicalBlock(scope: !2940, file: !95, line: 196, column: 7)
!2950 = !DILocation(line: 196, column: 7, scope: !2940, inlinedAt: !2946)
!2951 = !DILocation(line: 197, column: 5, scope: !2949, inlinedAt: !2946)
!2952 = !DILocation(line: 198, column: 5, scope: !2940, inlinedAt: !2946)
!2953 = !DILocation(line: 198, column: 11, scope: !2940, inlinedAt: !2946)
!2954 = !DILocation(line: 958, column: 10, scope: !2924)
!2955 = !DILocation(line: 959, column: 1, scope: !2924)
!2956 = !DILocation(line: 958, column: 3, scope: !2924)
!2957 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !95, file: !95, line: 962, type: !2958, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!44, !14, !29, !58, !119}
!2960 = !{!2961, !2962, !2963, !2964, !2965}
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !95, line: 962, type: !14)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !95, line: 962, type: !29)
!2963 = !DILocalVariable(name: "arg", arg: 3, scope: !2957, file: !95, line: 963, type: !58)
!2964 = !DILocalVariable(name: "argsize", arg: 4, scope: !2957, file: !95, line: 963, type: !119)
!2965 = !DILocalVariable(name: "o", scope: !2957, file: !95, line: 965, type: !1856)
!2966 = !DILocation(line: 0, scope: !2957)
!2967 = !DILocation(line: 965, column: 3, scope: !2957)
!2968 = !DILocation(line: 965, column: 32, scope: !2957)
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"quoting_options_from_style: argument 0"}
!2971 = distinct !{!2971, !"quoting_options_from_style"}
!2972 = !DILocation(line: 965, column: 36, scope: !2957)
!2973 = !DILocation(line: 0, scope: !2940, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 965, column: 36, scope: !2957)
!2975 = !DILocation(line: 195, column: 26, scope: !2940, inlinedAt: !2974)
!2976 = !DILocation(line: 196, column: 13, scope: !2949, inlinedAt: !2974)
!2977 = !DILocation(line: 196, column: 7, scope: !2940, inlinedAt: !2974)
!2978 = !DILocation(line: 197, column: 5, scope: !2949, inlinedAt: !2974)
!2979 = !DILocation(line: 198, column: 5, scope: !2940, inlinedAt: !2974)
!2980 = !DILocation(line: 198, column: 11, scope: !2940, inlinedAt: !2974)
!2981 = !DILocation(line: 966, column: 10, scope: !2957)
!2982 = !DILocation(line: 967, column: 1, scope: !2957)
!2983 = !DILocation(line: 966, column: 3, scope: !2957)
!2984 = distinct !DISubprogram(name: "quotearg_style", scope: !95, file: !95, line: 970, type: !2985, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!44, !29, !58}
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "s", arg: 1, scope: !2984, file: !95, line: 970, type: !29)
!2989 = !DILocalVariable(name: "arg", arg: 2, scope: !2984, file: !95, line: 970, type: !58)
!2990 = !DILocation(line: 0, scope: !2984)
!2991 = !DILocation(line: 0, scope: !2924, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 972, column: 10, scope: !2984)
!2993 = !DILocation(line: 957, column: 3, scope: !2924, inlinedAt: !2992)
!2994 = !DILocation(line: 957, column: 32, scope: !2924, inlinedAt: !2992)
!2995 = !{!2996}
!2996 = distinct !{!2996, !2997, !"quoting_options_from_style: argument 0"}
!2997 = distinct !{!2997, !"quoting_options_from_style"}
!2998 = !DILocation(line: 957, column: 36, scope: !2924, inlinedAt: !2992)
!2999 = !DILocation(line: 0, scope: !2940, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 957, column: 36, scope: !2924, inlinedAt: !2992)
!3001 = !DILocation(line: 195, column: 26, scope: !2940, inlinedAt: !3000)
!3002 = !DILocation(line: 196, column: 13, scope: !2949, inlinedAt: !3000)
!3003 = !DILocation(line: 196, column: 7, scope: !2940, inlinedAt: !3000)
!3004 = !DILocation(line: 197, column: 5, scope: !2949, inlinedAt: !3000)
!3005 = !DILocation(line: 198, column: 5, scope: !2940, inlinedAt: !3000)
!3006 = !DILocation(line: 198, column: 11, scope: !2940, inlinedAt: !3000)
!3007 = !DILocation(line: 958, column: 10, scope: !2924, inlinedAt: !2992)
!3008 = !DILocation(line: 959, column: 1, scope: !2924, inlinedAt: !2992)
!3009 = !DILocation(line: 972, column: 3, scope: !2984)
!3010 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !95, file: !95, line: 976, type: !3011, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!44, !29, !58, !119}
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "s", arg: 1, scope: !3010, file: !95, line: 976, type: !29)
!3015 = !DILocalVariable(name: "arg", arg: 2, scope: !3010, file: !95, line: 976, type: !58)
!3016 = !DILocalVariable(name: "argsize", arg: 3, scope: !3010, file: !95, line: 976, type: !119)
!3017 = !DILocation(line: 0, scope: !3010)
!3018 = !DILocation(line: 0, scope: !2957, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 978, column: 10, scope: !3010)
!3020 = !DILocation(line: 965, column: 3, scope: !2957, inlinedAt: !3019)
!3021 = !DILocation(line: 965, column: 32, scope: !2957, inlinedAt: !3019)
!3022 = !{!3023}
!3023 = distinct !{!3023, !3024, !"quoting_options_from_style: argument 0"}
!3024 = distinct !{!3024, !"quoting_options_from_style"}
!3025 = !DILocation(line: 965, column: 36, scope: !2957, inlinedAt: !3019)
!3026 = !DILocation(line: 0, scope: !2940, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 965, column: 36, scope: !2957, inlinedAt: !3019)
!3028 = !DILocation(line: 195, column: 26, scope: !2940, inlinedAt: !3027)
!3029 = !DILocation(line: 196, column: 13, scope: !2949, inlinedAt: !3027)
!3030 = !DILocation(line: 196, column: 7, scope: !2940, inlinedAt: !3027)
!3031 = !DILocation(line: 197, column: 5, scope: !2949, inlinedAt: !3027)
!3032 = !DILocation(line: 198, column: 5, scope: !2940, inlinedAt: !3027)
!3033 = !DILocation(line: 198, column: 11, scope: !2940, inlinedAt: !3027)
!3034 = !DILocation(line: 966, column: 10, scope: !2957, inlinedAt: !3019)
!3035 = !DILocation(line: 967, column: 1, scope: !2957, inlinedAt: !3019)
!3036 = !DILocation(line: 978, column: 3, scope: !3010)
!3037 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !95, file: !95, line: 982, type: !3038, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!44, !58, !119, !45}
!3040 = !{!3041, !3042, !3043, !3044}
!3041 = !DILocalVariable(name: "arg", arg: 1, scope: !3037, file: !95, line: 982, type: !58)
!3042 = !DILocalVariable(name: "argsize", arg: 2, scope: !3037, file: !95, line: 982, type: !119)
!3043 = !DILocalVariable(name: "ch", arg: 3, scope: !3037, file: !95, line: 982, type: !45)
!3044 = !DILocalVariable(name: "options", scope: !3037, file: !95, line: 984, type: !131)
!3045 = !DILocation(line: 0, scope: !3037)
!3046 = !DILocation(line: 984, column: 3, scope: !3037)
!3047 = !DILocation(line: 984, column: 26, scope: !3037)
!3048 = !DILocation(line: 985, column: 13, scope: !3037)
!3049 = !{i64 0, i64 4, !1201, i64 4, i64 4, !926, i64 8, i64 32, !1201, i64 40, i64 8, !708, i64 48, i64 8, !708}
!3050 = !DILocation(line: 0, scope: !1876, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 986, column: 3, scope: !3037)
!3052 = !DILocation(line: 156, column: 62, scope: !1876, inlinedAt: !3051)
!3053 = !DILocation(line: 156, column: 57, scope: !1876, inlinedAt: !3051)
!3054 = !DILocation(line: 157, column: 15, scope: !1876, inlinedAt: !3051)
!3055 = !DILocation(line: 158, column: 12, scope: !1876, inlinedAt: !3051)
!3056 = !DILocation(line: 158, column: 15, scope: !1876, inlinedAt: !3051)
!3057 = !DILocation(line: 158, column: 25, scope: !1876, inlinedAt: !3051)
!3058 = !DILocation(line: 159, column: 18, scope: !1876, inlinedAt: !3051)
!3059 = !DILocation(line: 159, column: 23, scope: !1876, inlinedAt: !3051)
!3060 = !DILocation(line: 159, column: 6, scope: !1876, inlinedAt: !3051)
!3061 = !DILocation(line: 987, column: 10, scope: !3037)
!3062 = !DILocation(line: 988, column: 1, scope: !3037)
!3063 = !DILocation(line: 987, column: 3, scope: !3037)
!3064 = distinct !DISubprogram(name: "quotearg_char", scope: !95, file: !95, line: 991, type: !3065, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!44, !58, !45}
!3067 = !{!3068, !3069}
!3068 = !DILocalVariable(name: "arg", arg: 1, scope: !3064, file: !95, line: 991, type: !58)
!3069 = !DILocalVariable(name: "ch", arg: 2, scope: !3064, file: !95, line: 991, type: !45)
!3070 = !DILocation(line: 0, scope: !3064)
!3071 = !DILocation(line: 0, scope: !3037, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 993, column: 10, scope: !3064)
!3073 = !DILocation(line: 984, column: 3, scope: !3037, inlinedAt: !3072)
!3074 = !DILocation(line: 984, column: 26, scope: !3037, inlinedAt: !3072)
!3075 = !DILocation(line: 985, column: 13, scope: !3037, inlinedAt: !3072)
!3076 = !DILocation(line: 0, scope: !1876, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 986, column: 3, scope: !3037, inlinedAt: !3072)
!3078 = !DILocation(line: 156, column: 62, scope: !1876, inlinedAt: !3077)
!3079 = !DILocation(line: 156, column: 57, scope: !1876, inlinedAt: !3077)
!3080 = !DILocation(line: 157, column: 15, scope: !1876, inlinedAt: !3077)
!3081 = !DILocation(line: 158, column: 12, scope: !1876, inlinedAt: !3077)
!3082 = !DILocation(line: 158, column: 15, scope: !1876, inlinedAt: !3077)
!3083 = !DILocation(line: 158, column: 25, scope: !1876, inlinedAt: !3077)
!3084 = !DILocation(line: 159, column: 18, scope: !1876, inlinedAt: !3077)
!3085 = !DILocation(line: 159, column: 23, scope: !1876, inlinedAt: !3077)
!3086 = !DILocation(line: 159, column: 6, scope: !1876, inlinedAt: !3077)
!3087 = !DILocation(line: 987, column: 10, scope: !3037, inlinedAt: !3072)
!3088 = !DILocation(line: 988, column: 1, scope: !3037, inlinedAt: !3072)
!3089 = !DILocation(line: 993, column: 3, scope: !3064)
!3090 = distinct !DISubprogram(name: "quotearg_colon", scope: !95, file: !95, line: 997, type: !963, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3091)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "arg", arg: 1, scope: !3090, file: !95, line: 997, type: !58)
!3093 = !DILocation(line: 0, scope: !3090)
!3094 = !DILocation(line: 0, scope: !3064, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 999, column: 10, scope: !3090)
!3096 = !DILocation(line: 0, scope: !3037, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 993, column: 10, scope: !3064, inlinedAt: !3095)
!3098 = !DILocation(line: 984, column: 3, scope: !3037, inlinedAt: !3097)
!3099 = !DILocation(line: 984, column: 26, scope: !3037, inlinedAt: !3097)
!3100 = !DILocation(line: 985, column: 13, scope: !3037, inlinedAt: !3097)
!3101 = !DILocation(line: 0, scope: !1876, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 986, column: 3, scope: !3037, inlinedAt: !3097)
!3103 = !DILocation(line: 156, column: 57, scope: !1876, inlinedAt: !3102)
!3104 = !DILocation(line: 158, column: 12, scope: !1876, inlinedAt: !3102)
!3105 = !DILocation(line: 159, column: 6, scope: !1876, inlinedAt: !3102)
!3106 = !DILocation(line: 987, column: 10, scope: !3037, inlinedAt: !3097)
!3107 = !DILocation(line: 988, column: 1, scope: !3037, inlinedAt: !3097)
!3108 = !DILocation(line: 999, column: 3, scope: !3090)
!3109 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !95, file: !95, line: 1003, type: !2914, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3110)
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "arg", arg: 1, scope: !3109, file: !95, line: 1003, type: !58)
!3112 = !DILocalVariable(name: "argsize", arg: 2, scope: !3109, file: !95, line: 1003, type: !119)
!3113 = !DILocation(line: 0, scope: !3109)
!3114 = !DILocation(line: 0, scope: !3037, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1005, column: 10, scope: !3109)
!3116 = !DILocation(line: 984, column: 3, scope: !3037, inlinedAt: !3115)
!3117 = !DILocation(line: 984, column: 26, scope: !3037, inlinedAt: !3115)
!3118 = !DILocation(line: 985, column: 13, scope: !3037, inlinedAt: !3115)
!3119 = !DILocation(line: 0, scope: !1876, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 986, column: 3, scope: !3037, inlinedAt: !3115)
!3121 = !DILocation(line: 156, column: 57, scope: !1876, inlinedAt: !3120)
!3122 = !DILocation(line: 158, column: 12, scope: !1876, inlinedAt: !3120)
!3123 = !DILocation(line: 159, column: 6, scope: !1876, inlinedAt: !3120)
!3124 = !DILocation(line: 987, column: 10, scope: !3037, inlinedAt: !3115)
!3125 = !DILocation(line: 988, column: 1, scope: !3037, inlinedAt: !3115)
!3126 = !DILocation(line: 1005, column: 3, scope: !3109)
!3127 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !95, file: !95, line: 1009, type: !2925, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !95, line: 1009, type: !14)
!3130 = !DILocalVariable(name: "s", arg: 2, scope: !3127, file: !95, line: 1009, type: !29)
!3131 = !DILocalVariable(name: "arg", arg: 3, scope: !3127, file: !95, line: 1009, type: !58)
!3132 = !DILocalVariable(name: "options", scope: !3127, file: !95, line: 1011, type: !131)
!3133 = !DILocation(line: 195, column: 26, scope: !2940, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1012, column: 13, scope: !3127)
!3135 = !DILocation(line: 0, scope: !3127)
!3136 = !DILocation(line: 1011, column: 3, scope: !3127)
!3137 = !DILocation(line: 1011, column: 26, scope: !3127)
!3138 = !DILocation(line: 1012, column: 13, scope: !3127)
!3139 = !{!3140}
!3140 = distinct !{!3140, !3141, !"quoting_options_from_style: argument 0"}
!3141 = distinct !{!3141, !"quoting_options_from_style"}
!3142 = !DILocation(line: 0, scope: !2940, inlinedAt: !3134)
!3143 = !DILocation(line: 196, column: 13, scope: !2949, inlinedAt: !3134)
!3144 = !DILocation(line: 196, column: 7, scope: !2940, inlinedAt: !3134)
!3145 = !DILocation(line: 197, column: 5, scope: !2949, inlinedAt: !3134)
!3146 = !{i64 0, i64 4, !926, i64 4, i64 32, !1201, i64 36, i64 8, !708, i64 44, i64 8, !708}
!3147 = !DILocation(line: 0, scope: !1876, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1013, column: 3, scope: !3127)
!3149 = !DILocation(line: 156, column: 57, scope: !1876, inlinedAt: !3148)
!3150 = !DILocation(line: 158, column: 12, scope: !1876, inlinedAt: !3148)
!3151 = !DILocation(line: 159, column: 6, scope: !1876, inlinedAt: !3148)
!3152 = !DILocation(line: 1014, column: 10, scope: !3127)
!3153 = !DILocation(line: 1015, column: 1, scope: !3127)
!3154 = !DILocation(line: 1014, column: 3, scope: !3127)
!3155 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !95, file: !95, line: 1018, type: !3156, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!44, !14, !58, !58, !58}
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3155, file: !95, line: 1018, type: !14)
!3160 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3155, file: !95, line: 1018, type: !58)
!3161 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3155, file: !95, line: 1019, type: !58)
!3162 = !DILocalVariable(name: "arg", arg: 4, scope: !3155, file: !95, line: 1019, type: !58)
!3163 = !DILocation(line: 0, scope: !3155)
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !95, line: 1026, type: !14)
!3165 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !95, file: !95, line: 1026, type: !3166, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!44, !14, !58, !58, !58, !119}
!3168 = !{!3164, !3169, !3170, !3171, !3172, !3173}
!3169 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3165, file: !95, line: 1026, type: !58)
!3170 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3165, file: !95, line: 1027, type: !58)
!3171 = !DILocalVariable(name: "arg", arg: 4, scope: !3165, file: !95, line: 1028, type: !58)
!3172 = !DILocalVariable(name: "argsize", arg: 5, scope: !3165, file: !95, line: 1028, type: !119)
!3173 = !DILocalVariable(name: "o", scope: !3165, file: !95, line: 1030, type: !131)
!3174 = !DILocation(line: 0, scope: !3165, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1021, column: 10, scope: !3155)
!3176 = !DILocation(line: 1030, column: 3, scope: !3165, inlinedAt: !3175)
!3177 = !DILocation(line: 1030, column: 26, scope: !3165, inlinedAt: !3175)
!3178 = !DILocation(line: 1030, column: 30, scope: !3165, inlinedAt: !3175)
!3179 = !DILocation(line: 0, scope: !1916, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1031, column: 3, scope: !3165, inlinedAt: !3175)
!3181 = !DILocation(line: 184, column: 6, scope: !1916, inlinedAt: !3180)
!3182 = !DILocation(line: 184, column: 12, scope: !1916, inlinedAt: !3180)
!3183 = !DILocation(line: 185, column: 8, scope: !1930, inlinedAt: !3180)
!3184 = !DILocation(line: 185, column: 19, scope: !1930, inlinedAt: !3180)
!3185 = !DILocation(line: 186, column: 5, scope: !1930, inlinedAt: !3180)
!3186 = !DILocation(line: 187, column: 6, scope: !1916, inlinedAt: !3180)
!3187 = !DILocation(line: 187, column: 17, scope: !1916, inlinedAt: !3180)
!3188 = !DILocation(line: 188, column: 6, scope: !1916, inlinedAt: !3180)
!3189 = !DILocation(line: 188, column: 18, scope: !1916, inlinedAt: !3180)
!3190 = !DILocation(line: 1032, column: 10, scope: !3165, inlinedAt: !3175)
!3191 = !DILocation(line: 1033, column: 1, scope: !3165, inlinedAt: !3175)
!3192 = !DILocation(line: 1021, column: 3, scope: !3155)
!3193 = !DILocation(line: 0, scope: !3165)
!3194 = !DILocation(line: 1030, column: 3, scope: !3165)
!3195 = !DILocation(line: 1030, column: 26, scope: !3165)
!3196 = !DILocation(line: 1030, column: 30, scope: !3165)
!3197 = !DILocation(line: 0, scope: !1916, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1031, column: 3, scope: !3165)
!3199 = !DILocation(line: 184, column: 6, scope: !1916, inlinedAt: !3198)
!3200 = !DILocation(line: 184, column: 12, scope: !1916, inlinedAt: !3198)
!3201 = !DILocation(line: 185, column: 8, scope: !1930, inlinedAt: !3198)
!3202 = !DILocation(line: 185, column: 19, scope: !1930, inlinedAt: !3198)
!3203 = !DILocation(line: 186, column: 5, scope: !1930, inlinedAt: !3198)
!3204 = !DILocation(line: 187, column: 6, scope: !1916, inlinedAt: !3198)
!3205 = !DILocation(line: 187, column: 17, scope: !1916, inlinedAt: !3198)
!3206 = !DILocation(line: 188, column: 6, scope: !1916, inlinedAt: !3198)
!3207 = !DILocation(line: 188, column: 18, scope: !1916, inlinedAt: !3198)
!3208 = !DILocation(line: 1032, column: 10, scope: !3165)
!3209 = !DILocation(line: 1033, column: 1, scope: !3165)
!3210 = !DILocation(line: 1032, column: 3, scope: !3165)
!3211 = distinct !DISubprogram(name: "quotearg_custom", scope: !95, file: !95, line: 1036, type: !3212, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!44, !58, !58, !58}
!3214 = !{!3215, !3216, !3217}
!3215 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3211, file: !95, line: 1036, type: !58)
!3216 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3211, file: !95, line: 1036, type: !58)
!3217 = !DILocalVariable(name: "arg", arg: 3, scope: !3211, file: !95, line: 1037, type: !58)
!3218 = !DILocation(line: 0, scope: !3211)
!3219 = !DILocation(line: 0, scope: !3155, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1039, column: 10, scope: !3211)
!3221 = !DILocation(line: 0, scope: !3165, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1021, column: 10, scope: !3155, inlinedAt: !3220)
!3223 = !DILocation(line: 1030, column: 3, scope: !3165, inlinedAt: !3222)
!3224 = !DILocation(line: 1030, column: 26, scope: !3165, inlinedAt: !3222)
!3225 = !DILocation(line: 1030, column: 30, scope: !3165, inlinedAt: !3222)
!3226 = !DILocation(line: 0, scope: !1916, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1031, column: 3, scope: !3165, inlinedAt: !3222)
!3228 = !DILocation(line: 184, column: 6, scope: !1916, inlinedAt: !3227)
!3229 = !DILocation(line: 184, column: 12, scope: !1916, inlinedAt: !3227)
!3230 = !DILocation(line: 185, column: 8, scope: !1930, inlinedAt: !3227)
!3231 = !DILocation(line: 185, column: 19, scope: !1930, inlinedAt: !3227)
!3232 = !DILocation(line: 186, column: 5, scope: !1930, inlinedAt: !3227)
!3233 = !DILocation(line: 187, column: 6, scope: !1916, inlinedAt: !3227)
!3234 = !DILocation(line: 187, column: 17, scope: !1916, inlinedAt: !3227)
!3235 = !DILocation(line: 188, column: 6, scope: !1916, inlinedAt: !3227)
!3236 = !DILocation(line: 188, column: 18, scope: !1916, inlinedAt: !3227)
!3237 = !DILocation(line: 1032, column: 10, scope: !3165, inlinedAt: !3222)
!3238 = !DILocation(line: 1033, column: 1, scope: !3165, inlinedAt: !3222)
!3239 = !DILocation(line: 1039, column: 3, scope: !3211)
!3240 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !95, file: !95, line: 1043, type: !3241, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!44, !58, !58, !58, !119}
!3243 = !{!3244, !3245, !3246, !3247}
!3244 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3240, file: !95, line: 1043, type: !58)
!3245 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3240, file: !95, line: 1043, type: !58)
!3246 = !DILocalVariable(name: "arg", arg: 3, scope: !3240, file: !95, line: 1044, type: !58)
!3247 = !DILocalVariable(name: "argsize", arg: 4, scope: !3240, file: !95, line: 1044, type: !119)
!3248 = !DILocation(line: 0, scope: !3240)
!3249 = !DILocation(line: 0, scope: !3165, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1046, column: 10, scope: !3240)
!3251 = !DILocation(line: 1030, column: 3, scope: !3165, inlinedAt: !3250)
!3252 = !DILocation(line: 1030, column: 26, scope: !3165, inlinedAt: !3250)
!3253 = !DILocation(line: 1030, column: 30, scope: !3165, inlinedAt: !3250)
!3254 = !DILocation(line: 0, scope: !1916, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1031, column: 3, scope: !3165, inlinedAt: !3250)
!3256 = !DILocation(line: 184, column: 6, scope: !1916, inlinedAt: !3255)
!3257 = !DILocation(line: 184, column: 12, scope: !1916, inlinedAt: !3255)
!3258 = !DILocation(line: 185, column: 8, scope: !1930, inlinedAt: !3255)
!3259 = !DILocation(line: 185, column: 19, scope: !1930, inlinedAt: !3255)
!3260 = !DILocation(line: 186, column: 5, scope: !1930, inlinedAt: !3255)
!3261 = !DILocation(line: 187, column: 6, scope: !1916, inlinedAt: !3255)
!3262 = !DILocation(line: 187, column: 17, scope: !1916, inlinedAt: !3255)
!3263 = !DILocation(line: 188, column: 6, scope: !1916, inlinedAt: !3255)
!3264 = !DILocation(line: 188, column: 18, scope: !1916, inlinedAt: !3255)
!3265 = !DILocation(line: 1032, column: 10, scope: !3165, inlinedAt: !3250)
!3266 = !DILocation(line: 1033, column: 1, scope: !3165, inlinedAt: !3250)
!3267 = !DILocation(line: 1046, column: 3, scope: !3240)
!3268 = distinct !DISubprogram(name: "quote_n_mem", scope: !95, file: !95, line: 1061, type: !3269, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!58, !14, !58, !119}
!3271 = !{!3272, !3273, !3274}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !95, line: 1061, type: !14)
!3273 = !DILocalVariable(name: "arg", arg: 2, scope: !3268, file: !95, line: 1061, type: !58)
!3274 = !DILocalVariable(name: "argsize", arg: 3, scope: !3268, file: !95, line: 1061, type: !119)
!3275 = !DILocation(line: 0, scope: !3268)
!3276 = !DILocation(line: 1063, column: 10, scope: !3268)
!3277 = !DILocation(line: 1063, column: 3, scope: !3268)
!3278 = distinct !DISubprogram(name: "quote_mem", scope: !95, file: !95, line: 1067, type: !3279, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!58, !58, !119}
!3281 = !{!3282, !3283}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3278, file: !95, line: 1067, type: !58)
!3283 = !DILocalVariable(name: "argsize", arg: 2, scope: !3278, file: !95, line: 1067, type: !119)
!3284 = !DILocation(line: 0, scope: !3278)
!3285 = !DILocation(line: 0, scope: !3268, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1069, column: 10, scope: !3278)
!3287 = !DILocation(line: 1063, column: 10, scope: !3268, inlinedAt: !3286)
!3288 = !DILocation(line: 1069, column: 3, scope: !3278)
!3289 = distinct !DISubprogram(name: "quote_n", scope: !95, file: !95, line: 1073, type: !3290, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!58, !14, !58}
!3292 = !{!3293, !3294}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3289, file: !95, line: 1073, type: !14)
!3294 = !DILocalVariable(name: "arg", arg: 2, scope: !3289, file: !95, line: 1073, type: !58)
!3295 = !DILocation(line: 0, scope: !3289)
!3296 = !DILocation(line: 0, scope: !3268, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1075, column: 10, scope: !3289)
!3298 = !DILocation(line: 1063, column: 10, scope: !3268, inlinedAt: !3297)
!3299 = !DILocation(line: 1075, column: 3, scope: !3289)
!3300 = distinct !DISubprogram(name: "quote", scope: !95, file: !95, line: 1079, type: !3301, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!58, !58}
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "arg", arg: 1, scope: !3300, file: !95, line: 1079, type: !58)
!3305 = !DILocation(line: 0, scope: !3300)
!3306 = !DILocation(line: 0, scope: !3289, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1081, column: 10, scope: !3300)
!3308 = !DILocation(line: 0, scope: !3268, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 1075, column: 10, scope: !3289, inlinedAt: !3307)
!3310 = !DILocation(line: 1063, column: 10, scope: !3268, inlinedAt: !3309)
!3311 = !DILocation(line: 1081, column: 3, scope: !3300)
!3312 = distinct !DISubprogram(name: "savewd_init", scope: !6, file: !6, line: 79, type: !3313, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3316)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3315}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "wd", arg: 1, scope: !3312, file: !6, line: 79, type: !3315)
!3318 = !DILocation(line: 0, scope: !3312)
!3319 = !DILocation(line: 81, column: 7, scope: !3312)
!3320 = !DILocation(line: 81, column: 13, scope: !3312)
!3321 = !DILocation(line: 82, column: 1, scope: !3312)
!3322 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 124, type: !3323, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3327)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!14, !3325}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "wd", arg: 1, scope: !3322, file: !6, line: 124, type: !3325)
!3329 = !DILocation(line: 0, scope: !3322)
!3330 = !DILocation(line: 126, column: 15, scope: !3322)
!3331 = !DILocation(line: 126, column: 21, scope: !3322)
!3332 = !DILocation(line: 126, column: 11, scope: !3322)
!3333 = !DILocation(line: 126, column: 46, scope: !3322)
!3334 = !DILocation(line: 126, column: 3, scope: !3322)
!3335 = distinct !DISubprogram(name: "savewd_chdir", scope: !224, file: !224, line: 106, type: !3336, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!14, !3315, !58, !14, !62}
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3339 = !DILocalVariable(name: "wd", arg: 1, scope: !3335, file: !224, line: 106, type: !3315)
!3340 = !DILocalVariable(name: "dir", arg: 2, scope: !3335, file: !224, line: 106, type: !58)
!3341 = !DILocalVariable(name: "options", arg: 3, scope: !3335, file: !224, line: 106, type: !14)
!3342 = !DILocalVariable(name: "open_result", arg: 4, scope: !3335, file: !224, line: 107, type: !62)
!3343 = !DILocalVariable(name: "fd", scope: !3335, file: !224, line: 109, type: !14)
!3344 = !DILocalVariable(name: "result", scope: !3335, file: !224, line: 110, type: !14)
!3345 = !DILocalVariable(name: "e", scope: !3346, file: !224, line: 166, type: !14)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !224, line: 165, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3335, file: !224, line: 164, column: 7)
!3348 = !DILocation(line: 0, scope: !3335)
!3349 = !DILocation(line: 114, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3335, file: !224, line: 114, column: 7)
!3351 = !DILocation(line: 115, column: 7, scope: !3350)
!3352 = !DILocation(line: 119, column: 22, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !224, line: 116, column: 5)
!3354 = !DILocation(line: 119, column: 19, scope: !3353)
!3355 = !DILocation(line: 117, column: 12, scope: !3353)
!3356 = !DILocation(line: 121, column: 11, scope: !3353)
!3357 = !DILocation(line: 123, column: 26, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !224, line: 122, column: 9)
!3359 = distinct !DILexicalBlock(scope: !3353, file: !224, line: 121, column: 11)
!3360 = !DILocation(line: 124, column: 28, scope: !3358)
!3361 = !DILocation(line: 124, column: 11, scope: !3358)
!3362 = !DILocation(line: 124, column: 26, scope: !3358)
!3363 = !DILocation(line: 125, column: 9, scope: !3358)
!3364 = !DILocation(line: 127, column: 14, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3353, file: !224, line: 127, column: 11)
!3366 = !DILocation(line: 127, column: 18, scope: !3365)
!3367 = !DILocation(line: 127, column: 21, scope: !3365)
!3368 = !DILocation(line: 127, column: 27, scope: !3365)
!3369 = !DILocation(line: 131, column: 19, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3335, file: !224, line: 131, column: 7)
!3371 = !DILocation(line: 131, column: 33, scope: !3370)
!3372 = !DILocalVariable(name: "wd", arg: 1, scope: !3373, file: !224, line: 51, type: !3315)
!3373 = distinct !DISubprogram(name: "savewd_save", scope: !224, file: !224, line: 51, type: !3374, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!79, !3315}
!3376 = !{!3372, !3377}
!3377 = !DILocalVariable(name: "fd", scope: !3378, file: !224, line: 58, type: !14)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !224, line: 57, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3373, file: !224, line: 54, column: 5)
!3380 = !DILocation(line: 0, scope: !3373, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 133, column: 11, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !224, line: 133, column: 11)
!3383 = distinct !DILexicalBlock(scope: !3370, file: !224, line: 132, column: 5)
!3384 = !DILocation(line: 53, column: 15, scope: !3373, inlinedAt: !3381)
!3385 = !DILocation(line: 53, column: 3, scope: !3373, inlinedAt: !3381)
!3386 = !DILocation(line: 58, column: 18, scope: !3378, inlinedAt: !3381)
!3387 = !DILocation(line: 0, scope: !3378, inlinedAt: !3381)
!3388 = !DILocation(line: 59, column: 15, scope: !3389, inlinedAt: !3381)
!3389 = distinct !DILexicalBlock(scope: !3378, file: !224, line: 59, column: 13)
!3390 = !DILocation(line: 59, column: 13, scope: !3378, inlinedAt: !3381)
!3391 = !DILocation(line: 61, column: 23, scope: !3392, inlinedAt: !3381)
!3392 = distinct !DILexicalBlock(scope: !3389, file: !224, line: 60, column: 11)
!3393 = !DILocation(line: 62, column: 21, scope: !3392, inlinedAt: !3381)
!3394 = !DILocation(line: 62, column: 24, scope: !3392, inlinedAt: !3381)
!3395 = !DILocation(line: 65, column: 13, scope: !3396, inlinedAt: !3381)
!3396 = distinct !DILexicalBlock(scope: !3378, file: !224, line: 65, column: 13)
!3397 = !DILocation(line: 65, column: 29, scope: !3396, inlinedAt: !3381)
!3398 = !DILocation(line: 67, column: 23, scope: !3399, inlinedAt: !3381)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !224, line: 66, column: 11)
!3400 = !DILocation(line: 68, column: 21, scope: !3399, inlinedAt: !3381)
!3401 = !DILocation(line: 68, column: 28, scope: !3399, inlinedAt: !3381)
!3402 = !DILocation(line: 72, column: 17, scope: !3379, inlinedAt: !3381)
!3403 = !DILocation(line: 73, column: 15, scope: !3379, inlinedAt: !3381)
!3404 = !DILocation(line: 73, column: 21, scope: !3379, inlinedAt: !3381)
!3405 = !DILocation(line: 76, column: 11, scope: !3379, inlinedAt: !3381)
!3406 = !DILocation(line: 76, column: 19, scope: !3407, inlinedAt: !3381)
!3407 = distinct !DILexicalBlock(scope: !3379, file: !224, line: 76, column: 11)
!3408 = !DILocation(line: 81, column: 27, scope: !3409, inlinedAt: !3381)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !224, line: 77, column: 9)
!3410 = !DILocation(line: 81, column: 25, scope: !3409, inlinedAt: !3381)
!3411 = !DILocation(line: 82, column: 29, scope: !3412, inlinedAt: !3381)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !224, line: 82, column: 15)
!3413 = !DILocation(line: 82, column: 15, scope: !3409, inlinedAt: !3381)
!3414 = !DILocation(line: 84, column: 21, scope: !3415, inlinedAt: !3381)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !224, line: 84, column: 19)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !224, line: 83, column: 13)
!3417 = !DILocation(line: 84, column: 19, scope: !3416, inlinedAt: !3381)
!3418 = !DILocation(line: 86, column: 25, scope: !3416, inlinedAt: !3381)
!3419 = !DILocation(line: 87, column: 32, scope: !3416, inlinedAt: !3381)
!3420 = !DILocation(line: 87, column: 30, scope: !3416, inlinedAt: !3381)
!3421 = !DILocation(line: 88, column: 13, scope: !3416, inlinedAt: !3381)
!3422 = !DILocation(line: 99, column: 7, scope: !3423, inlinedAt: !3381)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !224, line: 99, column: 7)
!3424 = distinct !DILexicalBlock(scope: !3379, file: !224, line: 99, column: 7)
!3425 = !DILocation(line: 140, column: 24, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3382, file: !224, line: 139, column: 9)
!3427 = !DILocation(line: 140, column: 21, scope: !3426)
!3428 = !DILocation(line: 140, column: 30, scope: !3426)
!3429 = !DILocation(line: 140, column: 44, scope: !3426)
!3430 = !DILocation(line: 142, column: 22, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !224, line: 142, column: 15)
!3432 = !DILocation(line: 142, column: 15, scope: !3426)
!3433 = !DILocation(line: 143, column: 25, scope: !3431)
!3434 = !DILocation(line: 143, column: 13, scope: !3431)
!3435 = !DILocation(line: 146, column: 27, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3431, file: !224, line: 144, column: 15)
!3437 = !DILocation(line: 147, column: 17, scope: !3436)
!3438 = !DILocation(line: 155, column: 17, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !224, line: 155, column: 17)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !224, line: 155, column: 17)
!3441 = !DILocation(line: 155, column: 17, scope: !3440)
!3442 = !DILocation(line: 159, column: 17, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !224, line: 159, column: 17)
!3444 = distinct !DILexicalBlock(scope: !3436, file: !224, line: 159, column: 17)
!3445 = !DILocation(line: 164, column: 9, scope: !3347)
!3446 = !DILocation(line: 164, column: 15, scope: !3347)
!3447 = !DILocation(line: 166, column: 15, scope: !3346)
!3448 = !DILocation(line: 0, scope: !3346)
!3449 = !DILocation(line: 167, column: 7, scope: !3346)
!3450 = !DILocation(line: 168, column: 13, scope: !3346)
!3451 = !DILocation(line: 169, column: 5, scope: !3346)
!3452 = !DILocation(line: 171, column: 3, scope: !3335)
!3453 = !DISubprogram(name: "open", scope: !3454, file: !3454, line: 196, type: !3455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3454 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!14, !58, !14, null}
!3457 = !DISubprogram(name: "fork", scope: !3458, file: !3458, line: 768, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3458 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!14}
!3461 = !DISubprogram(name: "chdir", scope: !3458, file: !3458, line: 506, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!14, !58}
!3464 = !DISubprogram(name: "fchdir", scope: !3458, file: !3458, line: 510, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!14, !14}
!3467 = !DISubprogram(name: "close", scope: !3458, file: !3458, line: 353, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3468 = distinct !DISubprogram(name: "savewd_restore", scope: !224, file: !224, line: 175, type: !3469, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!14, !3315, !14}
!3471 = !{!3472, !3473, !3474, !3478, !3480}
!3472 = !DILocalVariable(name: "wd", arg: 1, scope: !3468, file: !224, line: 175, type: !3315)
!3473 = !DILocalVariable(name: "status", arg: 2, scope: !3468, file: !224, line: 175, type: !14)
!3474 = !DILocalVariable(name: "chdir_errno", scope: !3475, file: !224, line: 194, type: !14)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !224, line: 193, column: 9)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 187, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3468, file: !224, line: 178, column: 5)
!3478 = !DILocalVariable(name: "child", scope: !3479, file: !224, line: 209, type: !17)
!3479 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 208, column: 7)
!3480 = !DILocalVariable(name: "child_status", scope: !3481, file: !224, line: 214, type: !14)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !224, line: 213, column: 11)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !224, line: 212, column: 13)
!3483 = !DILocation(line: 0, scope: !3468)
!3484 = !DILocation(line: 177, column: 15, scope: !3468)
!3485 = !DILocation(line: 177, column: 3, scope: !3468)
!3486 = !DILocation(line: 202, column: 23, scope: !3477)
!3487 = !DILocation(line: 202, column: 7, scope: !3477)
!3488 = !DILocation(line: 187, column: 27, scope: !3476)
!3489 = !DILocation(line: 187, column: 11, scope: !3476)
!3490 = !DILocation(line: 187, column: 31, scope: !3476)
!3491 = !DILocation(line: 187, column: 11, scope: !3477)
!3492 = !DILocation(line: 189, column: 21, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3476, file: !224, line: 188, column: 9)
!3494 = !DILocation(line: 190, column: 11, scope: !3493)
!3495 = !DILocation(line: 194, column: 29, scope: !3475)
!3496 = !DILocation(line: 0, scope: !3475)
!3497 = !DILocation(line: 195, column: 26, scope: !3475)
!3498 = !DILocation(line: 195, column: 11, scope: !3475)
!3499 = !DILocation(line: 196, column: 21, scope: !3475)
!3500 = !DILocation(line: 197, column: 26, scope: !3475)
!3501 = !DILocation(line: 199, column: 7, scope: !3477)
!3502 = !DILocation(line: 202, column: 13, scope: !3477)
!3503 = !DILocation(line: 203, column: 7, scope: !3477)
!3504 = !DILocation(line: 209, column: 31, scope: !3479)
!3505 = !DILocation(line: 0, scope: !3479)
!3506 = !DILocation(line: 210, column: 19, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3479, file: !224, line: 210, column: 13)
!3508 = !DILocation(line: 210, column: 13, scope: !3479)
!3509 = !DILocation(line: 211, column: 11, scope: !3507)
!3510 = !DILocation(line: 212, column: 15, scope: !3482)
!3511 = !DILocation(line: 212, column: 13, scope: !3479)
!3512 = !DILocation(line: 214, column: 13, scope: !3481)
!3513 = !DILocation(line: 215, column: 13, scope: !3481)
!3514 = !DILocation(line: 0, scope: !3481)
!3515 = !DILocation(line: 215, column: 20, scope: !3481)
!3516 = !DILocation(line: 215, column: 54, scope: !3481)
!3517 = !DILocation(line: 216, column: 15, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !224, line: 216, column: 15)
!3519 = distinct !DILexicalBlock(scope: !3481, file: !224, line: 216, column: 15)
!3520 = !DILocation(line: 216, column: 15, scope: !3519)
!3521 = distinct !{!3521, !3513, !3522, !755}
!3522 = !DILocation(line: 216, column: 15, scope: !3481)
!3523 = !DILocation(line: 217, column: 27, scope: !3481)
!3524 = !DILocation(line: 218, column: 19, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3481, file: !224, line: 218, column: 17)
!3526 = !DILocation(line: 218, column: 17, scope: !3481)
!3527 = !DILocation(line: 219, column: 15, scope: !3525)
!3528 = !DILocation(line: 220, column: 20, scope: !3481)
!3529 = !DILocation(line: 221, column: 11, scope: !3482)
!3530 = !DILocation(line: 226, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !224, line: 226, column: 7)
!3532 = distinct !DILexicalBlock(scope: !3477, file: !224, line: 226, column: 7)
!3533 = !DILocation(line: 230, column: 1, scope: !3468)
!3534 = !DISubprogram(name: "waitpid", scope: !3535, file: !3535, line: 111, type: !3536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3535 = !DIFile(filename: "/usr/include/sys/wait.h", directory: "")
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!14, !14, !62, !14}
!3538 = !DISubprogram(name: "raise", scope: !3539, file: !3539, line: 123, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!3539 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!3540 = distinct !DISubprogram(name: "savewd_finish", scope: !224, file: !224, line: 233, type: !3313, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3541)
!3541 = !{!3542}
!3542 = !DILocalVariable(name: "wd", arg: 1, scope: !3540, file: !224, line: 233, type: !3315)
!3543 = !DILocation(line: 0, scope: !3540)
!3544 = !DILocation(line: 235, column: 15, scope: !3540)
!3545 = !DILocation(line: 235, column: 3, scope: !3540)
!3546 = !DILocation(line: 243, column: 22, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3540, file: !224, line: 236, column: 5)
!3548 = !DILocation(line: 243, column: 7, scope: !3547)
!3549 = !DILocation(line: 244, column: 7, scope: !3547)
!3550 = !DILocation(line: 247, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !224, line: 247, column: 7)
!3552 = distinct !DILexicalBlock(scope: !3547, file: !224, line: 247, column: 7)
!3553 = !DILocation(line: 247, column: 7, scope: !3552)
!3554 = !DILocation(line: 251, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !224, line: 251, column: 7)
!3556 = distinct !DILexicalBlock(scope: !3547, file: !224, line: 251, column: 7)
!3557 = !DILocation(line: 254, column: 13, scope: !3540)
!3558 = !DILocation(line: 255, column: 1, scope: !3540)
!3559 = distinct !DISubprogram(name: "savewd_process_files", scope: !224, file: !224, line: 274, type: !3560, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3565)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!14, !14, !841, !3562, !46}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!14, !44, !3315, !46}
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3580, !3583}
!3566 = !DILocalVariable(name: "n_files", arg: 1, scope: !3559, file: !224, line: 274, type: !14)
!3567 = !DILocalVariable(name: "file", arg: 2, scope: !3559, file: !224, line: 274, type: !841)
!3568 = !DILocalVariable(name: "act", arg: 3, scope: !3559, file: !224, line: 275, type: !3562)
!3569 = !DILocalVariable(name: "options", arg: 4, scope: !3559, file: !224, line: 276, type: !46)
!3570 = !DILocalVariable(name: "i", scope: !3559, file: !224, line: 278, type: !14)
!3571 = !DILocalVariable(name: "last_relative", scope: !3559, file: !224, line: 279, type: !14)
!3572 = !DILocalVariable(name: "exit_status", scope: !3559, file: !224, line: 280, type: !14)
!3573 = !DILocalVariable(name: "wd", scope: !3559, file: !224, line: 281, type: !227)
!3574 = !DILocalVariable(name: "s", scope: !3575, file: !224, line: 292, type: !14)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !224, line: 291, column: 9)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !224, line: 290, column: 11)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !224, line: 289, column: 5)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !224, line: 288, column: 3)
!3579 = distinct !DILexicalBlock(scope: !3559, file: !224, line: 288, column: 3)
!3580 = !DILocalVariable(name: "r", scope: !3581, file: !224, line: 299, type: !14)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !224, line: 298, column: 9)
!3582 = distinct !DILexicalBlock(scope: !3577, file: !224, line: 297, column: 11)
!3583 = !DILocalVariable(name: "s", scope: !3584, file: !224, line: 309, type: !14)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !224, line: 308, column: 5)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !224, line: 307, column: 3)
!3586 = distinct !DILexicalBlock(scope: !3559, file: !224, line: 307, column: 3)
!3587 = !DILocation(line: 0, scope: !3559)
!3588 = !DILocation(line: 281, column: 3, scope: !3559)
!3589 = !DILocation(line: 281, column: 17, scope: !3559)
!3590 = !DILocation(line: 0, scope: !3312, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 282, column: 3, scope: !3559)
!3592 = !DILocation(line: 81, column: 7, scope: !3312, inlinedAt: !3591)
!3593 = !DILocation(line: 81, column: 13, scope: !3312, inlinedAt: !3591)
!3594 = !DILocation(line: 284, column: 8, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3559, file: !224, line: 284, column: 3)
!3596 = !DILocation(line: 0, scope: !3595)
!3597 = !DILocation(line: 284, column: 39, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !224, line: 284, column: 3)
!3599 = !DILocation(line: 284, column: 3, scope: !3595)
!3600 = !DILocation(line: 285, column: 11, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3598, file: !224, line: 285, column: 9)
!3602 = !DILocation(line: 285, column: 9, scope: !3598)
!3603 = distinct !{!3603, !3599, !3604, !755}
!3604 = !DILocation(line: 286, column: 7, scope: !3595)
!3605 = !DILocation(line: 288, column: 12, scope: !3578)
!3606 = !DILocation(line: 288, column: 3, scope: !3579)
!3607 = !DILocation(line: 270, column: 14, scope: !3608, inlinedAt: !3613)
!3608 = distinct !DISubprogram(name: "savewd_delegating", scope: !224, file: !224, line: 268, type: !3609, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!79, !3325}
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "wd", arg: 1, scope: !3608, file: !224, line: 268, type: !3325)
!3613 = distinct !DILocation(line: 290, column: 13, scope: !3576)
!3614 = !DILocation(line: 0, scope: !3608, inlinedAt: !3613)
!3615 = !DILocation(line: 270, column: 20, scope: !3608, inlinedAt: !3613)
!3616 = !DILocation(line: 270, column: 37, scope: !3608, inlinedAt: !3613)
!3617 = !DILocation(line: 292, column: 24, scope: !3575)
!3618 = !DILocation(line: 292, column: 19, scope: !3575)
!3619 = !DILocation(line: 0, scope: !3575)
!3620 = !DILocation(line: 293, column: 27, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3575, file: !224, line: 293, column: 15)
!3622 = !DILocation(line: 293, column: 15, scope: !3575)
!3623 = !DILocation(line: 295, column: 9, scope: !3575)
!3624 = !DILocation(line: 297, column: 13, scope: !3582)
!3625 = !DILocation(line: 297, column: 11, scope: !3577)
!3626 = !DILocation(line: 299, column: 19, scope: !3581)
!3627 = !DILocation(line: 0, scope: !3581)
!3628 = !DILocation(line: 300, column: 27, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3581, file: !224, line: 300, column: 15)
!3630 = !DILocation(line: 300, column: 15, scope: !3581)
!3631 = !DILocation(line: 302, column: 9, scope: !3581)
!3632 = distinct !{!3632, !3606, !3633, !755}
!3633 = !DILocation(line: 303, column: 5, scope: !3579)
!3634 = !DILocation(line: 0, scope: !3540, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 305, column: 3, scope: !3559)
!3636 = !DILocation(line: 235, column: 3, scope: !3540, inlinedAt: !3635)
!3637 = !DILocation(line: 243, column: 22, scope: !3547, inlinedAt: !3635)
!3638 = !DILocation(line: 243, column: 7, scope: !3547, inlinedAt: !3635)
!3639 = !DILocation(line: 244, column: 7, scope: !3547, inlinedAt: !3635)
!3640 = !DILocation(line: 247, column: 7, scope: !3551, inlinedAt: !3635)
!3641 = !DILocation(line: 247, column: 7, scope: !3552, inlinedAt: !3635)
!3642 = !DILocation(line: 251, column: 7, scope: !3555, inlinedAt: !3635)
!3643 = !DILocation(line: 254, column: 13, scope: !3540, inlinedAt: !3635)
!3644 = !DILocation(line: 307, column: 12, scope: !3585)
!3645 = !DILocation(line: 307, column: 3, scope: !3586)
!3646 = !DILocation(line: 309, column: 20, scope: !3584)
!3647 = !DILocation(line: 309, column: 15, scope: !3584)
!3648 = !DILocation(line: 0, scope: !3584)
!3649 = !DILocation(line: 310, column: 23, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3584, file: !224, line: 310, column: 11)
!3651 = !DILocation(line: 310, column: 11, scope: !3584)
!3652 = !DILocation(line: 307, column: 24, scope: !3585)
!3653 = distinct !{!3653, !3645, !3654, !755}
!3654 = !DILocation(line: 312, column: 5, scope: !3586)
!3655 = !DILocation(line: 315, column: 1, scope: !3559)
!3656 = !DILocation(line: 314, column: 3, scope: !3559)
!3657 = distinct !DISubprogram(name: "version_etc_arn", scope: !237, file: !237, line: 61, type: !3658, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3695)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3660, !58, !58, !58, !3694, !119}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3662, file: !785, line: 51, baseType: !14, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3662, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3662, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3662, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3662, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3662, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3662, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3662, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3662, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3662, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3662, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3662, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3662, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3662, file: !785, line: 70, baseType: !3678, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3662, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3662, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3662, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3662, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3662, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3662, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3662, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3662, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3662, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3662, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3662, file: !785, line: 93, baseType: !3678, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3662, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3662, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3662, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3662, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701}
!3696 = !DILocalVariable(name: "stream", arg: 1, scope: !3657, file: !237, line: 61, type: !3660)
!3697 = !DILocalVariable(name: "command_name", arg: 2, scope: !3657, file: !237, line: 62, type: !58)
!3698 = !DILocalVariable(name: "package", arg: 3, scope: !3657, file: !237, line: 62, type: !58)
!3699 = !DILocalVariable(name: "version", arg: 4, scope: !3657, file: !237, line: 63, type: !58)
!3700 = !DILocalVariable(name: "authors", arg: 5, scope: !3657, file: !237, line: 64, type: !3694)
!3701 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3657, file: !237, line: 64, type: !119)
!3702 = !DILocation(line: 0, scope: !3657)
!3703 = !DILocation(line: 66, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3657, file: !237, line: 66, column: 7)
!3705 = !DILocation(line: 66, column: 7, scope: !3657)
!3706 = !DILocation(line: 67, column: 5, scope: !3704)
!3707 = !DILocation(line: 69, column: 5, scope: !3704)
!3708 = !DILocation(line: 83, column: 3, scope: !3657)
!3709 = !DILocation(line: 85, column: 3, scope: !3657)
!3710 = !DILocation(line: 88, column: 3, scope: !3657)
!3711 = !DILocation(line: 95, column: 3, scope: !3657)
!3712 = !DILocation(line: 97, column: 3, scope: !3657)
!3713 = !DILocation(line: 105, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3657, file: !237, line: 98, column: 5)
!3715 = !DILocation(line: 106, column: 7, scope: !3714)
!3716 = !DILocation(line: 109, column: 7, scope: !3714)
!3717 = !DILocation(line: 110, column: 7, scope: !3714)
!3718 = !DILocation(line: 113, column: 7, scope: !3714)
!3719 = !DILocation(line: 115, column: 7, scope: !3714)
!3720 = !DILocation(line: 120, column: 7, scope: !3714)
!3721 = !DILocation(line: 122, column: 7, scope: !3714)
!3722 = !DILocation(line: 127, column: 7, scope: !3714)
!3723 = !DILocation(line: 129, column: 7, scope: !3714)
!3724 = !DILocation(line: 134, column: 7, scope: !3714)
!3725 = !DILocation(line: 137, column: 7, scope: !3714)
!3726 = !DILocation(line: 142, column: 7, scope: !3714)
!3727 = !DILocation(line: 145, column: 7, scope: !3714)
!3728 = !DILocation(line: 150, column: 7, scope: !3714)
!3729 = !DILocation(line: 154, column: 7, scope: !3714)
!3730 = !DILocation(line: 159, column: 7, scope: !3714)
!3731 = !DILocation(line: 163, column: 7, scope: !3714)
!3732 = !DILocation(line: 170, column: 7, scope: !3714)
!3733 = !DILocation(line: 174, column: 7, scope: !3714)
!3734 = !DILocation(line: 176, column: 1, scope: !3657)
!3735 = distinct !DISubprogram(name: "version_etc_ar", scope: !237, file: !237, line: 183, type: !3736, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3660, !58, !58, !58, !3694}
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744}
!3739 = !DILocalVariable(name: "stream", arg: 1, scope: !3735, file: !237, line: 183, type: !3660)
!3740 = !DILocalVariable(name: "command_name", arg: 2, scope: !3735, file: !237, line: 184, type: !58)
!3741 = !DILocalVariable(name: "package", arg: 3, scope: !3735, file: !237, line: 184, type: !58)
!3742 = !DILocalVariable(name: "version", arg: 4, scope: !3735, file: !237, line: 185, type: !58)
!3743 = !DILocalVariable(name: "authors", arg: 5, scope: !3735, file: !237, line: 185, type: !3694)
!3744 = !DILocalVariable(name: "n_authors", scope: !3735, file: !237, line: 187, type: !119)
!3745 = !DILocation(line: 0, scope: !3735)
!3746 = !DILocation(line: 189, column: 8, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3735, file: !237, line: 189, column: 3)
!3748 = !DILocation(line: 0, scope: !3747)
!3749 = !DILocation(line: 189, column: 23, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !237, line: 189, column: 3)
!3751 = !DILocation(line: 189, column: 3, scope: !3747)
!3752 = !DILocation(line: 189, column: 52, scope: !3750)
!3753 = distinct !{!3753, !3751, !3754, !755}
!3754 = !DILocation(line: 190, column: 5, scope: !3747)
!3755 = !DILocation(line: 191, column: 3, scope: !3735)
!3756 = !DILocation(line: 192, column: 1, scope: !3735)
!3757 = distinct !DISubprogram(name: "version_etc_va", scope: !237, file: !237, line: 199, type: !3758, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3767)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3660, !58, !58, !58, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3761, file: !237, line: 192, baseType: !21, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3761, file: !237, line: 192, baseType: !21, size: 32, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3761, file: !237, line: 192, baseType: !46, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3761, file: !237, line: 192, baseType: !46, size: 64, offset: 128)
!3767 = !{!3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3768 = !DILocalVariable(name: "stream", arg: 1, scope: !3757, file: !237, line: 199, type: !3660)
!3769 = !DILocalVariable(name: "command_name", arg: 2, scope: !3757, file: !237, line: 200, type: !58)
!3770 = !DILocalVariable(name: "package", arg: 3, scope: !3757, file: !237, line: 200, type: !58)
!3771 = !DILocalVariable(name: "version", arg: 4, scope: !3757, file: !237, line: 201, type: !58)
!3772 = !DILocalVariable(name: "authors", arg: 5, scope: !3757, file: !237, line: 201, type: !3760)
!3773 = !DILocalVariable(name: "n_authors", scope: !3757, file: !237, line: 203, type: !119)
!3774 = !DILocalVariable(name: "authtab", scope: !3757, file: !237, line: 204, type: !3775)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !127)
!3776 = !DILocation(line: 0, scope: !3757)
!3777 = !DILocation(line: 204, column: 3, scope: !3757)
!3778 = !DILocation(line: 204, column: 15, scope: !3757)
!3779 = !DILocation(line: 208, column: 35, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !237, line: 206, column: 3)
!3781 = distinct !DILexicalBlock(scope: !3757, file: !237, line: 206, column: 3)
!3782 = !DILocation(line: 208, column: 14, scope: !3780)
!3783 = !DILocation(line: 208, column: 33, scope: !3780)
!3784 = !DILocation(line: 208, column: 67, scope: !3780)
!3785 = !DILocation(line: 206, column: 3, scope: !3781)
!3786 = !DILocation(line: 0, scope: !3781)
!3787 = !DILocation(line: 211, column: 3, scope: !3757)
!3788 = !DILocation(line: 213, column: 1, scope: !3757)
!3789 = distinct !DISubprogram(name: "version_etc", scope: !237, file: !237, line: 230, type: !3790, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3660, !58, !58, !58, null}
!3792 = !{!3793, !3794, !3795, !3796, !3797}
!3793 = !DILocalVariable(name: "stream", arg: 1, scope: !3789, file: !237, line: 230, type: !3660)
!3794 = !DILocalVariable(name: "command_name", arg: 2, scope: !3789, file: !237, line: 231, type: !58)
!3795 = !DILocalVariable(name: "package", arg: 3, scope: !3789, file: !237, line: 231, type: !58)
!3796 = !DILocalVariable(name: "version", arg: 4, scope: !3789, file: !237, line: 232, type: !58)
!3797 = !DILocalVariable(name: "authors", scope: !3789, file: !237, line: 234, type: !3798)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !780, line: 52, baseType: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1155, line: 32, baseType: !3800)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !237, baseType: !3801)
!3801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 192, elements: !813)
!3802 = !DILocation(line: 0, scope: !3789)
!3803 = !DILocation(line: 234, column: 3, scope: !3789)
!3804 = !DILocation(line: 234, column: 11, scope: !3789)
!3805 = !DILocation(line: 236, column: 3, scope: !3789)
!3806 = !DILocation(line: 237, column: 3, scope: !3789)
!3807 = !DILocation(line: 238, column: 3, scope: !3789)
!3808 = !DILocation(line: 239, column: 1, scope: !3789)
!3809 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !237, file: !237, line: 242, type: !718, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !70)
!3810 = !DILocation(line: 244, column: 3, scope: !3809)
!3811 = !DILocation(line: 249, column: 3, scope: !3809)
!3812 = !DILocation(line: 255, column: 3, scope: !3809)
!3813 = !DILocation(line: 260, column: 3, scope: !3809)
!3814 = !DILocation(line: 262, column: 1, scope: !3809)
!3815 = distinct !DISubprogram(name: "xnmalloc", scope: !247, file: !247, line: 99, type: !1555, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3816)
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !247, line: 99, type: !119)
!3818 = !DILocalVariable(name: "s", arg: 2, scope: !3815, file: !247, line: 99, type: !119)
!3819 = !DILocation(line: 0, scope: !3815)
!3820 = !DILocation(line: 101, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3815, file: !247, line: 101, column: 7)
!3822 = !DILocation(line: 101, column: 7, scope: !3815)
!3823 = !DILocation(line: 102, column: 5, scope: !3821)
!3824 = !DILocation(line: 103, column: 21, scope: !3815)
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3826, file: !244, line: 39, type: !119)
!3826 = distinct !DISubprogram(name: "xmalloc", scope: !244, file: !244, line: 39, type: !3827, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!46, !119}
!3829 = !{!3825, !3830}
!3830 = !DILocalVariable(name: "p", scope: !3826, file: !244, line: 41, type: !46)
!3831 = !DILocation(line: 0, scope: !3826, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 103, column: 10, scope: !3815)
!3833 = !DILocation(line: 41, column: 13, scope: !3826, inlinedAt: !3832)
!3834 = !DILocation(line: 42, column: 8, scope: !3835, inlinedAt: !3832)
!3835 = distinct !DILexicalBlock(scope: !3826, file: !244, line: 42, column: 7)
!3836 = !DILocation(line: 42, column: 10, scope: !3835, inlinedAt: !3832)
!3837 = !DILocation(line: 43, column: 5, scope: !3835, inlinedAt: !3832)
!3838 = !DILocation(line: 103, column: 3, scope: !3815)
!3839 = !DILocation(line: 0, scope: !3826)
!3840 = !DILocation(line: 41, column: 13, scope: !3826)
!3841 = !DILocation(line: 42, column: 8, scope: !3835)
!3842 = !DILocation(line: 42, column: 10, scope: !3835)
!3843 = !DILocation(line: 43, column: 5, scope: !3835)
!3844 = !DILocation(line: 44, column: 3, scope: !3826)
!3845 = distinct !DISubprogram(name: "xnrealloc", scope: !247, file: !247, line: 112, type: !3846, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!46, !46, !119, !119}
!3848 = !{!3849, !3850, !3851}
!3849 = !DILocalVariable(name: "p", arg: 1, scope: !3845, file: !247, line: 112, type: !46)
!3850 = !DILocalVariable(name: "n", arg: 2, scope: !3845, file: !247, line: 112, type: !119)
!3851 = !DILocalVariable(name: "s", arg: 3, scope: !3845, file: !247, line: 112, type: !119)
!3852 = !DILocation(line: 0, scope: !3845)
!3853 = !DILocation(line: 114, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3845, file: !247, line: 114, column: 7)
!3855 = !DILocation(line: 114, column: 7, scope: !3845)
!3856 = !DILocation(line: 115, column: 5, scope: !3854)
!3857 = !DILocation(line: 116, column: 25, scope: !3845)
!3858 = !DILocalVariable(name: "p", arg: 1, scope: !3859, file: !244, line: 51, type: !46)
!3859 = distinct !DISubprogram(name: "xrealloc", scope: !244, file: !244, line: 51, type: !3860, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!46, !46, !119}
!3862 = !{!3858, !3863}
!3863 = !DILocalVariable(name: "n", arg: 2, scope: !3859, file: !244, line: 51, type: !119)
!3864 = !DILocation(line: 0, scope: !3859, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 116, column: 10, scope: !3845)
!3866 = !DILocation(line: 53, column: 8, scope: !3867, inlinedAt: !3865)
!3867 = distinct !DILexicalBlock(scope: !3859, file: !244, line: 53, column: 7)
!3868 = !DILocation(line: 53, column: 10, scope: !3867, inlinedAt: !3865)
!3869 = !DILocation(line: 57, column: 7, scope: !3870, inlinedAt: !3865)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !244, line: 54, column: 5)
!3871 = !DILocation(line: 58, column: 7, scope: !3870, inlinedAt: !3865)
!3872 = !DILocation(line: 61, column: 7, scope: !3859, inlinedAt: !3865)
!3873 = !DILocation(line: 62, column: 8, scope: !3874, inlinedAt: !3865)
!3874 = distinct !DILexicalBlock(scope: !3859, file: !244, line: 62, column: 7)
!3875 = !DILocation(line: 62, column: 10, scope: !3874, inlinedAt: !3865)
!3876 = !DILocation(line: 63, column: 5, scope: !3874, inlinedAt: !3865)
!3877 = !DILocation(line: 116, column: 3, scope: !3845)
!3878 = !DILocation(line: 0, scope: !3859)
!3879 = !DILocation(line: 53, column: 8, scope: !3867)
!3880 = !DILocation(line: 53, column: 10, scope: !3867)
!3881 = !DILocation(line: 57, column: 7, scope: !3870)
!3882 = !DILocation(line: 58, column: 7, scope: !3870)
!3883 = !DILocation(line: 61, column: 7, scope: !3859)
!3884 = !DILocation(line: 62, column: 8, scope: !3874)
!3885 = !DILocation(line: 62, column: 10, scope: !3874)
!3886 = !DILocation(line: 63, column: 5, scope: !3874)
!3887 = !DILocation(line: 65, column: 1, scope: !3859)
!3888 = !DILocation(line: 0, scope: !248)
!3889 = !DILocation(line: 176, column: 14, scope: !248)
!3890 = !DILocation(line: 178, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !248, file: !247, line: 178, column: 7)
!3892 = !DILocation(line: 178, column: 7, scope: !248)
!3893 = !DILocation(line: 180, column: 13, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !247, line: 180, column: 11)
!3895 = distinct !DILexicalBlock(scope: !3891, file: !247, line: 179, column: 5)
!3896 = !DILocation(line: 180, column: 11, scope: !3895)
!3897 = !DILocation(line: 188, column: 30, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !247, line: 181, column: 9)
!3899 = !DILocation(line: 189, column: 16, scope: !3898)
!3900 = !DILocation(line: 189, column: 13, scope: !3898)
!3901 = !DILocation(line: 190, column: 9, scope: !3898)
!3902 = !DILocation(line: 191, column: 11, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !247, line: 191, column: 11)
!3904 = !DILocation(line: 191, column: 11, scope: !3895)
!3905 = !DILocation(line: 206, column: 7, scope: !248)
!3906 = !DILocation(line: 207, column: 25, scope: !248)
!3907 = !DILocation(line: 0, scope: !3859, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 207, column: 10, scope: !248)
!3909 = !DILocation(line: 53, column: 10, scope: !3867, inlinedAt: !3908)
!3910 = !DILocation(line: 192, column: 9, scope: !3903)
!3911 = !DILocation(line: 200, column: 69, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !247, line: 200, column: 11)
!3913 = distinct !DILexicalBlock(scope: !3891, file: !247, line: 195, column: 5)
!3914 = !DILocation(line: 201, column: 11, scope: !3912)
!3915 = !DILocation(line: 200, column: 11, scope: !3913)
!3916 = !DILocation(line: 202, column: 9, scope: !3912)
!3917 = !DILocation(line: 203, column: 14, scope: !3913)
!3918 = !DILocation(line: 203, column: 18, scope: !3913)
!3919 = !DILocation(line: 203, column: 9, scope: !3913)
!3920 = !DILocation(line: 53, column: 8, scope: !3867, inlinedAt: !3908)
!3921 = !DILocation(line: 57, column: 7, scope: !3870, inlinedAt: !3908)
!3922 = !DILocation(line: 58, column: 7, scope: !3870, inlinedAt: !3908)
!3923 = !DILocation(line: 61, column: 7, scope: !3859, inlinedAt: !3908)
!3924 = !DILocation(line: 62, column: 8, scope: !3874, inlinedAt: !3908)
!3925 = !DILocation(line: 62, column: 10, scope: !3874, inlinedAt: !3908)
!3926 = !DILocation(line: 63, column: 5, scope: !3874, inlinedAt: !3908)
!3927 = !DILocation(line: 207, column: 3, scope: !248)
!3928 = distinct !DISubprogram(name: "xcharalloc", scope: !247, file: !247, line: 216, type: !2724, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3929)
!3929 = !{!3930}
!3930 = !DILocalVariable(name: "n", arg: 1, scope: !3928, file: !247, line: 216, type: !119)
!3931 = !DILocation(line: 0, scope: !3928)
!3932 = !DILocation(line: 0, scope: !3826, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 218, column: 10, scope: !3928)
!3934 = !DILocation(line: 41, column: 13, scope: !3826, inlinedAt: !3933)
!3935 = !DILocation(line: 42, column: 8, scope: !3835, inlinedAt: !3933)
!3936 = !DILocation(line: 42, column: 10, scope: !3835, inlinedAt: !3933)
!3937 = !DILocation(line: 43, column: 5, scope: !3835, inlinedAt: !3933)
!3938 = !DILocation(line: 218, column: 3, scope: !3928)
!3939 = distinct !DISubprogram(name: "x2realloc", scope: !244, file: !244, line: 74, type: !3940, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!46, !46, !251}
!3942 = !{!3943, !3944}
!3943 = !DILocalVariable(name: "p", arg: 1, scope: !3939, file: !244, line: 74, type: !46)
!3944 = !DILocalVariable(name: "pn", arg: 2, scope: !3939, file: !244, line: 74, type: !251)
!3945 = !DILocation(line: 0, scope: !3939)
!3946 = !DILocation(line: 0, scope: !248, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 76, column: 10, scope: !3939)
!3948 = !DILocation(line: 176, column: 14, scope: !248, inlinedAt: !3947)
!3949 = !DILocation(line: 178, column: 9, scope: !3891, inlinedAt: !3947)
!3950 = !DILocation(line: 178, column: 7, scope: !248, inlinedAt: !3947)
!3951 = !DILocation(line: 180, column: 13, scope: !3894, inlinedAt: !3947)
!3952 = !DILocation(line: 180, column: 11, scope: !3895, inlinedAt: !3947)
!3953 = !DILocation(line: 191, column: 11, scope: !3903, inlinedAt: !3947)
!3954 = !DILocation(line: 191, column: 11, scope: !3895, inlinedAt: !3947)
!3955 = !DILocation(line: 192, column: 9, scope: !3903, inlinedAt: !3947)
!3956 = !DILocation(line: 201, column: 11, scope: !3912, inlinedAt: !3947)
!3957 = !DILocation(line: 200, column: 11, scope: !3913, inlinedAt: !3947)
!3958 = !DILocation(line: 202, column: 9, scope: !3912, inlinedAt: !3947)
!3959 = !DILocation(line: 203, column: 14, scope: !3913, inlinedAt: !3947)
!3960 = !DILocation(line: 203, column: 18, scope: !3913, inlinedAt: !3947)
!3961 = !DILocation(line: 203, column: 9, scope: !3913, inlinedAt: !3947)
!3962 = !DILocation(line: 0, scope: !3859, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 207, column: 10, scope: !248, inlinedAt: !3947)
!3964 = !DILocation(line: 53, column: 10, scope: !3867, inlinedAt: !3963)
!3965 = !DILocation(line: 206, column: 7, scope: !248, inlinedAt: !3947)
!3966 = !DILocation(line: 61, column: 7, scope: !3859, inlinedAt: !3963)
!3967 = !DILocation(line: 62, column: 8, scope: !3874, inlinedAt: !3963)
!3968 = !DILocation(line: 62, column: 10, scope: !3874, inlinedAt: !3963)
!3969 = !DILocation(line: 63, column: 5, scope: !3874, inlinedAt: !3963)
!3970 = !DILocation(line: 76, column: 3, scope: !3939)
!3971 = distinct !DISubprogram(name: "xzalloc", scope: !244, file: !244, line: 84, type: !3827, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3972)
!3972 = !{!3973}
!3973 = !DILocalVariable(name: "n", arg: 1, scope: !3971, file: !244, line: 84, type: !119)
!3974 = !DILocation(line: 0, scope: !3971)
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3976, file: !244, line: 93, type: !119)
!3976 = distinct !DISubprogram(name: "xcalloc", scope: !244, file: !244, line: 93, type: !1555, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3977)
!3977 = !{!3975, !3978, !3979}
!3978 = !DILocalVariable(name: "s", arg: 2, scope: !3976, file: !244, line: 93, type: !119)
!3979 = !DILocalVariable(name: "p", scope: !3976, file: !244, line: 95, type: !46)
!3980 = !DILocation(line: 0, scope: !3976, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 86, column: 10, scope: !3971)
!3982 = !DILocation(line: 100, column: 7, scope: !3983, inlinedAt: !3981)
!3983 = distinct !DILexicalBlock(scope: !3976, file: !244, line: 100, column: 7)
!3984 = !DILocation(line: 101, column: 7, scope: !3983, inlinedAt: !3981)
!3985 = !DILocation(line: 101, column: 18, scope: !3983, inlinedAt: !3981)
!3986 = !DILocation(line: 101, column: 16, scope: !3983, inlinedAt: !3981)
!3987 = !DILocation(line: 100, column: 7, scope: !3976, inlinedAt: !3981)
!3988 = !DILocation(line: 102, column: 5, scope: !3983, inlinedAt: !3981)
!3989 = !DILocation(line: 86, column: 3, scope: !3971)
!3990 = !DILocation(line: 0, scope: !3976)
!3991 = !DILocation(line: 100, column: 7, scope: !3983)
!3992 = !DILocation(line: 101, column: 7, scope: !3983)
!3993 = !DILocation(line: 101, column: 18, scope: !3983)
!3994 = !DILocation(line: 101, column: 16, scope: !3983)
!3995 = !DILocation(line: 100, column: 7, scope: !3976)
!3996 = !DILocation(line: 102, column: 5, scope: !3983)
!3997 = !DILocation(line: 103, column: 3, scope: !3976)
!3998 = distinct !DISubprogram(name: "xmemdup", scope: !244, file: !244, line: 111, type: !3999, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4003)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!46, !4001, !119}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "p", arg: 1, scope: !3998, file: !244, line: 111, type: !4001)
!4005 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !244, line: 111, type: !119)
!4006 = !DILocation(line: 0, scope: !3998)
!4007 = !DILocation(line: 0, scope: !3826, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 113, column: 18, scope: !3998)
!4009 = !DILocation(line: 41, column: 13, scope: !3826, inlinedAt: !4008)
!4010 = !DILocation(line: 42, column: 8, scope: !3835, inlinedAt: !4008)
!4011 = !DILocation(line: 42, column: 10, scope: !3835, inlinedAt: !4008)
!4012 = !DILocation(line: 43, column: 5, scope: !3835, inlinedAt: !4008)
!4013 = !DILocalVariable(name: "__dest", arg: 1, scope: !4014, file: !2251, line: 26, type: !4017)
!4014 = distinct !DISubprogram(name: "memcpy", scope: !2251, file: !2251, line: 26, type: !4015, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4019)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!46, !4017, !4018, !119}
!4017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!4018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4001)
!4019 = !{!4013, !4020, !4021}
!4020 = !DILocalVariable(name: "__src", arg: 2, scope: !4014, file: !2251, line: 26, type: !4018)
!4021 = !DILocalVariable(name: "__len", arg: 3, scope: !4014, file: !2251, line: 26, type: !119)
!4022 = !DILocation(line: 0, scope: !4014, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 113, column: 10, scope: !3998)
!4024 = !DILocation(line: 29, column: 10, scope: !4014, inlinedAt: !4023)
!4025 = !DILocation(line: 113, column: 3, scope: !3998)
!4026 = distinct !DISubprogram(name: "xstrdup", scope: !244, file: !244, line: 119, type: !963, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4027)
!4027 = !{!4028}
!4028 = !DILocalVariable(name: "string", arg: 1, scope: !4026, file: !244, line: 119, type: !58)
!4029 = !DILocation(line: 0, scope: !4026)
!4030 = !DILocation(line: 121, column: 27, scope: !4026)
!4031 = !DILocation(line: 121, column: 43, scope: !4026)
!4032 = !DILocation(line: 0, scope: !3998, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 121, column: 10, scope: !4026)
!4034 = !DILocation(line: 0, scope: !3826, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 113, column: 18, scope: !3998, inlinedAt: !4033)
!4036 = !DILocation(line: 41, column: 13, scope: !3826, inlinedAt: !4035)
!4037 = !DILocation(line: 42, column: 8, scope: !3835, inlinedAt: !4035)
!4038 = !DILocation(line: 42, column: 10, scope: !3835, inlinedAt: !4035)
!4039 = !DILocation(line: 43, column: 5, scope: !3835, inlinedAt: !4035)
!4040 = !DILocation(line: 0, scope: !4014, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 113, column: 10, scope: !3998, inlinedAt: !4033)
!4042 = !DILocation(line: 29, column: 10, scope: !4014, inlinedAt: !4041)
!4043 = !DILocation(line: 121, column: 3, scope: !4026)
!4044 = distinct !DISubprogram(name: "xalloc_die", scope: !261, file: !261, line: 32, type: !718, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !70)
!4045 = !DILocation(line: 34, column: 10, scope: !4044)
!4046 = !DILocation(line: 34, column: 33, scope: !4044)
!4047 = !DILocation(line: 34, column: 3, scope: !4044)
!4048 = !DILocation(line: 40, column: 3, scope: !4044)
!4049 = distinct !DISubprogram(name: "rpl_calloc", scope: !263, file: !263, line: 42, type: !1555, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !262, retainedNodes: !4050)
!4050 = !{!4051, !4052, !4053, !4054}
!4051 = !DILocalVariable(name: "n", arg: 1, scope: !4049, file: !263, line: 42, type: !119)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !263, line: 42, type: !119)
!4053 = !DILocalVariable(name: "result", scope: !4049, file: !263, line: 44, type: !46)
!4054 = !DILocalVariable(name: "bytes", scope: !4055, file: !263, line: 56, type: !119)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !263, line: 53, column: 5)
!4056 = distinct !DILexicalBlock(scope: !4049, file: !263, line: 47, column: 7)
!4057 = !DILocation(line: 0, scope: !4049)
!4058 = !DILocation(line: 47, column: 9, scope: !4056)
!4059 = !DILocation(line: 47, column: 14, scope: !4056)
!4060 = !DILocation(line: 0, scope: !4055)
!4061 = !DILocation(line: 57, column: 21, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4055, file: !263, line: 57, column: 11)
!4063 = !DILocation(line: 57, column: 11, scope: !4055)
!4064 = !DILocation(line: 59, column: 11, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4062, file: !263, line: 58, column: 9)
!4066 = !DILocation(line: 59, column: 17, scope: !4065)
!4067 = !DILocation(line: 65, column: 12, scope: !4049)
!4068 = !DILocation(line: 72, column: 3, scope: !4049)
!4069 = !DILocation(line: 73, column: 1, scope: !4049)
!4070 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !265, file: !265, line: 86, type: !4071, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !4085)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!119, !4073, !58, !119, !4074}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2005, line: 6, baseType: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2007, line: 21, baseType: !4077)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2007, line: 13, size: 64, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4077, file: !2007, line: 15, baseType: !14, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4077, file: !2007, line: 20, baseType: !4081, size: 32, offset: 32)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4077, file: !2007, line: 16, size: 32, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4081, file: !2007, line: 18, baseType: !21, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4081, file: !2007, line: 19, baseType: !2016, size: 32)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091, !4092}
!4086 = !DILocalVariable(name: "pwc", arg: 1, scope: !4070, file: !265, line: 86, type: !4073)
!4087 = !DILocalVariable(name: "s", arg: 2, scope: !4070, file: !265, line: 86, type: !58)
!4088 = !DILocalVariable(name: "n", arg: 3, scope: !4070, file: !265, line: 86, type: !119)
!4089 = !DILocalVariable(name: "ps", arg: 4, scope: !4070, file: !265, line: 86, type: !4074)
!4090 = !DILocalVariable(name: "ret", scope: !4070, file: !265, line: 88, type: !119)
!4091 = !DILocalVariable(name: "wc", scope: !4070, file: !265, line: 89, type: !2021)
!4092 = !DILocalVariable(name: "uc", scope: !4093, file: !265, line: 156, type: !192)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !265, line: 155, column: 5)
!4094 = distinct !DILexicalBlock(scope: !4070, file: !265, line: 154, column: 7)
!4095 = !DILocation(line: 0, scope: !4070)
!4096 = !DILocation(line: 89, column: 3, scope: !4070)
!4097 = !DILocation(line: 105, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4070, file: !265, line: 105, column: 7)
!4099 = !DILocation(line: 105, column: 7, scope: !4070)
!4100 = !DILocation(line: 145, column: 9, scope: !4070)
!4101 = !DILocation(line: 154, column: 19, scope: !4094)
!4102 = !DILocation(line: 154, column: 26, scope: !4094)
!4103 = !DILocation(line: 154, column: 41, scope: !4094)
!4104 = !DILocation(line: 154, column: 7, scope: !4070)
!4105 = !DILocation(line: 156, column: 26, scope: !4093)
!4106 = !DILocation(line: 0, scope: !4093)
!4107 = !DILocation(line: 157, column: 14, scope: !4093)
!4108 = !DILocation(line: 157, column: 12, scope: !4093)
!4109 = !DILocation(line: 163, column: 1, scope: !4070)
!4110 = !DISubprogram(name: "mbrtowc", scope: !2684, file: !2684, line: 296, type: !4111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!121, !62, !58, !121, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4114 = distinct !DISubprogram(name: "close_stream", scope: !267, file: !267, line: 56, type: !4115, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !4151)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!14, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4119, file: !785, line: 51, baseType: !14, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4119, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4119, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4119, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4119, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4119, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4119, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4119, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4119, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4119, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4119, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4119, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4119, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4119, file: !785, line: 70, baseType: !4135, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4119, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4119, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4119, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4119, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4119, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4119, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4119, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4119, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4119, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4119, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4119, file: !785, line: 93, baseType: !4135, size: 64, offset: 1344)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4119, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4119, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4119, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4119, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!4151 = !{!4152, !4153, !4155, !4156}
!4152 = !DILocalVariable(name: "stream", arg: 1, scope: !4114, file: !267, line: 56, type: !4117)
!4153 = !DILocalVariable(name: "some_pending", scope: !4114, file: !267, line: 58, type: !4154)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!4155 = !DILocalVariable(name: "prev_fail", scope: !4114, file: !267, line: 59, type: !4154)
!4156 = !DILocalVariable(name: "fclose_fail", scope: !4114, file: !267, line: 60, type: !4154)
!4157 = !DILocation(line: 0, scope: !4114)
!4158 = !DILocation(line: 58, column: 30, scope: !4114)
!4159 = !DILocalVariable(name: "__stream", arg: 1, scope: !4160, file: !1187, line: 135, type: !4117)
!4160 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1187, file: !1187, line: 135, type: !4115, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !4161)
!4161 = !{!4159}
!4162 = !DILocation(line: 0, scope: !4160, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 59, column: 27, scope: !4114)
!4164 = !DILocation(line: 137, column: 10, scope: !4160, inlinedAt: !4163)
!4165 = !{!1196, !879, i64 0}
!4166 = !DILocation(line: 59, column: 43, scope: !4114)
!4167 = !DILocation(line: 60, column: 29, scope: !4114)
!4168 = !DILocation(line: 60, column: 45, scope: !4114)
!4169 = !DILocation(line: 70, column: 17, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4114, file: !267, line: 70, column: 7)
!4171 = !DILocation(line: 58, column: 50, scope: !4114)
!4172 = !DILocation(line: 70, column: 33, scope: !4170)
!4173 = !DILocation(line: 70, column: 53, scope: !4170)
!4174 = !DILocation(line: 70, column: 59, scope: !4170)
!4175 = !DILocation(line: 70, column: 7, scope: !4114)
!4176 = !DILocation(line: 72, column: 11, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4170, file: !267, line: 71, column: 5)
!4178 = !DILocation(line: 73, column: 9, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4177, file: !267, line: 72, column: 11)
!4180 = !DILocation(line: 73, column: 15, scope: !4179)
!4181 = !DILocation(line: 78, column: 1, scope: !4114)
!4182 = distinct !DISubprogram(name: "open_safer", scope: !269, file: !269, line: 29, type: !3455, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !4183)
!4183 = !{!4184, !4185, !4186, !4187}
!4184 = !DILocalVariable(name: "file", arg: 1, scope: !4182, file: !269, line: 29, type: !58)
!4185 = !DILocalVariable(name: "flags", arg: 2, scope: !4182, file: !269, line: 29, type: !14)
!4186 = !DILocalVariable(name: "mode", scope: !4182, file: !269, line: 31, type: !677)
!4187 = !DILocalVariable(name: "ap", scope: !4188, file: !269, line: 35, type: !4190)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !269, line: 34, column: 5)
!4189 = distinct !DILexicalBlock(scope: !4182, file: !269, line: 33, column: 7)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1155, line: 14, baseType: !4191)
!4191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !269, baseType: !4192)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4193, size: 192, elements: !813)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4193, file: !269, line: 35, baseType: !21, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4193, file: !269, line: 35, baseType: !21, size: 32, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4193, file: !269, line: 35, baseType: !46, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4193, file: !269, line: 35, baseType: !46, size: 64, offset: 128)
!4199 = !DILocation(line: 0, scope: !4182)
!4200 = !DILocation(line: 33, column: 13, scope: !4189)
!4201 = !DILocation(line: 33, column: 7, scope: !4182)
!4202 = !DILocation(line: 35, column: 7, scope: !4188)
!4203 = !DILocation(line: 35, column: 15, scope: !4188)
!4204 = !DILocation(line: 36, column: 7, scope: !4188)
!4205 = !DILocation(line: 40, column: 14, scope: !4188)
!4206 = !DILocation(line: 42, column: 7, scope: !4188)
!4207 = !DILocation(line: 43, column: 5, scope: !4189)
!4208 = !DILocation(line: 43, column: 5, scope: !4188)
!4209 = !DILocation(line: 45, column: 20, scope: !4182)
!4210 = !DILocation(line: 45, column: 10, scope: !4182)
!4211 = !DILocation(line: 45, column: 3, scope: !4182)
!4212 = distinct !DISubprogram(name: "hard_locale", scope: !271, file: !271, line: 27, type: !4213, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!79, !14}
!4215 = !{!4216, !4217}
!4216 = !DILocalVariable(name: "category", arg: 1, scope: !4212, file: !271, line: 27, type: !14)
!4217 = !DILocalVariable(name: "locale", scope: !4212, file: !271, line: 29, type: !4218)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2056, elements: !4219)
!4219 = !{!4220}
!4220 = !DISubrange(count: 257)
!4221 = !DILocation(line: 0, scope: !4212)
!4222 = !DILocation(line: 29, column: 3, scope: !4212)
!4223 = !DILocation(line: 29, column: 8, scope: !4212)
!4224 = !DILocation(line: 31, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4212, file: !271, line: 31, column: 7)
!4226 = !DILocation(line: 31, column: 7, scope: !4212)
!4227 = !DILocation(line: 34, column: 12, scope: !4212)
!4228 = !DILocation(line: 34, column: 38, scope: !4212)
!4229 = !DILocation(line: 34, column: 41, scope: !4212)
!4230 = !DILocation(line: 34, column: 66, scope: !4212)
!4231 = !DILocation(line: 35, column: 1, scope: !4212)
!4232 = distinct !DISubprogram(name: "locale_charset", scope: !273, file: !273, line: 831, type: !4233, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!58}
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "codeset", scope: !4232, file: !273, line: 833, type: !58)
!4237 = !DILocation(line: 847, column: 13, scope: !4232)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocation(line: 911, column: 15, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4232, file: !273, line: 911, column: 7)
!4241 = !DILocation(line: 911, column: 7, scope: !4232)
!4242 = !DILocation(line: 1070, column: 13, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !273, line: 1070, column: 13)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !273, line: 1060, column: 7)
!4245 = distinct !DILexicalBlock(scope: !4232, file: !273, line: 1019, column: 3)
!4246 = !DILocation(line: 1070, column: 24, scope: !4243)
!4247 = !DILocation(line: 1070, column: 13, scope: !4244)
!4248 = !DILocation(line: 1158, column: 3, scope: !4232)
!4249 = !DISubprogram(name: "nl_langinfo", scope: !276, file: !276, line: 661, type: !4250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!44, !14}
!4252 = distinct !DISubprogram(name: "mkancesdirs", scope: !662, file: !662, line: 65, type: !4253, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !4256)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!1271, !44, !4255, !852, !46}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4272, !4273}
!4257 = !DILocalVariable(name: "file", arg: 1, scope: !4252, file: !662, line: 65, type: !44)
!4258 = !DILocalVariable(name: "wd", arg: 2, scope: !4252, file: !662, line: 65, type: !4255)
!4259 = !DILocalVariable(name: "make_dir", arg: 3, scope: !4252, file: !662, line: 66, type: !852)
!4260 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !4252, file: !662, line: 67, type: !46)
!4261 = !DILocalVariable(name: "sep", scope: !4252, file: !662, line: 72, type: !44)
!4262 = !DILocalVariable(name: "component", scope: !4252, file: !662, line: 76, type: !44)
!4263 = !DILocalVariable(name: "p", scope: !4252, file: !662, line: 78, type: !44)
!4264 = !DILocalVariable(name: "c", scope: !4252, file: !662, line: 79, type: !45)
!4265 = !DILocalVariable(name: "made_dir", scope: !4252, file: !662, line: 80, type: !79)
!4266 = !DILocalVariable(name: "make_dir_errno", scope: !4267, file: !662, line: 100, type: !14)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !662, line: 99, column: 11)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !662, line: 98, column: 13)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !662, line: 95, column: 7)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !662, line: 94, column: 14)
!4271 = distinct !DILexicalBlock(scope: !4252, file: !662, line: 89, column: 9)
!4272 = !DILocalVariable(name: "savewd_chdir_options", scope: !4267, file: !662, line: 101, type: !14)
!4273 = !DILocalVariable(name: "chdir_result", scope: !4267, file: !662, line: 102, type: !14)
!4274 = !DILocation(line: 0, scope: !4252)
!4275 = !DILocation(line: 88, column: 15, scope: !4252)
!4276 = !DILocation(line: 88, column: 3, scope: !4252)
!4277 = !DILocation(line: 88, column: 17, scope: !4252)
!4278 = !DILocation(line: 89, column: 9, scope: !4271)
!4279 = !DILocation(line: 0, scope: !4271)
!4280 = !DILocation(line: 89, column: 9, scope: !4252)
!4281 = !DILocation(line: 91, column: 13, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4271, file: !662, line: 90, column: 7)
!4283 = !DILocation(line: 94, column: 26, scope: !4270)
!4284 = !DILocation(line: 94, column: 29, scope: !4270)
!4285 = !DILocation(line: 94, column: 32, scope: !4270)
!4286 = !DILocation(line: 98, column: 20, scope: !4268)
!4287 = !DILocation(line: 98, column: 32, scope: !4268)
!4288 = !DILocation(line: 98, column: 37, scope: !4268)
!4289 = !DILocation(line: 98, column: 40, scope: !4268)
!4290 = !DILocation(line: 98, column: 53, scope: !4268)
!4291 = !DILocation(line: 98, column: 13, scope: !4269)
!4292 = !DILocation(line: 0, scope: !4267)
!4293 = !DILocation(line: 106, column: 18, scope: !4267)
!4294 = !DILocation(line: 111, column: 17, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4267, file: !662, line: 110, column: 17)
!4296 = !DILocation(line: 110, column: 33, scope: !4295)
!4297 = !DILocation(line: 111, column: 20, scope: !4295)
!4298 = !DILocation(line: 111, column: 33, scope: !4295)
!4299 = !DILocation(line: 111, column: 40, scope: !4295)
!4300 = !DILocation(line: 111, column: 43, scope: !4295)
!4301 = !DILocation(line: 111, column: 56, scope: !4295)
!4302 = !DILocation(line: 110, column: 17, scope: !4267)
!4303 = !DILocation(line: 113, column: 22, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4295, file: !662, line: 113, column: 22)
!4305 = !DILocation(line: 113, column: 63, scope: !4304)
!4306 = !DILocation(line: 113, column: 22, scope: !4295)
!4307 = !DILocation(line: 114, column: 32, scope: !4304)
!4308 = !DILocation(line: 114, column: 15, scope: !4304)
!4309 = !DILocation(line: 118, column: 17, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4267, file: !662, line: 118, column: 17)
!4311 = !DILocation(line: 118, column: 17, scope: !4267)
!4312 = !DILocation(line: 122, column: 15, scope: !4267)
!4313 = !DILocation(line: 126, column: 30, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4267, file: !662, line: 126, column: 17)
!4315 = !DILocation(line: 126, column: 17, scope: !4267)
!4316 = !DILocation(line: 127, column: 20, scope: !4314)
!4317 = !DILocation(line: 129, column: 30, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4267, file: !662, line: 129, column: 17)
!4319 = !DILocation(line: 129, column: 17, scope: !4267)
!4320 = !DILocation(line: 131, column: 36, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !662, line: 131, column: 21)
!4322 = distinct !DILexicalBlock(scope: !4318, file: !662, line: 130, column: 15)
!4323 = !DILocation(line: 131, column: 41, scope: !4321)
!4324 = !DILocation(line: 131, column: 44, scope: !4321)
!4325 = !DILocation(line: 131, column: 50, scope: !4321)
!4326 = !DILocation(line: 131, column: 21, scope: !4322)
!4327 = !DILocation(line: 132, column: 25, scope: !4321)
!4328 = !DILocation(line: 132, column: 19, scope: !4321)
!4329 = !DILocation(line: 133, column: 24, scope: !4322)
!4330 = !DILocation(line: 80, column: 8, scope: !4252)
!4331 = distinct !{!4331, !4276, !4332, !755}
!4332 = !DILocation(line: 138, column: 7, scope: !4252)
!4333 = !DILocation(line: 76, column: 9, scope: !4252)
!4334 = !DILocation(line: 140, column: 20, scope: !4252)
!4335 = !DILocation(line: 140, column: 3, scope: !4252)
!4336 = !DILocation(line: 141, column: 1, scope: !4252)
!4337 = distinct !DISubprogram(name: "dirchownmod", scope: !675, file: !675, line: 61, type: !4338, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4340)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!14, !14, !58, !677, !47, !49, !677, !677}
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4370, !4371, !4374, !4377, !4380}
!4341 = !DILocalVariable(name: "fd", arg: 1, scope: !4337, file: !675, line: 61, type: !14)
!4342 = !DILocalVariable(name: "dir", arg: 2, scope: !4337, file: !675, line: 61, type: !58)
!4343 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !4337, file: !675, line: 61, type: !677)
!4344 = !DILocalVariable(name: "owner", arg: 4, scope: !4337, file: !675, line: 62, type: !47)
!4345 = !DILocalVariable(name: "group", arg: 5, scope: !4337, file: !675, line: 62, type: !49)
!4346 = !DILocalVariable(name: "mode", arg: 6, scope: !4337, file: !675, line: 63, type: !677)
!4347 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !4337, file: !675, line: 63, type: !677)
!4348 = !DILocalVariable(name: "st", scope: !4337, file: !675, line: 65, type: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1287, line: 26, size: 1152, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4367, !4368, !4369}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4349, file: !1287, line: 28, baseType: !1290, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4349, file: !1287, line: 33, baseType: !1292, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4349, file: !1287, line: 41, baseType: !1294, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4349, file: !1287, line: 42, baseType: !678, size: 32, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4349, file: !1287, line: 44, baseType: !48, size: 32, offset: 224)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4349, file: !1287, line: 45, baseType: !50, size: 32, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4349, file: !1287, line: 47, baseType: !14, size: 32, offset: 288)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4349, file: !1287, line: 49, baseType: !1290, size: 64, offset: 320)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4349, file: !1287, line: 54, baseType: !806, size: 64, offset: 384)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4349, file: !1287, line: 58, baseType: !1302, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4349, file: !1287, line: 60, baseType: !1304, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4349, file: !1287, line: 71, baseType: !4363, size: 128, offset: 576)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1307, line: 10, size: 128, elements: !4364)
!4364 = !{!4365, !4366}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4363, file: !1307, line: 12, baseType: !1310, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4363, file: !1307, line: 16, baseType: !1312, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4349, file: !1287, line: 72, baseType: !4363, size: 128, offset: 704)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4349, file: !1287, line: 73, baseType: !4363, size: 128, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4349, file: !1287, line: 86, baseType: !1316, size: 192, offset: 960)
!4370 = !DILocalVariable(name: "result", scope: !4337, file: !675, line: 66, type: !14)
!4371 = !DILocalVariable(name: "dir_mode", scope: !4372, file: !675, line: 70, type: !677)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !675, line: 69, column: 5)
!4373 = distinct !DILexicalBlock(scope: !4337, file: !675, line: 68, column: 7)
!4374 = !DILocalVariable(name: "indeterminate", scope: !4375, file: !675, line: 87, type: !677)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !675, line: 82, column: 9)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !675, line: 76, column: 11)
!4377 = !DILocalVariable(name: "chmod_mode", scope: !4378, file: !675, line: 117, type: !677)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !675, line: 116, column: 13)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !675, line: 115, column: 15)
!4380 = !DILocalVariable(name: "e", scope: !4381, file: !675, line: 134, type: !14)
!4381 = distinct !DILexicalBlock(scope: !4382, file: !675, line: 133, column: 9)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !675, line: 130, column: 11)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !675, line: 129, column: 5)
!4384 = distinct !DILexicalBlock(scope: !4337, file: !675, line: 128, column: 7)
!4385 = !DILocation(line: 0, scope: !4337)
!4386 = !DILocation(line: 65, column: 3, scope: !4337)
!4387 = !DILocation(line: 65, column: 15, scope: !4337)
!4388 = !DILocation(line: 66, column: 20, scope: !4337)
!4389 = !DILocation(line: 66, column: 17, scope: !4337)
!4390 = !DILocation(line: 66, column: 26, scope: !4337)
!4391 = !DILocation(line: 66, column: 44, scope: !4337)
!4392 = !DILocation(line: 68, column: 14, scope: !4373)
!4393 = !DILocation(line: 68, column: 7, scope: !4337)
!4394 = !DILocation(line: 70, column: 28, scope: !4372)
!4395 = !DILocation(line: 0, scope: !4372)
!4396 = !DILocation(line: 76, column: 13, scope: !4376)
!4397 = !DILocation(line: 76, column: 11, scope: !4372)
!4398 = !DILocation(line: 78, column: 11, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4376, file: !675, line: 77, column: 9)
!4400 = !DILocation(line: 78, column: 17, scope: !4399)
!4401 = !DILocation(line: 80, column: 9, scope: !4399)
!4402 = !DILocation(line: 0, scope: !4375)
!4403 = !DILocation(line: 94, column: 22, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4375, file: !675, line: 94, column: 15)
!4405 = !DILocation(line: 94, column: 36, scope: !4404)
!4406 = !DILocation(line: 94, column: 51, scope: !4404)
!4407 = !{!1396, !879, i64 28}
!4408 = !DILocation(line: 94, column: 45, scope: !4404)
!4409 = !DILocation(line: 95, column: 15, scope: !4404)
!4410 = !DILocation(line: 95, column: 25, scope: !4404)
!4411 = !DILocation(line: 95, column: 39, scope: !4404)
!4412 = !DILocation(line: 95, column: 54, scope: !4404)
!4413 = !{!1396, !879, i64 32}
!4414 = !DILocation(line: 95, column: 48, scope: !4404)
!4415 = !DILocation(line: 94, column: 15, scope: !4375)
!4416 = !DILocation(line: 97, column: 27, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4404, file: !675, line: 96, column: 13)
!4418 = !DILocation(line: 97, column: 25, scope: !4417)
!4419 = !DILocation(line: 98, column: 27, scope: !4417)
!4420 = !DILocation(line: 99, column: 38, scope: !4417)
!4421 = !DILocation(line: 99, column: 27, scope: !4417)
!4422 = !DILocation(line: 100, column: 27, scope: !4417)
!4423 = !DILocation(line: 101, column: 27, scope: !4417)
!4424 = !DILocation(line: 108, column: 26, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4417, file: !675, line: 108, column: 19)
!4426 = !DILocation(line: 108, column: 31, scope: !4425)
!4427 = !DILocation(line: 108, column: 44, scope: !4425)
!4428 = !DILocation(line: 108, column: 19, scope: !4417)
!4429 = !DILocation(line: 115, column: 42, scope: !4379)
!4430 = !DILocation(line: 115, column: 50, scope: !4379)
!4431 = !DILocation(line: 115, column: 67, scope: !4379)
!4432 = !DILocation(line: 115, column: 15, scope: !4375)
!4433 = !DILocation(line: 118, column: 34, scope: !4378)
!4434 = !DILocation(line: 118, column: 52, scope: !4378)
!4435 = !DILocation(line: 118, column: 22, scope: !4378)
!4436 = !DILocation(line: 0, scope: !4378)
!4437 = !DILocation(line: 119, column: 42, scope: !4378)
!4438 = !DILocation(line: 119, column: 25, scope: !4378)
!4439 = !DILocation(line: 120, column: 27, scope: !4378)
!4440 = !DILocation(line: 128, column: 7, scope: !4337)
!4441 = !DILocation(line: 121, column: 38, scope: !4378)
!4442 = !DILocation(line: 121, column: 27, scope: !4378)
!4443 = !DILocation(line: 122, column: 27, scope: !4378)
!4444 = !DILocation(line: 123, column: 27, scope: !4378)
!4445 = !DILocation(line: 128, column: 9, scope: !4384)
!4446 = !DILocation(line: 130, column: 18, scope: !4382)
!4447 = !DILocation(line: 130, column: 11, scope: !4383)
!4448 = !DILocation(line: 131, column: 18, scope: !4382)
!4449 = !DILocation(line: 131, column: 9, scope: !4382)
!4450 = !DILocation(line: 134, column: 19, scope: !4381)
!4451 = !DILocation(line: 0, scope: !4381)
!4452 = !DILocation(line: 135, column: 11, scope: !4381)
!4453 = !DILocation(line: 136, column: 17, scope: !4381)
!4454 = !DILocation(line: 141, column: 1, scope: !4337)
!4455 = !DILocation(line: 140, column: 3, scope: !4337)
!4456 = !DISubprogram(name: "fstat", scope: !1050, file: !1050, line: 210, type: !4457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!14, !14, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4460 = !DISubprogram(name: "fchown", scope: !3458, file: !3458, line: 487, type: !4461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!14, !14, !21, !21}
!4463 = !DISubprogram(name: "lchown", scope: !3458, file: !3458, line: 492, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!14, !58, !21, !21}
!4466 = !DISubprogram(name: "chown", scope: !3458, file: !3458, line: 482, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4467 = !DISubprogram(name: "fchmod", scope: !1050, file: !1050, line: 293, type: !4468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!14, !14, !21}
!4470 = !DISubprogram(name: "lchmod", scope: !1050, file: !1050, line: 287, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4471 = !DISubprogram(name: "chmod", scope: !1050, file: !1050, line: 280, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4472 = distinct !DISubprogram(name: "setlocale_null_r", scope: !680, file: !680, line: 269, type: !4473, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4475)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!14, !14, !44, !119}
!4475 = !{!4476, !4477, !4478}
!4476 = !DILocalVariable(name: "category", arg: 1, scope: !4472, file: !680, line: 269, type: !14)
!4477 = !DILocalVariable(name: "buf", arg: 2, scope: !4472, file: !680, line: 269, type: !44)
!4478 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4472, file: !680, line: 269, type: !119)
!4479 = !DILocation(line: 0, scope: !4472)
!4480 = !DILocalVariable(name: "category", arg: 1, scope: !4481, file: !680, line: 91, type: !14)
!4481 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !680, file: !680, line: 91, type: !4473, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4482)
!4482 = !{!4480, !4483, !4484, !4485, !4486}
!4483 = !DILocalVariable(name: "buf", arg: 2, scope: !4481, file: !680, line: 91, type: !44)
!4484 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4481, file: !680, line: 91, type: !119)
!4485 = !DILocalVariable(name: "result", scope: !4481, file: !680, line: 140, type: !58)
!4486 = !DILocalVariable(name: "length", scope: !4487, file: !680, line: 154, type: !119)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !680, line: 153, column: 5)
!4488 = distinct !DILexicalBlock(scope: !4481, file: !680, line: 142, column: 7)
!4489 = !DILocation(line: 0, scope: !4481, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 274, column: 10, scope: !4472)
!4491 = !DILocalVariable(name: "category", arg: 1, scope: !4492, file: !680, line: 60, type: !14)
!4492 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !680, file: !680, line: 60, type: !4493, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4495)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!58, !14}
!4495 = !{!4491, !4496}
!4496 = !DILocalVariable(name: "result", scope: !4492, file: !680, line: 62, type: !58)
!4497 = !DILocation(line: 0, scope: !4492, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 140, column: 24, scope: !4481, inlinedAt: !4490)
!4499 = !DILocation(line: 62, column: 24, scope: !4492, inlinedAt: !4498)
!4500 = !DILocation(line: 142, column: 14, scope: !4488, inlinedAt: !4490)
!4501 = !DILocation(line: 142, column: 7, scope: !4481, inlinedAt: !4490)
!4502 = !DILocation(line: 145, column: 19, scope: !4503, inlinedAt: !4490)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !680, line: 145, column: 11)
!4504 = distinct !DILexicalBlock(scope: !4488, file: !680, line: 143, column: 5)
!4505 = !DILocation(line: 145, column: 11, scope: !4504, inlinedAt: !4490)
!4506 = !DILocation(line: 149, column: 16, scope: !4503, inlinedAt: !4490)
!4507 = !DILocation(line: 149, column: 9, scope: !4503, inlinedAt: !4490)
!4508 = !DILocation(line: 154, column: 23, scope: !4487, inlinedAt: !4490)
!4509 = !DILocation(line: 0, scope: !4487, inlinedAt: !4490)
!4510 = !DILocation(line: 155, column: 18, scope: !4511, inlinedAt: !4490)
!4511 = distinct !DILexicalBlock(scope: !4487, file: !680, line: 155, column: 11)
!4512 = !DILocation(line: 155, column: 11, scope: !4487, inlinedAt: !4490)
!4513 = !DILocation(line: 157, column: 39, scope: !4514, inlinedAt: !4490)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !680, line: 156, column: 9)
!4515 = !DILocalVariable(name: "__dest", arg: 1, scope: !4516, file: !2251, line: 26, type: !4017)
!4516 = distinct !DISubprogram(name: "memcpy", scope: !2251, file: !2251, line: 26, type: !4015, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4517)
!4517 = !{!4515, !4518, !4519}
!4518 = !DILocalVariable(name: "__src", arg: 2, scope: !4516, file: !2251, line: 26, type: !4018)
!4519 = !DILocalVariable(name: "__len", arg: 3, scope: !4516, file: !2251, line: 26, type: !119)
!4520 = !DILocation(line: 0, scope: !4516, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 157, column: 11, scope: !4514, inlinedAt: !4490)
!4522 = !DILocation(line: 29, column: 10, scope: !4516, inlinedAt: !4521)
!4523 = !DILocation(line: 158, column: 11, scope: !4514, inlinedAt: !4490)
!4524 = !DILocation(line: 162, column: 23, scope: !4525, inlinedAt: !4490)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !680, line: 162, column: 15)
!4526 = distinct !DILexicalBlock(scope: !4511, file: !680, line: 161, column: 9)
!4527 = !DILocation(line: 162, column: 15, scope: !4526, inlinedAt: !4490)
!4528 = !DILocation(line: 167, column: 44, scope: !4529, inlinedAt: !4490)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !680, line: 163, column: 13)
!4530 = !DILocation(line: 0, scope: !4516, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 167, column: 15, scope: !4529, inlinedAt: !4490)
!4532 = !DILocation(line: 29, column: 10, scope: !4516, inlinedAt: !4531)
!4533 = !DILocation(line: 168, column: 15, scope: !4529, inlinedAt: !4490)
!4534 = !DILocation(line: 168, column: 32, scope: !4529, inlinedAt: !4490)
!4535 = !DILocation(line: 169, column: 13, scope: !4529, inlinedAt: !4490)
!4536 = !DILocation(line: 0, scope: !4488, inlinedAt: !4490)
!4537 = !DILocation(line: 274, column: 3, scope: !4472)
!4538 = distinct !DISubprogram(name: "setlocale_null", scope: !680, file: !680, line: 301, type: !4493, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !4539)
!4539 = !{!4540}
!4540 = !DILocalVariable(name: "category", arg: 1, scope: !4538, file: !680, line: 301, type: !14)
!4541 = !DILocation(line: 0, scope: !4538)
!4542 = !DILocation(line: 0, scope: !4492, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 304, column: 10, scope: !4538)
!4544 = !DILocation(line: 62, column: 24, scope: !4492, inlinedAt: !4543)
!4545 = !DILocation(line: 304, column: 3, scope: !4538)
!4546 = distinct !DISubprogram(name: "fd_safer", scope: !682, file: !682, line: 37, type: !3465, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4547)
!4547 = !{!4548, !4549, !4552}
!4548 = !DILocalVariable(name: "fd", arg: 1, scope: !4546, file: !682, line: 37, type: !14)
!4549 = !DILocalVariable(name: "f", scope: !4550, file: !682, line: 41, type: !14)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !682, line: 40, column: 5)
!4551 = distinct !DILexicalBlock(scope: !4546, file: !682, line: 39, column: 7)
!4552 = !DILocalVariable(name: "e", scope: !4550, file: !682, line: 42, type: !14)
!4553 = !DILocation(line: 0, scope: !4546)
!4554 = !DILocation(line: 39, column: 26, scope: !4551)
!4555 = !DILocation(line: 41, column: 15, scope: !4550)
!4556 = !DILocation(line: 0, scope: !4550)
!4557 = !DILocation(line: 42, column: 15, scope: !4550)
!4558 = !DILocation(line: 43, column: 7, scope: !4550)
!4559 = !DILocation(line: 44, column: 13, scope: !4550)
!4560 = !DILocation(line: 46, column: 5, scope: !4550)
!4561 = !DILocation(line: 48, column: 3, scope: !4546)
!4562 = distinct !DISubprogram(name: "rpl_fclose", scope: !684, file: !684, line: 58, type: !4563, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4599)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!14, !4565}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !4567)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !4568)
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4567, file: !785, line: 51, baseType: !14, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4567, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4567, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4567, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4567, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4567, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4567, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4567, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4567, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4567, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4567, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4567, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4567, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4567, file: !785, line: 70, baseType: !4583, size: 64, offset: 832)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4567, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4567, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4567, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4567, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4567, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4567, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4567, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4567, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4567, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4567, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4567, file: !785, line: 93, baseType: !4583, size: 64, offset: 1344)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4567, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4567, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4567, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4567, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!4599 = !{!4600, !4601, !4602, !4603}
!4600 = !DILocalVariable(name: "fp", arg: 1, scope: !4562, file: !684, line: 58, type: !4565)
!4601 = !DILocalVariable(name: "saved_errno", scope: !4562, file: !684, line: 60, type: !14)
!4602 = !DILocalVariable(name: "fd", scope: !4562, file: !684, line: 61, type: !14)
!4603 = !DILocalVariable(name: "result", scope: !4562, file: !684, line: 62, type: !14)
!4604 = !DILocation(line: 0, scope: !4562)
!4605 = !DILocation(line: 65, column: 8, scope: !4562)
!4606 = !DILocation(line: 66, column: 10, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4562, file: !684, line: 66, column: 7)
!4608 = !DILocation(line: 66, column: 7, scope: !4562)
!4609 = !DILocation(line: 67, column: 12, scope: !4607)
!4610 = !DILocation(line: 67, column: 5, scope: !4607)
!4611 = !DILocation(line: 72, column: 9, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4562, file: !684, line: 72, column: 7)
!4613 = !DILocation(line: 72, column: 23, scope: !4612)
!4614 = !DILocation(line: 72, column: 33, scope: !4612)
!4615 = !DILocation(line: 72, column: 26, scope: !4612)
!4616 = !DILocation(line: 72, column: 59, scope: !4612)
!4617 = !DILocation(line: 73, column: 7, scope: !4612)
!4618 = !DILocation(line: 73, column: 10, scope: !4612)
!4619 = !DILocation(line: 72, column: 7, scope: !4562)
!4620 = !DILocation(line: 100, column: 12, scope: !4562)
!4621 = !DILocation(line: 105, column: 7, scope: !4562)
!4622 = !DILocation(line: 74, column: 19, scope: !4612)
!4623 = !DILocation(line: 105, column: 19, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4562, file: !684, line: 105, column: 7)
!4625 = !DILocation(line: 107, column: 13, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4624, file: !684, line: 106, column: 5)
!4627 = !DILocation(line: 109, column: 5, scope: !4626)
!4628 = !DILocation(line: 112, column: 1, scope: !4562)
!4629 = !DISubprogram(name: "fileno", scope: !780, file: !780, line: 785, type: !4630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!14, !4583}
!4632 = !DISubprogram(name: "fclose", scope: !780, file: !780, line: 213, type: !4630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4633 = !DISubprogram(name: "lseek", scope: !3458, file: !3458, line: 334, type: !4634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!807, !14, !807, !14}
!4636 = distinct !DISubprogram(name: "rpl_fflush", scope: !686, file: !686, line: 129, type: !4637, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4673)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!14, !4639}
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !4641)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4641, file: !785, line: 51, baseType: !14, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4641, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4641, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4641, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4641, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4641, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4641, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4641, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4641, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4641, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4641, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4641, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4641, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4641, file: !785, line: 70, baseType: !4657, size: 64, offset: 832)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4641, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4641, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4641, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4641, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4641, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4641, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4641, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4641, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4641, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4641, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4641, file: !785, line: 93, baseType: !4657, size: 64, offset: 1344)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4641, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4641, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4641, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4641, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!4673 = !{!4674}
!4674 = !DILocalVariable(name: "stream", arg: 1, scope: !4636, file: !686, line: 129, type: !4639)
!4675 = !DILocation(line: 0, scope: !4636)
!4676 = !DILocation(line: 150, column: 14, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4636, file: !686, line: 150, column: 7)
!4678 = !DILocation(line: 150, column: 22, scope: !4677)
!4679 = !DILocation(line: 150, column: 27, scope: !4677)
!4680 = !DILocation(line: 150, column: 7, scope: !4636)
!4681 = !DILocation(line: 151, column: 12, scope: !4677)
!4682 = !DILocation(line: 151, column: 5, scope: !4677)
!4683 = !DILocalVariable(name: "fp", arg: 1, scope: !4684, file: !686, line: 41, type: !4639)
!4684 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !686, file: !686, line: 41, type: !4685, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !4687)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !4639}
!4687 = !{!4683}
!4688 = !DILocation(line: 0, scope: !4684, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 156, column: 3, scope: !4636)
!4690 = !DILocation(line: 43, column: 11, scope: !4691, inlinedAt: !4689)
!4691 = distinct !DILexicalBlock(scope: !4684, file: !686, line: 43, column: 7)
!4692 = !DILocation(line: 43, column: 18, scope: !4691, inlinedAt: !4689)
!4693 = !DILocation(line: 43, column: 7, scope: !4684, inlinedAt: !4689)
!4694 = !DILocation(line: 45, column: 5, scope: !4691, inlinedAt: !4689)
!4695 = !DILocation(line: 158, column: 10, scope: !4636)
!4696 = !DILocation(line: 158, column: 3, scope: !4636)
!4697 = !DILocation(line: 235, column: 1, scope: !4636)
!4698 = !DISubprogram(name: "fflush", scope: !780, file: !780, line: 218, type: !4699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!14, !4657}
!4701 = distinct !DISubprogram(name: "rpl_fseeko", scope: !688, file: !688, line: 28, type: !4702, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4739)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!14, !4704, !4738, !14}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1116, line: 7, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !785, line: 49, size: 1728, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4706, file: !785, line: 51, baseType: !14, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4706, file: !785, line: 54, baseType: !44, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4706, file: !785, line: 55, baseType: !44, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4706, file: !785, line: 56, baseType: !44, size: 64, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4706, file: !785, line: 57, baseType: !44, size: 64, offset: 256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4706, file: !785, line: 58, baseType: !44, size: 64, offset: 320)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4706, file: !785, line: 59, baseType: !44, size: 64, offset: 384)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4706, file: !785, line: 60, baseType: !44, size: 64, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4706, file: !785, line: 61, baseType: !44, size: 64, offset: 512)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4706, file: !785, line: 64, baseType: !44, size: 64, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4706, file: !785, line: 65, baseType: !44, size: 64, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4706, file: !785, line: 66, baseType: !44, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4706, file: !785, line: 68, baseType: !800, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4706, file: !785, line: 70, baseType: !4722, size: 64, offset: 832)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4706, file: !785, line: 72, baseType: !14, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4706, file: !785, line: 73, baseType: !14, size: 32, offset: 928)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4706, file: !785, line: 74, baseType: !806, size: 64, offset: 960)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4706, file: !785, line: 77, baseType: !118, size: 16, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4706, file: !785, line: 78, baseType: !810, size: 8, offset: 1040)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4706, file: !785, line: 79, baseType: !812, size: 8, offset: 1048)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4706, file: !785, line: 81, baseType: !816, size: 64, offset: 1088)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4706, file: !785, line: 89, baseType: !819, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4706, file: !785, line: 91, baseType: !821, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4706, file: !785, line: 92, baseType: !824, size: 64, offset: 1280)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4706, file: !785, line: 93, baseType: !4722, size: 64, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4706, file: !785, line: 94, baseType: !46, size: 64, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4706, file: !785, line: 95, baseType: !119, size: 64, offset: 1472)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4706, file: !785, line: 96, baseType: !14, size: 32, offset: 1536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4706, file: !785, line: 98, baseType: !831, size: 160, offset: 1568)
!4738 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !780, line: 63, baseType: !806)
!4739 = !{!4740, !4741, !4742, !4743}
!4740 = !DILocalVariable(name: "fp", arg: 1, scope: !4701, file: !688, line: 28, type: !4704)
!4741 = !DILocalVariable(name: "offset", arg: 2, scope: !4701, file: !688, line: 28, type: !4738)
!4742 = !DILocalVariable(name: "whence", arg: 3, scope: !4701, file: !688, line: 28, type: !14)
!4743 = !DILocalVariable(name: "pos", scope: !4744, file: !688, line: 117, type: !4738)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !688, line: 113, column: 5)
!4745 = distinct !DILexicalBlock(scope: !4701, file: !688, line: 52, column: 7)
!4746 = !DILocation(line: 0, scope: !4701)
!4747 = !DILocation(line: 52, column: 11, scope: !4745)
!4748 = !{!1196, !709, i64 16}
!4749 = !DILocation(line: 52, column: 31, scope: !4745)
!4750 = !{!1196, !709, i64 8}
!4751 = !DILocation(line: 52, column: 24, scope: !4745)
!4752 = !DILocation(line: 53, column: 7, scope: !4745)
!4753 = !DILocation(line: 53, column: 14, scope: !4745)
!4754 = !DILocation(line: 53, column: 35, scope: !4745)
!4755 = !{!1196, !709, i64 32}
!4756 = !DILocation(line: 53, column: 28, scope: !4745)
!4757 = !DILocation(line: 54, column: 7, scope: !4745)
!4758 = !DILocation(line: 54, column: 14, scope: !4745)
!4759 = !{!1196, !709, i64 72}
!4760 = !DILocation(line: 54, column: 28, scope: !4745)
!4761 = !DILocation(line: 52, column: 7, scope: !4701)
!4762 = !DILocation(line: 117, column: 26, scope: !4744)
!4763 = !DILocation(line: 117, column: 19, scope: !4744)
!4764 = !DILocation(line: 0, scope: !4744)
!4765 = !DILocation(line: 118, column: 15, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4744, file: !688, line: 118, column: 11)
!4767 = !DILocation(line: 118, column: 11, scope: !4744)
!4768 = !DILocation(line: 129, column: 11, scope: !4744)
!4769 = !DILocation(line: 129, column: 18, scope: !4744)
!4770 = !DILocation(line: 130, column: 11, scope: !4744)
!4771 = !DILocation(line: 130, column: 19, scope: !4744)
!4772 = !{!1196, !1197, i64 144}
!4773 = !DILocation(line: 161, column: 7, scope: !4744)
!4774 = !DILocation(line: 163, column: 10, scope: !4701)
!4775 = !DILocation(line: 163, column: 3, scope: !4701)
!4776 = !DILocation(line: 164, column: 1, scope: !4701)
!4777 = !DISubprogram(name: "fseeko", scope: !780, file: !780, line: 712, type: !4778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!14, !4722, !807, !14}
!4780 = distinct !DISubprogram(name: "dup_safer", scope: !690, file: !690, line: 31, type: !3465, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4781)
!4781 = !{!4782}
!4782 = !DILocalVariable(name: "fd", arg: 1, scope: !4780, file: !690, line: 31, type: !14)
!4783 = !DILocation(line: 0, scope: !4780)
!4784 = !DILocation(line: 33, column: 10, scope: !4780)
!4785 = !DILocation(line: 33, column: 3, scope: !4780)
!4786 = distinct !DISubprogram(name: "rpl_fcntl", scope: !174, file: !174, line: 202, type: !4787, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!14, !14, !14, null}
!4789 = !{!4790, !4791, !4792, !4802, !4803, !4806, !4808, !4812}
!4790 = !DILocalVariable(name: "fd", arg: 1, scope: !4786, file: !174, line: 202, type: !14)
!4791 = !DILocalVariable(name: "action", arg: 2, scope: !4786, file: !174, line: 202, type: !14)
!4792 = !DILocalVariable(name: "arg", scope: !4786, file: !174, line: 208, type: !4793)
!4793 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1155, line: 14, baseType: !4794)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !174, baseType: !4795)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4796, size: 192, elements: !813)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4797)
!4797 = !{!4798, !4799, !4800, !4801}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4796, file: !174, line: 208, baseType: !21, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4796, file: !174, line: 208, baseType: !21, size: 32, offset: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4796, file: !174, line: 208, baseType: !46, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4796, file: !174, line: 208, baseType: !46, size: 64, offset: 128)
!4802 = !DILocalVariable(name: "result", scope: !4786, file: !174, line: 209, type: !14)
!4803 = !DILocalVariable(name: "target", scope: !4804, file: !174, line: 215, type: !14)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !174, line: 214, column: 7)
!4805 = distinct !DILexicalBlock(scope: !4786, file: !174, line: 212, column: 5)
!4806 = !DILocalVariable(name: "target", scope: !4807, file: !174, line: 222, type: !14)
!4807 = distinct !DILexicalBlock(scope: !4805, file: !174, line: 221, column: 7)
!4808 = !DILocalVariable(name: "x", scope: !4809, file: !174, line: 423, type: !14)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !174, line: 422, column: 13)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !174, line: 260, column: 11)
!4811 = distinct !DILexicalBlock(scope: !4805, file: !174, line: 257, column: 7)
!4812 = !DILocalVariable(name: "p", scope: !4813, file: !174, line: 431, type: !46)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !174, line: 430, column: 13)
!4814 = !DILocation(line: 0, scope: !4786)
!4815 = !DILocation(line: 208, column: 3, scope: !4786)
!4816 = !DILocation(line: 208, column: 11, scope: !4786)
!4817 = !DILocation(line: 210, column: 3, scope: !4786)
!4818 = !DILocation(line: 211, column: 3, scope: !4786)
!4819 = !DILocation(line: 215, column: 22, scope: !4804)
!4820 = !DILocation(line: 0, scope: !4804)
!4821 = !DILocalVariable(name: "fd", arg: 1, scope: !4822, file: !174, line: 447, type: !14)
!4822 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !174, file: !174, line: 447, type: !175, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !4823)
!4823 = !{!4821, !4824, !4825}
!4824 = !DILocalVariable(name: "target", arg: 2, scope: !4822, file: !174, line: 447, type: !14)
!4825 = !DILocalVariable(name: "result", scope: !4822, file: !174, line: 449, type: !14)
!4826 = !DILocation(line: 0, scope: !4822, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 216, column: 18, scope: !4804)
!4828 = !DILocation(line: 482, column: 12, scope: !4822, inlinedAt: !4827)
!4829 = !DILocation(line: 222, column: 22, scope: !4807)
!4830 = !DILocation(line: 0, scope: !4807)
!4831 = !DILocation(line: 0, scope: !173, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 223, column: 18, scope: !4807)
!4833 = !DILocation(line: 508, column: 12, scope: !4834, inlinedAt: !4832)
!4834 = distinct !DILexicalBlock(scope: !173, file: !174, line: 508, column: 7)
!4835 = !DILocation(line: 508, column: 9, scope: !4834, inlinedAt: !4832)
!4836 = !DILocation(line: 508, column: 7, scope: !173, inlinedAt: !4832)
!4837 = !DILocation(line: 510, column: 16, scope: !4838, inlinedAt: !4832)
!4838 = distinct !DILexicalBlock(scope: !4834, file: !174, line: 509, column: 5)
!4839 = !DILocation(line: 511, column: 13, scope: !4840, inlinedAt: !4832)
!4840 = distinct !DILexicalBlock(scope: !4838, file: !174, line: 511, column: 11)
!4841 = !DILocation(line: 511, column: 23, scope: !4840, inlinedAt: !4832)
!4842 = !DILocation(line: 511, column: 26, scope: !4840, inlinedAt: !4832)
!4843 = !DILocation(line: 511, column: 32, scope: !4840, inlinedAt: !4832)
!4844 = !DILocation(line: 511, column: 11, scope: !4838, inlinedAt: !4832)
!4845 = !DILocation(line: 513, column: 30, scope: !4846, inlinedAt: !4832)
!4846 = distinct !DILexicalBlock(scope: !4840, file: !174, line: 512, column: 9)
!4847 = !DILocation(line: 529, column: 19, scope: !185, inlinedAt: !4832)
!4848 = !DILocation(line: 0, scope: !4822, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 521, column: 20, scope: !4850, inlinedAt: !4832)
!4850 = distinct !DILexicalBlock(scope: !4840, file: !174, line: 520, column: 9)
!4851 = !DILocation(line: 482, column: 12, scope: !4822, inlinedAt: !4849)
!4852 = !DILocation(line: 522, column: 22, scope: !4853, inlinedAt: !4832)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !174, line: 522, column: 15)
!4854 = !DILocation(line: 522, column: 15, scope: !4850, inlinedAt: !4832)
!4855 = !DILocation(line: 523, column: 32, scope: !4853, inlinedAt: !4832)
!4856 = !DILocation(line: 523, column: 13, scope: !4853, inlinedAt: !4832)
!4857 = !DILocation(line: 0, scope: !4822, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 528, column: 14, scope: !4834, inlinedAt: !4832)
!4859 = !DILocation(line: 482, column: 12, scope: !4822, inlinedAt: !4858)
!4860 = !DILocation(line: 0, scope: !4834, inlinedAt: !4832)
!4861 = !DILocation(line: 529, column: 9, scope: !185, inlinedAt: !4832)
!4862 = !DILocation(line: 531, column: 19, scope: !184, inlinedAt: !4832)
!4863 = !DILocation(line: 0, scope: !184, inlinedAt: !4832)
!4864 = !DILocation(line: 532, column: 17, scope: !188, inlinedAt: !4832)
!4865 = !DILocation(line: 532, column: 21, scope: !188, inlinedAt: !4832)
!4866 = !DILocation(line: 532, column: 54, scope: !188, inlinedAt: !4832)
!4867 = !DILocation(line: 532, column: 24, scope: !188, inlinedAt: !4832)
!4868 = !DILocation(line: 532, column: 68, scope: !188, inlinedAt: !4832)
!4869 = !DILocation(line: 532, column: 11, scope: !184, inlinedAt: !4832)
!4870 = !DILocation(line: 534, column: 29, scope: !187, inlinedAt: !4832)
!4871 = !DILocation(line: 0, scope: !187, inlinedAt: !4832)
!4872 = !DILocation(line: 535, column: 11, scope: !187, inlinedAt: !4832)
!4873 = !DILocation(line: 536, column: 17, scope: !187, inlinedAt: !4832)
!4874 = !DILocation(line: 538, column: 9, scope: !187, inlinedAt: !4832)
!4875 = !DILocation(line: 328, column: 22, scope: !4810)
!4876 = !DILocation(line: 329, column: 13, scope: !4810)
!4877 = !DILocation(line: 423, column: 23, scope: !4809)
!4878 = !DILocation(line: 0, scope: !4809)
!4879 = !DILocation(line: 424, column: 24, scope: !4809)
!4880 = !DILocation(line: 426, column: 13, scope: !4810)
!4881 = !DILocation(line: 431, column: 25, scope: !4813)
!4882 = !DILocation(line: 0, scope: !4813)
!4883 = !DILocation(line: 432, column: 24, scope: !4813)
!4884 = !DILocation(line: 434, column: 13, scope: !4810)
!4885 = !DILocation(line: 0, scope: !4805)
!4886 = !DILocation(line: 442, column: 3, scope: !4786)
!4887 = !DILocation(line: 444, column: 1, scope: !4786)
!4888 = !DILocation(line: 443, column: 3, scope: !4786)
!4889 = !DISubprogram(name: "fcntl", scope: !3454, file: !3454, line: 176, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !70)
