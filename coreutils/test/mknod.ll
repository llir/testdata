; ModuleID = 'coreutils-8.32/src/mknod.bc'
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
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1
@.str.8 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !53
@.str.26 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !59
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !64
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !67
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !73
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !79
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !109
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !115
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !127
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !134
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !141
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !129
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !143
@.str.94 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.98 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.99 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.112 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.114 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.115 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.116 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.117 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.118 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !149
@.str.1.129 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.134 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.146 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !610 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !614, metadata !DIExpression()), !dbg !615
  %3 = icmp eq i32 %0, 0, !dbg !616
  br i1 %3, label %9, label %4, !dbg !618

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !619, !tbaa !621
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !619
  %7 = load i8*, i8** @program_name, align 8, !dbg !619, !tbaa !621
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !619
  br label %75, !dbg !619

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !625
  %11 = load i8*, i8** @program_name, align 8, !dbg !625, !tbaa !621
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !625
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !627
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !621
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !627
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #25, !dbg !628
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !621
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #25, !dbg !628
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !634
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !621
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !634
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !635
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !621
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !635
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !636
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !621
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !636
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !637
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !621
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !637
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.7, i64 0, i64 0), i32 5) #25, !dbg !638
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !621
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !638
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 5) #25, !dbg !639
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !621
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !639
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #25, !dbg !640
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), metadata !641, metadata !DIExpression()) #25, !dbg !659
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #25, !dbg !661
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !646, metadata !DIExpression()) #25, !dbg !662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), metadata !655, metadata !DIExpression()) #25, !dbg !659
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !656, metadata !DIExpression()) #25, !dbg !659
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !663
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !656, metadata !DIExpression()) #25, !dbg !659
  br label %41, !dbg !664

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !656, metadata !DIExpression()) #25, !dbg !659
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %42) #26, !dbg !665
  %45 = icmp eq i32 %44, 0, !dbg !665
  br i1 %45, label %51, label %46, !dbg !664

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !656, metadata !DIExpression()) #25, !dbg !659
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !667
  %49 = load i8*, i8** %48, align 8, !dbg !667, !tbaa !668
  %50 = icmp eq i8* %49, null, !dbg !670
  br i1 %50, label %51, label %41, !dbg !671, !llvm.loop !672

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %43, %41 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !674
  %54 = load i8*, i8** %53, align 8, !dbg !674, !tbaa !676
  %55 = icmp eq i8* %54, null, !dbg !677
  %56 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %54, !dbg !678
  call void @llvm.dbg.value(metadata i8* %56, metadata !655, metadata !DIExpression()) #25, !dbg !659
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #25, !dbg !679
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #25, !dbg !679
  %59 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !680
  call void @llvm.dbg.value(metadata i8* %59, metadata !658, metadata !DIExpression()) #25, !dbg !659
  %60 = icmp eq i8* %59, null, !dbg !681
  br i1 %60, label %68, label %61, !dbg !683

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #26, !dbg !684
  %63 = icmp eq i32 %62, 0, !dbg !684
  br i1 %63, label %68, label %64, !dbg !685

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 5) #25, !dbg !686
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !621
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #25, !dbg !686
  br label %68, !dbg !688

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 5) #25, !dbg !689
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !689
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #25, !dbg !690
  %72 = icmp eq i8* %56, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), !dbg !690
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !690
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #25, !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #25, !dbg !691
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #27, !dbg !692
  unreachable, !dbg !692
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !693 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !697 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !752 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !756 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !761, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8** %1, metadata !762, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8* null, metadata !766, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8* null, metadata !770, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !771, metadata !DIExpression()), !dbg !793
  %5 = load i8*, i8** %1, align 8, !dbg !794, !tbaa !621
  tail call void @set_program_name(i8* %5) #25, !dbg !795
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #25, !dbg !796
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !797
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #25, !dbg !798
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !799
  br label %10, !dbg !800

10:                                               ; preds = %14, %2
  %11 = phi i8* [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !800

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !766, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8* null, metadata !770, metadata !DIExpression()), !dbg !793
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !801
  call void @llvm.dbg.value(metadata i32 %13, metadata !767, metadata !DIExpression()), !dbg !793
  switch i32 %13, label %26 [
    i32 -1, label %27
    i32 109, label %14
    i32 90, label %16
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !800

14:                                               ; preds = %12
  %15 = load i8*, i8** @optarg, align 8, !dbg !802, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %15, metadata !766, metadata !DIExpression()), !dbg !793
  br label %10, !dbg !805, !llvm.loop !806

16:                                               ; preds = %12
  %17 = load i8*, i8** @optarg, align 8, !dbg !808, !tbaa !621
  %18 = icmp eq i8* %17, null, !dbg !808
  br i1 %18, label %21, label %19, !dbg !812

19:                                               ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !813
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20) #25, !dbg !815
  br label %21, !dbg !816

21:                                               ; preds = %19, %16
  br label %12, !dbg !793, !llvm.loop !806

22:                                               ; preds = %12
  tail call void @usage(i32 0) #28, !dbg !817
  unreachable, !dbg !817

23:                                               ; preds = %12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818, !tbaa !621
  %25 = load i8*, i8** @Version, align 8, !dbg !818, !tbaa !621
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* null) #25, !dbg !818
  tail call void @exit(i32 0) #27, !dbg !818
  unreachable, !dbg !818

26:                                               ; preds = %12
  tail call void @usage(i32 1) #28, !dbg !819
  unreachable, !dbg !819

27:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 438, metadata !763, metadata !DIExpression()), !dbg !793
  %28 = icmp eq i8* %11, null, !dbg !820
  br i1 %28, label %42, label %29, !dbg !821

29:                                               ; preds = %27
  %30 = tail call %struct.mode_change* @mode_compile(i8* nonnull %11) #25, !dbg !822
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !775, metadata !DIExpression()), !dbg !823
  %31 = icmp eq %struct.mode_change* %30, null, !dbg !824
  br i1 %31, label %32, label %34, !dbg !826

32:                                               ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 5) #25, !dbg !827
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %33) #25, !dbg !827
  unreachable, !dbg !827

34:                                               ; preds = %29
  %35 = tail call i32 @umask(i32 0) #25, !dbg !828
  call void @llvm.dbg.value(metadata i32 %35, metadata !772, metadata !DIExpression()), !dbg !823
  %36 = tail call i32 @umask(i32 %35) #25, !dbg !829
  %37 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %35, %struct.mode_change* nonnull %30, i32* null) #25, !dbg !830
  call void @llvm.dbg.value(metadata i32 %37, metadata !763, metadata !DIExpression()), !dbg !793
  %38 = bitcast %struct.mode_change* %30 to i8*, !dbg !831
  tail call void @free(i8* %38) #25, !dbg !832
  %39 = icmp ult i32 %37, 512, !dbg !833
  br i1 %39, label %42, label %40, !dbg !835

40:                                               ; preds = %34
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 5) #25, !dbg !836
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %41) #25, !dbg !836
  unreachable, !dbg !836

42:                                               ; preds = %34, %27
  %43 = phi i32 [ 438, %27 ], [ %37, %34 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %43, metadata !763, metadata !DIExpression()), !dbg !793
  %44 = load i32, i32* @optind, align 4, !dbg !837, !tbaa !838
  %45 = icmp slt i32 %44, %0, !dbg !840
  br i1 %45, label %46, label %55, !dbg !841

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1, !dbg !842
  %48 = icmp slt i32 %47, %0, !dbg !843
  br i1 %48, label %49, label %56, !dbg !844

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !845
  %51 = getelementptr inbounds i8*, i8** %1, i64 %50, !dbg !845
  %52 = load i8*, i8** %51, align 8, !dbg !845, !tbaa !621
  %53 = load i8, i8* %52, align 1, !dbg !845, !tbaa !846
  %54 = icmp eq i8 %53, 112, !dbg !847
  br i1 %54, label %55, label %56, !dbg !848

55:                                               ; preds = %42, %49
  br label %56, !dbg !848

56:                                               ; preds = %46, %49, %55
  %57 = phi i1 [ true, %55 ], [ false, %49 ], [ false, %46 ]
  %58 = phi i64 [ 2, %55 ], [ 4, %49 ], [ 4, %46 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !768, metadata !DIExpression()), !dbg !793
  %59 = sub nsw i32 %0, %44, !dbg !849
  %60 = sext i32 %59 to i64, !dbg !851
  %61 = icmp ugt i64 %58, %60, !dbg !852
  br i1 %61, label %62, label %82, !dbg !853

62:                                               ; preds = %56
  br i1 %45, label %65, label %63, !dbg !854

63:                                               ; preds = %62
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #25, !dbg !856
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #25, !dbg !858
  br label %72, !dbg !858

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 5) #25, !dbg !859
  %67 = add nsw i32 %0, -1, !dbg !860
  %68 = sext i32 %67 to i64, !dbg !861
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !861
  %70 = load i8*, i8** %69, align 8, !dbg !861, !tbaa !621
  %71 = tail call i8* @quote(i8* %70) #25, !dbg !862
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66, i8* %71) #25, !dbg !863
  br label %72

72:                                               ; preds = %65, %63
  br i1 %57, label %81, label %73, !dbg !864

73:                                               ; preds = %72
  %74 = load i32, i32* @optind, align 4, !dbg !866, !tbaa !838
  %75 = sub nsw i32 %0, %74, !dbg !867
  %76 = icmp eq i32 %75, 2, !dbg !868
  br i1 %76, label %77, label %81, !dbg !869

77:                                               ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !870, !tbaa !621
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #25, !dbg !870
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %78, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %79) #25, !dbg !870
  br label %81, !dbg !870

81:                                               ; preds = %77, %73, %72
  tail call void @usage(i32 1) #28, !dbg !871
  unreachable, !dbg !871

82:                                               ; preds = %56
  %83 = icmp ult i64 %58, %60, !dbg !872
  br i1 %83, label %84, label %101, !dbg !874

84:                                               ; preds = %82
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !875
  %86 = load i32, i32* @optind, align 4, !dbg !877, !tbaa !838
  %87 = sext i32 %86 to i64, !dbg !877
  %88 = add nsw i64 %58, %87, !dbg !878
  %89 = getelementptr inbounds i8*, i8** %1, i64 %88, !dbg !879
  %90 = load i8*, i8** %89, align 8, !dbg !879, !tbaa !621
  %91 = tail call i8* @quote(i8* %90) #25, !dbg !880
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85, i8* %91) #25, !dbg !881
  br i1 %57, label %92, label %100, !dbg !882

92:                                               ; preds = %84
  %93 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !838
  %94 = sub nsw i32 %0, %93, !dbg !885
  %95 = icmp eq i32 %94, 4, !dbg !886
  br i1 %95, label %96, label %100, !dbg !887

96:                                               ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !888, !tbaa !621
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !888
  %99 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %97, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %98) #25, !dbg !888
  br label %100, !dbg !888

100:                                              ; preds = %96, %92, %84
  tail call void @usage(i32 1) #28, !dbg !889
  unreachable, !dbg !889

101:                                              ; preds = %82
  %102 = add nsw i32 %44, 1, !dbg !890
  %103 = sext i32 %102 to i64, !dbg !891
  %104 = getelementptr inbounds i8*, i8** %1, i64 %103, !dbg !891
  %105 = load i8*, i8** %104, align 8, !dbg !891, !tbaa !621
  %106 = load i8, i8* %105, align 1, !dbg !891, !tbaa !846
  %107 = sext i8 %106 to i32, !dbg !891
  switch i32 %107, label %184 [
    i32 98, label %109
    i32 99, label %108
    i32 117, label %108
    i32 112, label %170
  ], !dbg !892

108:                                              ; preds = %101, %101
  call void @llvm.dbg.value(metadata i32 8192, metadata !769, metadata !DIExpression()), !dbg !793
  br label %109, !dbg !893

109:                                              ; preds = %101, %108
  %110 = phi i32 [ 8192, %108 ], [ 24576, %101 ], !dbg !894
  call void @llvm.dbg.value(metadata i32 %110, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.label(metadata !792), !dbg !895
  %111 = add nsw i32 %44, 2, !dbg !896
  %112 = sext i32 %111 to i64, !dbg !897
  %113 = getelementptr inbounds i8*, i8** %1, i64 %112, !dbg !897
  %114 = load i8*, i8** %113, align 8, !dbg !897, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %114, metadata !782, metadata !DIExpression()), !dbg !898
  %115 = add nsw i32 %44, 3, !dbg !899
  %116 = sext i32 %115 to i64, !dbg !900
  %117 = getelementptr inbounds i8*, i8** %1, i64 %116, !dbg !900
  %118 = load i8*, i8** %117, align 8, !dbg !900, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %118, metadata !785, metadata !DIExpression()), !dbg !898
  %119 = bitcast i64* %3 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119) #25, !dbg !901
  %120 = bitcast i64* %4 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #25, !dbg !901
  call void @llvm.dbg.value(metadata i64* %3, metadata !786, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %121 = call i32 @xstrtoumax(i8* %114, i8** null, i32 0, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #25, !dbg !902
  %122 = icmp eq i32 %121, 0, !dbg !904
  %123 = load i64, i64* %3, align 8
  %124 = icmp ult i64 %123, 4294967296
  %125 = and i1 %122, %124, !dbg !905
  call void @llvm.dbg.value(metadata i64 %123, metadata !786, metadata !DIExpression()), !dbg !898
  br i1 %125, label %129, label %126, !dbg !905

126:                                              ; preds = %109
  %127 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !906
  %128 = call i8* @quote(i8* %114) #25, !dbg !906
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %127, i8* %128) #25, !dbg !906
  unreachable, !dbg !906

129:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64* %4, metadata !790, metadata !DIExpression(DW_OP_deref)), !dbg !898
  %130 = call i32 @xstrtoumax(i8* %118, i8** null, i32 0, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #25, !dbg !907
  %131 = icmp eq i32 %130, 0, !dbg !909
  %132 = load i64, i64* %4, align 8
  %133 = icmp ult i64 %132, 4294967296
  %134 = and i1 %131, %133, !dbg !910
  call void @llvm.dbg.value(metadata i64 %132, metadata !790, metadata !DIExpression()), !dbg !898
  br i1 %134, label %138, label %135, !dbg !910

135:                                              ; preds = %129
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !911
  %137 = call i8* @quote(i8* %118) #25, !dbg !911
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %136, i8* %137) #25, !dbg !911
  unreachable, !dbg !911

138:                                              ; preds = %129
  %139 = load i64, i64* %3, align 8, !dbg !912, !tbaa !913
  call void @llvm.dbg.value(metadata i64 %139, metadata !786, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i64 %139, metadata !915, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !923
  call void @llvm.dbg.value(metadata i64 %132, metadata !921, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !923
  %140 = shl i64 %139, 8, !dbg !925
  %141 = and i64 %140, 1048320, !dbg !925
  call void @llvm.dbg.value(metadata i64 %141, metadata !922, metadata !DIExpression()), !dbg !923
  %142 = shl i64 %139, 32, !dbg !925
  %143 = and i64 %142, -17592186044416, !dbg !925
  call void @llvm.dbg.value(metadata i64 undef, metadata !922, metadata !DIExpression()), !dbg !923
  %144 = and i64 %132, 255, !dbg !925
  call void @llvm.dbg.value(metadata i64 undef, metadata !922, metadata !DIExpression()), !dbg !923
  %145 = shl nuw nsw i64 %132, 12, !dbg !925
  %146 = and i64 %145, 17592184995840, !dbg !925
  %147 = or i64 %146, %144, !dbg !925
  %148 = or i64 %147, %141, !dbg !925
  %149 = or i64 %148, %143, !dbg !925
  call void @llvm.dbg.value(metadata i64 %149, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %149, metadata !791, metadata !DIExpression()), !dbg !898
  %150 = icmp eq i64 %149, -1, !dbg !926
  br i1 %150, label %151, label %153, !dbg !928

151:                                              ; preds = %138
  %152 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !929
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %152, i8* %114, i8* %118) #25, !dbg !929
  unreachable, !dbg !929

153:                                              ; preds = %138
  %154 = load i32, i32* @optind, align 4, !dbg !930, !tbaa !838
  %155 = sext i32 %154 to i64, !dbg !932
  %156 = getelementptr inbounds i8*, i8** %1, i64 %155, !dbg !932
  %157 = load i8*, i8** %156, align 8, !dbg !932, !tbaa !621
  %158 = or i32 %110, %43, !dbg !933
  %159 = call i32 @mknod(i8* %157, i32 %158, i64 %149) #25, !dbg !934
  %160 = icmp eq i32 %159, 0, !dbg !935
  br i1 %160, label %169, label %161, !dbg !936

161:                                              ; preds = %153
  %162 = tail call i32* @__errno_location() #29, !dbg !937
  %163 = load i32, i32* %162, align 4, !dbg !937, !tbaa !838
  %164 = load i32, i32* @optind, align 4, !dbg !937, !tbaa !838
  %165 = sext i32 %164 to i64, !dbg !937
  %166 = getelementptr inbounds i8*, i8** %1, i64 %165, !dbg !937
  %167 = load i8*, i8** %166, align 8, !dbg !937, !tbaa !621
  %168 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %167) #25, !dbg !937
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %168) #25, !dbg !937
  unreachable, !dbg !937

169:                                              ; preds = %153
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #25, !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #25, !dbg !938
  br label %192, !dbg !939

170:                                              ; preds = %101
  %171 = sext i32 %44 to i64, !dbg !940
  %172 = getelementptr inbounds i8*, i8** %1, i64 %171, !dbg !940
  %173 = load i8*, i8** %172, align 8, !dbg !940, !tbaa !621
  %174 = tail call i32 @mkfifo(i8* %173, i32 %43) #25, !dbg !942
  %175 = icmp eq i32 %174, 0, !dbg !943
  br i1 %175, label %192, label %176, !dbg !944

176:                                              ; preds = %170
  %177 = tail call i32* @__errno_location() #29, !dbg !945
  %178 = load i32, i32* %177, align 4, !dbg !945, !tbaa !838
  %179 = load i32, i32* @optind, align 4, !dbg !945, !tbaa !838
  %180 = sext i32 %179 to i64, !dbg !945
  %181 = getelementptr inbounds i8*, i8** %1, i64 %180, !dbg !945
  %182 = load i8*, i8** %181, align 8, !dbg !945, !tbaa !621
  %183 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %182) #25, !dbg !945
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %183) #25, !dbg !945
  unreachable, !dbg !945

184:                                              ; preds = %101
  %185 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #25, !dbg !946
  %186 = load i32, i32* @optind, align 4, !dbg !947, !tbaa !838
  %187 = add nsw i32 %186, 1, !dbg !948
  %188 = sext i32 %187 to i64, !dbg !949
  %189 = getelementptr inbounds i8*, i8** %1, i64 %188, !dbg !949
  %190 = load i8*, i8** %189, align 8, !dbg !949, !tbaa !621
  %191 = tail call i8* @quote(i8* %190) #25, !dbg !950
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %185, i8* %191) #25, !dbg !951
  tail call void @usage(i32 1) #28, !dbg !952
  unreachable, !dbg !952

192:                                              ; preds = %170, %169
  br i1 %28, label %209, label %193, !dbg !953

193:                                              ; preds = %192
  %194 = load i32, i32* @optind, align 4, !dbg !955, !tbaa !838
  %195 = sext i32 %194 to i64, !dbg !956
  %196 = getelementptr inbounds i8*, i8** %1, i64 %195, !dbg !956
  %197 = load i8*, i8** %196, align 8, !dbg !956, !tbaa !621
  %198 = call i32 @lchmod(i8* %197, i32 %43) #25, !dbg !957
  %199 = icmp eq i32 %198, 0, !dbg !958
  br i1 %199, label %209, label %200, !dbg !959

200:                                              ; preds = %193
  %201 = tail call i32* @__errno_location() #29, !dbg !960
  %202 = load i32, i32* %201, align 4, !dbg !960, !tbaa !838
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 5) #25, !dbg !960
  %204 = load i32, i32* @optind, align 4, !dbg !960, !tbaa !838
  %205 = sext i32 %204 to i64, !dbg !960
  %206 = getelementptr inbounds i8*, i8** %1, i64 %205, !dbg !960
  %207 = load i8*, i8** %206, align 8, !dbg !960, !tbaa !621
  %208 = call i8* @quotearg_style(i32 4, i8* %207) #25, !dbg !960
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %202, i8* %203, i8* %208) #25, !dbg !960
  unreachable, !dbg !960

209:                                              ; preds = %193, %192
  ret i32 0, !dbg !961
}

; Function Attrs: nounwind
declare !dbg !962 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !965 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !968 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !973 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !979 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !983 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !987 i32 @mknod(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !990 i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !993 i32 @lchmod(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !996, metadata !DIExpression()), !dbg !997
  store i8* %0, i8** @file_name, align 8, !dbg !998, !tbaa !621
  ret void, !dbg !999
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1000 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1006, !tbaa !1007
  ret void, !dbg !1009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1010 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1015, !tbaa !621
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1016
  %3 = icmp eq i32 %2, 0, !dbg !1017
  br i1 %3, label %22, label %4, !dbg !1018

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1019, !tbaa !1007, !range !1020
  %6 = icmp eq i8 %5, 0, !dbg !1019
  br i1 %6, label %11, label %7, !dbg !1021

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1022
  %9 = load i32, i32* %8, align 4, !dbg !1022, !tbaa !838
  %10 = icmp eq i32 %9, 32, !dbg !1023
  br i1 %10, label %22, label %11, !dbg !1024

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #25, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %12, metadata !1012, metadata !DIExpression()), !dbg !1026
  %13 = load i8*, i8** @file_name, align 8, !dbg !1027, !tbaa !621
  %14 = icmp eq i8* %13, null, !dbg !1027
  %15 = tail call i32* @__errno_location() #29, !dbg !1029
  %16 = load i32, i32* %15, align 4, !dbg !1029, !tbaa !838
  br i1 %14, label %19, label %17, !dbg !1030

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1031
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1032
  br label %20, !dbg !1032

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #25, !dbg !1033
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1034, !tbaa !838
  tail call void @_exit(i32 %21) #27, !dbg !1035
  unreachable, !dbg !1035

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1036, !tbaa !621
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1038
  %25 = icmp eq i32 %24, 0, !dbg !1039
  br i1 %25, label %28, label %26, !dbg !1040

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1041, !tbaa !838
  tail call void @_exit(i32 %27) #27, !dbg !1042
  unreachable, !dbg !1042

28:                                               ; preds = %22
  ret void, !dbg !1043
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !1044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1056, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !1058, metadata !DIExpression()), !dbg !1083
  %2 = load i8, i8* %0, align 1, !dbg !1084, !tbaa !846
  %3 = and i8 %2, -8, !dbg !1085
  %4 = icmp eq i8 %3, 48, !dbg !1085
  br i1 %4, label %5, label %39, !dbg !1085

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1086
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1088
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1088
  call void @llvm.dbg.value(metadata i8* %8, metadata !1059, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %7, metadata !1060, metadata !DIExpression()), !dbg !1088
  %9 = shl i32 %7, 3, !dbg !1089
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %10, metadata !1059, metadata !DIExpression()), !dbg !1083
  %11 = zext i8 %6 to i32, !dbg !1086
  %12 = add i32 %9, -48, !dbg !1091
  %13 = add i32 %12, %11, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %13, metadata !1060, metadata !DIExpression()), !dbg !1088
  %14 = icmp ugt i32 %13, 4095, !dbg !1093
  br i1 %14, label %149, label %15, !dbg !1095

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1096, !tbaa !846
  %17 = and i8 %16, -8, !dbg !1097
  %18 = icmp eq i8 %17, 48, !dbg !1097
  br i1 %18, label %5, label %19, !dbg !1097, !llvm.loop !1098

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1101
  br i1 %20, label %21, label %149, !dbg !1103

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1063, metadata !DIExpression()), !dbg !1088
  %22 = ptrtoint i8* %10 to i64, !dbg !1104
  %23 = ptrtoint i8* %0 to i64, !dbg !1104
  %24 = sub i64 %22, %23, !dbg !1104
  %25 = icmp slt i64 %24, 5, !dbg !1105
  %26 = and i32 %13, 3072, !dbg !1106
  %27 = or i32 %26, 1023, !dbg !1106
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %28, metadata !1064, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %13, metadata !1107, metadata !DIExpression()) #25, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %28, metadata !1112, metadata !DIExpression()) #25, !dbg !1114
  %29 = tail call noalias i8* @xmalloc(i64 32) #25, !dbg !1116
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1116
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1113, metadata !DIExpression()) #25, !dbg !1114
  store i8 61, i8* %29, align 4, !dbg !1117, !tbaa !1118
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1120
  store i8 1, i8* %31, align 1, !dbg !1121, !tbaa !1122
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1123
  %33 = bitcast i8* %32 to i32*, !dbg !1123
  store i32 4095, i32* %33, align 4, !dbg !1124, !tbaa !1125
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1126
  %35 = bitcast i8* %34 to i32*, !dbg !1126
  store i32 %13, i32* %35, align 4, !dbg !1127, !tbaa !1128
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1129
  %37 = bitcast i8* %36 to i32*, !dbg !1129
  store i32 %28, i32* %37, align 4, !dbg !1130, !tbaa !1131
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1132
  store i8 0, i8* %38, align 1, !dbg !1133, !tbaa !1122
  br label %149, !dbg !1134

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1135
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1138
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1139
  call void @llvm.dbg.value(metadata i64 %42, metadata !1065, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i8* %41, metadata !1059, metadata !DIExpression()), !dbg !1083
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1140

43:                                               ; preds = %39
  br label %44, !dbg !1141

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %46, metadata !1065, metadata !DIExpression()), !dbg !1139
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %47, metadata !1059, metadata !DIExpression()), !dbg !1083
  %48 = load i8, i8* %47, align 1, !dbg !1135, !tbaa !846
  br label %39, !dbg !1144, !llvm.loop !1145

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1147, metadata !DIExpression()) #25, !dbg !1153
  call void @llvm.dbg.value(metadata i64 16, metadata !1152, metadata !DIExpression()) #25, !dbg !1153
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1155
  br i1 %50, label %51, label %52, !dbg !1157

51:                                               ; preds = %49
  tail call void @xalloc_die() #27, !dbg !1158
  unreachable, !dbg !1158

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !1159
  %54 = tail call noalias i8* @xmalloc(i64 %53) #25, !dbg !1160
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1057, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %0, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %56, !dbg !1162

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !1163
  %58 = phi i64 [ 0, %52 ], [ %132, %144 ], !dbg !1164
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %58, metadata !1058, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %57, metadata !1059, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 0, metadata !1067, metadata !DIExpression()), !dbg !1166
  br label %59, !dbg !1167

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1163
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1166
  call void @llvm.dbg.value(metadata i32 %61, metadata !1067, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %60, metadata !1059, metadata !DIExpression()), !dbg !1083
  %62 = load i8, i8* %60, align 1, !dbg !1168, !tbaa !846
  %63 = sext i8 %62 to i32, !dbg !1168
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1171

64:                                               ; preds = %59, %59, %59
  br label %72, !dbg !1172

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1067, metadata !DIExpression()), !dbg !1166
  br label %68, !dbg !1173

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1067, metadata !DIExpression()), !dbg !1166
  br label %68, !dbg !1175

67:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !1067, metadata !DIExpression()), !dbg !1166
  br label %68, !dbg !1176

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %70, metadata !1067, metadata !DIExpression()), !dbg !1166
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %71, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %59, !dbg !1179, !llvm.loop !1180

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !1183
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !1163
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !1184
  %76 = phi i64 [ %58, %64 ], [ %132, %143 ], !dbg !1083
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %76, metadata !1058, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %75, metadata !1067, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %74, metadata !1059, metadata !DIExpression()), !dbg !1083
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %77, metadata !1059, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %73, metadata !1071, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 0, metadata !1074, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 3, metadata !1075, metadata !DIExpression()), !dbg !1165
  %78 = load i8, i8* %77, align 1, !dbg !1186, !tbaa !846
  %79 = sext i8 %78 to i32, !dbg !1186
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
  ], !dbg !1172

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1187

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1188
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1165
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1190
  call void @llvm.dbg.value(metadata i32 %84, metadata !1077, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %83, metadata !1059, metadata !DIExpression()), !dbg !1083
  %85 = shl i32 %84, 3, !dbg !1191
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %86, metadata !1059, metadata !DIExpression()), !dbg !1083
  %87 = sext i8 %82 to i32, !dbg !1188
  %88 = add i32 %85, -48, !dbg !1193
  %89 = add i32 %88, %87, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %89, metadata !1077, metadata !DIExpression()), !dbg !1190
  %90 = icmp ugt i32 %89, 4095, !dbg !1195
  br i1 %90, label %148, label %91, !dbg !1197

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1198, !tbaa !846
  %93 = and i8 %92, -8, !dbg !1199
  %94 = icmp eq i8 %93, 48, !dbg !1199
  br i1 %94, label %81, label %95, !dbg !1199, !llvm.loop !1200

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1202
  br i1 %96, label %97, label %148, !dbg !1204

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1205

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1073, metadata !DIExpression()), !dbg !1165
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %99, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %125, !dbg !1207

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1073, metadata !DIExpression()), !dbg !1165
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %101, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %125, !dbg !1209

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1073, metadata !DIExpression()), !dbg !1165
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1210
  call void @llvm.dbg.value(metadata i8* %103, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %125, !dbg !1211

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1212
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1165
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1215
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1216
  call void @llvm.dbg.value(metadata i8 %108, metadata !1075, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %107, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %106, metadata !1059, metadata !DIExpression()), !dbg !1083
  %109 = sext i8 %105 to i32, !dbg !1212
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1217

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %111, metadata !1073, metadata !DIExpression()), !dbg !1165
  br label %120, !dbg !1220

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %113, metadata !1073, metadata !DIExpression()), !dbg !1165
  br label %120, !dbg !1222

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %115, metadata !1073, metadata !DIExpression()), !dbg !1165
  br label %120, !dbg !1224

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %117, metadata !1073, metadata !DIExpression()), !dbg !1165
  br label %120, !dbg !1226

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %119, metadata !1073, metadata !DIExpression()), !dbg !1165
  br label %120, !dbg !1228

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1215
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1215
  call void @llvm.dbg.value(metadata i8 %122, metadata !1075, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %121, metadata !1073, metadata !DIExpression()), !dbg !1165
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %123, metadata !1059, metadata !DIExpression()), !dbg !1083
  %124 = load i8, i8* %123, align 1, !dbg !1212, !tbaa !846
  br label %104, !dbg !1230, !llvm.loop !1231

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1165
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1184
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i1 [ true, %102 ], [ true, %100 ], [ true, %98 ], [ false, %97 ], [ false, %97 ], [ true, %104 ], !dbg !1234
  %130 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1234
  %131 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %131, metadata !1075, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %130, metadata !1074, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %128, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %127, metadata !1067, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %126, metadata !1059, metadata !DIExpression()), !dbg !1083
  %132 = add i64 %76, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %132, metadata !1058, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !1076, metadata !DIExpression()), !dbg !1165
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1236
  store i8 %73, i8* %133, align 4, !dbg !1237, !tbaa !1118
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1238
  store i8 %131, i8* %134, align 1, !dbg !1239, !tbaa !1122
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1240
  store i32 %127, i32* %135, align 4, !dbg !1241, !tbaa !1125
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1242
  store i32 %128, i32* %136, align 4, !dbg !1243, !tbaa !1128
  %137 = icmp eq i32 %127, 0, !dbg !1244
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !1244
  %139 = and i32 %138, %128, !dbg !1244
  %140 = select i1 %129, i32 %139, i32 %130, !dbg !1244
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1245
  store i32 %140, i32* %141, align 4, !dbg !1246, !tbaa !1131
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %76, metadata !1058, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %75, metadata !1067, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %86, metadata !1059, metadata !DIExpression()), !dbg !1083
  %142 = load i8, i8* %126, align 1, !dbg !1247, !tbaa !846
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !1248

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !1165

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %132, metadata !1058, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %126, metadata !1059, metadata !DIExpression()), !dbg !1083
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %145, metadata !1059, metadata !DIExpression()), !dbg !1083
  br label %56, !dbg !1250, !llvm.loop !1251

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %132, i32 1, !dbg !1254
  store i8 0, i8* %147, align 1, !dbg !1257, !tbaa !1122
  br label %149, !dbg !1258

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !1082), !dbg !1259
  tail call void @free(i8* %54) #25, !dbg !1260
  br label %149, !dbg !1261

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !1262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture readonly %0) local_unnamed_addr #8 !dbg !1263 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1265, metadata !DIExpression()), !dbg !1301
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1302
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #25, !dbg !1302
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1266, metadata !DIExpression()), !dbg !1303
  %4 = call i32 @stat(i8* %0, %struct.stat* nonnull %2) #25, !dbg !1304
  %5 = icmp eq i32 %4, 0, !dbg !1306
  br i1 %5, label %6, label %19, !dbg !1307

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1308
  %8 = load i32, i32* %7, align 8, !dbg !1308, !tbaa !1309
  call void @llvm.dbg.value(metadata i32 %8, metadata !1107, metadata !DIExpression()) #25, !dbg !1312
  call void @llvm.dbg.value(metadata i32 4095, metadata !1112, metadata !DIExpression()) #25, !dbg !1312
  %9 = tail call noalias i8* @xmalloc(i64 32) #25, !dbg !1314
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1113, metadata !DIExpression()) #25, !dbg !1312
  store i8 61, i8* %9, align 4, !dbg !1315, !tbaa !1118
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1316
  store i8 1, i8* %11, align 1, !dbg !1317, !tbaa !1122
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1318
  %13 = bitcast i8* %12 to i32*, !dbg !1318
  store i32 4095, i32* %13, align 4, !dbg !1319, !tbaa !1125
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1320
  %15 = bitcast i8* %14 to i32*, !dbg !1320
  store i32 %8, i32* %15, align 4, !dbg !1321, !tbaa !1128
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1322
  %17 = bitcast i8* %16 to i32*, !dbg !1322
  store i32 4095, i32* %17, align 4, !dbg !1323, !tbaa !1131
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1324
  store i8 0, i8* %18, align 1, !dbg !1325, !tbaa !1122
  br label %19, !dbg !1326

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1301
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #25, !dbg !1327
  ret %struct.mode_change* %20, !dbg !1327
}

; Function Attrs: nofree nounwind
declare !dbg !1328 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #13 !dbg !1332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1339, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i1 %1, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %2, metadata !1341, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1342, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32* %4, metadata !1343, metadata !DIExpression()), !dbg !1355
  %6 = and i32 %0, 4095, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %6, metadata !1344, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 0, metadata !1345, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1342, metadata !DIExpression()), !dbg !1355
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1357
  %8 = load i8, i8* %7, align 1, !dbg !1357, !tbaa !1122
  %9 = icmp eq i8 %8, 0, !dbg !1358
  br i1 %9, label %81, label %10, !dbg !1359

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1359

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1342, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %17, metadata !1344, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %18, metadata !1345, metadata !DIExpression()), !dbg !1355
  %19 = sext i8 %15 to i32, !dbg !1360
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1361
  %21 = load i32, i32* %20, align 4, !dbg !1361, !tbaa !1125
  call void @llvm.dbg.value(metadata i32 %21, metadata !1346, metadata !DIExpression()), !dbg !1362
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1363
  %23 = load i32, i32* %22, align 4, !dbg !1363, !tbaa !1131
  %24 = xor i32 %23, -1, !dbg !1364
  %25 = and i32 %11, %24, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %25, metadata !1350, metadata !DIExpression()), !dbg !1362
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1366
  %27 = load i32, i32* %26, align 4, !dbg !1366, !tbaa !1128
  call void @llvm.dbg.value(metadata i32 %27, metadata !1351, metadata !DIExpression()), !dbg !1362
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1367

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %29, metadata !1351, metadata !DIExpression()), !dbg !1362
  %30 = and i32 %29, 292, !dbg !1370
  %31 = icmp eq i32 %30, 0, !dbg !1371
  %32 = select i1 %31, i32 0, i32 292, !dbg !1371
  %33 = and i32 %29, 146, !dbg !1372
  %34 = icmp eq i32 %33, 0, !dbg !1373
  %35 = select i1 %34, i32 0, i32 146, !dbg !1373
  %36 = and i32 %29, 73, !dbg !1374
  %37 = icmp eq i32 %36, 0, !dbg !1375
  %38 = select i1 %37, i32 0, i32 73, !dbg !1375
  %39 = or i32 %35, %29, !dbg !1376
  %40 = or i32 %39, %32, !dbg !1377
  %41 = or i32 %40, %38, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %41, metadata !1351, metadata !DIExpression()), !dbg !1362
  br label %48, !dbg !1379

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1380
  %44 = or i32 %43, %12, !dbg !1382
  %45 = icmp eq i32 %44, 0, !dbg !1382
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1383
  br label %48, !dbg !1383

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1362
  call void @llvm.dbg.value(metadata i32 %49, metadata !1351, metadata !DIExpression()), !dbg !1362
  %50 = icmp eq i32 %21, 0, !dbg !1384
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !1384
  %52 = xor i32 %25, -1, !dbg !1385
  %53 = and i32 %51, %52, !dbg !1386
  %54 = and i32 %53, %49, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %54, metadata !1351, metadata !DIExpression()), !dbg !1362
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1388
  %56 = load i8, i8* %55, align 4, !dbg !1388, !tbaa !1118
  %57 = sext i8 %56 to i32, !dbg !1389
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1390

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1391
  %60 = select i1 %50, i32 0, i32 %59, !dbg !1391
  %61 = or i32 %60, %25, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %61, metadata !1352, metadata !DIExpression()), !dbg !1393
  %62 = and i32 %61, 4095, !dbg !1394
  %63 = xor i32 %62, 4095, !dbg !1394
  %64 = or i32 %63, %18, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %64, metadata !1345, metadata !DIExpression()), !dbg !1355
  %65 = and i32 %61, %17, !dbg !1396
  %66 = or i32 %54, %65, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %66, metadata !1344, metadata !DIExpression()), !dbg !1355
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %68, metadata !1345, metadata !DIExpression()), !dbg !1355
  %69 = or i32 %54, %17, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %69, metadata !1344, metadata !DIExpression()), !dbg !1355
  br label %74, !dbg !1400

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %71, metadata !1345, metadata !DIExpression()), !dbg !1355
  %72 = xor i32 %54, -1, !dbg !1402
  %73 = and i32 %17, %72, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %73, metadata !1344, metadata !DIExpression()), !dbg !1355
  br label %74, !dbg !1404

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1355
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1355
  call void @llvm.dbg.value(metadata i32 %76, metadata !1344, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %75, metadata !1345, metadata !DIExpression()), !dbg !1355
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1342, metadata !DIExpression()), !dbg !1355
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1357
  %79 = load i8, i8* %78, align 1, !dbg !1357, !tbaa !1122
  %80 = icmp eq i8 %79, 0, !dbg !1358
  br i1 %80, label %81, label %14, !dbg !1359, !llvm.loop !1406

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1408
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1409
  %84 = icmp eq i32* %4, null, !dbg !1410
  br i1 %84, label %86, label %85, !dbg !1412

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1413, !tbaa !838
  br label %86, !dbg !1414

86:                                               ; preds = %85, %81
  ret i32 %83, !dbg !1415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  %2 = icmp eq i8* %0, null, !dbg !1422
  br i1 %2, label %3, label %6, !dbg !1424

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1425, !tbaa !621
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1427
  tail call void @abort() #27, !dbg !1428
  unreachable, !dbg !1428

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %7, metadata !1419, metadata !DIExpression()), !dbg !1421
  %8 = icmp eq i8* %7, null, !dbg !1430
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1431
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %10, metadata !1420, metadata !DIExpression()), !dbg !1421
  %11 = ptrtoint i8* %10 to i64, !dbg !1432
  %12 = ptrtoint i8* %0 to i64, !dbg !1432
  %13 = sub i64 %11, %12, !dbg !1432
  %14 = icmp sgt i64 %13, 6, !dbg !1434
  br i1 %14, label %15, label %24, !dbg !1435

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1436
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #26, !dbg !1437
  %18 = icmp eq i32 %17, 0, !dbg !1438
  br i1 %18, label %19, label %24, !dbg !1439

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1418, metadata !DIExpression()), !dbg !1421
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #26, !dbg !1440
  %21 = icmp eq i32 %20, 0, !dbg !1443
  br i1 %21, label %22, label %24, !dbg !1444

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %23, metadata !1418, metadata !DIExpression()), !dbg !1421
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1447, !tbaa !621
  br label %24, !dbg !1448

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1418, metadata !DIExpression()), !dbg !1421
  store i8* %25, i8** @program_name, align 8, !dbg !1449, !tbaa !621
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1450, !tbaa !621
  ret void, !dbg !1451
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1452 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1457, metadata !DIExpression()), !dbg !1460
  %2 = tail call i32* @__errno_location() #29, !dbg !1461
  %3 = load i32, i32* %2, align 4, !dbg !1461, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %3, metadata !1458, metadata !DIExpression()), !dbg !1460
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1462
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1462
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1462
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1463
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i32 %3, i32* %2, align 4, !dbg !1464, !tbaa !838
  ret %struct.quoting_options* %8, !dbg !1465
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1466 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1472, metadata !DIExpression()), !dbg !1473
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1474
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1474
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1475
  %5 = load i32, i32* %4, align 8, !dbg !1475, !tbaa !1476
  ret i32 %5, !dbg !1478
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1479 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1483, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i32 %1, metadata !1484, metadata !DIExpression()), !dbg !1485
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1486
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1486
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1487
  store i32 %1, i32* %5, align 8, !dbg !1488, !tbaa !1476
  ret void, !dbg !1489
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1490 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1494, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 %1, metadata !1495, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %2, metadata !1496, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !1503
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1504
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1504
  %6 = lshr i8 %1, 5, !dbg !1505
  %7 = zext i8 %6 to i64, !dbg !1505
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1506
  call void @llvm.dbg.value(metadata i32* %8, metadata !1499, metadata !DIExpression()), !dbg !1503
  %9 = and i8 %1, 31, !dbg !1507
  %10 = zext i8 %9 to i32, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %10, metadata !1501, metadata !DIExpression()), !dbg !1503
  %11 = load i32, i32* %8, align 4, !dbg !1508, !tbaa !838
  %12 = lshr i32 %11, %10, !dbg !1509
  %13 = and i32 %12, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %13, metadata !1502, metadata !DIExpression()), !dbg !1503
  %14 = and i32 %2, 1, !dbg !1511
  %15 = xor i32 %13, %14, !dbg !1512
  %16 = shl i32 %15, %10, !dbg !1513
  %17 = xor i32 %16, %11, !dbg !1514
  store i32 %17, i32* %8, align 4, !dbg !1514, !tbaa !838
  ret i32 %13, !dbg !1515
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1516 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1520, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1523
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1524
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1520, metadata !DIExpression()), !dbg !1523
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1527
  %6 = load i32, i32* %5, align 4, !dbg !1527, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 %6, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i32 %1, i32* %5, align 4, !dbg !1529, !tbaa !1528
  ret i32 %6, !dbg !1530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1531 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1535, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %1, metadata !1536, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %2, metadata !1537, metadata !DIExpression()), !dbg !1538
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1539
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1541
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1535, metadata !DIExpression()), !dbg !1538
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1542
  store i32 10, i32* %6, align 8, !dbg !1543, !tbaa !1476
  %7 = icmp ne i8* %1, null, !dbg !1544
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1546
  br i1 %9, label %11, label %10, !dbg !1546

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1547
  unreachable, !dbg !1547

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1548
  store i8* %1, i8** %12, align 8, !dbg !1549, !tbaa !1550
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1551
  store i8* %2, i8** %13, align 8, !dbg !1552, !tbaa !1553
  ret void, !dbg !1554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1559, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i64 %1, metadata !1560, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %2, metadata !1561, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i64 %3, metadata !1562, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1563, metadata !DIExpression()), !dbg !1567
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1568
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1568
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1564, metadata !DIExpression()), !dbg !1567
  %8 = tail call i32* @__errno_location() #29, !dbg !1569
  %9 = load i32, i32* %8, align 4, !dbg !1569, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %9, metadata !1565, metadata !DIExpression()), !dbg !1567
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1570
  %11 = load i32, i32* %10, align 8, !dbg !1570, !tbaa !1476
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1571
  %13 = load i32, i32* %12, align 4, !dbg !1571, !tbaa !1528
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1572
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1573
  %16 = load i8*, i8** %15, align 8, !dbg !1573, !tbaa !1550
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1574
  %18 = load i8*, i8** %17, align 8, !dbg !1574, !tbaa !1553
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %19, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i32 %9, i32* %8, align 4, !dbg !1576, !tbaa !838
  ret i64 %19, !dbg !1577
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1578 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1584, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %1, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %2, metadata !1586, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %3, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %4, metadata !1588, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %5, metadata !1589, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32* %6, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %7, metadata !1591, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %8, metadata !1592, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* null, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1654
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1655
  %14 = icmp eq i64 %13, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i1 %14, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1654
  %15 = lshr i32 %5, 1, !dbg !1657
  %16 = trunc i32 %15 to i8, !dbg !1657
  %17 = and i8 %16, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i8 %17, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1654
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1658

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1659
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1660
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1661
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1662
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1654
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1663
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1664
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1665
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %38, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %37, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %36, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %35, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %34, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %33, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %32, metadata !1597, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %31, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %30, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %29, metadata !1592, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %28, metadata !1591, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %27, metadata !1588, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1648), !dbg !1666
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
  ], !dbg !1667

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1588, metadata !DIExpression()), !dbg !1654
  br label %92, !dbg !1668

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1588, metadata !DIExpression()), !dbg !1654
  %42 = and i8 %35, 1, !dbg !1670
  %43 = icmp eq i8 %42, 0, !dbg !1670
  br i1 %43, label %44, label %92, !dbg !1668

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1672
  br i1 %45, label %92, label %46, !dbg !1675

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1672, !tbaa !846
  br label %92, !dbg !1672

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %48, metadata !1591, metadata !DIExpression()), !dbg !1654
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %49, metadata !1592, metadata !DIExpression()), !dbg !1654
  br label %50, !dbg !1681

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1592, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %51, metadata !1591, metadata !DIExpression()), !dbg !1654
  %53 = and i8 %35, 1, !dbg !1682
  %54 = icmp eq i8 %53, 0, !dbg !1682
  br i1 %54, label %55, label %70, !dbg !1684

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1654
  %56 = load i8, i8* %51, align 1, !dbg !1685, !tbaa !846
  %57 = icmp eq i8 %56, 0, !dbg !1688
  br i1 %57, label %70, label %58, !dbg !1688

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %61, metadata !1594, metadata !DIExpression()), !dbg !1654
  %62 = icmp ult i64 %61, %39, !dbg !1689
  br i1 %62, label %63, label %65, !dbg !1692

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1689
  store i8 %59, i8* %64, align 1, !dbg !1689, !tbaa !846
  br label %65, !dbg !1689

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %66, metadata !1594, metadata !DIExpression()), !dbg !1654
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %67, metadata !1596, metadata !DIExpression()), !dbg !1654
  %68 = load i8, i8* %67, align 1, !dbg !1685, !tbaa !846
  %69 = icmp eq i8 %68, 0, !dbg !1688
  br i1 %69, label %70, label %58, !dbg !1688, !llvm.loop !1694

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1696
  call void @llvm.dbg.value(metadata i64 %71, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %52, metadata !1596, metadata !DIExpression()), !dbg !1654
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %72, metadata !1597, metadata !DIExpression()), !dbg !1654
  br label %92, !dbg !1698

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1654
  br label %74, !dbg !1699

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %75, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1654
  br label %76, !dbg !1700

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1662
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %78, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %77, metadata !1598, metadata !DIExpression()), !dbg !1654
  %79 = and i8 %78, 1, !dbg !1701
  %80 = icmp eq i8 %79, 0, !dbg !1701
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1703
  br label %82, !dbg !1703

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1654
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8 %84, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %83, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1654
  %85 = and i8 %84, 1, !dbg !1704
  %86 = icmp eq i8 %85, 0, !dbg !1704
  br i1 %86, label %87, label %92, !dbg !1706

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1707
  br i1 %88, label %92, label %89, !dbg !1710

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1707, !tbaa !846
  br label %92, !dbg !1707

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1654
  br label %92, !dbg !1711

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1712
  unreachable, !dbg !1712

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1696
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !1654
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1654
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1654
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %100, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %99, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %98, metadata !1597, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %97, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %96, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %95, metadata !1592, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %94, metadata !1591, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %93, metadata !1588, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1654
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
  br label %121, !dbg !1713

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1714
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1696
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1659
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1663
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1664
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1665
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %125, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %122, metadata !1593, metadata !DIExpression()), !dbg !1654
  %130 = icmp eq i64 %125, -1, !dbg !1715
  br i1 %130, label %131, label %135, !dbg !1716

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1717
  %133 = load i8, i8* %132, align 1, !dbg !1717, !tbaa !846
  %134 = icmp eq i8 %133, 0, !dbg !1718
  br i1 %134, label %587, label %137, !dbg !1719

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1720
  br i1 %136, label %587, label %137, !dbg !1719

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1721
  br i1 %106, label %138, label %153, !dbg !1722

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1724
  %140 = and i1 %107, %130, !dbg !1725
  br i1 %140, label %141, label %143, !dbg !1725

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %142, metadata !1587, metadata !DIExpression()), !dbg !1654
  br label %143, !dbg !1727

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1727
  call void @llvm.dbg.value(metadata i64 %144, metadata !1587, metadata !DIExpression()), !dbg !1654
  %145 = icmp ugt i64 %139, %144, !dbg !1728
  br i1 %145, label %153, label %146, !dbg !1729

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1730
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1731
  %149 = icmp ne i32 %148, 0, !dbg !1732
  %150 = or i1 %149, %109, !dbg !1733
  %151 = xor i1 %149, true, !dbg !1733
  %152 = zext i1 %151 to i8, !dbg !1733
  br i1 %150, label %153, label %646, !dbg !1733

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1721
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1721
  call void @llvm.dbg.value(metadata i8 %156, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %154, metadata !1587, metadata !DIExpression()), !dbg !1654
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1734
  %158 = load i8, i8* %157, align 1, !dbg !1734, !tbaa !846
  call void @llvm.dbg.value(metadata i8 %158, metadata !1604, metadata !DIExpression()), !dbg !1721
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
  ], !dbg !1735

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1736

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1737

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1721
  %162 = and i8 %126, 1, !dbg !1741
  %163 = icmp eq i8 %162, 0, !dbg !1741
  %164 = and i1 %110, %163, !dbg !1741
  br i1 %164, label %165, label %181, !dbg !1741

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1743
  br i1 %166, label %167, label %169, !dbg !1747

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1743
  store i8 39, i8* %168, align 1, !dbg !1743, !tbaa !846
  br label %169, !dbg !1743

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %170, metadata !1594, metadata !DIExpression()), !dbg !1654
  %171 = icmp ult i64 %170, %129, !dbg !1748
  br i1 %171, label %172, label %174, !dbg !1751

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1748
  store i8 36, i8* %173, align 1, !dbg !1748, !tbaa !846
  br label %174, !dbg !1748

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %175, metadata !1594, metadata !DIExpression()), !dbg !1654
  %176 = icmp ult i64 %175, %129, !dbg !1752
  br i1 %176, label %177, label %179, !dbg !1755

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1752
  store i8 39, i8* %178, align 1, !dbg !1752, !tbaa !846
  br label %179, !dbg !1752

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %180, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %181, !dbg !1756

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1654
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %183, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %182, metadata !1594, metadata !DIExpression()), !dbg !1654
  %184 = icmp ult i64 %182, %129, !dbg !1757
  br i1 %184, label %185, label %187, !dbg !1760

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1757
  store i8 92, i8* %186, align 1, !dbg !1757, !tbaa !846
  br label %187, !dbg !1757

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %188, metadata !1594, metadata !DIExpression()), !dbg !1654
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1761
  br i1 %191, label %192, label %473, !dbg !1761

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1763
  %194 = load i8, i8* %193, align 1, !dbg !1763, !tbaa !846
  %195 = add i8 %194, -48, !dbg !1764
  %196 = icmp ult i8 %195, 10, !dbg !1764
  br i1 %196, label %197, label %473, !dbg !1764

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1765
  br i1 %198, label %199, label %201, !dbg !1769

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1765
  store i8 48, i8* %200, align 1, !dbg !1765, !tbaa !846
  br label %201, !dbg !1765

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %202, metadata !1594, metadata !DIExpression()), !dbg !1654
  %203 = icmp ult i64 %202, %129, !dbg !1770
  br i1 %203, label %204, label %206, !dbg !1773

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1770
  store i8 48, i8* %205, align 1, !dbg !1770, !tbaa !846
  br label %206, !dbg !1770

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %207, metadata !1594, metadata !DIExpression()), !dbg !1654
  br label %473, !dbg !1774

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1775

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1776

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1777

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1779
  br i1 %214, label %215, label %473, !dbg !1779

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1781
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1782
  %218 = load i8, i8* %217, align 1, !dbg !1782, !tbaa !846
  %219 = icmp eq i8 %218, 63, !dbg !1783
  br i1 %219, label %220, label %473, !dbg !1784

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1785
  %222 = load i8, i8* %221, align 1, !dbg !1785, !tbaa !846
  %223 = sext i8 %222 to i32, !dbg !1785
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
  ], !dbg !1786

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1787

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 undef, metadata !1593, metadata !DIExpression()), !dbg !1654
  %226 = icmp ult i64 %123, %129, !dbg !1789
  br i1 %226, label %227, label %229, !dbg !1792

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1789
  store i8 63, i8* %228, align 1, !dbg !1789, !tbaa !846
  br label %229, !dbg !1789

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %230, metadata !1594, metadata !DIExpression()), !dbg !1654
  %231 = icmp ult i64 %230, %129, !dbg !1793
  br i1 %231, label %232, label %234, !dbg !1796

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1793
  store i8 34, i8* %233, align 1, !dbg !1793, !tbaa !846
  br label %234, !dbg !1793

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %235, metadata !1594, metadata !DIExpression()), !dbg !1654
  %236 = icmp ult i64 %235, %129, !dbg !1797
  br i1 %236, label %237, label %239, !dbg !1800

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1797
  store i8 34, i8* %238, align 1, !dbg !1797, !tbaa !846
  br label %239, !dbg !1797

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %240, metadata !1594, metadata !DIExpression()), !dbg !1654
  %241 = icmp ult i64 %240, %129, !dbg !1801
  br i1 %241, label %242, label %244, !dbg !1804

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1801
  store i8 63, i8* %243, align 1, !dbg !1801, !tbaa !846
  br label %244, !dbg !1801

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %245, metadata !1594, metadata !DIExpression()), !dbg !1654
  br label %473, !dbg !1805

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1608, metadata !DIExpression()), !dbg !1721
  br label %256, !dbg !1806

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1608, metadata !DIExpression()), !dbg !1721
  br label %256, !dbg !1807

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1608, metadata !DIExpression()), !dbg !1721
  br label %254, !dbg !1808

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1608, metadata !DIExpression()), !dbg !1721
  br label %254, !dbg !1809

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1608, metadata !DIExpression()), !dbg !1721
  br label %256, !dbg !1810

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1608, metadata !DIExpression()), !dbg !1721
  br i1 %110, label %252, label %253, !dbg !1811

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1812

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1815

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1817
  call void @llvm.dbg.value(metadata i8 %255, metadata !1608, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.label(metadata !1649), !dbg !1818
  br i1 %111, label %256, label %631, !dbg !1819

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1817
  call void @llvm.dbg.value(metadata i8 %257, metadata !1608, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.label(metadata !1650), !dbg !1821
  br i1 %102, label %495, label %473, !dbg !1822

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1823

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1824, !tbaa !846
  %261 = icmp eq i8 %260, 0, !dbg !1826
  br i1 %261, label %262, label %473, !dbg !1827

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1828
  br i1 %263, label %264, label %473, !dbg !1830

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1721
  br label %265, !dbg !1831

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1721
  call void @llvm.dbg.value(metadata i8 %266, metadata !1611, metadata !DIExpression()), !dbg !1721
  br i1 %111, label %473, label %631, !dbg !1832

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1721
  br i1 %110, label %268, label %473, !dbg !1834

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1835

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1838
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1840
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1840
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %274, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %273, metadata !1595, metadata !DIExpression()), !dbg !1654
  %275 = icmp ult i64 %123, %274, !dbg !1841
  br i1 %275, label %276, label %278, !dbg !1844

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1841
  store i8 39, i8* %277, align 1, !dbg !1841, !tbaa !846
  br label %278, !dbg !1841

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %279, metadata !1594, metadata !DIExpression()), !dbg !1654
  %280 = icmp ult i64 %279, %274, !dbg !1845
  br i1 %280, label %281, label %283, !dbg !1848

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1845
  store i8 92, i8* %282, align 1, !dbg !1845, !tbaa !846
  br label %283, !dbg !1845

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %284, metadata !1594, metadata !DIExpression()), !dbg !1654
  %285 = icmp ult i64 %284, %274, !dbg !1849
  br i1 %285, label %286, label %288, !dbg !1852

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1849
  store i8 39, i8* %287, align 1, !dbg !1849, !tbaa !846
  br label %288, !dbg !1849

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %289, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %473, !dbg !1853

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1854

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1612, metadata !DIExpression()), !dbg !1855
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1856
  %293 = load i16*, i16** %292, align 8, !dbg !1856, !tbaa !621
  %294 = zext i8 %158 to i64, !dbg !1856
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1856
  %296 = load i16, i16* %295, align 2, !dbg !1856, !tbaa !1858
  %297 = lshr i16 %296, 14, !dbg !1860
  %298 = trunc i16 %297 to i8, !dbg !1860
  %299 = and i8 %298, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i8 %354, metadata !1615, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %355, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %306, metadata !1587, metadata !DIExpression()), !dbg !1654
  %300 = icmp eq i8 %299, 0, !dbg !1861
  call void @llvm.dbg.value(metadata i1 %357, metadata !1611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1721
  br label %359, !dbg !1862

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1616, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %23, metadata !1865, metadata !DIExpression()) #25, !dbg !1873
  call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()) #25, !dbg !1873
  call void @llvm.dbg.value(metadata i64 8, metadata !1872, metadata !DIExpression()) #25, !dbg !1873
  store i64 0, i64* %10, align 8, !dbg !1875
  call void @llvm.dbg.value(metadata i64 0, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1855
  %302 = icmp eq i64 %154, -1, !dbg !1876
  br i1 %302, label %303, label %305, !dbg !1878

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %304, metadata !1587, metadata !DIExpression()), !dbg !1654
  br label %305, !dbg !1880

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %306, metadata !1587, metadata !DIExpression()), !dbg !1654
  br label %307, !dbg !1881

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1882
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %309, metadata !1615, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %308, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1884
  %310 = add i64 %308, %122, !dbg !1885
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1886
  %312 = sub i64 %306, %310, !dbg !1887
  call void @llvm.dbg.value(metadata i32* %12, metadata !1634, metadata !DIExpression(DW_OP_deref)), !dbg !1888
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %313, metadata !1637, metadata !DIExpression()), !dbg !1888
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1890

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1612, metadata !DIExpression()), !dbg !1855
  %315 = icmp ugt i64 %306, %310, !dbg !1891
  br i1 %315, label %316, label %341, !dbg !1893

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1894
  br label %318, !dbg !1894

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1612, metadata !DIExpression()), !dbg !1855
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1895
  %322 = load i8, i8* %321, align 1, !dbg !1895, !tbaa !846
  %323 = icmp eq i8 %322, 0, !dbg !1893
  br i1 %323, label %341, label %324, !dbg !1894

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %325, metadata !1612, metadata !DIExpression()), !dbg !1855
  %326 = add i64 %325, %122, !dbg !1897
  %327 = icmp ult i64 %326, %306, !dbg !1891
  br i1 %327, label %318, label %341, !dbg !1893, !llvm.loop !1898

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1899
  call void @llvm.dbg.value(metadata i64 1, metadata !1638, metadata !DIExpression()), !dbg !1900
  br i1 %330, label %331, label %344, !dbg !1899

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1638, metadata !DIExpression()), !dbg !1900
  %333 = add i64 %332, %310, !dbg !1901
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1904
  %335 = load i8, i8* %334, align 1, !dbg !1904, !tbaa !846
  %336 = sext i8 %335 to i32, !dbg !1904
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1905

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %338, metadata !1638, metadata !DIExpression()), !dbg !1900
  %339 = icmp eq i64 %338, %313, !dbg !1907
  br i1 %339, label %344, label %331, !dbg !1908, !llvm.loop !1909

340:                                              ; preds = %307
  br label %341, !dbg !1911

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1615, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 undef, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1911
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1912, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %345, metadata !1634, metadata !DIExpression()), !dbg !1888
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1914
  %347 = icmp eq i32 %346, 0, !dbg !1914
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1915
  call void @llvm.dbg.value(metadata i8 %348, metadata !1615, metadata !DIExpression()), !dbg !1855
  %349 = add i64 %313, %308, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %349, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1911
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1917
  %351 = icmp eq i32 %350, 0, !dbg !1918
  br i1 %351, label %307, label %353, !dbg !1919, !llvm.loop !1920

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1615, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 undef, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1911
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1922
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %354, metadata !1615, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %355, metadata !1612, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %306, metadata !1587, metadata !DIExpression()), !dbg !1654
  %356 = and i8 %354, 1, !dbg !1861
  %357 = icmp eq i8 %356, 0, !dbg !1861
  call void @llvm.dbg.value(metadata i1 %357, metadata !1611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1721
  %358 = icmp ugt i64 %355, 1, !dbg !1923
  br i1 %358, label %367, label %359, !dbg !1862

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1924
  br i1 %364, label %367, label %365, !dbg !1924

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i8 %472, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %441, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %440, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %439, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %438, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %371, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %437, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %375, metadata !1593, metadata !DIExpression()), !dbg !1654
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %372, metadata !1645, metadata !DIExpression()), !dbg !1926
  %373 = and i1 %102, %368
  br label %374, !dbg !1927

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1714
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1654
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1663
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1721
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1721
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1928
  call void @llvm.dbg.value(metadata i8 %380, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %379, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %378, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %377, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %376, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %375, metadata !1593, metadata !DIExpression()), !dbg !1654
  br i1 %373, label %381, label %427, !dbg !1929

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1934

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1721
  %383 = and i8 %377, 1, !dbg !1937
  %384 = icmp eq i8 %383, 0, !dbg !1937
  %385 = and i1 %110, %384, !dbg !1937
  br i1 %385, label %386, label %402, !dbg !1937

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1939
  br i1 %387, label %388, label %390, !dbg !1943

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1939
  store i8 39, i8* %389, align 1, !dbg !1939, !tbaa !846
  br label %390, !dbg !1939

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %391, metadata !1594, metadata !DIExpression()), !dbg !1654
  %392 = icmp ult i64 %391, %129, !dbg !1944
  br i1 %392, label %393, label %395, !dbg !1947

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1944
  store i8 36, i8* %394, align 1, !dbg !1944, !tbaa !846
  br label %395, !dbg !1944

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %396, metadata !1594, metadata !DIExpression()), !dbg !1654
  %397 = icmp ult i64 %396, %129, !dbg !1948
  br i1 %397, label %398, label %400, !dbg !1951

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1948
  store i8 39, i8* %399, align 1, !dbg !1948, !tbaa !846
  br label %400, !dbg !1948

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %401, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %402, !dbg !1952

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1654
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %404, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %403, metadata !1594, metadata !DIExpression()), !dbg !1654
  %405 = icmp ult i64 %403, %129, !dbg !1953
  br i1 %405, label %406, label %408, !dbg !1956

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1953
  store i8 92, i8* %407, align 1, !dbg !1953, !tbaa !846
  br label %408, !dbg !1953

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %409, metadata !1594, metadata !DIExpression()), !dbg !1654
  %410 = icmp ult i64 %409, %129, !dbg !1957
  br i1 %410, label %411, label %415, !dbg !1960

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1957
  %413 = or i8 %412, 48, !dbg !1957
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1957
  store i8 %413, i8* %414, align 1, !dbg !1957, !tbaa !846
  br label %415, !dbg !1957

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %416, metadata !1594, metadata !DIExpression()), !dbg !1654
  %417 = icmp ult i64 %416, %129, !dbg !1961
  br i1 %417, label %418, label %423, !dbg !1964

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1961
  %420 = and i8 %419, 7, !dbg !1961
  %421 = or i8 %420, 48, !dbg !1961
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1961
  store i8 %421, i8* %422, align 1, !dbg !1961, !tbaa !846
  br label %423, !dbg !1961

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %424, metadata !1594, metadata !DIExpression()), !dbg !1654
  %425 = and i8 %378, 7, !dbg !1965
  %426 = or i8 %425, 48, !dbg !1966
  call void @llvm.dbg.value(metadata i8 %426, metadata !1604, metadata !DIExpression()), !dbg !1721
  br label %436, !dbg !1967

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1968
  %429 = icmp eq i8 %428, 0, !dbg !1968
  br i1 %429, label %436, label %430, !dbg !1970

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1971
  br i1 %431, label %432, label %434, !dbg !1975

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1971
  store i8 92, i8* %433, align 1, !dbg !1971, !tbaa !846
  br label %434, !dbg !1971

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %435, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1721
  br label %436, !dbg !1976

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1654
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1663
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1721
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1721
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1721
  call void @llvm.dbg.value(metadata i8 %441, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %440, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %439, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %438, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %437, metadata !1594, metadata !DIExpression()), !dbg !1654
  %442 = add i64 %375, 1, !dbg !1977
  %443 = icmp ugt i64 %372, %442, !dbg !1979
  br i1 %443, label %444, label %471, !dbg !1980

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1981
  %446 = icmp ne i8 %445, 0, !dbg !1981
  %447 = and i8 %441, 1, !dbg !1981
  %448 = icmp eq i8 %447, 0, !dbg !1981
  %449 = and i1 %446, %448, !dbg !1981
  br i1 %449, label %450, label %461, !dbg !1981

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1984
  br i1 %451, label %452, label %454, !dbg !1988

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1984
  store i8 39, i8* %453, align 1, !dbg !1984, !tbaa !846
  br label %454, !dbg !1984

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %455, metadata !1594, metadata !DIExpression()), !dbg !1654
  %456 = icmp ult i64 %455, %129, !dbg !1989
  br i1 %456, label %457, label %459, !dbg !1992

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1989
  store i8 39, i8* %458, align 1, !dbg !1989, !tbaa !846
  br label %459, !dbg !1989

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %460, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %461, !dbg !1993

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1994
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %463, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %462, metadata !1594, metadata !DIExpression()), !dbg !1654
  %464 = icmp ult i64 %462, %129, !dbg !1995
  br i1 %464, label %465, label %467, !dbg !1998

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1995
  store i8 %439, i8* %466, align 1, !dbg !1995, !tbaa !846
  br label %467, !dbg !1995

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %468, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %442, metadata !1593, metadata !DIExpression()), !dbg !1654
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1999
  %470 = load i8, i8* %469, align 1, !dbg !1999, !tbaa !846
  call void @llvm.dbg.value(metadata i8 %470, metadata !1604, metadata !DIExpression()), !dbg !1721
  br label %374, !dbg !2000, !llvm.loop !2001

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i8 %472, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %441, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %440, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %439, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %438, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %371, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %437, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %375, metadata !1593, metadata !DIExpression()), !dbg !1654
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1714
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1654
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1659
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2004
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1654
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1654
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1721
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1721
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1721
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %482, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %481, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %156, metadata !1609, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %480, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %479, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %478, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %477, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %476, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %475, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %474, metadata !1593, metadata !DIExpression()), !dbg !1654
  br i1 %116, label %494, label %484, !dbg !2005

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2007
  %486 = zext i8 %485 to i64, !dbg !2007
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2008
  %488 = load i32, i32* %487, align 4, !dbg !2008, !tbaa !838
  %489 = and i8 %480, 31, !dbg !2009
  %490 = zext i8 %489 to i32, !dbg !2009
  %491 = shl nuw i32 1, %490, !dbg !2010
  %492 = and i32 %488, %491, !dbg !2010
  %493 = icmp eq i32 %492, 0, !dbg !2010
  br i1 %493, label %494, label %495, !dbg !2011

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2012

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2013
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1654
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1659
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2004
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1663
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1664
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1721
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1721
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %503, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %502, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %501, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %500, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %499, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %498, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %497, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %496, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1651), !dbg !2014
  br i1 %109, label %505, label %635, !dbg !2015

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1721
  %506 = and i8 %500, 1, !dbg !2017
  %507 = icmp eq i8 %506, 0, !dbg !2017
  %508 = and i1 %110, %507, !dbg !2017
  br i1 %508, label %509, label %525, !dbg !2017

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2019
  br i1 %510, label %511, label %513, !dbg !2023

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2019
  store i8 39, i8* %512, align 1, !dbg !2019, !tbaa !846
  br label %513, !dbg !2019

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %514, metadata !1594, metadata !DIExpression()), !dbg !1654
  %515 = icmp ult i64 %514, %504, !dbg !2024
  br i1 %515, label %516, label %518, !dbg !2027

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2024
  store i8 36, i8* %517, align 1, !dbg !2024, !tbaa !846
  br label %518, !dbg !2024

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %519, metadata !1594, metadata !DIExpression()), !dbg !1654
  %520 = icmp ult i64 %519, %504, !dbg !2028
  br i1 %520, label %521, label %523, !dbg !2031

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2028
  store i8 39, i8* %522, align 1, !dbg !2028, !tbaa !846
  br label %523, !dbg !2028

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %524, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %525, !dbg !2032

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1721
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %527, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %526, metadata !1594, metadata !DIExpression()), !dbg !1654
  %528 = icmp ult i64 %526, %504, !dbg !2033
  br i1 %528, label %529, label %531, !dbg !2036

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2033
  store i8 92, i8* %530, align 1, !dbg !2033, !tbaa !846
  br label %531, !dbg !2033

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %543, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %542, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %541, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %540, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %539, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %538, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %537, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %536, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %535, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %534, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2037
  br label %560, !dbg !2038

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2013
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1654
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1659
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2004
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1663
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1664
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2041
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1721
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1721
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %542, metadata !1611, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %541, metadata !1610, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %540, metadata !1604, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 %539, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %538, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %537, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %536, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %535, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %534, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2037
  %544 = and i8 %538, 1, !dbg !2038
  %545 = icmp ne i8 %544, 0, !dbg !2038
  %546 = and i8 %541, 1, !dbg !2038
  %547 = icmp eq i8 %546, 0, !dbg !2038
  %548 = and i1 %545, %547, !dbg !2038
  br i1 %548, label %549, label %560, !dbg !2038

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2042
  br i1 %550, label %551, label %553, !dbg !2046

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2042
  store i8 39, i8* %552, align 1, !dbg !2042, !tbaa !846
  br label %553, !dbg !2042

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %554, metadata !1594, metadata !DIExpression()), !dbg !1654
  %555 = icmp ult i64 %554, %543, !dbg !2047
  br i1 %555, label %556, label %558, !dbg !2050

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2047
  store i8 39, i8* %557, align 1, !dbg !2047, !tbaa !846
  br label %558, !dbg !2047

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %559, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1654
  br label %560, !dbg !2051

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1721
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %569, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %568, metadata !1594, metadata !DIExpression()), !dbg !1654
  %570 = icmp ult i64 %568, %561, !dbg !2052
  br i1 %570, label %571, label %573, !dbg !2055

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2052
  store i8 %563, i8* %572, align 1, !dbg !2052, !tbaa !846
  br label %573, !dbg !2052

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %574, metadata !1594, metadata !DIExpression()), !dbg !1654
  %575 = icmp eq i8 %562, 0, !dbg !2056
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2058
  call void @llvm.dbg.value(metadata i8 %576, metadata !1603, metadata !DIExpression()), !dbg !1654
  br label %577, !dbg !2059

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2013
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1654
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1659
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2004
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1663
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1654
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1665
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %584, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %583, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %582, metadata !1601, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %581, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %580, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %579, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %578, metadata !1593, metadata !DIExpression()), !dbg !1654
  %586 = add i64 %578, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %586, metadata !1593, metadata !DIExpression()), !dbg !1654
  br label %121, !dbg !2061, !llvm.loop !2062

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2064
  %590 = and i1 %110, %589, !dbg !2066
  %591 = xor i1 %590, true, !dbg !2066
  %592 = or i1 %109, %591, !dbg !2066
  br i1 %592, label %593, label %635, !dbg !2066

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2067
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2067
  br i1 %597, label %598, label %607, !dbg !2067

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2069
  %600 = icmp eq i8 %599, 0, !dbg !2069
  br i1 %600, label %603, label %601, !dbg !2072

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2073
  br label %652, !dbg !2074

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2075
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2077
  br i1 %606, label %26, label %607, !dbg !2077

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2078
  %610 = and i1 %609, %608, !dbg !2080
  br i1 %610, label %611, label %626, !dbg !2080

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1654
  %612 = load i8, i8* %97, align 1, !dbg !2081, !tbaa !846
  %613 = icmp eq i8 %612, 0, !dbg !2084
  br i1 %613, label %626, label %614, !dbg !2084

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %617, metadata !1594, metadata !DIExpression()), !dbg !1654
  %618 = icmp ult i64 %617, %129, !dbg !2085
  br i1 %618, label %619, label %621, !dbg !2088

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2085
  store i8 %615, i8* %620, align 1, !dbg !2085, !tbaa !846
  br label %621, !dbg !2085

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %622, metadata !1594, metadata !DIExpression()), !dbg !1654
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %623, metadata !1596, metadata !DIExpression()), !dbg !1654
  %624 = load i8, i8* %623, align 1, !dbg !2081, !tbaa !846
  %625 = icmp eq i8 %624, 0, !dbg !2084
  br i1 %625, label %626, label %614, !dbg !2084, !llvm.loop !2090

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1696
  call void @llvm.dbg.value(metadata i64 %627, metadata !1594, metadata !DIExpression()), !dbg !1654
  %628 = icmp ult i64 %627, %129, !dbg !2092
  br i1 %628, label %629, label %652, !dbg !2094

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2095
  store i8 0, i8* %630, align 1, !dbg !2096, !tbaa !846
  br label %652, !dbg !2095

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %637, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1653), !dbg !2097
  %633 = icmp eq i8 %101, 0, !dbg !2098
  %634 = select i1 %633, i32 2, i32 4, !dbg !2098
  br label %642, !dbg !2098

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1585, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %637, metadata !1587, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1653), !dbg !2097
  %639 = icmp eq i32 %93, 2, !dbg !2100
  %640 = icmp eq i8 %636, 0, !dbg !2098
  %641 = select i1 %640, i32 2, i32 4, !dbg !2098
  br i1 %639, label %642, label %646, !dbg !2098

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2098

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1588, metadata !DIExpression()), !dbg !1654
  %650 = and i32 %5, -3, !dbg !2101
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2102
  br label %652, !dbg !2103

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2104
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2109, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1, metadata !2110, metadata !DIExpression()), !dbg !2113
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %3, metadata !2111, metadata !DIExpression()), !dbg !2113
  %4 = icmp eq i8* %3, %0, !dbg !2115
  br i1 %4, label %5, label %72, !dbg !2117

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %6, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %6, metadata !2119, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* undef, metadata !2125, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 85, metadata !2126, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 84, metadata !2127, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 70, metadata !2128, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 45, metadata !2129, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 56, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2135
  %7 = load i8, i8* %6, align 1, !dbg !2138, !tbaa !846
  %8 = and i8 %7, -33, !dbg !2138
  %9 = sext i8 %8 to i32, !dbg !2138
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2138

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2140, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* undef, metadata !2145, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 84, metadata !2146, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 70, metadata !2147, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 45, metadata !2148, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 56, metadata !2149, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2154
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2158
  %12 = load i8, i8* %11, align 1, !dbg !2158, !tbaa !846
  %13 = and i8 %12, -33, !dbg !2158
  %14 = icmp eq i8 %13, 84, !dbg !2158
  br i1 %14, label %15, label %69, !dbg !2158

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2160, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* undef, metadata !2165, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 70, metadata !2166, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 45, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 56, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2173
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2177
  %17 = load i8, i8* %16, align 1, !dbg !2177, !tbaa !846
  %18 = and i8 %17, -33, !dbg !2177
  %19 = icmp eq i8 %18, 70, !dbg !2177
  br i1 %19, label %20, label %69, !dbg !2177

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2179, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8* undef, metadata !2184, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 45, metadata !2185, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 56, metadata !2186, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2191
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2195
  %22 = load i8, i8* %21, align 1, !dbg !2195, !tbaa !846
  %23 = icmp eq i8 %22, 45, !dbg !2195
  br i1 %23, label %24, label %69, !dbg !2197

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 56, metadata !2204, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2209
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2213
  %26 = load i8, i8* %25, align 1, !dbg !2213, !tbaa !846
  %27 = icmp eq i8 %26, 56, !dbg !2213
  br i1 %27, label %28, label %69, !dbg !2215

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2216, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* undef, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2222, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2226
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2230
  %30 = load i8, i8* %29, align 1, !dbg !2230, !tbaa !846
  %31 = icmp eq i8 %30, 0, !dbg !2230
  br i1 %31, label %32, label %69, !dbg !2232

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2233, !tbaa !846
  %34 = icmp eq i8 %33, 96, !dbg !2234
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2233
  br label %72, !dbg !2235

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2140, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* undef, metadata !2145, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 66, metadata !2146, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 49, metadata !2147, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 56, metadata !2148, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 48, metadata !2149, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 51, metadata !2150, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 48, metadata !2151, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2236
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2240
  %38 = load i8, i8* %37, align 1, !dbg !2240, !tbaa !846
  %39 = and i8 %38, -33, !dbg !2240
  %40 = icmp eq i8 %39, 66, !dbg !2240
  br i1 %40, label %41, label %69, !dbg !2240

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2160, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* undef, metadata !2165, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 49, metadata !2166, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 56, metadata !2167, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 48, metadata !2168, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 51, metadata !2169, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 48, metadata !2170, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2241
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2243
  %43 = load i8, i8* %42, align 1, !dbg !2243, !tbaa !846
  %44 = icmp eq i8 %43, 49, !dbg !2243
  br i1 %44, label %45, label %69, !dbg !2244

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2179, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* undef, metadata !2184, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 56, metadata !2185, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 48, metadata !2186, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 51, metadata !2187, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 48, metadata !2188, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2245
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2247
  %47 = load i8, i8* %46, align 1, !dbg !2247, !tbaa !846
  %48 = icmp eq i8 %47, 56, !dbg !2247
  br i1 %48, label %49, label %69, !dbg !2248

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 48, metadata !2204, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 51, metadata !2205, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 48, metadata !2206, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2249
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2251
  %51 = load i8, i8* %50, align 1, !dbg !2251, !tbaa !846
  %52 = icmp eq i8 %51, 48, !dbg !2251
  br i1 %52, label %53, label %69, !dbg !2252

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2216, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8* undef, metadata !2221, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 51, metadata !2222, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 48, metadata !2223, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2253
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2255
  %55 = load i8, i8* %54, align 1, !dbg !2255, !tbaa !846
  %56 = icmp eq i8 %55, 51, !dbg !2255
  br i1 %56, label %57, label %69, !dbg !2256

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2257, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* undef, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 48, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 0, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2266
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2270
  %59 = load i8, i8* %58, align 1, !dbg !2270, !tbaa !846
  %60 = icmp eq i8 %59, 48, !dbg !2270
  br i1 %60, label %61, label %69, !dbg !2272

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2273, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* undef, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2281
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2285
  %63 = load i8, i8* %62, align 1, !dbg !2285, !tbaa !846
  %64 = icmp eq i8 %63, 0, !dbg !2285
  br i1 %64, label %65, label %69, !dbg !2287

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2288, !tbaa !846
  %67 = icmp eq i8 %66, 96, !dbg !2289
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2288
  br label %72, !dbg !2290

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2291
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2292
  br label %72, !dbg !2293

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2113
  ret i8* %73, !dbg !2294
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2295 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2299 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()) #25, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()) #25, !dbg !2326
  call void @llvm.dbg.value(metadata i64* null, metadata !2319, metadata !DIExpression()) #25, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2320, metadata !DIExpression()) #25, !dbg !2326
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2328
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression()) #25, !dbg !2326
  %6 = tail call i32* @__errno_location() #29, !dbg !2329
  %7 = load i32, i32* %6, align 4, !dbg !2329, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %7, metadata !2322, metadata !DIExpression()) #25, !dbg !2326
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2330
  %9 = load i32, i32* %8, align 4, !dbg !2330, !tbaa !1528
  %10 = or i32 %9, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %10, metadata !2323, metadata !DIExpression()) #25, !dbg !2326
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2332
  %12 = load i32, i32* %11, align 8, !dbg !2332, !tbaa !1476
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2334
  %15 = load i8*, i8** %14, align 8, !dbg !2334, !tbaa !1550
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2335
  %17 = load i8*, i8** %16, align 8, !dbg !2335, !tbaa !1553
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2336
  %19 = add i64 %18, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %19, metadata !2324, metadata !DIExpression()) #25, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %19, metadata !2338, metadata !DIExpression()) #25, !dbg !2343
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %20, metadata !2325, metadata !DIExpression()) #25, !dbg !2326
  %21 = load i32, i32* %11, align 8, !dbg !2346, !tbaa !1476
  %22 = load i8*, i8** %14, align 8, !dbg !2347, !tbaa !1550
  %23 = load i8*, i8** %16, align 8, !dbg !2348, !tbaa !1553
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2349
  store i32 %7, i32* %6, align 4, !dbg !2350, !tbaa !838
  ret i8* %20, !dbg !2351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64* %2, metadata !2319, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2320, metadata !DIExpression()), !dbg !2352
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2353
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2321, metadata !DIExpression()), !dbg !2352
  %7 = tail call i32* @__errno_location() #29, !dbg !2354
  %8 = load i32, i32* %7, align 4, !dbg !2354, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %8, metadata !2322, metadata !DIExpression()), !dbg !2352
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2355
  %10 = load i32, i32* %9, align 4, !dbg !2355, !tbaa !1528
  %11 = icmp eq i64* %2, null, !dbg !2356
  %12 = zext i1 %11 to i32, !dbg !2356
  %13 = or i32 %10, %12, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %13, metadata !2323, metadata !DIExpression()), !dbg !2352
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2358
  %15 = load i32, i32* %14, align 8, !dbg !2358, !tbaa !1476
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2359
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2360
  %18 = load i8*, i8** %17, align 8, !dbg !2360, !tbaa !1550
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2361
  %20 = load i8*, i8** %19, align 8, !dbg !2361, !tbaa !1553
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2362
  %22 = add i64 %21, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %22, metadata !2324, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %22, metadata !2338, metadata !DIExpression()) #25, !dbg !2364
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2366
  call void @llvm.dbg.value(metadata i8* %23, metadata !2325, metadata !DIExpression()), !dbg !2352
  %24 = load i32, i32* %14, align 8, !dbg !2367, !tbaa !1476
  %25 = load i8*, i8** %17, align 8, !dbg !2368, !tbaa !1550
  %26 = load i8*, i8** %19, align 8, !dbg !2369, !tbaa !1553
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2370
  store i32 %8, i32* %7, align 4, !dbg !2371, !tbaa !838
  br i1 %11, label %29, label %28, !dbg !2372

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2373, !tbaa !913
  br label %29, !dbg !2375

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2377 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2381, !tbaa !621
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 1, metadata !2380, metadata !DIExpression()), !dbg !2382
  %2 = load i32, i32* @nslots, align 4, !dbg !2383, !tbaa !838
  %3 = icmp sgt i32 %2, 1, !dbg !2386
  br i1 %3, label %4, label %12, !dbg !2387

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2386
  br label %6, !dbg !2387

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2380, metadata !DIExpression()), !dbg !2382
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2388
  %9 = load i8*, i8** %8, align 8, !dbg !2388, !tbaa !2389
  tail call void @free(i8* %9) #25, !dbg !2391
  %10 = add nuw nsw i64 %7, 1, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %10, metadata !2380, metadata !DIExpression()), !dbg !2382
  %11 = icmp eq i64 %10, %5, !dbg !2386
  br i1 %11, label %12, label %6, !dbg !2387, !llvm.loop !2393

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2395
  %14 = load i8*, i8** %13, align 8, !dbg !2395, !tbaa !2389
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2397
  br i1 %15, label %17, label %16, !dbg !2398

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2399
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2401, !tbaa !2402
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2403, !tbaa !2389
  br label %17, !dbg !2404

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2405
  br i1 %18, label %21, label %19, !dbg !2407

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2408
  tail call void @free(i8* %20) #25, !dbg !2410
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2411, !tbaa !621
  br label %21, !dbg !2412

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2413, !tbaa !838
  ret void, !dbg !2414
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()), !dbg !2419
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2420
  ret i8* %3, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %1, metadata !2427, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %2, metadata !2428, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2429, metadata !DIExpression()), !dbg !2441
  %5 = tail call i32* @__errno_location() #29, !dbg !2442
  %6 = load i32, i32* %5, align 4, !dbg !2442, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %6, metadata !2430, metadata !DIExpression()), !dbg !2441
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2443, !tbaa !621
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2431, metadata !DIExpression()), !dbg !2441
  %8 = icmp slt i32 %0, 0, !dbg !2444
  br i1 %8, label %9, label %10, !dbg !2446

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2447
  unreachable, !dbg !2447

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2448, !tbaa !838
  %12 = icmp sgt i32 %11, %0, !dbg !2449
  br i1 %12, label %34, label %13, !dbg !2450

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2451
  call void @llvm.dbg.value(metadata i1 %14, metadata !2432, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2452
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2435, metadata !DIExpression()), !dbg !2452
  %15 = icmp eq i32 %0, 2147483647, !dbg !2453
  br i1 %15, label %16, label %17, !dbg !2455

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2456
  unreachable, !dbg !2456

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2457
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2457
  %20 = add nuw nsw i32 %0, 1, !dbg !2458
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2459
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2460
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2431, metadata !DIExpression()), !dbg !2441
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2461, !tbaa !621
  br i1 %14, label %25, label %26, !dbg !2462

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2463, !tbaa.struct !2465
  br label %26, !dbg !2466

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2467, !tbaa !838
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2468
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2469
  %31 = sub nsw i32 %20, %27, !dbg !2470
  %32 = sext i32 %31 to i64, !dbg !2471
  %33 = shl nsw i64 %32, 4, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %30, metadata !1865, metadata !DIExpression()) #25, !dbg !2473
  call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()) #25, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %33, metadata !1872, metadata !DIExpression()) #25, !dbg !2473
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2475
  store i32 %20, i32* @nslots, align 4, !dbg !2476, !tbaa !838
  br label %34, !dbg !2477

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2441
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2431, metadata !DIExpression()), !dbg !2441
  %36 = zext i32 %0 to i64, !dbg !2478
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2479
  %38 = load i64, i64* %37, align 8, !dbg !2479, !tbaa !2402
  call void @llvm.dbg.value(metadata i64 %38, metadata !2436, metadata !DIExpression()), !dbg !2480
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2481
  %40 = load i8*, i8** %39, align 8, !dbg !2481, !tbaa !2389
  call void @llvm.dbg.value(metadata i8* %40, metadata !2438, metadata !DIExpression()), !dbg !2480
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2482
  %42 = load i32, i32* %41, align 4, !dbg !2482, !tbaa !1528
  %43 = or i32 %42, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %43, metadata !2439, metadata !DIExpression()), !dbg !2480
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2484
  %45 = load i32, i32* %44, align 8, !dbg !2484, !tbaa !1476
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2485
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2486
  %48 = load i8*, i8** %47, align 8, !dbg !2486, !tbaa !1550
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2487
  %50 = load i8*, i8** %49, align 8, !dbg !2487, !tbaa !1553
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %51, metadata !2440, metadata !DIExpression()), !dbg !2480
  %52 = icmp ugt i64 %38, %51, !dbg !2489
  br i1 %52, label %63, label %53, !dbg !2491

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %54, metadata !2436, metadata !DIExpression()), !dbg !2480
  store i64 %54, i64* %37, align 8, !dbg !2494, !tbaa !2402
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2495
  br i1 %55, label %57, label %56, !dbg !2497

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2498
  br label %57, !dbg !2498

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2338, metadata !DIExpression()) #25, !dbg !2499
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %58, metadata !2438, metadata !DIExpression()), !dbg !2480
  store i8* %58, i8** %39, align 8, !dbg !2502, !tbaa !2389
  %59 = load i32, i32* %44, align 8, !dbg !2503, !tbaa !1476
  %60 = load i8*, i8** %47, align 8, !dbg !2504, !tbaa !1550
  %61 = load i8*, i8** %49, align 8, !dbg !2505, !tbaa !1553
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2506
  br label %63, !dbg !2507

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2480
  call void @llvm.dbg.value(metadata i8* %64, metadata !2438, metadata !DIExpression()), !dbg !2480
  store i32 %6, i32* %5, align 4, !dbg !2508, !tbaa !838
  ret i8* %64, !dbg !2509
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2510 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8* %1, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %2, metadata !2516, metadata !DIExpression()), !dbg !2517
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2518
  ret i8* %4, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2520 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2417, metadata !DIExpression()) #25, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()) #25, !dbg !2524
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2526
  ret i8* %2, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2514, metadata !DIExpression()) #25, !dbg !2535
  call void @llvm.dbg.value(metadata i8* %0, metadata !2515, metadata !DIExpression()) #25, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2516, metadata !DIExpression()) #25, !dbg !2535
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2537
  ret i8* %3, !dbg !2538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2539 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2543, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 %1, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()), !dbg !2547
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2548
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2546, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()) #25, !dbg !2560
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2559, metadata !DIExpression()) #25, !dbg !2562
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2562, !alias.scope !2550
  %6 = icmp eq i32 %1, 10, !dbg !2563
  br i1 %6, label %7, label %8, !dbg !2565

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2566, !noalias !2550
  unreachable, !dbg !2566

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2567
  store i32 %1, i32* %9, align 8, !dbg !2568, !tbaa !1476, !alias.scope !2550
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2570
  ret i8* %10, !dbg !2571
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2572 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2576, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %2, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %3, metadata !2579, metadata !DIExpression()), !dbg !2581
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2582
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()) #25, !dbg !2588
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2559, metadata !DIExpression()) #25, !dbg !2590
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2590, !alias.scope !2584
  %7 = icmp eq i32 %1, 10, !dbg !2591
  br i1 %7, label %8, label %9, !dbg !2592

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2593, !noalias !2584
  unreachable, !dbg !2593

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2594
  store i32 %1, i32* %10, align 8, !dbg !2595, !tbaa !1476, !alias.scope !2584
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2597
  ret i8* %11, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2599 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 0, metadata !2543, metadata !DIExpression()) #25, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()) #25, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()) #25, !dbg !2606
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2546, metadata !DIExpression()) #25, !dbg !2609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610) #25, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()) #25, !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2559, metadata !DIExpression()) #25, !dbg !2616
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2616, !alias.scope !2610
  %5 = icmp eq i32 %0, 10, !dbg !2617
  br i1 %5, label %6, label %7, !dbg !2618

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2619, !noalias !2610
  unreachable, !dbg !2619

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2620
  store i32 %0, i32* %8, align 8, !dbg !2621, !tbaa !1476, !alias.scope !2610
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2623
  ret i8* %9, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2625 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %2, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2576, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %1, metadata !2578, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %2, metadata !2579, metadata !DIExpression()) #25, !dbg !2633
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2635
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression()) #25, !dbg !2636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637) #25, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()) #25, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2559, metadata !DIExpression()) #25, !dbg !2643
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2643, !alias.scope !2637
  %6 = icmp eq i32 %0, 10, !dbg !2644
  br i1 %6, label %7, label %8, !dbg !2645

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2646, !noalias !2637
  unreachable, !dbg !2646

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2647
  store i32 %0, i32* %9, align 8, !dbg !2648, !tbaa !1476, !alias.scope !2637
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2650
  ret i8* %10, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2652 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %2, metadata !2658, metadata !DIExpression()), !dbg !2660
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2663, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1494, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 %2, metadata !1495, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 %2, metadata !1497, metadata !DIExpression()), !dbg !2665
  %6 = lshr i8 %2, 5, !dbg !2667
  %7 = zext i8 %6 to i64, !dbg !2667
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2668
  call void @llvm.dbg.value(metadata i32* %8, metadata !1499, metadata !DIExpression()), !dbg !2665
  %9 = and i8 %2, 31, !dbg !2669
  %10 = zext i8 %9 to i32, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %10, metadata !1501, metadata !DIExpression()), !dbg !2665
  %11 = load i32, i32* %8, align 4, !dbg !2670, !tbaa !838
  %12 = lshr i32 %11, %10, !dbg !2671
  %13 = and i32 %12, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i32 %13, metadata !1502, metadata !DIExpression()), !dbg !2665
  %14 = xor i32 %13, 1, !dbg !2673
  %15 = shl i32 %14, %10, !dbg !2674
  %16 = xor i32 %15, %11, !dbg !2675
  store i32 %16, i32* %8, align 4, !dbg !2675, !tbaa !838
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2677
  ret i8* %17, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2679 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 %1, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()) #25, !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()) #25, !dbg !2686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2658, metadata !DIExpression()) #25, !dbg !2686
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2659, metadata !DIExpression()) #25, !dbg !2689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2690, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1494, metadata !DIExpression()) #25, !dbg !2691
  call void @llvm.dbg.value(metadata i8 %1, metadata !1495, metadata !DIExpression()) #25, !dbg !2691
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()) #25, !dbg !2691
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()) #25, !dbg !2691
  %5 = lshr i8 %1, 5, !dbg !2693
  %6 = zext i8 %5 to i64, !dbg !2693
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2694
  call void @llvm.dbg.value(metadata i32* %7, metadata !1499, metadata !DIExpression()) #25, !dbg !2691
  %8 = and i8 %1, 31, !dbg !2695
  %9 = zext i8 %8 to i32, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %9, metadata !1501, metadata !DIExpression()) #25, !dbg !2691
  %10 = load i32, i32* %7, align 4, !dbg !2696, !tbaa !838
  %11 = lshr i32 %10, %9, !dbg !2697
  %12 = and i32 %11, 1, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %12, metadata !1502, metadata !DIExpression()) #25, !dbg !2691
  %13 = xor i32 %12, 1, !dbg !2699
  %14 = shl i32 %13, %9, !dbg !2700
  %15 = xor i32 %14, %10, !dbg !2701
  store i32 %15, i32* %7, align 4, !dbg !2701, !tbaa !838
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2703
  ret i8* %16, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2705 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2683, metadata !DIExpression()) #25, !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !2684, metadata !DIExpression()) #25, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()) #25, !dbg !2711
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()) #25, !dbg !2711
  call void @llvm.dbg.value(metadata i8 58, metadata !2658, metadata !DIExpression()) #25, !dbg !2711
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2713
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2713
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2659, metadata !DIExpression()) #25, !dbg !2714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2715, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1494, metadata !DIExpression()) #25, !dbg !2716
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()) #25, !dbg !2716
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()) #25, !dbg !2716
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()) #25, !dbg !2716
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2718
  call void @llvm.dbg.value(metadata i32* %4, metadata !1499, metadata !DIExpression()) #25, !dbg !2716
  call void @llvm.dbg.value(metadata i32 26, metadata !1501, metadata !DIExpression()) #25, !dbg !2716
  %5 = load i32, i32* %4, align 4, !dbg !2719, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %5, metadata !1502, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2716
  %6 = or i32 %5, 67108864, !dbg !2720
  store i32 %6, i32* %4, align 4, !dbg !2720, !tbaa !838
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2721
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2722
  ret i8* %7, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2724 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()) #25, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2657, metadata !DIExpression()) #25, !dbg !2729
  call void @llvm.dbg.value(metadata i8 58, metadata !2658, metadata !DIExpression()) #25, !dbg !2729
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2731
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2731
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2659, metadata !DIExpression()) #25, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2733, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1494, metadata !DIExpression()) #25, !dbg !2734
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()) #25, !dbg !2734
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()) #25, !dbg !2734
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()) #25, !dbg !2734
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2736
  call void @llvm.dbg.value(metadata i32* %5, metadata !1499, metadata !DIExpression()) #25, !dbg !2734
  call void @llvm.dbg.value(metadata i32 26, metadata !1501, metadata !DIExpression()) #25, !dbg !2734
  %6 = load i32, i32* %5, align 4, !dbg !2737, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %6, metadata !1502, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2734
  %7 = or i32 %6, 67108864, !dbg !2738
  store i32 %7, i32* %5, align 4, !dbg !2738, !tbaa !838
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2739
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2740
  ret i8* %8, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2742 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2559, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %0, metadata !2744, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %1, metadata !2745, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %2, metadata !2746, metadata !DIExpression()), !dbg !2750
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2751
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2747, metadata !DIExpression()), !dbg !2752
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2753
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754), !dbg !2753
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()) #25, !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2757
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2748, !alias.scope !2754
  %8 = icmp eq i32 %1, 10, !dbg !2758
  br i1 %8, label %9, label %10, !dbg !2759

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2760, !noalias !2754
  unreachable, !dbg !2760

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2559, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2757
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2753
  store i32 %1, i32* %11, align 8, !dbg !2753, !tbaa.struct !2664
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2753
  %13 = bitcast i32* %12 to i8*, !dbg !2753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2753, !tbaa.struct !2761
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1494, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2762
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2764
  call void @llvm.dbg.value(metadata i32* %14, metadata !1499, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 26, metadata !1501, metadata !DIExpression()), !dbg !2762
  %15 = load i32, i32* %14, align 4, !dbg !2765, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %15, metadata !1502, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2762
  %16 = or i32 %15, 67108864, !dbg !2766
  store i32 %16, i32* %14, align 4, !dbg !2766, !tbaa !838
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2768
  ret i8* %17, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2770 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %1, metadata !2775, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %3, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()) #25, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()) #25, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !2785, metadata !DIExpression()) #25, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()) #25, !dbg !2789
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()) #25, !dbg !2789
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2791
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression()) #25, !dbg !2792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2793, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1535, metadata !DIExpression()) #25, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !1536, metadata !DIExpression()) #25, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %2, metadata !1537, metadata !DIExpression()) #25, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1535, metadata !DIExpression()) #25, !dbg !2794
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2796
  store i32 10, i32* %7, align 8, !dbg !2797, !tbaa !1476
  %8 = icmp ne i8* %1, null, !dbg !2798
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2799
  br i1 %10, label %12, label %11, !dbg !2799

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2800
  unreachable, !dbg !2800

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2801
  store i8* %1, i8** %13, align 8, !dbg !2802, !tbaa !1550
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2803
  store i8* %2, i8** %14, align 8, !dbg !2804, !tbaa !1553
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2806
  ret i8* %15, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2780 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !2785, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %4, metadata !2787, metadata !DIExpression()), !dbg !2808
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2809
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2788, metadata !DIExpression()), !dbg !2810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2811, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1535, metadata !DIExpression()) #25, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %1, metadata !1536, metadata !DIExpression()) #25, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %2, metadata !1537, metadata !DIExpression()) #25, !dbg !2812
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1535, metadata !DIExpression()) #25, !dbg !2812
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2814
  store i32 10, i32* %8, align 8, !dbg !2815, !tbaa !1476
  %9 = icmp ne i8* %1, null, !dbg !2816
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2817
  br i1 %11, label %13, label %12, !dbg !2817

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2818
  unreachable, !dbg !2818

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2819
  store i8* %1, i8** %14, align 8, !dbg !2820, !tbaa !1550
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2821
  store i8* %2, i8** %15, align 8, !dbg !2822, !tbaa !1553
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2824
  ret i8* %16, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2826 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %2, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()) #25, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2775, metadata !DIExpression()) #25, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2776, metadata !DIExpression()) #25, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %2, metadata !2777, metadata !DIExpression()) #25, !dbg !2834
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #25, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #25, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()) #25, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()) #25, !dbg !2836
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()) #25, !dbg !2836
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2838
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2788, metadata !DIExpression()) #25, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2840, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1535, metadata !DIExpression()) #25, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()) #25, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1537, metadata !DIExpression()) #25, !dbg !2841
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1535, metadata !DIExpression()) #25, !dbg !2841
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2843
  store i32 10, i32* %6, align 8, !dbg !2844, !tbaa !1476
  %7 = icmp ne i8* %0, null, !dbg !2845
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2846
  br i1 %9, label %11, label %10, !dbg !2846

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2847
  unreachable, !dbg !2847

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2848
  store i8* %0, i8** %12, align 8, !dbg !2849, !tbaa !1550
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2850
  store i8* %1, i8** %13, align 8, !dbg !2851, !tbaa !1553
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2853
  ret i8* %14, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2855 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2859, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %3, metadata !2862, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #25, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #25, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()) #25, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()) #25, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %3, metadata !2787, metadata !DIExpression()) #25, !dbg !2864
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2866
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression()) #25, !dbg !2867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2868, !tbaa.struct !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1535, metadata !DIExpression()) #25, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()) #25, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !1537, metadata !DIExpression()) #25, !dbg !2869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1535, metadata !DIExpression()) #25, !dbg !2869
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2871
  store i32 10, i32* %7, align 8, !dbg !2872, !tbaa !1476
  %8 = icmp ne i8* %0, null, !dbg !2873
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2874
  br i1 %10, label %12, label %11, !dbg !2874

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2875
  unreachable, !dbg !2875

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2876
  store i8* %0, i8** %13, align 8, !dbg !2877, !tbaa !1550
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2878
  store i8* %1, i8** %14, align 8, !dbg !2879, !tbaa !1553
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2881
  ret i8* %15, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2883 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !2889, metadata !DIExpression()), !dbg !2890
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2891
  ret i8* %4, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 0, metadata !2887, metadata !DIExpression()) #25, !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2888, metadata !DIExpression()) #25, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()) #25, !dbg !2900
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2902
  ret i8* %3, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()) #25, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %1, metadata !2888, metadata !DIExpression()) #25, !dbg !2911
  call void @llvm.dbg.value(metadata i64 -1, metadata !2889, metadata !DIExpression()) #25, !dbg !2911
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2913
  ret i8* %3, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 0, metadata !2908, metadata !DIExpression()) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %0, metadata !2909, metadata !DIExpression()) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2887, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2888, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i64 -1, metadata !2889, metadata !DIExpression()) #25, !dbg !2923
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2925
  ret i8* %2, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2967, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %1, metadata !2968, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %2, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %3, metadata !2970, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8** %4, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %5, metadata !2972, metadata !DIExpression()), !dbg !2973
  %7 = icmp eq i8* %1, null, !dbg !2974
  br i1 %7, label %10, label %8, !dbg !2976

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2977
  br label %12, !dbg !2977

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2978
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #25, !dbg !2979
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2979
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2980
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #25, !dbg !2981
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.99, i64 0, i64 0)) #25, !dbg !2981
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2982
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
  ], !dbg !2983

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #25, !dbg !2984
  %21 = load i8*, i8** %4, align 8, !dbg !2984, !tbaa !621
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2984
  br label %147, !dbg !2986

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #25, !dbg !2987
  %25 = load i8*, i8** %4, align 8, !dbg !2987, !tbaa !621
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2987
  %27 = load i8*, i8** %26, align 8, !dbg !2987, !tbaa !621
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2987
  br label %147, !dbg !2988

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #25, !dbg !2989
  %31 = load i8*, i8** %4, align 8, !dbg !2989, !tbaa !621
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2989
  %33 = load i8*, i8** %32, align 8, !dbg !2989, !tbaa !621
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2989
  %35 = load i8*, i8** %34, align 8, !dbg !2989, !tbaa !621
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2989
  br label %147, !dbg !2990

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #25, !dbg !2991
  %39 = load i8*, i8** %4, align 8, !dbg !2991, !tbaa !621
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2991
  %41 = load i8*, i8** %40, align 8, !dbg !2991, !tbaa !621
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2991
  %43 = load i8*, i8** %42, align 8, !dbg !2991, !tbaa !621
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2991
  %45 = load i8*, i8** %44, align 8, !dbg !2991, !tbaa !621
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2991
  br label %147, !dbg !2992

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #25, !dbg !2993
  %49 = load i8*, i8** %4, align 8, !dbg !2993, !tbaa !621
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2993
  %51 = load i8*, i8** %50, align 8, !dbg !2993, !tbaa !621
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2993
  %53 = load i8*, i8** %52, align 8, !dbg !2993, !tbaa !621
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2993
  %55 = load i8*, i8** %54, align 8, !dbg !2993, !tbaa !621
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2993
  %57 = load i8*, i8** %56, align 8, !dbg !2993, !tbaa !621
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2993
  br label %147, !dbg !2994

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #25, !dbg !2995
  %61 = load i8*, i8** %4, align 8, !dbg !2995, !tbaa !621
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2995
  %63 = load i8*, i8** %62, align 8, !dbg !2995, !tbaa !621
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2995
  %65 = load i8*, i8** %64, align 8, !dbg !2995, !tbaa !621
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2995
  %67 = load i8*, i8** %66, align 8, !dbg !2995, !tbaa !621
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2995
  %69 = load i8*, i8** %68, align 8, !dbg !2995, !tbaa !621
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2995
  %71 = load i8*, i8** %70, align 8, !dbg !2995, !tbaa !621
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2995
  br label %147, !dbg !2996

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #25, !dbg !2997
  %75 = load i8*, i8** %4, align 8, !dbg !2997, !tbaa !621
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2997
  %77 = load i8*, i8** %76, align 8, !dbg !2997, !tbaa !621
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2997
  %79 = load i8*, i8** %78, align 8, !dbg !2997, !tbaa !621
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2997
  %81 = load i8*, i8** %80, align 8, !dbg !2997, !tbaa !621
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2997
  %83 = load i8*, i8** %82, align 8, !dbg !2997, !tbaa !621
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2997
  %85 = load i8*, i8** %84, align 8, !dbg !2997, !tbaa !621
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2997
  %87 = load i8*, i8** %86, align 8, !dbg !2997, !tbaa !621
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2997
  br label %147, !dbg !2998

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #25, !dbg !2999
  %91 = load i8*, i8** %4, align 8, !dbg !2999, !tbaa !621
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2999
  %93 = load i8*, i8** %92, align 8, !dbg !2999, !tbaa !621
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2999
  %95 = load i8*, i8** %94, align 8, !dbg !2999, !tbaa !621
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2999
  %97 = load i8*, i8** %96, align 8, !dbg !2999, !tbaa !621
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2999
  %99 = load i8*, i8** %98, align 8, !dbg !2999, !tbaa !621
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2999
  %101 = load i8*, i8** %100, align 8, !dbg !2999, !tbaa !621
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2999
  %103 = load i8*, i8** %102, align 8, !dbg !2999, !tbaa !621
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2999
  %105 = load i8*, i8** %104, align 8, !dbg !2999, !tbaa !621
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2999
  br label %147, !dbg !3000

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #25, !dbg !3001
  %109 = load i8*, i8** %4, align 8, !dbg !3001, !tbaa !621
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3001
  %111 = load i8*, i8** %110, align 8, !dbg !3001, !tbaa !621
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3001
  %113 = load i8*, i8** %112, align 8, !dbg !3001, !tbaa !621
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3001
  %115 = load i8*, i8** %114, align 8, !dbg !3001, !tbaa !621
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3001
  %117 = load i8*, i8** %116, align 8, !dbg !3001, !tbaa !621
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3001
  %119 = load i8*, i8** %118, align 8, !dbg !3001, !tbaa !621
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3001
  %121 = load i8*, i8** %120, align 8, !dbg !3001, !tbaa !621
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3001
  %123 = load i8*, i8** %122, align 8, !dbg !3001, !tbaa !621
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3001
  %125 = load i8*, i8** %124, align 8, !dbg !3001, !tbaa !621
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !3001
  br label %147, !dbg !3002

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.109, i64 0, i64 0), i32 5) #25, !dbg !3003
  %129 = load i8*, i8** %4, align 8, !dbg !3003, !tbaa !621
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3003
  %131 = load i8*, i8** %130, align 8, !dbg !3003, !tbaa !621
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3003
  %133 = load i8*, i8** %132, align 8, !dbg !3003, !tbaa !621
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3003
  %135 = load i8*, i8** %134, align 8, !dbg !3003, !tbaa !621
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3003
  %137 = load i8*, i8** %136, align 8, !dbg !3003, !tbaa !621
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3003
  %139 = load i8*, i8** %138, align 8, !dbg !3003, !tbaa !621
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3003
  %141 = load i8*, i8** %140, align 8, !dbg !3003, !tbaa !621
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3003
  %143 = load i8*, i8** %142, align 8, !dbg !3003, !tbaa !621
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3003
  %145 = load i8*, i8** %144, align 8, !dbg !3003, !tbaa !621
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !3003
  br label %147, !dbg !3004

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3005
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3006 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3010, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %3, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8** %4, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 0, metadata !3015, metadata !DIExpression()), !dbg !3016
  br label %6, !dbg !3017

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3019
  call void @llvm.dbg.value(metadata i64 %7, metadata !3015, metadata !DIExpression()), !dbg !3016
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3020
  %9 = load i8*, i8** %8, align 8, !dbg !3020, !tbaa !621
  %10 = icmp eq i8* %9, null, !dbg !3022
  %11 = add i64 %7, 1, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %11, metadata !3015, metadata !DIExpression()), !dbg !3016
  br i1 %10, label %12, label %6, !dbg !3022, !llvm.loop !3024

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3026
  ret void, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3028 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3039, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %2, metadata !3041, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %3, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3043, metadata !DIExpression()), !dbg !3047
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3048
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3048
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3045, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 0, metadata !3044, metadata !DIExpression()), !dbg !3047
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3044, metadata !DIExpression()), !dbg !3047
  %11 = load i32, i32* %8, align 8, !dbg !3050
  %12 = icmp ult i32 %11, 41, !dbg !3050
  br i1 %12, label %13, label %18, !dbg !3050

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3050
  %15 = zext i32 %11 to i64, !dbg !3050
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3050
  %17 = add nuw nsw i32 %11, 8, !dbg !3050
  store i32 %17, i32* %8, align 8, !dbg !3050
  br label %21, !dbg !3050

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3050
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3050
  store i8* %20, i8** %9, align 8, !dbg !3050
  br label %21, !dbg !3050

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3050
  %25 = load i8*, i8** %24, align 8, !dbg !3050
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3053
  store i8* %25, i8** %26, align 16, !dbg !3054, !tbaa !621
  %27 = icmp eq i8* %25, null, !dbg !3055
  br i1 %27, label %30, label %28, !dbg !3056

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 1, metadata !3044, metadata !DIExpression()), !dbg !3047
  %29 = icmp ult i32 %22, 41, !dbg !3050
  br i1 %29, label %35, label %32, !dbg !3050

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3057
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3058
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3059
  ret void, !dbg !3059

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3050
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3050
  store i8* %34, i8** %9, align 8, !dbg !3050
  br label %40, !dbg !3050

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3050
  %37 = zext i32 %22 to i64, !dbg !3050
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3050
  %39 = add nuw nsw i32 %22, 8, !dbg !3050
  store i32 %39, i32* %8, align 8, !dbg !3050
  br label %40, !dbg !3050

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3050
  %44 = load i8*, i8** %43, align 8, !dbg !3050
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3053
  store i8* %44, i8** %45, align 8, !dbg !3054, !tbaa !621
  %46 = icmp eq i8* %44, null, !dbg !3055
  br i1 %46, label %30, label %47, !dbg !3056

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 2, metadata !3044, metadata !DIExpression()), !dbg !3047
  %48 = icmp ult i32 %41, 41, !dbg !3050
  br i1 %48, label %52, label %49, !dbg !3050

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3050
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3050
  store i8* %51, i8** %9, align 8, !dbg !3050
  br label %57, !dbg !3050

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3050
  %54 = zext i32 %41 to i64, !dbg !3050
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3050
  %56 = add nuw nsw i32 %41, 8, !dbg !3050
  store i32 %56, i32* %8, align 8, !dbg !3050
  br label %57, !dbg !3050

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3050
  %61 = load i8*, i8** %60, align 8, !dbg !3050
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3053
  store i8* %61, i8** %62, align 16, !dbg !3054, !tbaa !621
  %63 = icmp eq i8* %61, null, !dbg !3055
  br i1 %63, label %30, label %64, !dbg !3056

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 3, metadata !3044, metadata !DIExpression()), !dbg !3047
  %65 = icmp ult i32 %58, 41, !dbg !3050
  br i1 %65, label %69, label %66, !dbg !3050

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3050
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3050
  store i8* %68, i8** %9, align 8, !dbg !3050
  br label %74, !dbg !3050

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3050
  %71 = zext i32 %58 to i64, !dbg !3050
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3050
  %73 = add nuw nsw i32 %58, 8, !dbg !3050
  store i32 %73, i32* %8, align 8, !dbg !3050
  br label %74, !dbg !3050

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3050
  %78 = load i8*, i8** %77, align 8, !dbg !3050
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3053
  store i8* %78, i8** %79, align 8, !dbg !3054, !tbaa !621
  %80 = icmp eq i8* %78, null, !dbg !3055
  br i1 %80, label %30, label %81, !dbg !3056

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 4, metadata !3044, metadata !DIExpression()), !dbg !3047
  %82 = icmp ult i32 %75, 41, !dbg !3050
  br i1 %82, label %86, label %83, !dbg !3050

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3050
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3050
  store i8* %85, i8** %9, align 8, !dbg !3050
  br label %91, !dbg !3050

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3050
  %88 = zext i32 %75 to i64, !dbg !3050
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3050
  %90 = add nuw nsw i32 %75, 8, !dbg !3050
  store i32 %90, i32* %8, align 8, !dbg !3050
  br label %91, !dbg !3050

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3050
  %95 = load i8*, i8** %94, align 8, !dbg !3050
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3053
  store i8* %95, i8** %96, align 16, !dbg !3054, !tbaa !621
  %97 = icmp eq i8* %95, null, !dbg !3055
  br i1 %97, label %30, label %98, !dbg !3056

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 5, metadata !3044, metadata !DIExpression()), !dbg !3047
  %99 = icmp ult i32 %92, 41, !dbg !3050
  br i1 %99, label %103, label %100, !dbg !3050

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3050
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3050
  store i8* %102, i8** %9, align 8, !dbg !3050
  br label %108, !dbg !3050

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3050
  %105 = zext i32 %92 to i64, !dbg !3050
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3050
  %107 = add nuw nsw i32 %92, 8, !dbg !3050
  store i32 %107, i32* %8, align 8, !dbg !3050
  br label %108, !dbg !3050

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3050
  %111 = load i8*, i8** %110, align 8, !dbg !3050
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3053
  store i8* %111, i8** %112, align 8, !dbg !3054, !tbaa !621
  %113 = icmp eq i8* %111, null, !dbg !3055
  br i1 %113, label %30, label %114, !dbg !3056

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3044, metadata !DIExpression()), !dbg !3047
  %115 = load i8*, i8** %9, align 8, !dbg !3050
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3050
  store i8* %116, i8** %9, align 8, !dbg !3050
  %117 = bitcast i8* %115 to i8**, !dbg !3050
  %118 = load i8*, i8** %117, align 8, !dbg !3050
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3053
  store i8* %118, i8** %119, align 16, !dbg !3054, !tbaa !621
  %120 = icmp eq i8* %118, null, !dbg !3055
  br i1 %120, label %30, label %121, !dbg !3056

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3044, metadata !DIExpression()), !dbg !3047
  %122 = load i8*, i8** %9, align 8, !dbg !3050
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3050
  store i8* %123, i8** %9, align 8, !dbg !3050
  %124 = bitcast i8* %122 to i8**, !dbg !3050
  %125 = load i8*, i8** %124, align 8, !dbg !3050
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3053
  store i8* %125, i8** %126, align 8, !dbg !3054, !tbaa !621
  %127 = icmp eq i8* %125, null, !dbg !3055
  br i1 %127, label %30, label %128, !dbg !3056

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3044, metadata !DIExpression()), !dbg !3047
  %129 = load i8*, i8** %9, align 8, !dbg !3050
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3050
  store i8* %130, i8** %9, align 8, !dbg !3050
  %131 = bitcast i8* %129 to i8**, !dbg !3050
  %132 = load i8*, i8** %131, align 8, !dbg !3050
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3053
  store i8* %132, i8** %133, align 16, !dbg !3054, !tbaa !621
  %134 = icmp eq i8* %132, null, !dbg !3055
  br i1 %134, label %30, label %135, !dbg !3056

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3044, metadata !DIExpression()), !dbg !3047
  %136 = load i8*, i8** %9, align 8, !dbg !3050
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3050
  store i8* %137, i8** %9, align 8, !dbg !3050
  %138 = bitcast i8* %136 to i8**, !dbg !3050
  %139 = load i8*, i8** %138, align 8, !dbg !3050
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3053
  store i8* %139, i8** %140, align 8, !dbg !3054, !tbaa !621
  %141 = icmp eq i8* %139, null, !dbg !3055
  %142 = select i1 %141, i64 9, i64 10, !dbg !3056
  br label %30, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3060 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3064, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %1, metadata !3065, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %2, metadata !3066, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %3, metadata !3067, metadata !DIExpression()), !dbg !3074
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3075
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3068, metadata !DIExpression()), !dbg !3076
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3077
  call void @llvm.va_start(i8* nonnull %6), !dbg !3077
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3078
  call void @llvm.va_end(i8* nonnull %6), !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3080
  ret void, !dbg !3080
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3081 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3082, !tbaa !621
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3082
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #25, !dbg !3083
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.113, i64 0, i64 0)) #25, !dbg !3083
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.114, i64 0, i64 0), i32 5) #25, !dbg !3084
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.115, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.116, i64 0, i64 0)) #25, !dbg !3084
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.117, i64 0, i64 0), i32 5) #25, !dbg !3085
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.118, i64 0, i64 0)) #25, !dbg !3085
  ret void, !dbg !3086
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3087 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  %3 = udiv i64 9223372036854775807, %1, !dbg !3092
  %4 = icmp ult i64 %3, %0, !dbg !3092
  br i1 %4, label %5, label %6, !dbg !3094

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3095
  unreachable, !dbg !3095

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %7, metadata !3097, metadata !DIExpression()) #25, !dbg !3103
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !3105
  call void @llvm.dbg.value(metadata i8* %8, metadata !3102, metadata !DIExpression()) #25, !dbg !3103
  %9 = icmp eq i8* %8, null, !dbg !3106
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3108
  br i1 %11, label %12, label %13, !dbg !3108

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3109
  unreachable, !dbg !3109

13:                                               ; preds = %6
  ret i8* %8, !dbg !3110
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3098 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3111
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %2, metadata !3102, metadata !DIExpression()), !dbg !3111
  %3 = icmp eq i8* %2, null, !dbg !3113
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3114
  br i1 %5, label %6, label %7, !dbg !3114

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3115
  unreachable, !dbg !3115

7:                                                ; preds = %1
  ret i8* %2, !dbg !3116
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3121, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %2, metadata !3123, metadata !DIExpression()), !dbg !3124
  %4 = udiv i64 9223372036854775807, %2, !dbg !3125
  %5 = icmp ult i64 %4, %1, !dbg !3125
  br i1 %5, label %6, label %7, !dbg !3127

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !3128
  unreachable, !dbg !3128

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()) #25, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %8, metadata !3135, metadata !DIExpression()) #25, !dbg !3136
  %9 = icmp eq i64 %8, 0, !dbg !3138
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3140
  br i1 %11, label %12, label %13, !dbg !3140

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !3141
  br label %19, !dbg !3143

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !3144
  call void @llvm.dbg.value(metadata i8* %14, metadata !3130, metadata !DIExpression()) #25, !dbg !3136
  %15 = icmp eq i8* %14, null, !dbg !3145
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3147
  br i1 %17, label %18, label %19, !dbg !3147

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3148
  unreachable, !dbg !3148

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3136
  ret i8* %20, !dbg !3149
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3150
  %3 = icmp eq i64 %1, 0, !dbg !3151
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3152
  br i1 %5, label %6, label %7, !dbg !3152

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !3153
  br label %13, !dbg !3154

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !3155
  call void @llvm.dbg.value(metadata i8* %8, metadata !3130, metadata !DIExpression()), !dbg !3150
  %9 = icmp eq i8* %8, null, !dbg !3156
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3157
  br i1 %11, label %12, label %13, !dbg !3157

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3158
  unreachable, !dbg !3158

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3150
  ret i8* %14, !dbg !3159
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64* %1, metadata !187, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %2, metadata !188, metadata !DIExpression()), !dbg !3160
  %4 = load i64, i64* %1, align 8, !dbg !3161, !tbaa !913
  call void @llvm.dbg.value(metadata i64 %4, metadata !189, metadata !DIExpression()), !dbg !3160
  %5 = icmp eq i8* %0, null, !dbg !3162
  br i1 %5, label %6, label %20, !dbg !3164

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3165
  br i1 %7, label %8, label %13, !dbg !3168

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression()), !dbg !3160
  %10 = icmp ugt i64 %2, 128, !dbg !3171
  %11 = zext i1 %10 to i64, !dbg !3171
  %12 = add nuw nsw i64 %9, %11, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %12, metadata !189, metadata !DIExpression()), !dbg !3160
  br label %13, !dbg !3173

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3160
  call void @llvm.dbg.value(metadata i64 %14, metadata !189, metadata !DIExpression()), !dbg !3160
  %15 = udiv i64 9223372036854775807, %2, !dbg !3174
  %16 = icmp ult i64 %15, %14, !dbg !3174
  br i1 %16, label %19, label %17, !dbg !3176

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !189, metadata !DIExpression()), !dbg !3160
  store i64 %14, i64* %1, align 8, !dbg !3177, !tbaa !913
  %18 = mul i64 %14, %2, !dbg !3178
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()) #25, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %28, metadata !3135, metadata !DIExpression()) #25, !dbg !3179
  br label %31, !dbg !3181

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3182
  unreachable, !dbg !3182

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3183
  %22 = icmp ugt i64 %21, %4, !dbg !3186
  br i1 %22, label %24, label %23, !dbg !3187

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !3188
  unreachable, !dbg !3188

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3189
  %26 = add nuw i64 %4, 1, !dbg !3190
  %27 = add i64 %26, %25, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %27, metadata !189, metadata !DIExpression()), !dbg !3160
  store i64 %27, i64* %1, align 8, !dbg !3177, !tbaa !913
  %28 = mul i64 %27, %2, !dbg !3178
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()) #25, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %28, metadata !3135, metadata !DIExpression()) #25, !dbg !3179
  %29 = icmp eq i64 %28, 0, !dbg !3192
  br i1 %29, label %30, label %31, !dbg !3181

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !3193
  br label %38, !dbg !3194

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %33, metadata !3130, metadata !DIExpression()) #25, !dbg !3179
  %34 = icmp eq i8* %33, null, !dbg !3196
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3197
  br i1 %36, label %37, label %38, !dbg !3197

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !3198
  unreachable, !dbg !3198

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3179
  ret i8* %39, !dbg !3199
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3200 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()) #25, !dbg !3204
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !3102, metadata !DIExpression()) #25, !dbg !3204
  %3 = icmp eq i8* %2, null, !dbg !3207
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3208
  br i1 %5, label %6, label %7, !dbg !3208

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3209
  unreachable, !dbg !3209

7:                                                ; preds = %1
  ret i8* %2, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3211 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64* %1, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()) #25, !dbg !3218
  call void @llvm.dbg.value(metadata i64* %1, metadata !187, metadata !DIExpression()) #25, !dbg !3218
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()) #25, !dbg !3218
  %3 = load i64, i64* %1, align 8, !dbg !3220, !tbaa !913
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()) #25, !dbg !3218
  %4 = icmp eq i8* %0, null, !dbg !3221
  br i1 %4, label %5, label %10, !dbg !3222

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3223
  br i1 %6, label %17, label %7, !dbg !3224

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()) #25, !dbg !3218
  %8 = icmp slt i64 %3, 0, !dbg !3225
  br i1 %8, label %9, label %17, !dbg !3226

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3227
  unreachable, !dbg !3227

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3228
  br i1 %11, label %13, label %12, !dbg !3229

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3230
  unreachable, !dbg !3230

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3231
  %15 = add nuw nsw i64 %3, 1, !dbg !3232
  %16 = add nuw nsw i64 %15, %14, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %16, metadata !189, metadata !DIExpression()) #25, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()) #25, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %16, metadata !3135, metadata !DIExpression()) #25, !dbg !3234
  br label %17, !dbg !3236

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3237
  store i64 %18, i64* %1, align 8, !dbg !3237, !tbaa !913
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %19, metadata !3130, metadata !DIExpression()) #25, !dbg !3234
  %20 = icmp eq i8* %19, null, !dbg !3239
  br i1 %20, label %21, label %22, !dbg !3240

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3241
  unreachable, !dbg !3241

22:                                               ; preds = %17
  ret i8* %19, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()) #25, !dbg !3252
  call void @llvm.dbg.value(metadata i64 1, metadata !3250, metadata !DIExpression()) #25, !dbg !3252
  %2 = icmp slt i64 %0, 0, !dbg !3254
  br i1 %2, label %6, label %3, !dbg !3256

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %4, metadata !3251, metadata !DIExpression()) #25, !dbg !3252
  %5 = icmp eq i8* %4, null, !dbg !3258
  br i1 %5, label %6, label %7, !dbg !3259

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3260
  unreachable, !dbg !3260

7:                                                ; preds = %3
  ret i8* %4, !dbg !3261
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3248 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3250, metadata !DIExpression()), !dbg !3262
  %3 = udiv i64 9223372036854775807, %1, !dbg !3263
  %4 = icmp ult i64 %3, %0, !dbg !3263
  br i1 %4, label %8, label %5, !dbg !3264

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %6, metadata !3251, metadata !DIExpression()), !dbg !3262
  %7 = icmp eq i8* %6, null, !dbg !3266
  br i1 %7, label %8, label %9, !dbg !3267

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3268
  unreachable, !dbg !3268

9:                                                ; preds = %5
  ret i8* %6, !dbg !3269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()) #25, !dbg !3279
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %3, metadata !3102, metadata !DIExpression()) #25, !dbg !3279
  %4 = icmp eq i8* %3, null, !dbg !3282
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3283
  br i1 %6, label %7, label %8, !dbg !3283

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3284
  unreachable, !dbg !3284

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3285, metadata !DIExpression()) #25, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #25, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()) #25, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3296
  ret i8* %3, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3302
  %3 = add i64 %2, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()) #25, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !3277, metadata !DIExpression()) #25, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !3097, metadata !DIExpression()) #25, !dbg !3306
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %4, metadata !3102, metadata !DIExpression()) #25, !dbg !3306
  %5 = icmp eq i8* %4, null, !dbg !3309
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3310
  br i1 %7, label %8, label %9, !dbg !3310

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3311
  unreachable, !dbg !3311

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3285, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %3, metadata !3293, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3314
  ret i8* %4, !dbg !3315
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3316 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3317, !tbaa !838
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.129, i64 0, i64 0), i32 5) #25, !dbg !3318
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), i8* %2) #25, !dbg !3319
  tail call void @abort() #27, !dbg !3320
  unreachable, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3321 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3328, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8** %1, metadata !3329, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %2, metadata !3330, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64* %3, metadata !3331, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %4, metadata !3332, metadata !DIExpression()), !dbg !3346
  %7 = bitcast i8** %6 to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #25, !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()), !dbg !3346
  %8 = icmp ult i32 %2, 37, !dbg !3348
  br i1 %8, label %10, label %9, !dbg !3348

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.134, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #27, !dbg !3348
  unreachable, !dbg !3348

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3351
  call void @llvm.dbg.value(metadata i8** %25, metadata !3334, metadata !DIExpression()), !dbg !3346
  %12 = tail call i32* @__errno_location() #29, !dbg !3352
  store i32 0, i32* %12, align 4, !dbg !3353, !tbaa !838
  call void @llvm.dbg.value(metadata i8* %0, metadata !3337, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8 undef, metadata !3340, metadata !DIExpression()), !dbg !3354
  %13 = tail call i16** @__ctype_b_loc() #29, !dbg !3346
  %14 = load i16*, i16** %13, align 8, !tbaa !621
  br label %15, !dbg !3355

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3354
  %17 = load i8, i8* %16, align 1, !dbg !3354, !tbaa !846
  call void @llvm.dbg.value(metadata i8 %17, metadata !3340, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %16, metadata !3337, metadata !DIExpression()), !dbg !3354
  %18 = zext i8 %17 to i64, !dbg !3356
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3356
  %20 = load i16, i16* %19, align 2, !dbg !3356, !tbaa !1858
  %21 = and i16 %20, 8192, !dbg !3356
  %22 = icmp eq i16 %21, 0, !dbg !3355
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %23, metadata !3337, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8 undef, metadata !3340, metadata !DIExpression()), !dbg !3354
  br i1 %22, label %24, label %15, !dbg !3355, !llvm.loop !3358

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3351
  %26 = icmp eq i8 %17, 45, !dbg !3360
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #25, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %28, metadata !3335, metadata !DIExpression()), !dbg !3346
  %29 = load i8*, i8** %25, align 8, !dbg !3363, !tbaa !621
  %30 = icmp eq i8* %29, %0, !dbg !3365
  br i1 %30, label %31, label %40, !dbg !3366

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3367
  br i1 %32, label %285, label %33, !dbg !3370

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3371, !tbaa !846
  %35 = icmp eq i8 %34, 0, !dbg !3371
  br i1 %35, label %285, label %36, !dbg !3372

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3371
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #26, !dbg !3373
  %39 = icmp eq i8* %38, null, !dbg !3373
  br i1 %39, label %285, label %47, !dbg !3374

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3375, !tbaa !838
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3377

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3336, metadata !DIExpression()), !dbg !3346
  br label %43, !dbg !3378

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3346
  call void @llvm.dbg.value(metadata i32 %44, metadata !3336, metadata !DIExpression()), !dbg !3346
  %45 = icmp eq i8* %4, null, !dbg !3380
  br i1 %45, label %46, label %47, !dbg !3382

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3335, metadata !DIExpression()), !dbg !3346
  store i64 %28, i64* %3, align 8, !dbg !3383, !tbaa !913
  br label %285, !dbg !3385

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3386, !tbaa !846
  %51 = sext i8 %50 to i32, !dbg !3386
  %52 = icmp eq i8 %50, 0, !dbg !3387
  br i1 %52, label %282, label %53, !dbg !3388

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3341, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 1, metadata !3344, metadata !DIExpression()), !dbg !3389
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #26, !dbg !3390
  %55 = icmp eq i8* %54, null, !dbg !3390
  br i1 %55, label %56, label %58, !dbg !3392

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3335, metadata !DIExpression()), !dbg !3346
  store i64 %49, i64* %3, align 8, !dbg !3393, !tbaa !913
  %57 = or i32 %48, 2, !dbg !3395
  br label %285, !dbg !3396

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !3397

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #26, !dbg !3398
  %61 = icmp eq i8* %60, null, !dbg !3398
  br i1 %61, label %72, label %62, !dbg !3401

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3402
  %64 = load i8, i8* %63, align 1, !dbg !3402, !tbaa !846
  %65 = sext i8 %64 to i32, !dbg !3402
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3403

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3404
  %68 = load i8, i8* %67, align 1, !dbg !3404, !tbaa !846
  %69 = icmp eq i8 %68, 66, !dbg !3407
  %70 = select i1 %69, i64 3, i64 1, !dbg !3408
  br label %72, !dbg !3408

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3341, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 2, metadata !3344, metadata !DIExpression()), !dbg !3389
  br label %72, !dbg !3409

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3344, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3341, metadata !DIExpression()), !dbg !3389
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3410

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 7, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3430
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3430
  %78 = mul i64 %49, %73, !dbg !3432
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3432
  call void @llvm.dbg.value(metadata i1 %77, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %77, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #25, !dbg !3430
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3430
  %82 = mul i64 %79, %73, !dbg !3432
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3432
  %84 = or i1 %77, %81, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %84, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %84, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #25, !dbg !3430
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3430
  %87 = mul i64 %83, %73, !dbg !3432
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3432
  %89 = or i1 %84, %86, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %89, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %89, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #25, !dbg !3430
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3430
  %92 = mul i64 %88, %73, !dbg !3432
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3432
  %94 = or i1 %89, %91, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %94, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %94, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #25, !dbg !3430
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3430
  %97 = mul i64 %93, %73, !dbg !3432
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3432
  %99 = or i1 %94, %96, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %99, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %99, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #25, !dbg !3430
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3430
  %102 = mul i64 %98, %73, !dbg !3432
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3432
  %104 = or i1 %99, %101, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %104, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %104, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3428
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3428
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #25, !dbg !3430
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3430
  %107 = mul i64 %103, %73, !dbg !3432
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3432
  %109 = or i1 %104, %106, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %109, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3419
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3419
  br label %272, !dbg !3434

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 8, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 7, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3439
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3439
  %113 = mul i64 %49, %73, !dbg !3440
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3440
  call void @llvm.dbg.value(metadata i1 %112, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 7, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %112, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 7, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #25, !dbg !3439
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3439
  %117 = mul i64 %114, %73, !dbg !3440
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3440
  %119 = or i1 %112, %116, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %119, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %119, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #25, !dbg !3439
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3439
  %122 = mul i64 %118, %73, !dbg !3440
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3440
  %124 = or i1 %119, %121, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %124, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %124, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #25, !dbg !3439
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3439
  %127 = mul i64 %123, %73, !dbg !3440
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3440
  %129 = or i1 %124, %126, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %129, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %129, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #25, !dbg !3439
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3439
  %132 = mul i64 %128, %73, !dbg !3440
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3440
  %134 = or i1 %129, %131, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %134, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %134, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #25, !dbg !3439
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3439
  %137 = mul i64 %133, %73, !dbg !3440
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3440
  %139 = or i1 %134, %136, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %139, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %139, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #25, !dbg !3439
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3439
  %142 = mul i64 %138, %73, !dbg !3440
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3440
  %144 = or i1 %139, %141, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %144, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %144, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3437
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #25, !dbg !3439
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3439
  %147 = mul i64 %143, %73, !dbg !3440
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3440
  %149 = or i1 %144, %146, !dbg !3441
  call void @llvm.dbg.value(metadata i1 %149, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3435
  br label %272, !dbg !3434

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3444
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3446
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3446
  %153 = mul i64 %49, %73, !dbg !3447
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3447
  call void @llvm.dbg.value(metadata i1 %152, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i1 %152, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3444
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #25, !dbg !3446
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3446
  %157 = mul i64 %154, %73, !dbg !3447
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3447
  %159 = or i1 %152, %156, !dbg !3448
  call void @llvm.dbg.value(metadata i1 %159, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i1 %159, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3444
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #25, !dbg !3446
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3446
  %162 = mul i64 %158, %73, !dbg !3447
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3447
  %164 = or i1 %159, %161, !dbg !3448
  call void @llvm.dbg.value(metadata i1 %164, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i1 %164, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3444
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #25, !dbg !3446
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3446
  %167 = mul i64 %163, %73, !dbg !3447
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3447
  %169 = or i1 %164, %166, !dbg !3448
  call void @llvm.dbg.value(metadata i1 %169, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i1 %169, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3444
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3444
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #25, !dbg !3446
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3446
  %172 = mul i64 %168, %73, !dbg !3447
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3447
  %174 = or i1 %169, %171, !dbg !3448
  call void @llvm.dbg.value(metadata i1 %174, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3442
  br label %272, !dbg !3434

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 6, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3453
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3453
  %178 = mul i64 %49, %73, !dbg !3454
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3454
  call void @llvm.dbg.value(metadata i1 %177, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %177, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 5, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #25, !dbg !3453
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3453
  %182 = mul i64 %179, %73, !dbg !3454
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3454
  %184 = or i1 %177, %181, !dbg !3455
  call void @llvm.dbg.value(metadata i1 %184, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %184, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 4, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #25, !dbg !3453
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3453
  %187 = mul i64 %183, %73, !dbg !3454
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3454
  %189 = or i1 %184, %186, !dbg !3455
  call void @llvm.dbg.value(metadata i1 %189, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %189, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #25, !dbg !3453
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3453
  %192 = mul i64 %188, %73, !dbg !3454
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3454
  %194 = or i1 %189, %191, !dbg !3455
  call void @llvm.dbg.value(metadata i1 %194, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %194, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #25, !dbg !3453
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3453
  %197 = mul i64 %193, %73, !dbg !3454
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3454
  %199 = or i1 %194, %196, !dbg !3455
  call void @llvm.dbg.value(metadata i1 %199, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %199, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3451
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3451
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #25, !dbg !3453
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3453
  %202 = mul i64 %198, %73, !dbg !3454
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3454
  %204 = or i1 %199, %201, !dbg !3455
  call void @llvm.dbg.value(metadata i1 %204, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3449
  br label %272, !dbg !3434

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3456
  call void @llvm.dbg.value(metadata i32 512, metadata !3427, metadata !DIExpression()) #25, !dbg !3456
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #25, !dbg !3458
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3458
  %208 = shl i64 %49, 9, !dbg !3459
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3459
  call void @llvm.dbg.value(metadata i1 %207, metadata !3345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3389
  br label %272, !dbg !3460

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3461
  call void @llvm.dbg.value(metadata i32 1024, metadata !3427, metadata !DIExpression()) #25, !dbg !3461
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #25, !dbg !3463
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3463
  %213 = shl i64 %49, 10, !dbg !3464
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3464
  call void @llvm.dbg.value(metadata i1 %212, metadata !3345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3389
  br label %272, !dbg !3465

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3416, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 undef, metadata !3417, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3468
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3468
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3470
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3470
  %218 = mul i64 %49, %73, !dbg !3471
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3471
  call void @llvm.dbg.value(metadata i1 %217, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i1 %217, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3468
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3468
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #25, !dbg !3470
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3470
  %222 = mul i64 %219, %73, !dbg !3471
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3471
  %224 = or i1 %217, %221, !dbg !3472
  call void @llvm.dbg.value(metadata i1 %224, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i1 %224, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3468
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3468
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #25, !dbg !3470
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3470
  %227 = mul i64 %223, %73, !dbg !3471
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3471
  %229 = or i1 %224, %226, !dbg !3472
  call void @llvm.dbg.value(metadata i1 %229, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3466
  br label %272, !dbg !3434

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3416, metadata !DIExpression()) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i32 undef, metadata !3417, metadata !DIExpression()) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3475
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3475
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3477
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3477
  %233 = mul i64 %49, %73, !dbg !3478
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3478
  call void @llvm.dbg.value(metadata i1 %232, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3473
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #25, !dbg !3477
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3477
  %237 = mul i64 %234, %73, !dbg !3478
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3478
  %239 = or i1 %232, %236, !dbg !3479
  call void @llvm.dbg.value(metadata i1 %239, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3473
  br label %272, !dbg !3434

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3416, metadata !DIExpression()) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 undef, metadata !3417, metadata !DIExpression()) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 3, metadata !3418, metadata !DIExpression()) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3482
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3484
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3484
  %243 = mul i64 %49, %73, !dbg !3485
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3485
  call void @llvm.dbg.value(metadata i1 %242, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 2, metadata !3418, metadata !DIExpression()) #25, !dbg !3480
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #25, !dbg !3484
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3484
  %247 = mul i64 %244, %73, !dbg !3485
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3485
  %249 = or i1 %242, %246, !dbg !3486
  call void @llvm.dbg.value(metadata i1 %249, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()) #25, !dbg !3480
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #25, !dbg !3484
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3484
  %252 = mul i64 %248, %73, !dbg !3485
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3485
  %254 = or i1 %249, %251, !dbg !3486
  call void @llvm.dbg.value(metadata i1 %254, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()) #25, !dbg !3480
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #25, !dbg !3484
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3484
  %257 = mul i64 %253, %73, !dbg !3485
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3485
  %259 = or i1 %254, %256, !dbg !3486
  call void @llvm.dbg.value(metadata i1 %259, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3480
  br label %272, !dbg !3434

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3487
  call void @llvm.dbg.value(metadata i32 2, metadata !3427, metadata !DIExpression()) #25, !dbg !3487
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #25, !dbg !3489
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3489
  %263 = shl i64 %49, 1, !dbg !3490
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3490
  call void @llvm.dbg.value(metadata i1 %262, metadata !3345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3389
  br label %272, !dbg !3491

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3335, metadata !DIExpression()), !dbg !3346
  store i64 %49, i64* %3, align 8, !dbg !3492, !tbaa !913
  %266 = or i32 %48, 2, !dbg !3493
  br label %285, !dbg !3494

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3416, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i32 undef, metadata !3417, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3411, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i32 undef, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3422, metadata !DIExpression()) #25, !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3427, metadata !DIExpression()) #25, !dbg !3497
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !3499
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3499
  call void @llvm.dbg.value(metadata i32 undef, metadata !3418, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i1 %269, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !3495
  %270 = mul i64 %49, %73, !dbg !3500
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3500
  br label %272, !dbg !3434

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3346
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %275, metadata !3345, metadata !DIExpression()), !dbg !3389
  %276 = or i32 %48, %275, !dbg !3434
  call void @llvm.dbg.value(metadata i32 %276, metadata !3336, metadata !DIExpression()), !dbg !3346
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3502
  store i8* %277, i8** %25, align 8, !dbg !3502, !tbaa !621
  %278 = load i8, i8* %277, align 1, !dbg !3503, !tbaa !846
  %279 = icmp eq i8 %278, 0, !dbg !3503
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %281, metadata !3336, metadata !DIExpression()), !dbg !3346
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3506
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3507
  call void @llvm.dbg.value(metadata i32 %284, metadata !3336, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %283, metadata !3335, metadata !DIExpression()), !dbg !3346
  store i64 %283, i64* %3, align 8, !dbg !3508, !tbaa !913
  br label %285, !dbg !3509

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25, !dbg !3510
  ret i32 %286, !dbg !3510
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3511 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3515 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3523
  %3 = icmp eq i64 %0, 0, !dbg !3524
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3525
  br i1 %5, label %11, label %6, !dbg !3525

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3520, metadata !DIExpression()), !dbg !3526
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3527
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3527
  br i1 %8, label %9, label %11, !dbg !3529

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3530
  store i32 12, i32* %10, align 4, !dbg !3532, !tbaa !838
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3517, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %12, metadata !3518, metadata !DIExpression()), !dbg !3523
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %14, metadata !3519, metadata !DIExpression()), !dbg !3523
  br label %15, !dbg !3534

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3523
  ret i8* %16, !dbg !3535
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3536 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3552, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8* %1, metadata !3553, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %2, metadata !3554, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3555, metadata !DIExpression()), !dbg !3561
  %6 = bitcast i32* %5 to i8*, !dbg !3562
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3562
  %7 = icmp eq i32* %0, null, !dbg !3563
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3565
  call void @llvm.dbg.value(metadata i32* %8, metadata !3552, metadata !DIExpression()), !dbg !3561
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %9, metadata !3556, metadata !DIExpression()), !dbg !3561
  %10 = icmp ugt i64 %9, -3, !dbg !3567
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3568
  br i1 %12, label %13, label %18, !dbg !3568

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3569
  br i1 %14, label %18, label %15, !dbg !3570

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3571, !tbaa !846
  call void @llvm.dbg.value(metadata i8 %16, metadata !3558, metadata !DIExpression()), !dbg !3572
  %17 = zext i8 %16 to i32, !dbg !3573
  store i32 %17, i32* %8, align 4, !dbg !3574, !tbaa !838
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3561
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3575
  ret i64 %19, !dbg !3575
}

; Function Attrs: nounwind
declare !dbg !3576 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3580 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3618, metadata !DIExpression()), !dbg !3623
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3624
  call void @llvm.dbg.value(metadata i1 undef, metadata !3619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3625, metadata !DIExpression()), !dbg !3629
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3631
  %4 = load i32, i32* %3, align 8, !dbg !3631, !tbaa !3632
  %5 = and i32 %4, 32, !dbg !3634
  %6 = icmp eq i32 %5, 0, !dbg !3634
  call void @llvm.dbg.value(metadata i1 %6, metadata !3621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3635
  %8 = icmp eq i32 %7, 0, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %8, metadata !3622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  br i1 %6, label %9, label %19, !dbg !3637

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %10, metadata !3619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3623
  %11 = or i1 %10, %8, !dbg !3640
  %12 = xor i1 %8, true, !dbg !3640
  %13 = sext i1 %12 to i32, !dbg !3640
  br i1 %11, label %22, label %14, !dbg !3640

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3641
  %16 = load i32, i32* %15, align 4, !dbg !3641, !tbaa !838
  %17 = icmp ne i32 %16, 9, !dbg !3642
  %18 = sext i1 %17 to i32, !dbg !3643
  br label %22, !dbg !3643

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3644

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3646
  store i32 0, i32* %21, align 4, !dbg !3648, !tbaa !838
  br label %22, !dbg !3646

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3623
  ret i32 %23, !dbg !3649
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3650 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3659
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3660
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3660
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3655, metadata !DIExpression()), !dbg !3661
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3662
  %5 = icmp eq i32 %4, 0, !dbg !3662
  br i1 %5, label %6, label %13, !dbg !3664

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3665
  %8 = load i16, i16* %7, align 16, !dbg !3665
  %9 = icmp eq i16 %8, 67, !dbg !3665
  br i1 %9, label %13, label %10, !dbg !3666

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !3667
  %12 = icmp ne i32 %11, 0, !dbg !3668
  br label %13, !dbg !3666

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3659
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3669
  ret i1 %14, !dbg !3669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3670 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %1, metadata !3674, metadata !DIExpression()), !dbg !3676
  %2 = icmp eq i8* %1, null, !dbg !3677
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.146, i64 0, i64 0), i8* %1, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %3, metadata !3674, metadata !DIExpression()), !dbg !3676
  %4 = load i8, i8* %3, align 1, !dbg !3680, !tbaa !846
  %5 = icmp eq i8 %4, 0, !dbg !3684
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i8* %3, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %6, metadata !3674, metadata !DIExpression()), !dbg !3676
  ret i8* %6, !dbg !3686
}

; Function Attrs: nounwind
declare !dbg !3687 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8* %1, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %2, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()) #25, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !3701, metadata !DIExpression()) #25, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()) #25, !dbg !3707
  call void @llvm.dbg.value(metadata i32 %0, metadata !3709, metadata !DIExpression()) #25, !dbg !3715
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3717
  call void @llvm.dbg.value(metadata i8* %4, metadata !3714, metadata !DIExpression()) #25, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %4, metadata !3703, metadata !DIExpression()) #25, !dbg !3707
  %5 = icmp eq i8* %4, null, !dbg !3718
  br i1 %5, label %6, label %9, !dbg !3719

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3720
  br i1 %7, label %19, label %8, !dbg !3723

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3724, !tbaa !846
  br label %19, !dbg !3725

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %10, metadata !3704, metadata !DIExpression()) #25, !dbg !3727
  %11 = icmp ult i64 %10, %2, !dbg !3728
  br i1 %11, label %12, label %14, !dbg !3730

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()) #25, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #25, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %13, metadata !3737, metadata !DIExpression()) #25, !dbg !3738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3740
  br label %19, !dbg !3741

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3742
  br i1 %15, label %19, label %16, !dbg !3745

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()) #25, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #25, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %17, metadata !3737, metadata !DIExpression()) #25, !dbg !3748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3750
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3751
  store i8 0, i8* %18, align 1, !dbg !3752, !tbaa !846
  br label %19, !dbg !3753

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3754
  ret i32 %20, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %0, metadata !3709, metadata !DIExpression()) #25, !dbg !3760
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %2, metadata !3714, metadata !DIExpression()) #25, !dbg !3760
  ret i8* %2, !dbg !3763
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3764 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3802, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 0, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 0, metadata !3805, metadata !DIExpression()), !dbg !3806
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %2, metadata !3804, metadata !DIExpression()), !dbg !3806
  %3 = icmp slt i32 %2, 0, !dbg !3808
  br i1 %3, label %4, label %6, !dbg !3810

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3811
  br label %24, !dbg !3812

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3813
  %8 = icmp eq i32 %7, 0, !dbg !3813
  br i1 %8, label %13, label %9, !dbg !3815

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3816
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3817
  %12 = icmp eq i64 %11, -1, !dbg !3818
  br i1 %12, label %16, label %13, !dbg !3819

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3820
  %15 = icmp eq i32 %14, 0, !dbg !3820
  br i1 %15, label %16, label %18, !dbg !3821

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3803, metadata !DIExpression()), !dbg !3806
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %21, metadata !3805, metadata !DIExpression()), !dbg !3806
  br label %24, !dbg !3823

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3824
  %20 = load i32, i32* %19, align 4, !dbg !3824, !tbaa !838
  call void @llvm.dbg.value(metadata i32 %20, metadata !3803, metadata !DIExpression()), !dbg !3806
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %21, metadata !3805, metadata !DIExpression()), !dbg !3806
  %22 = icmp eq i32 %20, 0, !dbg !3825
  br i1 %22, label %24, label %23, !dbg !3823

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3827, !tbaa !838
  call void @llvm.dbg.value(metadata i32 -1, metadata !3805, metadata !DIExpression()), !dbg !3806
  br label %24, !dbg !3829

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3806
  ret i32 %25, !dbg !3830
}

; Function Attrs: nofree nounwind
declare !dbg !3831 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3834 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3835 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3839 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3877, metadata !DIExpression()), !dbg !3878
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3879
  br i1 %2, label %6, label %3, !dbg !3881

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3882
  %5 = icmp eq i32 %4, 0, !dbg !3882
  br i1 %5, label %6, label %8, !dbg !3883

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3884
  br label %17, !dbg !3885

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3886, metadata !DIExpression()) #25, !dbg !3891
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3893
  %10 = load i32, i32* %9, align 8, !dbg !3893, !tbaa !3632
  %11 = and i32 %10, 256, !dbg !3895
  %12 = icmp eq i32 %11, 0, !dbg !3895
  br i1 %12, label %15, label %13, !dbg !3896

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3897
  br label %15, !dbg !3897

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3898
  br label %17, !dbg !3899

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3878
  ret i32 %18, !dbg !3900
}

; Function Attrs: nofree nounwind
declare !dbg !3901 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3904 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3943, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3944, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32 %2, metadata !3945, metadata !DIExpression()), !dbg !3949
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3950
  %5 = load i8*, i8** %4, align 8, !dbg !3950, !tbaa !3951
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3952
  %7 = load i8*, i8** %6, align 8, !dbg !3952, !tbaa !3953
  %8 = icmp eq i8* %5, %7, !dbg !3954
  br i1 %8, label %9, label %28, !dbg !3955

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3956
  %11 = load i8*, i8** %10, align 8, !dbg !3956, !tbaa !3957
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3958
  %13 = load i8*, i8** %12, align 8, !dbg !3958, !tbaa !3959
  %14 = icmp eq i8* %11, %13, !dbg !3960
  br i1 %14, label %15, label %28, !dbg !3961

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3962
  %17 = load i8*, i8** %16, align 8, !dbg !3962, !tbaa !3963
  %18 = icmp eq i8* %17, null, !dbg !3964
  br i1 %18, label %19, label %28, !dbg !3965

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3966
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %21, metadata !3946, metadata !DIExpression()), !dbg !3968
  %22 = icmp eq i64 %21, -1, !dbg !3969
  br i1 %22, label %30, label %23, !dbg !3971

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3972
  %25 = load i32, i32* %24, align 8, !dbg !3973, !tbaa !3632
  %26 = and i32 %25, -17, !dbg !3973
  store i32 %26, i32* %24, align 8, !dbg !3973, !tbaa !3632
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3974
  store i64 %21, i64* %27, align 8, !dbg !3975, !tbaa !3976
  br label %30, !dbg !3977

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3978
  br label %30, !dbg !3979

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3949
  ret i32 %31, !dbg !3980
}

; Function Attrs: nofree nounwind
declare !dbg !3981 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !157, !55, !61, !69, !159, !75, !81, !169, !151, !176, !193, !195, !199, !201, !203, !205, !207, !596, !598, !600, !602}
!llvm.ident = !{!604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604}
!llvm.module.flags = !{!605, !606, !607, !608, !609}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mknod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 25, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 32, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!28 = !{!29, !31, !7, !32, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 59, baseType: !34)
!33 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !35, line: 145, baseType: !36)
!35 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!0}
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !51)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !41, line: 50, size: 256, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!42 = !{!43, !46, !48, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 52, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !40, file: !41, line: 55, baseType: !47, size: 32, offset: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !40, file: !41, line: 56, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !41, line: 57, baseType: !47, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 5)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "Version", scope: !55, file: !56, line: 2, type: !44, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !58, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!57 = !{}
!58 = !{!53}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "file_name", scope: !61, file: !62, line: 46, type: !44, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !63, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!59, !64}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !61, file: !62, line: 56, type: !66, isLocal: true, isDefinition: true)
!66 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "exit_failure", scope: !69, file: !70, line: 24, type: !72, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !71, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!71 = !{!67}
!72 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "program_name", scope: !75, file: !76, line: 33, type: !44, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !77, globals: !78, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!77 = !{!31, !29}
!78 = !{!73}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !81, file: !82, line: 85, type: !145, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !104, globals: !108, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !{!14, !84, !89}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 242, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 46, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!92 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!104 = !{!47, !105, !106, !29}
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 46, baseType: !36)
!107 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!108 = !{!79, !109, !115, !127, !129, !134, !141, !143}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !81, file: !82, line: 101, type: !111, isLocal: false, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 320, elements: !113)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!113 = !{!114}
!114 = !DISubrange(count: 10)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !81, file: !82, line: 1052, type: !117, isLocal: false, isDefinition: true)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !82, line: 65, size: 448, elements: !118)
!118 = !{!119, !120, !121, !125, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !117, file: !82, line: 68, baseType: !14, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !82, line: 71, baseType: !47, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !117, file: !82, line: 75, baseType: !122, size: 256, offset: 64)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 8)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !117, file: !82, line: 78, baseType: !44, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !117, file: !82, line: 81, baseType: !44, size: 64, offset: 384)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !81, file: !82, line: 116, type: !117, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slot0", scope: !81, file: !82, line: 842, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 256)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "slotvec", scope: !81, file: !82, line: 845, type: !136, isLocal: true, isDefinition: true)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !82, line: 834, size: 128, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !137, file: !82, line: 836, baseType: !106, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !82, line: 837, baseType: !29, size: 64, offset: 64)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "nslots", scope: !81, file: !82, line: 843, type: !47, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "slotvec0", scope: !81, file: !82, line: 844, type: !137, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 704, elements: !147)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!147 = !{!148}
!148 = !DISubrange(count: 11)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !151, file: !152, line: 26, type: !154, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !153, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !{!149}
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 47)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "src/selinux.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !161, retainedTypes: !168, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !{!162}
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 78, baseType: !7, size: 32, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!165 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!168 = !{!106}
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!172}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 40, baseType: !7, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!175 = !{!31}
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !192, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = !{!179}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !181, file: !180, line: 186, baseType: !7, size: 32, elements: !190)
!180 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = distinct !DISubprogram(name: "x2nrealloc", scope: !180, file: !180, line: 174, type: !182, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{!31, !31, !184, !106}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!185 = !{!186, !187, !188, !189}
!186 = !DILocalVariable(name: "p", arg: 1, scope: !181, file: !180, line: 174, type: !31)
!187 = !DILocalVariable(name: "pn", arg: 2, scope: !181, file: !180, line: 174, type: !184)
!188 = !DILocalVariable(name: "s", arg: 3, scope: !181, file: !180, line: 174, type: !106)
!189 = !DILocalVariable(name: "n", scope: !181, file: !180, line: 176, type: !106)
!190 = !{!191}
!191 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!192 = !{!106, !29, !31}
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !198, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !{!5, !89}
!198 = !{!47, !105}
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !168, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!210}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !211, line: 41, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!213 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!217 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!218 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!219 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!224 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!225 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!226 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!251 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!252 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!253 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!254 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!255 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!256 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!257 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!258 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!260 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!261 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!262 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!321 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!482 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!483 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!484 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!485 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!486 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!487 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!489 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!490 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!492 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!493 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!494 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!495 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!500 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!502 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!528 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!529 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!530 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!531 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!532 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!537 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!538 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!539 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!540 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!597 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!599 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!604 = !{!"clang version 12.0.1"}
!605 = !{i32 7, !"Dwarf Version", i32 4}
!606 = !{i32 2, !"Debug Info Version", i32 3}
!607 = !{i32 1, !"wchar_size", i32 4}
!608 = !{i32 7, !"PIC Level", i32 2}
!609 = !{i32 7, !"PIE Level", i32 2}
!610 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !611, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !47}
!613 = !{!614}
!614 = !DILocalVariable(name: "status", arg: 1, scope: !610, file: !3, line: 49, type: !47)
!615 = !DILocation(line: 0, scope: !610)
!616 = !DILocation(line: 51, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !3, line: 51, column: 7)
!618 = !DILocation(line: 51, column: 7, scope: !610)
!619 = !DILocation(line: 52, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 52, column: 5)
!621 = !{!622, !622, i64 0}
!622 = !{!"any pointer", !623, i64 0}
!623 = !{!"omnipotent char", !624, i64 0}
!624 = !{!"Simple C/C++ TBAA"}
!625 = !DILocation(line: 55, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 54, column: 5)
!627 = !DILocation(line: 57, column: 7, scope: !626)
!628 = !DILocation(line: 590, column: 3, scope: !629, inlinedAt: !633)
!629 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !630, file: !630, line: 588, type: !631, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!630 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!631 = !DISubroutineType(types: !632)
!632 = !{null}
!633 = distinct !DILocation(line: 61, column: 7, scope: !626)
!634 = !DILocation(line: 63, column: 7, scope: !626)
!635 = !DILocation(line: 66, column: 7, scope: !626)
!636 = !DILocation(line: 71, column: 7, scope: !626)
!637 = !DILocation(line: 72, column: 7, scope: !626)
!638 = !DILocation(line: 73, column: 7, scope: !626)
!639 = !DILocation(line: 80, column: 7, scope: !626)
!640 = !DILocation(line: 86, column: 7, scope: !626)
!641 = !DILocalVariable(name: "program", arg: 1, scope: !642, file: !630, line: 634, type: !44)
!642 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !630, file: !630, line: 634, type: !643, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !44}
!645 = !{!641, !646, !655, !656, !658}
!646 = !DILocalVariable(name: "infomap", scope: !642, file: !630, line: 636, type: !647)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 896, elements: !653)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !642, file: !630, line: 636, size: 128, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !649, file: !630, line: 636, baseType: !44, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !630, line: 636, baseType: !44, size: 64, offset: 64)
!653 = !{!654}
!654 = !DISubrange(count: 7)
!655 = !DILocalVariable(name: "node", scope: !642, file: !630, line: 646, type: !44)
!656 = !DILocalVariable(name: "map_prog", scope: !642, file: !630, line: 647, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!658 = !DILocalVariable(name: "lc_messages", scope: !642, file: !630, line: 659, type: !44)
!659 = !DILocation(line: 0, scope: !642, inlinedAt: !660)
!660 = distinct !DILocation(line: 87, column: 7, scope: !626)
!661 = !DILocation(line: 636, column: 3, scope: !642, inlinedAt: !660)
!662 = !DILocation(line: 636, column: 67, scope: !642, inlinedAt: !660)
!663 = !DILocation(line: 647, column: 36, scope: !642, inlinedAt: !660)
!664 = !DILocation(line: 649, column: 3, scope: !642, inlinedAt: !660)
!665 = !DILocation(line: 649, column: 33, scope: !642, inlinedAt: !660)
!666 = !DILocation(line: 650, column: 13, scope: !642, inlinedAt: !660)
!667 = !DILocation(line: 649, column: 20, scope: !642, inlinedAt: !660)
!668 = !{!669, !622, i64 0}
!669 = !{!"infomap", !622, i64 0, !622, i64 8}
!670 = !DILocation(line: 649, column: 10, scope: !642, inlinedAt: !660)
!671 = !DILocation(line: 649, column: 28, scope: !642, inlinedAt: !660)
!672 = distinct !{!672, !664, !666, !673}
!673 = !{!"llvm.loop.mustprogress"}
!674 = !DILocation(line: 652, column: 17, scope: !675, inlinedAt: !660)
!675 = distinct !DILexicalBlock(scope: !642, file: !630, line: 652, column: 7)
!676 = !{!669, !622, i64 8}
!677 = !DILocation(line: 652, column: 7, scope: !675, inlinedAt: !660)
!678 = !DILocation(line: 652, column: 7, scope: !642, inlinedAt: !660)
!679 = !DILocation(line: 655, column: 3, scope: !642, inlinedAt: !660)
!680 = !DILocation(line: 659, column: 29, scope: !642, inlinedAt: !660)
!681 = !DILocation(line: 660, column: 7, scope: !682, inlinedAt: !660)
!682 = distinct !DILexicalBlock(scope: !642, file: !630, line: 660, column: 7)
!683 = !DILocation(line: 660, column: 19, scope: !682, inlinedAt: !660)
!684 = !DILocation(line: 660, column: 22, scope: !682, inlinedAt: !660)
!685 = !DILocation(line: 660, column: 7, scope: !642, inlinedAt: !660)
!686 = !DILocation(line: 666, column: 7, scope: !687, inlinedAt: !660)
!687 = distinct !DILexicalBlock(scope: !682, file: !630, line: 661, column: 5)
!688 = !DILocation(line: 668, column: 5, scope: !687, inlinedAt: !660)
!689 = !DILocation(line: 669, column: 3, scope: !642, inlinedAt: !660)
!690 = !DILocation(line: 671, column: 3, scope: !642, inlinedAt: !660)
!691 = !DILocation(line: 673, column: 1, scope: !642, inlinedAt: !660)
!692 = !DILocation(line: 89, column: 3, scope: !610)
!693 = !DISubprogram(name: "dcgettext", scope: !694, file: !694, line: 51, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!694 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!695 = !DISubroutineType(types: !696)
!696 = !{!29, !44, !44, !47}
!697 = !DISubprogram(name: "fputs_unlocked", scope: !698, file: !698, line: 667, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!698 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!699 = !DISubroutineType(types: !700)
!700 = !{!47, !44, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !704)
!703 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !720, !721, !722, !723, !726, !727, !729, !733, !736, !738, !741, !744, !745, !746, !747, !748}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !702, file: !703, line: 51, baseType: !47, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !702, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !702, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !702, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !702, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !702, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !702, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !702, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !702, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !702, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !702, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !702, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !702, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 36, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !702, file: !703, line: 70, baseType: !701, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !702, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !702, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !702, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 152, baseType: !725)
!725 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !702, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !702, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!728 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !702, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 1)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !702, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !703, line: 43, baseType: null)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !702, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !35, line: 153, baseType: !725)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !702, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !703, line: 37, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !702, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !703, line: 38, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !702, file: !703, line: 93, baseType: !701, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !702, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !702, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !702, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !702, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 20)
!752 = !DISubprogram(name: "setlocale", scope: !753, file: !753, line: 122, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!753 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!754 = !DISubroutineType(types: !755)
!755 = !{!29, !47, !44}
!756 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 93, type: !757, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!757 = !DISubroutineType(types: !758)
!758 = !{!47, !47, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!760 = !{!761, !762, !763, !766, !767, !768, !769, !770, !771, !772, !775, !779, !782, !785, !786, !790, !791, !792}
!761 = !DILocalVariable(name: "argc", arg: 1, scope: !756, file: !3, line: 93, type: !47)
!762 = !DILocalVariable(name: "argv", arg: 2, scope: !756, file: !3, line: 93, type: !759)
!763 = !DILocalVariable(name: "newmode", scope: !756, file: !3, line: 95, type: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !33, line: 69, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !35, line: 150, baseType: !7)
!766 = !DILocalVariable(name: "specified_mode", scope: !756, file: !3, line: 96, type: !44)
!767 = !DILocalVariable(name: "optc", scope: !756, file: !3, line: 97, type: !47)
!768 = !DILocalVariable(name: "expected_operands", scope: !756, file: !3, line: 98, type: !106)
!769 = !DILocalVariable(name: "node_type", scope: !756, file: !3, line: 99, type: !764)
!770 = !DILocalVariable(name: "scontext", scope: !756, file: !3, line: 100, type: !44)
!771 = !DILocalVariable(name: "set_security_context", scope: !756, file: !3, line: 101, type: !66)
!772 = !DILocalVariable(name: "umask_value", scope: !773, file: !3, line: 148, type: !764)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 147, column: 5)
!774 = distinct !DILexicalBlock(scope: !756, file: !3, line: 146, column: 7)
!775 = !DILocalVariable(name: "change", scope: !773, file: !3, line: 149, type: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !778, line: 25, flags: DIFlagFwdDecl)
!778 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!779 = !DILocalVariable(name: "ret", scope: !780, file: !3, line: 192, type: !47)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 191, column: 5)
!781 = distinct !DILexicalBlock(scope: !756, file: !3, line: 190, column: 7)
!782 = !DILocalVariable(name: "s_major", scope: !783, file: !3, line: 228, type: !44)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 227, column: 7)
!784 = distinct !DILexicalBlock(scope: !756, file: !3, line: 208, column: 5)
!785 = !DILocalVariable(name: "s_minor", scope: !783, file: !3, line: 229, type: !44)
!786 = !DILocalVariable(name: "i_major", scope: !783, file: !3, line: 230, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !788, line: 102, baseType: !789)
!788 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !35, line: 73, baseType: !36)
!790 = !DILocalVariable(name: "i_minor", scope: !783, file: !3, line: 230, type: !787)
!791 = !DILocalVariable(name: "device", scope: !783, file: !3, line: 231, type: !32)
!792 = !DILabel(scope: !784, name: "block_or_character", file: !3, line: 226)
!793 = !DILocation(line: 0, scope: !756)
!794 = !DILocation(line: 104, column: 21, scope: !756)
!795 = !DILocation(line: 104, column: 3, scope: !756)
!796 = !DILocation(line: 105, column: 3, scope: !756)
!797 = !DILocation(line: 106, column: 3, scope: !756)
!798 = !DILocation(line: 107, column: 3, scope: !756)
!799 = !DILocation(line: 109, column: 3, scope: !756)
!800 = !DILocation(line: 111, column: 3, scope: !756)
!801 = !DILocation(line: 111, column: 18, scope: !756)
!802 = !DILocation(line: 116, column: 28, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 114, column: 9)
!804 = distinct !DILexicalBlock(scope: !756, file: !3, line: 112, column: 5)
!805 = !DILocation(line: 117, column: 11, scope: !803)
!806 = distinct !{!806, !800, !807, !673}
!807 = !DILocation(line: 143, column: 5, scope: !756)
!808 = !DILocation(line: 131, column: 20, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 131, column: 20)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 124, column: 20)
!811 = distinct !DILexicalBlock(scope: !803, file: !3, line: 119, column: 15)
!812 = !DILocation(line: 131, column: 20, scope: !810)
!813 = !DILocation(line: 134, column: 22, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !3, line: 132, column: 13)
!815 = !DILocation(line: 133, column: 15, scope: !814)
!816 = !DILocation(line: 136, column: 13, scope: !814)
!817 = !DILocation(line: 138, column: 9, scope: !803)
!818 = !DILocation(line: 139, column: 9, scope: !803)
!819 = !DILocation(line: 141, column: 11, scope: !803)
!820 = !DILocation(line: 146, column: 7, scope: !774)
!821 = !DILocation(line: 146, column: 7, scope: !756)
!822 = !DILocation(line: 149, column: 36, scope: !773)
!823 = !DILocation(line: 0, scope: !773)
!824 = !DILocation(line: 150, column: 12, scope: !825)
!825 = distinct !DILexicalBlock(scope: !773, file: !3, line: 150, column: 11)
!826 = !DILocation(line: 150, column: 11, scope: !773)
!827 = !DILocation(line: 151, column: 9, scope: !825)
!828 = !DILocation(line: 152, column: 21, scope: !773)
!829 = !DILocation(line: 153, column: 7, scope: !773)
!830 = !DILocation(line: 154, column: 17, scope: !773)
!831 = !DILocation(line: 155, column: 13, scope: !773)
!832 = !DILocation(line: 155, column: 7, scope: !773)
!833 = !DILocation(line: 156, column: 19, scope: !834)
!834 = distinct !DILexicalBlock(scope: !773, file: !3, line: 156, column: 11)
!835 = !DILocation(line: 156, column: 11, scope: !773)
!836 = !DILocation(line: 157, column: 9, scope: !834)
!837 = !DILocation(line: 164, column: 32, scope: !756)
!838 = !{!839, !839, i64 0}
!839 = !{!"int", !623, i64 0}
!840 = !DILocation(line: 164, column: 29, scope: !756)
!841 = !DILocation(line: 165, column: 24, scope: !756)
!842 = !DILocation(line: 165, column: 35, scope: !756)
!843 = !DILocation(line: 165, column: 39, scope: !756)
!844 = !DILocation(line: 165, column: 46, scope: !756)
!845 = !DILocation(line: 165, column: 49, scope: !756)
!846 = !{!623, !623, i64 0}
!847 = !DILocation(line: 165, column: 69, scope: !756)
!848 = !DILocation(line: 164, column: 24, scope: !756)
!849 = !DILocation(line: 168, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !756, file: !3, line: 168, column: 7)
!851 = !DILocation(line: 168, column: 7, scope: !850)
!852 = !DILocation(line: 168, column: 21, scope: !850)
!853 = !DILocation(line: 168, column: 7, scope: !756)
!854 = !DILocation(line: 170, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 169, column: 5)
!856 = !DILocation(line: 171, column: 22, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !3, line: 170, column: 11)
!858 = !DILocation(line: 171, column: 9, scope: !857)
!859 = !DILocation(line: 173, column: 22, scope: !857)
!860 = !DILocation(line: 173, column: 70, scope: !857)
!861 = !DILocation(line: 173, column: 60, scope: !857)
!862 = !DILocation(line: 173, column: 53, scope: !857)
!863 = !DILocation(line: 173, column: 9, scope: !857)
!864 = !DILocation(line: 174, column: 34, scope: !865)
!865 = distinct !DILexicalBlock(scope: !855, file: !3, line: 174, column: 11)
!866 = !DILocation(line: 174, column: 44, scope: !865)
!867 = !DILocation(line: 174, column: 42, scope: !865)
!868 = !DILocation(line: 174, column: 51, scope: !865)
!869 = !DILocation(line: 174, column: 11, scope: !855)
!870 = !DILocation(line: 175, column: 9, scope: !865)
!871 = !DILocation(line: 177, column: 7, scope: !855)
!872 = !DILocation(line: 180, column: 25, scope: !873)
!873 = distinct !DILexicalBlock(scope: !756, file: !3, line: 180, column: 7)
!874 = !DILocation(line: 180, column: 7, scope: !756)
!875 = !DILocation(line: 182, column: 20, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 181, column: 5)
!877 = !DILocation(line: 183, column: 26, scope: !876)
!878 = !DILocation(line: 183, column: 33, scope: !876)
!879 = !DILocation(line: 183, column: 21, scope: !876)
!880 = !DILocation(line: 183, column: 14, scope: !876)
!881 = !DILocation(line: 182, column: 7, scope: !876)
!882 = !DILocation(line: 184, column: 34, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 184, column: 11)
!884 = !DILocation(line: 184, column: 44, scope: !883)
!885 = !DILocation(line: 184, column: 42, scope: !883)
!886 = !DILocation(line: 184, column: 51, scope: !883)
!887 = !DILocation(line: 184, column: 11, scope: !876)
!888 = !DILocation(line: 185, column: 9, scope: !883)
!889 = !DILocation(line: 187, column: 7, scope: !876)
!890 = !DILocation(line: 207, column: 23, scope: !756)
!891 = !DILocation(line: 207, column: 11, scope: !756)
!892 = !DILocation(line: 207, column: 3, scope: !756)
!893 = !DILocation(line: 224, column: 7, scope: !784)
!894 = !DILocation(line: 0, scope: !784)
!895 = !DILocation(line: 226, column: 5, scope: !784)
!896 = !DILocation(line: 228, column: 43, scope: !783)
!897 = !DILocation(line: 228, column: 31, scope: !783)
!898 = !DILocation(line: 0, scope: !783)
!899 = !DILocation(line: 229, column: 43, scope: !783)
!900 = !DILocation(line: 229, column: 31, scope: !783)
!901 = !DILocation(line: 230, column: 9, scope: !783)
!902 = !DILocation(line: 233, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !783, file: !3, line: 233, column: 13)
!904 = !DILocation(line: 233, column: 57, scope: !903)
!905 = !DILocation(line: 234, column: 13, scope: !903)
!906 = !DILocation(line: 235, column: 11, scope: !903)
!907 = !DILocation(line: 238, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !783, file: !3, line: 238, column: 13)
!909 = !DILocation(line: 238, column: 57, scope: !908)
!910 = !DILocation(line: 239, column: 13, scope: !908)
!911 = !DILocation(line: 240, column: 11, scope: !908)
!912 = !DILocation(line: 243, column: 18, scope: !783)
!913 = !{!914, !914, i64 0}
!914 = !{!"long", !623, i64 0}
!915 = !DILocalVariable(name: "__major", arg: 1, scope: !916, file: !917, line: 43, type: !7)
!916 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !917, file: !917, line: 43, type: !918, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!917 = !DIFile(filename: "/usr/include/sys/sysmacros.h", directory: "")
!918 = !DISubroutineType(types: !919)
!919 = !{!34, !7, !7}
!920 = !{!915, !921, !922}
!921 = !DILocalVariable(name: "__minor", arg: 2, scope: !916, file: !917, line: 43, type: !7)
!922 = !DILocalVariable(name: "__dev", scope: !916, file: !917, line: 43, type: !34)
!923 = !DILocation(line: 0, scope: !916, inlinedAt: !924)
!924 = distinct !DILocation(line: 243, column: 18, scope: !783)
!925 = !DILocation(line: 43, column: 1, scope: !916, inlinedAt: !924)
!926 = !DILocation(line: 245, column: 20, scope: !927)
!927 = distinct !DILexicalBlock(scope: !783, file: !3, line: 245, column: 13)
!928 = !DILocation(line: 245, column: 13, scope: !783)
!929 = !DILocation(line: 246, column: 11, scope: !927)
!930 = !DILocation(line: 253, column: 25, scope: !931)
!931 = distinct !DILexicalBlock(scope: !783, file: !3, line: 253, column: 13)
!932 = !DILocation(line: 253, column: 20, scope: !931)
!933 = !DILocation(line: 253, column: 42, scope: !931)
!934 = !DILocation(line: 253, column: 13, scope: !931)
!935 = !DILocation(line: 253, column: 63, scope: !931)
!936 = !DILocation(line: 253, column: 13, scope: !783)
!937 = !DILocation(line: 254, column: 11, scope: !931)
!938 = !DILocation(line: 255, column: 7, scope: !784)
!939 = !DILocation(line: 256, column: 7, scope: !784)
!940 = !DILocation(line: 261, column: 19, scope: !941)
!941 = distinct !DILexicalBlock(scope: !784, file: !3, line: 261, column: 11)
!942 = !DILocation(line: 261, column: 11, scope: !941)
!943 = !DILocation(line: 261, column: 42, scope: !941)
!944 = !DILocation(line: 261, column: 11, scope: !784)
!945 = !DILocation(line: 262, column: 9, scope: !941)
!946 = !DILocation(line: 266, column: 20, scope: !784)
!947 = !DILocation(line: 266, column: 61, scope: !784)
!948 = !DILocation(line: 266, column: 68, scope: !784)
!949 = !DILocation(line: 266, column: 56, scope: !784)
!950 = !DILocation(line: 266, column: 49, scope: !784)
!951 = !DILocation(line: 266, column: 7, scope: !784)
!952 = !DILocation(line: 267, column: 7, scope: !784)
!953 = !DILocation(line: 270, column: 22, scope: !954)
!954 = distinct !DILexicalBlock(scope: !756, file: !3, line: 270, column: 7)
!955 = !DILocation(line: 270, column: 38, scope: !954)
!956 = !DILocation(line: 270, column: 33, scope: !954)
!957 = !DILocation(line: 270, column: 25, scope: !954)
!958 = !DILocation(line: 270, column: 56, scope: !954)
!959 = !DILocation(line: 270, column: 7, scope: !756)
!960 = !DILocation(line: 271, column: 5, scope: !954)
!961 = !DILocation(line: 274, column: 3, scope: !756)
!962 = !DISubprogram(name: "bindtextdomain", scope: !694, file: !694, line: 86, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!963 = !DISubroutineType(types: !964)
!964 = !{!29, !44, !44}
!965 = !DISubprogram(name: "textdomain", scope: !694, file: !694, line: 82, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!966 = !DISubroutineType(types: !967)
!967 = !{!29, !44}
!968 = !DISubprogram(name: "atexit", scope: !969, file: !969, line: 595, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!969 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!970 = !DISubroutineType(types: !971)
!971 = !{!47, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!973 = !DISubprogram(name: "getopt_long", scope: !41, file: !41, line: 66, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!974 = !DISubroutineType(types: !975)
!975 = !{!47, !47, !976, !44, !978, !49}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!979 = !DISubprogram(name: "error", scope: !980, file: !980, line: 52, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!980 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!981 = !DISubroutineType(types: !982)
!982 = !{null, !47, !47, !44, null}
!983 = !DISubprogram(name: "umask", scope: !984, file: !984, line: 308, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!984 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!985 = !DISubroutineType(types: !986)
!986 = !{!7, !7}
!987 = !DISubprogram(name: "mknod", scope: !984, file: !984, line: 332, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!988 = !DISubroutineType(types: !989)
!989 = !{!47, !44, !7, !36}
!990 = !DISubprogram(name: "mkfifo", scope: !984, file: !984, line: 346, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!991 = !DISubroutineType(types: !992)
!992 = !{!47, !44, !7}
!993 = !DISubprogram(name: "lchmod", scope: !984, file: !984, line: 287, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!994 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !62, file: !62, line: 51, type: !643, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !995)
!995 = !{!996}
!996 = !DILocalVariable(name: "file", arg: 1, scope: !994, file: !62, line: 51, type: !44)
!997 = !DILocation(line: 0, scope: !994)
!998 = !DILocation(line: 53, column: 13, scope: !994)
!999 = !DILocation(line: 54, column: 1, scope: !994)
!1000 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !62, file: !62, line: 88, type: !1001, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !66}
!1003 = !{!1004}
!1004 = !DILocalVariable(name: "ignore", arg: 1, scope: !1000, file: !62, line: 88, type: !66)
!1005 = !DILocation(line: 0, scope: !1000)
!1006 = !DILocation(line: 90, column: 16, scope: !1000)
!1007 = !{!1008, !1008, i64 0}
!1008 = !{!"_Bool", !623, i64 0}
!1009 = !DILocation(line: 91, column: 1, scope: !1000)
!1010 = distinct !DISubprogram(name: "close_stdout", scope: !62, file: !62, line: 117, type: !631, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1011)
!1011 = !{!1012}
!1012 = !DILocalVariable(name: "write_error", scope: !1013, file: !62, line: 122, type: !44)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !62, line: 121, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !62, line: 119, column: 7)
!1015 = !DILocation(line: 119, column: 21, scope: !1014)
!1016 = !DILocation(line: 119, column: 7, scope: !1014)
!1017 = !DILocation(line: 119, column: 29, scope: !1014)
!1018 = !DILocation(line: 120, column: 7, scope: !1014)
!1019 = !DILocation(line: 120, column: 12, scope: !1014)
!1020 = !{i8 0, i8 2}
!1021 = !DILocation(line: 120, column: 25, scope: !1014)
!1022 = !DILocation(line: 120, column: 28, scope: !1014)
!1023 = !DILocation(line: 120, column: 34, scope: !1014)
!1024 = !DILocation(line: 119, column: 7, scope: !1010)
!1025 = !DILocation(line: 122, column: 33, scope: !1013)
!1026 = !DILocation(line: 0, scope: !1013)
!1027 = !DILocation(line: 123, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1013, file: !62, line: 123, column: 11)
!1029 = !DILocation(line: 0, scope: !1028)
!1030 = !DILocation(line: 123, column: 11, scope: !1013)
!1031 = !DILocation(line: 124, column: 36, scope: !1028)
!1032 = !DILocation(line: 124, column: 9, scope: !1028)
!1033 = !DILocation(line: 127, column: 9, scope: !1028)
!1034 = !DILocation(line: 129, column: 14, scope: !1013)
!1035 = !DILocation(line: 129, column: 7, scope: !1013)
!1036 = !DILocation(line: 134, column: 42, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1010, file: !62, line: 134, column: 7)
!1038 = !DILocation(line: 134, column: 28, scope: !1037)
!1039 = !DILocation(line: 134, column: 50, scope: !1037)
!1040 = !DILocation(line: 134, column: 7, scope: !1010)
!1041 = !DILocation(line: 135, column: 12, scope: !1037)
!1042 = !DILocation(line: 135, column: 5, scope: !1037)
!1043 = !DILocation(line: 136, column: 1, scope: !1010)
!1044 = distinct !DISubprogram(name: "mode_compile", scope: !160, file: !160, line: 134, type: !1045, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1055)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !44}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !160, line: 98, size: 128, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1048, file: !160, line: 100, baseType: !30, size: 8)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1048, file: !160, line: 101, baseType: !30, size: 8, offset: 8)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1048, file: !160, line: 102, baseType: !764, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1048, file: !160, line: 103, baseType: !764, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1048, file: !160, line: 104, baseType: !764, size: 32, offset: 96)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1063, !1064, !1065, !1067, !1071, !1073, !1074, !1075, !1076, !1077, !1080, !1081, !1082}
!1056 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1044, file: !160, line: 134, type: !44)
!1057 = !DILocalVariable(name: "mc", scope: !1044, file: !160, line: 137, type: !1047)
!1058 = !DILocalVariable(name: "used", scope: !1044, file: !160, line: 138, type: !106)
!1059 = !DILocalVariable(name: "p", scope: !1044, file: !160, line: 139, type: !44)
!1060 = !DILocalVariable(name: "octal_mode", scope: !1061, file: !160, line: 143, type: !7)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !160, line: 142, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1044, file: !160, line: 141, column: 7)
!1063 = !DILocalVariable(name: "mode", scope: !1061, file: !160, line: 144, type: !764)
!1064 = !DILocalVariable(name: "mentioned", scope: !1061, file: !160, line: 145, type: !764)
!1065 = !DILocalVariable(name: "needed", scope: !1066, file: !160, line: 168, type: !106)
!1066 = distinct !DILexicalBlock(scope: !1044, file: !160, line: 167, column: 3)
!1067 = !DILocalVariable(name: "affected", scope: !1068, file: !160, line: 179, type: !764)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !160, line: 177, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !160, line: 176, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1044, file: !160, line: 176, column: 3)
!1071 = !DILocalVariable(name: "op", scope: !1072, file: !160, line: 206, type: !30)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !160, line: 205, column: 9)
!1073 = !DILocalVariable(name: "value", scope: !1072, file: !160, line: 207, type: !764)
!1074 = !DILocalVariable(name: "mentioned", scope: !1072, file: !160, line: 208, type: !764)
!1075 = !DILocalVariable(name: "flag", scope: !1072, file: !160, line: 209, type: !30)
!1076 = !DILocalVariable(name: "change", scope: !1072, file: !160, line: 210, type: !1047)
!1077 = !DILocalVariable(name: "octal_mode", scope: !1078, file: !160, line: 217, type: !7)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !160, line: 216, column: 15)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !160, line: 213, column: 13)
!1080 = !DILabel(scope: !1068, name: "no_more_affected", file: !160, line: 202)
!1081 = !DILabel(scope: !1079, name: "no_more_values", file: !160, line: 284)
!1082 = !DILabel(scope: !1044, name: "invalid", file: !160, line: 307)
!1083 = !DILocation(line: 0, scope: !1044)
!1084 = !DILocation(line: 141, column: 14, scope: !1062)
!1085 = !DILocation(line: 141, column: 27, scope: !1062)
!1086 = !DILocation(line: 150, column: 41, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1061, file: !160, line: 149, column: 9)
!1088 = !DILocation(line: 0, scope: !1061)
!1089 = !DILocation(line: 150, column: 26, scope: !1087)
!1090 = !DILocation(line: 150, column: 43, scope: !1087)
!1091 = !DILocation(line: 150, column: 39, scope: !1087)
!1092 = !DILocation(line: 150, column: 46, scope: !1087)
!1093 = !DILocation(line: 151, column: 20, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !160, line: 151, column: 15)
!1095 = !DILocation(line: 151, column: 15, scope: !1087)
!1096 = !DILocation(line: 154, column: 21, scope: !1061)
!1097 = !DILocation(line: 154, column: 24, scope: !1061)
!1098 = distinct !{!1098, !1099, !1100, !673}
!1099 = !DILocation(line: 148, column: 7, scope: !1061)
!1100 = !DILocation(line: 154, column: 35, scope: !1061)
!1101 = !DILocation(line: 156, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1061, file: !160, line: 156, column: 11)
!1103 = !DILocation(line: 156, column: 11, scope: !1061)
!1104 = !DILocation(line: 160, column: 22, scope: !1061)
!1105 = !DILocation(line: 160, column: 36, scope: !1061)
!1106 = !DILocation(line: 160, column: 20, scope: !1061)
!1107 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1108, file: !160, line: 112, type: !764)
!1108 = distinct !DISubprogram(name: "make_node_op_equals", scope: !160, file: !160, line: 112, type: !1109, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!1047, !764, !764}
!1111 = !{!1107, !1112, !1113}
!1112 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1108, file: !160, line: 112, type: !764)
!1113 = !DILocalVariable(name: "p", scope: !1108, file: !160, line: 114, type: !1047)
!1114 = !DILocation(line: 0, scope: !1108, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 163, column: 14, scope: !1061)
!1116 = !DILocation(line: 114, column: 27, scope: !1108, inlinedAt: !1115)
!1117 = !DILocation(line: 115, column: 9, scope: !1108, inlinedAt: !1115)
!1118 = !{!1119, !623, i64 0}
!1119 = !{!"mode_change", !623, i64 0, !623, i64 1, !839, i64 4, !839, i64 8, !839, i64 12}
!1120 = !DILocation(line: 116, column: 6, scope: !1108, inlinedAt: !1115)
!1121 = !DILocation(line: 116, column: 11, scope: !1108, inlinedAt: !1115)
!1122 = !{!1119, !623, i64 1}
!1123 = !DILocation(line: 117, column: 6, scope: !1108, inlinedAt: !1115)
!1124 = !DILocation(line: 117, column: 15, scope: !1108, inlinedAt: !1115)
!1125 = !{!1119, !839, i64 4}
!1126 = !DILocation(line: 118, column: 6, scope: !1108, inlinedAt: !1115)
!1127 = !DILocation(line: 118, column: 12, scope: !1108, inlinedAt: !1115)
!1128 = !{!1119, !839, i64 8}
!1129 = !DILocation(line: 119, column: 6, scope: !1108, inlinedAt: !1115)
!1130 = !DILocation(line: 119, column: 16, scope: !1108, inlinedAt: !1115)
!1131 = !{!1119, !839, i64 12}
!1132 = !DILocation(line: 120, column: 8, scope: !1108, inlinedAt: !1115)
!1133 = !DILocation(line: 120, column: 13, scope: !1108, inlinedAt: !1115)
!1134 = !DILocation(line: 163, column: 7, scope: !1061)
!1135 = !DILocation(line: 169, column: 27, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !160, line: 169, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1066, file: !160, line: 169, column: 5)
!1138 = !DILocation(line: 0, scope: !1137)
!1139 = !DILocation(line: 0, scope: !1066)
!1140 = !DILocation(line: 169, column: 5, scope: !1137)
!1141 = !DILocation(line: 170, column: 41, scope: !1136)
!1142 = !DILocation(line: 170, column: 14, scope: !1136)
!1143 = !DILocation(line: 169, column: 32, scope: !1136)
!1144 = !DILocation(line: 169, column: 5, scope: !1136)
!1145 = distinct !{!1145, !1140, !1146, !673}
!1146 = !DILocation(line: 170, column: 53, scope: !1137)
!1147 = !DILocalVariable(name: "n", arg: 1, scope: !1148, file: !180, line: 99, type: !106)
!1148 = distinct !DISubprogram(name: "xnmalloc", scope: !180, file: !180, line: 99, type: !1149, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!31, !106, !106}
!1151 = !{!1147, !1152}
!1152 = !DILocalVariable(name: "s", arg: 2, scope: !1148, file: !180, line: 99, type: !106)
!1153 = !DILocation(line: 0, scope: !1148, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 171, column: 10, scope: !1066)
!1155 = !DILocation(line: 101, column: 7, scope: !1156, inlinedAt: !1154)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !180, line: 101, column: 7)
!1157 = !DILocation(line: 101, column: 7, scope: !1148, inlinedAt: !1154)
!1158 = !DILocation(line: 102, column: 5, scope: !1156, inlinedAt: !1154)
!1159 = !DILocation(line: 103, column: 21, scope: !1148, inlinedAt: !1154)
!1160 = !DILocation(line: 103, column: 10, scope: !1148, inlinedAt: !1154)
!1161 = !DILocation(line: 171, column: 10, scope: !1066)
!1162 = !DILocation(line: 176, column: 8, scope: !1070)
!1163 = !DILocation(line: 0, scope: !1070)
!1164 = !DILocation(line: 138, column: 10, scope: !1044)
!1165 = !DILocation(line: 0, scope: !1072)
!1166 = !DILocation(line: 0, scope: !1068)
!1167 = !DILocation(line: 182, column: 7, scope: !1068)
!1168 = !DILocation(line: 183, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !160, line: 182, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1068, file: !160, line: 182, column: 7)
!1171 = !DILocation(line: 183, column: 9, scope: !1169)
!1172 = !DILocation(line: 212, column: 11, scope: !1072)
!1173 = !DILocation(line: 192, column: 13, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !160, line: 184, column: 11)
!1175 = !DILocation(line: 195, column: 13, scope: !1174)
!1176 = !DILocation(line: 198, column: 13, scope: !1174)
!1177 = !DILocation(line: 0, scope: !1174)
!1178 = !DILocation(line: 182, column: 16, scope: !1169)
!1179 = !DILocation(line: 182, column: 7, scope: !1169)
!1180 = distinct !{!1180, !1181, !1182}
!1181 = !DILocation(line: 182, column: 7, scope: !1170)
!1182 = !DILocation(line: 201, column: 11, scope: !1170)
!1183 = !DILocation(line: 206, column: 21, scope: !1072)
!1184 = !DILocation(line: 179, column: 14, scope: !1068)
!1185 = !DILocation(line: 206, column: 23, scope: !1072)
!1186 = !DILocation(line: 212, column: 19, scope: !1072)
!1187 = !DILocation(line: 219, column: 17, scope: !1078)
!1188 = !DILocation(line: 221, column: 51, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1078, file: !160, line: 220, column: 19)
!1190 = !DILocation(line: 0, scope: !1078)
!1191 = !DILocation(line: 221, column: 36, scope: !1189)
!1192 = !DILocation(line: 221, column: 53, scope: !1189)
!1193 = !DILocation(line: 221, column: 49, scope: !1189)
!1194 = !DILocation(line: 221, column: 56, scope: !1189)
!1195 = !DILocation(line: 222, column: 30, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !160, line: 222, column: 25)
!1197 = !DILocation(line: 222, column: 25, scope: !1189)
!1198 = !DILocation(line: 225, column: 31, scope: !1078)
!1199 = !DILocation(line: 225, column: 34, scope: !1078)
!1200 = distinct !{!1200, !1187, !1201, !673}
!1201 = !DILocation(line: 225, column: 45, scope: !1078)
!1202 = !DILocation(line: 227, column: 21, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1078, file: !160, line: 227, column: 21)
!1204 = !DILocation(line: 227, column: 30, scope: !1203)
!1205 = !DILocation(line: 227, column: 37, scope: !1203)
!1206 = !DILocation(line: 239, column: 16, scope: !1079)
!1207 = !DILocation(line: 240, column: 15, scope: !1079)
!1208 = !DILocation(line: 245, column: 16, scope: !1079)
!1209 = !DILocation(line: 246, column: 15, scope: !1079)
!1210 = !DILocation(line: 251, column: 16, scope: !1079)
!1211 = !DILocation(line: 252, column: 15, scope: !1079)
!1212 = !DILocation(line: 259, column: 25, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !160, line: 258, column: 15)
!1214 = distinct !DILexicalBlock(scope: !1079, file: !160, line: 258, column: 15)
!1215 = !DILocation(line: 0, scope: !1079)
!1216 = !DILocation(line: 256, column: 20, scope: !1079)
!1217 = !DILocation(line: 259, column: 17, scope: !1213)
!1218 = !DILocation(line: 262, column: 27, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !160, line: 260, column: 19)
!1220 = !DILocation(line: 263, column: 21, scope: !1219)
!1221 = !DILocation(line: 265, column: 27, scope: !1219)
!1222 = !DILocation(line: 266, column: 21, scope: !1219)
!1223 = !DILocation(line: 268, column: 27, scope: !1219)
!1224 = !DILocation(line: 269, column: 21, scope: !1219)
!1225 = !DILocation(line: 275, column: 27, scope: !1219)
!1226 = !DILocation(line: 276, column: 21, scope: !1219)
!1227 = !DILocation(line: 279, column: 27, scope: !1219)
!1228 = !DILocation(line: 280, column: 21, scope: !1219)
!1229 = !DILocation(line: 258, column: 24, scope: !1213)
!1230 = !DILocation(line: 258, column: 15, scope: !1213)
!1231 = distinct !{!1231, !1232, !1233}
!1232 = !DILocation(line: 258, column: 15, scope: !1214)
!1233 = !DILocation(line: 283, column: 19, scope: !1214)
!1234 = !DILocation(line: 208, column: 18, scope: !1072)
!1235 = !DILocation(line: 287, column: 28, scope: !1072)
!1236 = !DILocation(line: 288, column: 19, scope: !1072)
!1237 = !DILocation(line: 288, column: 22, scope: !1072)
!1238 = !DILocation(line: 289, column: 19, scope: !1072)
!1239 = !DILocation(line: 289, column: 24, scope: !1072)
!1240 = !DILocation(line: 290, column: 19, scope: !1072)
!1241 = !DILocation(line: 290, column: 28, scope: !1072)
!1242 = !DILocation(line: 291, column: 19, scope: !1072)
!1243 = !DILocation(line: 291, column: 25, scope: !1072)
!1244 = !DILocation(line: 293, column: 14, scope: !1072)
!1245 = !DILocation(line: 292, column: 19, scope: !1072)
!1246 = !DILocation(line: 292, column: 29, scope: !1072)
!1247 = !DILocation(line: 295, column: 14, scope: !1068)
!1248 = !DILocation(line: 295, column: 24, scope: !1068)
!1249 = !DILocation(line: 176, column: 28, scope: !1069)
!1250 = !DILocation(line: 176, column: 3, scope: !1069)
!1251 = distinct !{!1251, !1252, !1253}
!1252 = !DILocation(line: 176, column: 3, scope: !1070)
!1253 = !DILocation(line: 299, column: 5, scope: !1070)
!1254 = !DILocation(line: 303, column: 16, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !160, line: 302, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1044, file: !160, line: 301, column: 7)
!1257 = !DILocation(line: 303, column: 21, scope: !1255)
!1258 = !DILocation(line: 304, column: 7, scope: !1255)
!1259 = !DILocation(line: 307, column: 1, scope: !1044)
!1260 = !DILocation(line: 308, column: 3, scope: !1044)
!1261 = !DILocation(line: 309, column: 3, scope: !1044)
!1262 = !DILocation(line: 310, column: 1, scope: !1044)
!1263 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !160, file: !160, line: 316, type: !1045, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1264)
!1264 = !{!1265, !1266}
!1265 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1263, file: !160, line: 316, type: !44)
!1266 = !DILocalVariable(name: "ref_stats", scope: !1263, file: !160, line: 318, type: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1268, line: 26, size: 1152, elements: !1269)
!1268 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1269 = !{!1270, !1271, !1273, !1275, !1276, !1278, !1280, !1281, !1282, !1283, !1285, !1287, !1295, !1296, !1297}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1267, file: !1268, line: 28, baseType: !34, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1267, file: !1268, line: 33, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !35, line: 148, baseType: !36)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1267, file: !1268, line: 41, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !35, line: 151, baseType: !36)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1267, file: !1268, line: 42, baseType: !765, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1267, file: !1268, line: 44, baseType: !1277, size: 32, offset: 224)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !35, line: 146, baseType: !7)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1267, file: !1268, line: 45, baseType: !1279, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !35, line: 147, baseType: !7)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1267, file: !1268, line: 47, baseType: !47, size: 32, offset: 288)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1267, file: !1268, line: 49, baseType: !34, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1267, file: !1268, line: 54, baseType: !724, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1267, file: !1268, line: 58, baseType: !1284, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !35, line: 175, baseType: !725)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1267, file: !1268, line: 60, baseType: !1286, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !35, line: 180, baseType: !725)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1267, file: !1268, line: 71, baseType: !1288, size: 128, offset: 576)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1289, line: 10, size: 128, elements: !1290)
!1289 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1290 = !{!1291, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1288, file: !1289, line: 12, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 160, baseType: !725)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1288, file: !1289, line: 16, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !35, line: 197, baseType: !725)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1267, file: !1268, line: 72, baseType: !1288, size: 128, offset: 704)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1267, file: !1268, line: 73, baseType: !1288, size: 128, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1267, file: !1268, line: 86, baseType: !1298, size: 192, offset: 960)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 192, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 3)
!1301 = !DILocation(line: 0, scope: !1263)
!1302 = !DILocation(line: 318, column: 3, scope: !1263)
!1303 = !DILocation(line: 318, column: 15, scope: !1263)
!1304 = !DILocation(line: 320, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1263, file: !160, line: 320, column: 7)
!1306 = !DILocation(line: 320, column: 35, scope: !1305)
!1307 = !DILocation(line: 320, column: 7, scope: !1263)
!1308 = !DILocation(line: 322, column: 41, scope: !1263)
!1309 = !{!1310, !839, i64 24}
!1310 = !{!"stat", !914, i64 0, !914, i64 8, !914, i64 16, !839, i64 24, !839, i64 28, !839, i64 32, !839, i64 36, !914, i64 40, !914, i64 48, !914, i64 56, !914, i64 64, !1311, i64 72, !1311, i64 88, !1311, i64 104, !623, i64 120}
!1311 = !{!"timespec", !914, i64 0, !914, i64 8}
!1312 = !DILocation(line: 0, scope: !1108, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 322, column: 10, scope: !1263)
!1314 = !DILocation(line: 114, column: 27, scope: !1108, inlinedAt: !1313)
!1315 = !DILocation(line: 115, column: 9, scope: !1108, inlinedAt: !1313)
!1316 = !DILocation(line: 116, column: 6, scope: !1108, inlinedAt: !1313)
!1317 = !DILocation(line: 116, column: 11, scope: !1108, inlinedAt: !1313)
!1318 = !DILocation(line: 117, column: 6, scope: !1108, inlinedAt: !1313)
!1319 = !DILocation(line: 117, column: 15, scope: !1108, inlinedAt: !1313)
!1320 = !DILocation(line: 118, column: 6, scope: !1108, inlinedAt: !1313)
!1321 = !DILocation(line: 118, column: 12, scope: !1108, inlinedAt: !1313)
!1322 = !DILocation(line: 119, column: 6, scope: !1108, inlinedAt: !1313)
!1323 = !DILocation(line: 119, column: 16, scope: !1108, inlinedAt: !1313)
!1324 = !DILocation(line: 120, column: 8, scope: !1108, inlinedAt: !1313)
!1325 = !DILocation(line: 120, column: 13, scope: !1108, inlinedAt: !1313)
!1326 = !DILocation(line: 322, column: 3, scope: !1263)
!1327 = !DILocation(line: 323, column: 1, scope: !1263)
!1328 = !DISubprogram(name: "stat", scope: !984, file: !984, line: 205, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!47, !44, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1332 = distinct !DISubprogram(name: "mode_adjust", scope: !160, file: !160, line: 339, type: !1333, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1338)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!764, !764, !66, !764, !1335, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1350, !1351, !1352}
!1339 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1332, file: !160, line: 339, type: !764)
!1340 = !DILocalVariable(name: "dir", arg: 2, scope: !1332, file: !160, line: 339, type: !66)
!1341 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1332, file: !160, line: 339, type: !764)
!1342 = !DILocalVariable(name: "changes", arg: 4, scope: !1332, file: !160, line: 340, type: !1335)
!1343 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1332, file: !160, line: 340, type: !1337)
!1344 = !DILocalVariable(name: "newmode", scope: !1332, file: !160, line: 343, type: !764)
!1345 = !DILocalVariable(name: "mode_bits", scope: !1332, file: !160, line: 346, type: !764)
!1346 = !DILocalVariable(name: "affected", scope: !1347, file: !160, line: 350, type: !764)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !160, line: 349, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !160, line: 348, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1332, file: !160, line: 348, column: 3)
!1350 = !DILocalVariable(name: "omit_change", scope: !1347, file: !160, line: 351, type: !764)
!1351 = !DILocalVariable(name: "value", scope: !1347, file: !160, line: 353, type: !764)
!1352 = !DILocalVariable(name: "preserved", scope: !1353, file: !160, line: 393, type: !764)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !160, line: 392, column: 11)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !160, line: 387, column: 9)
!1355 = !DILocation(line: 0, scope: !1332)
!1356 = !DILocation(line: 343, column: 28, scope: !1332)
!1357 = !DILocation(line: 348, column: 19, scope: !1348)
!1358 = !DILocation(line: 348, column: 24, scope: !1348)
!1359 = !DILocation(line: 348, column: 3, scope: !1349)
!1360 = !DILocation(line: 348, column: 10, scope: !1348)
!1361 = !DILocation(line: 350, column: 34, scope: !1347)
!1362 = !DILocation(line: 0, scope: !1347)
!1363 = !DILocation(line: 352, column: 52, scope: !1347)
!1364 = !DILocation(line: 352, column: 41, scope: !1347)
!1365 = !DILocation(line: 352, column: 39, scope: !1347)
!1366 = !DILocation(line: 353, column: 31, scope: !1347)
!1367 = !DILocation(line: 355, column: 7, scope: !1347)
!1368 = !DILocation(line: 362, column: 17, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1347, file: !160, line: 356, column: 9)
!1370 = !DILocation(line: 365, column: 28, scope: !1369)
!1371 = !DILocation(line: 365, column: 22, scope: !1369)
!1372 = !DILocation(line: 367, column: 30, scope: !1369)
!1373 = !DILocation(line: 367, column: 24, scope: !1369)
!1374 = !DILocation(line: 369, column: 30, scope: !1369)
!1375 = !DILocation(line: 369, column: 24, scope: !1369)
!1376 = !DILocation(line: 367, column: 21, scope: !1369)
!1377 = !DILocation(line: 369, column: 21, scope: !1369)
!1378 = !DILocation(line: 365, column: 17, scope: !1369)
!1379 = !DILocation(line: 371, column: 11, scope: !1369)
!1380 = !DILocation(line: 376, column: 24, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1369, file: !160, line: 376, column: 15)
!1382 = !DILocation(line: 376, column: 57, scope: !1381)
!1383 = !DILocation(line: 376, column: 15, scope: !1369)
!1384 = !DILocation(line: 384, column: 17, scope: !1347)
!1385 = !DILocation(line: 384, column: 55, scope: !1347)
!1386 = !DILocation(line: 384, column: 53, scope: !1347)
!1387 = !DILocation(line: 384, column: 13, scope: !1347)
!1388 = !DILocation(line: 386, column: 24, scope: !1347)
!1389 = !DILocation(line: 386, column: 15, scope: !1347)
!1390 = !DILocation(line: 386, column: 7, scope: !1347)
!1391 = !DILocation(line: 393, column: 33, scope: !1353)
!1392 = !DILocation(line: 393, column: 59, scope: !1353)
!1393 = !DILocation(line: 0, scope: !1353)
!1394 = !DILocation(line: 394, column: 42, scope: !1353)
!1395 = !DILocation(line: 394, column: 23, scope: !1353)
!1396 = !DILocation(line: 395, column: 32, scope: !1353)
!1397 = !DILocation(line: 395, column: 45, scope: !1353)
!1398 = !DILocation(line: 400, column: 21, scope: !1354)
!1399 = !DILocation(line: 401, column: 19, scope: !1354)
!1400 = !DILocation(line: 402, column: 11, scope: !1354)
!1401 = !DILocation(line: 405, column: 21, scope: !1354)
!1402 = !DILocation(line: 406, column: 22, scope: !1354)
!1403 = !DILocation(line: 406, column: 19, scope: !1354)
!1404 = !DILocation(line: 407, column: 11, scope: !1354)
!1405 = !DILocation(line: 348, column: 45, scope: !1348)
!1406 = distinct !{!1406, !1359, !1407, !673}
!1407 = !DILocation(line: 409, column: 5, scope: !1349)
!1408 = !DILocation(line: 346, column: 10, scope: !1332)
!1409 = !DILocation(line: 343, column: 10, scope: !1332)
!1410 = !DILocation(line: 411, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1332, file: !160, line: 411, column: 7)
!1412 = !DILocation(line: 411, column: 7, scope: !1332)
!1413 = !DILocation(line: 412, column: 17, scope: !1411)
!1414 = !DILocation(line: 412, column: 5, scope: !1411)
!1415 = !DILocation(line: 413, column: 3, scope: !1332)
!1416 = distinct !DISubprogram(name: "set_program_name", scope: !76, file: !76, line: 39, type: !643, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "argv0", arg: 1, scope: !1416, file: !76, line: 39, type: !44)
!1419 = !DILocalVariable(name: "slash", scope: !1416, file: !76, line: 46, type: !44)
!1420 = !DILocalVariable(name: "base", scope: !1416, file: !76, line: 47, type: !44)
!1421 = !DILocation(line: 0, scope: !1416)
!1422 = !DILocation(line: 51, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !76, line: 51, column: 7)
!1424 = !DILocation(line: 51, column: 7, scope: !1416)
!1425 = !DILocation(line: 55, column: 14, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !76, line: 52, column: 5)
!1427 = !DILocation(line: 54, column: 7, scope: !1426)
!1428 = !DILocation(line: 56, column: 7, scope: !1426)
!1429 = !DILocation(line: 59, column: 11, scope: !1416)
!1430 = !DILocation(line: 60, column: 17, scope: !1416)
!1431 = !DILocation(line: 60, column: 11, scope: !1416)
!1432 = !DILocation(line: 61, column: 12, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1416, file: !76, line: 61, column: 7)
!1434 = !DILocation(line: 61, column: 20, scope: !1433)
!1435 = !DILocation(line: 61, column: 25, scope: !1433)
!1436 = !DILocation(line: 61, column: 42, scope: !1433)
!1437 = !DILocation(line: 61, column: 28, scope: !1433)
!1438 = !DILocation(line: 61, column: 61, scope: !1433)
!1439 = !DILocation(line: 61, column: 7, scope: !1416)
!1440 = !DILocation(line: 64, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !76, line: 64, column: 11)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !76, line: 62, column: 5)
!1443 = !DILocation(line: 64, column: 36, scope: !1441)
!1444 = !DILocation(line: 64, column: 11, scope: !1442)
!1445 = !DILocation(line: 66, column: 24, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !76, line: 65, column: 9)
!1447 = !DILocation(line: 70, column: 41, scope: !1446)
!1448 = !DILocation(line: 72, column: 9, scope: !1446)
!1449 = !DILocation(line: 84, column: 16, scope: !1416)
!1450 = !DILocation(line: 90, column: 27, scope: !1416)
!1451 = !DILocation(line: 92, column: 1, scope: !1416)
!1452 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 122, type: !1453, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1456)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1455, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1456 = !{!1457, !1458, !1459}
!1457 = !DILocalVariable(name: "o", arg: 1, scope: !1452, file: !82, line: 122, type: !1455)
!1458 = !DILocalVariable(name: "e", scope: !1452, file: !82, line: 124, type: !47)
!1459 = !DILocalVariable(name: "p", scope: !1452, file: !82, line: 125, type: !1455)
!1460 = !DILocation(line: 0, scope: !1452)
!1461 = !DILocation(line: 124, column: 11, scope: !1452)
!1462 = !DILocation(line: 125, column: 40, scope: !1452)
!1463 = !DILocation(line: 125, column: 31, scope: !1452)
!1464 = !DILocation(line: 127, column: 9, scope: !1452)
!1465 = !DILocation(line: 128, column: 3, scope: !1452)
!1466 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 133, type: !1467, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1471)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!14, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "o", arg: 1, scope: !1466, file: !82, line: 133, type: !1469)
!1473 = !DILocation(line: 0, scope: !1466)
!1474 = !DILocation(line: 135, column: 11, scope: !1466)
!1475 = !DILocation(line: 135, column: 46, scope: !1466)
!1476 = !{!1477, !623, i64 0}
!1477 = !{!"quoting_options", !623, i64 0, !839, i64 4, !623, i64 8, !622, i64 40, !622, i64 48}
!1478 = !DILocation(line: 135, column: 3, scope: !1466)
!1479 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 141, type: !1480, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1455, !14}
!1482 = !{!1483, !1484}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1479, file: !82, line: 141, type: !1455)
!1484 = !DILocalVariable(name: "s", arg: 2, scope: !1479, file: !82, line: 141, type: !14)
!1485 = !DILocation(line: 0, scope: !1479)
!1486 = !DILocation(line: 143, column: 4, scope: !1479)
!1487 = !DILocation(line: 143, column: 39, scope: !1479)
!1488 = !DILocation(line: 143, column: 45, scope: !1479)
!1489 = !DILocation(line: 144, column: 1, scope: !1479)
!1490 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 152, type: !1491, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!47, !1455, !30, !47}
!1493 = !{!1494, !1495, !1496, !1497, !1499, !1501, !1502}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !82, line: 152, type: !1455)
!1495 = !DILocalVariable(name: "c", arg: 2, scope: !1490, file: !82, line: 152, type: !30)
!1496 = !DILocalVariable(name: "i", arg: 3, scope: !1490, file: !82, line: 152, type: !47)
!1497 = !DILocalVariable(name: "uc", scope: !1490, file: !82, line: 154, type: !1498)
!1498 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1499 = !DILocalVariable(name: "p", scope: !1490, file: !82, line: 155, type: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1501 = !DILocalVariable(name: "shift", scope: !1490, file: !82, line: 157, type: !47)
!1502 = !DILocalVariable(name: "r", scope: !1490, file: !82, line: 158, type: !47)
!1503 = !DILocation(line: 0, scope: !1490)
!1504 = !DILocation(line: 156, column: 6, scope: !1490)
!1505 = !DILocation(line: 156, column: 62, scope: !1490)
!1506 = !DILocation(line: 156, column: 57, scope: !1490)
!1507 = !DILocation(line: 157, column: 15, scope: !1490)
!1508 = !DILocation(line: 158, column: 12, scope: !1490)
!1509 = !DILocation(line: 158, column: 15, scope: !1490)
!1510 = !DILocation(line: 158, column: 25, scope: !1490)
!1511 = !DILocation(line: 159, column: 13, scope: !1490)
!1512 = !DILocation(line: 159, column: 18, scope: !1490)
!1513 = !DILocation(line: 159, column: 23, scope: !1490)
!1514 = !DILocation(line: 159, column: 6, scope: !1490)
!1515 = !DILocation(line: 160, column: 3, scope: !1490)
!1516 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 168, type: !1517, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!47, !1455, !47}
!1519 = !{!1520, !1521, !1522}
!1520 = !DILocalVariable(name: "o", arg: 1, scope: !1516, file: !82, line: 168, type: !1455)
!1521 = !DILocalVariable(name: "i", arg: 2, scope: !1516, file: !82, line: 168, type: !47)
!1522 = !DILocalVariable(name: "r", scope: !1516, file: !82, line: 170, type: !47)
!1523 = !DILocation(line: 0, scope: !1516)
!1524 = !DILocation(line: 171, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1516, file: !82, line: 171, column: 7)
!1526 = !DILocation(line: 171, column: 7, scope: !1516)
!1527 = !DILocation(line: 173, column: 10, scope: !1516)
!1528 = !{!1477, !839, i64 4}
!1529 = !DILocation(line: 174, column: 12, scope: !1516)
!1530 = !DILocation(line: 175, column: 3, scope: !1516)
!1531 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 179, type: !1532, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !1455, !44, !44}
!1534 = !{!1535, !1536, !1537}
!1535 = !DILocalVariable(name: "o", arg: 1, scope: !1531, file: !82, line: 179, type: !1455)
!1536 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1531, file: !82, line: 180, type: !44)
!1537 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1531, file: !82, line: 180, type: !44)
!1538 = !DILocation(line: 0, scope: !1531)
!1539 = !DILocation(line: 182, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !82, line: 182, column: 7)
!1541 = !DILocation(line: 182, column: 7, scope: !1531)
!1542 = !DILocation(line: 184, column: 6, scope: !1531)
!1543 = !DILocation(line: 184, column: 12, scope: !1531)
!1544 = !DILocation(line: 185, column: 8, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1531, file: !82, line: 185, column: 7)
!1546 = !DILocation(line: 185, column: 19, scope: !1545)
!1547 = !DILocation(line: 186, column: 5, scope: !1545)
!1548 = !DILocation(line: 187, column: 6, scope: !1531)
!1549 = !DILocation(line: 187, column: 17, scope: !1531)
!1550 = !{!1477, !622, i64 40}
!1551 = !DILocation(line: 188, column: 6, scope: !1531)
!1552 = !DILocation(line: 188, column: 18, scope: !1531)
!1553 = !{!1477, !622, i64 48}
!1554 = !DILocation(line: 189, column: 1, scope: !1531)
!1555 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 784, type: !1556, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!106, !29, !106, !44, !106, !1469}
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1559 = !DILocalVariable(name: "buffer", arg: 1, scope: !1555, file: !82, line: 784, type: !29)
!1560 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1555, file: !82, line: 784, type: !106)
!1561 = !DILocalVariable(name: "arg", arg: 3, scope: !1555, file: !82, line: 785, type: !44)
!1562 = !DILocalVariable(name: "argsize", arg: 4, scope: !1555, file: !82, line: 785, type: !106)
!1563 = !DILocalVariable(name: "o", arg: 5, scope: !1555, file: !82, line: 786, type: !1469)
!1564 = !DILocalVariable(name: "p", scope: !1555, file: !82, line: 788, type: !1469)
!1565 = !DILocalVariable(name: "e", scope: !1555, file: !82, line: 789, type: !47)
!1566 = !DILocalVariable(name: "r", scope: !1555, file: !82, line: 790, type: !106)
!1567 = !DILocation(line: 0, scope: !1555)
!1568 = !DILocation(line: 788, column: 37, scope: !1555)
!1569 = !DILocation(line: 789, column: 11, scope: !1555)
!1570 = !DILocation(line: 791, column: 43, scope: !1555)
!1571 = !DILocation(line: 791, column: 53, scope: !1555)
!1572 = !DILocation(line: 791, column: 60, scope: !1555)
!1573 = !DILocation(line: 792, column: 43, scope: !1555)
!1574 = !DILocation(line: 792, column: 58, scope: !1555)
!1575 = !DILocation(line: 790, column: 14, scope: !1555)
!1576 = !DILocation(line: 793, column: 9, scope: !1555)
!1577 = !DILocation(line: 794, column: 3, scope: !1555)
!1578 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 256, type: !1579, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1583)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!106, !29, !106, !44, !106, !14, !47, !1581, !44, !44}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1608, !1609, !1610, !1611, !1612, !1615, !1616, !1634, !1637, !1638, !1645, !1648, !1649, !1650, !1651, !1652, !1653}
!1584 = !DILocalVariable(name: "buffer", arg: 1, scope: !1578, file: !82, line: 256, type: !29)
!1585 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1578, file: !82, line: 256, type: !106)
!1586 = !DILocalVariable(name: "arg", arg: 3, scope: !1578, file: !82, line: 257, type: !44)
!1587 = !DILocalVariable(name: "argsize", arg: 4, scope: !1578, file: !82, line: 257, type: !106)
!1588 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1578, file: !82, line: 258, type: !14)
!1589 = !DILocalVariable(name: "flags", arg: 6, scope: !1578, file: !82, line: 258, type: !47)
!1590 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1578, file: !82, line: 259, type: !1581)
!1591 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1578, file: !82, line: 260, type: !44)
!1592 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1578, file: !82, line: 261, type: !44)
!1593 = !DILocalVariable(name: "i", scope: !1578, file: !82, line: 263, type: !106)
!1594 = !DILocalVariable(name: "len", scope: !1578, file: !82, line: 264, type: !106)
!1595 = !DILocalVariable(name: "orig_buffersize", scope: !1578, file: !82, line: 265, type: !106)
!1596 = !DILocalVariable(name: "quote_string", scope: !1578, file: !82, line: 266, type: !44)
!1597 = !DILocalVariable(name: "quote_string_len", scope: !1578, file: !82, line: 267, type: !106)
!1598 = !DILocalVariable(name: "backslash_escapes", scope: !1578, file: !82, line: 268, type: !66)
!1599 = !DILocalVariable(name: "unibyte_locale", scope: !1578, file: !82, line: 269, type: !66)
!1600 = !DILocalVariable(name: "elide_outer_quotes", scope: !1578, file: !82, line: 270, type: !66)
!1601 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1578, file: !82, line: 271, type: !66)
!1602 = !DILocalVariable(name: "encountered_single_quote", scope: !1578, file: !82, line: 272, type: !66)
!1603 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1578, file: !82, line: 273, type: !66)
!1604 = !DILocalVariable(name: "c", scope: !1605, file: !82, line: 402, type: !1498)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !82, line: 401, column: 5)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !82, line: 400, column: 3)
!1607 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 400, column: 3)
!1608 = !DILocalVariable(name: "esc", scope: !1605, file: !82, line: 403, type: !1498)
!1609 = !DILocalVariable(name: "is_right_quote", scope: !1605, file: !82, line: 404, type: !66)
!1610 = !DILocalVariable(name: "escaping", scope: !1605, file: !82, line: 405, type: !66)
!1611 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1605, file: !82, line: 406, type: !66)
!1612 = !DILocalVariable(name: "m", scope: !1613, file: !82, line: 610, type: !106)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 608, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 426, column: 9)
!1615 = !DILocalVariable(name: "printable", scope: !1613, file: !82, line: 612, type: !66)
!1616 = !DILocalVariable(name: "mbstate", scope: !1617, file: !82, line: 621, type: !1619)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !82, line: 620, column: 15)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !82, line: 614, column: 17)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1620, line: 6, baseType: !1621)
!1620 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1622, line: 21, baseType: !1623)
!1622 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 13, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1623, file: !1622, line: 15, baseType: !47, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1623, file: !1622, line: 20, baseType: !1627, size: 32, offset: 32)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1622, line: 16, size: 32, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1627, file: !1622, line: 18, baseType: !7, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1627, file: !1622, line: 19, baseType: !1631, size: 32)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 4)
!1634 = !DILocalVariable(name: "w", scope: !1635, file: !82, line: 631, type: !1636)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !82, line: 630, column: 19)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !107, line: 74, baseType: !47)
!1637 = !DILocalVariable(name: "bytes", scope: !1635, file: !82, line: 632, type: !106)
!1638 = !DILocalVariable(name: "j", scope: !1639, file: !82, line: 657, type: !106)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !82, line: 656, column: 27)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !82, line: 654, column: 29)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !82, line: 649, column: 23)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !82, line: 641, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !82, line: 636, column: 30)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !82, line: 634, column: 25)
!1645 = !DILocalVariable(name: "ilim", scope: !1646, file: !82, line: 684, type: !106)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !82, line: 681, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1613, file: !82, line: 680, column: 17)
!1648 = !DILabel(scope: !1578, name: "process_input", file: !82, line: 314)
!1649 = !DILabel(scope: !1614, name: "c_and_shell_escape", file: !82, line: 512)
!1650 = !DILabel(scope: !1614, name: "c_escape", file: !82, line: 517)
!1651 = !DILabel(scope: !1605, name: "store_escape", file: !82, line: 719)
!1652 = !DILabel(scope: !1605, name: "store_c", file: !82, line: 722)
!1653 = !DILabel(scope: !1578, name: "force_outer_quoting_style", file: !82, line: 763)
!1654 = !DILocation(line: 0, scope: !1578)
!1655 = !DILocation(line: 269, column: 25, scope: !1578)
!1656 = !DILocation(line: 269, column: 36, scope: !1578)
!1657 = !DILocation(line: 270, column: 8, scope: !1578)
!1658 = !DILocation(line: 273, column: 3, scope: !1578)
!1659 = !DILocation(line: 265, column: 10, scope: !1578)
!1660 = !DILocation(line: 266, column: 15, scope: !1578)
!1661 = !DILocation(line: 267, column: 10, scope: !1578)
!1662 = !DILocation(line: 268, column: 8, scope: !1578)
!1663 = !DILocation(line: 271, column: 8, scope: !1578)
!1664 = !DILocation(line: 272, column: 8, scope: !1578)
!1665 = !DILocation(line: 273, column: 8, scope: !1578)
!1666 = !DILocation(line: 314, column: 2, scope: !1578)
!1667 = !DILocation(line: 316, column: 3, scope: !1578)
!1668 = !DILocation(line: 323, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 317, column: 5)
!1670 = !DILocation(line: 323, column: 12, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1669, file: !82, line: 323, column: 11)
!1672 = !DILocation(line: 324, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !82, line: 324, column: 9)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !82, line: 324, column: 9)
!1675 = !DILocation(line: 324, column: 9, scope: !1674)
!1676 = !DILocation(line: 362, column: 26, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !82, line: 340, column: 11)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !82, line: 339, column: 13)
!1679 = distinct !DILexicalBlock(scope: !1669, file: !82, line: 338, column: 7)
!1680 = !DILocation(line: 363, column: 27, scope: !1677)
!1681 = !DILocation(line: 364, column: 11, scope: !1677)
!1682 = !DILocation(line: 365, column: 14, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !82, line: 365, column: 13)
!1684 = !DILocation(line: 365, column: 13, scope: !1679)
!1685 = !DILocation(line: 366, column: 43, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !82, line: 366, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !82, line: 366, column: 11)
!1688 = !DILocation(line: 366, column: 11, scope: !1687)
!1689 = !DILocation(line: 367, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !82, line: 367, column: 13)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !82, line: 367, column: 13)
!1692 = !DILocation(line: 367, column: 13, scope: !1691)
!1693 = !DILocation(line: 366, column: 70, scope: !1686)
!1694 = distinct !{!1694, !1688, !1695, !673}
!1695 = !DILocation(line: 367, column: 13, scope: !1687)
!1696 = !DILocation(line: 264, column: 10, scope: !1578)
!1697 = !DILocation(line: 370, column: 28, scope: !1679)
!1698 = !DILocation(line: 372, column: 7, scope: !1669)
!1699 = !DILocation(line: 376, column: 7, scope: !1669)
!1700 = !DILocation(line: 379, column: 7, scope: !1669)
!1701 = !DILocation(line: 381, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1669, file: !82, line: 381, column: 11)
!1703 = !DILocation(line: 381, column: 11, scope: !1669)
!1704 = !DILocation(line: 386, column: 12, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1669, file: !82, line: 386, column: 11)
!1706 = !DILocation(line: 386, column: 11, scope: !1669)
!1707 = !DILocation(line: 387, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !82, line: 387, column: 9)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !82, line: 387, column: 9)
!1710 = !DILocation(line: 387, column: 9, scope: !1709)
!1711 = !DILocation(line: 394, column: 7, scope: !1669)
!1712 = !DILocation(line: 397, column: 7, scope: !1669)
!1713 = !DILocation(line: 400, column: 8, scope: !1607)
!1714 = !DILocation(line: 0, scope: !1607)
!1715 = !DILocation(line: 400, column: 27, scope: !1606)
!1716 = !DILocation(line: 400, column: 19, scope: !1606)
!1717 = !DILocation(line: 400, column: 41, scope: !1606)
!1718 = !DILocation(line: 400, column: 48, scope: !1606)
!1719 = !DILocation(line: 400, column: 3, scope: !1607)
!1720 = !DILocation(line: 400, column: 60, scope: !1606)
!1721 = !DILocation(line: 0, scope: !1605)
!1722 = !DILocation(line: 409, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 408, column: 11)
!1724 = !DILocation(line: 411, column: 17, scope: !1723)
!1725 = !DILocation(line: 412, column: 39, scope: !1723)
!1726 = !DILocation(line: 416, column: 32, scope: !1723)
!1727 = !DILocation(line: 412, column: 19, scope: !1723)
!1728 = !DILocation(line: 412, column: 15, scope: !1723)
!1729 = !DILocation(line: 417, column: 11, scope: !1723)
!1730 = !DILocation(line: 417, column: 26, scope: !1723)
!1731 = !DILocation(line: 417, column: 14, scope: !1723)
!1732 = !DILocation(line: 417, column: 63, scope: !1723)
!1733 = !DILocation(line: 408, column: 11, scope: !1605)
!1734 = !DILocation(line: 424, column: 11, scope: !1605)
!1735 = !DILocation(line: 425, column: 7, scope: !1605)
!1736 = !DILocation(line: 428, column: 15, scope: !1614)
!1737 = !DILocation(line: 430, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !82, line: 430, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !82, line: 429, column: 13)
!1740 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 428, column: 15)
!1741 = !DILocation(line: 430, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !82, line: 430, column: 15)
!1743 = !DILocation(line: 430, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !82, line: 430, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !82, line: 430, column: 15)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !82, line: 430, column: 15)
!1747 = !DILocation(line: 430, column: 15, scope: !1745)
!1748 = !DILocation(line: 430, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !82, line: 430, column: 15)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !82, line: 430, column: 15)
!1751 = !DILocation(line: 430, column: 15, scope: !1750)
!1752 = !DILocation(line: 430, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !82, line: 430, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1746, file: !82, line: 430, column: 15)
!1755 = !DILocation(line: 430, column: 15, scope: !1754)
!1756 = !DILocation(line: 430, column: 15, scope: !1746)
!1757 = !DILocation(line: 430, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !82, line: 430, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1738, file: !82, line: 430, column: 15)
!1760 = !DILocation(line: 430, column: 15, scope: !1759)
!1761 = !DILocation(line: 438, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1739, file: !82, line: 437, column: 19)
!1763 = !DILocation(line: 438, column: 48, scope: !1762)
!1764 = !DILocation(line: 438, column: 59, scope: !1762)
!1765 = !DILocation(line: 440, column: 19, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !82, line: 440, column: 19)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !82, line: 440, column: 19)
!1768 = distinct !DILexicalBlock(scope: !1762, file: !82, line: 439, column: 17)
!1769 = !DILocation(line: 440, column: 19, scope: !1767)
!1770 = !DILocation(line: 441, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !82, line: 441, column: 19)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !82, line: 441, column: 19)
!1773 = !DILocation(line: 441, column: 19, scope: !1772)
!1774 = !DILocation(line: 442, column: 17, scope: !1768)
!1775 = !DILocation(line: 449, column: 20, scope: !1740)
!1776 = !DILocation(line: 454, column: 11, scope: !1614)
!1777 = !DILocation(line: 457, column: 19, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 455, column: 13)
!1779 = !DILocation(line: 463, column: 19, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1778, file: !82, line: 462, column: 19)
!1781 = !DILocation(line: 463, column: 47, scope: !1780)
!1782 = !DILocation(line: 463, column: 41, scope: !1780)
!1783 = !DILocation(line: 463, column: 52, scope: !1780)
!1784 = !DILocation(line: 462, column: 19, scope: !1778)
!1785 = !DILocation(line: 464, column: 25, scope: !1780)
!1786 = !DILocation(line: 464, column: 17, scope: !1780)
!1787 = !DILocation(line: 471, column: 25, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !82, line: 465, column: 19)
!1789 = !DILocation(line: 475, column: 21, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !82, line: 475, column: 21)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !82, line: 475, column: 21)
!1792 = !DILocation(line: 475, column: 21, scope: !1791)
!1793 = !DILocation(line: 476, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !82, line: 476, column: 21)
!1795 = distinct !DILexicalBlock(scope: !1788, file: !82, line: 476, column: 21)
!1796 = !DILocation(line: 476, column: 21, scope: !1795)
!1797 = !DILocation(line: 477, column: 21, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !82, line: 477, column: 21)
!1799 = distinct !DILexicalBlock(scope: !1788, file: !82, line: 477, column: 21)
!1800 = !DILocation(line: 477, column: 21, scope: !1799)
!1801 = !DILocation(line: 478, column: 21, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !82, line: 478, column: 21)
!1803 = distinct !DILexicalBlock(scope: !1788, file: !82, line: 478, column: 21)
!1804 = !DILocation(line: 478, column: 21, scope: !1803)
!1805 = !DILocation(line: 479, column: 21, scope: !1788)
!1806 = !DILocation(line: 492, column: 31, scope: !1614)
!1807 = !DILocation(line: 493, column: 31, scope: !1614)
!1808 = !DILocation(line: 495, column: 31, scope: !1614)
!1809 = !DILocation(line: 496, column: 31, scope: !1614)
!1810 = !DILocation(line: 497, column: 31, scope: !1614)
!1811 = !DILocation(line: 500, column: 15, scope: !1614)
!1812 = !DILocation(line: 502, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !82, line: 501, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 500, column: 15)
!1815 = !DILocation(line: 509, column: 33, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 509, column: 15)
!1817 = !DILocation(line: 0, scope: !1614)
!1818 = !DILocation(line: 512, column: 9, scope: !1614)
!1819 = !DILocation(line: 514, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 513, column: 15)
!1821 = !DILocation(line: 517, column: 9, scope: !1614)
!1822 = !DILocation(line: 518, column: 15, scope: !1614)
!1823 = !DILocation(line: 526, column: 15, scope: !1614)
!1824 = !DILocation(line: 526, column: 40, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 526, column: 15)
!1826 = !DILocation(line: 526, column: 47, scope: !1825)
!1827 = !DILocation(line: 526, column: 18, scope: !1825)
!1828 = !DILocation(line: 530, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 530, column: 15)
!1830 = !DILocation(line: 530, column: 15, scope: !1614)
!1831 = !DILocation(line: 535, column: 11, scope: !1614)
!1832 = !DILocation(line: 549, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 548, column: 15)
!1834 = !DILocation(line: 556, column: 15, scope: !1614)
!1835 = !DILocation(line: 558, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !82, line: 557, column: 13)
!1837 = distinct !DILexicalBlock(scope: !1614, file: !82, line: 556, column: 15)
!1838 = !DILocation(line: 561, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !82, line: 561, column: 19)
!1840 = !DILocation(line: 561, column: 30, scope: !1839)
!1841 = !DILocation(line: 570, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !82, line: 570, column: 15)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !82, line: 570, column: 15)
!1844 = !DILocation(line: 570, column: 15, scope: !1843)
!1845 = !DILocation(line: 571, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !82, line: 571, column: 15)
!1847 = distinct !DILexicalBlock(scope: !1836, file: !82, line: 571, column: 15)
!1848 = !DILocation(line: 571, column: 15, scope: !1847)
!1849 = !DILocation(line: 572, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !82, line: 572, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1836, file: !82, line: 572, column: 15)
!1852 = !DILocation(line: 572, column: 15, scope: !1851)
!1853 = !DILocation(line: 574, column: 13, scope: !1836)
!1854 = !DILocation(line: 614, column: 17, scope: !1613)
!1855 = !DILocation(line: 0, scope: !1613)
!1856 = !DILocation(line: 617, column: 29, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1618, file: !82, line: 615, column: 15)
!1858 = !{!1859, !1859, i64 0}
!1859 = !{!"short", !623, i64 0}
!1860 = !DILocation(line: 617, column: 27, scope: !1857)
!1861 = !DILocation(line: 678, column: 40, scope: !1613)
!1862 = !DILocation(line: 680, column: 23, scope: !1647)
!1863 = !DILocation(line: 621, column: 17, scope: !1617)
!1864 = !DILocation(line: 621, column: 27, scope: !1617)
!1865 = !DILocalVariable(name: "__dest", arg: 1, scope: !1866, file: !1867, line: 57, type: !31)
!1866 = distinct !DISubprogram(name: "memset", scope: !1867, file: !1867, line: 57, type: !1868, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1870)
!1867 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!31, !31, !47, !106}
!1870 = !{!1865, !1871, !1872}
!1871 = !DILocalVariable(name: "__ch", arg: 2, scope: !1866, file: !1867, line: 57, type: !47)
!1872 = !DILocalVariable(name: "__len", arg: 3, scope: !1866, file: !1867, line: 57, type: !106)
!1873 = !DILocation(line: 0, scope: !1866, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 622, column: 17, scope: !1617)
!1875 = !DILocation(line: 59, column: 10, scope: !1866, inlinedAt: !1874)
!1876 = !DILocation(line: 626, column: 29, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1617, file: !82, line: 626, column: 21)
!1878 = !DILocation(line: 626, column: 21, scope: !1617)
!1879 = !DILocation(line: 627, column: 29, scope: !1877)
!1880 = !DILocation(line: 627, column: 19, scope: !1877)
!1881 = !DILocation(line: 629, column: 17, scope: !1617)
!1882 = !DILocation(line: 624, column: 19, scope: !1617)
!1883 = !DILocation(line: 625, column: 27, scope: !1617)
!1884 = !DILocation(line: 631, column: 21, scope: !1635)
!1885 = !DILocation(line: 632, column: 56, scope: !1635)
!1886 = !DILocation(line: 632, column: 50, scope: !1635)
!1887 = !DILocation(line: 633, column: 53, scope: !1635)
!1888 = !DILocation(line: 0, scope: !1635)
!1889 = !DILocation(line: 632, column: 36, scope: !1635)
!1890 = !DILocation(line: 634, column: 25, scope: !1635)
!1891 = !DILocation(line: 644, column: 38, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1642, file: !82, line: 642, column: 23)
!1893 = !DILocation(line: 644, column: 48, scope: !1892)
!1894 = !DILocation(line: 644, column: 25, scope: !1892)
!1895 = !DILocation(line: 644, column: 51, scope: !1892)
!1896 = !DILocation(line: 645, column: 28, scope: !1892)
!1897 = !DILocation(line: 644, column: 34, scope: !1892)
!1898 = distinct !{!1898, !1894, !1896, !673}
!1899 = !DILocation(line: 655, column: 29, scope: !1640)
!1900 = !DILocation(line: 0, scope: !1639)
!1901 = !DILocation(line: 659, column: 49, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !82, line: 658, column: 29)
!1903 = distinct !DILexicalBlock(scope: !1639, file: !82, line: 658, column: 29)
!1904 = !DILocation(line: 659, column: 39, scope: !1902)
!1905 = !DILocation(line: 659, column: 31, scope: !1902)
!1906 = !DILocation(line: 658, column: 53, scope: !1902)
!1907 = !DILocation(line: 658, column: 43, scope: !1902)
!1908 = !DILocation(line: 658, column: 29, scope: !1903)
!1909 = distinct !{!1909, !1908, !1910, !673}
!1910 = !DILocation(line: 667, column: 33, scope: !1903)
!1911 = !DILocation(line: 674, column: 19, scope: !1617)
!1912 = !DILocation(line: 670, column: 41, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1641, file: !82, line: 670, column: 29)
!1914 = !DILocation(line: 670, column: 31, scope: !1913)
!1915 = !DILocation(line: 670, column: 29, scope: !1641)
!1916 = !DILocation(line: 672, column: 27, scope: !1641)
!1917 = !DILocation(line: 675, column: 26, scope: !1617)
!1918 = !DILocation(line: 675, column: 24, scope: !1617)
!1919 = !DILocation(line: 674, column: 19, scope: !1635)
!1920 = distinct !{!1920, !1881, !1921, !673}
!1921 = !DILocation(line: 675, column: 44, scope: !1617)
!1922 = !DILocation(line: 676, column: 15, scope: !1618)
!1923 = !DILocation(line: 680, column: 19, scope: !1647)
!1924 = !DILocation(line: 680, column: 45, scope: !1647)
!1925 = !DILocation(line: 684, column: 33, scope: !1646)
!1926 = !DILocation(line: 0, scope: !1646)
!1927 = !DILocation(line: 686, column: 17, scope: !1646)
!1928 = !DILocation(line: 405, column: 12, scope: !1605)
!1929 = !DILocation(line: 688, column: 43, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !82, line: 688, column: 25)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !82, line: 687, column: 19)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !82, line: 686, column: 17)
!1933 = distinct !DILexicalBlock(scope: !1646, file: !82, line: 686, column: 17)
!1934 = !DILocation(line: 690, column: 25, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !82, line: 690, column: 25)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !82, line: 689, column: 23)
!1937 = !DILocation(line: 690, column: 25, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !82, line: 690, column: 25)
!1939 = !DILocation(line: 690, column: 25, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !82, line: 690, column: 25)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !82, line: 690, column: 25)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !82, line: 690, column: 25)
!1943 = !DILocation(line: 690, column: 25, scope: !1941)
!1944 = !DILocation(line: 690, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !82, line: 690, column: 25)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !82, line: 690, column: 25)
!1947 = !DILocation(line: 690, column: 25, scope: !1946)
!1948 = !DILocation(line: 690, column: 25, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !82, line: 690, column: 25)
!1950 = distinct !DILexicalBlock(scope: !1942, file: !82, line: 690, column: 25)
!1951 = !DILocation(line: 690, column: 25, scope: !1950)
!1952 = !DILocation(line: 690, column: 25, scope: !1942)
!1953 = !DILocation(line: 690, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !82, line: 690, column: 25)
!1955 = distinct !DILexicalBlock(scope: !1935, file: !82, line: 690, column: 25)
!1956 = !DILocation(line: 690, column: 25, scope: !1955)
!1957 = !DILocation(line: 691, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !82, line: 691, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1936, file: !82, line: 691, column: 25)
!1960 = !DILocation(line: 691, column: 25, scope: !1959)
!1961 = !DILocation(line: 692, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !82, line: 692, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1936, file: !82, line: 692, column: 25)
!1964 = !DILocation(line: 692, column: 25, scope: !1963)
!1965 = !DILocation(line: 693, column: 38, scope: !1936)
!1966 = !DILocation(line: 693, column: 33, scope: !1936)
!1967 = !DILocation(line: 694, column: 23, scope: !1936)
!1968 = !DILocation(line: 695, column: 30, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1930, file: !82, line: 695, column: 30)
!1970 = !DILocation(line: 695, column: 30, scope: !1930)
!1971 = !DILocation(line: 697, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !82, line: 697, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !82, line: 697, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !82, line: 696, column: 23)
!1975 = !DILocation(line: 697, column: 25, scope: !1973)
!1976 = !DILocation(line: 699, column: 23, scope: !1974)
!1977 = !DILocation(line: 700, column: 35, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1931, file: !82, line: 700, column: 25)
!1979 = !DILocation(line: 700, column: 30, scope: !1978)
!1980 = !DILocation(line: 700, column: 25, scope: !1931)
!1981 = !DILocation(line: 702, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !82, line: 702, column: 21)
!1983 = distinct !DILexicalBlock(scope: !1931, file: !82, line: 702, column: 21)
!1984 = !DILocation(line: 702, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !82, line: 702, column: 21)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !82, line: 702, column: 21)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !82, line: 702, column: 21)
!1988 = !DILocation(line: 702, column: 21, scope: !1986)
!1989 = !DILocation(line: 702, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !82, line: 702, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !82, line: 702, column: 21)
!1992 = !DILocation(line: 702, column: 21, scope: !1991)
!1993 = !DILocation(line: 702, column: 21, scope: !1987)
!1994 = !DILocation(line: 0, scope: !1931)
!1995 = !DILocation(line: 703, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !82, line: 703, column: 21)
!1997 = distinct !DILexicalBlock(scope: !1931, file: !82, line: 703, column: 21)
!1998 = !DILocation(line: 703, column: 21, scope: !1997)
!1999 = !DILocation(line: 704, column: 25, scope: !1931)
!2000 = !DILocation(line: 686, column: 17, scope: !1932)
!2001 = distinct !{!2001, !2002, !2003}
!2002 = !DILocation(line: 686, column: 17, scope: !1933)
!2003 = !DILocation(line: 705, column: 19, scope: !1933)
!2004 = !DILocation(line: 416, column: 30, scope: !1723)
!2005 = !DILocation(line: 712, column: 34, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 712, column: 11)
!2007 = !DILocation(line: 715, column: 35, scope: !2006)
!2008 = !DILocation(line: 715, column: 17, scope: !2006)
!2009 = !DILocation(line: 715, column: 47, scope: !2006)
!2010 = !DILocation(line: 715, column: 65, scope: !2006)
!2011 = !DILocation(line: 716, column: 11, scope: !2006)
!2012 = !DILocation(line: 712, column: 11, scope: !1605)
!2013 = !DILocation(line: 400, column: 10, scope: !1607)
!2014 = !DILocation(line: 719, column: 5, scope: !1605)
!2015 = !DILocation(line: 720, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 720, column: 7)
!2017 = !DILocation(line: 720, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2016, file: !82, line: 720, column: 7)
!2019 = !DILocation(line: 720, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !82, line: 720, column: 7)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !82, line: 720, column: 7)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !82, line: 720, column: 7)
!2023 = !DILocation(line: 720, column: 7, scope: !2021)
!2024 = !DILocation(line: 720, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !82, line: 720, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !82, line: 720, column: 7)
!2027 = !DILocation(line: 720, column: 7, scope: !2026)
!2028 = !DILocation(line: 720, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !82, line: 720, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2022, file: !82, line: 720, column: 7)
!2031 = !DILocation(line: 720, column: 7, scope: !2030)
!2032 = !DILocation(line: 720, column: 7, scope: !2022)
!2033 = !DILocation(line: 720, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !82, line: 720, column: 7)
!2035 = distinct !DILexicalBlock(scope: !2016, file: !82, line: 720, column: 7)
!2036 = !DILocation(line: 720, column: 7, scope: !2035)
!2037 = !DILocation(line: 722, column: 5, scope: !1605)
!2038 = !DILocation(line: 723, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !82, line: 723, column: 7)
!2040 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 723, column: 7)
!2041 = !DILocation(line: 424, column: 9, scope: !1605)
!2042 = !DILocation(line: 723, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !82, line: 723, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !82, line: 723, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !82, line: 723, column: 7)
!2046 = !DILocation(line: 723, column: 7, scope: !2044)
!2047 = !DILocation(line: 723, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !82, line: 723, column: 7)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !82, line: 723, column: 7)
!2050 = !DILocation(line: 723, column: 7, scope: !2049)
!2051 = !DILocation(line: 723, column: 7, scope: !2045)
!2052 = !DILocation(line: 724, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !82, line: 724, column: 7)
!2054 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 724, column: 7)
!2055 = !DILocation(line: 724, column: 7, scope: !2054)
!2056 = !DILocation(line: 726, column: 13, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1605, file: !82, line: 726, column: 11)
!2058 = !DILocation(line: 726, column: 11, scope: !1605)
!2059 = !DILocation(line: 728, column: 5, scope: !1606)
!2060 = !DILocation(line: 400, column: 75, scope: !1606)
!2061 = !DILocation(line: 400, column: 3, scope: !1606)
!2062 = distinct !{!2062, !1719, !2063, !673}
!2063 = !DILocation(line: 728, column: 5, scope: !1607)
!2064 = !DILocation(line: 730, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 730, column: 7)
!2066 = !DILocation(line: 730, column: 16, scope: !2065)
!2067 = !DILocation(line: 738, column: 51, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 738, column: 7)
!2069 = !DILocation(line: 741, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !82, line: 741, column: 11)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !82, line: 740, column: 5)
!2072 = !DILocation(line: 741, column: 11, scope: !2071)
!2073 = !DILocation(line: 742, column: 16, scope: !2070)
!2074 = !DILocation(line: 742, column: 9, scope: !2070)
!2075 = !DILocation(line: 746, column: 18, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !82, line: 746, column: 16)
!2077 = !DILocation(line: 746, column: 29, scope: !2076)
!2078 = !DILocation(line: 755, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 755, column: 7)
!2080 = !DILocation(line: 755, column: 20, scope: !2079)
!2081 = !DILocation(line: 756, column: 12, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !82, line: 756, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !82, line: 756, column: 5)
!2084 = !DILocation(line: 756, column: 5, scope: !2083)
!2085 = !DILocation(line: 757, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !82, line: 757, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !82, line: 757, column: 7)
!2088 = !DILocation(line: 757, column: 7, scope: !2087)
!2089 = !DILocation(line: 756, column: 39, scope: !2082)
!2090 = distinct !{!2090, !2084, !2091, !673}
!2091 = !DILocation(line: 757, column: 7, scope: !2083)
!2092 = !DILocation(line: 759, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 759, column: 7)
!2094 = !DILocation(line: 759, column: 7, scope: !1578)
!2095 = !DILocation(line: 760, column: 5, scope: !2093)
!2096 = !DILocation(line: 760, column: 17, scope: !2093)
!2097 = !DILocation(line: 763, column: 2, scope: !1578)
!2098 = !DILocation(line: 766, column: 51, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 766, column: 7)
!2100 = !DILocation(line: 766, column: 21, scope: !2099)
!2101 = !DILocation(line: 770, column: 42, scope: !1578)
!2102 = !DILocation(line: 768, column: 10, scope: !1578)
!2103 = !DILocation(line: 768, column: 3, scope: !1578)
!2104 = !DILocation(line: 772, column: 1, scope: !1578)
!2105 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 207, type: !2106, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!44, !44, !14}
!2108 = !{!2109, !2110, !2111, !2112}
!2109 = !DILocalVariable(name: "msgid", arg: 1, scope: !2105, file: !82, line: 207, type: !44)
!2110 = !DILocalVariable(name: "s", arg: 2, scope: !2105, file: !82, line: 207, type: !14)
!2111 = !DILocalVariable(name: "translation", scope: !2105, file: !82, line: 209, type: !44)
!2112 = !DILocalVariable(name: "locale_code", scope: !2105, file: !82, line: 210, type: !44)
!2113 = !DILocation(line: 0, scope: !2105)
!2114 = !DILocation(line: 209, column: 29, scope: !2105)
!2115 = !DILocation(line: 212, column: 19, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2105, file: !82, line: 212, column: 7)
!2117 = !DILocation(line: 212, column: 7, scope: !2105)
!2118 = !DILocation(line: 233, column: 17, scope: !2105)
!2119 = !DILocalVariable(name: "s1", arg: 1, scope: !2120, file: !2121, line: 160, type: !44)
!2120 = distinct !DISubprogram(name: "strcaseeq0", scope: !2121, file: !2121, line: 160, type: !2122, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2124)
!2121 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2124 = !{!2119, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2125 = !DILocalVariable(name: "s2", arg: 2, scope: !2120, file: !2121, line: 160, type: !44)
!2126 = !DILocalVariable(name: "s20", arg: 3, scope: !2120, file: !2121, line: 160, type: !30)
!2127 = !DILocalVariable(name: "s21", arg: 4, scope: !2120, file: !2121, line: 160, type: !30)
!2128 = !DILocalVariable(name: "s22", arg: 5, scope: !2120, file: !2121, line: 160, type: !30)
!2129 = !DILocalVariable(name: "s23", arg: 6, scope: !2120, file: !2121, line: 160, type: !30)
!2130 = !DILocalVariable(name: "s24", arg: 7, scope: !2120, file: !2121, line: 160, type: !30)
!2131 = !DILocalVariable(name: "s25", arg: 8, scope: !2120, file: !2121, line: 160, type: !30)
!2132 = !DILocalVariable(name: "s26", arg: 9, scope: !2120, file: !2121, line: 160, type: !30)
!2133 = !DILocalVariable(name: "s27", arg: 10, scope: !2120, file: !2121, line: 160, type: !30)
!2134 = !DILocalVariable(name: "s28", arg: 11, scope: !2120, file: !2121, line: 160, type: !30)
!2135 = !DILocation(line: 0, scope: !2120, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 234, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2105, file: !82, line: 234, column: 7)
!2138 = !DILocation(line: 162, column: 7, scope: !2139, inlinedAt: !2136)
!2139 = distinct !DILexicalBlock(scope: !2120, file: !2121, line: 162, column: 7)
!2140 = !DILocalVariable(name: "s1", arg: 1, scope: !2141, file: !2121, line: 146, type: !44)
!2141 = distinct !DISubprogram(name: "strcaseeq1", scope: !2121, file: !2121, line: 146, type: !2142, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30, !30}
!2144 = !{!2140, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2145 = !DILocalVariable(name: "s2", arg: 2, scope: !2141, file: !2121, line: 146, type: !44)
!2146 = !DILocalVariable(name: "s21", arg: 3, scope: !2141, file: !2121, line: 146, type: !30)
!2147 = !DILocalVariable(name: "s22", arg: 4, scope: !2141, file: !2121, line: 146, type: !30)
!2148 = !DILocalVariable(name: "s23", arg: 5, scope: !2141, file: !2121, line: 146, type: !30)
!2149 = !DILocalVariable(name: "s24", arg: 6, scope: !2141, file: !2121, line: 146, type: !30)
!2150 = !DILocalVariable(name: "s25", arg: 7, scope: !2141, file: !2121, line: 146, type: !30)
!2151 = !DILocalVariable(name: "s26", arg: 8, scope: !2141, file: !2121, line: 146, type: !30)
!2152 = !DILocalVariable(name: "s27", arg: 9, scope: !2141, file: !2121, line: 146, type: !30)
!2153 = !DILocalVariable(name: "s28", arg: 10, scope: !2141, file: !2121, line: 146, type: !30)
!2154 = !DILocation(line: 0, scope: !2141, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 167, column: 16, scope: !2156, inlinedAt: !2136)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !2121, line: 164, column: 11)
!2157 = distinct !DILexicalBlock(scope: !2139, file: !2121, line: 163, column: 5)
!2158 = !DILocation(line: 148, column: 7, scope: !2159, inlinedAt: !2155)
!2159 = distinct !DILexicalBlock(scope: !2141, file: !2121, line: 148, column: 7)
!2160 = !DILocalVariable(name: "s1", arg: 1, scope: !2161, file: !2121, line: 132, type: !44)
!2161 = distinct !DISubprogram(name: "strcaseeq2", scope: !2121, file: !2121, line: 132, type: !2162, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30, !30}
!2164 = !{!2160, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2165 = !DILocalVariable(name: "s2", arg: 2, scope: !2161, file: !2121, line: 132, type: !44)
!2166 = !DILocalVariable(name: "s22", arg: 3, scope: !2161, file: !2121, line: 132, type: !30)
!2167 = !DILocalVariable(name: "s23", arg: 4, scope: !2161, file: !2121, line: 132, type: !30)
!2168 = !DILocalVariable(name: "s24", arg: 5, scope: !2161, file: !2121, line: 132, type: !30)
!2169 = !DILocalVariable(name: "s25", arg: 6, scope: !2161, file: !2121, line: 132, type: !30)
!2170 = !DILocalVariable(name: "s26", arg: 7, scope: !2161, file: !2121, line: 132, type: !30)
!2171 = !DILocalVariable(name: "s27", arg: 8, scope: !2161, file: !2121, line: 132, type: !30)
!2172 = !DILocalVariable(name: "s28", arg: 9, scope: !2161, file: !2121, line: 132, type: !30)
!2173 = !DILocation(line: 0, scope: !2161, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 153, column: 16, scope: !2175, inlinedAt: !2155)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !2121, line: 150, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2159, file: !2121, line: 149, column: 5)
!2177 = !DILocation(line: 134, column: 7, scope: !2178, inlinedAt: !2174)
!2178 = distinct !DILexicalBlock(scope: !2161, file: !2121, line: 134, column: 7)
!2179 = !DILocalVariable(name: "s1", arg: 1, scope: !2180, file: !2121, line: 118, type: !44)
!2180 = distinct !DISubprogram(name: "strcaseeq3", scope: !2121, file: !2121, line: 118, type: !2181, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!47, !44, !44, !30, !30, !30, !30, !30, !30}
!2183 = !{!2179, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2184 = !DILocalVariable(name: "s2", arg: 2, scope: !2180, file: !2121, line: 118, type: !44)
!2185 = !DILocalVariable(name: "s23", arg: 3, scope: !2180, file: !2121, line: 118, type: !30)
!2186 = !DILocalVariable(name: "s24", arg: 4, scope: !2180, file: !2121, line: 118, type: !30)
!2187 = !DILocalVariable(name: "s25", arg: 5, scope: !2180, file: !2121, line: 118, type: !30)
!2188 = !DILocalVariable(name: "s26", arg: 6, scope: !2180, file: !2121, line: 118, type: !30)
!2189 = !DILocalVariable(name: "s27", arg: 7, scope: !2180, file: !2121, line: 118, type: !30)
!2190 = !DILocalVariable(name: "s28", arg: 8, scope: !2180, file: !2121, line: 118, type: !30)
!2191 = !DILocation(line: 0, scope: !2180, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 139, column: 16, scope: !2193, inlinedAt: !2174)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !2121, line: 136, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2178, file: !2121, line: 135, column: 5)
!2195 = !DILocation(line: 120, column: 7, scope: !2196, inlinedAt: !2192)
!2196 = distinct !DILexicalBlock(scope: !2180, file: !2121, line: 120, column: 7)
!2197 = !DILocation(line: 120, column: 7, scope: !2180, inlinedAt: !2192)
!2198 = !DILocalVariable(name: "s1", arg: 1, scope: !2199, file: !2121, line: 104, type: !44)
!2199 = distinct !DISubprogram(name: "strcaseeq4", scope: !2121, file: !2121, line: 104, type: !2200, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!47, !44, !44, !30, !30, !30, !30, !30}
!2202 = !{!2198, !2203, !2204, !2205, !2206, !2207, !2208}
!2203 = !DILocalVariable(name: "s2", arg: 2, scope: !2199, file: !2121, line: 104, type: !44)
!2204 = !DILocalVariable(name: "s24", arg: 3, scope: !2199, file: !2121, line: 104, type: !30)
!2205 = !DILocalVariable(name: "s25", arg: 4, scope: !2199, file: !2121, line: 104, type: !30)
!2206 = !DILocalVariable(name: "s26", arg: 5, scope: !2199, file: !2121, line: 104, type: !30)
!2207 = !DILocalVariable(name: "s27", arg: 6, scope: !2199, file: !2121, line: 104, type: !30)
!2208 = !DILocalVariable(name: "s28", arg: 7, scope: !2199, file: !2121, line: 104, type: !30)
!2209 = !DILocation(line: 0, scope: !2199, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 125, column: 16, scope: !2211, inlinedAt: !2192)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !2121, line: 122, column: 11)
!2212 = distinct !DILexicalBlock(scope: !2196, file: !2121, line: 121, column: 5)
!2213 = !DILocation(line: 106, column: 7, scope: !2214, inlinedAt: !2210)
!2214 = distinct !DILexicalBlock(scope: !2199, file: !2121, line: 106, column: 7)
!2215 = !DILocation(line: 106, column: 7, scope: !2199, inlinedAt: !2210)
!2216 = !DILocalVariable(name: "s1", arg: 1, scope: !2217, file: !2121, line: 90, type: !44)
!2217 = distinct !DISubprogram(name: "strcaseeq5", scope: !2121, file: !2121, line: 90, type: !2218, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!47, !44, !44, !30, !30, !30, !30}
!2220 = !{!2216, !2221, !2222, !2223, !2224, !2225}
!2221 = !DILocalVariable(name: "s2", arg: 2, scope: !2217, file: !2121, line: 90, type: !44)
!2222 = !DILocalVariable(name: "s25", arg: 3, scope: !2217, file: !2121, line: 90, type: !30)
!2223 = !DILocalVariable(name: "s26", arg: 4, scope: !2217, file: !2121, line: 90, type: !30)
!2224 = !DILocalVariable(name: "s27", arg: 5, scope: !2217, file: !2121, line: 90, type: !30)
!2225 = !DILocalVariable(name: "s28", arg: 6, scope: !2217, file: !2121, line: 90, type: !30)
!2226 = !DILocation(line: 0, scope: !2217, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 111, column: 16, scope: !2228, inlinedAt: !2210)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2121, line: 108, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2214, file: !2121, line: 107, column: 5)
!2230 = !DILocation(line: 92, column: 7, scope: !2231, inlinedAt: !2227)
!2231 = distinct !DILexicalBlock(scope: !2217, file: !2121, line: 92, column: 7)
!2232 = !DILocation(line: 92, column: 7, scope: !2217, inlinedAt: !2227)
!2233 = !DILocation(line: 235, column: 12, scope: !2137)
!2234 = !DILocation(line: 235, column: 21, scope: !2137)
!2235 = !DILocation(line: 235, column: 5, scope: !2137)
!2236 = !DILocation(line: 0, scope: !2141, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 167, column: 16, scope: !2156, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 236, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2105, file: !82, line: 236, column: 7)
!2240 = !DILocation(line: 148, column: 7, scope: !2159, inlinedAt: !2237)
!2241 = !DILocation(line: 0, scope: !2161, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 153, column: 16, scope: !2175, inlinedAt: !2237)
!2243 = !DILocation(line: 134, column: 7, scope: !2178, inlinedAt: !2242)
!2244 = !DILocation(line: 134, column: 7, scope: !2161, inlinedAt: !2242)
!2245 = !DILocation(line: 0, scope: !2180, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 139, column: 16, scope: !2193, inlinedAt: !2242)
!2247 = !DILocation(line: 120, column: 7, scope: !2196, inlinedAt: !2246)
!2248 = !DILocation(line: 120, column: 7, scope: !2180, inlinedAt: !2246)
!2249 = !DILocation(line: 0, scope: !2199, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 125, column: 16, scope: !2211, inlinedAt: !2246)
!2251 = !DILocation(line: 106, column: 7, scope: !2214, inlinedAt: !2250)
!2252 = !DILocation(line: 106, column: 7, scope: !2199, inlinedAt: !2250)
!2253 = !DILocation(line: 0, scope: !2217, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 111, column: 16, scope: !2228, inlinedAt: !2250)
!2255 = !DILocation(line: 92, column: 7, scope: !2231, inlinedAt: !2254)
!2256 = !DILocation(line: 92, column: 7, scope: !2217, inlinedAt: !2254)
!2257 = !DILocalVariable(name: "s1", arg: 1, scope: !2258, file: !2121, line: 76, type: !44)
!2258 = distinct !DISubprogram(name: "strcaseeq6", scope: !2121, file: !2121, line: 76, type: !2259, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!47, !44, !44, !30, !30, !30}
!2261 = !{!2257, !2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "s2", arg: 2, scope: !2258, file: !2121, line: 76, type: !44)
!2263 = !DILocalVariable(name: "s26", arg: 3, scope: !2258, file: !2121, line: 76, type: !30)
!2264 = !DILocalVariable(name: "s27", arg: 4, scope: !2258, file: !2121, line: 76, type: !30)
!2265 = !DILocalVariable(name: "s28", arg: 5, scope: !2258, file: !2121, line: 76, type: !30)
!2266 = !DILocation(line: 0, scope: !2258, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 97, column: 16, scope: !2268, inlinedAt: !2254)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !2121, line: 94, column: 11)
!2269 = distinct !DILexicalBlock(scope: !2231, file: !2121, line: 93, column: 5)
!2270 = !DILocation(line: 78, column: 7, scope: !2271, inlinedAt: !2267)
!2271 = distinct !DILexicalBlock(scope: !2258, file: !2121, line: 78, column: 7)
!2272 = !DILocation(line: 78, column: 7, scope: !2258, inlinedAt: !2267)
!2273 = !DILocalVariable(name: "s1", arg: 1, scope: !2274, file: !2121, line: 62, type: !44)
!2274 = distinct !DISubprogram(name: "strcaseeq7", scope: !2121, file: !2121, line: 62, type: !2275, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!47, !44, !44, !30, !30}
!2277 = !{!2273, !2278, !2279, !2280}
!2278 = !DILocalVariable(name: "s2", arg: 2, scope: !2274, file: !2121, line: 62, type: !44)
!2279 = !DILocalVariable(name: "s27", arg: 3, scope: !2274, file: !2121, line: 62, type: !30)
!2280 = !DILocalVariable(name: "s28", arg: 4, scope: !2274, file: !2121, line: 62, type: !30)
!2281 = !DILocation(line: 0, scope: !2274, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 83, column: 16, scope: !2283, inlinedAt: !2267)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !2121, line: 80, column: 11)
!2284 = distinct !DILexicalBlock(scope: !2271, file: !2121, line: 79, column: 5)
!2285 = !DILocation(line: 64, column: 7, scope: !2286, inlinedAt: !2282)
!2286 = distinct !DILexicalBlock(scope: !2274, file: !2121, line: 64, column: 7)
!2287 = !DILocation(line: 236, column: 7, scope: !2105)
!2288 = !DILocation(line: 237, column: 12, scope: !2239)
!2289 = !DILocation(line: 237, column: 21, scope: !2239)
!2290 = !DILocation(line: 237, column: 5, scope: !2239)
!2291 = !DILocation(line: 239, column: 13, scope: !2105)
!2292 = !DILocation(line: 239, column: 11, scope: !2105)
!2293 = !DILocation(line: 239, column: 3, scope: !2105)
!2294 = !DILocation(line: 240, column: 1, scope: !2105)
!2295 = !DISubprogram(name: "iswprint", scope: !2296, file: !2296, line: 120, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2296 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!47, !7}
!2299 = !DISubprogram(name: "mbsinit", scope: !2300, file: !2300, line: 292, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2300 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!47, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!2305 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 799, type: !2306, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!29, !44, !106, !1469}
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !82, line: 799, type: !44)
!2310 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !82, line: 799, type: !106)
!2311 = !DILocalVariable(name: "o", arg: 3, scope: !2305, file: !82, line: 800, type: !1469)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !82, line: 812, type: !44)
!2314 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 812, type: !2315, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!29, !44, !106, !184, !1469}
!2317 = !{!2313, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !82, line: 812, type: !106)
!2319 = !DILocalVariable(name: "size", arg: 3, scope: !2314, file: !82, line: 812, type: !184)
!2320 = !DILocalVariable(name: "o", arg: 4, scope: !2314, file: !82, line: 813, type: !1469)
!2321 = !DILocalVariable(name: "p", scope: !2314, file: !82, line: 815, type: !1469)
!2322 = !DILocalVariable(name: "e", scope: !2314, file: !82, line: 816, type: !47)
!2323 = !DILocalVariable(name: "flags", scope: !2314, file: !82, line: 818, type: !47)
!2324 = !DILocalVariable(name: "bufsize", scope: !2314, file: !82, line: 819, type: !106)
!2325 = !DILocalVariable(name: "buf", scope: !2314, file: !82, line: 823, type: !29)
!2326 = !DILocation(line: 0, scope: !2314, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 802, column: 10, scope: !2305)
!2328 = !DILocation(line: 815, column: 37, scope: !2314, inlinedAt: !2327)
!2329 = !DILocation(line: 816, column: 11, scope: !2314, inlinedAt: !2327)
!2330 = !DILocation(line: 818, column: 18, scope: !2314, inlinedAt: !2327)
!2331 = !DILocation(line: 818, column: 24, scope: !2314, inlinedAt: !2327)
!2332 = !DILocation(line: 819, column: 69, scope: !2314, inlinedAt: !2327)
!2333 = !DILocation(line: 820, column: 53, scope: !2314, inlinedAt: !2327)
!2334 = !DILocation(line: 821, column: 49, scope: !2314, inlinedAt: !2327)
!2335 = !DILocation(line: 822, column: 49, scope: !2314, inlinedAt: !2327)
!2336 = !DILocation(line: 819, column: 20, scope: !2314, inlinedAt: !2327)
!2337 = !DILocation(line: 822, column: 62, scope: !2314, inlinedAt: !2327)
!2338 = !DILocalVariable(name: "n", arg: 1, scope: !2339, file: !180, line: 216, type: !106)
!2339 = distinct !DISubprogram(name: "xcharalloc", scope: !180, file: !180, line: 216, type: !2340, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!29, !106}
!2342 = !{!2338}
!2343 = !DILocation(line: 0, scope: !2339, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 823, column: 15, scope: !2314, inlinedAt: !2327)
!2345 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2344)
!2346 = !DILocation(line: 824, column: 60, scope: !2314, inlinedAt: !2327)
!2347 = !DILocation(line: 826, column: 32, scope: !2314, inlinedAt: !2327)
!2348 = !DILocation(line: 826, column: 47, scope: !2314, inlinedAt: !2327)
!2349 = !DILocation(line: 824, column: 3, scope: !2314, inlinedAt: !2327)
!2350 = !DILocation(line: 827, column: 9, scope: !2314, inlinedAt: !2327)
!2351 = !DILocation(line: 802, column: 3, scope: !2305)
!2352 = !DILocation(line: 0, scope: !2314)
!2353 = !DILocation(line: 815, column: 37, scope: !2314)
!2354 = !DILocation(line: 816, column: 11, scope: !2314)
!2355 = !DILocation(line: 818, column: 18, scope: !2314)
!2356 = !DILocation(line: 818, column: 27, scope: !2314)
!2357 = !DILocation(line: 818, column: 24, scope: !2314)
!2358 = !DILocation(line: 819, column: 69, scope: !2314)
!2359 = !DILocation(line: 820, column: 53, scope: !2314)
!2360 = !DILocation(line: 821, column: 49, scope: !2314)
!2361 = !DILocation(line: 822, column: 49, scope: !2314)
!2362 = !DILocation(line: 819, column: 20, scope: !2314)
!2363 = !DILocation(line: 822, column: 62, scope: !2314)
!2364 = !DILocation(line: 0, scope: !2339, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 823, column: 15, scope: !2314)
!2366 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2365)
!2367 = !DILocation(line: 824, column: 60, scope: !2314)
!2368 = !DILocation(line: 826, column: 32, scope: !2314)
!2369 = !DILocation(line: 826, column: 47, scope: !2314)
!2370 = !DILocation(line: 824, column: 3, scope: !2314)
!2371 = !DILocation(line: 827, column: 9, scope: !2314)
!2372 = !DILocation(line: 828, column: 7, scope: !2314)
!2373 = !DILocation(line: 829, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2314, file: !82, line: 828, column: 7)
!2375 = !DILocation(line: 829, column: 5, scope: !2374)
!2376 = !DILocation(line: 830, column: 3, scope: !2314)
!2377 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 848, type: !631, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2378)
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "sv", scope: !2377, file: !82, line: 850, type: !136)
!2380 = !DILocalVariable(name: "i", scope: !2377, file: !82, line: 851, type: !47)
!2381 = !DILocation(line: 850, column: 24, scope: !2377)
!2382 = !DILocation(line: 0, scope: !2377)
!2383 = !DILocation(line: 852, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !82, line: 852, column: 3)
!2385 = distinct !DILexicalBlock(scope: !2377, file: !82, line: 852, column: 3)
!2386 = !DILocation(line: 852, column: 17, scope: !2384)
!2387 = !DILocation(line: 852, column: 3, scope: !2385)
!2388 = !DILocation(line: 853, column: 17, scope: !2384)
!2389 = !{!2390, !622, i64 8}
!2390 = !{!"slotvec", !914, i64 0, !622, i64 8}
!2391 = !DILocation(line: 853, column: 5, scope: !2384)
!2392 = !DILocation(line: 852, column: 28, scope: !2384)
!2393 = distinct !{!2393, !2387, !2394, !673}
!2394 = !DILocation(line: 853, column: 20, scope: !2385)
!2395 = !DILocation(line: 854, column: 13, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2377, file: !82, line: 854, column: 7)
!2397 = !DILocation(line: 854, column: 17, scope: !2396)
!2398 = !DILocation(line: 854, column: 7, scope: !2377)
!2399 = !DILocation(line: 856, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !82, line: 855, column: 5)
!2401 = !DILocation(line: 857, column: 21, scope: !2400)
!2402 = !{!2390, !914, i64 0}
!2403 = !DILocation(line: 858, column: 20, scope: !2400)
!2404 = !DILocation(line: 859, column: 5, scope: !2400)
!2405 = !DILocation(line: 860, column: 10, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2377, file: !82, line: 860, column: 7)
!2407 = !DILocation(line: 860, column: 7, scope: !2377)
!2408 = !DILocation(line: 862, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !82, line: 861, column: 5)
!2410 = !DILocation(line: 862, column: 7, scope: !2409)
!2411 = !DILocation(line: 863, column: 15, scope: !2409)
!2412 = !DILocation(line: 864, column: 5, scope: !2409)
!2413 = !DILocation(line: 865, column: 10, scope: !2377)
!2414 = !DILocation(line: 866, column: 1, scope: !2377)
!2415 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 931, type: !754, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2416)
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "n", arg: 1, scope: !2415, file: !82, line: 931, type: !47)
!2418 = !DILocalVariable(name: "arg", arg: 2, scope: !2415, file: !82, line: 931, type: !44)
!2419 = !DILocation(line: 0, scope: !2415)
!2420 = !DILocation(line: 933, column: 10, scope: !2415)
!2421 = !DILocation(line: 933, column: 3, scope: !2415)
!2422 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 877, type: !2423, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!29, !47, !44, !106, !1469}
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2435, !2436, !2438, !2439, !2440}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !82, line: 877, type: !47)
!2427 = !DILocalVariable(name: "arg", arg: 2, scope: !2422, file: !82, line: 877, type: !44)
!2428 = !DILocalVariable(name: "argsize", arg: 3, scope: !2422, file: !82, line: 877, type: !106)
!2429 = !DILocalVariable(name: "options", arg: 4, scope: !2422, file: !82, line: 878, type: !1469)
!2430 = !DILocalVariable(name: "e", scope: !2422, file: !82, line: 880, type: !47)
!2431 = !DILocalVariable(name: "sv", scope: !2422, file: !82, line: 882, type: !136)
!2432 = !DILocalVariable(name: "preallocated", scope: !2433, file: !82, line: 889, type: !66)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !82, line: 888, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2422, file: !82, line: 887, column: 7)
!2435 = !DILocalVariable(name: "nmax", scope: !2433, file: !82, line: 890, type: !47)
!2436 = !DILocalVariable(name: "size", scope: !2437, file: !82, line: 903, type: !106)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !82, line: 902, column: 3)
!2438 = !DILocalVariable(name: "val", scope: !2437, file: !82, line: 904, type: !29)
!2439 = !DILocalVariable(name: "flags", scope: !2437, file: !82, line: 906, type: !47)
!2440 = !DILocalVariable(name: "qsize", scope: !2437, file: !82, line: 907, type: !106)
!2441 = !DILocation(line: 0, scope: !2422)
!2442 = !DILocation(line: 880, column: 11, scope: !2422)
!2443 = !DILocation(line: 882, column: 24, scope: !2422)
!2444 = !DILocation(line: 884, column: 9, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2422, file: !82, line: 884, column: 7)
!2446 = !DILocation(line: 884, column: 7, scope: !2422)
!2447 = !DILocation(line: 885, column: 5, scope: !2445)
!2448 = !DILocation(line: 887, column: 7, scope: !2434)
!2449 = !DILocation(line: 887, column: 14, scope: !2434)
!2450 = !DILocation(line: 887, column: 7, scope: !2422)
!2451 = !DILocation(line: 889, column: 31, scope: !2433)
!2452 = !DILocation(line: 0, scope: !2433)
!2453 = !DILocation(line: 892, column: 16, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2433, file: !82, line: 892, column: 11)
!2455 = !DILocation(line: 892, column: 11, scope: !2433)
!2456 = !DILocation(line: 893, column: 9, scope: !2454)
!2457 = !DILocation(line: 895, column: 32, scope: !2433)
!2458 = !DILocation(line: 895, column: 61, scope: !2433)
!2459 = !DILocation(line: 895, column: 66, scope: !2433)
!2460 = !DILocation(line: 895, column: 22, scope: !2433)
!2461 = !DILocation(line: 895, column: 15, scope: !2433)
!2462 = !DILocation(line: 896, column: 11, scope: !2433)
!2463 = !DILocation(line: 897, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2433, file: !82, line: 896, column: 11)
!2465 = !{i64 0, i64 8, !913, i64 8, i64 8, !621}
!2466 = !DILocation(line: 897, column: 9, scope: !2464)
!2467 = !DILocation(line: 898, column: 20, scope: !2433)
!2468 = !DILocation(line: 898, column: 18, scope: !2433)
!2469 = !DILocation(line: 898, column: 15, scope: !2433)
!2470 = !DILocation(line: 898, column: 38, scope: !2433)
!2471 = !DILocation(line: 898, column: 31, scope: !2433)
!2472 = !DILocation(line: 898, column: 48, scope: !2433)
!2473 = !DILocation(line: 0, scope: !1866, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 898, column: 7, scope: !2433)
!2475 = !DILocation(line: 59, column: 10, scope: !1866, inlinedAt: !2474)
!2476 = !DILocation(line: 899, column: 14, scope: !2433)
!2477 = !DILocation(line: 900, column: 5, scope: !2433)
!2478 = !DILocation(line: 903, column: 19, scope: !2437)
!2479 = !DILocation(line: 903, column: 25, scope: !2437)
!2480 = !DILocation(line: 0, scope: !2437)
!2481 = !DILocation(line: 904, column: 23, scope: !2437)
!2482 = !DILocation(line: 906, column: 26, scope: !2437)
!2483 = !DILocation(line: 906, column: 32, scope: !2437)
!2484 = !DILocation(line: 908, column: 55, scope: !2437)
!2485 = !DILocation(line: 909, column: 46, scope: !2437)
!2486 = !DILocation(line: 910, column: 55, scope: !2437)
!2487 = !DILocation(line: 911, column: 55, scope: !2437)
!2488 = !DILocation(line: 907, column: 20, scope: !2437)
!2489 = !DILocation(line: 913, column: 14, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2437, file: !82, line: 913, column: 9)
!2491 = !DILocation(line: 913, column: 9, scope: !2437)
!2492 = !DILocation(line: 915, column: 35, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !82, line: 914, column: 7)
!2494 = !DILocation(line: 915, column: 20, scope: !2493)
!2495 = !DILocation(line: 916, column: 17, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !82, line: 916, column: 13)
!2497 = !DILocation(line: 916, column: 13, scope: !2493)
!2498 = !DILocation(line: 917, column: 11, scope: !2496)
!2499 = !DILocation(line: 0, scope: !2339, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 918, column: 27, scope: !2493)
!2501 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2500)
!2502 = !DILocation(line: 918, column: 19, scope: !2493)
!2503 = !DILocation(line: 919, column: 69, scope: !2493)
!2504 = !DILocation(line: 921, column: 44, scope: !2493)
!2505 = !DILocation(line: 922, column: 44, scope: !2493)
!2506 = !DILocation(line: 919, column: 9, scope: !2493)
!2507 = !DILocation(line: 923, column: 7, scope: !2493)
!2508 = !DILocation(line: 925, column: 11, scope: !2437)
!2509 = !DILocation(line: 926, column: 5, scope: !2437)
!2510 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 937, type: !2511, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!29, !47, !44, !106}
!2513 = !{!2514, !2515, !2516}
!2514 = !DILocalVariable(name: "n", arg: 1, scope: !2510, file: !82, line: 937, type: !47)
!2515 = !DILocalVariable(name: "arg", arg: 2, scope: !2510, file: !82, line: 937, type: !44)
!2516 = !DILocalVariable(name: "argsize", arg: 3, scope: !2510, file: !82, line: 937, type: !106)
!2517 = !DILocation(line: 0, scope: !2510)
!2518 = !DILocation(line: 939, column: 10, scope: !2510)
!2519 = !DILocation(line: 939, column: 3, scope: !2510)
!2520 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 943, type: !966, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2521)
!2521 = !{!2522}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !82, line: 943, type: !44)
!2523 = !DILocation(line: 0, scope: !2520)
!2524 = !DILocation(line: 0, scope: !2415, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 945, column: 10, scope: !2520)
!2526 = !DILocation(line: 933, column: 10, scope: !2415, inlinedAt: !2525)
!2527 = !DILocation(line: 945, column: 3, scope: !2520)
!2528 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 949, type: !2529, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!29, !44, !106}
!2531 = !{!2532, !2533}
!2532 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !82, line: 949, type: !44)
!2533 = !DILocalVariable(name: "argsize", arg: 2, scope: !2528, file: !82, line: 949, type: !106)
!2534 = !DILocation(line: 0, scope: !2528)
!2535 = !DILocation(line: 0, scope: !2510, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 951, column: 10, scope: !2528)
!2537 = !DILocation(line: 939, column: 10, scope: !2510, inlinedAt: !2536)
!2538 = !DILocation(line: 951, column: 3, scope: !2528)
!2539 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 955, type: !2540, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!29, !47, !14, !44}
!2542 = !{!2543, !2544, !2545, !2546}
!2543 = !DILocalVariable(name: "n", arg: 1, scope: !2539, file: !82, line: 955, type: !47)
!2544 = !DILocalVariable(name: "s", arg: 2, scope: !2539, file: !82, line: 955, type: !14)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !82, line: 955, type: !44)
!2546 = !DILocalVariable(name: "o", scope: !2539, file: !82, line: 957, type: !1470)
!2547 = !DILocation(line: 0, scope: !2539)
!2548 = !DILocation(line: 957, column: 3, scope: !2539)
!2549 = !DILocation(line: 957, column: 32, scope: !2539)
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"quoting_options_from_style: argument 0"}
!2552 = distinct !{!2552, !"quoting_options_from_style"}
!2553 = !DILocation(line: 957, column: 36, scope: !2539)
!2554 = !DILocalVariable(name: "style", arg: 1, scope: !2555, file: !82, line: 193, type: !14)
!2555 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 193, type: !2556, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!117, !14}
!2558 = !{!2554, !2559}
!2559 = !DILocalVariable(name: "o", scope: !2555, file: !82, line: 195, type: !117)
!2560 = !DILocation(line: 0, scope: !2555, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 957, column: 36, scope: !2539)
!2562 = !DILocation(line: 195, column: 26, scope: !2555, inlinedAt: !2561)
!2563 = !DILocation(line: 196, column: 13, scope: !2564, inlinedAt: !2561)
!2564 = distinct !DILexicalBlock(scope: !2555, file: !82, line: 196, column: 7)
!2565 = !DILocation(line: 196, column: 7, scope: !2555, inlinedAt: !2561)
!2566 = !DILocation(line: 197, column: 5, scope: !2564, inlinedAt: !2561)
!2567 = !DILocation(line: 198, column: 5, scope: !2555, inlinedAt: !2561)
!2568 = !DILocation(line: 198, column: 11, scope: !2555, inlinedAt: !2561)
!2569 = !DILocation(line: 958, column: 10, scope: !2539)
!2570 = !DILocation(line: 959, column: 1, scope: !2539)
!2571 = !DILocation(line: 958, column: 3, scope: !2539)
!2572 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 962, type: !2573, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!29, !47, !14, !44, !106}
!2575 = !{!2576, !2577, !2578, !2579, !2580}
!2576 = !DILocalVariable(name: "n", arg: 1, scope: !2572, file: !82, line: 962, type: !47)
!2577 = !DILocalVariable(name: "s", arg: 2, scope: !2572, file: !82, line: 962, type: !14)
!2578 = !DILocalVariable(name: "arg", arg: 3, scope: !2572, file: !82, line: 963, type: !44)
!2579 = !DILocalVariable(name: "argsize", arg: 4, scope: !2572, file: !82, line: 963, type: !106)
!2580 = !DILocalVariable(name: "o", scope: !2572, file: !82, line: 965, type: !1470)
!2581 = !DILocation(line: 0, scope: !2572)
!2582 = !DILocation(line: 965, column: 3, scope: !2572)
!2583 = !DILocation(line: 965, column: 32, scope: !2572)
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"quoting_options_from_style: argument 0"}
!2586 = distinct !{!2586, !"quoting_options_from_style"}
!2587 = !DILocation(line: 965, column: 36, scope: !2572)
!2588 = !DILocation(line: 0, scope: !2555, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 965, column: 36, scope: !2572)
!2590 = !DILocation(line: 195, column: 26, scope: !2555, inlinedAt: !2589)
!2591 = !DILocation(line: 196, column: 13, scope: !2564, inlinedAt: !2589)
!2592 = !DILocation(line: 196, column: 7, scope: !2555, inlinedAt: !2589)
!2593 = !DILocation(line: 197, column: 5, scope: !2564, inlinedAt: !2589)
!2594 = !DILocation(line: 198, column: 5, scope: !2555, inlinedAt: !2589)
!2595 = !DILocation(line: 198, column: 11, scope: !2555, inlinedAt: !2589)
!2596 = !DILocation(line: 966, column: 10, scope: !2572)
!2597 = !DILocation(line: 967, column: 1, scope: !2572)
!2598 = !DILocation(line: 966, column: 3, scope: !2572)
!2599 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 970, type: !2600, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!29, !14, !44}
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "s", arg: 1, scope: !2599, file: !82, line: 970, type: !14)
!2604 = !DILocalVariable(name: "arg", arg: 2, scope: !2599, file: !82, line: 970, type: !44)
!2605 = !DILocation(line: 0, scope: !2599)
!2606 = !DILocation(line: 0, scope: !2539, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 972, column: 10, scope: !2599)
!2608 = !DILocation(line: 957, column: 3, scope: !2539, inlinedAt: !2607)
!2609 = !DILocation(line: 957, column: 32, scope: !2539, inlinedAt: !2607)
!2610 = !{!2611}
!2611 = distinct !{!2611, !2612, !"quoting_options_from_style: argument 0"}
!2612 = distinct !{!2612, !"quoting_options_from_style"}
!2613 = !DILocation(line: 957, column: 36, scope: !2539, inlinedAt: !2607)
!2614 = !DILocation(line: 0, scope: !2555, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 957, column: 36, scope: !2539, inlinedAt: !2607)
!2616 = !DILocation(line: 195, column: 26, scope: !2555, inlinedAt: !2615)
!2617 = !DILocation(line: 196, column: 13, scope: !2564, inlinedAt: !2615)
!2618 = !DILocation(line: 196, column: 7, scope: !2555, inlinedAt: !2615)
!2619 = !DILocation(line: 197, column: 5, scope: !2564, inlinedAt: !2615)
!2620 = !DILocation(line: 198, column: 5, scope: !2555, inlinedAt: !2615)
!2621 = !DILocation(line: 198, column: 11, scope: !2555, inlinedAt: !2615)
!2622 = !DILocation(line: 958, column: 10, scope: !2539, inlinedAt: !2607)
!2623 = !DILocation(line: 959, column: 1, scope: !2539, inlinedAt: !2607)
!2624 = !DILocation(line: 972, column: 3, scope: !2599)
!2625 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 976, type: !2626, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!29, !14, !44, !106}
!2628 = !{!2629, !2630, !2631}
!2629 = !DILocalVariable(name: "s", arg: 1, scope: !2625, file: !82, line: 976, type: !14)
!2630 = !DILocalVariable(name: "arg", arg: 2, scope: !2625, file: !82, line: 976, type: !44)
!2631 = !DILocalVariable(name: "argsize", arg: 3, scope: !2625, file: !82, line: 976, type: !106)
!2632 = !DILocation(line: 0, scope: !2625)
!2633 = !DILocation(line: 0, scope: !2572, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 978, column: 10, scope: !2625)
!2635 = !DILocation(line: 965, column: 3, scope: !2572, inlinedAt: !2634)
!2636 = !DILocation(line: 965, column: 32, scope: !2572, inlinedAt: !2634)
!2637 = !{!2638}
!2638 = distinct !{!2638, !2639, !"quoting_options_from_style: argument 0"}
!2639 = distinct !{!2639, !"quoting_options_from_style"}
!2640 = !DILocation(line: 965, column: 36, scope: !2572, inlinedAt: !2634)
!2641 = !DILocation(line: 0, scope: !2555, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 965, column: 36, scope: !2572, inlinedAt: !2634)
!2643 = !DILocation(line: 195, column: 26, scope: !2555, inlinedAt: !2642)
!2644 = !DILocation(line: 196, column: 13, scope: !2564, inlinedAt: !2642)
!2645 = !DILocation(line: 196, column: 7, scope: !2555, inlinedAt: !2642)
!2646 = !DILocation(line: 197, column: 5, scope: !2564, inlinedAt: !2642)
!2647 = !DILocation(line: 198, column: 5, scope: !2555, inlinedAt: !2642)
!2648 = !DILocation(line: 198, column: 11, scope: !2555, inlinedAt: !2642)
!2649 = !DILocation(line: 966, column: 10, scope: !2572, inlinedAt: !2634)
!2650 = !DILocation(line: 967, column: 1, scope: !2572, inlinedAt: !2634)
!2651 = !DILocation(line: 978, column: 3, scope: !2625)
!2652 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 982, type: !2653, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!29, !44, !106, !30}
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "arg", arg: 1, scope: !2652, file: !82, line: 982, type: !44)
!2657 = !DILocalVariable(name: "argsize", arg: 2, scope: !2652, file: !82, line: 982, type: !106)
!2658 = !DILocalVariable(name: "ch", arg: 3, scope: !2652, file: !82, line: 982, type: !30)
!2659 = !DILocalVariable(name: "options", scope: !2652, file: !82, line: 984, type: !117)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 984, column: 3, scope: !2652)
!2662 = !DILocation(line: 984, column: 26, scope: !2652)
!2663 = !DILocation(line: 985, column: 13, scope: !2652)
!2664 = !{i64 0, i64 4, !846, i64 4, i64 4, !838, i64 8, i64 32, !846, i64 40, i64 8, !621, i64 48, i64 8, !621}
!2665 = !DILocation(line: 0, scope: !1490, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 986, column: 3, scope: !2652)
!2667 = !DILocation(line: 156, column: 62, scope: !1490, inlinedAt: !2666)
!2668 = !DILocation(line: 156, column: 57, scope: !1490, inlinedAt: !2666)
!2669 = !DILocation(line: 157, column: 15, scope: !1490, inlinedAt: !2666)
!2670 = !DILocation(line: 158, column: 12, scope: !1490, inlinedAt: !2666)
!2671 = !DILocation(line: 158, column: 15, scope: !1490, inlinedAt: !2666)
!2672 = !DILocation(line: 158, column: 25, scope: !1490, inlinedAt: !2666)
!2673 = !DILocation(line: 159, column: 18, scope: !1490, inlinedAt: !2666)
!2674 = !DILocation(line: 159, column: 23, scope: !1490, inlinedAt: !2666)
!2675 = !DILocation(line: 159, column: 6, scope: !1490, inlinedAt: !2666)
!2676 = !DILocation(line: 987, column: 10, scope: !2652)
!2677 = !DILocation(line: 988, column: 1, scope: !2652)
!2678 = !DILocation(line: 987, column: 3, scope: !2652)
!2679 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 991, type: !2680, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!29, !44, !30}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "arg", arg: 1, scope: !2679, file: !82, line: 991, type: !44)
!2684 = !DILocalVariable(name: "ch", arg: 2, scope: !2679, file: !82, line: 991, type: !30)
!2685 = !DILocation(line: 0, scope: !2679)
!2686 = !DILocation(line: 0, scope: !2652, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 993, column: 10, scope: !2679)
!2688 = !DILocation(line: 984, column: 3, scope: !2652, inlinedAt: !2687)
!2689 = !DILocation(line: 984, column: 26, scope: !2652, inlinedAt: !2687)
!2690 = !DILocation(line: 985, column: 13, scope: !2652, inlinedAt: !2687)
!2691 = !DILocation(line: 0, scope: !1490, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 986, column: 3, scope: !2652, inlinedAt: !2687)
!2693 = !DILocation(line: 156, column: 62, scope: !1490, inlinedAt: !2692)
!2694 = !DILocation(line: 156, column: 57, scope: !1490, inlinedAt: !2692)
!2695 = !DILocation(line: 157, column: 15, scope: !1490, inlinedAt: !2692)
!2696 = !DILocation(line: 158, column: 12, scope: !1490, inlinedAt: !2692)
!2697 = !DILocation(line: 158, column: 15, scope: !1490, inlinedAt: !2692)
!2698 = !DILocation(line: 158, column: 25, scope: !1490, inlinedAt: !2692)
!2699 = !DILocation(line: 159, column: 18, scope: !1490, inlinedAt: !2692)
!2700 = !DILocation(line: 159, column: 23, scope: !1490, inlinedAt: !2692)
!2701 = !DILocation(line: 159, column: 6, scope: !1490, inlinedAt: !2692)
!2702 = !DILocation(line: 987, column: 10, scope: !2652, inlinedAt: !2687)
!2703 = !DILocation(line: 988, column: 1, scope: !2652, inlinedAt: !2687)
!2704 = !DILocation(line: 993, column: 3, scope: !2679)
!2705 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 997, type: !966, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2706)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2705, file: !82, line: 997, type: !44)
!2708 = !DILocation(line: 0, scope: !2705)
!2709 = !DILocation(line: 0, scope: !2679, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 999, column: 10, scope: !2705)
!2711 = !DILocation(line: 0, scope: !2652, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 993, column: 10, scope: !2679, inlinedAt: !2710)
!2713 = !DILocation(line: 984, column: 3, scope: !2652, inlinedAt: !2712)
!2714 = !DILocation(line: 984, column: 26, scope: !2652, inlinedAt: !2712)
!2715 = !DILocation(line: 985, column: 13, scope: !2652, inlinedAt: !2712)
!2716 = !DILocation(line: 0, scope: !1490, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 986, column: 3, scope: !2652, inlinedAt: !2712)
!2718 = !DILocation(line: 156, column: 57, scope: !1490, inlinedAt: !2717)
!2719 = !DILocation(line: 158, column: 12, scope: !1490, inlinedAt: !2717)
!2720 = !DILocation(line: 159, column: 6, scope: !1490, inlinedAt: !2717)
!2721 = !DILocation(line: 987, column: 10, scope: !2652, inlinedAt: !2712)
!2722 = !DILocation(line: 988, column: 1, scope: !2652, inlinedAt: !2712)
!2723 = !DILocation(line: 999, column: 3, scope: !2705)
!2724 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 1003, type: !2529, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2725)
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !82, line: 1003, type: !44)
!2727 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !82, line: 1003, type: !106)
!2728 = !DILocation(line: 0, scope: !2724)
!2729 = !DILocation(line: 0, scope: !2652, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1005, column: 10, scope: !2724)
!2731 = !DILocation(line: 984, column: 3, scope: !2652, inlinedAt: !2730)
!2732 = !DILocation(line: 984, column: 26, scope: !2652, inlinedAt: !2730)
!2733 = !DILocation(line: 985, column: 13, scope: !2652, inlinedAt: !2730)
!2734 = !DILocation(line: 0, scope: !1490, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 986, column: 3, scope: !2652, inlinedAt: !2730)
!2736 = !DILocation(line: 156, column: 57, scope: !1490, inlinedAt: !2735)
!2737 = !DILocation(line: 158, column: 12, scope: !1490, inlinedAt: !2735)
!2738 = !DILocation(line: 159, column: 6, scope: !1490, inlinedAt: !2735)
!2739 = !DILocation(line: 987, column: 10, scope: !2652, inlinedAt: !2730)
!2740 = !DILocation(line: 988, column: 1, scope: !2652, inlinedAt: !2730)
!2741 = !DILocation(line: 1005, column: 3, scope: !2724)
!2742 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1009, type: !2540, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2743)
!2743 = !{!2744, !2745, !2746, !2747}
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !82, line: 1009, type: !47)
!2745 = !DILocalVariable(name: "s", arg: 2, scope: !2742, file: !82, line: 1009, type: !14)
!2746 = !DILocalVariable(name: "arg", arg: 3, scope: !2742, file: !82, line: 1009, type: !44)
!2747 = !DILocalVariable(name: "options", scope: !2742, file: !82, line: 1011, type: !117)
!2748 = !DILocation(line: 195, column: 26, scope: !2555, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1012, column: 13, scope: !2742)
!2750 = !DILocation(line: 0, scope: !2742)
!2751 = !DILocation(line: 1011, column: 3, scope: !2742)
!2752 = !DILocation(line: 1011, column: 26, scope: !2742)
!2753 = !DILocation(line: 1012, column: 13, scope: !2742)
!2754 = !{!2755}
!2755 = distinct !{!2755, !2756, !"quoting_options_from_style: argument 0"}
!2756 = distinct !{!2756, !"quoting_options_from_style"}
!2757 = !DILocation(line: 0, scope: !2555, inlinedAt: !2749)
!2758 = !DILocation(line: 196, column: 13, scope: !2564, inlinedAt: !2749)
!2759 = !DILocation(line: 196, column: 7, scope: !2555, inlinedAt: !2749)
!2760 = !DILocation(line: 197, column: 5, scope: !2564, inlinedAt: !2749)
!2761 = !{i64 0, i64 4, !838, i64 4, i64 32, !846, i64 36, i64 8, !621, i64 44, i64 8, !621}
!2762 = !DILocation(line: 0, scope: !1490, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 1013, column: 3, scope: !2742)
!2764 = !DILocation(line: 156, column: 57, scope: !1490, inlinedAt: !2763)
!2765 = !DILocation(line: 158, column: 12, scope: !1490, inlinedAt: !2763)
!2766 = !DILocation(line: 159, column: 6, scope: !1490, inlinedAt: !2763)
!2767 = !DILocation(line: 1014, column: 10, scope: !2742)
!2768 = !DILocation(line: 1015, column: 1, scope: !2742)
!2769 = !DILocation(line: 1014, column: 3, scope: !2742)
!2770 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1018, type: !2771, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!29, !47, !44, !44, !44}
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !82, line: 1018, type: !47)
!2775 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2770, file: !82, line: 1018, type: !44)
!2776 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2770, file: !82, line: 1019, type: !44)
!2777 = !DILocalVariable(name: "arg", arg: 4, scope: !2770, file: !82, line: 1019, type: !44)
!2778 = !DILocation(line: 0, scope: !2770)
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !82, line: 1026, type: !47)
!2780 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1026, type: !2781, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!29, !47, !44, !44, !44, !106}
!2783 = !{!2779, !2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2780, file: !82, line: 1026, type: !44)
!2785 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2780, file: !82, line: 1027, type: !44)
!2786 = !DILocalVariable(name: "arg", arg: 4, scope: !2780, file: !82, line: 1028, type: !44)
!2787 = !DILocalVariable(name: "argsize", arg: 5, scope: !2780, file: !82, line: 1028, type: !106)
!2788 = !DILocalVariable(name: "o", scope: !2780, file: !82, line: 1030, type: !117)
!2789 = !DILocation(line: 0, scope: !2780, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1021, column: 10, scope: !2770)
!2791 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2790)
!2792 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2790)
!2793 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2790)
!2794 = !DILocation(line: 0, scope: !1531, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2790)
!2796 = !DILocation(line: 184, column: 6, scope: !1531, inlinedAt: !2795)
!2797 = !DILocation(line: 184, column: 12, scope: !1531, inlinedAt: !2795)
!2798 = !DILocation(line: 185, column: 8, scope: !1545, inlinedAt: !2795)
!2799 = !DILocation(line: 185, column: 19, scope: !1545, inlinedAt: !2795)
!2800 = !DILocation(line: 186, column: 5, scope: !1545, inlinedAt: !2795)
!2801 = !DILocation(line: 187, column: 6, scope: !1531, inlinedAt: !2795)
!2802 = !DILocation(line: 187, column: 17, scope: !1531, inlinedAt: !2795)
!2803 = !DILocation(line: 188, column: 6, scope: !1531, inlinedAt: !2795)
!2804 = !DILocation(line: 188, column: 18, scope: !1531, inlinedAt: !2795)
!2805 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2790)
!2806 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2790)
!2807 = !DILocation(line: 1021, column: 3, scope: !2770)
!2808 = !DILocation(line: 0, scope: !2780)
!2809 = !DILocation(line: 1030, column: 3, scope: !2780)
!2810 = !DILocation(line: 1030, column: 26, scope: !2780)
!2811 = !DILocation(line: 1030, column: 30, scope: !2780)
!2812 = !DILocation(line: 0, scope: !1531, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1031, column: 3, scope: !2780)
!2814 = !DILocation(line: 184, column: 6, scope: !1531, inlinedAt: !2813)
!2815 = !DILocation(line: 184, column: 12, scope: !1531, inlinedAt: !2813)
!2816 = !DILocation(line: 185, column: 8, scope: !1545, inlinedAt: !2813)
!2817 = !DILocation(line: 185, column: 19, scope: !1545, inlinedAt: !2813)
!2818 = !DILocation(line: 186, column: 5, scope: !1545, inlinedAt: !2813)
!2819 = !DILocation(line: 187, column: 6, scope: !1531, inlinedAt: !2813)
!2820 = !DILocation(line: 187, column: 17, scope: !1531, inlinedAt: !2813)
!2821 = !DILocation(line: 188, column: 6, scope: !1531, inlinedAt: !2813)
!2822 = !DILocation(line: 188, column: 18, scope: !1531, inlinedAt: !2813)
!2823 = !DILocation(line: 1032, column: 10, scope: !2780)
!2824 = !DILocation(line: 1033, column: 1, scope: !2780)
!2825 = !DILocation(line: 1032, column: 3, scope: !2780)
!2826 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1036, type: !2827, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!29, !44, !44, !44}
!2829 = !{!2830, !2831, !2832}
!2830 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2826, file: !82, line: 1036, type: !44)
!2831 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2826, file: !82, line: 1036, type: !44)
!2832 = !DILocalVariable(name: "arg", arg: 3, scope: !2826, file: !82, line: 1037, type: !44)
!2833 = !DILocation(line: 0, scope: !2826)
!2834 = !DILocation(line: 0, scope: !2770, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1039, column: 10, scope: !2826)
!2836 = !DILocation(line: 0, scope: !2780, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1021, column: 10, scope: !2770, inlinedAt: !2835)
!2838 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2837)
!2839 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2837)
!2840 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2837)
!2841 = !DILocation(line: 0, scope: !1531, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2837)
!2843 = !DILocation(line: 184, column: 6, scope: !1531, inlinedAt: !2842)
!2844 = !DILocation(line: 184, column: 12, scope: !1531, inlinedAt: !2842)
!2845 = !DILocation(line: 185, column: 8, scope: !1545, inlinedAt: !2842)
!2846 = !DILocation(line: 185, column: 19, scope: !1545, inlinedAt: !2842)
!2847 = !DILocation(line: 186, column: 5, scope: !1545, inlinedAt: !2842)
!2848 = !DILocation(line: 187, column: 6, scope: !1531, inlinedAt: !2842)
!2849 = !DILocation(line: 187, column: 17, scope: !1531, inlinedAt: !2842)
!2850 = !DILocation(line: 188, column: 6, scope: !1531, inlinedAt: !2842)
!2851 = !DILocation(line: 188, column: 18, scope: !1531, inlinedAt: !2842)
!2852 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2837)
!2853 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2837)
!2854 = !DILocation(line: 1039, column: 3, scope: !2826)
!2855 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1043, type: !2856, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!29, !44, !44, !44, !106}
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2855, file: !82, line: 1043, type: !44)
!2860 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2855, file: !82, line: 1043, type: !44)
!2861 = !DILocalVariable(name: "arg", arg: 3, scope: !2855, file: !82, line: 1044, type: !44)
!2862 = !DILocalVariable(name: "argsize", arg: 4, scope: !2855, file: !82, line: 1044, type: !106)
!2863 = !DILocation(line: 0, scope: !2855)
!2864 = !DILocation(line: 0, scope: !2780, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1046, column: 10, scope: !2855)
!2866 = !DILocation(line: 1030, column: 3, scope: !2780, inlinedAt: !2865)
!2867 = !DILocation(line: 1030, column: 26, scope: !2780, inlinedAt: !2865)
!2868 = !DILocation(line: 1030, column: 30, scope: !2780, inlinedAt: !2865)
!2869 = !DILocation(line: 0, scope: !1531, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1031, column: 3, scope: !2780, inlinedAt: !2865)
!2871 = !DILocation(line: 184, column: 6, scope: !1531, inlinedAt: !2870)
!2872 = !DILocation(line: 184, column: 12, scope: !1531, inlinedAt: !2870)
!2873 = !DILocation(line: 185, column: 8, scope: !1545, inlinedAt: !2870)
!2874 = !DILocation(line: 185, column: 19, scope: !1545, inlinedAt: !2870)
!2875 = !DILocation(line: 186, column: 5, scope: !1545, inlinedAt: !2870)
!2876 = !DILocation(line: 187, column: 6, scope: !1531, inlinedAt: !2870)
!2877 = !DILocation(line: 187, column: 17, scope: !1531, inlinedAt: !2870)
!2878 = !DILocation(line: 188, column: 6, scope: !1531, inlinedAt: !2870)
!2879 = !DILocation(line: 188, column: 18, scope: !1531, inlinedAt: !2870)
!2880 = !DILocation(line: 1032, column: 10, scope: !2780, inlinedAt: !2865)
!2881 = !DILocation(line: 1033, column: 1, scope: !2780, inlinedAt: !2865)
!2882 = !DILocation(line: 1046, column: 3, scope: !2855)
!2883 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1061, type: !2884, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!44, !47, !44, !106}
!2886 = !{!2887, !2888, !2889}
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2883, file: !82, line: 1061, type: !47)
!2888 = !DILocalVariable(name: "arg", arg: 2, scope: !2883, file: !82, line: 1061, type: !44)
!2889 = !DILocalVariable(name: "argsize", arg: 3, scope: !2883, file: !82, line: 1061, type: !106)
!2890 = !DILocation(line: 0, scope: !2883)
!2891 = !DILocation(line: 1063, column: 10, scope: !2883)
!2892 = !DILocation(line: 1063, column: 3, scope: !2883)
!2893 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1067, type: !2894, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!44, !44, !106}
!2896 = !{!2897, !2898}
!2897 = !DILocalVariable(name: "arg", arg: 1, scope: !2893, file: !82, line: 1067, type: !44)
!2898 = !DILocalVariable(name: "argsize", arg: 2, scope: !2893, file: !82, line: 1067, type: !106)
!2899 = !DILocation(line: 0, scope: !2893)
!2900 = !DILocation(line: 0, scope: !2883, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 1069, column: 10, scope: !2893)
!2902 = !DILocation(line: 1063, column: 10, scope: !2883, inlinedAt: !2901)
!2903 = !DILocation(line: 1069, column: 3, scope: !2893)
!2904 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1073, type: !2905, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!44, !47, !44}
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !82, line: 1073, type: !47)
!2909 = !DILocalVariable(name: "arg", arg: 2, scope: !2904, file: !82, line: 1073, type: !44)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 0, scope: !2883, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 1075, column: 10, scope: !2904)
!2913 = !DILocation(line: 1063, column: 10, scope: !2883, inlinedAt: !2912)
!2914 = !DILocation(line: 1075, column: 3, scope: !2904)
!2915 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1079, type: !2916, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!44, !44}
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "arg", arg: 1, scope: !2915, file: !82, line: 1079, type: !44)
!2920 = !DILocation(line: 0, scope: !2915)
!2921 = !DILocation(line: 0, scope: !2904, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1081, column: 10, scope: !2915)
!2923 = !DILocation(line: 0, scope: !2883, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1075, column: 10, scope: !2904, inlinedAt: !2922)
!2925 = !DILocation(line: 1063, column: 10, scope: !2883, inlinedAt: !2924)
!2926 = !DILocation(line: 1081, column: 3, scope: !2915)
!2927 = distinct !DISubprogram(name: "version_etc_arn", scope: !170, file: !170, line: 61, type: !2928, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2966)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2930, !44, !44, !44, !2965, !106}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2932, line: 7, baseType: !2933)
!2932 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2933, file: !703, line: 51, baseType: !47, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2933, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2933, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2933, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2933, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2933, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2933, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2933, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2933, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2933, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2933, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2933, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2933, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2933, file: !703, line: 70, baseType: !2949, size: 64, offset: 832)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2933, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2933, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2933, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2933, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2933, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2933, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2933, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2933, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2933, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2933, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2933, file: !703, line: 93, baseType: !2949, size: 64, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2933, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2933, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2933, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2933, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972}
!2967 = !DILocalVariable(name: "stream", arg: 1, scope: !2927, file: !170, line: 61, type: !2930)
!2968 = !DILocalVariable(name: "command_name", arg: 2, scope: !2927, file: !170, line: 62, type: !44)
!2969 = !DILocalVariable(name: "package", arg: 3, scope: !2927, file: !170, line: 62, type: !44)
!2970 = !DILocalVariable(name: "version", arg: 4, scope: !2927, file: !170, line: 63, type: !44)
!2971 = !DILocalVariable(name: "authors", arg: 5, scope: !2927, file: !170, line: 64, type: !2965)
!2972 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2927, file: !170, line: 64, type: !106)
!2973 = !DILocation(line: 0, scope: !2927)
!2974 = !DILocation(line: 66, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2927, file: !170, line: 66, column: 7)
!2976 = !DILocation(line: 66, column: 7, scope: !2927)
!2977 = !DILocation(line: 67, column: 5, scope: !2975)
!2978 = !DILocation(line: 69, column: 5, scope: !2975)
!2979 = !DILocation(line: 83, column: 3, scope: !2927)
!2980 = !DILocation(line: 85, column: 3, scope: !2927)
!2981 = !DILocation(line: 88, column: 3, scope: !2927)
!2982 = !DILocation(line: 95, column: 3, scope: !2927)
!2983 = !DILocation(line: 97, column: 3, scope: !2927)
!2984 = !DILocation(line: 105, column: 7, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2927, file: !170, line: 98, column: 5)
!2986 = !DILocation(line: 106, column: 7, scope: !2985)
!2987 = !DILocation(line: 109, column: 7, scope: !2985)
!2988 = !DILocation(line: 110, column: 7, scope: !2985)
!2989 = !DILocation(line: 113, column: 7, scope: !2985)
!2990 = !DILocation(line: 115, column: 7, scope: !2985)
!2991 = !DILocation(line: 120, column: 7, scope: !2985)
!2992 = !DILocation(line: 122, column: 7, scope: !2985)
!2993 = !DILocation(line: 127, column: 7, scope: !2985)
!2994 = !DILocation(line: 129, column: 7, scope: !2985)
!2995 = !DILocation(line: 134, column: 7, scope: !2985)
!2996 = !DILocation(line: 137, column: 7, scope: !2985)
!2997 = !DILocation(line: 142, column: 7, scope: !2985)
!2998 = !DILocation(line: 145, column: 7, scope: !2985)
!2999 = !DILocation(line: 150, column: 7, scope: !2985)
!3000 = !DILocation(line: 154, column: 7, scope: !2985)
!3001 = !DILocation(line: 159, column: 7, scope: !2985)
!3002 = !DILocation(line: 163, column: 7, scope: !2985)
!3003 = !DILocation(line: 170, column: 7, scope: !2985)
!3004 = !DILocation(line: 174, column: 7, scope: !2985)
!3005 = !DILocation(line: 176, column: 1, scope: !2927)
!3006 = distinct !DISubprogram(name: "version_etc_ar", scope: !170, file: !170, line: 183, type: !3007, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !2930, !44, !44, !44, !2965}
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015}
!3010 = !DILocalVariable(name: "stream", arg: 1, scope: !3006, file: !170, line: 183, type: !2930)
!3011 = !DILocalVariable(name: "command_name", arg: 2, scope: !3006, file: !170, line: 184, type: !44)
!3012 = !DILocalVariable(name: "package", arg: 3, scope: !3006, file: !170, line: 184, type: !44)
!3013 = !DILocalVariable(name: "version", arg: 4, scope: !3006, file: !170, line: 185, type: !44)
!3014 = !DILocalVariable(name: "authors", arg: 5, scope: !3006, file: !170, line: 185, type: !2965)
!3015 = !DILocalVariable(name: "n_authors", scope: !3006, file: !170, line: 187, type: !106)
!3016 = !DILocation(line: 0, scope: !3006)
!3017 = !DILocation(line: 189, column: 8, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3006, file: !170, line: 189, column: 3)
!3019 = !DILocation(line: 0, scope: !3018)
!3020 = !DILocation(line: 189, column: 23, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !170, line: 189, column: 3)
!3022 = !DILocation(line: 189, column: 3, scope: !3018)
!3023 = !DILocation(line: 189, column: 52, scope: !3021)
!3024 = distinct !{!3024, !3022, !3025, !673}
!3025 = !DILocation(line: 190, column: 5, scope: !3018)
!3026 = !DILocation(line: 191, column: 3, scope: !3006)
!3027 = !DILocation(line: 192, column: 1, scope: !3006)
!3028 = distinct !DISubprogram(name: "version_etc_va", scope: !170, file: !170, line: 199, type: !3029, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !3038)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2930, !44, !44, !44, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3037}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3032, file: !170, line: 192, baseType: !7, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3032, file: !170, line: 192, baseType: !7, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3032, file: !170, line: 192, baseType: !31, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3032, file: !170, line: 192, baseType: !31, size: 64, offset: 128)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045}
!3039 = !DILocalVariable(name: "stream", arg: 1, scope: !3028, file: !170, line: 199, type: !2930)
!3040 = !DILocalVariable(name: "command_name", arg: 2, scope: !3028, file: !170, line: 200, type: !44)
!3041 = !DILocalVariable(name: "package", arg: 3, scope: !3028, file: !170, line: 200, type: !44)
!3042 = !DILocalVariable(name: "version", arg: 4, scope: !3028, file: !170, line: 201, type: !44)
!3043 = !DILocalVariable(name: "authors", arg: 5, scope: !3028, file: !170, line: 201, type: !3031)
!3044 = !DILocalVariable(name: "n_authors", scope: !3028, file: !170, line: 203, type: !106)
!3045 = !DILocalVariable(name: "authtab", scope: !3028, file: !170, line: 204, type: !3046)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !113)
!3047 = !DILocation(line: 0, scope: !3028)
!3048 = !DILocation(line: 204, column: 3, scope: !3028)
!3049 = !DILocation(line: 204, column: 15, scope: !3028)
!3050 = !DILocation(line: 208, column: 35, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !170, line: 206, column: 3)
!3052 = distinct !DILexicalBlock(scope: !3028, file: !170, line: 206, column: 3)
!3053 = !DILocation(line: 208, column: 14, scope: !3051)
!3054 = !DILocation(line: 208, column: 33, scope: !3051)
!3055 = !DILocation(line: 208, column: 67, scope: !3051)
!3056 = !DILocation(line: 206, column: 3, scope: !3052)
!3057 = !DILocation(line: 0, scope: !3052)
!3058 = !DILocation(line: 211, column: 3, scope: !3028)
!3059 = !DILocation(line: 213, column: 1, scope: !3028)
!3060 = distinct !DISubprogram(name: "version_etc", scope: !170, file: !170, line: 230, type: !3061, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !2930, !44, !44, !44, null}
!3063 = !{!3064, !3065, !3066, !3067, !3068}
!3064 = !DILocalVariable(name: "stream", arg: 1, scope: !3060, file: !170, line: 230, type: !2930)
!3065 = !DILocalVariable(name: "command_name", arg: 2, scope: !3060, file: !170, line: 231, type: !44)
!3066 = !DILocalVariable(name: "package", arg: 3, scope: !3060, file: !170, line: 231, type: !44)
!3067 = !DILocalVariable(name: "version", arg: 4, scope: !3060, file: !170, line: 232, type: !44)
!3068 = !DILocalVariable(name: "authors", scope: !3060, file: !170, line: 234, type: !3069)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !698, line: 52, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3071, line: 32, baseType: !3072)
!3071 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !170, baseType: !3073)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 192, elements: !731)
!3074 = !DILocation(line: 0, scope: !3060)
!3075 = !DILocation(line: 234, column: 3, scope: !3060)
!3076 = !DILocation(line: 234, column: 11, scope: !3060)
!3077 = !DILocation(line: 236, column: 3, scope: !3060)
!3078 = !DILocation(line: 237, column: 3, scope: !3060)
!3079 = !DILocation(line: 238, column: 3, scope: !3060)
!3080 = !DILocation(line: 239, column: 1, scope: !3060)
!3081 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !170, file: !170, line: 242, type: !631, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !57)
!3082 = !DILocation(line: 244, column: 3, scope: !3081)
!3083 = !DILocation(line: 249, column: 3, scope: !3081)
!3084 = !DILocation(line: 255, column: 3, scope: !3081)
!3085 = !DILocation(line: 260, column: 3, scope: !3081)
!3086 = !DILocation(line: 262, column: 1, scope: !3081)
!3087 = distinct !DISubprogram(name: "xnmalloc", scope: !180, file: !180, line: 99, type: !1149, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3088)
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !180, line: 99, type: !106)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !180, line: 99, type: !106)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !DILocation(line: 101, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !180, line: 101, column: 7)
!3094 = !DILocation(line: 101, column: 7, scope: !3087)
!3095 = !DILocation(line: 102, column: 5, scope: !3093)
!3096 = !DILocation(line: 103, column: 21, scope: !3087)
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !177, line: 39, type: !106)
!3098 = distinct !DISubprogram(name: "xmalloc", scope: !177, file: !177, line: 39, type: !3099, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!31, !106}
!3101 = !{!3097, !3102}
!3102 = !DILocalVariable(name: "p", scope: !3098, file: !177, line: 41, type: !31)
!3103 = !DILocation(line: 0, scope: !3098, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 103, column: 10, scope: !3087)
!3105 = !DILocation(line: 41, column: 13, scope: !3098, inlinedAt: !3104)
!3106 = !DILocation(line: 42, column: 8, scope: !3107, inlinedAt: !3104)
!3107 = distinct !DILexicalBlock(scope: !3098, file: !177, line: 42, column: 7)
!3108 = !DILocation(line: 42, column: 10, scope: !3107, inlinedAt: !3104)
!3109 = !DILocation(line: 43, column: 5, scope: !3107, inlinedAt: !3104)
!3110 = !DILocation(line: 103, column: 3, scope: !3087)
!3111 = !DILocation(line: 0, scope: !3098)
!3112 = !DILocation(line: 41, column: 13, scope: !3098)
!3113 = !DILocation(line: 42, column: 8, scope: !3107)
!3114 = !DILocation(line: 42, column: 10, scope: !3107)
!3115 = !DILocation(line: 43, column: 5, scope: !3107)
!3116 = !DILocation(line: 44, column: 3, scope: !3098)
!3117 = distinct !DISubprogram(name: "xnrealloc", scope: !180, file: !180, line: 112, type: !3118, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!31, !31, !106, !106}
!3120 = !{!3121, !3122, !3123}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3117, file: !180, line: 112, type: !31)
!3122 = !DILocalVariable(name: "n", arg: 2, scope: !3117, file: !180, line: 112, type: !106)
!3123 = !DILocalVariable(name: "s", arg: 3, scope: !3117, file: !180, line: 112, type: !106)
!3124 = !DILocation(line: 0, scope: !3117)
!3125 = !DILocation(line: 114, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3117, file: !180, line: 114, column: 7)
!3127 = !DILocation(line: 114, column: 7, scope: !3117)
!3128 = !DILocation(line: 115, column: 5, scope: !3126)
!3129 = !DILocation(line: 116, column: 25, scope: !3117)
!3130 = !DILocalVariable(name: "p", arg: 1, scope: !3131, file: !177, line: 51, type: !31)
!3131 = distinct !DISubprogram(name: "xrealloc", scope: !177, file: !177, line: 51, type: !3132, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!31, !31, !106}
!3134 = !{!3130, !3135}
!3135 = !DILocalVariable(name: "n", arg: 2, scope: !3131, file: !177, line: 51, type: !106)
!3136 = !DILocation(line: 0, scope: !3131, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 116, column: 10, scope: !3117)
!3138 = !DILocation(line: 53, column: 8, scope: !3139, inlinedAt: !3137)
!3139 = distinct !DILexicalBlock(scope: !3131, file: !177, line: 53, column: 7)
!3140 = !DILocation(line: 53, column: 10, scope: !3139, inlinedAt: !3137)
!3141 = !DILocation(line: 57, column: 7, scope: !3142, inlinedAt: !3137)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !177, line: 54, column: 5)
!3143 = !DILocation(line: 58, column: 7, scope: !3142, inlinedAt: !3137)
!3144 = !DILocation(line: 61, column: 7, scope: !3131, inlinedAt: !3137)
!3145 = !DILocation(line: 62, column: 8, scope: !3146, inlinedAt: !3137)
!3146 = distinct !DILexicalBlock(scope: !3131, file: !177, line: 62, column: 7)
!3147 = !DILocation(line: 62, column: 10, scope: !3146, inlinedAt: !3137)
!3148 = !DILocation(line: 63, column: 5, scope: !3146, inlinedAt: !3137)
!3149 = !DILocation(line: 116, column: 3, scope: !3117)
!3150 = !DILocation(line: 0, scope: !3131)
!3151 = !DILocation(line: 53, column: 8, scope: !3139)
!3152 = !DILocation(line: 53, column: 10, scope: !3139)
!3153 = !DILocation(line: 57, column: 7, scope: !3142)
!3154 = !DILocation(line: 58, column: 7, scope: !3142)
!3155 = !DILocation(line: 61, column: 7, scope: !3131)
!3156 = !DILocation(line: 62, column: 8, scope: !3146)
!3157 = !DILocation(line: 62, column: 10, scope: !3146)
!3158 = !DILocation(line: 63, column: 5, scope: !3146)
!3159 = !DILocation(line: 65, column: 1, scope: !3131)
!3160 = !DILocation(line: 0, scope: !181)
!3161 = !DILocation(line: 176, column: 14, scope: !181)
!3162 = !DILocation(line: 178, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !181, file: !180, line: 178, column: 7)
!3164 = !DILocation(line: 178, column: 7, scope: !181)
!3165 = !DILocation(line: 180, column: 13, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !180, line: 180, column: 11)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !180, line: 179, column: 5)
!3168 = !DILocation(line: 180, column: 11, scope: !3167)
!3169 = !DILocation(line: 188, column: 30, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !180, line: 181, column: 9)
!3171 = !DILocation(line: 189, column: 16, scope: !3170)
!3172 = !DILocation(line: 189, column: 13, scope: !3170)
!3173 = !DILocation(line: 190, column: 9, scope: !3170)
!3174 = !DILocation(line: 191, column: 11, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3167, file: !180, line: 191, column: 11)
!3176 = !DILocation(line: 191, column: 11, scope: !3167)
!3177 = !DILocation(line: 206, column: 7, scope: !181)
!3178 = !DILocation(line: 207, column: 25, scope: !181)
!3179 = !DILocation(line: 0, scope: !3131, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 207, column: 10, scope: !181)
!3181 = !DILocation(line: 53, column: 10, scope: !3139, inlinedAt: !3180)
!3182 = !DILocation(line: 192, column: 9, scope: !3175)
!3183 = !DILocation(line: 200, column: 69, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !180, line: 200, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3163, file: !180, line: 195, column: 5)
!3186 = !DILocation(line: 201, column: 11, scope: !3184)
!3187 = !DILocation(line: 200, column: 11, scope: !3185)
!3188 = !DILocation(line: 202, column: 9, scope: !3184)
!3189 = !DILocation(line: 203, column: 14, scope: !3185)
!3190 = !DILocation(line: 203, column: 18, scope: !3185)
!3191 = !DILocation(line: 203, column: 9, scope: !3185)
!3192 = !DILocation(line: 53, column: 8, scope: !3139, inlinedAt: !3180)
!3193 = !DILocation(line: 57, column: 7, scope: !3142, inlinedAt: !3180)
!3194 = !DILocation(line: 58, column: 7, scope: !3142, inlinedAt: !3180)
!3195 = !DILocation(line: 61, column: 7, scope: !3131, inlinedAt: !3180)
!3196 = !DILocation(line: 62, column: 8, scope: !3146, inlinedAt: !3180)
!3197 = !DILocation(line: 62, column: 10, scope: !3146, inlinedAt: !3180)
!3198 = !DILocation(line: 63, column: 5, scope: !3146, inlinedAt: !3180)
!3199 = !DILocation(line: 207, column: 3, scope: !181)
!3200 = distinct !DISubprogram(name: "xcharalloc", scope: !180, file: !180, line: 216, type: !2340, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !180, line: 216, type: !106)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocation(line: 0, scope: !3098, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 218, column: 10, scope: !3200)
!3206 = !DILocation(line: 41, column: 13, scope: !3098, inlinedAt: !3205)
!3207 = !DILocation(line: 42, column: 8, scope: !3107, inlinedAt: !3205)
!3208 = !DILocation(line: 42, column: 10, scope: !3107, inlinedAt: !3205)
!3209 = !DILocation(line: 43, column: 5, scope: !3107, inlinedAt: !3205)
!3210 = !DILocation(line: 218, column: 3, scope: !3200)
!3211 = distinct !DISubprogram(name: "x2realloc", scope: !177, file: !177, line: 74, type: !3212, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!31, !31, !184}
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "p", arg: 1, scope: !3211, file: !177, line: 74, type: !31)
!3216 = !DILocalVariable(name: "pn", arg: 2, scope: !3211, file: !177, line: 74, type: !184)
!3217 = !DILocation(line: 0, scope: !3211)
!3218 = !DILocation(line: 0, scope: !181, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 76, column: 10, scope: !3211)
!3220 = !DILocation(line: 176, column: 14, scope: !181, inlinedAt: !3219)
!3221 = !DILocation(line: 178, column: 9, scope: !3163, inlinedAt: !3219)
!3222 = !DILocation(line: 178, column: 7, scope: !181, inlinedAt: !3219)
!3223 = !DILocation(line: 180, column: 13, scope: !3166, inlinedAt: !3219)
!3224 = !DILocation(line: 180, column: 11, scope: !3167, inlinedAt: !3219)
!3225 = !DILocation(line: 191, column: 11, scope: !3175, inlinedAt: !3219)
!3226 = !DILocation(line: 191, column: 11, scope: !3167, inlinedAt: !3219)
!3227 = !DILocation(line: 192, column: 9, scope: !3175, inlinedAt: !3219)
!3228 = !DILocation(line: 201, column: 11, scope: !3184, inlinedAt: !3219)
!3229 = !DILocation(line: 200, column: 11, scope: !3185, inlinedAt: !3219)
!3230 = !DILocation(line: 202, column: 9, scope: !3184, inlinedAt: !3219)
!3231 = !DILocation(line: 203, column: 14, scope: !3185, inlinedAt: !3219)
!3232 = !DILocation(line: 203, column: 18, scope: !3185, inlinedAt: !3219)
!3233 = !DILocation(line: 203, column: 9, scope: !3185, inlinedAt: !3219)
!3234 = !DILocation(line: 0, scope: !3131, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 207, column: 10, scope: !181, inlinedAt: !3219)
!3236 = !DILocation(line: 53, column: 10, scope: !3139, inlinedAt: !3235)
!3237 = !DILocation(line: 206, column: 7, scope: !181, inlinedAt: !3219)
!3238 = !DILocation(line: 61, column: 7, scope: !3131, inlinedAt: !3235)
!3239 = !DILocation(line: 62, column: 8, scope: !3146, inlinedAt: !3235)
!3240 = !DILocation(line: 62, column: 10, scope: !3146, inlinedAt: !3235)
!3241 = !DILocation(line: 63, column: 5, scope: !3146, inlinedAt: !3235)
!3242 = !DILocation(line: 76, column: 3, scope: !3211)
!3243 = distinct !DISubprogram(name: "xzalloc", scope: !177, file: !177, line: 84, type: !3099, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !177, line: 84, type: !106)
!3246 = !DILocation(line: 0, scope: !3243)
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !177, line: 93, type: !106)
!3248 = distinct !DISubprogram(name: "xcalloc", scope: !177, file: !177, line: 93, type: !1149, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3249)
!3249 = !{!3247, !3250, !3251}
!3250 = !DILocalVariable(name: "s", arg: 2, scope: !3248, file: !177, line: 93, type: !106)
!3251 = !DILocalVariable(name: "p", scope: !3248, file: !177, line: 95, type: !31)
!3252 = !DILocation(line: 0, scope: !3248, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 86, column: 10, scope: !3243)
!3254 = !DILocation(line: 100, column: 7, scope: !3255, inlinedAt: !3253)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !177, line: 100, column: 7)
!3256 = !DILocation(line: 101, column: 7, scope: !3255, inlinedAt: !3253)
!3257 = !DILocation(line: 101, column: 18, scope: !3255, inlinedAt: !3253)
!3258 = !DILocation(line: 101, column: 16, scope: !3255, inlinedAt: !3253)
!3259 = !DILocation(line: 100, column: 7, scope: !3248, inlinedAt: !3253)
!3260 = !DILocation(line: 102, column: 5, scope: !3255, inlinedAt: !3253)
!3261 = !DILocation(line: 86, column: 3, scope: !3243)
!3262 = !DILocation(line: 0, scope: !3248)
!3263 = !DILocation(line: 100, column: 7, scope: !3255)
!3264 = !DILocation(line: 101, column: 7, scope: !3255)
!3265 = !DILocation(line: 101, column: 18, scope: !3255)
!3266 = !DILocation(line: 101, column: 16, scope: !3255)
!3267 = !DILocation(line: 100, column: 7, scope: !3248)
!3268 = !DILocation(line: 102, column: 5, scope: !3255)
!3269 = !DILocation(line: 103, column: 3, scope: !3248)
!3270 = distinct !DISubprogram(name: "xmemdup", scope: !177, file: !177, line: 111, type: !3271, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3275)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!31, !3273, !106}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "p", arg: 1, scope: !3270, file: !177, line: 111, type: !3273)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3270, file: !177, line: 111, type: !106)
!3278 = !DILocation(line: 0, scope: !3270)
!3279 = !DILocation(line: 0, scope: !3098, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 113, column: 18, scope: !3270)
!3281 = !DILocation(line: 41, column: 13, scope: !3098, inlinedAt: !3280)
!3282 = !DILocation(line: 42, column: 8, scope: !3107, inlinedAt: !3280)
!3283 = !DILocation(line: 42, column: 10, scope: !3107, inlinedAt: !3280)
!3284 = !DILocation(line: 43, column: 5, scope: !3107, inlinedAt: !3280)
!3285 = !DILocalVariable(name: "__dest", arg: 1, scope: !3286, file: !1867, line: 26, type: !3289)
!3286 = distinct !DISubprogram(name: "memcpy", scope: !1867, file: !1867, line: 26, type: !3287, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3291)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!31, !3289, !3290, !106}
!3289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!3290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3273)
!3291 = !{!3285, !3292, !3293}
!3292 = !DILocalVariable(name: "__src", arg: 2, scope: !3286, file: !1867, line: 26, type: !3290)
!3293 = !DILocalVariable(name: "__len", arg: 3, scope: !3286, file: !1867, line: 26, type: !106)
!3294 = !DILocation(line: 0, scope: !3286, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 113, column: 10, scope: !3270)
!3296 = !DILocation(line: 29, column: 10, scope: !3286, inlinedAt: !3295)
!3297 = !DILocation(line: 113, column: 3, scope: !3270)
!3298 = distinct !DISubprogram(name: "xstrdup", scope: !177, file: !177, line: 119, type: !966, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "string", arg: 1, scope: !3298, file: !177, line: 119, type: !44)
!3301 = !DILocation(line: 0, scope: !3298)
!3302 = !DILocation(line: 121, column: 27, scope: !3298)
!3303 = !DILocation(line: 121, column: 43, scope: !3298)
!3304 = !DILocation(line: 0, scope: !3270, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 121, column: 10, scope: !3298)
!3306 = !DILocation(line: 0, scope: !3098, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 113, column: 18, scope: !3270, inlinedAt: !3305)
!3308 = !DILocation(line: 41, column: 13, scope: !3098, inlinedAt: !3307)
!3309 = !DILocation(line: 42, column: 8, scope: !3107, inlinedAt: !3307)
!3310 = !DILocation(line: 42, column: 10, scope: !3107, inlinedAt: !3307)
!3311 = !DILocation(line: 43, column: 5, scope: !3107, inlinedAt: !3307)
!3312 = !DILocation(line: 0, scope: !3286, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 113, column: 10, scope: !3270, inlinedAt: !3305)
!3314 = !DILocation(line: 29, column: 10, scope: !3286, inlinedAt: !3313)
!3315 = !DILocation(line: 121, column: 3, scope: !3298)
!3316 = distinct !DISubprogram(name: "xalloc_die", scope: !194, file: !194, line: 32, type: !631, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !57)
!3317 = !DILocation(line: 34, column: 10, scope: !3316)
!3318 = !DILocation(line: 34, column: 33, scope: !3316)
!3319 = !DILocation(line: 34, column: 3, scope: !3316)
!3320 = !DILocation(line: 40, column: 3, scope: !3316)
!3321 = distinct !DISubprogram(name: "xstrtoumax", scope: !3322, file: !3322, line: 76, type: !3323, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !3327)
!3322 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3325, !44, !759, !47, !3326, !44}
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 38, baseType: !5)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3340, !3341, !3344, !3345}
!3328 = !DILocalVariable(name: "s", arg: 1, scope: !3321, file: !3322, line: 76, type: !44)
!3329 = !DILocalVariable(name: "ptr", arg: 2, scope: !3321, file: !3322, line: 76, type: !759)
!3330 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3321, file: !3322, line: 76, type: !47)
!3331 = !DILocalVariable(name: "val", arg: 4, scope: !3321, file: !3322, line: 77, type: !3326)
!3332 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3321, file: !3322, line: 77, type: !44)
!3333 = !DILocalVariable(name: "t_ptr", scope: !3321, file: !3322, line: 79, type: !29)
!3334 = !DILocalVariable(name: "p", scope: !3321, file: !3322, line: 80, type: !759)
!3335 = !DILocalVariable(name: "tmp", scope: !3321, file: !3322, line: 81, type: !787)
!3336 = !DILocalVariable(name: "err", scope: !3321, file: !3322, line: 82, type: !3325)
!3337 = !DILocalVariable(name: "q", scope: !3338, file: !3322, line: 92, type: !44)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3322, line: 91, column: 5)
!3339 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 90, column: 7)
!3340 = !DILocalVariable(name: "ch", scope: !3338, file: !3322, line: 93, type: !1498)
!3341 = !DILocalVariable(name: "base", scope: !3342, file: !3322, line: 129, type: !47)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3322, line: 128, column: 5)
!3343 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 127, column: 7)
!3344 = !DILocalVariable(name: "suffixes", scope: !3342, file: !3322, line: 130, type: !47)
!3345 = !DILocalVariable(name: "overflow", scope: !3342, file: !3322, line: 131, type: !3325)
!3346 = !DILocation(line: 0, scope: !3321)
!3347 = !DILocation(line: 79, column: 3, scope: !3321)
!3348 = !DILocation(line: 84, column: 3, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3322, line: 84, column: 3)
!3350 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 84, column: 3)
!3351 = !DILocation(line: 86, column: 8, scope: !3321)
!3352 = !DILocation(line: 88, column: 3, scope: !3321)
!3353 = !DILocation(line: 88, column: 9, scope: !3321)
!3354 = !DILocation(line: 0, scope: !3338)
!3355 = !DILocation(line: 94, column: 7, scope: !3338)
!3356 = !DILocation(line: 94, column: 14, scope: !3338)
!3357 = !DILocation(line: 95, column: 15, scope: !3338)
!3358 = distinct !{!3358, !3355, !3359, !673}
!3359 = !DILocation(line: 95, column: 17, scope: !3338)
!3360 = !DILocation(line: 96, column: 14, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3338, file: !3322, line: 96, column: 11)
!3362 = !DILocation(line: 100, column: 9, scope: !3321)
!3363 = !DILocation(line: 102, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 102, column: 7)
!3365 = !DILocation(line: 102, column: 10, scope: !3364)
!3366 = !DILocation(line: 102, column: 7, scope: !3321)
!3367 = !DILocation(line: 106, column: 11, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3322, line: 106, column: 11)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !3322, line: 103, column: 5)
!3370 = !DILocation(line: 106, column: 26, scope: !3368)
!3371 = !DILocation(line: 106, column: 29, scope: !3368)
!3372 = !DILocation(line: 106, column: 33, scope: !3368)
!3373 = !DILocation(line: 106, column: 36, scope: !3368)
!3374 = !DILocation(line: 106, column: 11, scope: !3369)
!3375 = !DILocation(line: 111, column: 12, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3364, file: !3322, line: 111, column: 12)
!3377 = !DILocation(line: 111, column: 12, scope: !3364)
!3378 = !DILocation(line: 116, column: 5, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !3322, line: 112, column: 5)
!3380 = !DILocation(line: 121, column: 8, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 121, column: 7)
!3382 = !DILocation(line: 121, column: 7, scope: !3321)
!3383 = !DILocation(line: 123, column: 12, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3322, line: 122, column: 5)
!3385 = !DILocation(line: 124, column: 7, scope: !3384)
!3386 = !DILocation(line: 127, column: 7, scope: !3343)
!3387 = !DILocation(line: 127, column: 11, scope: !3343)
!3388 = !DILocation(line: 127, column: 7, scope: !3321)
!3389 = !DILocation(line: 0, scope: !3342)
!3390 = !DILocation(line: 133, column: 12, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3342, file: !3322, line: 133, column: 11)
!3392 = !DILocation(line: 133, column: 11, scope: !3342)
!3393 = !DILocation(line: 135, column: 16, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !3322, line: 134, column: 9)
!3395 = !DILocation(line: 136, column: 22, scope: !3394)
!3396 = !DILocation(line: 136, column: 11, scope: !3394)
!3397 = !DILocation(line: 139, column: 7, scope: !3342)
!3398 = !DILocation(line: 151, column: 15, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3322, line: 151, column: 15)
!3400 = distinct !DILexicalBlock(scope: !3342, file: !3322, line: 140, column: 9)
!3401 = !DILocation(line: 151, column: 15, scope: !3400)
!3402 = !DILocation(line: 152, column: 21, scope: !3399)
!3403 = !DILocation(line: 152, column: 13, scope: !3399)
!3404 = !DILocation(line: 155, column: 21, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3322, line: 155, column: 21)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !3322, line: 153, column: 15)
!3407 = !DILocation(line: 155, column: 29, scope: !3405)
!3408 = !DILocation(line: 155, column: 21, scope: !3406)
!3409 = !DILocation(line: 163, column: 17, scope: !3406)
!3410 = !DILocation(line: 167, column: 7, scope: !3342)
!3411 = !DILocalVariable(name: "err", scope: !3412, file: !3322, line: 67, type: !3325)
!3412 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3322, file: !3322, line: 65, type: !3413, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!3325, !3326, !47, !47}
!3415 = !{!3416, !3417, !3418, !3411}
!3416 = !DILocalVariable(name: "x", arg: 1, scope: !3412, file: !3322, line: 65, type: !3326)
!3417 = !DILocalVariable(name: "base", arg: 2, scope: !3412, file: !3322, line: 65, type: !47)
!3418 = !DILocalVariable(name: "power", arg: 3, scope: !3412, file: !3322, line: 65, type: !47)
!3419 = !DILocation(line: 0, scope: !3412, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 221, column: 22, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3342, file: !3322, line: 168, column: 9)
!3422 = !DILocalVariable(name: "x", arg: 1, scope: !3423, file: !3322, line: 48, type: !3326)
!3423 = distinct !DISubprogram(name: "bkm_scale", scope: !3322, file: !3322, line: 48, type: !3424, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!3325, !3326, !47}
!3426 = !{!3422, !3427}
!3427 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3423, file: !3322, line: 48, type: !47)
!3428 = !DILocation(line: 0, scope: !3423, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3420)
!3430 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3429)
!3431 = distinct !DILexicalBlock(scope: !3423, file: !3322, line: 55, column: 7)
!3432 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3429)
!3433 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3420)
!3434 = !DILocation(line: 229, column: 11, scope: !3342)
!3435 = !DILocation(line: 0, scope: !3412, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 217, column: 22, scope: !3421)
!3437 = !DILocation(line: 0, scope: !3423, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3436)
!3439 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3438)
!3440 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3438)
!3441 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3436)
!3442 = !DILocation(line: 0, scope: !3412, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 204, column: 22, scope: !3421)
!3444 = !DILocation(line: 0, scope: !3423, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3443)
!3446 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3445)
!3447 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3445)
!3448 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3443)
!3449 = !DILocation(line: 0, scope: !3412, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 185, column: 22, scope: !3421)
!3451 = !DILocation(line: 0, scope: !3423, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3450)
!3453 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3452)
!3454 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3452)
!3455 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3450)
!3456 = !DILocation(line: 0, scope: !3423, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 170, column: 22, scope: !3421)
!3458 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3457)
!3459 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3457)
!3460 = !DILocation(line: 171, column: 11, scope: !3421)
!3461 = !DILocation(line: 0, scope: !3423, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 177, column: 22, scope: !3421)
!3463 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3462)
!3464 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3462)
!3465 = !DILocation(line: 178, column: 11, scope: !3421)
!3466 = !DILocation(line: 0, scope: !3412, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 190, column: 22, scope: !3421)
!3468 = !DILocation(line: 0, scope: !3423, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3467)
!3470 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3469)
!3471 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3469)
!3472 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3467)
!3473 = !DILocation(line: 0, scope: !3412, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 200, column: 22, scope: !3421)
!3475 = !DILocation(line: 0, scope: !3423, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3474)
!3477 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3476)
!3478 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3476)
!3479 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3474)
!3480 = !DILocation(line: 0, scope: !3412, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 209, column: 22, scope: !3421)
!3482 = !DILocation(line: 0, scope: !3423, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3481)
!3484 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3483)
!3485 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3483)
!3486 = !DILocation(line: 69, column: 9, scope: !3412, inlinedAt: !3481)
!3487 = !DILocation(line: 0, scope: !3423, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 213, column: 22, scope: !3421)
!3489 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3488)
!3490 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3488)
!3491 = !DILocation(line: 214, column: 11, scope: !3421)
!3492 = !DILocation(line: 225, column: 16, scope: !3421)
!3493 = !DILocation(line: 226, column: 22, scope: !3421)
!3494 = !DILocation(line: 226, column: 11, scope: !3421)
!3495 = !DILocation(line: 0, scope: !3412, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 195, column: 22, scope: !3421)
!3497 = !DILocation(line: 0, scope: !3423, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 69, column: 12, scope: !3412, inlinedAt: !3496)
!3499 = !DILocation(line: 55, column: 39, scope: !3431, inlinedAt: !3498)
!3500 = !DILocation(line: 55, column: 7, scope: !3423, inlinedAt: !3498)
!3501 = !DILocation(line: 0, scope: !3421)
!3502 = !DILocation(line: 230, column: 10, scope: !3342)
!3503 = !DILocation(line: 231, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3342, file: !3322, line: 231, column: 11)
!3505 = !DILocation(line: 231, column: 11, scope: !3342)
!3506 = !DILocation(line: 107, column: 13, scope: !3368)
!3507 = !DILocation(line: 82, column: 16, scope: !3321)
!3508 = !DILocation(line: 235, column: 8, scope: !3321)
!3509 = !DILocation(line: 236, column: 3, scope: !3321)
!3510 = !DILocation(line: 237, column: 1, scope: !3321)
!3511 = !DISubprogram(name: "strtoumax", scope: !3512, file: !3512, line: 301, type: !3513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3512 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!36, !44, !759, !47}
!3515 = distinct !DISubprogram(name: "rpl_calloc", scope: !200, file: !200, line: 42, type: !1149, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !3516)
!3516 = !{!3517, !3518, !3519, !3520}
!3517 = !DILocalVariable(name: "n", arg: 1, scope: !3515, file: !200, line: 42, type: !106)
!3518 = !DILocalVariable(name: "s", arg: 2, scope: !3515, file: !200, line: 42, type: !106)
!3519 = !DILocalVariable(name: "result", scope: !3515, file: !200, line: 44, type: !31)
!3520 = !DILocalVariable(name: "bytes", scope: !3521, file: !200, line: 56, type: !106)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !200, line: 53, column: 5)
!3522 = distinct !DILexicalBlock(scope: !3515, file: !200, line: 47, column: 7)
!3523 = !DILocation(line: 0, scope: !3515)
!3524 = !DILocation(line: 47, column: 9, scope: !3522)
!3525 = !DILocation(line: 47, column: 14, scope: !3522)
!3526 = !DILocation(line: 0, scope: !3521)
!3527 = !DILocation(line: 57, column: 21, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3521, file: !200, line: 57, column: 11)
!3529 = !DILocation(line: 57, column: 11, scope: !3521)
!3530 = !DILocation(line: 59, column: 11, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3528, file: !200, line: 58, column: 9)
!3532 = !DILocation(line: 59, column: 17, scope: !3531)
!3533 = !DILocation(line: 65, column: 12, scope: !3515)
!3534 = !DILocation(line: 72, column: 3, scope: !3515)
!3535 = !DILocation(line: 73, column: 1, scope: !3515)
!3536 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !202, file: !202, line: 86, type: !3537, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3551)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!106, !3539, !44, !106, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1620, line: 6, baseType: !3542)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1622, line: 21, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 13, size: 64, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3543, file: !1622, line: 15, baseType: !47, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3543, file: !1622, line: 20, baseType: !3547, size: 32, offset: 32)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3543, file: !1622, line: 16, size: 32, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3547, file: !1622, line: 18, baseType: !7, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3547, file: !1622, line: 19, baseType: !1631, size: 32)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3552 = !DILocalVariable(name: "pwc", arg: 1, scope: !3536, file: !202, line: 86, type: !3539)
!3553 = !DILocalVariable(name: "s", arg: 2, scope: !3536, file: !202, line: 86, type: !44)
!3554 = !DILocalVariable(name: "n", arg: 3, scope: !3536, file: !202, line: 86, type: !106)
!3555 = !DILocalVariable(name: "ps", arg: 4, scope: !3536, file: !202, line: 86, type: !3540)
!3556 = !DILocalVariable(name: "ret", scope: !3536, file: !202, line: 88, type: !106)
!3557 = !DILocalVariable(name: "wc", scope: !3536, file: !202, line: 89, type: !1636)
!3558 = !DILocalVariable(name: "uc", scope: !3559, file: !202, line: 156, type: !1498)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !202, line: 155, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3536, file: !202, line: 154, column: 7)
!3561 = !DILocation(line: 0, scope: !3536)
!3562 = !DILocation(line: 89, column: 3, scope: !3536)
!3563 = !DILocation(line: 105, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3536, file: !202, line: 105, column: 7)
!3565 = !DILocation(line: 105, column: 7, scope: !3536)
!3566 = !DILocation(line: 145, column: 9, scope: !3536)
!3567 = !DILocation(line: 154, column: 19, scope: !3560)
!3568 = !DILocation(line: 154, column: 26, scope: !3560)
!3569 = !DILocation(line: 154, column: 41, scope: !3560)
!3570 = !DILocation(line: 154, column: 7, scope: !3536)
!3571 = !DILocation(line: 156, column: 26, scope: !3559)
!3572 = !DILocation(line: 0, scope: !3559)
!3573 = !DILocation(line: 157, column: 14, scope: !3559)
!3574 = !DILocation(line: 157, column: 12, scope: !3559)
!3575 = !DILocation(line: 163, column: 1, scope: !3536)
!3576 = !DISubprogram(name: "mbrtowc", scope: !2300, file: !2300, line: 296, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!36, !49, !44, !36, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3580 = distinct !DISubprogram(name: "close_stream", scope: !204, file: !204, line: 56, type: !3581, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !3617)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!47, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2932, line: 7, baseType: !3585)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3585, file: !703, line: 51, baseType: !47, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3585, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3585, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3585, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3585, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3585, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3585, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3585, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3585, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3585, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3585, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3585, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3585, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3585, file: !703, line: 70, baseType: !3601, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3585, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3585, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3585, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3585, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3585, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3585, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3585, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3585, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3585, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3585, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3585, file: !703, line: 93, baseType: !3601, size: 64, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3585, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3585, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3585, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3585, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!3617 = !{!3618, !3619, !3621, !3622}
!3618 = !DILocalVariable(name: "stream", arg: 1, scope: !3580, file: !204, line: 56, type: !3583)
!3619 = !DILocalVariable(name: "some_pending", scope: !3580, file: !204, line: 58, type: !3620)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!3621 = !DILocalVariable(name: "prev_fail", scope: !3580, file: !204, line: 59, type: !3620)
!3622 = !DILocalVariable(name: "fclose_fail", scope: !3580, file: !204, line: 60, type: !3620)
!3623 = !DILocation(line: 0, scope: !3580)
!3624 = !DILocation(line: 58, column: 30, scope: !3580)
!3625 = !DILocalVariable(name: "__stream", arg: 1, scope: !3626, file: !3627, line: 135, type: !3583)
!3626 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3627, file: !3627, line: 135, type: !3581, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !3628)
!3627 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3628 = !{!3625}
!3629 = !DILocation(line: 0, scope: !3626, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 59, column: 27, scope: !3580)
!3631 = !DILocation(line: 137, column: 10, scope: !3626, inlinedAt: !3630)
!3632 = !{!3633, !839, i64 0}
!3633 = !{!"_IO_FILE", !839, i64 0, !622, i64 8, !622, i64 16, !622, i64 24, !622, i64 32, !622, i64 40, !622, i64 48, !622, i64 56, !622, i64 64, !622, i64 72, !622, i64 80, !622, i64 88, !622, i64 96, !622, i64 104, !839, i64 112, !839, i64 116, !914, i64 120, !1859, i64 128, !623, i64 130, !623, i64 131, !622, i64 136, !914, i64 144, !622, i64 152, !622, i64 160, !622, i64 168, !622, i64 176, !914, i64 184, !839, i64 192, !623, i64 196}
!3634 = !DILocation(line: 59, column: 43, scope: !3580)
!3635 = !DILocation(line: 60, column: 29, scope: !3580)
!3636 = !DILocation(line: 60, column: 45, scope: !3580)
!3637 = !DILocation(line: 70, column: 17, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3580, file: !204, line: 70, column: 7)
!3639 = !DILocation(line: 58, column: 50, scope: !3580)
!3640 = !DILocation(line: 70, column: 33, scope: !3638)
!3641 = !DILocation(line: 70, column: 53, scope: !3638)
!3642 = !DILocation(line: 70, column: 59, scope: !3638)
!3643 = !DILocation(line: 70, column: 7, scope: !3580)
!3644 = !DILocation(line: 72, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3638, file: !204, line: 71, column: 5)
!3646 = !DILocation(line: 73, column: 9, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3645, file: !204, line: 72, column: 11)
!3648 = !DILocation(line: 73, column: 15, scope: !3647)
!3649 = !DILocation(line: 78, column: 1, scope: !3580)
!3650 = distinct !DISubprogram(name: "hard_locale", scope: !206, file: !206, line: 27, type: !3651, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!66, !47}
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "category", arg: 1, scope: !3650, file: !206, line: 27, type: !47)
!3655 = !DILocalVariable(name: "locale", scope: !3650, file: !206, line: 29, type: !3656)
!3656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2056, elements: !3657)
!3657 = !{!3658}
!3658 = !DISubrange(count: 257)
!3659 = !DILocation(line: 0, scope: !3650)
!3660 = !DILocation(line: 29, column: 3, scope: !3650)
!3661 = !DILocation(line: 29, column: 8, scope: !3650)
!3662 = !DILocation(line: 31, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3650, file: !206, line: 31, column: 7)
!3664 = !DILocation(line: 31, column: 7, scope: !3650)
!3665 = !DILocation(line: 34, column: 12, scope: !3650)
!3666 = !DILocation(line: 34, column: 38, scope: !3650)
!3667 = !DILocation(line: 34, column: 41, scope: !3650)
!3668 = !DILocation(line: 34, column: 66, scope: !3650)
!3669 = !DILocation(line: 35, column: 1, scope: !3650)
!3670 = distinct !DISubprogram(name: "locale_charset", scope: !208, file: !208, line: 831, type: !3671, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!44}
!3673 = !{!3674}
!3674 = !DILocalVariable(name: "codeset", scope: !3670, file: !208, line: 833, type: !44)
!3675 = !DILocation(line: 847, column: 13, scope: !3670)
!3676 = !DILocation(line: 0, scope: !3670)
!3677 = !DILocation(line: 911, column: 15, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3670, file: !208, line: 911, column: 7)
!3679 = !DILocation(line: 911, column: 7, scope: !3670)
!3680 = !DILocation(line: 1070, column: 13, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !208, line: 1070, column: 13)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !208, line: 1060, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3670, file: !208, line: 1019, column: 3)
!3684 = !DILocation(line: 1070, column: 24, scope: !3681)
!3685 = !DILocation(line: 1070, column: 13, scope: !3682)
!3686 = !DILocation(line: 1158, column: 3, scope: !3670)
!3687 = !DISubprogram(name: "nl_langinfo", scope: !211, file: !211, line: 661, type: !3688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!29, !47}
!3690 = distinct !DISubprogram(name: "setlocale_null_r", scope: !597, file: !597, line: 269, type: !3691, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!47, !47, !29, !106}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "category", arg: 1, scope: !3690, file: !597, line: 269, type: !47)
!3695 = !DILocalVariable(name: "buf", arg: 2, scope: !3690, file: !597, line: 269, type: !29)
!3696 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3690, file: !597, line: 269, type: !106)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocalVariable(name: "category", arg: 1, scope: !3699, file: !597, line: 91, type: !47)
!3699 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !597, file: !597, line: 91, type: !3691, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3700)
!3700 = !{!3698, !3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "buf", arg: 2, scope: !3699, file: !597, line: 91, type: !29)
!3702 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3699, file: !597, line: 91, type: !106)
!3703 = !DILocalVariable(name: "result", scope: !3699, file: !597, line: 140, type: !44)
!3704 = !DILocalVariable(name: "length", scope: !3705, file: !597, line: 154, type: !106)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !597, line: 153, column: 5)
!3706 = distinct !DILexicalBlock(scope: !3699, file: !597, line: 142, column: 7)
!3707 = !DILocation(line: 0, scope: !3699, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 274, column: 10, scope: !3690)
!3709 = !DILocalVariable(name: "category", arg: 1, scope: !3710, file: !597, line: 60, type: !47)
!3710 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !597, file: !597, line: 60, type: !3711, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!44, !47}
!3713 = !{!3709, !3714}
!3714 = !DILocalVariable(name: "result", scope: !3710, file: !597, line: 62, type: !44)
!3715 = !DILocation(line: 0, scope: !3710, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 140, column: 24, scope: !3699, inlinedAt: !3708)
!3717 = !DILocation(line: 62, column: 24, scope: !3710, inlinedAt: !3716)
!3718 = !DILocation(line: 142, column: 14, scope: !3706, inlinedAt: !3708)
!3719 = !DILocation(line: 142, column: 7, scope: !3699, inlinedAt: !3708)
!3720 = !DILocation(line: 145, column: 19, scope: !3721, inlinedAt: !3708)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !597, line: 145, column: 11)
!3722 = distinct !DILexicalBlock(scope: !3706, file: !597, line: 143, column: 5)
!3723 = !DILocation(line: 145, column: 11, scope: !3722, inlinedAt: !3708)
!3724 = !DILocation(line: 149, column: 16, scope: !3721, inlinedAt: !3708)
!3725 = !DILocation(line: 149, column: 9, scope: !3721, inlinedAt: !3708)
!3726 = !DILocation(line: 154, column: 23, scope: !3705, inlinedAt: !3708)
!3727 = !DILocation(line: 0, scope: !3705, inlinedAt: !3708)
!3728 = !DILocation(line: 155, column: 18, scope: !3729, inlinedAt: !3708)
!3729 = distinct !DILexicalBlock(scope: !3705, file: !597, line: 155, column: 11)
!3730 = !DILocation(line: 155, column: 11, scope: !3705, inlinedAt: !3708)
!3731 = !DILocation(line: 157, column: 39, scope: !3732, inlinedAt: !3708)
!3732 = distinct !DILexicalBlock(scope: !3729, file: !597, line: 156, column: 9)
!3733 = !DILocalVariable(name: "__dest", arg: 1, scope: !3734, file: !1867, line: 26, type: !3289)
!3734 = distinct !DISubprogram(name: "memcpy", scope: !1867, file: !1867, line: 26, type: !3287, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3735)
!3735 = !{!3733, !3736, !3737}
!3736 = !DILocalVariable(name: "__src", arg: 2, scope: !3734, file: !1867, line: 26, type: !3290)
!3737 = !DILocalVariable(name: "__len", arg: 3, scope: !3734, file: !1867, line: 26, type: !106)
!3738 = !DILocation(line: 0, scope: !3734, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 157, column: 11, scope: !3732, inlinedAt: !3708)
!3740 = !DILocation(line: 29, column: 10, scope: !3734, inlinedAt: !3739)
!3741 = !DILocation(line: 158, column: 11, scope: !3732, inlinedAt: !3708)
!3742 = !DILocation(line: 162, column: 23, scope: !3743, inlinedAt: !3708)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !597, line: 162, column: 15)
!3744 = distinct !DILexicalBlock(scope: !3729, file: !597, line: 161, column: 9)
!3745 = !DILocation(line: 162, column: 15, scope: !3744, inlinedAt: !3708)
!3746 = !DILocation(line: 167, column: 44, scope: !3747, inlinedAt: !3708)
!3747 = distinct !DILexicalBlock(scope: !3743, file: !597, line: 163, column: 13)
!3748 = !DILocation(line: 0, scope: !3734, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 167, column: 15, scope: !3747, inlinedAt: !3708)
!3750 = !DILocation(line: 29, column: 10, scope: !3734, inlinedAt: !3749)
!3751 = !DILocation(line: 168, column: 15, scope: !3747, inlinedAt: !3708)
!3752 = !DILocation(line: 168, column: 32, scope: !3747, inlinedAt: !3708)
!3753 = !DILocation(line: 169, column: 13, scope: !3747, inlinedAt: !3708)
!3754 = !DILocation(line: 0, scope: !3706, inlinedAt: !3708)
!3755 = !DILocation(line: 274, column: 3, scope: !3690)
!3756 = distinct !DISubprogram(name: "setlocale_null", scope: !597, file: !597, line: 301, type: !3711, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3757)
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "category", arg: 1, scope: !3756, file: !597, line: 301, type: !47)
!3759 = !DILocation(line: 0, scope: !3756)
!3760 = !DILocation(line: 0, scope: !3710, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 304, column: 10, scope: !3756)
!3762 = !DILocation(line: 62, column: 24, scope: !3710, inlinedAt: !3761)
!3763 = !DILocation(line: 304, column: 3, scope: !3756)
!3764 = distinct !DISubprogram(name: "rpl_fclose", scope: !599, file: !599, line: 58, type: !3765, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !3801)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!47, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2932, line: 7, baseType: !3769)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3769, file: !703, line: 51, baseType: !47, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3769, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3769, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3769, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3769, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3769, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3769, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3769, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3769, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3769, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3769, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3769, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3769, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3769, file: !703, line: 70, baseType: !3785, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3769, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3769, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3769, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3769, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3769, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3769, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3769, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3769, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3769, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3769, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3769, file: !703, line: 93, baseType: !3785, size: 64, offset: 1344)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3769, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3769, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3769, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3769, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!3801 = !{!3802, !3803, !3804, !3805}
!3802 = !DILocalVariable(name: "fp", arg: 1, scope: !3764, file: !599, line: 58, type: !3767)
!3803 = !DILocalVariable(name: "saved_errno", scope: !3764, file: !599, line: 60, type: !47)
!3804 = !DILocalVariable(name: "fd", scope: !3764, file: !599, line: 61, type: !47)
!3805 = !DILocalVariable(name: "result", scope: !3764, file: !599, line: 62, type: !47)
!3806 = !DILocation(line: 0, scope: !3764)
!3807 = !DILocation(line: 65, column: 8, scope: !3764)
!3808 = !DILocation(line: 66, column: 10, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3764, file: !599, line: 66, column: 7)
!3810 = !DILocation(line: 66, column: 7, scope: !3764)
!3811 = !DILocation(line: 67, column: 12, scope: !3809)
!3812 = !DILocation(line: 67, column: 5, scope: !3809)
!3813 = !DILocation(line: 72, column: 9, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3764, file: !599, line: 72, column: 7)
!3815 = !DILocation(line: 72, column: 23, scope: !3814)
!3816 = !DILocation(line: 72, column: 33, scope: !3814)
!3817 = !DILocation(line: 72, column: 26, scope: !3814)
!3818 = !DILocation(line: 72, column: 59, scope: !3814)
!3819 = !DILocation(line: 73, column: 7, scope: !3814)
!3820 = !DILocation(line: 73, column: 10, scope: !3814)
!3821 = !DILocation(line: 72, column: 7, scope: !3764)
!3822 = !DILocation(line: 100, column: 12, scope: !3764)
!3823 = !DILocation(line: 105, column: 7, scope: !3764)
!3824 = !DILocation(line: 74, column: 19, scope: !3814)
!3825 = !DILocation(line: 105, column: 19, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3764, file: !599, line: 105, column: 7)
!3827 = !DILocation(line: 107, column: 13, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3826, file: !599, line: 106, column: 5)
!3829 = !DILocation(line: 109, column: 5, scope: !3828)
!3830 = !DILocation(line: 112, column: 1, scope: !3764)
!3831 = !DISubprogram(name: "fileno", scope: !698, file: !698, line: 785, type: !3832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!47, !3785}
!3834 = !DISubprogram(name: "fclose", scope: !698, file: !698, line: 213, type: !3832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3835 = !DISubprogram(name: "lseek", scope: !3836, file: !3836, line: 334, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3836 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!725, !47, !725, !47}
!3839 = distinct !DISubprogram(name: "rpl_fflush", scope: !601, file: !601, line: 129, type: !3840, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3876)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!47, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2932, line: 7, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3844, file: !703, line: 51, baseType: !47, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3844, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3844, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3844, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3844, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3844, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3844, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3844, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3844, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3844, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3844, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3844, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3844, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3844, file: !703, line: 70, baseType: !3860, size: 64, offset: 832)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3844, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3844, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3844, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3844, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3844, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3844, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3844, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3844, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3844, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3844, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3844, file: !703, line: 93, baseType: !3860, size: 64, offset: 1344)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3844, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3844, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3844, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3844, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "stream", arg: 1, scope: !3839, file: !601, line: 129, type: !3842)
!3878 = !DILocation(line: 0, scope: !3839)
!3879 = !DILocation(line: 150, column: 14, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3839, file: !601, line: 150, column: 7)
!3881 = !DILocation(line: 150, column: 22, scope: !3880)
!3882 = !DILocation(line: 150, column: 27, scope: !3880)
!3883 = !DILocation(line: 150, column: 7, scope: !3839)
!3884 = !DILocation(line: 151, column: 12, scope: !3880)
!3885 = !DILocation(line: 151, column: 5, scope: !3880)
!3886 = !DILocalVariable(name: "fp", arg: 1, scope: !3887, file: !601, line: 41, type: !3842)
!3887 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !601, file: !601, line: 41, type: !3888, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3842}
!3890 = !{!3886}
!3891 = !DILocation(line: 0, scope: !3887, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 156, column: 3, scope: !3839)
!3893 = !DILocation(line: 43, column: 11, scope: !3894, inlinedAt: !3892)
!3894 = distinct !DILexicalBlock(scope: !3887, file: !601, line: 43, column: 7)
!3895 = !DILocation(line: 43, column: 18, scope: !3894, inlinedAt: !3892)
!3896 = !DILocation(line: 43, column: 7, scope: !3887, inlinedAt: !3892)
!3897 = !DILocation(line: 45, column: 5, scope: !3894, inlinedAt: !3892)
!3898 = !DILocation(line: 158, column: 10, scope: !3839)
!3899 = !DILocation(line: 158, column: 3, scope: !3839)
!3900 = !DILocation(line: 235, column: 1, scope: !3839)
!3901 = !DISubprogram(name: "fflush", scope: !698, file: !698, line: 218, type: !3902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!47, !3860}
!3904 = distinct !DISubprogram(name: "rpl_fseeko", scope: !603, file: !603, line: 28, type: !3905, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3942)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!47, !3907, !3941, !47}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2932, line: 7, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3909, file: !703, line: 51, baseType: !47, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3909, file: !703, line: 54, baseType: !29, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3909, file: !703, line: 55, baseType: !29, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3909, file: !703, line: 56, baseType: !29, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3909, file: !703, line: 57, baseType: !29, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3909, file: !703, line: 58, baseType: !29, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3909, file: !703, line: 59, baseType: !29, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3909, file: !703, line: 60, baseType: !29, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3909, file: !703, line: 61, baseType: !29, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3909, file: !703, line: 64, baseType: !29, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3909, file: !703, line: 65, baseType: !29, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3909, file: !703, line: 66, baseType: !29, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3909, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3909, file: !703, line: 70, baseType: !3925, size: 64, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3909, file: !703, line: 72, baseType: !47, size: 32, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3909, file: !703, line: 73, baseType: !47, size: 32, offset: 928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3909, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3909, file: !703, line: 77, baseType: !105, size: 16, offset: 1024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3909, file: !703, line: 78, baseType: !728, size: 8, offset: 1040)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3909, file: !703, line: 79, baseType: !730, size: 8, offset: 1048)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3909, file: !703, line: 81, baseType: !734, size: 64, offset: 1088)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3909, file: !703, line: 89, baseType: !737, size: 64, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3909, file: !703, line: 91, baseType: !739, size: 64, offset: 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3909, file: !703, line: 92, baseType: !742, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3909, file: !703, line: 93, baseType: !3925, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3909, file: !703, line: 94, baseType: !31, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3909, file: !703, line: 95, baseType: !106, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3909, file: !703, line: 96, baseType: !47, size: 32, offset: 1536)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3909, file: !703, line: 98, baseType: !749, size: 160, offset: 1568)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !698, line: 63, baseType: !724)
!3942 = !{!3943, !3944, !3945, !3946}
!3943 = !DILocalVariable(name: "fp", arg: 1, scope: !3904, file: !603, line: 28, type: !3907)
!3944 = !DILocalVariable(name: "offset", arg: 2, scope: !3904, file: !603, line: 28, type: !3941)
!3945 = !DILocalVariable(name: "whence", arg: 3, scope: !3904, file: !603, line: 28, type: !47)
!3946 = !DILocalVariable(name: "pos", scope: !3947, file: !603, line: 117, type: !3941)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !603, line: 113, column: 5)
!3948 = distinct !DILexicalBlock(scope: !3904, file: !603, line: 52, column: 7)
!3949 = !DILocation(line: 0, scope: !3904)
!3950 = !DILocation(line: 52, column: 11, scope: !3948)
!3951 = !{!3633, !622, i64 16}
!3952 = !DILocation(line: 52, column: 31, scope: !3948)
!3953 = !{!3633, !622, i64 8}
!3954 = !DILocation(line: 52, column: 24, scope: !3948)
!3955 = !DILocation(line: 53, column: 7, scope: !3948)
!3956 = !DILocation(line: 53, column: 14, scope: !3948)
!3957 = !{!3633, !622, i64 40}
!3958 = !DILocation(line: 53, column: 35, scope: !3948)
!3959 = !{!3633, !622, i64 32}
!3960 = !DILocation(line: 53, column: 28, scope: !3948)
!3961 = !DILocation(line: 54, column: 7, scope: !3948)
!3962 = !DILocation(line: 54, column: 14, scope: !3948)
!3963 = !{!3633, !622, i64 72}
!3964 = !DILocation(line: 54, column: 28, scope: !3948)
!3965 = !DILocation(line: 52, column: 7, scope: !3904)
!3966 = !DILocation(line: 117, column: 26, scope: !3947)
!3967 = !DILocation(line: 117, column: 19, scope: !3947)
!3968 = !DILocation(line: 0, scope: !3947)
!3969 = !DILocation(line: 118, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3947, file: !603, line: 118, column: 11)
!3971 = !DILocation(line: 118, column: 11, scope: !3947)
!3972 = !DILocation(line: 129, column: 11, scope: !3947)
!3973 = !DILocation(line: 129, column: 18, scope: !3947)
!3974 = !DILocation(line: 130, column: 11, scope: !3947)
!3975 = !DILocation(line: 130, column: 19, scope: !3947)
!3976 = !{!3633, !914, i64 144}
!3977 = !DILocation(line: 161, column: 7, scope: !3947)
!3978 = !DILocation(line: 163, column: 10, scope: !3904)
!3979 = !DILocation(line: 163, column: 3, scope: !3904)
!3980 = !DILocation(line: 164, column: 1, scope: !3904)
!3981 = !DISubprogram(name: "fseeko", scope: !698, file: !698, line: 712, type: !3982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!47, !3925, !725, !47}
