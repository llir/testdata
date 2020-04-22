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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !191
@.str.26 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !196
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !239
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !241
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !247
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !288
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !381
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !387
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !389
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !396
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !403
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !391
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !405
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !411
@.str.1.129 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.134 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lchmod.fmt = internal constant [17 x i8] c"/proc/self/fd/%d\00", align 16, !dbg !419
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1167 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1172, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %0, metadata !1171, metadata !DIExpression()), !dbg !1193
  %3 = icmp eq i32 %0, 0, !dbg !1194
  br i1 %3, label %9, label %4, !dbg !1195

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1196, !tbaa !1198
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1196
  %7 = load i8*, i8** @program_name, align 8, !dbg !1196, !tbaa !1198
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1196
  br label %75, !dbg !1196

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1202
  %11 = load i8*, i8** @program_name, align 8, !dbg !1202, !tbaa !1198
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1202
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1203
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !1198
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1203
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1204
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204, !tbaa !1198
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1204
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1207
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1207, !tbaa !1198
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1207
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1208
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1208, !tbaa !1198
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1208
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1209
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1209, !tbaa !1198
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1209
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1210
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1210, !tbaa !1198
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1210
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.7, i64 0, i64 0), i32 5) #18, !dbg !1211
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1211, !tbaa !1198
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1211
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 5) #18, !dbg !1212
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1212, !tbaa !1198
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1212
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #18, !dbg !1213
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1213
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), metadata !1176, metadata !DIExpression()) #18, !dbg !1214
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #18, !dbg !1215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), metadata !1177, metadata !DIExpression()) #18, !dbg !1214
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  br label %41, !dbg !1217

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %42) #22, !dbg !1218
  %45 = icmp eq i32 %44, 0, !dbg !1218
  br i1 %45, label %51, label %46, !dbg !1217

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !1220
  %49 = load i8*, i8** %48, align 8, !dbg !1220, !tbaa !1221
  %50 = icmp eq i8* %49, null, !dbg !1223
  br i1 %50, label %51, label %41, !dbg !1224, !llvm.loop !1225

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1178, metadata !DIExpression()) #18, !dbg !1214
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !1226
  %54 = load i8*, i8** %53, align 8, !dbg !1226, !tbaa !1228
  %55 = icmp eq i8* %54, null, !dbg !1229
  %56 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %54, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %56, metadata !1177, metadata !DIExpression()) #18, !dbg !1214
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #18, !dbg !1231
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #18, !dbg !1231
  %59 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %59, metadata !1185, metadata !DIExpression()) #18, !dbg !1214
  %60 = icmp eq i8* %59, null, !dbg !1233
  br i1 %60, label %68, label %61, !dbg !1235

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #22, !dbg !1236
  %63 = icmp eq i32 %62, 0, !dbg !1236
  br i1 %63, label %68, label %64, !dbg !1237

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 5) #18, !dbg !1238
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1238, !tbaa !1198
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #18, !dbg !1238
  br label %68, !dbg !1240

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 5) #18, !dbg !1241
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1241
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #18, !dbg !1242
  %72 = icmp eq i8* %56, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), !dbg !1242
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1242
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #18, !dbg !1242
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #18, !dbg !1243
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #23, !dbg !1244
  unreachable, !dbg !1244
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !29 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !39 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !104 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1245 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1249, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8** %1, metadata !1250, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* null, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* null, metadata !1256, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 0, metadata !1257, metadata !DIExpression()), !dbg !1276
  %6 = load i8*, i8** %1, align 8, !dbg !1277, !tbaa !1198
  tail call void @set_program_name(i8* %6) #18, !dbg !1278
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1279
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !1280
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !1281
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1282
  br label %11, !dbg !1283

11:                                               ; preds = %15, %2
  %12 = phi i8* [ %16, %15 ], [ null, %2 ]
  br label %13, !dbg !1283

13:                                               ; preds = %20, %11
  call void @llvm.dbg.value(metadata i8* %12, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* null, metadata !1256, metadata !DIExpression()), !dbg !1276
  %14 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %14, metadata !1253, metadata !DIExpression()), !dbg !1276
  switch i32 %14, label %27 [
    i32 -1, label %28
    i32 109, label %15
    i32 90, label %17
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1283

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8, !dbg !1285, !tbaa !1198
  call void @llvm.dbg.value(metadata i8* %16, metadata !1252, metadata !DIExpression()), !dbg !1276
  br label %11, !dbg !1288, !llvm.loop !1289

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8, !dbg !1291, !tbaa !1198
  %19 = icmp eq i8* %18, null, !dbg !1293
  br i1 %19, label %20, label %21, !dbg !1296

20:                                               ; preds = %17, %21
  br label %13, !dbg !1276, !llvm.loop !1289

21:                                               ; preds = %17
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1297
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22) #18, !dbg !1299
  br label %20, !dbg !1300

23:                                               ; preds = %13
  tail call void @usage(i32 0) #24, !dbg !1301
  unreachable, !dbg !1301

24:                                               ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1302, !tbaa !1198
  %26 = load i8*, i8** @Version, align 8, !dbg !1302, !tbaa !1198
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* null) #18, !dbg !1302
  tail call void @exit(i32 0) #23, !dbg !1302
  unreachable, !dbg !1302

27:                                               ; preds = %13
  tail call void @usage(i32 1) #24, !dbg !1303
  unreachable, !dbg !1303

28:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %12, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %12, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %12, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %12, metadata !1252, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 438, metadata !1251, metadata !DIExpression()), !dbg !1276
  %29 = icmp ne i8* %12, null, !dbg !1304
  br i1 %29, label %30, label %43, !dbg !1305

30:                                               ; preds = %28
  %31 = tail call %struct.mode_change* @mode_compile(i8* nonnull %12) #18, !dbg !1306
  call void @llvm.dbg.value(metadata %struct.mode_change* %31, metadata !1261, metadata !DIExpression()), !dbg !1307
  %32 = icmp eq %struct.mode_change* %31, null, !dbg !1308
  br i1 %32, label %33, label %35, !dbg !1310

33:                                               ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1311
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #18, !dbg !1311
  unreachable, !dbg !1311

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 0) #18, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %36, metadata !1258, metadata !DIExpression()), !dbg !1307
  %37 = tail call i32 @umask(i32 %36) #18, !dbg !1313
  %38 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %36, %struct.mode_change* nonnull %31, i32* null) #18, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %38, metadata !1251, metadata !DIExpression()), !dbg !1276
  %39 = bitcast %struct.mode_change* %31 to i8*, !dbg !1315
  tail call void @free(i8* %39) #18, !dbg !1316
  %40 = icmp ugt i32 %38, 511, !dbg !1317
  br i1 %40, label %41, label %43, !dbg !1319

41:                                               ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1320
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %42) #18, !dbg !1320
  unreachable, !dbg !1320

43:                                               ; preds = %35, %28
  %44 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !1276
  call void @llvm.dbg.value(metadata i32 %44, metadata !1251, metadata !DIExpression()), !dbg !1276
  %45 = load i32, i32* @optind, align 4, !dbg !1321, !tbaa !1322
  %46 = icmp slt i32 %45, %0, !dbg !1324
  br i1 %46, label %47, label %56, !dbg !1325

47:                                               ; preds = %43
  %48 = add nsw i32 %45, 1, !dbg !1326
  %49 = icmp slt i32 %48, %0, !dbg !1327
  br i1 %49, label %50, label %57, !dbg !1328

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64, !dbg !1329
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !1329
  %53 = load i8*, i8** %52, align 8, !dbg !1329, !tbaa !1198
  %54 = load i8, i8* %53, align 1, !dbg !1329, !tbaa !1330
  %55 = icmp eq i8 %54, 112, !dbg !1331
  br i1 %55, label %56, label %57, !dbg !1332

56:                                               ; preds = %43, %50
  br label %57, !dbg !1332

57:                                               ; preds = %47, %50, %56
  %58 = phi i1 [ true, %56 ], [ false, %50 ], [ false, %47 ]
  %59 = phi i64 [ 2, %56 ], [ 4, %50 ], [ 4, %47 ]
  call void @llvm.dbg.value(metadata i64 %59, metadata !1254, metadata !DIExpression()), !dbg !1276
  %60 = sub nsw i32 %0, %45, !dbg !1333
  %61 = sext i32 %60 to i64, !dbg !1335
  %62 = icmp ugt i64 %59, %61, !dbg !1336
  br i1 %62, label %63, label %83, !dbg !1337

63:                                               ; preds = %57
  br i1 %46, label %66, label %64, !dbg !1338

64:                                               ; preds = %63
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1340
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65) #18, !dbg !1342
  br label %73, !dbg !1342

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 5) #18, !dbg !1343
  %68 = add nsw i32 %0, -1, !dbg !1344
  %69 = sext i32 %68 to i64, !dbg !1345
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !1345
  %71 = load i8*, i8** %70, align 8, !dbg !1345, !tbaa !1198
  %72 = tail call i8* @quote(i8* %71) #18, !dbg !1346
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67, i8* %72) #18, !dbg !1347
  br label %73

73:                                               ; preds = %66, %64
  br i1 %58, label %82, label %74, !dbg !1348

74:                                               ; preds = %73
  %75 = load i32, i32* @optind, align 4, !dbg !1350, !tbaa !1322
  %76 = sub nsw i32 %0, %75, !dbg !1351
  %77 = icmp eq i32 %76, 2, !dbg !1352
  br i1 %77, label %78, label %82, !dbg !1353

78:                                               ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1354, !tbaa !1198
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1354
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %79, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %80) #18, !dbg !1354
  br label %82, !dbg !1354

82:                                               ; preds = %73, %78, %74
  tail call void @usage(i32 1) #24, !dbg !1355
  unreachable, !dbg !1355

83:                                               ; preds = %57
  %84 = icmp ult i64 %59, %61, !dbg !1356
  br i1 %84, label %85, label %102, !dbg !1358

85:                                               ; preds = %83
  %86 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #18, !dbg !1359
  %87 = load i32, i32* @optind, align 4, !dbg !1361, !tbaa !1322
  %88 = sext i32 %87 to i64, !dbg !1361
  %89 = add nsw i64 %59, %88, !dbg !1362
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89, !dbg !1363
  %91 = load i8*, i8** %90, align 8, !dbg !1363, !tbaa !1198
  %92 = tail call i8* @quote(i8* %91) #18, !dbg !1364
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %86, i8* %92) #18, !dbg !1365
  br i1 %58, label %93, label %101, !dbg !1366

93:                                               ; preds = %85
  %94 = load i32, i32* @optind, align 4, !dbg !1368, !tbaa !1322
  %95 = sub nsw i32 %0, %94, !dbg !1369
  %96 = icmp eq i32 %95, 4, !dbg !1370
  br i1 %96, label %97, label %101, !dbg !1371

97:                                               ; preds = %93
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1372, !tbaa !1198
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1372
  %100 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %98, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %99) #18, !dbg !1372
  br label %101, !dbg !1372

101:                                              ; preds = %97, %93, %85
  tail call void @usage(i32 1) #24, !dbg !1373
  unreachable, !dbg !1373

102:                                              ; preds = %83
  %103 = add nsw i32 %45, 1, !dbg !1374
  %104 = sext i32 %103 to i64, !dbg !1375
  %105 = getelementptr inbounds i8*, i8** %1, i64 %104, !dbg !1375
  %106 = load i8*, i8** %105, align 8, !dbg !1375, !tbaa !1198
  %107 = load i8, i8* %106, align 1, !dbg !1375, !tbaa !1330
  %108 = sext i8 %107 to i32, !dbg !1375
  switch i32 %108, label %186 [
    i32 98, label %110
    i32 99, label %109
    i32 117, label %109
    i32 112, label %172
  ], !dbg !1376

109:                                              ; preds = %102, %102
  call void @llvm.dbg.value(metadata i32 8192, metadata !1255, metadata !DIExpression()), !dbg !1276
  br label %110, !dbg !1377

110:                                              ; preds = %102, %109
  %111 = phi i32 [ 8192, %109 ], [ 24576, %102 ], !dbg !1378
  call void @llvm.dbg.value(metadata i32 %111, metadata !1255, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.label(metadata !1275), !dbg !1379
  %112 = add nsw i32 %45, 2, !dbg !1380
  %113 = sext i32 %112 to i64, !dbg !1381
  %114 = getelementptr inbounds i8*, i8** %1, i64 %113, !dbg !1381
  %115 = load i8*, i8** %114, align 8, !dbg !1381, !tbaa !1198
  call void @llvm.dbg.value(metadata i8* %115, metadata !1265, metadata !DIExpression()), !dbg !1382
  %116 = add nsw i32 %45, 3, !dbg !1383
  %117 = sext i32 %116 to i64, !dbg !1384
  %118 = getelementptr inbounds i8*, i8** %1, i64 %117, !dbg !1384
  %119 = load i8*, i8** %118, align 8, !dbg !1384, !tbaa !1198
  call void @llvm.dbg.value(metadata i8* %119, metadata !1268, metadata !DIExpression()), !dbg !1382
  %120 = bitcast i64* %4 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #18, !dbg !1385
  %121 = bitcast i64* %5 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #18, !dbg !1385
  call void @llvm.dbg.value(metadata i64* %4, metadata !1269, metadata !DIExpression(DW_OP_deref)), !dbg !1382
  %122 = call i32 @xstrtoumax(i8* %115, i8** null, i32 0, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1386
  %123 = icmp ne i32 %122, 0, !dbg !1388
  %124 = load i64, i64* %4, align 8, !dbg !1389
  %125 = icmp ugt i64 %124, 4294967295, !dbg !1390
  %126 = or i1 %123, %125, !dbg !1391
  br i1 %126, label %127, label %130, !dbg !1391

127:                                              ; preds = %110
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1392
  %129 = call i8* @quote(i8* %115) #18, !dbg !1392
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128, i8* %129) #18, !dbg !1392
  unreachable, !dbg !1392

130:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64* %5, metadata !1273, metadata !DIExpression(DW_OP_deref)), !dbg !1382
  %131 = call i32 @xstrtoumax(i8* %119, i8** null, i32 0, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1393
  %132 = icmp eq i32 %131, 0, !dbg !1395
  br i1 %132, label %133, label %136, !dbg !1396

133:                                              ; preds = %130
  %134 = load i64, i64* %5, align 8, !dbg !1397, !tbaa !1398
  call void @llvm.dbg.value(metadata i64 %134, metadata !1273, metadata !DIExpression()), !dbg !1382
  %135 = icmp ugt i64 %134, 4294967295, !dbg !1400
  br i1 %135, label %136, label %139, !dbg !1401

136:                                              ; preds = %130, %133
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1402
  %138 = call i8* @quote(i8* %119) #18, !dbg !1402
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %137, i8* %138) #18, !dbg !1402
  unreachable, !dbg !1402

139:                                              ; preds = %133
  %140 = load i64, i64* %4, align 8, !dbg !1403, !tbaa !1398
  call void @llvm.dbg.value(metadata i64 %140, metadata !1269, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %140, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %134, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1412
  %141 = shl i64 %140, 8, !dbg !1414
  %142 = and i64 %141, 1048320, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %142, metadata !1411, metadata !DIExpression()), !dbg !1412
  %143 = shl i64 %140, 32, !dbg !1414
  %144 = and i64 %143, -17592186044416, !dbg !1414
  call void @llvm.dbg.value(metadata i64 undef, metadata !1411, metadata !DIExpression()), !dbg !1412
  %145 = and i64 %134, 255, !dbg !1414
  call void @llvm.dbg.value(metadata i64 undef, metadata !1411, metadata !DIExpression()), !dbg !1412
  %146 = shl nuw nsw i64 %134, 12, !dbg !1414
  %147 = and i64 %146, 17592184995840, !dbg !1414
  %148 = or i64 %147, %145, !dbg !1414
  %149 = or i64 %148, %142, !dbg !1414
  %150 = or i64 %149, %144, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %150, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %150, metadata !1274, metadata !DIExpression()), !dbg !1382
  %151 = icmp eq i64 %150, -1, !dbg !1415
  br i1 %151, label %152, label %154, !dbg !1417

152:                                              ; preds = %139
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1418
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %115, i8* %119) #18, !dbg !1418
  unreachable, !dbg !1418

154:                                              ; preds = %139
  %155 = load i32, i32* @optind, align 4, !dbg !1419, !tbaa !1322
  %156 = sext i32 %155 to i64, !dbg !1421
  %157 = getelementptr inbounds i8*, i8** %1, i64 %156, !dbg !1421
  %158 = load i8*, i8** %157, align 8, !dbg !1421, !tbaa !1198
  %159 = or i32 %111, %44, !dbg !1422
  %160 = bitcast i64* %3 to i8*, !dbg !1423
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %160), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %158, metadata !1428, metadata !DIExpression()) #18, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %159, metadata !1429, metadata !DIExpression()) #18, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %150, metadata !1430, metadata !DIExpression()) #18, !dbg !1423
  store i64 %150, i64* %3, align 8, !tbaa !1398
  call void @llvm.dbg.value(metadata i64* %3, metadata !1430, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1423
  %161 = call i32 @__xmknod(i32 0, i8* nonnull %158, i32 %159, i64* nonnull %3) #18, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %160), !dbg !1433
  %162 = icmp eq i32 %161, 0, !dbg !1434
  br i1 %162, label %171, label %163, !dbg !1435

163:                                              ; preds = %154
  %164 = tail call i32* @__errno_location() #25, !dbg !1436
  %165 = load i32, i32* %164, align 4, !dbg !1436, !tbaa !1322
  %166 = load i32, i32* @optind, align 4, !dbg !1436, !tbaa !1322
  %167 = sext i32 %166 to i64, !dbg !1436
  %168 = getelementptr inbounds i8*, i8** %1, i64 %167, !dbg !1436
  %169 = load i8*, i8** %168, align 8, !dbg !1436, !tbaa !1198
  %170 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %169) #18, !dbg !1436
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %170) #18, !dbg !1436
  unreachable, !dbg !1436

171:                                              ; preds = %154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #18, !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #18, !dbg !1437
  br label %194, !dbg !1438

172:                                              ; preds = %102
  %173 = sext i32 %45 to i64, !dbg !1439
  %174 = getelementptr inbounds i8*, i8** %1, i64 %173, !dbg !1439
  %175 = load i8*, i8** %174, align 8, !dbg !1439, !tbaa !1198
  %176 = tail call i32 @mkfifo(i8* %175, i32 %44) #18, !dbg !1441
  %177 = icmp eq i32 %176, 0, !dbg !1442
  br i1 %177, label %194, label %178, !dbg !1443

178:                                              ; preds = %172
  %179 = tail call i32* @__errno_location() #25, !dbg !1444
  %180 = load i32, i32* %179, align 4, !dbg !1444, !tbaa !1322
  %181 = load i32, i32* @optind, align 4, !dbg !1444, !tbaa !1322
  %182 = sext i32 %181 to i64, !dbg !1444
  %183 = getelementptr inbounds i8*, i8** %1, i64 %182, !dbg !1444
  %184 = load i8*, i8** %183, align 8, !dbg !1444, !tbaa !1198
  %185 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #18, !dbg !1444
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %185) #18, !dbg !1444
  unreachable, !dbg !1444

186:                                              ; preds = %102
  %187 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #18, !dbg !1445
  %188 = load i32, i32* @optind, align 4, !dbg !1446, !tbaa !1322
  %189 = add nsw i32 %188, 1, !dbg !1447
  %190 = sext i32 %189 to i64, !dbg !1448
  %191 = getelementptr inbounds i8*, i8** %1, i64 %190, !dbg !1448
  %192 = load i8*, i8** %191, align 8, !dbg !1448, !tbaa !1198
  %193 = tail call i8* @quote(i8* %192) #18, !dbg !1449
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %187, i8* %193) #18, !dbg !1450
  tail call void @usage(i32 1) #24, !dbg !1451
  unreachable, !dbg !1451

194:                                              ; preds = %172, %171
  br i1 %29, label %195, label %211, !dbg !1452

195:                                              ; preds = %194
  %196 = load i32, i32* @optind, align 4, !dbg !1454, !tbaa !1322
  %197 = sext i32 %196 to i64, !dbg !1455
  %198 = getelementptr inbounds i8*, i8** %1, i64 %197, !dbg !1455
  %199 = load i8*, i8** %198, align 8, !dbg !1455, !tbaa !1198
  %200 = call i32 @lchmod(i8* %199, i32 %44) #18, !dbg !1456
  %201 = icmp eq i32 %200, 0, !dbg !1457
  br i1 %201, label %211, label %202, !dbg !1458

202:                                              ; preds = %195
  %203 = tail call i32* @__errno_location() #25, !dbg !1459
  %204 = load i32, i32* %203, align 4, !dbg !1459, !tbaa !1322
  %205 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 5) #18, !dbg !1459
  %206 = load i32, i32* @optind, align 4, !dbg !1459, !tbaa !1322
  %207 = sext i32 %206 to i64, !dbg !1459
  %208 = getelementptr inbounds i8*, i8** %1, i64 %207, !dbg !1459
  %209 = load i8*, i8** %208, align 8, !dbg !1459, !tbaa !1198
  %210 = call i8* @quotearg_style(i32 4, i8* %209) #18, !dbg !1459
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %204, i8* %205, i8* %210) #18, !dbg !1459
  unreachable, !dbg !1459

211:                                              ; preds = %195, %194
  ret i32 0, !dbg !1460
}

; Function Attrs: nounwind
declare !dbg !108 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !111 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !114 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !121 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !136 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !150 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !161 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !179 i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i8* %0, i8** @file_name, align 8, !dbg !1465, !tbaa !1198
  ret void, !dbg !1466
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1467 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1473, !tbaa !1474
  ret void, !dbg !1476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1477 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1482, !tbaa !1198
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1483
  %3 = icmp eq i32 %2, 0, !dbg !1484
  br i1 %3, label %22, label %4, !dbg !1485

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1486, !tbaa !1474, !range !1487
  %6 = icmp eq i8 %5, 0, !dbg !1486
  br i1 %6, label %11, label %7, !dbg !1488

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1489
  %9 = load i32, i32* %8, align 4, !dbg !1489, !tbaa !1322
  %10 = icmp eq i32 %9, 32, !dbg !1490
  br i1 %10, label %22, label %11, !dbg !1491

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #18, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %12, metadata !1479, metadata !DIExpression()), !dbg !1493
  %13 = load i8*, i8** @file_name, align 8, !dbg !1494, !tbaa !1198
  %14 = icmp eq i8* %13, null, !dbg !1494
  %15 = tail call i32* @__errno_location() #25, !dbg !1496
  %16 = load i32, i32* %15, align 4, !dbg !1496, !tbaa !1322
  br i1 %14, label %19, label %17, !dbg !1497

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1498
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1499
  br label %20, !dbg !1499

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #18, !dbg !1500
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1501, !tbaa !1322
  tail call void @_exit(i32 %21) #23, !dbg !1502
  unreachable, !dbg !1502

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1503, !tbaa !1198
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1505
  %25 = icmp eq i32 %24, 0, !dbg !1506
  br i1 %25, label %28, label %26, !dbg !1507

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1508, !tbaa !1322
  tail call void @_exit(i32 %27) #23, !dbg !1509
  unreachable, !dbg !1509

28:                                               ; preds = %22
  ret void, !dbg !1510
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !1511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1523, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()), !dbg !1550
  %2 = load i8, i8* %0, align 1, !dbg !1551, !tbaa !1330
  %3 = and i8 %2, -8, !dbg !1552
  %4 = icmp eq i8 %3, 48, !dbg !1552
  br i1 %4, label %5, label %39, !dbg !1552

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1553
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1555
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1555
  call void @llvm.dbg.value(metadata i8* %8, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %7, metadata !1527, metadata !DIExpression()), !dbg !1555
  %9 = shl i32 %7, 3, !dbg !1556
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1557
  call void @llvm.dbg.value(metadata i8* %10, metadata !1526, metadata !DIExpression()), !dbg !1550
  %11 = sext i8 %6 to i32, !dbg !1553
  %12 = add i32 %9, -48, !dbg !1558
  %13 = add i32 %12, %11, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %13, metadata !1527, metadata !DIExpression()), !dbg !1555
  %14 = icmp ugt i32 %13, 4095, !dbg !1560
  br i1 %14, label %149, label %15, !dbg !1562

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1563, !tbaa !1330
  %17 = and i8 %16, -8, !dbg !1564
  %18 = icmp eq i8 %17, 48, !dbg !1564
  br i1 %18, label %5, label %19, !dbg !1564, !llvm.loop !1565

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1568
  br i1 %20, label %21, label %149, !dbg !1570

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1530, metadata !DIExpression()), !dbg !1555
  %22 = ptrtoint i8* %10 to i64, !dbg !1571
  %23 = ptrtoint i8* %0 to i64, !dbg !1571
  %24 = sub i64 %22, %23, !dbg !1571
  %25 = icmp slt i64 %24, 5, !dbg !1572
  %26 = and i32 %13, 3072, !dbg !1573
  %27 = or i32 %26, 1023, !dbg !1573
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %28, metadata !1531, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %13, metadata !1574, metadata !DIExpression()) #18, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %28, metadata !1579, metadata !DIExpression()) #18, !dbg !1581
  %29 = tail call noalias i8* @xmalloc(i64 32) #18, !dbg !1583
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1580, metadata !DIExpression()) #18, !dbg !1581
  store i8 61, i8* %29, align 4, !dbg !1584, !tbaa !1585
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1587
  store i8 1, i8* %31, align 1, !dbg !1588, !tbaa !1589
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1590
  %33 = bitcast i8* %32 to i32*, !dbg !1590
  store i32 4095, i32* %33, align 4, !dbg !1591, !tbaa !1592
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1593
  %35 = bitcast i8* %34 to i32*, !dbg !1593
  store i32 %13, i32* %35, align 4, !dbg !1594, !tbaa !1595
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1596
  %37 = bitcast i8* %36 to i32*, !dbg !1596
  store i32 %28, i32* %37, align 4, !dbg !1597, !tbaa !1598
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1599
  store i8 0, i8* %38, align 1, !dbg !1600, !tbaa !1589
  br label %149, !dbg !1601

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1602
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1605
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %41, metadata !1526, metadata !DIExpression()), !dbg !1550
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1607

43:                                               ; preds = %39
  br label %44, !dbg !1608

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %46, metadata !1532, metadata !DIExpression()), !dbg !1606
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %47, metadata !1526, metadata !DIExpression()), !dbg !1550
  %48 = load i8, i8* %47, align 1, !dbg !1602, !tbaa !1330
  br label %39, !dbg !1611, !llvm.loop !1612

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1532, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %42, metadata !1614, metadata !DIExpression()) #18, !dbg !1620
  call void @llvm.dbg.value(metadata i64 16, metadata !1619, metadata !DIExpression()) #18, !dbg !1620
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1622
  br i1 %50, label %51, label %52, !dbg !1624

51:                                               ; preds = %49
  tail call void @xalloc_die() #23, !dbg !1625
  unreachable, !dbg !1625

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !1626
  %54 = tail call noalias i8* @xmalloc(i64 %53) #18, !dbg !1627
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !1524, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %56, !dbg !1629

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !1630
  %58 = phi i64 [ 0, %52 ], [ %131, %144 ], !dbg !1631
  call void @llvm.dbg.value(metadata i64 %58, metadata !1525, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %57, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 0, metadata !1534, metadata !DIExpression()), !dbg !1632
  br label %59, !dbg !1633

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1630
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  %62 = load i8, i8* %60, align 1, !dbg !1634, !tbaa !1330
  %63 = sext i8 %62 to i32, !dbg !1634
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1637

64:                                               ; preds = %59, %59, %59
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %60, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %61, metadata !1534, metadata !DIExpression()), !dbg !1632
  br label %72, !dbg !1638

65:                                               ; preds = %59
  br label %68, !dbg !1639

66:                                               ; preds = %59
  br label %68, !dbg !1641

67:                                               ; preds = %59
  br label %68, !dbg !1642

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %70, metadata !1534, metadata !DIExpression()), !dbg !1632
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1644
  call void @llvm.dbg.value(metadata i8* %71, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %59, !dbg !1645, !llvm.loop !1646

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !1649
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !1630
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !1650
  %76 = phi i64 [ %58, %64 ], [ %131, %143 ], !dbg !1550
  call void @llvm.dbg.value(metadata i64 %76, metadata !1525, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %75, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %74, metadata !1526, metadata !DIExpression()), !dbg !1550
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %77, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %73, metadata !1538, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 0, metadata !1541, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 3, metadata !1542, metadata !DIExpression()), !dbg !1652
  %78 = load i8, i8* %77, align 1, !dbg !1653, !tbaa !1330
  %79 = sext i8 %78 to i32, !dbg !1653
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
  ], !dbg !1638

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1654

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1655
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1652
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1657
  call void @llvm.dbg.value(metadata i32 %84, metadata !1544, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %83, metadata !1526, metadata !DIExpression()), !dbg !1550
  %85 = shl i32 %84, 3, !dbg !1658
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata i8* %86, metadata !1526, metadata !DIExpression()), !dbg !1550
  %87 = sext i8 %82 to i32, !dbg !1655
  %88 = add i32 %85, -48, !dbg !1660
  %89 = add i32 %88, %87, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %89, metadata !1544, metadata !DIExpression()), !dbg !1657
  %90 = icmp ugt i32 %89, 4095, !dbg !1662
  br i1 %90, label %148, label %91, !dbg !1664

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1665, !tbaa !1330
  %93 = and i8 %92, -8, !dbg !1666
  %94 = icmp eq i8 %93, 48, !dbg !1666
  br i1 %94, label %81, label %95, !dbg !1666, !llvm.loop !1667

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1669
  br i1 %96, label %97, label %148, !dbg !1671

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1672

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !1540, metadata !DIExpression()), !dbg !1652
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %99, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %125, !dbg !1674

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !1540, metadata !DIExpression()), !dbg !1652
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %101, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %125, !dbg !1676

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !1540, metadata !DIExpression()), !dbg !1652
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1677
  call void @llvm.dbg.value(metadata i8* %103, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %125, !dbg !1678

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1679
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1652
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1682
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1683
  call void @llvm.dbg.value(metadata i8 %108, metadata !1542, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %107, metadata !1540, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %106, metadata !1526, metadata !DIExpression()), !dbg !1550
  %109 = sext i8 %105 to i32, !dbg !1679
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1684

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %111, metadata !1540, metadata !DIExpression()), !dbg !1652
  br label %120, !dbg !1687

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !1688
  call void @llvm.dbg.value(metadata i32 %113, metadata !1540, metadata !DIExpression()), !dbg !1652
  br label %120, !dbg !1689

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %115, metadata !1540, metadata !DIExpression()), !dbg !1652
  br label %120, !dbg !1691

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %117, metadata !1540, metadata !DIExpression()), !dbg !1652
  br label %120, !dbg !1693

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %119, metadata !1540, metadata !DIExpression()), !dbg !1652
  br label %120, !dbg !1695

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1682
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1682
  call void @llvm.dbg.value(metadata i8 %122, metadata !1542, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %121, metadata !1540, metadata !DIExpression()), !dbg !1652
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %123, metadata !1526, metadata !DIExpression()), !dbg !1550
  %124 = load i8, i8* %123, align 1, !dbg !1679, !tbaa !1330
  br label %104, !dbg !1697, !llvm.loop !1698

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1652
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1650
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1701
  %130 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1652
  call void @llvm.dbg.value(metadata i8 %130, metadata !1542, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %129, metadata !1541, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %128, metadata !1540, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %127, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  %131 = add i64 %76, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %131, metadata !1525, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !1543, metadata !DIExpression()), !dbg !1652
  %132 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1703
  store i8 %73, i8* %132, align 4, !dbg !1704, !tbaa !1585
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1705
  store i8 %130, i8* %133, align 1, !dbg !1706, !tbaa !1589
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1707
  store i32 %127, i32* %134, align 4, !dbg !1708, !tbaa !1592
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1709
  store i32 %128, i32* %135, align 4, !dbg !1710, !tbaa !1595
  %136 = icmp eq i32 %129, 0, !dbg !1711
  %137 = icmp eq i32 %127, 0, !dbg !1711
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !1711
  %139 = and i32 %138, %128, !dbg !1711
  %140 = select i1 %136, i32 %139, i32 %129, !dbg !1711
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1712
  store i32 %140, i32* %141, align 4, !dbg !1713, !tbaa !1598
  call void @llvm.dbg.value(metadata i64 %76, metadata !1525, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %75, metadata !1534, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %86, metadata !1526, metadata !DIExpression()), !dbg !1550
  %142 = load i8, i8* %126, align 1, !dbg !1714, !tbaa !1330
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !1715

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !1550

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %131, metadata !1525, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %126, metadata !1526, metadata !DIExpression()), !dbg !1550
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %145, metadata !1526, metadata !DIExpression()), !dbg !1550
  br label %56, !dbg !1717, !llvm.loop !1718

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %131, i32 1, !dbg !1721
  store i8 0, i8* %147, align 1, !dbg !1724, !tbaa !1589
  br label %149, !dbg !1725

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !1549), !dbg !1726
  tail call void @free(i8* %54) #18, !dbg !1727
  br label %149, !dbg !1728

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !1729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* %0) local_unnamed_addr #8 !dbg !1730 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1732, metadata !DIExpression()), !dbg !1755
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #18, !dbg !1756
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1733, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* %0, metadata !1758, metadata !DIExpression()) #18, !dbg !1765
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1764, metadata !DIExpression()) #18, !dbg !1765
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #18, !dbg !1768
  %5 = icmp eq i32 %4, 0, !dbg !1769
  br i1 %5, label %6, label %19, !dbg !1770

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1771
  %8 = load i32, i32* %7, align 8, !dbg !1771, !tbaa !1772
  call void @llvm.dbg.value(metadata i32 %8, metadata !1574, metadata !DIExpression()) #18, !dbg !1775
  call void @llvm.dbg.value(metadata i32 4095, metadata !1579, metadata !DIExpression()) #18, !dbg !1775
  %9 = call noalias i8* @xmalloc(i64 32) #18, !dbg !1777
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1580, metadata !DIExpression()) #18, !dbg !1775
  store i8 61, i8* %9, align 4, !dbg !1778, !tbaa !1585
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1779
  store i8 1, i8* %11, align 1, !dbg !1780, !tbaa !1589
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1781
  %13 = bitcast i8* %12 to i32*, !dbg !1781
  store i32 4095, i32* %13, align 4, !dbg !1782, !tbaa !1592
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1783
  %15 = bitcast i8* %14 to i32*, !dbg !1783
  store i32 %8, i32* %15, align 4, !dbg !1784, !tbaa !1595
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1785
  %17 = bitcast i8* %16 to i32*, !dbg !1785
  store i32 4095, i32* %17, align 4, !dbg !1786, !tbaa !1598
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1787
  store i8 0, i8* %18, align 1, !dbg !1788, !tbaa !1589
  br label %19, !dbg !1789

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1755
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #18, !dbg !1790
  ret %struct.mode_change* %20, !dbg !1790
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #12 !dbg !1791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1798, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i1 %1, metadata !1799, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %2, metadata !1800, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1801, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32* %4, metadata !1802, metadata !DIExpression()), !dbg !1814
  %6 = and i32 %0, 4095, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %6, metadata !1803, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1801, metadata !DIExpression()), !dbg !1814
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1816
  %8 = load i8, i8* %7, align 1, !dbg !1816, !tbaa !1589
  %9 = icmp eq i8 %8, 0, !dbg !1817
  br i1 %9, label %81, label %10, !dbg !1818

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0, !dbg !1819
  %12 = zext i1 %1 to i32, !dbg !1820
  %13 = xor i32 %2, -1, !dbg !1819
  br label %14, !dbg !1818

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1801, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %17, metadata !1803, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %18, metadata !1804, metadata !DIExpression()), !dbg !1814
  %19 = sext i8 %15 to i32, !dbg !1823
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1824
  %21 = load i32, i32* %20, align 4, !dbg !1824, !tbaa !1592
  call void @llvm.dbg.value(metadata i32 %21, metadata !1805, metadata !DIExpression()), !dbg !1819
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1825
  %23 = load i32, i32* %22, align 4, !dbg !1825, !tbaa !1598
  %24 = xor i32 %23, -1, !dbg !1826
  %25 = and i32 %11, %24, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %25, metadata !1809, metadata !DIExpression()), !dbg !1819
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1828
  %27 = load i32, i32* %26, align 4, !dbg !1828, !tbaa !1595
  call void @llvm.dbg.value(metadata i32 %27, metadata !1810, metadata !DIExpression()), !dbg !1819
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1829

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %29, metadata !1810, metadata !DIExpression()), !dbg !1819
  %30 = and i32 %29, 292, !dbg !1831
  %31 = icmp eq i32 %30, 0, !dbg !1832
  %32 = select i1 %31, i32 0, i32 292, !dbg !1832
  %33 = and i32 %29, 146, !dbg !1833
  %34 = icmp eq i32 %33, 0, !dbg !1834
  %35 = select i1 %34, i32 0, i32 146, !dbg !1834
  %36 = and i32 %29, 73, !dbg !1835
  %37 = icmp eq i32 %36, 0, !dbg !1836
  %38 = select i1 %37, i32 0, i32 73, !dbg !1836
  %39 = or i32 %35, %29, !dbg !1837
  %40 = or i32 %39, %32, !dbg !1838
  %41 = or i32 %40, %38, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %41, metadata !1810, metadata !DIExpression()), !dbg !1819
  br label %48, !dbg !1840

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1841
  %44 = or i32 %43, %12, !dbg !1842
  %45 = icmp eq i32 %44, 0, !dbg !1842
  %46 = or i32 %27, 73, !dbg !1843
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1844
  br label %48, !dbg !1844

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1819
  call void @llvm.dbg.value(metadata i32 %49, metadata !1810, metadata !DIExpression()), !dbg !1819
  %50 = icmp ne i32 %21, 0, !dbg !1845
  %51 = select i1 %50, i32 %21, i32 %13, !dbg !1845
  %52 = xor i32 %25, -1, !dbg !1846
  %53 = and i32 %51, %52, !dbg !1847
  %54 = and i32 %53, %49, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %54, metadata !1810, metadata !DIExpression()), !dbg !1819
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1849
  %56 = load i8, i8* %55, align 4, !dbg !1849, !tbaa !1585
  %57 = sext i8 %56 to i32, !dbg !1850
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1851

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1852
  %60 = select i1 %50, i32 %59, i32 0, !dbg !1852
  %61 = or i32 %60, %25, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %61, metadata !1811, metadata !DIExpression()), !dbg !1854
  %62 = and i32 %61, 4095, !dbg !1855
  %63 = xor i32 %62, 4095, !dbg !1855
  %64 = or i32 %63, %18, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %64, metadata !1804, metadata !DIExpression()), !dbg !1814
  %65 = and i32 %61, %17, !dbg !1857
  %66 = or i32 %54, %65, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %66, metadata !1803, metadata !DIExpression()), !dbg !1814
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %68, metadata !1804, metadata !DIExpression()), !dbg !1814
  %69 = or i32 %54, %17, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %69, metadata !1803, metadata !DIExpression()), !dbg !1814
  br label %74, !dbg !1861

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %71, metadata !1804, metadata !DIExpression()), !dbg !1814
  %72 = xor i32 %54, -1, !dbg !1863
  %73 = and i32 %17, %72, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %73, metadata !1803, metadata !DIExpression()), !dbg !1814
  br label %74, !dbg !1865

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1814
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1814
  call void @llvm.dbg.value(metadata i32 %76, metadata !1803, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %75, metadata !1804, metadata !DIExpression()), !dbg !1814
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1866
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1801, metadata !DIExpression()), !dbg !1814
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1816
  %79 = load i8, i8* %78, align 1, !dbg !1816, !tbaa !1589
  %80 = icmp eq i8 %79, 0, !dbg !1817
  br i1 %80, label %81, label %14, !dbg !1818, !llvm.loop !1867

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1869
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1870
  call void @llvm.dbg.value(metadata i32 %82, metadata !1804, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %83, metadata !1803, metadata !DIExpression()), !dbg !1814
  %84 = icmp eq i32* %4, null, !dbg !1871
  br i1 %84, label %86, label %85, !dbg !1873

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1874, !tbaa !1322
  br label %86, !dbg !1875

86:                                               ; preds = %81, %85
  ret i32 %83, !dbg !1876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1879, metadata !DIExpression()), !dbg !1882
  %2 = icmp eq i8* %0, null, !dbg !1883
  br i1 %2, label %3, label %6, !dbg !1885

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1886, !tbaa !1198
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1888
  tail call void @abort() #23, !dbg !1889
  unreachable, !dbg !1889

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %7, metadata !1880, metadata !DIExpression()), !dbg !1882
  %8 = icmp eq i8* %7, null, !dbg !1891
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1892
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1892
  call void @llvm.dbg.value(metadata i8* %10, metadata !1881, metadata !DIExpression()), !dbg !1882
  %11 = ptrtoint i8* %10 to i64, !dbg !1893
  %12 = ptrtoint i8* %0 to i64, !dbg !1893
  %13 = sub i64 %11, %12, !dbg !1893
  %14 = icmp sgt i64 %13, 6, !dbg !1895
  br i1 %14, label %15, label %24, !dbg !1896

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1897
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #22, !dbg !1898
  %18 = icmp eq i32 %17, 0, !dbg !1899
  br i1 %18, label %19, label %24, !dbg !1900

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1879, metadata !DIExpression()), !dbg !1882
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #22, !dbg !1901
  %21 = icmp eq i32 %20, 0, !dbg !1904
  br i1 %21, label %22, label %24, !dbg !1905

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %23, metadata !1879, metadata !DIExpression()), !dbg !1882
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1908, !tbaa !1198
  br label %24, !dbg !1909

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1879, metadata !DIExpression()), !dbg !1882
  store i8* %25, i8** @program_name, align 8, !dbg !1910, !tbaa !1198
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1911, !tbaa !1198
  ret void, !dbg !1912
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1913 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1918, metadata !DIExpression()), !dbg !1921
  %2 = tail call i32* @__errno_location() #25, !dbg !1922
  %3 = load i32, i32* %2, align 4, !dbg !1922, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %3, metadata !1919, metadata !DIExpression()), !dbg !1921
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1923
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1923
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1923
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1924
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1920, metadata !DIExpression()), !dbg !1921
  store i32 %3, i32* %2, align 4, !dbg !1925, !tbaa !1322
  ret %struct.quoting_options* %8, !dbg !1926
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1927 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1933
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1933
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1934
  %5 = load i32, i32* %4, align 8, !dbg !1934, !tbaa !1935
  ret i32 %5, !dbg !1937
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1938 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1942, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression()), !dbg !1944
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1945
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1945
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1946
  store i32 %1, i32* %5, align 8, !dbg !1947, !tbaa !1935
  ret void, !dbg !1948
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #12 !dbg !1949 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %2, metadata !1955, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %1, metadata !1956, metadata !DIExpression()), !dbg !1961
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1962
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1962
  %6 = lshr i8 %1, 5, !dbg !1963
  %7 = zext i8 %6 to i64, !dbg !1963
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1964
  call void @llvm.dbg.value(metadata i32* %8, metadata !1958, metadata !DIExpression()), !dbg !1961
  %9 = and i8 %1, 31, !dbg !1965
  %10 = zext i8 %9 to i32, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %10, metadata !1959, metadata !DIExpression()), !dbg !1961
  %11 = load i32, i32* %8, align 4, !dbg !1966, !tbaa !1322
  %12 = lshr i32 %11, %10, !dbg !1967
  %13 = and i32 %12, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %13, metadata !1960, metadata !DIExpression()), !dbg !1961
  %14 = and i32 %2, 1, !dbg !1969
  %15 = xor i32 %13, %14, !dbg !1970
  %16 = shl i32 %15, %10, !dbg !1971
  %17 = xor i32 %16, %11, !dbg !1972
  store i32 %17, i32* %8, align 4, !dbg !1972, !tbaa !1322
  ret i32 %13, !dbg !1973
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1974 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1978, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1981
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1982
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1984
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1978, metadata !DIExpression()), !dbg !1981
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1985
  %6 = load i32, i32* %5, align 4, !dbg !1985, !tbaa !1986
  call void @llvm.dbg.value(metadata i32 %6, metadata !1980, metadata !DIExpression()), !dbg !1981
  store i32 %1, i32* %5, align 4, !dbg !1987, !tbaa !1986
  ret i32 %6, !dbg !1988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1989 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %1, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %2, metadata !1995, metadata !DIExpression()), !dbg !1996
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1997
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1993, metadata !DIExpression()), !dbg !1996
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2000
  store i32 10, i32* %6, align 8, !dbg !2001, !tbaa !1935
  %7 = icmp ne i8* %1, null, !dbg !2002
  %8 = icmp ne i8* %2, null, !dbg !2004
  %9 = and i1 %7, %8, !dbg !2005
  br i1 %9, label %11, label %10, !dbg !2005

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2006
  unreachable, !dbg !2006

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2007
  store i8* %1, i8** %12, align 8, !dbg !2008, !tbaa !2009
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2010
  store i8* %2, i8** %13, align 8, !dbg !2011, !tbaa !2012
  ret void, !dbg !2013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2018, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %1, metadata !2019, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* %2, metadata !2020, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %3, metadata !2021, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2022, metadata !DIExpression()), !dbg !2026
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2027
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2023, metadata !DIExpression()), !dbg !2026
  %8 = tail call i32* @__errno_location() #25, !dbg !2028
  %9 = load i32, i32* %8, align 4, !dbg !2028, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %9, metadata !2024, metadata !DIExpression()), !dbg !2026
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2029
  %11 = load i32, i32* %10, align 8, !dbg !2029, !tbaa !1935
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2030
  %13 = load i32, i32* %12, align 4, !dbg !2030, !tbaa !1986
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2031
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2032
  %16 = load i8*, i8** %15, align 8, !dbg !2032, !tbaa !2009
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2033
  %18 = load i8*, i8** %17, align 8, !dbg !2033, !tbaa !2012
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %19, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i32 %9, i32* %8, align 4, !dbg !2035, !tbaa !1322
  ret i64 %19, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2037 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2043, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %1, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %2, metadata !2045, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %3, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %4, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %5, metadata !2048, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32* %6, metadata !2049, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %7, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %8, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* null, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2101
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2102
  %14 = icmp eq i64 %13, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i1 %14, metadata !2058, metadata !DIExpression()), !dbg !2101
  %15 = lshr i32 %5, 1, !dbg !2104
  %16 = trunc i32 %15 to i8, !dbg !2104
  %17 = and i8 %16, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i8 %17, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2062, metadata !DIExpression()), !dbg !2101
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2105
  %19 = and i32 %5, 4, !dbg !2107
  %20 = icmp eq i32 %19, 0, !dbg !2107
  %21 = and i32 %5, 1, !dbg !2110
  %22 = icmp eq i32 %21, 0, !dbg !2110
  %23 = bitcast i64* %10 to i8*, !dbg !2113
  %24 = bitcast i32* %12 to i8*, !dbg !2114
  %25 = icmp eq i32* %6, null, !dbg !2115
  br label %26, !dbg !2117

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2118
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2119
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2120
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2121
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2101
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2122
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2123
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2124
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %38, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %37, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %36, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %35, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %34, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %33, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %32, metadata !2056, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %31, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %30, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %29, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %28, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %27, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2095), !dbg !2125
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
  ], !dbg !2126

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %35, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 5, metadata !2047, metadata !DIExpression()), !dbg !2101
  br label %92, !dbg !2127

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 5, metadata !2047, metadata !DIExpression()), !dbg !2101
  %42 = and i8 %35, 1, !dbg !2129
  %43 = icmp eq i8 %42, 0, !dbg !2129
  br i1 %43, label %44, label %92, !dbg !2127

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2131
  br i1 %45, label %92, label %46, !dbg !2134

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2131, !tbaa !1330
  br label %92, !dbg !2131

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %48, metadata !2050, metadata !DIExpression()), !dbg !2101
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %49, metadata !2051, metadata !DIExpression()), !dbg !2101
  br label %50, !dbg !2140

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %51, metadata !2050, metadata !DIExpression()), !dbg !2101
  %53 = and i8 %35, 1, !dbg !2141
  %54 = icmp eq i8 %53, 0, !dbg !2141
  br i1 %54, label %55, label %70, !dbg !2143

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2053, metadata !DIExpression()), !dbg !2101
  %56 = load i8, i8* %51, align 1, !dbg !2144, !tbaa !1330
  %57 = icmp eq i8 %56, 0, !dbg !2147
  br i1 %57, label %70, label %58, !dbg !2147

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %61, metadata !2053, metadata !DIExpression()), !dbg !2101
  %62 = icmp ult i64 %61, %39, !dbg !2148
  br i1 %62, label %63, label %65, !dbg !2151

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2148
  store i8 %59, i8* %64, align 1, !dbg !2148, !tbaa !1330
  br label %65, !dbg !2148

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %66, metadata !2053, metadata !DIExpression()), !dbg !2101
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %67, metadata !2055, metadata !DIExpression()), !dbg !2101
  %68 = load i8, i8* %67, align 1, !dbg !2144, !tbaa !1330
  %69 = icmp eq i8 %68, 0, !dbg !2147
  br i1 %69, label %70, label %58, !dbg !2147, !llvm.loop !2153

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2155
  call void @llvm.dbg.value(metadata i64 %71, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %52, metadata !2055, metadata !DIExpression()), !dbg !2101
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %72, metadata !2056, metadata !DIExpression()), !dbg !2101
  br label %92, !dbg !2157

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2057, metadata !DIExpression()), !dbg !2101
  br label %74, !dbg !2158

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %75, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2101
  br label %76, !dbg !2159

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2121
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %78, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %77, metadata !2057, metadata !DIExpression()), !dbg !2101
  %79 = and i8 %78, 1, !dbg !2160
  %80 = icmp eq i8 %79, 0, !dbg !2160
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2162
  br label %82, !dbg !2162

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2101
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2104
  call void @llvm.dbg.value(metadata i8 %84, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %83, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  %85 = and i8 %84, 1, !dbg !2163
  %86 = icmp eq i8 %85, 0, !dbg !2163
  br i1 %86, label %87, label %92, !dbg !2165

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2166
  br i1 %88, label %92, label %89, !dbg !2169

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2166, !tbaa !1330
  br label %92, !dbg !2166

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2101
  br label %92, !dbg !2170

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2171
  unreachable, !dbg !2171

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2155
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !2101
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2101
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2101
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %100, metadata !2059, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %98, metadata !2056, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %96, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %93, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2101
  %101 = and i8 %99, 1, !dbg !2172
  %102 = icmp ne i8 %101, 0, !dbg !2172
  %103 = icmp ne i32 %93, 2, !dbg !2172
  %104 = and i1 %103, %102, !dbg !2172
  %105 = icmp ne i64 %98, 0, !dbg !2172
  %106 = and i1 %105, %104, !dbg !2172
  %107 = icmp ugt i64 %98, 1, !dbg !2172
  %108 = and i8 %100, 1, !dbg !2174
  %109 = icmp eq i8 %108, 0, !dbg !2174
  %110 = icmp eq i32 %93, 2, !dbg !2177
  %111 = or i1 %103, %109, !dbg !2179
  %112 = icmp ne i8 %108, 0, !dbg !2181
  %113 = and i1 %110, %112, !dbg !2181
  %114 = xor i1 %102, true, !dbg !2182
  %115 = xor i1 %104, true, !dbg !2115
  %116 = and i1 %109, %115, !dbg !2115
  %117 = or i1 %25, %116, !dbg !2115
  %118 = and i8 %99, %100, !dbg !2183
  %119 = and i8 %118, 1, !dbg !2183
  %120 = icmp ne i8 %119, 0, !dbg !2183
  %121 = and i1 %120, %105, !dbg !2183
  br label %122, !dbg !2185

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2186
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2155
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2118
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2122
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2123
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2124
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %126, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %123, metadata !2052, metadata !DIExpression()), !dbg !2101
  %131 = icmp eq i64 %126, -1, !dbg !2187
  br i1 %131, label %132, label %136, !dbg !2188

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2189
  %134 = load i8, i8* %133, align 1, !dbg !2189, !tbaa !1330
  %135 = icmp eq i8 %134, 0, !dbg !2190
  br i1 %135, label %581, label %138, !dbg !2191

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2192
  br i1 %137, label %581, label %138, !dbg !2191

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2193
  br i1 %106, label %139, label %154, !dbg !2194

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2195
  %141 = and i1 %107, %131, !dbg !2196
  br i1 %141, label %142, label %144, !dbg !2196

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %143, metadata !2046, metadata !DIExpression()), !dbg !2101
  br label %144, !dbg !2198

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2046, metadata !DIExpression()), !dbg !2101
  %146 = icmp ugt i64 %140, %145, !dbg !2199
  br i1 %146, label %154, label %147, !dbg !2200

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2201
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2202
  %150 = icmp ne i32 %149, 0, !dbg !2203
  %151 = or i1 %150, %109, !dbg !2204
  %152 = xor i1 %150, true, !dbg !2204
  %153 = zext i1 %152 to i8, !dbg !2204
  br i1 %151, label %154, label %639, !dbg !2204

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %156, metadata !2068, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %155, metadata !2046, metadata !DIExpression()), !dbg !2101
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2205
  %158 = load i8, i8* %157, align 1, !dbg !2205, !tbaa !1330
  call void @llvm.dbg.value(metadata i8 %158, metadata !2063, metadata !DIExpression()), !dbg !2193
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
  ], !dbg !2206

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2207

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2208

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2193
  %162 = and i8 %127, 1, !dbg !2211
  %163 = icmp eq i8 %162, 0, !dbg !2211
  %164 = and i1 %110, %163, !dbg !2211
  br i1 %164, label %165, label %181, !dbg !2211

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2213
  br i1 %166, label %167, label %169, !dbg !2217

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2213
  store i8 39, i8* %168, align 1, !dbg !2213, !tbaa !1330
  br label %169, !dbg !2213

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %170, metadata !2053, metadata !DIExpression()), !dbg !2101
  %171 = icmp ult i64 %170, %130, !dbg !2218
  br i1 %171, label %172, label %174, !dbg !2221

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2218
  store i8 36, i8* %173, align 1, !dbg !2218, !tbaa !1330
  br label %174, !dbg !2218

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %175, metadata !2053, metadata !DIExpression()), !dbg !2101
  %176 = icmp ult i64 %175, %130, !dbg !2222
  br i1 %176, label %177, label %179, !dbg !2225

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2222
  store i8 39, i8* %178, align 1, !dbg !2222, !tbaa !1330
  br label %179, !dbg !2222

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %180, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %181, !dbg !2226

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2101
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %183, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %182, metadata !2053, metadata !DIExpression()), !dbg !2101
  %184 = icmp ult i64 %182, %130, !dbg !2227
  br i1 %184, label %185, label %187, !dbg !2230

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2227
  store i8 92, i8* %186, align 1, !dbg !2227, !tbaa !1330
  br label %187, !dbg !2227

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %188, metadata !2053, metadata !DIExpression()), !dbg !2101
  br i1 %103, label %189, label %463, !dbg !2231

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2233
  %191 = icmp ult i64 %190, %155, !dbg !2234
  br i1 %191, label %192, label %463, !dbg !2235

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2236
  %194 = load i8, i8* %193, align 1, !dbg !2236, !tbaa !1330
  %195 = add i8 %194, -48, !dbg !2237
  %196 = icmp ult i8 %195, 10, !dbg !2237
  br i1 %196, label %197, label %463, !dbg !2237

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2238
  br i1 %198, label %199, label %201, !dbg !2242

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2238
  store i8 48, i8* %200, align 1, !dbg !2238, !tbaa !1330
  br label %201, !dbg !2238

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %202, metadata !2053, metadata !DIExpression()), !dbg !2101
  %203 = icmp ult i64 %202, %130, !dbg !2243
  br i1 %203, label %204, label %206, !dbg !2246

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2243
  store i8 48, i8* %205, align 1, !dbg !2243, !tbaa !1330
  br label %206, !dbg !2243

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %207, metadata !2053, metadata !DIExpression()), !dbg !2101
  br label %463, !dbg !2247

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2248

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2249

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2250

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2251

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2252
  %214 = icmp ult i64 %213, %155, !dbg !2253
  br i1 %214, label %215, label %463, !dbg !2254

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2255
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2256
  %218 = load i8, i8* %217, align 1, !dbg !2256, !tbaa !1330
  %219 = icmp eq i8 %218, 63, !dbg !2257
  br i1 %219, label %220, label %463, !dbg !2258

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2259
  %222 = load i8, i8* %221, align 1, !dbg !2259, !tbaa !1330
  %223 = sext i8 %222 to i32, !dbg !2259
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
  ], !dbg !2260

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2261

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %213, metadata !2052, metadata !DIExpression()), !dbg !2101
  %226 = icmp ult i64 %124, %130, !dbg !2263
  br i1 %226, label %227, label %229, !dbg !2266

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2263
  store i8 63, i8* %228, align 1, !dbg !2263, !tbaa !1330
  br label %229, !dbg !2263

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %230, metadata !2053, metadata !DIExpression()), !dbg !2101
  %231 = icmp ult i64 %230, %130, !dbg !2267
  br i1 %231, label %232, label %234, !dbg !2270

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2267
  store i8 34, i8* %233, align 1, !dbg !2267, !tbaa !1330
  br label %234, !dbg !2267

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %235, metadata !2053, metadata !DIExpression()), !dbg !2101
  %236 = icmp ult i64 %235, %130, !dbg !2271
  br i1 %236, label %237, label %239, !dbg !2274

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2271
  store i8 34, i8* %238, align 1, !dbg !2271, !tbaa !1330
  br label %239, !dbg !2271

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %240, metadata !2053, metadata !DIExpression()), !dbg !2101
  %241 = icmp ult i64 %240, %130, !dbg !2275
  br i1 %241, label %242, label %244, !dbg !2278

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2275
  store i8 63, i8* %243, align 1, !dbg !2275, !tbaa !1330
  br label %244, !dbg !2275

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %245, metadata !2053, metadata !DIExpression()), !dbg !2101
  br label %463, !dbg !2279

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2067, metadata !DIExpression()), !dbg !2193
  br label %256, !dbg !2280

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2067, metadata !DIExpression()), !dbg !2193
  br label %256, !dbg !2281

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2067, metadata !DIExpression()), !dbg !2193
  br label %254, !dbg !2282

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2067, metadata !DIExpression()), !dbg !2193
  br label %254, !dbg !2283

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2067, metadata !DIExpression()), !dbg !2193
  br label %256, !dbg !2284

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2067, metadata !DIExpression()), !dbg !2193
  br i1 %110, label %252, label %253, !dbg !2285

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2286

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2289

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %255, metadata !2067, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2096), !dbg !2291
  br i1 %111, label %256, label %625, !dbg !2292

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %257, metadata !2067, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2097), !dbg !2294
  br i1 %102, label %488, label %463, !dbg !2295

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2296

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2297, !tbaa !1330
  %261 = icmp eq i8 %260, 0, !dbg !2298
  br i1 %261, label %262, label %463, !dbg !2299

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2300
  br i1 %263, label %264, label %463, !dbg !2302

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2193
  br label %265, !dbg !2303

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %266, metadata !2070, metadata !DIExpression()), !dbg !2193
  br i1 %111, label %463, label %625, !dbg !2304

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2193
  br i1 %110, label %268, label %463, !dbg !2305

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2306

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2308
  %271 = icmp ne i64 %125, 0, !dbg !2310
  %272 = or i1 %271, %270, !dbg !2311
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2311
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %274, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %273, metadata !2054, metadata !DIExpression()), !dbg !2101
  %275 = icmp ult i64 %124, %274, !dbg !2312
  br i1 %275, label %276, label %278, !dbg !2315

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2312
  store i8 39, i8* %277, align 1, !dbg !2312, !tbaa !1330
  br label %278, !dbg !2312

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %279, metadata !2053, metadata !DIExpression()), !dbg !2101
  %280 = icmp ult i64 %279, %274, !dbg !2316
  br i1 %280, label %281, label %283, !dbg !2319

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2316
  store i8 92, i8* %282, align 1, !dbg !2316, !tbaa !1330
  br label %283, !dbg !2316

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %284, metadata !2053, metadata !DIExpression()), !dbg !2101
  %285 = icmp ult i64 %284, %274, !dbg !2320
  br i1 %285, label %286, label %288, !dbg !2323

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2320
  store i8 39, i8* %287, align 1, !dbg !2320, !tbaa !1330
  br label %288, !dbg !2320

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %289, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %463, !dbg !2324

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2325

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2071, metadata !DIExpression()), !dbg !2326
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2327
  %293 = load i16*, i16** %292, align 8, !dbg !2327, !tbaa !1198
  %294 = zext i8 %158 to i64, !dbg !2327
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2327
  %296 = load i16, i16* %295, align 2, !dbg !2327, !tbaa !2329
  %297 = lshr i16 %296, 14, !dbg !2331
  %298 = trunc i16 %297 to i8, !dbg !2331
  %299 = and i8 %298, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i8 %299, metadata !2074, metadata !DIExpression()), !dbg !2326
  br label %355, !dbg !2332

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2075, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %23, metadata !2335, metadata !DIExpression()) #18, !dbg !2343
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()) #18, !dbg !2343
  call void @llvm.dbg.value(metadata i64 8, metadata !2342, metadata !DIExpression()) #18, !dbg !2343
  store i64 0, i64* %10, align 8, !dbg !2345
  call void @llvm.dbg.value(metadata i64 0, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2326
  %301 = icmp eq i64 %155, -1, !dbg !2346
  br i1 %301, label %302, label %304, !dbg !2348

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %303, metadata !2046, metadata !DIExpression()), !dbg !2101
  br label %304, !dbg !2350

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  br label %306, !dbg !2351

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2352
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2353
  call void @llvm.dbg.value(metadata i8 %308, metadata !2074, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2354
  %309 = add i64 %307, %123, !dbg !2355
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2356
  %311 = sub i64 %305, %309, !dbg !2357
  call void @llvm.dbg.value(metadata i32* %12, metadata !2081, metadata !DIExpression(DW_OP_deref)), !dbg !2114
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %312, metadata !2084, metadata !DIExpression()), !dbg !2114
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2359

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  %314 = icmp ugt i64 %305, %309, !dbg !2360
  br i1 %314, label %315, label %340, !dbg !2362

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2363
  br label %317, !dbg !2363

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2071, metadata !DIExpression()), !dbg !2326
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2364
  %321 = load i8, i8* %320, align 1, !dbg !2364, !tbaa !1330
  %322 = icmp eq i8 %321, 0, !dbg !2362
  br i1 %322, label %340, label %323, !dbg !2363

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %324, metadata !2071, metadata !DIExpression()), !dbg !2326
  %325 = add i64 %324, %123, !dbg !2366
  %326 = icmp ult i64 %325, %305, !dbg !2360
  br i1 %326, label %317, label %340, !dbg !2362, !llvm.loop !2367

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2368
  %329 = and i1 %113, %328, !dbg !2371
  call void @llvm.dbg.value(metadata i64 1, metadata !2085, metadata !DIExpression()), !dbg !2372
  br i1 %329, label %330, label %343, !dbg !2371

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2085, metadata !DIExpression()), !dbg !2372
  %332 = add i64 %331, %309, !dbg !2373
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2374
  %334 = load i8, i8* %333, align 1, !dbg !2374, !tbaa !1330
  %335 = sext i8 %334 to i32, !dbg !2374
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2375

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %337, metadata !2085, metadata !DIExpression()), !dbg !2372
  %338 = icmp eq i64 %337, %312, !dbg !2368
  br i1 %338, label %343, label %330, !dbg !2377, !llvm.loop !2378

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %308, metadata !2074, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %307, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %308, metadata !2074, metadata !DIExpression()), !dbg !2326
  br label %340, !dbg !2380

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2380
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2381, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %344, metadata !2081, metadata !DIExpression()), !dbg !2114
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2383
  %346 = icmp eq i32 %345, 0, !dbg !2383
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2384
  call void @llvm.dbg.value(metadata i8 %347, metadata !2074, metadata !DIExpression()), !dbg !2326
  %348 = add i64 %312, %307, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %348, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %347, metadata !2074, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %348, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2380
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2386
  %350 = icmp eq i32 %349, 0, !dbg !2387
  br i1 %350, label %306, label %351, !dbg !2388, !llvm.loop !2389

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2391
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 2, metadata !2047, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %99, metadata !2057, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2391
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2193
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2392
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2392
  call void @llvm.dbg.value(metadata i8 %358, metadata !2074, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %357, metadata !2071, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %356, metadata !2046, metadata !DIExpression()), !dbg !2101
  %359 = and i8 %358, 1, !dbg !2393
  %360 = icmp ne i8 %359, 0, !dbg !2393
  call void @llvm.dbg.value(metadata i8 %359, metadata !2070, metadata !DIExpression()), !dbg !2193
  %361 = icmp ult i64 %357, 2, !dbg !2394
  %362 = or i1 %360, %114, !dbg !2395
  %363 = and i1 %361, %362, !dbg !2396
  br i1 %363, label %463, label %364, !dbg !2396

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %365, metadata !2092, metadata !DIExpression()), !dbg !2398
  br label %366, !dbg !2399

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2186
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2101
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2122
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2193
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2193
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2400
  call void @llvm.dbg.value(metadata i8 %372, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %371, metadata !2068, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %370, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %369, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %368, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %367, metadata !2052, metadata !DIExpression()), !dbg !2101
  br i1 %362, label %419, label %373, !dbg !2401

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2406

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2193
  %375 = and i8 %369, 1, !dbg !2409
  %376 = icmp eq i8 %375, 0, !dbg !2409
  %377 = and i1 %110, %376, !dbg !2409
  br i1 %377, label %378, label %394, !dbg !2409

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2411
  br i1 %379, label %380, label %382, !dbg !2415

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2411
  store i8 39, i8* %381, align 1, !dbg !2411, !tbaa !1330
  br label %382, !dbg !2411

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %383, metadata !2053, metadata !DIExpression()), !dbg !2101
  %384 = icmp ult i64 %383, %130, !dbg !2416
  br i1 %384, label %385, label %387, !dbg !2419

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2416
  store i8 36, i8* %386, align 1, !dbg !2416, !tbaa !1330
  br label %387, !dbg !2416

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %388, metadata !2053, metadata !DIExpression()), !dbg !2101
  %389 = icmp ult i64 %388, %130, !dbg !2420
  br i1 %389, label %390, label %392, !dbg !2423

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2420
  store i8 39, i8* %391, align 1, !dbg !2420, !tbaa !1330
  br label %392, !dbg !2420

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %393, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %394, !dbg !2424

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2101
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %396, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %395, metadata !2053, metadata !DIExpression()), !dbg !2101
  %397 = icmp ult i64 %395, %130, !dbg !2425
  br i1 %397, label %398, label %400, !dbg !2428

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2425
  store i8 92, i8* %399, align 1, !dbg !2425, !tbaa !1330
  br label %400, !dbg !2425

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %401, metadata !2053, metadata !DIExpression()), !dbg !2101
  %402 = icmp ult i64 %401, %130, !dbg !2429
  br i1 %402, label %403, label %407, !dbg !2432

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2429
  %405 = or i8 %404, 48, !dbg !2429
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2429
  store i8 %405, i8* %406, align 1, !dbg !2429, !tbaa !1330
  br label %407, !dbg !2429

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %408, metadata !2053, metadata !DIExpression()), !dbg !2101
  %409 = icmp ult i64 %408, %130, !dbg !2433
  br i1 %409, label %410, label %415, !dbg !2436

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2433
  %412 = and i8 %411, 7, !dbg !2433
  %413 = or i8 %412, 48, !dbg !2433
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2433
  store i8 %413, i8* %414, align 1, !dbg !2433, !tbaa !1330
  br label %415, !dbg !2433

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %416, metadata !2053, metadata !DIExpression()), !dbg !2101
  %417 = and i8 %370, 7, !dbg !2437
  %418 = or i8 %417, 48, !dbg !2438
  call void @llvm.dbg.value(metadata i8 %418, metadata !2063, metadata !DIExpression()), !dbg !2193
  br label %428, !dbg !2439

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2440
  %421 = icmp eq i8 %420, 0, !dbg !2440
  br i1 %421, label %428, label %422, !dbg !2442

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2443
  br i1 %423, label %424, label %426, !dbg !2447

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2443
  store i8 92, i8* %425, align 1, !dbg !2443, !tbaa !1330
  br label %426, !dbg !2443

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %427, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2193
  br label %428, !dbg !2448

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2101
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2122
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2193
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2193
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %433, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %432, metadata !2068, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %431, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %430, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %429, metadata !2053, metadata !DIExpression()), !dbg !2101
  %434 = add i64 %367, 1, !dbg !2449
  %435 = icmp ugt i64 %365, %434, !dbg !2451
  br i1 %435, label %436, label %526, !dbg !2452

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2453
  %438 = icmp ne i8 %437, 0, !dbg !2453
  %439 = and i8 %433, 1, !dbg !2453
  %440 = icmp eq i8 %439, 0, !dbg !2453
  %441 = and i1 %438, %440, !dbg !2453
  br i1 %441, label %442, label %453, !dbg !2453

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2456
  br i1 %443, label %444, label %446, !dbg !2460

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2456
  store i8 39, i8* %445, align 1, !dbg !2456, !tbaa !1330
  br label %446, !dbg !2456

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %447, metadata !2053, metadata !DIExpression()), !dbg !2101
  %448 = icmp ult i64 %447, %130, !dbg !2461
  br i1 %448, label %449, label %451, !dbg !2464

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2461
  store i8 39, i8* %450, align 1, !dbg !2461, !tbaa !1330
  br label %451, !dbg !2461

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %452, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %453, !dbg !2465

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2466
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %455, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %454, metadata !2053, metadata !DIExpression()), !dbg !2101
  %456 = icmp ult i64 %454, %130, !dbg !2467
  br i1 %456, label %457, label %459, !dbg !2470

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2467
  store i8 %431, i8* %458, align 1, !dbg !2467, !tbaa !1330
  br label %459, !dbg !2467

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %460, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %434, metadata !2052, metadata !DIExpression()), !dbg !2101
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2471
  %462 = load i8, i8* %461, align 1, !dbg !2471, !tbaa !1330
  call void @llvm.dbg.value(metadata i8 %462, metadata !2063, metadata !DIExpression()), !dbg !2193
  br label %366, !dbg !2472, !llvm.loop !2473

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2186
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2101
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2118
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2476
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2101
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2101
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2193
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2193
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2193
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %472, metadata !2070, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %471, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %156, metadata !2068, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %470, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %469, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %468, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %467, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %466, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %465, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %464, metadata !2052, metadata !DIExpression()), !dbg !2101
  br i1 %117, label %486, label %474, !dbg !2477

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2478
  %476 = zext i8 %475 to i64, !dbg !2478
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2479
  %478 = load i32, i32* %477, align 4, !dbg !2479, !tbaa !1322
  %479 = and i8 %470, 31, !dbg !2480
  %480 = zext i8 %479 to i32, !dbg !2480
  %481 = shl nuw i32 1, %480, !dbg !2481
  %482 = and i32 %478, %481, !dbg !2481
  %483 = icmp eq i32 %482, 0, !dbg !2481
  %484 = icmp eq i8 %156, 0, !dbg !2482
  %485 = and i1 %484, %483, !dbg !2483
  br i1 %485, label %526, label %488, !dbg !2483

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2482
  br i1 %487, label %526, label %488, !dbg !2484

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2485
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2101
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2118
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2476
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2122
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2123
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2193
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2193
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %496, metadata !2070, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %495, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %494, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %493, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %492, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %491, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %490, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %489, metadata !2052, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2098), !dbg !2486
  br i1 %109, label %498, label %629, !dbg !2487

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2193
  %499 = and i8 %493, 1, !dbg !2489
  %500 = icmp eq i8 %499, 0, !dbg !2489
  %501 = and i1 %110, %500, !dbg !2489
  br i1 %501, label %502, label %518, !dbg !2489

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2491
  br i1 %503, label %504, label %506, !dbg !2495

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2491
  store i8 39, i8* %505, align 1, !dbg !2491, !tbaa !1330
  br label %506, !dbg !2491

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %507, metadata !2053, metadata !DIExpression()), !dbg !2101
  %508 = icmp ult i64 %507, %497, !dbg !2496
  br i1 %508, label %509, label %511, !dbg !2499

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2496
  store i8 36, i8* %510, align 1, !dbg !2496, !tbaa !1330
  br label %511, !dbg !2496

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %512, metadata !2053, metadata !DIExpression()), !dbg !2101
  %513 = icmp ult i64 %512, %497, !dbg !2500
  br i1 %513, label %514, label %516, !dbg !2503

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2500
  store i8 39, i8* %515, align 1, !dbg !2500, !tbaa !1330
  br label %516, !dbg !2500

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %517, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %518, !dbg !2504

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2193
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %520, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %519, metadata !2053, metadata !DIExpression()), !dbg !2101
  %521 = icmp ult i64 %519, %497, !dbg !2505
  br i1 %521, label %522, label %524, !dbg !2508

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2505
  store i8 92, i8* %523, align 1, !dbg !2505, !tbaa !1330
  br label %524, !dbg !2505

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %525, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %536, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %535, metadata !2070, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %534, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %533, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %532, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %531, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %530, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %529, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %528, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %527, metadata !2052, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2099), !dbg !2509
  br label %553, !dbg !2510

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2485
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2101
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2118
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2476
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2122
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2123
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2513
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2193
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2193
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %535, metadata !2070, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %534, metadata !2069, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %533, metadata !2063, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %532, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %531, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %530, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %529, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %528, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %527, metadata !2052, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2099), !dbg !2509
  %537 = and i8 %531, 1, !dbg !2510
  %538 = icmp ne i8 %537, 0, !dbg !2510
  %539 = and i8 %534, 1, !dbg !2510
  %540 = icmp eq i8 %539, 0, !dbg !2510
  %541 = and i1 %538, %540, !dbg !2510
  br i1 %541, label %542, label %553, !dbg !2510

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2514
  br i1 %543, label %544, label %546, !dbg !2518

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2514
  store i8 39, i8* %545, align 1, !dbg !2514, !tbaa !1330
  br label %546, !dbg !2514

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %547, metadata !2053, metadata !DIExpression()), !dbg !2101
  %548 = icmp ult i64 %547, %536, !dbg !2519
  br i1 %548, label %549, label %551, !dbg !2522

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2519
  store i8 39, i8* %550, align 1, !dbg !2519, !tbaa !1330
  br label %551, !dbg !2519

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %552, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2101
  br label %553, !dbg !2523

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2193
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %562, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %561, metadata !2053, metadata !DIExpression()), !dbg !2101
  %563 = icmp ult i64 %561, %554, !dbg !2524
  br i1 %563, label %564, label %566, !dbg !2527

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2524
  store i8 %556, i8* %565, align 1, !dbg !2524, !tbaa !1330
  br label %566, !dbg !2524

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %567, metadata !2053, metadata !DIExpression()), !dbg !2101
  %568 = and i8 %555, 1, !dbg !2528
  %569 = icmp eq i8 %568, 0, !dbg !2528
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2530
  call void @llvm.dbg.value(metadata i8 %570, metadata !2062, metadata !DIExpression()), !dbg !2101
  br label %571, !dbg !2531

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2485
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2101
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2118
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2476
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2122
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2101
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2124
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %578, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %577, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %576, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %575, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %574, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %573, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %572, metadata !2052, metadata !DIExpression()), !dbg !2101
  %580 = add i64 %572, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %580, metadata !2052, metadata !DIExpression()), !dbg !2101
  br label %122, !dbg !2533, !llvm.loop !2534

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %127, metadata !2060, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %128, metadata !2061, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %129, metadata !2062, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  %583 = icmp eq i64 %124, 0, !dbg !2536
  %584 = and i1 %110, %583, !dbg !2538
  %585 = xor i1 %584, true, !dbg !2538
  %586 = or i1 %109, %585, !dbg !2538
  br i1 %586, label %587, label %629, !dbg !2538

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2539
  %589 = xor i1 %588, true, !dbg !2539
  %590 = and i8 %128, 1, !dbg !2541
  %591 = icmp eq i8 %590, 0, !dbg !2541
  %592 = or i1 %591, %589, !dbg !2539
  br i1 %592, label %602, label %593, !dbg !2539

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2542
  %595 = icmp eq i8 %594, 0, !dbg !2542
  br i1 %595, label %598, label %596, !dbg !2545

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %94, metadata !2050, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %95, metadata !2051, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %125, metadata !2054, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %582, metadata !2046, metadata !DIExpression()), !dbg !2101
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2546
  br label %645, !dbg !2547

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2548
  %600 = icmp ne i64 %125, 0, !dbg !2550
  %601 = and i1 %600, %599, !dbg !2551
  br i1 %601, label %26, label %602, !dbg !2551

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %130, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  %603 = icmp ne i8* %97, null, !dbg !2552
  %604 = and i1 %603, %109, !dbg !2554
  br i1 %604, label %605, label %620, !dbg !2554

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %124, metadata !2053, metadata !DIExpression()), !dbg !2101
  %606 = load i8, i8* %97, align 1, !dbg !2555, !tbaa !1330
  %607 = icmp eq i8 %606, 0, !dbg !2558
  br i1 %607, label %620, label %608, !dbg !2558

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2055, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %611, metadata !2053, metadata !DIExpression()), !dbg !2101
  %612 = icmp ult i64 %611, %130, !dbg !2559
  br i1 %612, label %613, label %615, !dbg !2562

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2559
  store i8 %609, i8* %614, align 1, !dbg !2559, !tbaa !1330
  br label %615, !dbg !2559

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %616, metadata !2053, metadata !DIExpression()), !dbg !2101
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %617, metadata !2055, metadata !DIExpression()), !dbg !2101
  %618 = load i8, i8* %617, align 1, !dbg !2555, !tbaa !1330
  %619 = icmp eq i8 %618, 0, !dbg !2558
  br i1 %619, label %620, label %608, !dbg !2558, !llvm.loop !2564

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2155
  call void @llvm.dbg.value(metadata i64 %621, metadata !2053, metadata !DIExpression()), !dbg !2101
  %622 = icmp ult i64 %621, %130, !dbg !2566
  br i1 %622, label %623, label %645, !dbg !2568

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2569
  store i8 0, i8* %624, align 1, !dbg !2570, !tbaa !1330
  br label %645, !dbg !2569

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %630, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2100), !dbg !2571
  %627 = icmp eq i8 %101, 0, !dbg !2572
  %628 = select i1 %627, i32 2, i32 4, !dbg !2572
  br label %635, !dbg !2572

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2044, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %630, metadata !2046, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.label(metadata !2100), !dbg !2571
  %632 = icmp eq i32 %93, 2, !dbg !2574
  %633 = icmp eq i8 %101, 0, !dbg !2572
  %634 = select i1 %633, i32 2, i32 4, !dbg !2572
  br i1 %632, label %635, label %639, !dbg !2572

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2572

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2047, metadata !DIExpression()), !dbg !2101
  %643 = and i32 %5, -3, !dbg !2575
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2576
  br label %645, !dbg !2577

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2578
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1, metadata !2584, metadata !DIExpression()), !dbg !2587
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()), !dbg !2587
  %4 = icmp eq i8* %3, %0, !dbg !2589
  br i1 %4, label %5, label %71, !dbg !2591

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %6, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %6, metadata !2593, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* undef, metadata !2599, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 85, metadata !2600, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 84, metadata !2601, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 70, metadata !2602, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 45, metadata !2603, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 56, metadata !2604, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %7 = load i8, i8* %6, align 1, !dbg !2612, !tbaa !1330
  %8 = and i8 %7, -33, !dbg !2612
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2612

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 84, metadata !2620, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 70, metadata !2621, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 45, metadata !2622, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 56, metadata !2623, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2628
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2632
  %11 = load i8, i8* %10, align 1, !dbg !2632, !tbaa !1330
  %12 = and i8 %11, -33, !dbg !2632
  %13 = icmp eq i8 %12, 84, !dbg !2632
  br i1 %13, label %14, label %68, !dbg !2632

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2634, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8* undef, metadata !2639, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 70, metadata !2640, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 45, metadata !2641, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 56, metadata !2642, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2647
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2651
  %16 = load i8, i8* %15, align 1, !dbg !2651, !tbaa !1330
  %17 = and i8 %16, -33, !dbg !2651
  %18 = icmp eq i8 %17, 70, !dbg !2651
  br i1 %18, label %19, label %68, !dbg !2651

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* undef, metadata !2658, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 45, metadata !2659, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 56, metadata !2660, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2665
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2669
  %21 = load i8, i8* %20, align 1, !dbg !2669, !tbaa !1330
  %22 = icmp eq i8 %21, 45, !dbg !2669
  br i1 %22, label %23, label %68, !dbg !2671

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2672, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* undef, metadata !2677, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 56, metadata !2678, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2683
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2687
  %25 = load i8, i8* %24, align 1, !dbg !2687, !tbaa !1330
  %26 = icmp eq i8 %25, 56, !dbg !2687
  br i1 %26, label %27, label %68, !dbg !2689

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2690, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* undef, metadata !2695, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2704
  %29 = load i8, i8* %28, align 1, !dbg !2704, !tbaa !1330
  %30 = icmp eq i8 %29, 0, !dbg !2704
  br i1 %30, label %31, label %68, !dbg !2706

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2707, !tbaa !1330
  %33 = icmp eq i8 %32, 96, !dbg !2708
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2707
  br label %71, !dbg !2709

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 66, metadata !2620, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 49, metadata !2621, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 56, metadata !2622, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 51, metadata !2624, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 48, metadata !2625, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2710
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2714
  %37 = load i8, i8* %36, align 1, !dbg !2714, !tbaa !1330
  %38 = and i8 %37, -33, !dbg !2714
  %39 = icmp eq i8 %38, 66, !dbg !2714
  br i1 %39, label %40, label %68, !dbg !2714

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2634, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* undef, metadata !2639, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 49, metadata !2640, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 56, metadata !2641, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 48, metadata !2642, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 51, metadata !2643, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 48, metadata !2644, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2715
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2717
  %42 = load i8, i8* %41, align 1, !dbg !2717, !tbaa !1330
  %43 = icmp eq i8 %42, 49, !dbg !2717
  br i1 %43, label %44, label %68, !dbg !2718

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2653, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* undef, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 56, metadata !2659, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 48, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 51, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 48, metadata !2662, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2664, metadata !DIExpression()), !dbg !2719
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2721
  %46 = load i8, i8* %45, align 1, !dbg !2721, !tbaa !1330
  %47 = icmp eq i8 %46, 56, !dbg !2721
  br i1 %47, label %48, label %68, !dbg !2722

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2672, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* undef, metadata !2677, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 48, metadata !2678, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 51, metadata !2679, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 48, metadata !2680, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, metadata !2682, metadata !DIExpression()), !dbg !2723
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2725
  %50 = load i8, i8* %49, align 1, !dbg !2725, !tbaa !1330
  %51 = icmp eq i8 %50, 48, !dbg !2725
  br i1 %51, label %52, label %68, !dbg !2726

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2690, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* undef, metadata !2695, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 51, metadata !2696, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 48, metadata !2697, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2727
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2729
  %54 = load i8, i8* %53, align 1, !dbg !2729, !tbaa !1330
  %55 = icmp eq i8 %54, 51, !dbg !2729
  br i1 %55, label %56, label %68, !dbg !2730

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2731, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* undef, metadata !2736, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 48, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2740
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2744
  %58 = load i8, i8* %57, align 1, !dbg !2744, !tbaa !1330
  %59 = icmp eq i8 %58, 48, !dbg !2744
  br i1 %59, label %60, label %68, !dbg !2746

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2747, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* undef, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2755
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2759
  %62 = load i8, i8* %61, align 1, !dbg !2759, !tbaa !1330
  %63 = icmp eq i8 %62, 0, !dbg !2759
  br i1 %63, label %64, label %68, !dbg !2761

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2762, !tbaa !1330
  %66 = icmp eq i8 %65, 96, !dbg !2763
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2762
  br label %71, !dbg !2764

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2765
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2766
  br label %71, !dbg !2767

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2587
  ret i8* %72, !dbg !2768
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !355 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !359 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata i64* null, metadata !2783, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2784, metadata !DIExpression()) #18, !dbg !2790
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2792
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2785, metadata !DIExpression()) #18, !dbg !2790
  %6 = tail call i32* @__errno_location() #25, !dbg !2793
  %7 = load i32, i32* %6, align 4, !dbg !2793, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %7, metadata !2786, metadata !DIExpression()) #18, !dbg !2790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2794
  %9 = load i32, i32* %8, align 4, !dbg !2794, !tbaa !1986
  %10 = or i32 %9, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %10, metadata !2787, metadata !DIExpression()) #18, !dbg !2790
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2796
  %12 = load i32, i32* %11, align 8, !dbg !2796, !tbaa !1935
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2797
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2798
  %15 = load i8*, i8** %14, align 8, !dbg !2798, !tbaa !2009
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2799
  %17 = load i8*, i8** %16, align 8, !dbg !2799, !tbaa !2012
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2800
  %19 = add i64 %18, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %19, metadata !2788, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %19, metadata !2802, metadata !DIExpression()) #18, !dbg !2807
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %20, metadata !2789, metadata !DIExpression()) #18, !dbg !2790
  %21 = load i32, i32* %11, align 8, !dbg !2810, !tbaa !1935
  %22 = load i8*, i8** %14, align 8, !dbg !2811, !tbaa !2009
  %23 = load i8*, i8** %16, align 8, !dbg !2812, !tbaa !2012
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2813
  store i32 %7, i32* %6, align 4, !dbg !2814, !tbaa !1322
  ret i8* %20, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64* %2, metadata !2783, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2784, metadata !DIExpression()), !dbg !2816
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2817
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2785, metadata !DIExpression()), !dbg !2816
  %7 = tail call i32* @__errno_location() #25, !dbg !2818
  %8 = load i32, i32* %7, align 4, !dbg !2818, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %8, metadata !2786, metadata !DIExpression()), !dbg !2816
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2819
  %10 = load i32, i32* %9, align 4, !dbg !2819, !tbaa !1986
  %11 = icmp ne i64* %2, null, !dbg !2820
  %12 = xor i1 %11, true, !dbg !2820
  %13 = zext i1 %12 to i32, !dbg !2820
  %14 = or i32 %10, %13, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %14, metadata !2787, metadata !DIExpression()), !dbg !2816
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2822
  %16 = load i32, i32* %15, align 8, !dbg !2822, !tbaa !1935
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2823
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2824
  %19 = load i8*, i8** %18, align 8, !dbg !2824, !tbaa !2009
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2825
  %21 = load i8*, i8** %20, align 8, !dbg !2825, !tbaa !2012
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2826
  %23 = add i64 %22, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %23, metadata !2788, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %23, metadata !2802, metadata !DIExpression()) #18, !dbg !2828
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %24, metadata !2789, metadata !DIExpression()), !dbg !2816
  %25 = load i32, i32* %15, align 8, !dbg !2831, !tbaa !1935
  %26 = load i8*, i8** %18, align 8, !dbg !2832, !tbaa !2009
  %27 = load i8*, i8** %20, align 8, !dbg !2833, !tbaa !2012
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2834
  store i32 %8, i32* %7, align 4, !dbg !2835, !tbaa !1322
  br i1 %11, label %29, label %30, !dbg !2836

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2837, !tbaa !1398
  br label %30, !dbg !2839

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2841 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2845, !tbaa !1198
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 1, metadata !2844, metadata !DIExpression()), !dbg !2846
  %2 = load i32, i32* @nslots, align 4, !dbg !2847, !tbaa !1322
  %3 = icmp sgt i32 %2, 1, !dbg !2850
  br i1 %3, label %4, label %12, !dbg !2851

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2844, metadata !DIExpression()), !dbg !2846
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2852
  %7 = load i8*, i8** %6, align 8, !dbg !2852, !tbaa !2853
  tail call void @free(i8* %7) #18, !dbg !2855
  %8 = add nuw nsw i64 %5, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %8, metadata !2844, metadata !DIExpression()), !dbg !2846
  %9 = load i32, i32* @nslots, align 4, !dbg !2847, !tbaa !1322
  %10 = sext i32 %9 to i64, !dbg !2850
  %11 = icmp slt i64 %8, %10, !dbg !2850
  br i1 %11, label %4, label %12, !dbg !2851, !llvm.loop !2857

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2859
  %14 = load i8*, i8** %13, align 8, !dbg !2859, !tbaa !2853
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2861
  br i1 %15, label %17, label %16, !dbg !2862

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2863
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2865, !tbaa !2866
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2867, !tbaa !2853
  br label %17, !dbg !2868

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2869
  br i1 %18, label %21, label %19, !dbg !2871

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2872
  tail call void @free(i8* %20) #18, !dbg !2874
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2875, !tbaa !1198
  br label %21, !dbg !2876

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2877, !tbaa !1322
  ret void, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()), !dbg !2883
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2884
  ret i8* %3, !dbg !2885
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2890, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2891, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %2, metadata !2892, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2893, metadata !DIExpression()), !dbg !2905
  %5 = tail call i32* @__errno_location() #25, !dbg !2906
  %6 = load i32, i32* %5, align 4, !dbg !2906, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %6, metadata !2894, metadata !DIExpression()), !dbg !2905
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2907, !tbaa !1198
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2895, metadata !DIExpression()), !dbg !2905
  %8 = icmp slt i32 %0, 0, !dbg !2908
  br i1 %8, label %9, label %10, !dbg !2910

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2911
  unreachable, !dbg !2911

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2912, !tbaa !1322
  %12 = icmp sgt i32 %11, %0, !dbg !2913
  br i1 %12, label %34, label %13, !dbg !2914

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2915
  call void @llvm.dbg.value(metadata i1 %14, metadata !2896, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2899, metadata !DIExpression()), !dbg !2916
  %15 = icmp eq i32 %0, 2147483647, !dbg !2917
  br i1 %15, label %16, label %17, !dbg !2919

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2920
  unreachable, !dbg !2920

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2921
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2921
  %20 = add nuw nsw i32 %0, 1, !dbg !2922
  %21 = sext i32 %20 to i64, !dbg !2923
  %22 = shl nuw nsw i64 %21, 4, !dbg !2924
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2925
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2895, metadata !DIExpression()), !dbg !2905
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2926, !tbaa !1198
  br i1 %14, label %25, label %26, !dbg !2927

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2928, !tbaa.struct !2930
  br label %26, !dbg !2931

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2932, !tbaa !1322
  %28 = sext i32 %27 to i64, !dbg !2933
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2933
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2934
  %31 = sub nsw i32 %20, %27, !dbg !2935
  %32 = sext i32 %31 to i64, !dbg !2936
  %33 = shl nsw i64 %32, 4, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %30, metadata !2335, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %33, metadata !2342, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2940
  store i32 %20, i32* @nslots, align 4, !dbg !2941, !tbaa !1322
  br label %34, !dbg !2942

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2905
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2895, metadata !DIExpression()), !dbg !2905
  %36 = zext i32 %0 to i64, !dbg !2943
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2944
  %38 = load i64, i64* %37, align 8, !dbg !2944, !tbaa !2866
  call void @llvm.dbg.value(metadata i64 %38, metadata !2900, metadata !DIExpression()), !dbg !2945
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2946
  %40 = load i8*, i8** %39, align 8, !dbg !2946, !tbaa !2853
  call void @llvm.dbg.value(metadata i8* %40, metadata !2902, metadata !DIExpression()), !dbg !2945
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2947
  %42 = load i32, i32* %41, align 4, !dbg !2947, !tbaa !1986
  %43 = or i32 %42, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %43, metadata !2903, metadata !DIExpression()), !dbg !2945
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2949
  %45 = load i32, i32* %44, align 8, !dbg !2949, !tbaa !1935
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2950
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2951
  %48 = load i8*, i8** %47, align 8, !dbg !2951, !tbaa !2009
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2952
  %50 = load i8*, i8** %49, align 8, !dbg !2952, !tbaa !2012
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %51, metadata !2904, metadata !DIExpression()), !dbg !2945
  %52 = icmp ugt i64 %38, %51, !dbg !2954
  br i1 %52, label %63, label %53, !dbg !2956

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %54, metadata !2900, metadata !DIExpression()), !dbg !2945
  store i64 %54, i64* %37, align 8, !dbg !2959, !tbaa !2866
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2960
  br i1 %55, label %57, label %56, !dbg !2962

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2963
  br label %57, !dbg !2963

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2802, metadata !DIExpression()) #18, !dbg !2964
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %58, metadata !2902, metadata !DIExpression()), !dbg !2945
  store i8* %58, i8** %39, align 8, !dbg !2967, !tbaa !2853
  %59 = load i32, i32* %44, align 8, !dbg !2968, !tbaa !1935
  %60 = load i8*, i8** %47, align 8, !dbg !2969, !tbaa !2009
  %61 = load i8*, i8** %49, align 8, !dbg !2970, !tbaa !2012
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2971
  br label %63, !dbg !2972

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2945
  call void @llvm.dbg.value(metadata i8* %64, metadata !2902, metadata !DIExpression()), !dbg !2945
  store i32 %6, i32* %5, align 4, !dbg !2973, !tbaa !1322
  ret i8* %64, !dbg !2974
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %2, metadata !2981, metadata !DIExpression()), !dbg !2982
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2983
  ret i8* %4, !dbg !2984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 0, metadata !2881, metadata !DIExpression()) #18, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %0, metadata !2882, metadata !DIExpression()) #18, !dbg !2989
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2991
  ret i8* %2, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()) #18, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2980, metadata !DIExpression()) #18, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()) #18, !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3002
  ret i8* %3, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3004 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %1, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %2, metadata !3008, metadata !DIExpression()), !dbg !3010
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3011
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %1, metadata !3013, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3018, metadata !DIExpression()) #18, !dbg !3021
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3021, !alias.scope !3022
  %6 = icmp eq i32 %1, 10, !dbg !3025
  br i1 %6, label %7, label %8, !dbg !3027

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3028, !noalias !3022
  unreachable, !dbg !3028

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3029
  store i32 %1, i32* %9, align 8, !dbg !3030, !tbaa !1935, !alias.scope !3022
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3031
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3032
  ret i8* %10, !dbg !3033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3034 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %1, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %3, metadata !3041, metadata !DIExpression()), !dbg !3043
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3044
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %1, metadata !3013, metadata !DIExpression()) #18, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3018, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3048, !alias.scope !3049
  %7 = icmp eq i32 %1, 10, !dbg !3052
  br i1 %7, label %8, label %9, !dbg !3053

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3054, !noalias !3049
  unreachable, !dbg !3054

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3055
  store i32 %1, i32* %10, align 8, !dbg !3056, !tbaa !1935, !alias.scope !3049
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3058
  ret i8* %11, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3060 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3018, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3009, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 %0, metadata !3062, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !3063, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 0, metadata !3006, metadata !DIExpression()) #18, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3007, metadata !DIExpression()) #18, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %1, metadata !3008, metadata !DIExpression()) #18, !dbg !3069
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3070
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #18, !dbg !3071
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3064, !alias.scope !3072
  %5 = icmp eq i32 %0, 10, !dbg !3075
  br i1 %5, label %6, label %7, !dbg !3076

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3077, !noalias !3072
  unreachable, !dbg !3077

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3078
  store i32 %0, i32* %8, align 8, !dbg !3079, !tbaa !1935, !alias.scope !3072
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3081
  ret i8* %9, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3083 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3018, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3042, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 %0, metadata !3087, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3088, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()) #18, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()) #18, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()) #18, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %2, metadata !3041, metadata !DIExpression()) #18, !dbg !3095
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #18, !dbg !3097
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3090, !alias.scope !3098
  %6 = icmp eq i32 %0, 10, !dbg !3101
  br i1 %6, label %7, label %8, !dbg !3102

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3103, !noalias !3098
  unreachable, !dbg !3103

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3104
  store i32 %0, i32* %9, align 8, !dbg !3105, !tbaa !1935, !alias.scope !3098
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3106
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3107
  ret i8* %10, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3109 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 %2, metadata !3115, metadata !DIExpression()), !dbg !3117
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3118
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3118
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3116, metadata !DIExpression()), !dbg !3119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3120, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1953, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %2, metadata !1954, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %2, metadata !1956, metadata !DIExpression()), !dbg !3122
  %6 = lshr i8 %2, 5, !dbg !3124
  %7 = zext i8 %6 to i64, !dbg !3124
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3125
  call void @llvm.dbg.value(metadata i32* %8, metadata !1958, metadata !DIExpression()), !dbg !3122
  %9 = and i8 %2, 31, !dbg !3126
  %10 = zext i8 %9 to i32, !dbg !3126
  call void @llvm.dbg.value(metadata i32 %10, metadata !1959, metadata !DIExpression()), !dbg !3122
  %11 = load i32, i32* %8, align 4, !dbg !3127, !tbaa !1322
  %12 = lshr i32 %11, %10, !dbg !3128
  %13 = and i32 %12, 1, !dbg !3129
  call void @llvm.dbg.value(metadata i32 %13, metadata !1960, metadata !DIExpression()), !dbg !3122
  %14 = xor i32 %13, 1, !dbg !3130
  %15 = shl i32 %14, %10, !dbg !3131
  %16 = xor i32 %15, %11, !dbg !3132
  store i32 %16, i32* %8, align 4, !dbg !3132, !tbaa !1322
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3133
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3134
  ret i8* %17, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3136 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3116, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8 %1, metadata !3141, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i64 -1, metadata !3114, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i8 %1, metadata !3115, metadata !DIExpression()) #18, !dbg !3145
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3147, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1953, metadata !DIExpression()) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i8 %1, metadata !1954, metadata !DIExpression()) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i8 %1, metadata !1956, metadata !DIExpression()) #18, !dbg !3148
  %5 = lshr i8 %1, 5, !dbg !3150
  %6 = zext i8 %5 to i64, !dbg !3150
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %7, metadata !1958, metadata !DIExpression()) #18, !dbg !3148
  %8 = and i8 %1, 31, !dbg !3152
  %9 = zext i8 %8 to i32, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %9, metadata !1959, metadata !DIExpression()) #18, !dbg !3148
  %10 = load i32, i32* %7, align 4, !dbg !3153, !tbaa !1322
  %11 = lshr i32 %10, %9, !dbg !3154
  %12 = and i32 %11, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %12, metadata !1960, metadata !DIExpression()) #18, !dbg !3148
  %13 = xor i32 %12, 1, !dbg !3156
  %14 = shl i32 %13, %9, !dbg !3157
  %15 = xor i32 %14, %10, !dbg !3158
  store i32 %15, i32* %7, align 4, !dbg !3158, !tbaa !1322
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3160
  ret i8* %16, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3162 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3116, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8 58, metadata !3141, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i64 -1, metadata !3114, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i8 58, metadata !3115, metadata !DIExpression()) #18, !dbg !3170
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3172, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1953, metadata !DIExpression()) #18, !dbg !3173
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #18, !dbg !3173
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #18, !dbg !3173
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()) #18, !dbg !3173
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3175
  call void @llvm.dbg.value(metadata i32* %4, metadata !1958, metadata !DIExpression()) #18, !dbg !3173
  call void @llvm.dbg.value(metadata i32 26, metadata !1959, metadata !DIExpression()) #18, !dbg !3173
  %5 = load i32, i32* %4, align 4, !dbg !3176, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %5, metadata !1960, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3173
  %6 = or i32 %5, 67108864, !dbg !3177
  store i32 %6, i32* %4, align 4, !dbg !3177, !tbaa !1322
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3179
  ret i8* %7, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3181 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3116, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !3184, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #18, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()) #18, !dbg !3188
  call void @llvm.dbg.value(metadata i8 58, metadata !3115, metadata !DIExpression()) #18, !dbg !3188
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3190, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1953, metadata !DIExpression()) #18, !dbg !3191
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()) #18, !dbg !3191
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()) #18, !dbg !3191
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()) #18, !dbg !3191
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3193
  call void @llvm.dbg.value(metadata i32* %5, metadata !1958, metadata !DIExpression()) #18, !dbg !3191
  call void @llvm.dbg.value(metadata i32 26, metadata !1959, metadata !DIExpression()) #18, !dbg !3191
  %6 = load i32, i32* %5, align 4, !dbg !3194, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %6, metadata !1960, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3191
  %7 = or i32 %6, 67108864, !dbg !3195
  store i32 %7, i32* %5, align 4, !dbg !3195, !tbaa !1322
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3196
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3197
  ret i8* %8, !dbg !3198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3199 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %1, metadata !3202, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8* %2, metadata !3203, metadata !DIExpression()), !dbg !3207
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3208
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3204, metadata !DIExpression()), !dbg !3209
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %1, metadata !3013, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3211
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3205, !alias.scope !3212
  %8 = icmp eq i32 %1, 10, !dbg !3215
  br i1 %8, label %9, label %10, !dbg !3216

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3217, !noalias !3212
  unreachable, !dbg !3217

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3211
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3210
  store i32 %1, i32* %11, align 8, !dbg !3210, !tbaa.struct !3121
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3210
  %13 = bitcast i32* %12 to i8*, !dbg !3210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3210, !tbaa.struct !3121
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1953, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8 58, metadata !1954, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8 58, metadata !1956, metadata !DIExpression()), !dbg !3218
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3220
  call void @llvm.dbg.value(metadata i32* %14, metadata !1958, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 26, metadata !1959, metadata !DIExpression()), !dbg !3218
  %15 = load i32, i32* %14, align 4, !dbg !3221, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %15, metadata !1960, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3218
  %16 = or i32 %15, 67108864, !dbg !3222
  store i32 %16, i32* %14, align 4, !dbg !3222, !tbaa !1322
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3224
  ret i8* %17, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3226 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3234, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %0, metadata !3230, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3231, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3232, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %3, metadata !3233, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()) #18, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3240, metadata !DIExpression()) #18, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3241, metadata !DIExpression()) #18, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %3, metadata !3242, metadata !DIExpression()) #18, !dbg !3247
  call void @llvm.dbg.value(metadata i64 -1, metadata !3243, metadata !DIExpression()) #18, !dbg !3247
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3248
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3249, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1993, metadata !DIExpression()) #18, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %1, metadata !1994, metadata !DIExpression()) #18, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %2, metadata !1995, metadata !DIExpression()) #18, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1993, metadata !DIExpression()) #18, !dbg !3250
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3252
  store i32 10, i32* %7, align 8, !dbg !3253, !tbaa !1935
  %8 = icmp ne i8* %1, null, !dbg !3254
  %9 = icmp ne i8* %2, null, !dbg !3255
  %10 = and i1 %8, %9, !dbg !3256
  br i1 %10, label %12, label %11, !dbg !3256

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3257
  unreachable, !dbg !3257

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3258
  store i8* %1, i8** %13, align 8, !dbg !3259, !tbaa !2009
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3260
  store i8* %2, i8** %14, align 8, !dbg !3261, !tbaa !2012
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3263
  ret i8* %15, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3235 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %1, metadata !3240, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %2, metadata !3241, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %3, metadata !3242, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %4, metadata !3243, metadata !DIExpression()), !dbg !3265
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3266
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3234, metadata !DIExpression()), !dbg !3267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3268, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1993, metadata !DIExpression()) #18, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %1, metadata !1994, metadata !DIExpression()) #18, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %2, metadata !1995, metadata !DIExpression()) #18, !dbg !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1993, metadata !DIExpression()) #18, !dbg !3269
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3271
  store i32 10, i32* %8, align 8, !dbg !3272, !tbaa !1935
  %9 = icmp ne i8* %1, null, !dbg !3273
  %10 = icmp ne i8* %2, null, !dbg !3274
  %11 = and i1 %9, %10, !dbg !3275
  br i1 %11, label %13, label %12, !dbg !3275

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3276
  unreachable, !dbg !3276

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3277
  store i8* %1, i8** %14, align 8, !dbg !3278, !tbaa !2009
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3279
  store i8* %2, i8** %15, align 8, !dbg !3280, !tbaa !2012
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3282
  ret i8* %16, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3284 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3234, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 0, metadata !3230, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3231, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %1, metadata !3232, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %2, metadata !3233, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i32 0, metadata !3239, metadata !DIExpression()) #18, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %0, metadata !3240, metadata !DIExpression()) #18, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !3241, metadata !DIExpression()) #18, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !3242, metadata !DIExpression()) #18, !dbg !3296
  call void @llvm.dbg.value(metadata i64 -1, metadata !3243, metadata !DIExpression()) #18, !dbg !3296
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3297
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3298, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1993, metadata !DIExpression()) #18, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !1994, metadata !DIExpression()) #18, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #18, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1993, metadata !DIExpression()) #18, !dbg !3299
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3301
  store i32 10, i32* %6, align 8, !dbg !3302, !tbaa !1935
  %7 = icmp ne i8* %0, null, !dbg !3303
  %8 = icmp ne i8* %1, null, !dbg !3304
  %9 = and i1 %7, %8, !dbg !3305
  br i1 %9, label %11, label %10, !dbg !3305

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3306
  unreachable, !dbg !3306

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3307
  store i8* %0, i8** %12, align 8, !dbg !3308, !tbaa !2009
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3309
  store i8* %1, i8** %13, align 8, !dbg !3310, !tbaa !2012
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3312
  ret i8* %14, !dbg !3313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3314 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3234, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %1, metadata !3319, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %3, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 0, metadata !3239, metadata !DIExpression()) #18, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %0, metadata !3240, metadata !DIExpression()) #18, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %1, metadata !3241, metadata !DIExpression()) #18, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %2, metadata !3242, metadata !DIExpression()) #18, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %3, metadata !3243, metadata !DIExpression()) #18, !dbg !3325
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3327, !tbaa.struct !3121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1993, metadata !DIExpression()) #18, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %0, metadata !1994, metadata !DIExpression()) #18, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #18, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1993, metadata !DIExpression()) #18, !dbg !3328
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3330
  store i32 10, i32* %7, align 8, !dbg !3331, !tbaa !1935
  %8 = icmp ne i8* %0, null, !dbg !3332
  %9 = icmp ne i8* %1, null, !dbg !3333
  %10 = and i1 %8, %9, !dbg !3334
  br i1 %10, label %12, label %11, !dbg !3334

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3335
  unreachable, !dbg !3335

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3336
  store i8* %0, i8** %13, align 8, !dbg !3337, !tbaa !2009
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3338
  store i8* %1, i8** %14, align 8, !dbg !3339, !tbaa !2012
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3341
  ret i8* %15, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3350
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3351
  ret i8* %4, !dbg !3352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()) #18, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()) #18, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()) #18, !dbg !3360
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3362
  ret i8* %3, !dbg !3363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8* %1, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i64 -1, metadata !3349, metadata !DIExpression()) #18, !dbg !3371
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3373
  ret i8* %3, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()) #18, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %0, metadata !3369, metadata !DIExpression()) #18, !dbg !3379
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()) #18, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()) #18, !dbg !3381
  call void @llvm.dbg.value(metadata i64 -1, metadata !3349, metadata !DIExpression()) #18, !dbg !3381
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3383
  ret i8* %2, !dbg !3384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3385 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3393, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %1, metadata !3394, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %3, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8** %4, metadata !3397, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %5, metadata !3398, metadata !DIExpression()), !dbg !3399
  %7 = icmp eq i8* %1, null, !dbg !3400
  br i1 %7, label %10, label %8, !dbg !3402

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3403
  br label %12, !dbg !3403

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3404
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #18, !dbg !3405
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3405
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3406
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #18, !dbg !3407
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.99, i64 0, i64 0)) #18, !dbg !3407
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3408
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
  ], !dbg !3409

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #18, !dbg !3410
  %21 = load i8*, i8** %4, align 8, !dbg !3410, !tbaa !1198
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3410
  br label %147, !dbg !3412

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #18, !dbg !3413
  %25 = load i8*, i8** %4, align 8, !dbg !3413, !tbaa !1198
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3413
  %27 = load i8*, i8** %26, align 8, !dbg !3413, !tbaa !1198
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3413
  br label %147, !dbg !3414

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #18, !dbg !3415
  %31 = load i8*, i8** %4, align 8, !dbg !3415, !tbaa !1198
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3415
  %33 = load i8*, i8** %32, align 8, !dbg !3415, !tbaa !1198
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3415
  %35 = load i8*, i8** %34, align 8, !dbg !3415, !tbaa !1198
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3415
  br label %147, !dbg !3416

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #18, !dbg !3417
  %39 = load i8*, i8** %4, align 8, !dbg !3417, !tbaa !1198
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3417
  %41 = load i8*, i8** %40, align 8, !dbg !3417, !tbaa !1198
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3417
  %43 = load i8*, i8** %42, align 8, !dbg !3417, !tbaa !1198
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3417
  %45 = load i8*, i8** %44, align 8, !dbg !3417, !tbaa !1198
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3417
  br label %147, !dbg !3418

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #18, !dbg !3419
  %49 = load i8*, i8** %4, align 8, !dbg !3419, !tbaa !1198
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3419
  %51 = load i8*, i8** %50, align 8, !dbg !3419, !tbaa !1198
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3419
  %53 = load i8*, i8** %52, align 8, !dbg !3419, !tbaa !1198
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3419
  %55 = load i8*, i8** %54, align 8, !dbg !3419, !tbaa !1198
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3419
  %57 = load i8*, i8** %56, align 8, !dbg !3419, !tbaa !1198
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3419
  br label %147, !dbg !3420

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #18, !dbg !3421
  %61 = load i8*, i8** %4, align 8, !dbg !3421, !tbaa !1198
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3421
  %63 = load i8*, i8** %62, align 8, !dbg !3421, !tbaa !1198
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3421
  %65 = load i8*, i8** %64, align 8, !dbg !3421, !tbaa !1198
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3421
  %67 = load i8*, i8** %66, align 8, !dbg !3421, !tbaa !1198
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3421
  %69 = load i8*, i8** %68, align 8, !dbg !3421, !tbaa !1198
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3421
  %71 = load i8*, i8** %70, align 8, !dbg !3421, !tbaa !1198
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3421
  br label %147, !dbg !3422

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #18, !dbg !3423
  %75 = load i8*, i8** %4, align 8, !dbg !3423, !tbaa !1198
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3423
  %77 = load i8*, i8** %76, align 8, !dbg !3423, !tbaa !1198
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3423
  %79 = load i8*, i8** %78, align 8, !dbg !3423, !tbaa !1198
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3423
  %81 = load i8*, i8** %80, align 8, !dbg !3423, !tbaa !1198
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3423
  %83 = load i8*, i8** %82, align 8, !dbg !3423, !tbaa !1198
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3423
  %85 = load i8*, i8** %84, align 8, !dbg !3423, !tbaa !1198
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3423
  %87 = load i8*, i8** %86, align 8, !dbg !3423, !tbaa !1198
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3423
  br label %147, !dbg !3424

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #18, !dbg !3425
  %91 = load i8*, i8** %4, align 8, !dbg !3425, !tbaa !1198
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3425
  %93 = load i8*, i8** %92, align 8, !dbg !3425, !tbaa !1198
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3425
  %95 = load i8*, i8** %94, align 8, !dbg !3425, !tbaa !1198
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3425
  %97 = load i8*, i8** %96, align 8, !dbg !3425, !tbaa !1198
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3425
  %99 = load i8*, i8** %98, align 8, !dbg !3425, !tbaa !1198
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3425
  %101 = load i8*, i8** %100, align 8, !dbg !3425, !tbaa !1198
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3425
  %103 = load i8*, i8** %102, align 8, !dbg !3425, !tbaa !1198
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3425
  %105 = load i8*, i8** %104, align 8, !dbg !3425, !tbaa !1198
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3425
  br label %147, !dbg !3426

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #18, !dbg !3427
  %109 = load i8*, i8** %4, align 8, !dbg !3427, !tbaa !1198
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3427
  %111 = load i8*, i8** %110, align 8, !dbg !3427, !tbaa !1198
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3427
  %113 = load i8*, i8** %112, align 8, !dbg !3427, !tbaa !1198
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3427
  %115 = load i8*, i8** %114, align 8, !dbg !3427, !tbaa !1198
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3427
  %117 = load i8*, i8** %116, align 8, !dbg !3427, !tbaa !1198
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3427
  %119 = load i8*, i8** %118, align 8, !dbg !3427, !tbaa !1198
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3427
  %121 = load i8*, i8** %120, align 8, !dbg !3427, !tbaa !1198
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3427
  %123 = load i8*, i8** %122, align 8, !dbg !3427, !tbaa !1198
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3427
  %125 = load i8*, i8** %124, align 8, !dbg !3427, !tbaa !1198
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3427
  br label %147, !dbg !3428

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.109, i64 0, i64 0), i32 5) #18, !dbg !3429
  %129 = load i8*, i8** %4, align 8, !dbg !3429, !tbaa !1198
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3429
  %131 = load i8*, i8** %130, align 8, !dbg !3429, !tbaa !1198
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3429
  %133 = load i8*, i8** %132, align 8, !dbg !3429, !tbaa !1198
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3429
  %135 = load i8*, i8** %134, align 8, !dbg !3429, !tbaa !1198
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3429
  %137 = load i8*, i8** %136, align 8, !dbg !3429, !tbaa !1198
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3429
  %139 = load i8*, i8** %138, align 8, !dbg !3429, !tbaa !1198
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3429
  %141 = load i8*, i8** %140, align 8, !dbg !3429, !tbaa !1198
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3429
  %143 = load i8*, i8** %142, align 8, !dbg !3429, !tbaa !1198
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3429
  %145 = load i8*, i8** %144, align 8, !dbg !3429, !tbaa !1198
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3429
  br label %147, !dbg !3430

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3432 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3437, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %3, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8** %4, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 0, metadata !3441, metadata !DIExpression()), !dbg !3442
  br label %6, !dbg !3443

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3445
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3446
  %9 = load i8*, i8** %8, align 8, !dbg !3446, !tbaa !1198
  %10 = icmp eq i8* %9, null, !dbg !3448
  %11 = add i64 %7, 1, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %11, metadata !3441, metadata !DIExpression()), !dbg !3442
  br i1 %10, label %12, label %6, !dbg !3448, !llvm.loop !3450

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3452
  ret void, !dbg !3453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3454 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3465, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %3, metadata !3468, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3469, metadata !DIExpression()), !dbg !3473
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3474
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3474
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3471, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 0, metadata !3470, metadata !DIExpression()), !dbg !3473
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3476
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3476
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3476
  %11 = load i32, i32* %8, align 8, !dbg !3479
  %12 = icmp ult i32 %11, 41, !dbg !3479
  br i1 %12, label %13, label %18, !dbg !3479

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3479
  %15 = zext i32 %11 to i64, !dbg !3479
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3479
  %17 = add nuw nsw i32 %11, 8, !dbg !3479
  store i32 %17, i32* %8, align 8, !dbg !3479
  br label %21, !dbg !3479

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3479
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3479
  store i8* %20, i8** %9, align 8, !dbg !3479
  br label %21, !dbg !3479

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3479
  %25 = load i8*, i8** %24, align 8, !dbg !3479
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3480
  store i8* %25, i8** %26, align 16, !dbg !3481, !tbaa !1198
  %27 = icmp eq i8* %25, null, !dbg !3482
  br i1 %27, label %30, label %28, !dbg !3483

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3470, metadata !DIExpression()), !dbg !3473
  %29 = icmp ult i32 %22, 41, !dbg !3479
  br i1 %29, label %35, label %32, !dbg !3479

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3484
  call void @llvm.dbg.value(metadata i64 %31, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %31, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3486
  ret void, !dbg !3486

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3479
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3479
  store i8* %34, i8** %9, align 8, !dbg !3479
  br label %40, !dbg !3479

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3479
  %37 = zext i32 %22 to i64, !dbg !3479
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3479
  %39 = add nuw nsw i32 %22, 8, !dbg !3479
  store i32 %39, i32* %8, align 8, !dbg !3479
  br label %40, !dbg !3479

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3479
  %44 = load i8*, i8** %43, align 8, !dbg !3479
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3480
  store i8* %44, i8** %45, align 8, !dbg !3481, !tbaa !1198
  %46 = icmp eq i8* %44, null, !dbg !3482
  br i1 %46, label %30, label %47, !dbg !3483

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3470, metadata !DIExpression()), !dbg !3473
  %48 = icmp ult i32 %41, 41, !dbg !3479
  br i1 %48, label %52, label %49, !dbg !3479

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3479
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3479
  store i8* %51, i8** %9, align 8, !dbg !3479
  br label %57, !dbg !3479

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3479
  %54 = zext i32 %41 to i64, !dbg !3479
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3479
  %56 = add nuw nsw i32 %41, 8, !dbg !3479
  store i32 %56, i32* %8, align 8, !dbg !3479
  br label %57, !dbg !3479

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3479
  %61 = load i8*, i8** %60, align 8, !dbg !3479
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3480
  store i8* %61, i8** %62, align 16, !dbg !3481, !tbaa !1198
  %63 = icmp eq i8* %61, null, !dbg !3482
  br i1 %63, label %30, label %64, !dbg !3483

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3470, metadata !DIExpression()), !dbg !3473
  %65 = icmp ult i32 %58, 41, !dbg !3479
  br i1 %65, label %69, label %66, !dbg !3479

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3479
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3479
  store i8* %68, i8** %9, align 8, !dbg !3479
  br label %74, !dbg !3479

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3479
  %71 = zext i32 %58 to i64, !dbg !3479
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3479
  %73 = add nuw nsw i32 %58, 8, !dbg !3479
  store i32 %73, i32* %8, align 8, !dbg !3479
  br label %74, !dbg !3479

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3479
  %78 = load i8*, i8** %77, align 8, !dbg !3479
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3480
  store i8* %78, i8** %79, align 8, !dbg !3481, !tbaa !1198
  %80 = icmp eq i8* %78, null, !dbg !3482
  br i1 %80, label %30, label %81, !dbg !3483

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3470, metadata !DIExpression()), !dbg !3473
  %82 = icmp ult i32 %75, 41, !dbg !3479
  br i1 %82, label %86, label %83, !dbg !3479

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3479
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3479
  store i8* %85, i8** %9, align 8, !dbg !3479
  br label %91, !dbg !3479

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3479
  %88 = zext i32 %75 to i64, !dbg !3479
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3479
  %90 = add nuw nsw i32 %75, 8, !dbg !3479
  store i32 %90, i32* %8, align 8, !dbg !3479
  br label %91, !dbg !3479

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3479
  %95 = load i8*, i8** %94, align 8, !dbg !3479
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3480
  store i8* %95, i8** %96, align 16, !dbg !3481, !tbaa !1198
  %97 = icmp eq i8* %95, null, !dbg !3482
  br i1 %97, label %30, label %98, !dbg !3483

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3470, metadata !DIExpression()), !dbg !3473
  %99 = icmp ult i32 %92, 41, !dbg !3479
  br i1 %99, label %103, label %100, !dbg !3479

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3479
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3479
  store i8* %102, i8** %9, align 8, !dbg !3479
  br label %108, !dbg !3479

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3479
  %105 = zext i32 %92 to i64, !dbg !3479
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3479
  %107 = add nuw nsw i32 %92, 8, !dbg !3479
  store i32 %107, i32* %8, align 8, !dbg !3479
  br label %108, !dbg !3479

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3479
  %111 = load i8*, i8** %110, align 8, !dbg !3479
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3480
  store i8* %111, i8** %112, align 8, !dbg !3481, !tbaa !1198
  %113 = icmp eq i8* %111, null, !dbg !3482
  br i1 %113, label %30, label %114, !dbg !3483

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3470, metadata !DIExpression()), !dbg !3473
  %115 = load i8*, i8** %9, align 8, !dbg !3479
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3479
  store i8* %116, i8** %9, align 8, !dbg !3479
  %117 = bitcast i8* %115 to i8**, !dbg !3479
  %118 = load i8*, i8** %117, align 8, !dbg !3479
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3480
  store i8* %118, i8** %119, align 16, !dbg !3481, !tbaa !1198
  %120 = icmp eq i8* %118, null, !dbg !3482
  br i1 %120, label %30, label %121, !dbg !3483

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3470, metadata !DIExpression()), !dbg !3473
  %122 = load i8*, i8** %9, align 8, !dbg !3479
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3479
  store i8* %123, i8** %9, align 8, !dbg !3479
  %124 = bitcast i8* %122 to i8**, !dbg !3479
  %125 = load i8*, i8** %124, align 8, !dbg !3479
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3480
  store i8* %125, i8** %126, align 8, !dbg !3481, !tbaa !1198
  %127 = icmp eq i8* %125, null, !dbg !3482
  br i1 %127, label %30, label %128, !dbg !3483

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3470, metadata !DIExpression()), !dbg !3473
  %129 = load i8*, i8** %9, align 8, !dbg !3479
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3479
  store i8* %130, i8** %9, align 8, !dbg !3479
  %131 = bitcast i8* %129 to i8**, !dbg !3479
  %132 = load i8*, i8** %131, align 8, !dbg !3479
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3480
  store i8* %132, i8** %133, align 16, !dbg !3481, !tbaa !1198
  %134 = icmp eq i8* %132, null, !dbg !3482
  br i1 %134, label %30, label %135, !dbg !3483

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3470, metadata !DIExpression()), !dbg !3473
  %136 = load i8*, i8** %9, align 8, !dbg !3479
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3479
  store i8* %137, i8** %9, align 8, !dbg !3479
  %138 = bitcast i8* %136 to i8**, !dbg !3479
  %139 = load i8*, i8** %138, align 8, !dbg !3479
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3480
  store i8* %139, i8** %140, align 8, !dbg !3481, !tbaa !1198
  %141 = icmp eq i8* %139, null, !dbg !3482
  %142 = select i1 %141, i64 9, i64 10, !dbg !3483
  br label %30, !dbg !3483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3487 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3491, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3492, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %3, metadata !3494, metadata !DIExpression()), !dbg !3501
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3502
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3502
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3495, metadata !DIExpression()), !dbg !3503
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3504
  call void @llvm.va_start(i8* nonnull %6), !dbg !3504
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3505
  call void @llvm.va_end(i8* nonnull %6), !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3507
  ret void, !dbg !3507
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3508 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3509, !tbaa !1198
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3509
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #18, !dbg !3510
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.113, i64 0, i64 0)) #18, !dbg !3510
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.114, i64 0, i64 0), i32 5) #18, !dbg !3511
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.115, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.116, i64 0, i64 0)) #18, !dbg !3511
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.117, i64 0, i64 0), i32 5) #18, !dbg !3512
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.118, i64 0, i64 0)) #18, !dbg !3512
  ret void, !dbg !3513
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3514 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3518
  %3 = udiv i64 9223372036854775807, %1, !dbg !3519
  %4 = icmp ult i64 %3, %0, !dbg !3519
  br i1 %4, label %5, label %6, !dbg !3521

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3522
  unreachable, !dbg !3522

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %7, metadata !3524, metadata !DIExpression()) #18, !dbg !3530
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3532
  call void @llvm.dbg.value(metadata i8* %8, metadata !3529, metadata !DIExpression()) #18, !dbg !3530
  %9 = icmp eq i8* %8, null, !dbg !3533
  %10 = icmp ne i64 %7, 0, !dbg !3535
  %11 = and i1 %10, %9, !dbg !3536
  br i1 %11, label %12, label %13, !dbg !3536

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3537
  unreachable, !dbg !3537

13:                                               ; preds = %6
  ret i8* %8, !dbg !3538
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3525 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3524, metadata !DIExpression()), !dbg !3539
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()), !dbg !3539
  %3 = icmp eq i8* %2, null, !dbg !3541
  %4 = icmp ne i64 %0, 0, !dbg !3542
  %5 = and i1 %4, %3, !dbg !3543
  br i1 %5, label %6, label %7, !dbg !3543

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3544
  unreachable, !dbg !3544

7:                                                ; preds = %1
  ret i8* %2, !dbg !3545
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3550, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %1, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %2, metadata !3552, metadata !DIExpression()), !dbg !3553
  %4 = udiv i64 9223372036854775807, %2, !dbg !3554
  %5 = icmp ult i64 %4, %1, !dbg !3554
  br i1 %5, label %6, label %7, !dbg !3556

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3557
  unreachable, !dbg !3557

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #18, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %8, metadata !3564, metadata !DIExpression()) #18, !dbg !3565
  %9 = icmp eq i64 %8, 0, !dbg !3567
  %10 = icmp ne i8* %0, null, !dbg !3569
  %11 = and i1 %10, %9, !dbg !3570
  br i1 %11, label %12, label %13, !dbg !3570

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3571
  br label %19, !dbg !3573

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %14, metadata !3559, metadata !DIExpression()) #18, !dbg !3565
  %15 = icmp eq i8* %14, null, !dbg !3575
  %16 = icmp ne i64 %8, 0, !dbg !3577
  %17 = and i1 %16, %15, !dbg !3578
  br i1 %17, label %18, label %19, !dbg !3578

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3579
  unreachable, !dbg !3579

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3565
  ret i8* %20, !dbg !3580
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()), !dbg !3581
  %3 = icmp eq i64 %1, 0, !dbg !3582
  %4 = icmp ne i8* %0, null, !dbg !3583
  %5 = and i1 %4, %3, !dbg !3584
  br i1 %5, label %6, label %7, !dbg !3584

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3585
  br label %13, !dbg !3586

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %8, metadata !3559, metadata !DIExpression()), !dbg !3581
  %9 = icmp eq i8* %8, null, !dbg !3588
  %10 = icmp ne i64 %1, 0, !dbg !3589
  %11 = and i1 %10, %9, !dbg !3590
  br i1 %11, label %12, label %13, !dbg !3590

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3591
  unreachable, !dbg !3591

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3581
  ret i8* %14, !dbg !3592
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !548 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !553, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64* %1, metadata !554, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %2, metadata !555, metadata !DIExpression()), !dbg !3593
  %4 = load i64, i64* %1, align 8, !dbg !3594, !tbaa !1398
  call void @llvm.dbg.value(metadata i64 %4, metadata !556, metadata !DIExpression()), !dbg !3593
  %5 = icmp eq i8* %0, null, !dbg !3595
  br i1 %5, label %6, label %20, !dbg !3597

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3598
  br i1 %7, label %8, label %13, !dbg !3601

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %9, metadata !556, metadata !DIExpression()), !dbg !3593
  %10 = icmp ugt i64 %2, 128, !dbg !3604
  %11 = zext i1 %10 to i64, !dbg !3604
  %12 = add nuw nsw i64 %9, %11, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %12, metadata !556, metadata !DIExpression()), !dbg !3593
  br label %13, !dbg !3606

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3593
  call void @llvm.dbg.value(metadata i64 %14, metadata !556, metadata !DIExpression()), !dbg !3593
  %15 = udiv i64 9223372036854775807, %2, !dbg !3607
  %16 = icmp ult i64 %15, %14, !dbg !3607
  br i1 %16, label %19, label %17, !dbg !3609

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !556, metadata !DIExpression()), !dbg !3593
  store i64 %14, i64* %1, align 8, !dbg !3610, !tbaa !1398
  %18 = mul i64 %14, %2, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #18, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %28, metadata !3564, metadata !DIExpression()) #18, !dbg !3612
  br label %31, !dbg !3614

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3615
  unreachable, !dbg !3615

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3616
  %22 = icmp ugt i64 %21, %4, !dbg !3619
  br i1 %22, label %24, label %23, !dbg !3620

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3621
  unreachable, !dbg !3621

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3622
  %26 = add nuw i64 %4, 1, !dbg !3623
  %27 = add i64 %26, %25, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %27, metadata !556, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %27, metadata !556, metadata !DIExpression()), !dbg !3593
  store i64 %27, i64* %1, align 8, !dbg !3610, !tbaa !1398
  %28 = mul i64 %27, %2, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #18, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %28, metadata !3564, metadata !DIExpression()) #18, !dbg !3612
  %29 = icmp eq i64 %28, 0, !dbg !3625
  br i1 %29, label %30, label %31, !dbg !3614

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3626
  br label %38, !dbg !3627

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %33, metadata !3559, metadata !DIExpression()) #18, !dbg !3612
  %34 = icmp eq i8* %33, null, !dbg !3629
  %35 = icmp ne i64 %32, 0, !dbg !3630
  %36 = and i1 %35, %34, !dbg !3631
  br i1 %36, label %37, label %38, !dbg !3631

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3632
  unreachable, !dbg !3632

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3612
  ret i8* %39, !dbg !3633
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3634 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3638
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()) #18, !dbg !3638
  %3 = icmp eq i8* %2, null, !dbg !3641
  %4 = icmp ne i64 %0, 0, !dbg !3642
  %5 = and i1 %4, %3, !dbg !3643
  br i1 %5, label %6, label %7, !dbg !3643

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3644
  unreachable, !dbg !3644

7:                                                ; preds = %1
  ret i8* %2, !dbg !3645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3650, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64* %1, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8* %0, metadata !553, metadata !DIExpression()) #18, !dbg !3653
  call void @llvm.dbg.value(metadata i64* %1, metadata !554, metadata !DIExpression()) #18, !dbg !3653
  call void @llvm.dbg.value(metadata i64 1, metadata !555, metadata !DIExpression()) #18, !dbg !3653
  %3 = load i64, i64* %1, align 8, !dbg !3655, !tbaa !1398
  call void @llvm.dbg.value(metadata i64 %3, metadata !556, metadata !DIExpression()) #18, !dbg !3653
  %4 = icmp eq i8* %0, null, !dbg !3656
  br i1 %4, label %5, label %12, !dbg !3657

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3658
  br i1 %6, label %9, label %7, !dbg !3659

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !556, metadata !DIExpression()) #18, !dbg !3653
  %8 = icmp slt i64 %3, 0, !dbg !3660
  br i1 %8, label %11, label %9, !dbg !3661

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !556, metadata !DIExpression()) #18, !dbg !3653
  store i64 %10, i64* %1, align 8, !dbg !3662, !tbaa !1398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #18, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %18, metadata !3564, metadata !DIExpression()) #18, !dbg !3663
  br label %21, !dbg !3665

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3666
  unreachable, !dbg !3666

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3667
  br i1 %13, label %15, label %14, !dbg !3668

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3669
  unreachable, !dbg !3669

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3670
  %17 = add nuw nsw i64 %3, 1, !dbg !3671
  %18 = add nuw nsw i64 %17, %16, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %18, metadata !556, metadata !DIExpression()) #18, !dbg !3653
  call void @llvm.dbg.value(metadata i64 %18, metadata !556, metadata !DIExpression()) #18, !dbg !3653
  store i64 %18, i64* %1, align 8, !dbg !3662, !tbaa !1398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()) #18, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %18, metadata !3564, metadata !DIExpression()) #18, !dbg !3663
  %19 = icmp eq i64 %18, 0, !dbg !3673
  br i1 %19, label %20, label %21, !dbg !3665

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3674
  br label %28, !dbg !3675

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %23, metadata !3559, metadata !DIExpression()) #18, !dbg !3663
  %24 = icmp eq i8* %23, null, !dbg !3677
  %25 = icmp ne i64 %22, 0, !dbg !3678
  %26 = and i1 %25, %24, !dbg !3679
  br i1 %26, label %27, label %28, !dbg !3679

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3680
  unreachable, !dbg !3680

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3663
  ret i8* %29, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()) #18, !dbg !3691
  call void @llvm.dbg.value(metadata i64 1, metadata !3689, metadata !DIExpression()) #18, !dbg !3691
  %2 = icmp slt i64 %0, 0, !dbg !3693
  br i1 %2, label %6, label %3, !dbg !3695

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #18, !dbg !3691
  %5 = icmp eq i8* %4, null, !dbg !3697
  br i1 %5, label %6, label %7, !dbg !3698

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3699
  unreachable, !dbg !3699

7:                                                ; preds = %3
  ret i8* %4, !dbg !3700
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3687 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3686, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %1, metadata !3689, metadata !DIExpression()), !dbg !3701
  %3 = udiv i64 9223372036854775807, %1, !dbg !3702
  %4 = icmp ult i64 %3, %0, !dbg !3702
  br i1 %4, label %8, label %5, !dbg !3703

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %6, metadata !3690, metadata !DIExpression()), !dbg !3701
  %7 = icmp eq i8* %6, null, !dbg !3705
  br i1 %7, label %8, label %9, !dbg !3706

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3707
  unreachable, !dbg !3707

9:                                                ; preds = %5
  ret i8* %6, !dbg !3708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3709 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()) #18, !dbg !3716
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %3, metadata !3529, metadata !DIExpression()) #18, !dbg !3716
  %4 = icmp eq i8* %3, null, !dbg !3719
  %5 = icmp ne i64 %1, 0, !dbg !3720
  %6 = and i1 %5, %4, !dbg !3721
  br i1 %6, label %7, label %8, !dbg !3721

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3722
  unreachable, !dbg !3722

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3723, metadata !DIExpression()) #18, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %0, metadata !3730, metadata !DIExpression()) #18, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %1, metadata !3731, metadata !DIExpression()) #18, !dbg !3732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3734
  ret i8* %3, !dbg !3735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()), !dbg !3739
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3740
  %3 = add i64 %2, 1, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %3, metadata !3714, metadata !DIExpression()) #18, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %3, metadata !3524, metadata !DIExpression()) #18, !dbg !3744
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %4, metadata !3529, metadata !DIExpression()) #18, !dbg !3744
  %5 = icmp eq i8* %4, null, !dbg !3747
  %6 = icmp ne i64 %3, 0, !dbg !3748
  %7 = and i1 %6, %5, !dbg !3749
  br i1 %7, label %8, label %9, !dbg !3749

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3750
  unreachable, !dbg !3750

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3723, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %0, metadata !3730, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i64 %3, metadata !3731, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3753
  ret i8* %4, !dbg !3754
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3755 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3756, !tbaa !1322
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.129, i64 0, i64 0), i32 5) #18, !dbg !3757
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), i8* %2) #18, !dbg !3758
  tail call void @abort() #23, !dbg !3759
  unreachable, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3760 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3767, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8** %1, metadata !3768, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 %2, metadata !3769, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64* %3, metadata !3770, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %4, metadata !3771, metadata !DIExpression()), !dbg !3785
  %7 = bitcast i8** %6 to i8*, !dbg !3786
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3775, metadata !DIExpression()), !dbg !3785
  %8 = icmp ult i32 %2, 37, !dbg !3787
  br i1 %8, label %10, label %9, !dbg !3787

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.134, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #23, !dbg !3787
  unreachable, !dbg !3787

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3790
  call void @llvm.dbg.value(metadata i8** %25, metadata !3773, metadata !DIExpression()), !dbg !3785
  %12 = tail call i32* @__errno_location() #25, !dbg !3791
  store i32 0, i32* %12, align 4, !dbg !3792, !tbaa !1322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3776, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 undef, metadata !3779, metadata !DIExpression()), !dbg !3793
  %13 = tail call i16** @__ctype_b_loc() #25, !dbg !3793
  %14 = load i16*, i16** %13, align 8, !dbg !3793, !tbaa !1198
  br label %15, !dbg !3794

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3793
  %17 = load i8, i8* %16, align 1, !dbg !3793, !tbaa !1330
  call void @llvm.dbg.value(metadata i8 %17, metadata !3779, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %16, metadata !3776, metadata !DIExpression()), !dbg !3793
  %18 = zext i8 %17 to i64, !dbg !3795
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3795
  %20 = load i16, i16* %19, align 2, !dbg !3795, !tbaa !2329
  %21 = and i16 %20, 8192, !dbg !3795
  %22 = icmp eq i16 %21, 0, !dbg !3794
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %23, metadata !3776, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 undef, metadata !3779, metadata !DIExpression()), !dbg !3793
  br i1 %22, label %24, label %15, !dbg !3794, !llvm.loop !3797

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3790
  %26 = icmp eq i8 %17, 45, !dbg !3799
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3801, metadata !DIExpression()) #18, !dbg !3811
  call void @llvm.dbg.value(metadata i8** %25, metadata !3809, metadata !DIExpression()) #18, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %2, metadata !3810, metadata !DIExpression()) #18, !dbg !3811
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #18, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %28, metadata !3774, metadata !DIExpression()), !dbg !3785
  %29 = load i8*, i8** %25, align 8, !dbg !3814, !tbaa !1198
  %30 = icmp eq i8* %29, %0, !dbg !3816
  br i1 %30, label %31, label %40, !dbg !3817

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3818
  br i1 %32, label %285, label %33, !dbg !3821

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3822, !tbaa !1330
  %35 = icmp eq i8 %34, 0, !dbg !3822
  br i1 %35, label %285, label %36, !dbg !3823

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3822
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !3824
  %39 = icmp eq i8* %38, null, !dbg !3824
  br i1 %39, label %285, label %47, !dbg !3825

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3826, !tbaa !1322
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3828

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3775, metadata !DIExpression()), !dbg !3785
  br label %43, !dbg !3829

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3785
  call void @llvm.dbg.value(metadata i32 %44, metadata !3775, metadata !DIExpression()), !dbg !3785
  %45 = icmp eq i8* %4, null, !dbg !3831
  br i1 %45, label %46, label %47, !dbg !3833

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3774, metadata !DIExpression()), !dbg !3785
  store i64 %28, i64* %3, align 8, !dbg !3834, !tbaa !1398
  br label %285, !dbg !3836

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3837, !tbaa !1330
  %51 = sext i8 %50 to i32, !dbg !3837
  %52 = icmp eq i8 %50, 0, !dbg !3838
  br i1 %52, label %282, label %53, !dbg !3839

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3780, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 1, metadata !3783, metadata !DIExpression()), !dbg !3840
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #22, !dbg !3841
  %55 = icmp eq i8* %54, null, !dbg !3841
  br i1 %55, label %56, label %58, !dbg !3843

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3774, metadata !DIExpression()), !dbg !3785
  store i64 %49, i64* %3, align 8, !dbg !3844, !tbaa !1398
  %57 = or i32 %48, 2, !dbg !3846
  br label %285, !dbg !3847

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
  ], !dbg !3848

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !3849
  %61 = icmp eq i8* %60, null, !dbg !3849
  br i1 %61, label %72, label %62, !dbg !3852

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3853
  %64 = load i8, i8* %63, align 1, !dbg !3853, !tbaa !1330
  %65 = sext i8 %64 to i32, !dbg !3853
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3854

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3855
  %68 = load i8, i8* %67, align 1, !dbg !3855, !tbaa !1330
  %69 = icmp eq i8 %68, 66, !dbg !3858
  %70 = select i1 %69, i64 3, i64 1, !dbg !3859
  br label %72, !dbg !3859

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3780, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 2, metadata !3783, metadata !DIExpression()), !dbg !3840
  br label %72, !dbg !3860

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3783, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 undef, metadata !3780, metadata !DIExpression()), !dbg !3840
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3861

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 6, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3879
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3881
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3881
  %78 = mul i64 %49, %73, !dbg !3883
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3883
  call void @llvm.dbg.value(metadata i1 %77, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 5, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !3881
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3881
  %82 = mul i64 %79, %73, !dbg !3883
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3883
  %84 = or i1 %77, %81, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %84, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 4, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !3881
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3881
  %87 = mul i64 %83, %73, !dbg !3883
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3883
  %89 = or i1 %84, %86, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %89, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 3, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !3881
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3881
  %92 = mul i64 %88, %73, !dbg !3883
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3883
  %94 = or i1 %89, %91, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %94, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !3881
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3881
  %97 = mul i64 %93, %73, !dbg !3883
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3883
  %99 = or i1 %94, %96, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %99, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !3881
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3881
  %102 = mul i64 %98, %73, !dbg !3883
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3883
  %104 = or i1 %99, %101, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %104, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3870
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !3881
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3881
  %107 = mul i64 %103, %73, !dbg !3883
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3883
  %109 = or i1 %104, %106, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %109, metadata !3862, metadata !DIExpression()) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3870
  br label %272, !dbg !3885

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 7, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3888
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3890
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3890
  %113 = mul i64 %49, %73, !dbg !3891
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %112, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 6, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !3890
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3890
  %117 = mul i64 %114, %73, !dbg !3891
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3891
  %119 = or i1 %112, %116, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %119, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 5, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !3890
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3890
  %122 = mul i64 %118, %73, !dbg !3891
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3891
  %124 = or i1 %119, %121, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %124, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !3890
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3890
  %127 = mul i64 %123, %73, !dbg !3891
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3891
  %129 = or i1 %124, %126, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %129, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !3890
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3890
  %132 = mul i64 %128, %73, !dbg !3891
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3891
  %134 = or i1 %129, %131, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %134, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !3890
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3890
  %137 = mul i64 %133, %73, !dbg !3891
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3891
  %139 = or i1 %134, %136, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %139, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !3890
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3890
  %142 = mul i64 %138, %73, !dbg !3891
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3891
  %144 = or i1 %139, %141, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %144, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3886
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !3890
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3890
  %147 = mul i64 %143, %73, !dbg !3891
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3891
  %149 = or i1 %144, %146, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %149, metadata !3862, metadata !DIExpression()) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3886
  br label %272, !dbg !3885

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 4, metadata !3869, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3895
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3897
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3897
  %153 = mul i64 %49, %73, !dbg !3898
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3898
  call void @llvm.dbg.value(metadata i1 %152, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 3, metadata !3869, metadata !DIExpression()) #18, !dbg !3893
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !3897
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3897
  %157 = mul i64 %154, %73, !dbg !3898
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3898
  %159 = or i1 %152, %156, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %159, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3893
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !3897
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3897
  %162 = mul i64 %158, %73, !dbg !3898
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3898
  %164 = or i1 %159, %161, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %164, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3893
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !3897
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3897
  %167 = mul i64 %163, %73, !dbg !3898
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3898
  %169 = or i1 %164, %166, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %169, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3893
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !3897
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3897
  %172 = mul i64 %168, %73, !dbg !3898
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3898
  %174 = or i1 %169, %171, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %174, metadata !3862, metadata !DIExpression()) #18, !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3893
  br label %272, !dbg !3885

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 5, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3902
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3904
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3904
  %178 = mul i64 %49, %73, !dbg !3905
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %177, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 4, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !3904
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3904
  %182 = mul i64 %179, %73, !dbg !3905
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3905
  %184 = or i1 %177, %181, !dbg !3906
  call void @llvm.dbg.value(metadata i1 %184, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 3, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !3904
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3904
  %187 = mul i64 %183, %73, !dbg !3905
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3905
  %189 = or i1 %184, %186, !dbg !3906
  call void @llvm.dbg.value(metadata i1 %189, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !3904
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3904
  %192 = mul i64 %188, %73, !dbg !3905
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3905
  %194 = or i1 %189, %191, !dbg !3906
  call void @llvm.dbg.value(metadata i1 %194, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !3904
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3904
  %197 = mul i64 %193, %73, !dbg !3905
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3905
  %199 = or i1 %194, %196, !dbg !3906
  call void @llvm.dbg.value(metadata i1 %199, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3900
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !3904
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3904
  %202 = mul i64 %198, %73, !dbg !3905
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3905
  %204 = or i1 %199, %201, !dbg !3906
  call void @llvm.dbg.value(metadata i1 %204, metadata !3862, metadata !DIExpression()) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3900
  br label %272, !dbg !3885

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3873, metadata !DIExpression()) #18, !dbg !3907
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !3909
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3909
  %208 = shl i64 %49, 9, !dbg !3910
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %207, metadata !3784, metadata !DIExpression()), !dbg !3840
  br label %272, !dbg !3911

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3873, metadata !DIExpression()) #18, !dbg !3912
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !3914
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3914
  %213 = shl i64 %49, 10, !dbg !3915
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3915
  call void @llvm.dbg.value(metadata i1 %212, metadata !3784, metadata !DIExpression()), !dbg !3840
  br label %272, !dbg !3916

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3868, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3919
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3921
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3921
  %218 = mul i64 %49, %73, !dbg !3922
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3922
  call void @llvm.dbg.value(metadata i1 %217, metadata !3862, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3917
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !3921
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3921
  %222 = mul i64 %219, %73, !dbg !3922
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3922
  %224 = or i1 %217, %221, !dbg !3923
  call void @llvm.dbg.value(metadata i1 %224, metadata !3862, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3917
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !3921
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3921
  %227 = mul i64 %223, %73, !dbg !3922
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3922
  %229 = or i1 %224, %226, !dbg !3923
  call void @llvm.dbg.value(metadata i1 %229, metadata !3862, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3917
  br label %272, !dbg !3885

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3868, metadata !DIExpression()) #18, !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3924
  call void @llvm.dbg.value(metadata i32 undef, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3924
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3926
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3928
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3928
  %233 = mul i64 %49, %73, !dbg !3929
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3929
  call void @llvm.dbg.value(metadata i1 %232, metadata !3862, metadata !DIExpression()) #18, !dbg !3924
  call void @llvm.dbg.value(metadata i32 undef, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3924
  br label %272, !dbg !3885

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3868, metadata !DIExpression()) #18, !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3930
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3930
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3932
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3934
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !3934
  %238 = mul i64 %49, %73, !dbg !3935
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !3935
  call void @llvm.dbg.value(metadata i1 %237, metadata !3862, metadata !DIExpression()) #18, !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3930
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !3934
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3934
  %242 = mul i64 %239, %73, !dbg !3935
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3935
  %244 = or i1 %237, %241, !dbg !3936
  call void @llvm.dbg.value(metadata i1 %244, metadata !3862, metadata !DIExpression()) #18, !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3930
  br label %272, !dbg !3885

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3868, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 3, metadata !3869, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression()) #18, !dbg !3939
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3941
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !3941
  %248 = mul i64 %49, %73, !dbg !3942
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !3942
  call void @llvm.dbg.value(metadata i1 %247, metadata !3862, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 2, metadata !3869, metadata !DIExpression()) #18, !dbg !3937
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !3941
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3941
  %252 = mul i64 %249, %73, !dbg !3942
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3942
  %254 = or i1 %247, %251, !dbg !3943
  call void @llvm.dbg.value(metadata i1 %254, metadata !3862, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 1, metadata !3869, metadata !DIExpression()) #18, !dbg !3937
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !3941
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3941
  %257 = mul i64 %253, %73, !dbg !3942
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3942
  %259 = or i1 %254, %256, !dbg !3943
  call void @llvm.dbg.value(metadata i1 %259, metadata !3862, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3937
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !3941
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !3941
  %262 = mul i64 %258, %73, !dbg !3942
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !3942
  %264 = or i1 %259, %261, !dbg !3943
  call void @llvm.dbg.value(metadata i1 %264, metadata !3862, metadata !DIExpression()) #18, !dbg !3937
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3937
  br label %272, !dbg !3885

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3873, metadata !DIExpression()) #18, !dbg !3944
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !3946
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3946
  %268 = shl i64 %49, 1, !dbg !3947
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3947
  call void @llvm.dbg.value(metadata i1 %267, metadata !3784, metadata !DIExpression()), !dbg !3840
  br label %272, !dbg !3948

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3774, metadata !DIExpression()), !dbg !3785
  store i64 %49, i64* %3, align 8, !dbg !3949, !tbaa !1398
  %271 = or i32 %48, 2, !dbg !3950
  br label %285, !dbg !3951

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !3785
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %275, metadata !3784, metadata !DIExpression()), !dbg !3840
  %276 = or i32 %48, %275, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %276, metadata !3775, metadata !DIExpression()), !dbg !3785
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3953
  store i8* %277, i8** %25, align 8, !dbg !3953, !tbaa !1198
  %278 = load i8, i8* %277, align 1, !dbg !3954, !tbaa !1330
  %279 = icmp eq i8 %278, 0, !dbg !3954
  %280 = or i32 %276, 2, !dbg !3956
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3957
  call void @llvm.dbg.value(metadata i32 %281, metadata !3775, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 %281, metadata !3775, metadata !DIExpression()), !dbg !3785
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3958
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3959
  call void @llvm.dbg.value(metadata i32 %284, metadata !3775, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %283, metadata !3774, metadata !DIExpression()), !dbg !3785
  store i64 %283, i64* %3, align 8, !dbg !3960, !tbaa !1398
  br label %285, !dbg !3961

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3962
  ret i32 %286, !dbg !3962
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3963 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3971
  %3 = icmp eq i64 %0, 0, !dbg !3972
  %4 = icmp eq i64 %1, 0, !dbg !3973
  %5 = or i1 %3, %4, !dbg !3974
  br i1 %5, label %11, label %6, !dbg !3974

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3968, metadata !DIExpression()), !dbg !3975
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3976
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3976
  br i1 %8, label %9, label %11, !dbg !3978

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3979
  store i32 12, i32* %10, align 4, !dbg !3981, !tbaa !1322
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %12, metadata !3966, metadata !DIExpression()), !dbg !3971
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %14, metadata !3967, metadata !DIExpression()), !dbg !3971
  br label %15, !dbg !3983

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3971
  ret i8* %16, !dbg !3984
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @lchmod(i8* nocapture nonnull readonly %0, i32 %1) local_unnamed_addr #8 !dbg !421 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [26 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !440, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 %1, metadata !441, metadata !DIExpression()), !dbg !3985
  %5 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 2752512) #18, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %5, metadata !442, metadata !DIExpression()), !dbg !3985
  %6 = icmp slt i32 %5, 0, !dbg !3987
  br i1 %6, label %40, label %7, !dbg !3989

7:                                                ; preds = %2
  %8 = bitcast %struct.stat* %3 to i8*, !dbg !3990
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %8) #18, !dbg !3990
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !443, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 %5, metadata !3992, metadata !DIExpression()) #18, !dbg !4001
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), metadata !3998, metadata !DIExpression()) #18, !dbg !4001
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !3999, metadata !DIExpression()) #18, !dbg !4001
  call void @llvm.dbg.value(metadata i32 4096, metadata !4000, metadata !DIExpression()) #18, !dbg !4001
  %9 = call i32 @__fxstatat(i32 1, i32 %5, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %struct.stat* nonnull %3, i32 4096) #18, !dbg !4003
  %10 = icmp eq i32 %9, 0, !dbg !4004
  br i1 %10, label %15, label %11, !dbg !4005

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #25, !dbg !4006
  %13 = load i32, i32* %12, align 4, !dbg !4006, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %13, metadata !478, metadata !DIExpression()), !dbg !4007
  %14 = call i32 @close(i32 %5) #18, !dbg !4008
  store i32 %13, i32* %12, align 4, !dbg !4009, !tbaa !1322
  br label %38

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !4010
  %17 = load i32, i32* %16, align 8, !dbg !4010, !tbaa !1772
  %18 = and i32 %17, 61440, !dbg !4010
  %19 = icmp eq i32 %18, 40960, !dbg !4010
  br i1 %19, label %20, label %23, !dbg !4012

20:                                               ; preds = %15
  %21 = call i32 @close(i32 %5) #18, !dbg !4013
  %22 = tail call i32* @__errno_location() #25, !dbg !4015
  store i32 95, i32* %22, align 4, !dbg !4016, !tbaa !1322
  br label %38, !dbg !4017

23:                                               ; preds = %15
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %4, i64 0, i64 0, !dbg !4018
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %24) #18, !dbg !4018
  call void @llvm.dbg.declare(metadata [26 x i8]* %4, metadata !481, metadata !DIExpression()), !dbg !4019
  %25 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %24, i32 1, i64 26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @lchmod.fmt, i64 0, i64 0), i32 %5) #18, !dbg !4020
  %26 = call i32 @chmod(i8* nonnull %24, i32 %1) #18, !dbg !4021
  call void @llvm.dbg.value(metadata i32 %26, metadata !485, metadata !DIExpression()), !dbg !3985
  %27 = tail call i32* @__errno_location() #25, !dbg !4022
  %28 = load i32, i32* %27, align 4, !dbg !4022, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %28, metadata !486, metadata !DIExpression()), !dbg !3985
  %29 = call i32 @close(i32 %5) #18, !dbg !4023
  %30 = icmp eq i32 %26, 0, !dbg !4024
  br i1 %30, label %36, label %31, !dbg !4026

31:                                               ; preds = %23
  %32 = icmp eq i32 %28, 2, !dbg !4027
  br i1 %32, label %34, label %33, !dbg !4029

33:                                               ; preds = %31
  store i32 %28, i32* %27, align 4, !dbg !4030, !tbaa !1322
  br label %36, !dbg !4032

34:                                               ; preds = %31
  %35 = call i32 @chmod(i8* nonnull %0, i32 %1) #18, !dbg !4033
  br label %36, !dbg !4034

36:                                               ; preds = %23, %34, %33
  %37 = phi i32 [ %26, %33 ], [ %35, %34 ], [ 0, %23 ], !dbg !3985
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %24) #18, !dbg !4035
  br label %38

38:                                               ; preds = %36, %20, %11
  %39 = phi i32 [ -1, %11 ], [ -1, %20 ], [ %37, %36 ], !dbg !3985
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %8) #18, !dbg !4035
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ %39, %38 ], [ %5, %2 ], !dbg !3985
  ret i32 %41, !dbg !4035
}

; Function Attrs: nofree
declare !dbg !429 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

declare !dbg !433 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare !dbg !437 i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4036 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4044, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i8* %1, metadata !4045, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 %2, metadata !4046, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4047, metadata !DIExpression()), !dbg !4053
  %6 = bitcast i32* %5 to i8*, !dbg !4054
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4054
  %7 = icmp eq i32* %0, null, !dbg !4055
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4057
  call void @llvm.dbg.value(metadata i32* %8, metadata !4044, metadata !DIExpression()), !dbg !4053
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4058
  call void @llvm.dbg.value(metadata i64 %9, metadata !4048, metadata !DIExpression()), !dbg !4053
  %10 = icmp ugt i64 %9, -3, !dbg !4059
  %11 = icmp ne i64 %2, 0, !dbg !4060
  %12 = and i1 %11, %10, !dbg !4061
  br i1 %12, label %13, label %18, !dbg !4061

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4062
  br i1 %14, label %18, label %15, !dbg !4063

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4064, !tbaa !1330
  call void @llvm.dbg.value(metadata i8 %16, metadata !4050, metadata !DIExpression()), !dbg !4065
  %17 = zext i8 %16 to i32, !dbg !4066
  store i32 %17, i32* %8, align 4, !dbg !4067, !tbaa !1322
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4053
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4068
  ret i64 %19, !dbg !4068
}

; Function Attrs: nounwind
declare !dbg !578 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4069 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4075, metadata !DIExpression()), !dbg !4080
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4081
  call void @llvm.dbg.value(metadata i1 undef, metadata !4076, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4082, metadata !DIExpression()), !dbg !4086
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4088
  %4 = load i32, i32* %3, align 8, !dbg !4088, !tbaa !4089
  %5 = and i32 %4, 32, !dbg !4088
  %6 = icmp eq i32 %5, 0, !dbg !4091
  call void @llvm.dbg.value(metadata i1 %6, metadata !4078, metadata !DIExpression()), !dbg !4080
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4092
  %8 = icmp ne i32 %7, 0, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %8, metadata !4079, metadata !DIExpression()), !dbg !4080
  br i1 %6, label %9, label %19, !dbg !4094

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4096
  call void @llvm.dbg.value(metadata i1 %10, metadata !4076, metadata !DIExpression()), !dbg !4080
  %11 = xor i1 %8, true, !dbg !4097
  %12 = or i1 %10, %11, !dbg !4097
  %13 = sext i1 %8 to i32, !dbg !4097
  br i1 %12, label %22, label %14, !dbg !4097

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4098
  %16 = load i32, i32* %15, align 4, !dbg !4098, !tbaa !1322
  %17 = icmp ne i32 %16, 9, !dbg !4099
  %18 = sext i1 %17 to i32, !dbg !4100
  br label %22, !dbg !4100

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4101

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4103
  store i32 0, i32* %21, align 4, !dbg !4105, !tbaa !1322
  br label %22, !dbg !4103

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4080
  ret i32 %23, !dbg !4106
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4107 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4114
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4115
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4110, metadata !DIExpression()), !dbg !4116
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4117
  %5 = icmp eq i32 %4, 0, !dbg !4117
  br i1 %5, label %6, label %13, !dbg !4119

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4120
  %8 = load i16, i16* %7, align 16, !dbg !4120
  %9 = icmp eq i16 %8, 67, !dbg !4120
  br i1 %9, label %13, label %10, !dbg !4121

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0), i64 6), !dbg !4122
  %12 = icmp ne i32 %11, 0, !dbg !4123
  br label %13, !dbg !4121

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4114
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4124
  ret i1 %14, !dbg !4124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4125 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %1, metadata !4127, metadata !DIExpression()), !dbg !4129
  %2 = icmp eq i8* %1, null, !dbg !4130
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.149, i64 0, i64 0), i8* %1, !dbg !4132
  call void @llvm.dbg.value(metadata i8* %3, metadata !4127, metadata !DIExpression()), !dbg !4129
  %4 = load i8, i8* %3, align 1, !dbg !4133, !tbaa !1330
  %5 = icmp eq i8 %4, 0, !dbg !4137
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0), i8* %3, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %6, metadata !4127, metadata !DIExpression()), !dbg !4129
  ret i8* %6, !dbg !4139
}

; Function Attrs: nounwind
declare !dbg !1030 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i8* %1, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %2, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()) #18, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %1, metadata !4151, metadata !DIExpression()) #18, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !4152, metadata !DIExpression()) #18, !dbg !4157
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()) #18, !dbg !4165
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %4, metadata !4164, metadata !DIExpression()) #18, !dbg !4165
  call void @llvm.dbg.value(metadata i8* %4, metadata !4153, metadata !DIExpression()) #18, !dbg !4157
  %5 = icmp eq i8* %4, null, !dbg !4168
  br i1 %5, label %6, label %9, !dbg !4169

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4170
  br i1 %7, label %19, label %8, !dbg !4173

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4174, !tbaa !1330
  br label %19, !dbg !4175

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4176
  call void @llvm.dbg.value(metadata i64 %10, metadata !4154, metadata !DIExpression()) #18, !dbg !4177
  %11 = icmp ult i64 %10, %2, !dbg !4178
  br i1 %11, label %12, label %14, !dbg !4180

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %1, metadata !4183, metadata !DIExpression()) #18, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %4, metadata !4186, metadata !DIExpression()) #18, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %13, metadata !4187, metadata !DIExpression()) #18, !dbg !4188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4190
  br label %19, !dbg !4191

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4192
  br i1 %15, label %19, label %16, !dbg !4195

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4196
  call void @llvm.dbg.value(metadata i8* %1, metadata !4183, metadata !DIExpression()) #18, !dbg !4198
  call void @llvm.dbg.value(metadata i8* %4, metadata !4186, metadata !DIExpression()) #18, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %17, metadata !4187, metadata !DIExpression()) #18, !dbg !4198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4200
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4201
  store i8 0, i8* %18, align 1, !dbg !4202, !tbaa !1330
  br label %19, !dbg !4203

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4204
  ret i32 %20, !dbg !4205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()) #18, !dbg !4210
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %2, metadata !4164, metadata !DIExpression()) #18, !dbg !4210
  ret i8* %2, !dbg !4213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4214 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4220, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4221, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4223, metadata !DIExpression()), !dbg !4224
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %2, metadata !4222, metadata !DIExpression()), !dbg !4224
  %3 = icmp slt i32 %2, 0, !dbg !4226
  br i1 %3, label %4, label %6, !dbg !4228

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4229
  br label %24, !dbg !4230

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4231
  %8 = icmp eq i32 %7, 0, !dbg !4231
  br i1 %8, label %13, label %9, !dbg !4233

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4234
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4235
  %12 = icmp eq i64 %11, -1, !dbg !4236
  br i1 %12, label %16, label %13, !dbg !4237

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4238
  %15 = icmp eq i32 %14, 0, !dbg !4238
  br i1 %15, label %16, label %18, !dbg !4239

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4221, metadata !DIExpression()), !dbg !4224
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %21, metadata !4223, metadata !DIExpression()), !dbg !4224
  br label %24, !dbg !4241

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4242
  %20 = load i32, i32* %19, align 4, !dbg !4242, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 %20, metadata !4221, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %20, metadata !4221, metadata !DIExpression()), !dbg !4224
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %21, metadata !4223, metadata !DIExpression()), !dbg !4224
  %22 = icmp eq i32 %20, 0, !dbg !4243
  br i1 %22, label %24, label %23, !dbg !4241

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4245, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 -1, metadata !4223, metadata !DIExpression()), !dbg !4224
  br label %24, !dbg !4247

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4224
  ret i32 %25, !dbg !4248
}

; Function Attrs: nofree nounwind
declare !dbg !1039 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1074 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1075 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4249 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4255, metadata !DIExpression()), !dbg !4256
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4257
  br i1 %2, label %6, label %3, !dbg !4259

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4260
  %5 = icmp eq i32 %4, 0, !dbg !4260
  br i1 %5, label %6, label %8, !dbg !4261

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4262
  br label %17, !dbg !4263

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4264, metadata !DIExpression()) #18, !dbg !4269
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4271
  %10 = load i32, i32* %9, align 8, !dbg !4271, !tbaa !4089
  %11 = and i32 %10, 256, !dbg !4273
  %12 = icmp eq i32 %11, 0, !dbg !4273
  br i1 %12, label %15, label %13, !dbg !4274

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4275
  br label %15, !dbg !4275

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4276
  br label %17, !dbg !4277

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4256
  ret i32 %18, !dbg !4278
}

; Function Attrs: nofree nounwind
declare !dbg !1082 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4279 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4286, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %1, metadata !4287, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32 %2, metadata !4288, metadata !DIExpression()), !dbg !4292
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4293
  %5 = load i8*, i8** %4, align 8, !dbg !4293, !tbaa !4294
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4295
  %7 = load i8*, i8** %6, align 8, !dbg !4295, !tbaa !4296
  %8 = icmp eq i8* %5, %7, !dbg !4297
  br i1 %8, label %9, label %28, !dbg !4298

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4299
  %11 = load i8*, i8** %10, align 8, !dbg !4299, !tbaa !4300
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4301
  %13 = load i8*, i8** %12, align 8, !dbg !4301, !tbaa !4302
  %14 = icmp eq i8* %11, %13, !dbg !4303
  br i1 %14, label %15, label %28, !dbg !4304

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4305
  %17 = load i8*, i8** %16, align 8, !dbg !4305, !tbaa !4306
  %18 = icmp eq i8* %17, null, !dbg !4307
  br i1 %18, label %19, label %28, !dbg !4308

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4309
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %21, metadata !4289, metadata !DIExpression()), !dbg !4311
  %22 = icmp eq i64 %21, -1, !dbg !4312
  br i1 %22, label %30, label %23, !dbg !4314

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4315
  %25 = load i32, i32* %24, align 8, !dbg !4316, !tbaa !4089
  %26 = and i32 %25, -17, !dbg !4316
  store i32 %26, i32* %24, align 8, !dbg !4316, !tbaa !4089
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4317
  store i64 %21, i64* %27, align 8, !dbg !4318, !tbaa !4319
  br label %30, !dbg !4320

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4321
  br label %30, !dbg !4322

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4292
  ret i32 %31, !dbg !4323
}

; Function Attrs: nofree nounwind
declare !dbg !1158 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !490, !193, !198, !243, !492, !249, !290, !502, !413, !544, !565, !568, !572, !427, !575, !594, !633, !640, !1033, !1036, !1079, !1120}
!llvm.ident = !{!1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161, !1161}
!llvm.module.flags = !{!1162, !1163, !1164, !1165, !1166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !188, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !187, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mknod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 25, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 32, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!28 = !{!29, !39, !100, !104, !108, !111, !114, !121, !136, !33, !90, !140, !144, !150, !154, !161, !164, !168, !7, !173, !176, !179, !182, !184, !175}
!29 = !DISubprogram(name: "dcgettext", scope: !30, file: !30, line: 51, type: !31, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!30 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !35, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{}
!39 = !DISubprogram(name: "fputs_unlocked", scope: !40, file: !40, line: 662, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!40 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!41 = !DISubroutineType(types: !42)
!42 = !{!37, !35, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !63, !64, !65, !69, !71, !73, !77, !80, !82, !85, !88, !89, !91, !95, !96}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 51, baseType: !37, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 36, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 70, baseType: !43, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !68)
!67 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 43, baseType: null)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !68)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !44, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !45, line: 37, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !44, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !45, line: 38, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !44, file: !45, line: 93, baseType: !43, size: 64, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !44, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!94 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 20)
!100 = !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 37, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!101 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !35}
!104 = !DISubprogram(name: "setlocale", scope: !105, file: !105, line: 122, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!105 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!33, !37, !35}
!108 = !DISubprogram(name: "bindtextdomain", scope: !30, file: !30, line: 86, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!109 = !DISubroutineType(types: !110)
!110 = !{!33, !35, !35}
!111 = !DISubprogram(name: "textdomain", scope: !30, file: !30, line: 82, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!112 = !DISubroutineType(types: !113)
!113 = !{!33, !35}
!114 = !DISubprogram(name: "atexit", scope: !115, file: !115, line: 595, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!115 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!116 = !DISubroutineType(types: !117)
!117 = !{!37, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null}
!121 = !DISubprogram(name: "getopt_long", scope: !122, file: !122, line: 66, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!122 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!123 = !DISubroutineType(types: !124)
!124 = !{!37, !37, !125, !35, !127, !134}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !122, line: 50, size: 256, elements: !130)
!130 = !{!131, !132, !133, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !122, line: 52, baseType: !35, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !129, file: !122, line: 55, baseType: !37, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !129, file: !122, line: 56, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !122, line: 57, baseType: !37, size: 32, offset: 192)
!136 = !DISubprogram(name: "error", scope: !137, file: !137, line: 52, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!137 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!138 = !DISubroutineType(types: !139)
!139 = !{null, !37, !37, !35, null}
!140 = !DISubprogram(name: "version_etc", scope: !141, file: !141, line: 69, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!141 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!142 = !DISubroutineType(types: !143)
!143 = !{null, !43, !35, !35, !35, null}
!144 = !DISubprogram(name: "mode_compile", scope: !145, file: !145, line: 25, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!145 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !35}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !145, line: 25, flags: DIFlagFwdDecl)
!150 = !DISubprogram(name: "umask", scope: !151, file: !151, line: 308, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!151 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!152 = !DISubroutineType(types: !153)
!153 = !{!7, !7}
!154 = !DISubprogram(name: "mode_adjust", scope: !145, file: !145, line: 27, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!155 = !DISubroutineType(types: !156)
!156 = !{!7, !7, !157, !7, !158, !160}
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!161 = !DISubprogram(name: "free", scope: !115, file: !115, line: 565, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !90}
!164 = !DISubprogram(name: "quote", scope: !165, file: !165, line: 44, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!165 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{!35, !35}
!168 = !DISubprogram(name: "xstrtoumax", scope: !6, file: !6, line: 48, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!169 = !DISubroutineType(types: !170)
!170 = !{!5, !35, !171, !37, !172, !35}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 59, baseType: !175)
!174 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !67, line: 145, baseType: !94)
!176 = !DISubprogram(name: "quotearg_n_style_colon", scope: !15, file: !15, line: 397, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!177 = !DISubroutineType(types: !178)
!178 = !{!33, !37, !14, !35}
!179 = !DISubprogram(name: "mkfifo", scope: !151, file: !151, line: 346, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!180 = !DISubroutineType(types: !181)
!181 = !{!37, !35, !7}
!182 = !DISubprogram(name: "lchmod", scope: !183, file: !183, line: 993, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!183 = !DIFile(filename: "./lib/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !DISubprogram(name: "quotearg_style", scope: !15, file: !15, line: 377, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!185 = !DISubroutineType(types: !186)
!186 = !{!33, !14, !35}
!187 = !{!0}
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1280, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 5)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "Version", scope: !193, file: !194, line: 2, type: !35, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!191}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "file_name", scope: !198, file: !199, line: 46, type: !35, isLocal: true, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !200, globals: !238, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !{!201, !29, !237, !136}
!201 = !DISubprogram(name: "close_stream", scope: !202, file: !202, line: 2, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!202 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = !DISubroutineType(types: !204)
!204 = !{!37, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !206, file: !45, line: 51, baseType: !37, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !206, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !206, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !206, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !206, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !206, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !206, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !206, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !206, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !206, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !206, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !206, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !206, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !206, file: !45, line: 70, baseType: !205, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !206, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !206, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !206, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !206, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !206, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !206, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !206, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !206, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !206, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !206, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !206, file: !45, line: 93, baseType: !205, size: 64, offset: 1344)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !206, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !206, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !206, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !206, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!237 = !DISubprogram(name: "quotearg_colon", scope: !15, file: !15, line: 391, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!238 = !{!196, !239}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !198, file: !199, line: 56, type: !157, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "exit_failure", scope: !243, file: !244, line: 24, type: !246, isLocal: false, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, globals: !245, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = !{!241}
!246 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "program_name", scope: !249, file: !250, line: 33, type: !35, isLocal: false, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !251, globals: !287, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !{!90, !252, !33}
!252 = !DISubprogram(name: "fputs", scope: !40, file: !40, line: 626, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!253 = !DISubroutineType(types: !254)
!254 = !{!37, !35, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !256, file: !45, line: 51, baseType: !37, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !256, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !256, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !256, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !256, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !256, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !256, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !256, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !256, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !256, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !256, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !256, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !256, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !256, file: !45, line: 70, baseType: !255, size: 64, offset: 832)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !256, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !256, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !256, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !256, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !256, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !256, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !256, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !256, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !256, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !256, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !256, file: !45, line: 93, baseType: !255, size: 64, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !256, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !256, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !256, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !256, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!287 = !{!247}
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !290, file: !291, line: 85, type: !407, isLocal: false, isDefinition: true)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !292, retainedTypes: !313, globals: !380, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = !{!14, !293, !298}
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 242, baseType: !7, size: 32, elements: !294)
!294 = !{!295, !296, !297}
!295 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!296 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!297 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 46, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!301 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!302 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!303 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!304 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!305 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!306 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!307 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!308 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!309 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!310 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!311 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!312 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!313 = !{!314, !320, !161, !335, !37, !70, !338, !92, !355, !359, !29, !365, !369, !33, !373, !376, !377}
!314 = !DISubprogram(name: "xmemdup", scope: !315, file: !315, line: 62, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!315 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = !DISubroutineType(types: !317)
!317 = !{!90, !318, !94}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!320 = !DISubprogram(name: "quotearg_alloc_mem", scope: !15, file: !15, line: 342, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!321 = !DISubroutineType(types: !322)
!322 = !{!33, !35, !94, !172, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !291, line: 65, size: 448, elements: !326)
!326 = !{!327, !328, !329, !333, !334}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !325, file: !291, line: 68, baseType: !14, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !291, line: 71, baseType: !37, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !325, file: !291, line: 75, baseType: !330, size: 256, offset: 64)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !325, file: !291, line: 78, baseType: !35, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !325, file: !291, line: 81, baseType: !35, size: 64, offset: 384)
!335 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !15, file: !15, line: 408, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!336 = !DISubroutineType(types: !337)
!337 = !{!33, !37, !35, !35, !35, !94}
!338 = !DISubprogram(name: "rpl_mbrtowc", scope: !339, file: !339, line: 717, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!339 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !DISubroutineType(types: !341)
!341 = !{!94, !134, !35, !94, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !345)
!344 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !344, line: 15, baseType: !37, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !344, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 16, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !344, line: 18, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !344, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DISubprogram(name: "iswprint", scope: !356, file: !356, line: 120, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!356 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!357 = !DISubroutineType(types: !358)
!358 = !{!37, !7}
!359 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!361 = !DISubroutineType(types: !362)
!362 = !{!37, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!365 = !DISubprogram(name: "locale_charset", scope: !366, file: !366, line: 35, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!366 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!367 = !DISubroutineType(types: !368)
!368 = !{!35}
!369 = !DISubprogram(name: "c_strcasecmp", scope: !370, file: !370, line: 42, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!370 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!371 = !DISubroutineType(types: !372)
!372 = !{!37, !35, !35}
!373 = !DISubprogram(name: "xmalloc", scope: !315, file: !315, line: 53, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!374 = !DISubroutineType(types: !375)
!375 = !{!90, !94}
!376 = !DISubprogram(name: "xalloc_die", scope: !315, file: !315, line: 51, type: !119, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !38)
!377 = !DISubprogram(name: "xrealloc", scope: !315, file: !315, line: 59, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!378 = !DISubroutineType(types: !379)
!379 = !{!90, !90, !94}
!380 = !{!288, !381, !387, !389, !391, !396, !403, !405}
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !290, file: !291, line: 101, type: !383, isLocal: false, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 320, elements: !385)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!385 = !{!386}
!386 = !DISubrange(count: 10)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !290, file: !291, line: 1052, type: !325, isLocal: false, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !290, file: !291, line: 116, type: !325, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "slot0", scope: !290, file: !291, line: 842, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 256)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "slotvec", scope: !290, file: !291, line: 845, type: !398, isLocal: true, isDefinition: true)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !291, line: 834, size: 128, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !399, file: !291, line: 836, baseType: !92, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !291, line: 837, baseType: !33, size: 64, offset: 64)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "nslots", scope: !290, file: !291, line: 843, type: !37, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "slotvec0", scope: !290, file: !291, line: 844, type: !399, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 704, elements: !409)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!409 = !{!410}
!410 = !DISubrange(count: 11)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !413, file: !414, line: 26, type: !416, isLocal: false, isDefinition: true)
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, globals: !415, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = !{!411}
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 47)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "fmt", scope: !421, file: !422, line: 80, type: !487, isLocal: true, isDefinition: true)
!421 = distinct !DISubprogram(name: "lchmod", scope: !422, file: !422, line: 46, type: !423, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !439)
!422 = !DIFile(filename: "lib/lchmod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !DISubroutineType(types: !424)
!424 = !{!37, !35, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !174, line: 69, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !67, line: 150, baseType: !7)
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !428, globals: !438, splitDebugInlining: false, nameTableKind: None)
!428 = !{!429, !433, !437}
!429 = !DISubprogram(name: "open", scope: !430, file: !430, line: 196, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!430 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!431 = !DISubroutineType(types: !432)
!432 = !{!37, !35, !37, null}
!433 = !DISubprogram(name: "close", scope: !434, file: !434, line: 353, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!434 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!435 = !DISubroutineType(types: !436)
!436 = !{!37, !37}
!437 = !DISubprogram(name: "chmod", scope: !151, file: !151, line: 280, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!438 = !{!419}
!439 = !{!440, !441, !442, !443, !478, !481, !485, !486}
!440 = !DILocalVariable(name: "file", arg: 1, scope: !421, file: !422, line: 46, type: !35)
!441 = !DILocalVariable(name: "mode", arg: 2, scope: !421, file: !422, line: 46, type: !425)
!442 = !DILocalVariable(name: "fd", scope: !421, file: !422, line: 53, type: !37)
!443 = !DILocalVariable(name: "st", scope: !421, file: !422, line: 64, type: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !445, line: 46, size: 1152, elements: !446)
!445 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!446 = !{!447, !448, !450, !452, !453, !455, !457, !458, !459, !460, !462, !464, !472, !473, !474}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !444, file: !445, line: 48, baseType: !175, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !444, file: !445, line: 53, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !67, line: 148, baseType: !94)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !444, file: !445, line: 61, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !67, line: 151, baseType: !94)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !444, file: !445, line: 62, baseType: !426, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !444, file: !445, line: 64, baseType: !454, size: 32, offset: 224)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !67, line: 146, baseType: !7)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !444, file: !445, line: 65, baseType: !456, size: 32, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !67, line: 147, baseType: !7)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !444, file: !445, line: 67, baseType: !37, size: 32, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !444, file: !445, line: 69, baseType: !175, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !444, file: !445, line: 74, baseType: !66, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !444, file: !445, line: 78, baseType: !461, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !67, line: 174, baseType: !68)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !444, file: !445, line: 80, baseType: !463, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !67, line: 179, baseType: !68)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !444, file: !445, line: 91, baseType: !465, size: 128, offset: 576)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !466, line: 10, size: 128, elements: !467)
!466 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!467 = !{!468, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !465, file: !466, line: 12, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !67, line: 160, baseType: !68)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !465, file: !466, line: 16, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !67, line: 196, baseType: !68)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !444, file: !445, line: 92, baseType: !465, size: 128, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !444, file: !445, line: 93, baseType: !465, size: 128, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !444, file: !445, line: 106, baseType: !475, size: 192, offset: 960)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 192, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 3)
!478 = !DILocalVariable(name: "stat_errno", scope: !479, file: !422, line: 67, type: !37)
!479 = distinct !DILexicalBlock(scope: !480, file: !422, line: 66, column: 5)
!480 = distinct !DILexicalBlock(scope: !421, file: !422, line: 65, column: 7)
!481 = !DILocalVariable(name: "buf", scope: !421, file: !422, line: 81, type: !482)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 208, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 26)
!485 = !DILocalVariable(name: "chmod_result", scope: !421, file: !422, line: 83, type: !37)
!486 = !DILocalVariable(name: "chmod_errno", scope: !421, file: !422, line: 84, type: !37)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 17)
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !493, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !494, retainedTypes: !501, splitDebugInlining: false, nameTableKind: None)
!493 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!494 = !{!495}
!495 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !493, line: 78, baseType: !7, size: 32, elements: !496)
!496 = !{!497, !498, !499, !500}
!497 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!498 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!499 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!500 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!501 = !{!161, !373, !92, !376}
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !504, retainedTypes: !508, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !{!505}
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !503, line: 40, baseType: !7, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!508 = !{!29, !509, !90}
!509 = !DISubprogram(name: "fputs_unlocked", scope: !40, file: !40, line: 662, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!510 = !DISubroutineType(types: !511)
!511 = !{!37, !35, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !513, file: !45, line: 51, baseType: !37, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !513, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !513, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !513, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !513, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !513, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !513, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !513, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !513, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !513, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !513, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !513, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !513, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !513, file: !45, line: 70, baseType: !512, size: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !513, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !513, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !513, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !513, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !513, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !513, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !513, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !513, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !513, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !513, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !513, file: !45, line: 93, baseType: !512, size: 64, offset: 1344)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !513, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !513, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !513, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !513, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !559, splitDebugInlining: false, nameTableKind: None)
!545 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !548, file: !315, line: 186, baseType: !7, size: 32, elements: !557)
!548 = distinct !DISubprogram(name: "x2nrealloc", scope: !315, file: !315, line: 174, type: !549, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !552)
!549 = !DISubroutineType(types: !550)
!550 = !{!90, !90, !551, !92}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(name: "p", arg: 1, scope: !548, file: !315, line: 174, type: !90)
!554 = !DILocalVariable(name: "pn", arg: 2, scope: !548, file: !315, line: 174, type: !551)
!555 = !DILocalVariable(name: "s", arg: 3, scope: !548, file: !315, line: 174, type: !92)
!556 = !DILocalVariable(name: "n", scope: !548, file: !315, line: 176, type: !92)
!557 = !{!558}
!558 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!559 = !{!92, !376, !373, !377, !33, !161, !90, !560, !563}
!560 = !DISubprogram(name: "xcalloc", scope: !315, file: !315, line: 57, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!561 = !DISubroutineType(types: !562)
!562 = !{!90, !94, !94}
!563 = !DISubprogram(name: "rpl_calloc", scope: !564, file: !564, line: 688, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!564 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !567, splitDebugInlining: false, nameTableKind: None)
!566 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!567 = !{!29, !136}
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !570, retainedTypes: !571, splitDebugInlining: false, nameTableKind: None)
!569 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!570 = !{!5, !298}
!571 = !{!37, !70}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = !{!90}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !577, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = !{!578, !92, !590}
!578 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!579 = !DISubroutineType(types: !580)
!580 = !{!94, !134, !35, !94, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !582, file: !344, line: 15, baseType: !37, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !582, file: !344, line: 20, baseType: !586, size: 32, offset: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !344, line: 16, size: 32, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !586, file: !344, line: 18, baseType: !7, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !586, file: !344, line: 19, baseType: !352, size: 32)
!590 = !DISubprogram(name: "hard_locale", scope: !591, file: !591, line: 26, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!591 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!592 = !DISubroutineType(types: !593)
!593 = !{!157, !37}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !596, splitDebugInlining: false, nameTableKind: None)
!595 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!596 = !{!597}
!597 = !DISubprogram(name: "rpl_fclose", scope: !598, file: !598, line: 672, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!598 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!599 = !DISubroutineType(types: !600)
!600 = !{!37, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !602, file: !45, line: 51, baseType: !37, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !602, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !602, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !602, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !602, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !602, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !602, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !602, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !602, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !602, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !602, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !602, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !602, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !602, file: !45, line: 70, baseType: !601, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !602, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !602, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !602, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !602, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !602, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !602, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !602, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !602, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !602, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !602, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !602, file: !45, line: 93, baseType: !601, size: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !602, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !602, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !602, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !602, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !635, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!635 = !{!636}
!636 = !DISubprogram(name: "setlocale_null_r", scope: !637, file: !637, line: 64, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!637 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!638 = !DISubroutineType(types: !639)
!639 = !{!37, !37, !33, !94}
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !642, retainedTypes: !1029, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!642 = !{!643}
!643 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !644, line: 41, baseType: !7, size: 32, elements: !645)
!644 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!646 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!647 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!648 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!649 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!650 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!651 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!652 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!653 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!654 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!655 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!656 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!657 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!658 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!659 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!660 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!661 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!662 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!663 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!664 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!665 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!666 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!667 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!668 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!669 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!670 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!671 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!672 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!673 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!674 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!675 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!676 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!677 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!678 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!679 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!680 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!681 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!682 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!683 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!684 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!685 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!686 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!687 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!688 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!689 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!690 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!691 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!692 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!693 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!694 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!695 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!754 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!757 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!758 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!759 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!760 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!761 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!762 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!763 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!764 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!765 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!766 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!767 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!768 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!841 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!914 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!915 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!916 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!917 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!918 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!919 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!920 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!921 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!922 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!923 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!924 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!925 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!926 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!927 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!928 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!930 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!931 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!932 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!933 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!934 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!935 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!961 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!962 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!963 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!964 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!965 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!970 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!971 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!972 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!973 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1029 = !{!1030, !90}
!1030 = !DISubprogram(name: "nl_langinfo", scope: !644, file: !644, line: 661, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!33, !37}
!1033 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1034, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !1035, splitDebugInlining: false, nameTableKind: None)
!1034 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1035 = !{!90, !104}
!1036 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1037, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !1038, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1038 = !{!1039, !1074, !1075, !1078}
!1039 = !DISubprogram(name: "fileno", scope: !40, file: !40, line: 786, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!37, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1043, file: !45, line: 51, baseType: !37, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1043, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1043, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1043, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1043, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1043, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1043, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1043, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1043, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1043, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1043, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1043, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1043, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1043, file: !45, line: 70, baseType: !1042, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1043, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1043, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1043, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1043, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1043, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1043, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1043, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1043, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1043, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1043, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1043, file: !45, line: 93, baseType: !1042, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1043, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1043, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1043, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1043, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!1074 = !DISubprogram(name: "fclose", scope: !40, file: !40, line: 213, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1075 = !DISubprogram(name: "lseek", scope: !434, file: !434, line: 334, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!68, !37, !68, !37}
!1078 = !DISubprogram(name: "rpl_fflush", scope: !598, file: !598, line: 718, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1079 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1080, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !1081, splitDebugInlining: false, nameTableKind: None)
!1080 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1081 = !{!90, !1082, !1117}
!1082 = !DISubprogram(name: "fflush", scope: !40, file: !40, line: 218, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!37, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1086, file: !45, line: 51, baseType: !37, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1086, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1086, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1086, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1086, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1086, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1086, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1086, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1086, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1086, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1086, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1086, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1086, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1086, file: !45, line: 70, baseType: !1085, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1086, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1086, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1086, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1086, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1086, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1086, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1086, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1086, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1086, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1086, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1086, file: !45, line: 93, baseType: !1085, size: 64, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1086, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1086, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1086, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1086, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!1117 = !DISubprogram(name: "rpl_fseeko", scope: !598, file: !598, line: 1034, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!37, !1085, !68, !37}
!1120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1121, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !1122, splitDebugInlining: false, nameTableKind: None)
!1121 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1122 = !{!90, !1123, !1075, !1158}
!1123 = !DISubprogram(name: "fileno", scope: !40, file: !40, line: 786, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!37, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1127, file: !45, line: 51, baseType: !37, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1127, file: !45, line: 54, baseType: !33, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1127, file: !45, line: 55, baseType: !33, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1127, file: !45, line: 56, baseType: !33, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1127, file: !45, line: 57, baseType: !33, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1127, file: !45, line: 58, baseType: !33, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1127, file: !45, line: 59, baseType: !33, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1127, file: !45, line: 60, baseType: !33, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1127, file: !45, line: 61, baseType: !33, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1127, file: !45, line: 64, baseType: !33, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1127, file: !45, line: 65, baseType: !33, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1127, file: !45, line: 66, baseType: !33, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1127, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1127, file: !45, line: 70, baseType: !1126, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1127, file: !45, line: 72, baseType: !37, size: 32, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1127, file: !45, line: 73, baseType: !37, size: 32, offset: 928)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1127, file: !45, line: 74, baseType: !66, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1127, file: !45, line: 77, baseType: !70, size: 16, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1127, file: !45, line: 78, baseType: !72, size: 8, offset: 1040)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1127, file: !45, line: 79, baseType: !74, size: 8, offset: 1048)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1127, file: !45, line: 81, baseType: !78, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1127, file: !45, line: 89, baseType: !81, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1127, file: !45, line: 91, baseType: !83, size: 64, offset: 1216)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1127, file: !45, line: 92, baseType: !86, size: 64, offset: 1280)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1127, file: !45, line: 93, baseType: !1126, size: 64, offset: 1344)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1127, file: !45, line: 94, baseType: !90, size: 64, offset: 1408)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1127, file: !45, line: 95, baseType: !92, size: 64, offset: 1472)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1127, file: !45, line: 96, baseType: !37, size: 32, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1127, file: !45, line: 98, baseType: !97, size: 160, offset: 1568)
!1158 = !DISubprogram(name: "fseeko", scope: !40, file: !40, line: 707, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!37, !1126, !68, !37}
!1161 = !{!"clang version 10.0.0 "}
!1162 = !{i32 7, !"Dwarf Version", i32 4}
!1163 = !{i32 2, !"Debug Info Version", i32 3}
!1164 = !{i32 1, !"wchar_size", i32 4}
!1165 = !{i32 7, !"PIC Level", i32 2}
!1166 = !{i32 7, !"PIE Level", i32 2}
!1167 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !1168, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !37}
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "status", arg: 1, scope: !1167, file: !3, line: 49, type: !37)
!1172 = !DILocalVariable(name: "infomap", scope: !1173, file: !1174, line: 636, type: !1186)
!1173 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1174, file: !1174, line: 634, type: !102, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1175)
!1174 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1175 = !{!1176, !1172, !1177, !1178, !1185}
!1176 = !DILocalVariable(name: "program", arg: 1, scope: !1173, file: !1174, line: 634, type: !35)
!1177 = !DILocalVariable(name: "node", scope: !1173, file: !1174, line: 646, type: !35)
!1178 = !DILocalVariable(name: "map_prog", scope: !1173, file: !1174, line: 647, type: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1173, file: !1174, line: 636, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1181, file: !1174, line: 636, baseType: !35, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1181, file: !1174, line: 636, baseType: !35, size: 64, offset: 64)
!1185 = !DILocalVariable(name: "lc_messages", scope: !1173, file: !1174, line: 659, type: !35)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 896, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 7)
!1189 = !DILocation(line: 636, column: 67, scope: !1173, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 87, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 54, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 51, column: 7)
!1193 = !DILocation(line: 0, scope: !1167)
!1194 = !DILocation(line: 51, column: 14, scope: !1192)
!1195 = !DILocation(line: 51, column: 7, scope: !1167)
!1196 = !DILocation(line: 52, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 52, column: 5)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"any pointer", !1200, i64 0}
!1200 = !{!"omnipotent char", !1201, i64 0}
!1201 = !{!"Simple C/C++ TBAA"}
!1202 = !DILocation(line: 55, column: 7, scope: !1191)
!1203 = !DILocation(line: 57, column: 7, scope: !1191)
!1204 = !DILocation(line: 590, column: 3, scope: !1205, inlinedAt: !1206)
!1205 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1174, file: !1174, line: 588, type: !119, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!1206 = distinct !DILocation(line: 61, column: 7, scope: !1191)
!1207 = !DILocation(line: 63, column: 7, scope: !1191)
!1208 = !DILocation(line: 66, column: 7, scope: !1191)
!1209 = !DILocation(line: 71, column: 7, scope: !1191)
!1210 = !DILocation(line: 72, column: 7, scope: !1191)
!1211 = !DILocation(line: 73, column: 7, scope: !1191)
!1212 = !DILocation(line: 80, column: 7, scope: !1191)
!1213 = !DILocation(line: 86, column: 7, scope: !1191)
!1214 = !DILocation(line: 0, scope: !1173, inlinedAt: !1190)
!1215 = !DILocation(line: 636, column: 3, scope: !1173, inlinedAt: !1190)
!1216 = !DILocation(line: 647, column: 36, scope: !1173, inlinedAt: !1190)
!1217 = !DILocation(line: 649, column: 3, scope: !1173, inlinedAt: !1190)
!1218 = !DILocation(line: 649, column: 33, scope: !1173, inlinedAt: !1190)
!1219 = !DILocation(line: 650, column: 13, scope: !1173, inlinedAt: !1190)
!1220 = !DILocation(line: 649, column: 20, scope: !1173, inlinedAt: !1190)
!1221 = !{!1222, !1199, i64 0}
!1222 = !{!"infomap", !1199, i64 0, !1199, i64 8}
!1223 = !DILocation(line: 649, column: 10, scope: !1173, inlinedAt: !1190)
!1224 = !DILocation(line: 649, column: 28, scope: !1173, inlinedAt: !1190)
!1225 = distinct !{!1225, !1217, !1219}
!1226 = !DILocation(line: 652, column: 17, scope: !1227, inlinedAt: !1190)
!1227 = distinct !DILexicalBlock(scope: !1173, file: !1174, line: 652, column: 7)
!1228 = !{!1222, !1199, i64 8}
!1229 = !DILocation(line: 652, column: 7, scope: !1227, inlinedAt: !1190)
!1230 = !DILocation(line: 652, column: 7, scope: !1173, inlinedAt: !1190)
!1231 = !DILocation(line: 655, column: 3, scope: !1173, inlinedAt: !1190)
!1232 = !DILocation(line: 659, column: 29, scope: !1173, inlinedAt: !1190)
!1233 = !DILocation(line: 660, column: 7, scope: !1234, inlinedAt: !1190)
!1234 = distinct !DILexicalBlock(scope: !1173, file: !1174, line: 660, column: 7)
!1235 = !DILocation(line: 660, column: 19, scope: !1234, inlinedAt: !1190)
!1236 = !DILocation(line: 660, column: 22, scope: !1234, inlinedAt: !1190)
!1237 = !DILocation(line: 660, column: 7, scope: !1173, inlinedAt: !1190)
!1238 = !DILocation(line: 666, column: 7, scope: !1239, inlinedAt: !1190)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !1174, line: 661, column: 5)
!1240 = !DILocation(line: 668, column: 5, scope: !1239, inlinedAt: !1190)
!1241 = !DILocation(line: 669, column: 3, scope: !1173, inlinedAt: !1190)
!1242 = !DILocation(line: 671, column: 3, scope: !1173, inlinedAt: !1190)
!1243 = !DILocation(line: 673, column: 1, scope: !1173, inlinedAt: !1190)
!1244 = !DILocation(line: 89, column: 3, scope: !1167)
!1245 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 93, type: !1246, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!37, !37, !171}
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1261, !1262, !1265, !1268, !1269, !1273, !1274, !1275}
!1249 = !DILocalVariable(name: "argc", arg: 1, scope: !1245, file: !3, line: 93, type: !37)
!1250 = !DILocalVariable(name: "argv", arg: 2, scope: !1245, file: !3, line: 93, type: !171)
!1251 = !DILocalVariable(name: "newmode", scope: !1245, file: !3, line: 95, type: !425)
!1252 = !DILocalVariable(name: "specified_mode", scope: !1245, file: !3, line: 96, type: !35)
!1253 = !DILocalVariable(name: "optc", scope: !1245, file: !3, line: 97, type: !37)
!1254 = !DILocalVariable(name: "expected_operands", scope: !1245, file: !3, line: 98, type: !92)
!1255 = !DILocalVariable(name: "node_type", scope: !1245, file: !3, line: 99, type: !425)
!1256 = !DILocalVariable(name: "scontext", scope: !1245, file: !3, line: 100, type: !35)
!1257 = !DILocalVariable(name: "set_security_context", scope: !1245, file: !3, line: 101, type: !157)
!1258 = !DILocalVariable(name: "umask_value", scope: !1259, file: !3, line: 148, type: !425)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 147, column: 5)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 146, column: 7)
!1261 = !DILocalVariable(name: "change", scope: !1259, file: !3, line: 149, type: !148)
!1262 = !DILocalVariable(name: "ret", scope: !1263, file: !3, line: 192, type: !37)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 191, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 190, column: 7)
!1265 = !DILocalVariable(name: "s_major", scope: !1266, file: !3, line: 228, type: !35)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 227, column: 7)
!1267 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 208, column: 5)
!1268 = !DILocalVariable(name: "s_minor", scope: !1266, file: !3, line: 229, type: !35)
!1269 = !DILocalVariable(name: "i_major", scope: !1266, file: !3, line: 230, type: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1271, line: 102, baseType: !1272)
!1271 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !67, line: 73, baseType: !94)
!1273 = !DILocalVariable(name: "i_minor", scope: !1266, file: !3, line: 230, type: !1270)
!1274 = !DILocalVariable(name: "device", scope: !1266, file: !3, line: 231, type: !173)
!1275 = !DILabel(scope: !1267, name: "block_or_character", file: !3, line: 226)
!1276 = !DILocation(line: 0, scope: !1245)
!1277 = !DILocation(line: 104, column: 21, scope: !1245)
!1278 = !DILocation(line: 104, column: 3, scope: !1245)
!1279 = !DILocation(line: 105, column: 3, scope: !1245)
!1280 = !DILocation(line: 106, column: 3, scope: !1245)
!1281 = !DILocation(line: 107, column: 3, scope: !1245)
!1282 = !DILocation(line: 109, column: 3, scope: !1245)
!1283 = !DILocation(line: 111, column: 3, scope: !1245)
!1284 = !DILocation(line: 111, column: 18, scope: !1245)
!1285 = !DILocation(line: 116, column: 28, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 114, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 112, column: 5)
!1288 = !DILocation(line: 117, column: 11, scope: !1286)
!1289 = distinct !{!1289, !1283, !1290}
!1290 = !DILocation(line: 143, column: 5, scope: !1245)
!1291 = !DILocation(line: 0, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 119, column: 15)
!1293 = !DILocation(line: 131, column: 20, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 131, column: 20)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 124, column: 20)
!1296 = !DILocation(line: 131, column: 20, scope: !1295)
!1297 = !DILocation(line: 134, column: 22, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 132, column: 13)
!1299 = !DILocation(line: 133, column: 15, scope: !1298)
!1300 = !DILocation(line: 136, column: 13, scope: !1298)
!1301 = !DILocation(line: 138, column: 9, scope: !1286)
!1302 = !DILocation(line: 139, column: 9, scope: !1286)
!1303 = !DILocation(line: 141, column: 11, scope: !1286)
!1304 = !DILocation(line: 146, column: 7, scope: !1260)
!1305 = !DILocation(line: 146, column: 7, scope: !1245)
!1306 = !DILocation(line: 149, column: 36, scope: !1259)
!1307 = !DILocation(line: 0, scope: !1259)
!1308 = !DILocation(line: 150, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 150, column: 11)
!1310 = !DILocation(line: 150, column: 11, scope: !1259)
!1311 = !DILocation(line: 151, column: 9, scope: !1309)
!1312 = !DILocation(line: 152, column: 21, scope: !1259)
!1313 = !DILocation(line: 153, column: 7, scope: !1259)
!1314 = !DILocation(line: 154, column: 17, scope: !1259)
!1315 = !DILocation(line: 155, column: 13, scope: !1259)
!1316 = !DILocation(line: 155, column: 7, scope: !1259)
!1317 = !DILocation(line: 156, column: 19, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 156, column: 11)
!1319 = !DILocation(line: 156, column: 11, scope: !1259)
!1320 = !DILocation(line: 157, column: 9, scope: !1318)
!1321 = !DILocation(line: 164, column: 32, scope: !1245)
!1322 = !{!1323, !1323, i64 0}
!1323 = !{!"int", !1200, i64 0}
!1324 = !DILocation(line: 164, column: 29, scope: !1245)
!1325 = !DILocation(line: 165, column: 24, scope: !1245)
!1326 = !DILocation(line: 165, column: 35, scope: !1245)
!1327 = !DILocation(line: 165, column: 39, scope: !1245)
!1328 = !DILocation(line: 165, column: 46, scope: !1245)
!1329 = !DILocation(line: 165, column: 49, scope: !1245)
!1330 = !{!1200, !1200, i64 0}
!1331 = !DILocation(line: 165, column: 69, scope: !1245)
!1332 = !DILocation(line: 164, column: 23, scope: !1245)
!1333 = !DILocation(line: 168, column: 12, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 168, column: 7)
!1335 = !DILocation(line: 168, column: 7, scope: !1334)
!1336 = !DILocation(line: 168, column: 21, scope: !1334)
!1337 = !DILocation(line: 168, column: 7, scope: !1245)
!1338 = !DILocation(line: 170, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 169, column: 5)
!1340 = !DILocation(line: 171, column: 22, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 170, column: 11)
!1342 = !DILocation(line: 171, column: 9, scope: !1341)
!1343 = !DILocation(line: 173, column: 22, scope: !1341)
!1344 = !DILocation(line: 173, column: 70, scope: !1341)
!1345 = !DILocation(line: 173, column: 60, scope: !1341)
!1346 = !DILocation(line: 173, column: 53, scope: !1341)
!1347 = !DILocation(line: 173, column: 9, scope: !1341)
!1348 = !DILocation(line: 174, column: 34, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 174, column: 11)
!1350 = !DILocation(line: 174, column: 44, scope: !1349)
!1351 = !DILocation(line: 174, column: 42, scope: !1349)
!1352 = !DILocation(line: 174, column: 51, scope: !1349)
!1353 = !DILocation(line: 174, column: 11, scope: !1339)
!1354 = !DILocation(line: 175, column: 9, scope: !1349)
!1355 = !DILocation(line: 177, column: 7, scope: !1339)
!1356 = !DILocation(line: 180, column: 25, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 180, column: 7)
!1358 = !DILocation(line: 180, column: 7, scope: !1245)
!1359 = !DILocation(line: 182, column: 20, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 181, column: 5)
!1361 = !DILocation(line: 183, column: 26, scope: !1360)
!1362 = !DILocation(line: 183, column: 33, scope: !1360)
!1363 = !DILocation(line: 183, column: 21, scope: !1360)
!1364 = !DILocation(line: 183, column: 14, scope: !1360)
!1365 = !DILocation(line: 182, column: 7, scope: !1360)
!1366 = !DILocation(line: 184, column: 34, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 184, column: 11)
!1368 = !DILocation(line: 184, column: 44, scope: !1367)
!1369 = !DILocation(line: 184, column: 42, scope: !1367)
!1370 = !DILocation(line: 184, column: 51, scope: !1367)
!1371 = !DILocation(line: 184, column: 11, scope: !1360)
!1372 = !DILocation(line: 185, column: 9, scope: !1367)
!1373 = !DILocation(line: 187, column: 7, scope: !1360)
!1374 = !DILocation(line: 207, column: 23, scope: !1245)
!1375 = !DILocation(line: 207, column: 11, scope: !1245)
!1376 = !DILocation(line: 207, column: 3, scope: !1245)
!1377 = !DILocation(line: 224, column: 7, scope: !1267)
!1378 = !DILocation(line: 0, scope: !1267)
!1379 = !DILocation(line: 226, column: 5, scope: !1267)
!1380 = !DILocation(line: 228, column: 43, scope: !1266)
!1381 = !DILocation(line: 228, column: 31, scope: !1266)
!1382 = !DILocation(line: 0, scope: !1266)
!1383 = !DILocation(line: 229, column: 43, scope: !1266)
!1384 = !DILocation(line: 229, column: 31, scope: !1266)
!1385 = !DILocation(line: 230, column: 9, scope: !1266)
!1386 = !DILocation(line: 233, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 233, column: 13)
!1388 = !DILocation(line: 233, column: 57, scope: !1387)
!1389 = !DILocation(line: 234, column: 16, scope: !1387)
!1390 = !DILocation(line: 234, column: 24, scope: !1387)
!1391 = !DILocation(line: 234, column: 13, scope: !1387)
!1392 = !DILocation(line: 235, column: 11, scope: !1387)
!1393 = !DILocation(line: 238, column: 13, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 238, column: 13)
!1395 = !DILocation(line: 238, column: 57, scope: !1394)
!1396 = !DILocation(line: 239, column: 13, scope: !1394)
!1397 = !DILocation(line: 239, column: 16, scope: !1394)
!1398 = !{!1399, !1399, i64 0}
!1399 = !{!"long", !1200, i64 0}
!1400 = !DILocation(line: 239, column: 24, scope: !1394)
!1401 = !DILocation(line: 238, column: 13, scope: !1266)
!1402 = !DILocation(line: 240, column: 11, scope: !1394)
!1403 = !DILocation(line: 243, column: 18, scope: !1266)
!1404 = !DILocalVariable(name: "__major", arg: 1, scope: !1405, file: !1406, line: 43, type: !7)
!1405 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !1406, file: !1406, line: 43, type: !1407, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1406 = !DIFile(filename: "/usr/include/sys/sysmacros.h", directory: "")
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!175, !7, !7}
!1409 = !{!1404, !1410, !1411}
!1410 = !DILocalVariable(name: "__minor", arg: 2, scope: !1405, file: !1406, line: 43, type: !7)
!1411 = !DILocalVariable(name: "__dev", scope: !1405, file: !1406, line: 43, type: !175)
!1412 = !DILocation(line: 0, scope: !1405, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 243, column: 18, scope: !1266)
!1414 = !DILocation(line: 43, column: 1, scope: !1405, inlinedAt: !1413)
!1415 = !DILocation(line: 245, column: 20, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 245, column: 13)
!1417 = !DILocation(line: 245, column: 13, scope: !1266)
!1418 = !DILocation(line: 246, column: 11, scope: !1416)
!1419 = !DILocation(line: 253, column: 25, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 253, column: 13)
!1421 = !DILocation(line: 253, column: 20, scope: !1420)
!1422 = !DILocation(line: 253, column: 42, scope: !1420)
!1423 = !DILocation(line: 0, scope: !1424, inlinedAt: !1431)
!1424 = distinct !DISubprogram(name: "mknod", scope: !151, file: !151, line: 483, type: !1425, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!37, !35, !426, !175}
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "__path", arg: 1, scope: !1424, file: !151, line: 483, type: !35)
!1429 = !DILocalVariable(name: "__mode", arg: 2, scope: !1424, file: !151, line: 483, type: !426)
!1430 = !DILocalVariable(name: "__dev", arg: 3, scope: !1424, file: !151, line: 483, type: !175)
!1431 = distinct !DILocation(line: 253, column: 13, scope: !1420)
!1432 = !DILocation(line: 485, column: 10, scope: !1424, inlinedAt: !1431)
!1433 = !DILocation(line: 485, column: 3, scope: !1424, inlinedAt: !1431)
!1434 = !DILocation(line: 253, column: 63, scope: !1420)
!1435 = !DILocation(line: 253, column: 13, scope: !1266)
!1436 = !DILocation(line: 254, column: 11, scope: !1420)
!1437 = !DILocation(line: 255, column: 7, scope: !1267)
!1438 = !DILocation(line: 256, column: 7, scope: !1267)
!1439 = !DILocation(line: 261, column: 19, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 261, column: 11)
!1441 = !DILocation(line: 261, column: 11, scope: !1440)
!1442 = !DILocation(line: 261, column: 42, scope: !1440)
!1443 = !DILocation(line: 261, column: 11, scope: !1267)
!1444 = !DILocation(line: 262, column: 9, scope: !1440)
!1445 = !DILocation(line: 266, column: 20, scope: !1267)
!1446 = !DILocation(line: 266, column: 61, scope: !1267)
!1447 = !DILocation(line: 266, column: 68, scope: !1267)
!1448 = !DILocation(line: 266, column: 56, scope: !1267)
!1449 = !DILocation(line: 266, column: 49, scope: !1267)
!1450 = !DILocation(line: 266, column: 7, scope: !1267)
!1451 = !DILocation(line: 267, column: 7, scope: !1267)
!1452 = !DILocation(line: 270, column: 22, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 270, column: 7)
!1454 = !DILocation(line: 270, column: 38, scope: !1453)
!1455 = !DILocation(line: 270, column: 33, scope: !1453)
!1456 = !DILocation(line: 270, column: 25, scope: !1453)
!1457 = !DILocation(line: 270, column: 56, scope: !1453)
!1458 = !DILocation(line: 270, column: 7, scope: !1245)
!1459 = !DILocation(line: 271, column: 5, scope: !1453)
!1460 = !DILocation(line: 274, column: 3, scope: !1245)
!1461 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !199, file: !199, line: 51, type: !102, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1462)
!1462 = !{!1463}
!1463 = !DILocalVariable(name: "file", arg: 1, scope: !1461, file: !199, line: 51, type: !35)
!1464 = !DILocation(line: 0, scope: !1461)
!1465 = !DILocation(line: 53, column: 13, scope: !1461)
!1466 = !DILocation(line: 54, column: 1, scope: !1461)
!1467 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !199, file: !199, line: 88, type: !1468, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !157}
!1470 = !{!1471}
!1471 = !DILocalVariable(name: "ignore", arg: 1, scope: !1467, file: !199, line: 88, type: !157)
!1472 = !DILocation(line: 0, scope: !1467)
!1473 = !DILocation(line: 90, column: 16, scope: !1467)
!1474 = !{!1475, !1475, i64 0}
!1475 = !{!"_Bool", !1200, i64 0}
!1476 = !DILocation(line: 91, column: 1, scope: !1467)
!1477 = distinct !DISubprogram(name: "close_stdout", scope: !199, file: !199, line: 117, type: !119, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1478)
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "write_error", scope: !1480, file: !199, line: 122, type: !35)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !199, line: 121, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !199, line: 119, column: 7)
!1482 = !DILocation(line: 119, column: 21, scope: !1481)
!1483 = !DILocation(line: 119, column: 7, scope: !1481)
!1484 = !DILocation(line: 119, column: 29, scope: !1481)
!1485 = !DILocation(line: 120, column: 7, scope: !1481)
!1486 = !DILocation(line: 120, column: 12, scope: !1481)
!1487 = !{i8 0, i8 2}
!1488 = !DILocation(line: 120, column: 25, scope: !1481)
!1489 = !DILocation(line: 120, column: 28, scope: !1481)
!1490 = !DILocation(line: 120, column: 34, scope: !1481)
!1491 = !DILocation(line: 119, column: 7, scope: !1477)
!1492 = !DILocation(line: 122, column: 33, scope: !1480)
!1493 = !DILocation(line: 0, scope: !1480)
!1494 = !DILocation(line: 123, column: 11, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1480, file: !199, line: 123, column: 11)
!1496 = !DILocation(line: 0, scope: !1495)
!1497 = !DILocation(line: 123, column: 11, scope: !1480)
!1498 = !DILocation(line: 124, column: 36, scope: !1495)
!1499 = !DILocation(line: 124, column: 9, scope: !1495)
!1500 = !DILocation(line: 127, column: 9, scope: !1495)
!1501 = !DILocation(line: 129, column: 14, scope: !1480)
!1502 = !DILocation(line: 129, column: 7, scope: !1480)
!1503 = !DILocation(line: 134, column: 42, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1477, file: !199, line: 134, column: 7)
!1505 = !DILocation(line: 134, column: 28, scope: !1504)
!1506 = !DILocation(line: 134, column: 50, scope: !1504)
!1507 = !DILocation(line: 134, column: 7, scope: !1477)
!1508 = !DILocation(line: 135, column: 12, scope: !1504)
!1509 = !DILocation(line: 135, column: 5, scope: !1504)
!1510 = !DILocation(line: 136, column: 1, scope: !1477)
!1511 = distinct !DISubprogram(name: "mode_compile", scope: !493, file: !493, line: 134, type: !1512, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1522)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !35}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !493, line: 98, size: 128, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1515, file: !493, line: 100, baseType: !34, size: 8)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1515, file: !493, line: 101, baseType: !34, size: 8, offset: 8)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1515, file: !493, line: 102, baseType: !425, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1515, file: !493, line: 103, baseType: !425, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1515, file: !493, line: 104, baseType: !425, size: 32, offset: 96)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1530, !1531, !1532, !1534, !1538, !1540, !1541, !1542, !1543, !1544, !1547, !1548, !1549}
!1523 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1511, file: !493, line: 134, type: !35)
!1524 = !DILocalVariable(name: "mc", scope: !1511, file: !493, line: 137, type: !1514)
!1525 = !DILocalVariable(name: "used", scope: !1511, file: !493, line: 138, type: !92)
!1526 = !DILocalVariable(name: "p", scope: !1511, file: !493, line: 139, type: !35)
!1527 = !DILocalVariable(name: "octal_mode", scope: !1528, file: !493, line: 143, type: !7)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !493, line: 142, column: 5)
!1529 = distinct !DILexicalBlock(scope: !1511, file: !493, line: 141, column: 7)
!1530 = !DILocalVariable(name: "mode", scope: !1528, file: !493, line: 144, type: !425)
!1531 = !DILocalVariable(name: "mentioned", scope: !1528, file: !493, line: 145, type: !425)
!1532 = !DILocalVariable(name: "needed", scope: !1533, file: !493, line: 168, type: !92)
!1533 = distinct !DILexicalBlock(scope: !1511, file: !493, line: 167, column: 3)
!1534 = !DILocalVariable(name: "affected", scope: !1535, file: !493, line: 179, type: !425)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !493, line: 177, column: 5)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !493, line: 176, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1511, file: !493, line: 176, column: 3)
!1538 = !DILocalVariable(name: "op", scope: !1539, file: !493, line: 206, type: !34)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !493, line: 205, column: 9)
!1540 = !DILocalVariable(name: "value", scope: !1539, file: !493, line: 207, type: !425)
!1541 = !DILocalVariable(name: "mentioned", scope: !1539, file: !493, line: 208, type: !425)
!1542 = !DILocalVariable(name: "flag", scope: !1539, file: !493, line: 209, type: !34)
!1543 = !DILocalVariable(name: "change", scope: !1539, file: !493, line: 210, type: !1514)
!1544 = !DILocalVariable(name: "octal_mode", scope: !1545, file: !493, line: 217, type: !7)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !493, line: 216, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !493, line: 213, column: 13)
!1547 = !DILabel(scope: !1535, name: "no_more_affected", file: !493, line: 202)
!1548 = !DILabel(scope: !1546, name: "no_more_values", file: !493, line: 284)
!1549 = !DILabel(scope: !1511, name: "invalid", file: !493, line: 307)
!1550 = !DILocation(line: 0, scope: !1511)
!1551 = !DILocation(line: 141, column: 14, scope: !1529)
!1552 = !DILocation(line: 141, column: 27, scope: !1529)
!1553 = !DILocation(line: 150, column: 41, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1528, file: !493, line: 149, column: 9)
!1555 = !DILocation(line: 0, scope: !1528)
!1556 = !DILocation(line: 150, column: 26, scope: !1554)
!1557 = !DILocation(line: 150, column: 43, scope: !1554)
!1558 = !DILocation(line: 150, column: 39, scope: !1554)
!1559 = !DILocation(line: 150, column: 46, scope: !1554)
!1560 = !DILocation(line: 151, column: 20, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1554, file: !493, line: 151, column: 15)
!1562 = !DILocation(line: 151, column: 15, scope: !1554)
!1563 = !DILocation(line: 154, column: 21, scope: !1528)
!1564 = !DILocation(line: 154, column: 24, scope: !1528)
!1565 = distinct !{!1565, !1566, !1567}
!1566 = !DILocation(line: 148, column: 7, scope: !1528)
!1567 = !DILocation(line: 154, column: 35, scope: !1528)
!1568 = !DILocation(line: 156, column: 11, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1528, file: !493, line: 156, column: 11)
!1570 = !DILocation(line: 156, column: 11, scope: !1528)
!1571 = !DILocation(line: 160, column: 22, scope: !1528)
!1572 = !DILocation(line: 160, column: 36, scope: !1528)
!1573 = !DILocation(line: 160, column: 20, scope: !1528)
!1574 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1575, file: !493, line: 112, type: !425)
!1575 = distinct !DISubprogram(name: "make_node_op_equals", scope: !493, file: !493, line: 112, type: !1576, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1514, !425, !425}
!1578 = !{!1574, !1579, !1580}
!1579 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1575, file: !493, line: 112, type: !425)
!1580 = !DILocalVariable(name: "p", scope: !1575, file: !493, line: 114, type: !1514)
!1581 = !DILocation(line: 0, scope: !1575, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 163, column: 14, scope: !1528)
!1583 = !DILocation(line: 114, column: 27, scope: !1575, inlinedAt: !1582)
!1584 = !DILocation(line: 115, column: 9, scope: !1575, inlinedAt: !1582)
!1585 = !{!1586, !1200, i64 0}
!1586 = !{!"mode_change", !1200, i64 0, !1200, i64 1, !1323, i64 4, !1323, i64 8, !1323, i64 12}
!1587 = !DILocation(line: 116, column: 6, scope: !1575, inlinedAt: !1582)
!1588 = !DILocation(line: 116, column: 11, scope: !1575, inlinedAt: !1582)
!1589 = !{!1586, !1200, i64 1}
!1590 = !DILocation(line: 117, column: 6, scope: !1575, inlinedAt: !1582)
!1591 = !DILocation(line: 117, column: 15, scope: !1575, inlinedAt: !1582)
!1592 = !{!1586, !1323, i64 4}
!1593 = !DILocation(line: 118, column: 6, scope: !1575, inlinedAt: !1582)
!1594 = !DILocation(line: 118, column: 12, scope: !1575, inlinedAt: !1582)
!1595 = !{!1586, !1323, i64 8}
!1596 = !DILocation(line: 119, column: 6, scope: !1575, inlinedAt: !1582)
!1597 = !DILocation(line: 119, column: 16, scope: !1575, inlinedAt: !1582)
!1598 = !{!1586, !1323, i64 12}
!1599 = !DILocation(line: 120, column: 8, scope: !1575, inlinedAt: !1582)
!1600 = !DILocation(line: 120, column: 13, scope: !1575, inlinedAt: !1582)
!1601 = !DILocation(line: 163, column: 7, scope: !1528)
!1602 = !DILocation(line: 169, column: 27, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !493, line: 169, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1533, file: !493, line: 169, column: 5)
!1605 = !DILocation(line: 0, scope: !1604)
!1606 = !DILocation(line: 0, scope: !1533)
!1607 = !DILocation(line: 169, column: 5, scope: !1604)
!1608 = !DILocation(line: 170, column: 41, scope: !1603)
!1609 = !DILocation(line: 170, column: 14, scope: !1603)
!1610 = !DILocation(line: 169, column: 32, scope: !1603)
!1611 = !DILocation(line: 169, column: 5, scope: !1603)
!1612 = distinct !{!1612, !1607, !1613}
!1613 = !DILocation(line: 170, column: 53, scope: !1604)
!1614 = !DILocalVariable(name: "n", arg: 1, scope: !1615, file: !315, line: 99, type: !92)
!1615 = distinct !DISubprogram(name: "xnmalloc", scope: !315, file: !315, line: 99, type: !1616, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!90, !92, !92}
!1618 = !{!1614, !1619}
!1619 = !DILocalVariable(name: "s", arg: 2, scope: !1615, file: !315, line: 99, type: !92)
!1620 = !DILocation(line: 0, scope: !1615, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 171, column: 10, scope: !1533)
!1622 = !DILocation(line: 101, column: 7, scope: !1623, inlinedAt: !1621)
!1623 = distinct !DILexicalBlock(scope: !1615, file: !315, line: 101, column: 7)
!1624 = !DILocation(line: 101, column: 7, scope: !1615, inlinedAt: !1621)
!1625 = !DILocation(line: 102, column: 5, scope: !1623, inlinedAt: !1621)
!1626 = !DILocation(line: 103, column: 21, scope: !1615, inlinedAt: !1621)
!1627 = !DILocation(line: 103, column: 10, scope: !1615, inlinedAt: !1621)
!1628 = !DILocation(line: 171, column: 10, scope: !1533)
!1629 = !DILocation(line: 176, column: 8, scope: !1537)
!1630 = !DILocation(line: 0, scope: !1537)
!1631 = !DILocation(line: 138, column: 10, scope: !1511)
!1632 = !DILocation(line: 0, scope: !1535)
!1633 = !DILocation(line: 182, column: 7, scope: !1535)
!1634 = !DILocation(line: 183, column: 17, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !493, line: 182, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1535, file: !493, line: 182, column: 7)
!1637 = !DILocation(line: 183, column: 9, scope: !1635)
!1638 = !DILocation(line: 212, column: 11, scope: !1539)
!1639 = !DILocation(line: 192, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !493, line: 184, column: 11)
!1641 = !DILocation(line: 195, column: 13, scope: !1640)
!1642 = !DILocation(line: 198, column: 13, scope: !1640)
!1643 = !DILocation(line: 0, scope: !1640)
!1644 = !DILocation(line: 182, column: 16, scope: !1635)
!1645 = !DILocation(line: 182, column: 7, scope: !1635)
!1646 = distinct !{!1646, !1647, !1648}
!1647 = !DILocation(line: 182, column: 7, scope: !1636)
!1648 = !DILocation(line: 201, column: 11, scope: !1636)
!1649 = !DILocation(line: 206, column: 21, scope: !1539)
!1650 = !DILocation(line: 179, column: 14, scope: !1535)
!1651 = !DILocation(line: 206, column: 23, scope: !1539)
!1652 = !DILocation(line: 0, scope: !1539)
!1653 = !DILocation(line: 212, column: 19, scope: !1539)
!1654 = !DILocation(line: 219, column: 17, scope: !1545)
!1655 = !DILocation(line: 221, column: 51, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1545, file: !493, line: 220, column: 19)
!1657 = !DILocation(line: 0, scope: !1545)
!1658 = !DILocation(line: 221, column: 36, scope: !1656)
!1659 = !DILocation(line: 221, column: 53, scope: !1656)
!1660 = !DILocation(line: 221, column: 49, scope: !1656)
!1661 = !DILocation(line: 221, column: 56, scope: !1656)
!1662 = !DILocation(line: 222, column: 30, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !493, line: 222, column: 25)
!1664 = !DILocation(line: 222, column: 25, scope: !1656)
!1665 = !DILocation(line: 225, column: 31, scope: !1545)
!1666 = !DILocation(line: 225, column: 34, scope: !1545)
!1667 = distinct !{!1667, !1654, !1668}
!1668 = !DILocation(line: 225, column: 45, scope: !1545)
!1669 = !DILocation(line: 227, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1545, file: !493, line: 227, column: 21)
!1671 = !DILocation(line: 227, column: 30, scope: !1670)
!1672 = !DILocation(line: 227, column: 37, scope: !1670)
!1673 = !DILocation(line: 239, column: 16, scope: !1546)
!1674 = !DILocation(line: 240, column: 15, scope: !1546)
!1675 = !DILocation(line: 245, column: 16, scope: !1546)
!1676 = !DILocation(line: 246, column: 15, scope: !1546)
!1677 = !DILocation(line: 251, column: 16, scope: !1546)
!1678 = !DILocation(line: 252, column: 15, scope: !1546)
!1679 = !DILocation(line: 259, column: 25, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !493, line: 258, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1546, file: !493, line: 258, column: 15)
!1682 = !DILocation(line: 0, scope: !1546)
!1683 = !DILocation(line: 256, column: 20, scope: !1546)
!1684 = !DILocation(line: 259, column: 17, scope: !1680)
!1685 = !DILocation(line: 262, column: 27, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !493, line: 260, column: 19)
!1687 = !DILocation(line: 263, column: 21, scope: !1686)
!1688 = !DILocation(line: 265, column: 27, scope: !1686)
!1689 = !DILocation(line: 266, column: 21, scope: !1686)
!1690 = !DILocation(line: 268, column: 27, scope: !1686)
!1691 = !DILocation(line: 269, column: 21, scope: !1686)
!1692 = !DILocation(line: 275, column: 27, scope: !1686)
!1693 = !DILocation(line: 276, column: 21, scope: !1686)
!1694 = !DILocation(line: 279, column: 27, scope: !1686)
!1695 = !DILocation(line: 280, column: 21, scope: !1686)
!1696 = !DILocation(line: 258, column: 24, scope: !1680)
!1697 = !DILocation(line: 258, column: 15, scope: !1680)
!1698 = distinct !{!1698, !1699, !1700}
!1699 = !DILocation(line: 258, column: 15, scope: !1681)
!1700 = !DILocation(line: 283, column: 19, scope: !1681)
!1701 = !DILocation(line: 208, column: 18, scope: !1539)
!1702 = !DILocation(line: 287, column: 28, scope: !1539)
!1703 = !DILocation(line: 288, column: 19, scope: !1539)
!1704 = !DILocation(line: 288, column: 22, scope: !1539)
!1705 = !DILocation(line: 289, column: 19, scope: !1539)
!1706 = !DILocation(line: 289, column: 24, scope: !1539)
!1707 = !DILocation(line: 290, column: 19, scope: !1539)
!1708 = !DILocation(line: 290, column: 28, scope: !1539)
!1709 = !DILocation(line: 291, column: 19, scope: !1539)
!1710 = !DILocation(line: 291, column: 25, scope: !1539)
!1711 = !DILocation(line: 293, column: 14, scope: !1539)
!1712 = !DILocation(line: 292, column: 19, scope: !1539)
!1713 = !DILocation(line: 292, column: 29, scope: !1539)
!1714 = !DILocation(line: 295, column: 14, scope: !1535)
!1715 = !DILocation(line: 295, column: 24, scope: !1535)
!1716 = !DILocation(line: 176, column: 28, scope: !1536)
!1717 = !DILocation(line: 176, column: 3, scope: !1536)
!1718 = distinct !{!1718, !1719, !1720}
!1719 = !DILocation(line: 176, column: 3, scope: !1537)
!1720 = !DILocation(line: 299, column: 5, scope: !1537)
!1721 = !DILocation(line: 303, column: 16, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !493, line: 302, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1511, file: !493, line: 301, column: 7)
!1724 = !DILocation(line: 303, column: 21, scope: !1722)
!1725 = !DILocation(line: 304, column: 7, scope: !1722)
!1726 = !DILocation(line: 307, column: 1, scope: !1511)
!1727 = !DILocation(line: 308, column: 3, scope: !1511)
!1728 = !DILocation(line: 309, column: 3, scope: !1511)
!1729 = !DILocation(line: 310, column: 1, scope: !1511)
!1730 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !493, file: !493, line: 316, type: !1512, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1731)
!1731 = !{!1732, !1733}
!1732 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1730, file: !493, line: 316, type: !35)
!1733 = !DILocalVariable(name: "ref_stats", scope: !1730, file: !493, line: 318, type: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !445, line: 46, size: 1152, elements: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1752, !1753, !1754}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1734, file: !445, line: 48, baseType: !175, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1734, file: !445, line: 53, baseType: !449, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1734, file: !445, line: 61, baseType: !451, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1734, file: !445, line: 62, baseType: !426, size: 32, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1734, file: !445, line: 64, baseType: !454, size: 32, offset: 224)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1734, file: !445, line: 65, baseType: !456, size: 32, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1734, file: !445, line: 67, baseType: !37, size: 32, offset: 288)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1734, file: !445, line: 69, baseType: !175, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1734, file: !445, line: 74, baseType: !66, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1734, file: !445, line: 78, baseType: !461, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1734, file: !445, line: 80, baseType: !463, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1734, file: !445, line: 91, baseType: !1748, size: 128, offset: 576)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !466, line: 10, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1748, file: !466, line: 12, baseType: !469, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1748, file: !466, line: 16, baseType: !471, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1734, file: !445, line: 92, baseType: !1748, size: 128, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1734, file: !445, line: 93, baseType: !1748, size: 128, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1734, file: !445, line: 106, baseType: !475, size: 192, offset: 960)
!1755 = !DILocation(line: 0, scope: !1730)
!1756 = !DILocation(line: 318, column: 3, scope: !1730)
!1757 = !DILocation(line: 318, column: 15, scope: !1730)
!1758 = !DILocalVariable(name: "__path", arg: 1, scope: !1759, file: !151, line: 453, type: !35)
!1759 = distinct !DISubprogram(name: "stat", scope: !151, file: !151, line: 453, type: !1760, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1763)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!37, !35, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1763 = !{!1758, !1764}
!1764 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1759, file: !151, line: 453, type: !1762)
!1765 = !DILocation(line: 0, scope: !1759, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 320, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1730, file: !493, line: 320, column: 7)
!1768 = !DILocation(line: 455, column: 10, scope: !1759, inlinedAt: !1766)
!1769 = !DILocation(line: 320, column: 35, scope: !1767)
!1770 = !DILocation(line: 320, column: 7, scope: !1730)
!1771 = !DILocation(line: 322, column: 41, scope: !1730)
!1772 = !{!1773, !1323, i64 24}
!1773 = !{!"stat", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1323, i64 24, !1323, i64 28, !1323, i64 32, !1323, i64 36, !1399, i64 40, !1399, i64 48, !1399, i64 56, !1399, i64 64, !1774, i64 72, !1774, i64 88, !1774, i64 104, !1200, i64 120}
!1774 = !{!"timespec", !1399, i64 0, !1399, i64 8}
!1775 = !DILocation(line: 0, scope: !1575, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 322, column: 10, scope: !1730)
!1777 = !DILocation(line: 114, column: 27, scope: !1575, inlinedAt: !1776)
!1778 = !DILocation(line: 115, column: 9, scope: !1575, inlinedAt: !1776)
!1779 = !DILocation(line: 116, column: 6, scope: !1575, inlinedAt: !1776)
!1780 = !DILocation(line: 116, column: 11, scope: !1575, inlinedAt: !1776)
!1781 = !DILocation(line: 117, column: 6, scope: !1575, inlinedAt: !1776)
!1782 = !DILocation(line: 117, column: 15, scope: !1575, inlinedAt: !1776)
!1783 = !DILocation(line: 118, column: 6, scope: !1575, inlinedAt: !1776)
!1784 = !DILocation(line: 118, column: 12, scope: !1575, inlinedAt: !1776)
!1785 = !DILocation(line: 119, column: 6, scope: !1575, inlinedAt: !1776)
!1786 = !DILocation(line: 119, column: 16, scope: !1575, inlinedAt: !1776)
!1787 = !DILocation(line: 120, column: 8, scope: !1575, inlinedAt: !1776)
!1788 = !DILocation(line: 120, column: 13, scope: !1575, inlinedAt: !1776)
!1789 = !DILocation(line: 322, column: 3, scope: !1730)
!1790 = !DILocation(line: 323, column: 1, scope: !1730)
!1791 = distinct !DISubprogram(name: "mode_adjust", scope: !493, file: !493, line: 339, type: !1792, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1797)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!425, !425, !157, !425, !1794, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1809, !1810, !1811}
!1798 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1791, file: !493, line: 339, type: !425)
!1799 = !DILocalVariable(name: "dir", arg: 2, scope: !1791, file: !493, line: 339, type: !157)
!1800 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1791, file: !493, line: 339, type: !425)
!1801 = !DILocalVariable(name: "changes", arg: 4, scope: !1791, file: !493, line: 340, type: !1794)
!1802 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1791, file: !493, line: 340, type: !1796)
!1803 = !DILocalVariable(name: "newmode", scope: !1791, file: !493, line: 343, type: !425)
!1804 = !DILocalVariable(name: "mode_bits", scope: !1791, file: !493, line: 346, type: !425)
!1805 = !DILocalVariable(name: "affected", scope: !1806, file: !493, line: 350, type: !425)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !493, line: 349, column: 5)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !493, line: 348, column: 3)
!1808 = distinct !DILexicalBlock(scope: !1791, file: !493, line: 348, column: 3)
!1809 = !DILocalVariable(name: "omit_change", scope: !1806, file: !493, line: 351, type: !425)
!1810 = !DILocalVariable(name: "value", scope: !1806, file: !493, line: 353, type: !425)
!1811 = !DILocalVariable(name: "preserved", scope: !1812, file: !493, line: 393, type: !425)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !493, line: 392, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1806, file: !493, line: 387, column: 9)
!1814 = !DILocation(line: 0, scope: !1791)
!1815 = !DILocation(line: 343, column: 28, scope: !1791)
!1816 = !DILocation(line: 348, column: 19, scope: !1807)
!1817 = !DILocation(line: 348, column: 24, scope: !1807)
!1818 = !DILocation(line: 348, column: 3, scope: !1808)
!1819 = !DILocation(line: 0, scope: !1806)
!1820 = !DILocation(line: 0, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !493, line: 376, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1806, file: !493, line: 356, column: 9)
!1823 = !DILocation(line: 348, column: 10, scope: !1807)
!1824 = !DILocation(line: 350, column: 34, scope: !1806)
!1825 = !DILocation(line: 352, column: 52, scope: !1806)
!1826 = !DILocation(line: 352, column: 41, scope: !1806)
!1827 = !DILocation(line: 352, column: 39, scope: !1806)
!1828 = !DILocation(line: 353, column: 31, scope: !1806)
!1829 = !DILocation(line: 355, column: 7, scope: !1806)
!1830 = !DILocation(line: 362, column: 17, scope: !1822)
!1831 = !DILocation(line: 365, column: 28, scope: !1822)
!1832 = !DILocation(line: 365, column: 22, scope: !1822)
!1833 = !DILocation(line: 367, column: 30, scope: !1822)
!1834 = !DILocation(line: 367, column: 24, scope: !1822)
!1835 = !DILocation(line: 369, column: 30, scope: !1822)
!1836 = !DILocation(line: 369, column: 24, scope: !1822)
!1837 = !DILocation(line: 367, column: 21, scope: !1822)
!1838 = !DILocation(line: 369, column: 21, scope: !1822)
!1839 = !DILocation(line: 365, column: 17, scope: !1822)
!1840 = !DILocation(line: 371, column: 11, scope: !1822)
!1841 = !DILocation(line: 376, column: 24, scope: !1821)
!1842 = !DILocation(line: 376, column: 57, scope: !1821)
!1843 = !DILocation(line: 377, column: 19, scope: !1821)
!1844 = !DILocation(line: 376, column: 15, scope: !1822)
!1845 = !DILocation(line: 384, column: 17, scope: !1806)
!1846 = !DILocation(line: 384, column: 55, scope: !1806)
!1847 = !DILocation(line: 384, column: 53, scope: !1806)
!1848 = !DILocation(line: 384, column: 13, scope: !1806)
!1849 = !DILocation(line: 386, column: 24, scope: !1806)
!1850 = !DILocation(line: 386, column: 15, scope: !1806)
!1851 = !DILocation(line: 386, column: 7, scope: !1806)
!1852 = !DILocation(line: 393, column: 33, scope: !1812)
!1853 = !DILocation(line: 393, column: 59, scope: !1812)
!1854 = !DILocation(line: 0, scope: !1812)
!1855 = !DILocation(line: 394, column: 42, scope: !1812)
!1856 = !DILocation(line: 394, column: 23, scope: !1812)
!1857 = !DILocation(line: 395, column: 32, scope: !1812)
!1858 = !DILocation(line: 395, column: 45, scope: !1812)
!1859 = !DILocation(line: 400, column: 21, scope: !1813)
!1860 = !DILocation(line: 401, column: 19, scope: !1813)
!1861 = !DILocation(line: 402, column: 11, scope: !1813)
!1862 = !DILocation(line: 405, column: 21, scope: !1813)
!1863 = !DILocation(line: 406, column: 22, scope: !1813)
!1864 = !DILocation(line: 406, column: 19, scope: !1813)
!1865 = !DILocation(line: 407, column: 11, scope: !1813)
!1866 = !DILocation(line: 348, column: 45, scope: !1807)
!1867 = distinct !{!1867, !1818, !1868}
!1868 = !DILocation(line: 409, column: 5, scope: !1808)
!1869 = !DILocation(line: 346, column: 10, scope: !1791)
!1870 = !DILocation(line: 343, column: 10, scope: !1791)
!1871 = !DILocation(line: 411, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1791, file: !493, line: 411, column: 7)
!1873 = !DILocation(line: 411, column: 7, scope: !1791)
!1874 = !DILocation(line: 412, column: 17, scope: !1872)
!1875 = !DILocation(line: 412, column: 5, scope: !1872)
!1876 = !DILocation(line: 413, column: 3, scope: !1791)
!1877 = distinct !DISubprogram(name: "set_program_name", scope: !250, file: !250, line: 39, type: !102, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DILocalVariable(name: "argv0", arg: 1, scope: !1877, file: !250, line: 39, type: !35)
!1880 = !DILocalVariable(name: "slash", scope: !1877, file: !250, line: 46, type: !35)
!1881 = !DILocalVariable(name: "base", scope: !1877, file: !250, line: 47, type: !35)
!1882 = !DILocation(line: 0, scope: !1877)
!1883 = !DILocation(line: 51, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !250, line: 51, column: 7)
!1885 = !DILocation(line: 51, column: 7, scope: !1877)
!1886 = !DILocation(line: 55, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !250, line: 52, column: 5)
!1888 = !DILocation(line: 54, column: 7, scope: !1887)
!1889 = !DILocation(line: 56, column: 7, scope: !1887)
!1890 = !DILocation(line: 59, column: 11, scope: !1877)
!1891 = !DILocation(line: 60, column: 17, scope: !1877)
!1892 = !DILocation(line: 60, column: 11, scope: !1877)
!1893 = !DILocation(line: 61, column: 12, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1877, file: !250, line: 61, column: 7)
!1895 = !DILocation(line: 61, column: 20, scope: !1894)
!1896 = !DILocation(line: 61, column: 25, scope: !1894)
!1897 = !DILocation(line: 61, column: 42, scope: !1894)
!1898 = !DILocation(line: 61, column: 28, scope: !1894)
!1899 = !DILocation(line: 61, column: 61, scope: !1894)
!1900 = !DILocation(line: 61, column: 7, scope: !1877)
!1901 = !DILocation(line: 64, column: 11, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !250, line: 64, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !250, line: 62, column: 5)
!1904 = !DILocation(line: 64, column: 36, scope: !1902)
!1905 = !DILocation(line: 64, column: 11, scope: !1903)
!1906 = !DILocation(line: 66, column: 24, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !250, line: 65, column: 9)
!1908 = !DILocation(line: 70, column: 41, scope: !1907)
!1909 = !DILocation(line: 72, column: 9, scope: !1907)
!1910 = !DILocation(line: 84, column: 16, scope: !1877)
!1911 = !DILocation(line: 90, column: 27, scope: !1877)
!1912 = !DILocation(line: 92, column: 1, scope: !1877)
!1913 = distinct !DISubprogram(name: "clone_quoting_options", scope: !291, file: !291, line: 122, type: !1914, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1917)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1917 = !{!1918, !1919, !1920}
!1918 = !DILocalVariable(name: "o", arg: 1, scope: !1913, file: !291, line: 122, type: !1916)
!1919 = !DILocalVariable(name: "e", scope: !1913, file: !291, line: 124, type: !37)
!1920 = !DILocalVariable(name: "p", scope: !1913, file: !291, line: 125, type: !1916)
!1921 = !DILocation(line: 0, scope: !1913)
!1922 = !DILocation(line: 124, column: 11, scope: !1913)
!1923 = !DILocation(line: 125, column: 40, scope: !1913)
!1924 = !DILocation(line: 125, column: 31, scope: !1913)
!1925 = !DILocation(line: 127, column: 9, scope: !1913)
!1926 = !DILocation(line: 128, column: 3, scope: !1913)
!1927 = distinct !DISubprogram(name: "get_quoting_style", scope: !291, file: !291, line: 133, type: !1928, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!14, !323}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1927, file: !291, line: 133, type: !323)
!1932 = !DILocation(line: 0, scope: !1927)
!1933 = !DILocation(line: 135, column: 11, scope: !1927)
!1934 = !DILocation(line: 135, column: 46, scope: !1927)
!1935 = !{!1936, !1200, i64 0}
!1936 = !{!"quoting_options", !1200, i64 0, !1323, i64 4, !1200, i64 8, !1199, i64 40, !1199, i64 48}
!1937 = !DILocation(line: 135, column: 3, scope: !1927)
!1938 = distinct !DISubprogram(name: "set_quoting_style", scope: !291, file: !291, line: 141, type: !1939, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1916, !14}
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "o", arg: 1, scope: !1938, file: !291, line: 141, type: !1916)
!1943 = !DILocalVariable(name: "s", arg: 2, scope: !1938, file: !291, line: 141, type: !14)
!1944 = !DILocation(line: 0, scope: !1938)
!1945 = !DILocation(line: 143, column: 4, scope: !1938)
!1946 = !DILocation(line: 143, column: 39, scope: !1938)
!1947 = !DILocation(line: 143, column: 45, scope: !1938)
!1948 = !DILocation(line: 144, column: 1, scope: !1938)
!1949 = distinct !DISubprogram(name: "set_char_quoting", scope: !291, file: !291, line: 152, type: !1950, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!37, !1916, !34, !37}
!1952 = !{!1953, !1954, !1955, !1956, !1958, !1959, !1960}
!1953 = !DILocalVariable(name: "o", arg: 1, scope: !1949, file: !291, line: 152, type: !1916)
!1954 = !DILocalVariable(name: "c", arg: 2, scope: !1949, file: !291, line: 152, type: !34)
!1955 = !DILocalVariable(name: "i", arg: 3, scope: !1949, file: !291, line: 152, type: !37)
!1956 = !DILocalVariable(name: "uc", scope: !1949, file: !291, line: 154, type: !1957)
!1957 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1958 = !DILocalVariable(name: "p", scope: !1949, file: !291, line: 155, type: !160)
!1959 = !DILocalVariable(name: "shift", scope: !1949, file: !291, line: 157, type: !37)
!1960 = !DILocalVariable(name: "r", scope: !1949, file: !291, line: 158, type: !37)
!1961 = !DILocation(line: 0, scope: !1949)
!1962 = !DILocation(line: 156, column: 6, scope: !1949)
!1963 = !DILocation(line: 156, column: 62, scope: !1949)
!1964 = !DILocation(line: 156, column: 57, scope: !1949)
!1965 = !DILocation(line: 157, column: 15, scope: !1949)
!1966 = !DILocation(line: 158, column: 12, scope: !1949)
!1967 = !DILocation(line: 158, column: 15, scope: !1949)
!1968 = !DILocation(line: 158, column: 25, scope: !1949)
!1969 = !DILocation(line: 159, column: 13, scope: !1949)
!1970 = !DILocation(line: 159, column: 18, scope: !1949)
!1971 = !DILocation(line: 159, column: 23, scope: !1949)
!1972 = !DILocation(line: 159, column: 6, scope: !1949)
!1973 = !DILocation(line: 160, column: 3, scope: !1949)
!1974 = distinct !DISubprogram(name: "set_quoting_flags", scope: !291, file: !291, line: 168, type: !1975, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!37, !1916, !37}
!1977 = !{!1978, !1979, !1980}
!1978 = !DILocalVariable(name: "o", arg: 1, scope: !1974, file: !291, line: 168, type: !1916)
!1979 = !DILocalVariable(name: "i", arg: 2, scope: !1974, file: !291, line: 168, type: !37)
!1980 = !DILocalVariable(name: "r", scope: !1974, file: !291, line: 170, type: !37)
!1981 = !DILocation(line: 0, scope: !1974)
!1982 = !DILocation(line: 171, column: 8, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1974, file: !291, line: 171, column: 7)
!1984 = !DILocation(line: 171, column: 7, scope: !1974)
!1985 = !DILocation(line: 173, column: 10, scope: !1974)
!1986 = !{!1936, !1323, i64 4}
!1987 = !DILocation(line: 174, column: 12, scope: !1974)
!1988 = !DILocation(line: 175, column: 3, scope: !1974)
!1989 = distinct !DISubprogram(name: "set_custom_quoting", scope: !291, file: !291, line: 179, type: !1990, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1916, !35, !35}
!1992 = !{!1993, !1994, !1995}
!1993 = !DILocalVariable(name: "o", arg: 1, scope: !1989, file: !291, line: 179, type: !1916)
!1994 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1989, file: !291, line: 180, type: !35)
!1995 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1989, file: !291, line: 180, type: !35)
!1996 = !DILocation(line: 0, scope: !1989)
!1997 = !DILocation(line: 182, column: 8, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1989, file: !291, line: 182, column: 7)
!1999 = !DILocation(line: 182, column: 7, scope: !1989)
!2000 = !DILocation(line: 184, column: 6, scope: !1989)
!2001 = !DILocation(line: 184, column: 12, scope: !1989)
!2002 = !DILocation(line: 185, column: 8, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1989, file: !291, line: 185, column: 7)
!2004 = !DILocation(line: 185, column: 23, scope: !2003)
!2005 = !DILocation(line: 185, column: 19, scope: !2003)
!2006 = !DILocation(line: 186, column: 5, scope: !2003)
!2007 = !DILocation(line: 187, column: 6, scope: !1989)
!2008 = !DILocation(line: 187, column: 17, scope: !1989)
!2009 = !{!1936, !1199, i64 40}
!2010 = !DILocation(line: 188, column: 6, scope: !1989)
!2011 = !DILocation(line: 188, column: 18, scope: !1989)
!2012 = !{!1936, !1199, i64 48}
!2013 = !DILocation(line: 189, column: 1, scope: !1989)
!2014 = distinct !DISubprogram(name: "quotearg_buffer", scope: !291, file: !291, line: 784, type: !2015, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!92, !33, !92, !35, !92, !323}
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2018 = !DILocalVariable(name: "buffer", arg: 1, scope: !2014, file: !291, line: 784, type: !33)
!2019 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2014, file: !291, line: 784, type: !92)
!2020 = !DILocalVariable(name: "arg", arg: 3, scope: !2014, file: !291, line: 785, type: !35)
!2021 = !DILocalVariable(name: "argsize", arg: 4, scope: !2014, file: !291, line: 785, type: !92)
!2022 = !DILocalVariable(name: "o", arg: 5, scope: !2014, file: !291, line: 786, type: !323)
!2023 = !DILocalVariable(name: "p", scope: !2014, file: !291, line: 788, type: !323)
!2024 = !DILocalVariable(name: "e", scope: !2014, file: !291, line: 789, type: !37)
!2025 = !DILocalVariable(name: "r", scope: !2014, file: !291, line: 790, type: !92)
!2026 = !DILocation(line: 0, scope: !2014)
!2027 = !DILocation(line: 788, column: 37, scope: !2014)
!2028 = !DILocation(line: 789, column: 11, scope: !2014)
!2029 = !DILocation(line: 791, column: 43, scope: !2014)
!2030 = !DILocation(line: 791, column: 53, scope: !2014)
!2031 = !DILocation(line: 791, column: 60, scope: !2014)
!2032 = !DILocation(line: 792, column: 43, scope: !2014)
!2033 = !DILocation(line: 792, column: 58, scope: !2014)
!2034 = !DILocation(line: 790, column: 14, scope: !2014)
!2035 = !DILocation(line: 793, column: 9, scope: !2014)
!2036 = !DILocation(line: 794, column: 3, scope: !2014)
!2037 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !291, file: !291, line: 256, type: !2038, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2042)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!92, !33, !92, !35, !92, !14, !37, !2040, !35, !35}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2067, !2068, !2069, !2070, !2071, !2074, !2075, !2081, !2084, !2085, !2092, !2095, !2096, !2097, !2098, !2099, !2100}
!2043 = !DILocalVariable(name: "buffer", arg: 1, scope: !2037, file: !291, line: 256, type: !33)
!2044 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2037, file: !291, line: 256, type: !92)
!2045 = !DILocalVariable(name: "arg", arg: 3, scope: !2037, file: !291, line: 257, type: !35)
!2046 = !DILocalVariable(name: "argsize", arg: 4, scope: !2037, file: !291, line: 257, type: !92)
!2047 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2037, file: !291, line: 258, type: !14)
!2048 = !DILocalVariable(name: "flags", arg: 6, scope: !2037, file: !291, line: 258, type: !37)
!2049 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2037, file: !291, line: 259, type: !2040)
!2050 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2037, file: !291, line: 260, type: !35)
!2051 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2037, file: !291, line: 261, type: !35)
!2052 = !DILocalVariable(name: "i", scope: !2037, file: !291, line: 263, type: !92)
!2053 = !DILocalVariable(name: "len", scope: !2037, file: !291, line: 264, type: !92)
!2054 = !DILocalVariable(name: "orig_buffersize", scope: !2037, file: !291, line: 265, type: !92)
!2055 = !DILocalVariable(name: "quote_string", scope: !2037, file: !291, line: 266, type: !35)
!2056 = !DILocalVariable(name: "quote_string_len", scope: !2037, file: !291, line: 267, type: !92)
!2057 = !DILocalVariable(name: "backslash_escapes", scope: !2037, file: !291, line: 268, type: !157)
!2058 = !DILocalVariable(name: "unibyte_locale", scope: !2037, file: !291, line: 269, type: !157)
!2059 = !DILocalVariable(name: "elide_outer_quotes", scope: !2037, file: !291, line: 270, type: !157)
!2060 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2037, file: !291, line: 271, type: !157)
!2061 = !DILocalVariable(name: "encountered_single_quote", scope: !2037, file: !291, line: 272, type: !157)
!2062 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2037, file: !291, line: 273, type: !157)
!2063 = !DILocalVariable(name: "c", scope: !2064, file: !291, line: 402, type: !1957)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !291, line: 401, column: 5)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !291, line: 400, column: 3)
!2066 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 400, column: 3)
!2067 = !DILocalVariable(name: "esc", scope: !2064, file: !291, line: 403, type: !1957)
!2068 = !DILocalVariable(name: "is_right_quote", scope: !2064, file: !291, line: 404, type: !157)
!2069 = !DILocalVariable(name: "escaping", scope: !2064, file: !291, line: 405, type: !157)
!2070 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2064, file: !291, line: 406, type: !157)
!2071 = !DILocalVariable(name: "m", scope: !2072, file: !291, line: 610, type: !92)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 608, column: 11)
!2073 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 426, column: 9)
!2074 = !DILocalVariable(name: "printable", scope: !2072, file: !291, line: 612, type: !157)
!2075 = !DILocalVariable(name: "mbstate", scope: !2076, file: !291, line: 621, type: !2078)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !291, line: 620, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !291, line: 614, column: 17)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2079, line: 6, baseType: !2080)
!2079 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !343)
!2081 = !DILocalVariable(name: "w", scope: !2082, file: !291, line: 631, type: !2083)
!2082 = distinct !DILexicalBlock(scope: !2076, file: !291, line: 630, column: 19)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !93, line: 74, baseType: !37)
!2084 = !DILocalVariable(name: "bytes", scope: !2082, file: !291, line: 632, type: !92)
!2085 = !DILocalVariable(name: "j", scope: !2086, file: !291, line: 657, type: !92)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !291, line: 656, column: 27)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !291, line: 654, column: 29)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !291, line: 649, column: 23)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !291, line: 641, column: 30)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !291, line: 636, column: 30)
!2091 = distinct !DILexicalBlock(scope: !2082, file: !291, line: 634, column: 25)
!2092 = !DILocalVariable(name: "ilim", scope: !2093, file: !291, line: 684, type: !92)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !291, line: 681, column: 15)
!2094 = distinct !DILexicalBlock(scope: !2072, file: !291, line: 680, column: 17)
!2095 = !DILabel(scope: !2037, name: "process_input", file: !291, line: 314)
!2096 = !DILabel(scope: !2073, name: "c_and_shell_escape", file: !291, line: 512)
!2097 = !DILabel(scope: !2073, name: "c_escape", file: !291, line: 517)
!2098 = !DILabel(scope: !2064, name: "store_escape", file: !291, line: 719)
!2099 = !DILabel(scope: !2064, name: "store_c", file: !291, line: 722)
!2100 = !DILabel(scope: !2037, name: "force_outer_quoting_style", file: !291, line: 763)
!2101 = !DILocation(line: 0, scope: !2037)
!2102 = !DILocation(line: 269, column: 25, scope: !2037)
!2103 = !DILocation(line: 269, column: 36, scope: !2037)
!2104 = !DILocation(line: 270, column: 8, scope: !2037)
!2105 = !DILocation(line: 0, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 526, column: 15)
!2107 = !DILocation(line: 0, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !291, line: 462, column: 19)
!2109 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 455, column: 13)
!2110 = !DILocation(line: 0, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !291, line: 449, column: 20)
!2112 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 428, column: 15)
!2113 = !DILocation(line: 0, scope: !2076)
!2114 = !DILocation(line: 0, scope: !2082)
!2115 = !DILocation(line: 0, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 712, column: 11)
!2117 = !DILocation(line: 273, column: 3, scope: !2037)
!2118 = !DILocation(line: 265, column: 10, scope: !2037)
!2119 = !DILocation(line: 266, column: 15, scope: !2037)
!2120 = !DILocation(line: 267, column: 10, scope: !2037)
!2121 = !DILocation(line: 268, column: 8, scope: !2037)
!2122 = !DILocation(line: 271, column: 8, scope: !2037)
!2123 = !DILocation(line: 272, column: 8, scope: !2037)
!2124 = !DILocation(line: 273, column: 8, scope: !2037)
!2125 = !DILocation(line: 314, column: 2, scope: !2037)
!2126 = !DILocation(line: 316, column: 3, scope: !2037)
!2127 = !DILocation(line: 323, column: 11, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 317, column: 5)
!2129 = !DILocation(line: 323, column: 12, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2128, file: !291, line: 323, column: 11)
!2131 = !DILocation(line: 324, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !291, line: 324, column: 9)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !291, line: 324, column: 9)
!2134 = !DILocation(line: 324, column: 9, scope: !2133)
!2135 = !DILocation(line: 362, column: 26, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !291, line: 340, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !291, line: 339, column: 13)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !291, line: 338, column: 7)
!2139 = !DILocation(line: 363, column: 27, scope: !2136)
!2140 = !DILocation(line: 364, column: 11, scope: !2136)
!2141 = !DILocation(line: 365, column: 14, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !291, line: 365, column: 13)
!2143 = !DILocation(line: 365, column: 13, scope: !2138)
!2144 = !DILocation(line: 366, column: 43, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !291, line: 366, column: 11)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !291, line: 366, column: 11)
!2147 = !DILocation(line: 366, column: 11, scope: !2146)
!2148 = !DILocation(line: 367, column: 13, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !291, line: 367, column: 13)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !291, line: 367, column: 13)
!2151 = !DILocation(line: 367, column: 13, scope: !2150)
!2152 = !DILocation(line: 366, column: 70, scope: !2145)
!2153 = distinct !{!2153, !2147, !2154}
!2154 = !DILocation(line: 367, column: 13, scope: !2146)
!2155 = !DILocation(line: 264, column: 10, scope: !2037)
!2156 = !DILocation(line: 370, column: 28, scope: !2138)
!2157 = !DILocation(line: 372, column: 7, scope: !2128)
!2158 = !DILocation(line: 376, column: 7, scope: !2128)
!2159 = !DILocation(line: 379, column: 7, scope: !2128)
!2160 = !DILocation(line: 381, column: 12, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2128, file: !291, line: 381, column: 11)
!2162 = !DILocation(line: 381, column: 11, scope: !2128)
!2163 = !DILocation(line: 386, column: 12, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2128, file: !291, line: 386, column: 11)
!2165 = !DILocation(line: 386, column: 11, scope: !2128)
!2166 = !DILocation(line: 387, column: 9, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !291, line: 387, column: 9)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !291, line: 387, column: 9)
!2169 = !DILocation(line: 387, column: 9, scope: !2168)
!2170 = !DILocation(line: 394, column: 7, scope: !2128)
!2171 = !DILocation(line: 397, column: 7, scope: !2128)
!2172 = !DILocation(line: 0, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 408, column: 11)
!2174 = !DILocation(line: 0, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !291, line: 419, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !291, line: 418, column: 9)
!2177 = !DILocation(line: 0, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 556, column: 15)
!2179 = !DILocation(line: 0, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 548, column: 15)
!2181 = !DILocation(line: 0, scope: !2087)
!2182 = !DILocation(line: 0, scope: !2094)
!2183 = !DILocation(line: 0, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 509, column: 15)
!2185 = !DILocation(line: 400, column: 8, scope: !2066)
!2186 = !DILocation(line: 0, scope: !2066)
!2187 = !DILocation(line: 400, column: 27, scope: !2065)
!2188 = !DILocation(line: 400, column: 19, scope: !2065)
!2189 = !DILocation(line: 400, column: 41, scope: !2065)
!2190 = !DILocation(line: 400, column: 48, scope: !2065)
!2191 = !DILocation(line: 400, column: 3, scope: !2066)
!2192 = !DILocation(line: 400, column: 60, scope: !2065)
!2193 = !DILocation(line: 0, scope: !2064)
!2194 = !DILocation(line: 409, column: 11, scope: !2173)
!2195 = !DILocation(line: 411, column: 17, scope: !2173)
!2196 = !DILocation(line: 412, column: 39, scope: !2173)
!2197 = !DILocation(line: 416, column: 32, scope: !2173)
!2198 = !DILocation(line: 412, column: 19, scope: !2173)
!2199 = !DILocation(line: 412, column: 15, scope: !2173)
!2200 = !DILocation(line: 417, column: 11, scope: !2173)
!2201 = !DILocation(line: 417, column: 26, scope: !2173)
!2202 = !DILocation(line: 417, column: 14, scope: !2173)
!2203 = !DILocation(line: 417, column: 63, scope: !2173)
!2204 = !DILocation(line: 408, column: 11, scope: !2064)
!2205 = !DILocation(line: 424, column: 11, scope: !2064)
!2206 = !DILocation(line: 425, column: 7, scope: !2064)
!2207 = !DILocation(line: 428, column: 15, scope: !2073)
!2208 = !DILocation(line: 430, column: 15, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !291, line: 430, column: 15)
!2210 = distinct !DILexicalBlock(scope: !2112, file: !291, line: 429, column: 13)
!2211 = !DILocation(line: 430, column: 15, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !291, line: 430, column: 15)
!2213 = !DILocation(line: 430, column: 15, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !291, line: 430, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !291, line: 430, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !291, line: 430, column: 15)
!2217 = !DILocation(line: 430, column: 15, scope: !2215)
!2218 = !DILocation(line: 430, column: 15, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !291, line: 430, column: 15)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !291, line: 430, column: 15)
!2221 = !DILocation(line: 430, column: 15, scope: !2220)
!2222 = !DILocation(line: 430, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !291, line: 430, column: 15)
!2224 = distinct !DILexicalBlock(scope: !2216, file: !291, line: 430, column: 15)
!2225 = !DILocation(line: 430, column: 15, scope: !2224)
!2226 = !DILocation(line: 430, column: 15, scope: !2216)
!2227 = !DILocation(line: 430, column: 15, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !291, line: 430, column: 15)
!2229 = distinct !DILexicalBlock(scope: !2209, file: !291, line: 430, column: 15)
!2230 = !DILocation(line: 430, column: 15, scope: !2229)
!2231 = !DILocation(line: 438, column: 19, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2210, file: !291, line: 437, column: 19)
!2233 = !DILocation(line: 438, column: 24, scope: !2232)
!2234 = !DILocation(line: 438, column: 28, scope: !2232)
!2235 = !DILocation(line: 438, column: 38, scope: !2232)
!2236 = !DILocation(line: 438, column: 48, scope: !2232)
!2237 = !DILocation(line: 438, column: 59, scope: !2232)
!2238 = !DILocation(line: 440, column: 19, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !291, line: 440, column: 19)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !291, line: 440, column: 19)
!2241 = distinct !DILexicalBlock(scope: !2232, file: !291, line: 439, column: 17)
!2242 = !DILocation(line: 440, column: 19, scope: !2240)
!2243 = !DILocation(line: 441, column: 19, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !291, line: 441, column: 19)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !291, line: 441, column: 19)
!2246 = !DILocation(line: 441, column: 19, scope: !2245)
!2247 = !DILocation(line: 442, column: 17, scope: !2241)
!2248 = !DILocation(line: 449, column: 20, scope: !2112)
!2249 = !DILocation(line: 454, column: 11, scope: !2073)
!2250 = !DILocation(line: 457, column: 19, scope: !2109)
!2251 = !DILocation(line: 463, column: 19, scope: !2108)
!2252 = !DILocation(line: 463, column: 24, scope: !2108)
!2253 = !DILocation(line: 463, column: 28, scope: !2108)
!2254 = !DILocation(line: 463, column: 38, scope: !2108)
!2255 = !DILocation(line: 463, column: 47, scope: !2108)
!2256 = !DILocation(line: 463, column: 41, scope: !2108)
!2257 = !DILocation(line: 463, column: 52, scope: !2108)
!2258 = !DILocation(line: 462, column: 19, scope: !2109)
!2259 = !DILocation(line: 464, column: 25, scope: !2108)
!2260 = !DILocation(line: 464, column: 17, scope: !2108)
!2261 = !DILocation(line: 471, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2108, file: !291, line: 465, column: 19)
!2263 = !DILocation(line: 475, column: 21, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !291, line: 475, column: 21)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !291, line: 475, column: 21)
!2266 = !DILocation(line: 475, column: 21, scope: !2265)
!2267 = !DILocation(line: 476, column: 21, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !291, line: 476, column: 21)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !291, line: 476, column: 21)
!2270 = !DILocation(line: 476, column: 21, scope: !2269)
!2271 = !DILocation(line: 477, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !291, line: 477, column: 21)
!2273 = distinct !DILexicalBlock(scope: !2262, file: !291, line: 477, column: 21)
!2274 = !DILocation(line: 477, column: 21, scope: !2273)
!2275 = !DILocation(line: 478, column: 21, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !291, line: 478, column: 21)
!2277 = distinct !DILexicalBlock(scope: !2262, file: !291, line: 478, column: 21)
!2278 = !DILocation(line: 478, column: 21, scope: !2277)
!2279 = !DILocation(line: 479, column: 21, scope: !2262)
!2280 = !DILocation(line: 492, column: 31, scope: !2073)
!2281 = !DILocation(line: 493, column: 31, scope: !2073)
!2282 = !DILocation(line: 495, column: 31, scope: !2073)
!2283 = !DILocation(line: 496, column: 31, scope: !2073)
!2284 = !DILocation(line: 497, column: 31, scope: !2073)
!2285 = !DILocation(line: 500, column: 15, scope: !2073)
!2286 = !DILocation(line: 502, column: 19, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !291, line: 501, column: 13)
!2288 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 500, column: 15)
!2289 = !DILocation(line: 509, column: 33, scope: !2184)
!2290 = !DILocation(line: 0, scope: !2073)
!2291 = !DILocation(line: 512, column: 9, scope: !2073)
!2292 = !DILocation(line: 514, column: 15, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 513, column: 15)
!2294 = !DILocation(line: 517, column: 9, scope: !2073)
!2295 = !DILocation(line: 518, column: 15, scope: !2073)
!2296 = !DILocation(line: 526, column: 15, scope: !2073)
!2297 = !DILocation(line: 526, column: 40, scope: !2106)
!2298 = !DILocation(line: 526, column: 47, scope: !2106)
!2299 = !DILocation(line: 526, column: 18, scope: !2106)
!2300 = !DILocation(line: 530, column: 17, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2073, file: !291, line: 530, column: 15)
!2302 = !DILocation(line: 530, column: 15, scope: !2073)
!2303 = !DILocation(line: 535, column: 11, scope: !2073)
!2304 = !DILocation(line: 549, column: 15, scope: !2180)
!2305 = !DILocation(line: 556, column: 15, scope: !2073)
!2306 = !DILocation(line: 558, column: 19, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2178, file: !291, line: 557, column: 13)
!2308 = !DILocation(line: 561, column: 19, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2307, file: !291, line: 561, column: 19)
!2310 = !DILocation(line: 561, column: 35, scope: !2309)
!2311 = !DILocation(line: 561, column: 30, scope: !2309)
!2312 = !DILocation(line: 570, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !291, line: 570, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !291, line: 570, column: 15)
!2315 = !DILocation(line: 570, column: 15, scope: !2314)
!2316 = !DILocation(line: 571, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !291, line: 571, column: 15)
!2318 = distinct !DILexicalBlock(scope: !2307, file: !291, line: 571, column: 15)
!2319 = !DILocation(line: 571, column: 15, scope: !2318)
!2320 = !DILocation(line: 572, column: 15, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !291, line: 572, column: 15)
!2322 = distinct !DILexicalBlock(scope: !2307, file: !291, line: 572, column: 15)
!2323 = !DILocation(line: 572, column: 15, scope: !2322)
!2324 = !DILocation(line: 574, column: 13, scope: !2307)
!2325 = !DILocation(line: 614, column: 17, scope: !2072)
!2326 = !DILocation(line: 0, scope: !2072)
!2327 = !DILocation(line: 617, column: 29, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2077, file: !291, line: 615, column: 15)
!2329 = !{!2330, !2330, i64 0}
!2330 = !{!"short", !1200, i64 0}
!2331 = !DILocation(line: 617, column: 27, scope: !2328)
!2332 = !DILocation(line: 618, column: 15, scope: !2328)
!2333 = !DILocation(line: 621, column: 17, scope: !2076)
!2334 = !DILocation(line: 621, column: 27, scope: !2076)
!2335 = !DILocalVariable(name: "__dest", arg: 1, scope: !2336, file: !2337, line: 59, type: !90)
!2336 = distinct !DISubprogram(name: "memset", scope: !2337, file: !2337, line: 59, type: !2338, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2340)
!2337 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!90, !90, !37, !92}
!2340 = !{!2335, !2341, !2342}
!2341 = !DILocalVariable(name: "__ch", arg: 2, scope: !2336, file: !2337, line: 59, type: !37)
!2342 = !DILocalVariable(name: "__len", arg: 3, scope: !2336, file: !2337, line: 59, type: !92)
!2343 = !DILocation(line: 0, scope: !2336, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 622, column: 17, scope: !2076)
!2345 = !DILocation(line: 71, column: 10, scope: !2336, inlinedAt: !2344)
!2346 = !DILocation(line: 626, column: 29, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2076, file: !291, line: 626, column: 21)
!2348 = !DILocation(line: 626, column: 21, scope: !2076)
!2349 = !DILocation(line: 627, column: 29, scope: !2347)
!2350 = !DILocation(line: 627, column: 19, scope: !2347)
!2351 = !DILocation(line: 629, column: 17, scope: !2076)
!2352 = !DILocation(line: 624, column: 19, scope: !2076)
!2353 = !DILocation(line: 625, column: 27, scope: !2076)
!2354 = !DILocation(line: 631, column: 21, scope: !2082)
!2355 = !DILocation(line: 632, column: 56, scope: !2082)
!2356 = !DILocation(line: 632, column: 50, scope: !2082)
!2357 = !DILocation(line: 633, column: 53, scope: !2082)
!2358 = !DILocation(line: 632, column: 36, scope: !2082)
!2359 = !DILocation(line: 634, column: 25, scope: !2082)
!2360 = !DILocation(line: 644, column: 38, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2089, file: !291, line: 642, column: 23)
!2362 = !DILocation(line: 644, column: 48, scope: !2361)
!2363 = !DILocation(line: 644, column: 25, scope: !2361)
!2364 = !DILocation(line: 644, column: 51, scope: !2361)
!2365 = !DILocation(line: 645, column: 28, scope: !2361)
!2366 = !DILocation(line: 644, column: 34, scope: !2361)
!2367 = distinct !{!2367, !2363, !2365}
!2368 = !DILocation(line: 658, column: 43, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !291, line: 658, column: 29)
!2370 = distinct !DILexicalBlock(scope: !2086, file: !291, line: 658, column: 29)
!2371 = !DILocation(line: 655, column: 29, scope: !2087)
!2372 = !DILocation(line: 0, scope: !2086)
!2373 = !DILocation(line: 659, column: 49, scope: !2369)
!2374 = !DILocation(line: 659, column: 39, scope: !2369)
!2375 = !DILocation(line: 659, column: 31, scope: !2369)
!2376 = !DILocation(line: 658, column: 53, scope: !2369)
!2377 = !DILocation(line: 658, column: 29, scope: !2370)
!2378 = distinct !{!2378, !2377, !2379}
!2379 = !DILocation(line: 667, column: 33, scope: !2370)
!2380 = !DILocation(line: 674, column: 19, scope: !2076)
!2381 = !DILocation(line: 670, column: 41, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2088, file: !291, line: 670, column: 29)
!2383 = !DILocation(line: 670, column: 31, scope: !2382)
!2384 = !DILocation(line: 670, column: 29, scope: !2088)
!2385 = !DILocation(line: 672, column: 27, scope: !2088)
!2386 = !DILocation(line: 675, column: 26, scope: !2076)
!2387 = !DILocation(line: 675, column: 24, scope: !2076)
!2388 = !DILocation(line: 674, column: 19, scope: !2082)
!2389 = distinct !{!2389, !2351, !2390}
!2390 = !DILocation(line: 675, column: 44, scope: !2076)
!2391 = !DILocation(line: 676, column: 15, scope: !2077)
!2392 = !DILocation(line: 0, scope: !2077)
!2393 = !DILocation(line: 678, column: 40, scope: !2072)
!2394 = !DILocation(line: 680, column: 19, scope: !2094)
!2395 = !DILocation(line: 680, column: 45, scope: !2094)
!2396 = !DILocation(line: 680, column: 23, scope: !2094)
!2397 = !DILocation(line: 684, column: 33, scope: !2093)
!2398 = !DILocation(line: 0, scope: !2093)
!2399 = !DILocation(line: 686, column: 17, scope: !2093)
!2400 = !DILocation(line: 405, column: 12, scope: !2064)
!2401 = !DILocation(line: 688, column: 43, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !291, line: 688, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !291, line: 687, column: 19)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !291, line: 686, column: 17)
!2405 = distinct !DILexicalBlock(scope: !2093, file: !291, line: 686, column: 17)
!2406 = !DILocation(line: 690, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !291, line: 690, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !291, line: 689, column: 23)
!2409 = !DILocation(line: 690, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !291, line: 690, column: 25)
!2411 = !DILocation(line: 690, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !291, line: 690, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !291, line: 690, column: 25)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !291, line: 690, column: 25)
!2415 = !DILocation(line: 690, column: 25, scope: !2413)
!2416 = !DILocation(line: 690, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !291, line: 690, column: 25)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !291, line: 690, column: 25)
!2419 = !DILocation(line: 690, column: 25, scope: !2418)
!2420 = !DILocation(line: 690, column: 25, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !291, line: 690, column: 25)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !291, line: 690, column: 25)
!2423 = !DILocation(line: 690, column: 25, scope: !2422)
!2424 = !DILocation(line: 690, column: 25, scope: !2414)
!2425 = !DILocation(line: 690, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !291, line: 690, column: 25)
!2427 = distinct !DILexicalBlock(scope: !2407, file: !291, line: 690, column: 25)
!2428 = !DILocation(line: 690, column: 25, scope: !2427)
!2429 = !DILocation(line: 691, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !291, line: 691, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2408, file: !291, line: 691, column: 25)
!2432 = !DILocation(line: 691, column: 25, scope: !2431)
!2433 = !DILocation(line: 692, column: 25, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !291, line: 692, column: 25)
!2435 = distinct !DILexicalBlock(scope: !2408, file: !291, line: 692, column: 25)
!2436 = !DILocation(line: 692, column: 25, scope: !2435)
!2437 = !DILocation(line: 693, column: 38, scope: !2408)
!2438 = !DILocation(line: 693, column: 33, scope: !2408)
!2439 = !DILocation(line: 694, column: 23, scope: !2408)
!2440 = !DILocation(line: 695, column: 30, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2402, file: !291, line: 695, column: 30)
!2442 = !DILocation(line: 695, column: 30, scope: !2402)
!2443 = !DILocation(line: 697, column: 25, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !291, line: 697, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !291, line: 697, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !291, line: 696, column: 23)
!2447 = !DILocation(line: 697, column: 25, scope: !2445)
!2448 = !DILocation(line: 699, column: 23, scope: !2446)
!2449 = !DILocation(line: 700, column: 35, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2403, file: !291, line: 700, column: 25)
!2451 = !DILocation(line: 700, column: 30, scope: !2450)
!2452 = !DILocation(line: 700, column: 25, scope: !2403)
!2453 = !DILocation(line: 702, column: 21, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !291, line: 702, column: 21)
!2455 = distinct !DILexicalBlock(scope: !2403, file: !291, line: 702, column: 21)
!2456 = !DILocation(line: 702, column: 21, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !291, line: 702, column: 21)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !291, line: 702, column: 21)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !291, line: 702, column: 21)
!2460 = !DILocation(line: 702, column: 21, scope: !2458)
!2461 = !DILocation(line: 702, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !291, line: 702, column: 21)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !291, line: 702, column: 21)
!2464 = !DILocation(line: 702, column: 21, scope: !2463)
!2465 = !DILocation(line: 702, column: 21, scope: !2459)
!2466 = !DILocation(line: 0, scope: !2403)
!2467 = !DILocation(line: 703, column: 21, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !291, line: 703, column: 21)
!2469 = distinct !DILexicalBlock(scope: !2403, file: !291, line: 703, column: 21)
!2470 = !DILocation(line: 703, column: 21, scope: !2469)
!2471 = !DILocation(line: 704, column: 25, scope: !2403)
!2472 = !DILocation(line: 686, column: 17, scope: !2404)
!2473 = distinct !{!2473, !2474, !2475}
!2474 = !DILocation(line: 686, column: 17, scope: !2405)
!2475 = !DILocation(line: 705, column: 19, scope: !2405)
!2476 = !DILocation(line: 416, column: 30, scope: !2173)
!2477 = !DILocation(line: 712, column: 34, scope: !2116)
!2478 = !DILocation(line: 715, column: 35, scope: !2116)
!2479 = !DILocation(line: 715, column: 17, scope: !2116)
!2480 = !DILocation(line: 715, column: 47, scope: !2116)
!2481 = !DILocation(line: 715, column: 65, scope: !2116)
!2482 = !DILocation(line: 716, column: 15, scope: !2116)
!2483 = !DILocation(line: 716, column: 11, scope: !2116)
!2484 = !DILocation(line: 712, column: 11, scope: !2064)
!2485 = !DILocation(line: 400, column: 10, scope: !2066)
!2486 = !DILocation(line: 719, column: 5, scope: !2064)
!2487 = !DILocation(line: 720, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 720, column: 7)
!2489 = !DILocation(line: 720, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2488, file: !291, line: 720, column: 7)
!2491 = !DILocation(line: 720, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !291, line: 720, column: 7)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !291, line: 720, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !291, line: 720, column: 7)
!2495 = !DILocation(line: 720, column: 7, scope: !2493)
!2496 = !DILocation(line: 720, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !291, line: 720, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !291, line: 720, column: 7)
!2499 = !DILocation(line: 720, column: 7, scope: !2498)
!2500 = !DILocation(line: 720, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !291, line: 720, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2494, file: !291, line: 720, column: 7)
!2503 = !DILocation(line: 720, column: 7, scope: !2502)
!2504 = !DILocation(line: 720, column: 7, scope: !2494)
!2505 = !DILocation(line: 720, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !291, line: 720, column: 7)
!2507 = distinct !DILexicalBlock(scope: !2488, file: !291, line: 720, column: 7)
!2508 = !DILocation(line: 720, column: 7, scope: !2507)
!2509 = !DILocation(line: 722, column: 5, scope: !2064)
!2510 = !DILocation(line: 723, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !291, line: 723, column: 7)
!2512 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 723, column: 7)
!2513 = !DILocation(line: 424, column: 9, scope: !2064)
!2514 = !DILocation(line: 723, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !291, line: 723, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !291, line: 723, column: 7)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !291, line: 723, column: 7)
!2518 = !DILocation(line: 723, column: 7, scope: !2516)
!2519 = !DILocation(line: 723, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !291, line: 723, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !291, line: 723, column: 7)
!2522 = !DILocation(line: 723, column: 7, scope: !2521)
!2523 = !DILocation(line: 723, column: 7, scope: !2517)
!2524 = !DILocation(line: 724, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !291, line: 724, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 724, column: 7)
!2527 = !DILocation(line: 724, column: 7, scope: !2526)
!2528 = !DILocation(line: 726, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2064, file: !291, line: 726, column: 11)
!2530 = !DILocation(line: 726, column: 11, scope: !2064)
!2531 = !DILocation(line: 728, column: 5, scope: !2065)
!2532 = !DILocation(line: 400, column: 75, scope: !2065)
!2533 = !DILocation(line: 400, column: 3, scope: !2065)
!2534 = distinct !{!2534, !2191, !2535}
!2535 = !DILocation(line: 728, column: 5, scope: !2066)
!2536 = !DILocation(line: 730, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 730, column: 7)
!2538 = !DILocation(line: 730, column: 16, scope: !2537)
!2539 = !DILocation(line: 738, column: 51, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 738, column: 7)
!2541 = !DILocation(line: 739, column: 10, scope: !2540)
!2542 = !DILocation(line: 741, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !291, line: 741, column: 11)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !291, line: 740, column: 5)
!2545 = !DILocation(line: 741, column: 11, scope: !2544)
!2546 = !DILocation(line: 742, column: 16, scope: !2543)
!2547 = !DILocation(line: 742, column: 9, scope: !2543)
!2548 = !DILocation(line: 746, column: 18, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !291, line: 746, column: 16)
!2550 = !DILocation(line: 746, column: 32, scope: !2549)
!2551 = !DILocation(line: 746, column: 29, scope: !2549)
!2552 = !DILocation(line: 755, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 755, column: 7)
!2554 = !DILocation(line: 755, column: 20, scope: !2553)
!2555 = !DILocation(line: 756, column: 12, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !291, line: 756, column: 5)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !291, line: 756, column: 5)
!2558 = !DILocation(line: 756, column: 5, scope: !2557)
!2559 = !DILocation(line: 757, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !291, line: 757, column: 7)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !291, line: 757, column: 7)
!2562 = !DILocation(line: 757, column: 7, scope: !2561)
!2563 = !DILocation(line: 756, column: 39, scope: !2556)
!2564 = distinct !{!2564, !2558, !2565}
!2565 = !DILocation(line: 757, column: 7, scope: !2557)
!2566 = !DILocation(line: 759, column: 11, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 759, column: 7)
!2568 = !DILocation(line: 759, column: 7, scope: !2037)
!2569 = !DILocation(line: 760, column: 5, scope: !2567)
!2570 = !DILocation(line: 760, column: 17, scope: !2567)
!2571 = !DILocation(line: 763, column: 2, scope: !2037)
!2572 = !DILocation(line: 766, column: 51, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2037, file: !291, line: 766, column: 7)
!2574 = !DILocation(line: 766, column: 21, scope: !2573)
!2575 = !DILocation(line: 770, column: 42, scope: !2037)
!2576 = !DILocation(line: 768, column: 10, scope: !2037)
!2577 = !DILocation(line: 768, column: 3, scope: !2037)
!2578 = !DILocation(line: 772, column: 1, scope: !2037)
!2579 = distinct !DISubprogram(name: "gettext_quote", scope: !291, file: !291, line: 207, type: !2580, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!35, !35, !14}
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DILocalVariable(name: "msgid", arg: 1, scope: !2579, file: !291, line: 207, type: !35)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2579, file: !291, line: 207, type: !14)
!2585 = !DILocalVariable(name: "translation", scope: !2579, file: !291, line: 209, type: !35)
!2586 = !DILocalVariable(name: "locale_code", scope: !2579, file: !291, line: 210, type: !35)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocation(line: 209, column: 29, scope: !2579)
!2589 = !DILocation(line: 212, column: 19, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2579, file: !291, line: 212, column: 7)
!2591 = !DILocation(line: 212, column: 7, scope: !2579)
!2592 = !DILocation(line: 233, column: 17, scope: !2579)
!2593 = !DILocalVariable(name: "s1", arg: 1, scope: !2594, file: !2595, line: 160, type: !35)
!2594 = distinct !DISubprogram(name: "strcaseeq0", scope: !2595, file: !2595, line: 160, type: !2596, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2598)
!2595 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!37, !35, !35, !34, !34, !34, !34, !34, !34, !34, !34, !34}
!2598 = !{!2593, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2599 = !DILocalVariable(name: "s2", arg: 2, scope: !2594, file: !2595, line: 160, type: !35)
!2600 = !DILocalVariable(name: "s20", arg: 3, scope: !2594, file: !2595, line: 160, type: !34)
!2601 = !DILocalVariable(name: "s21", arg: 4, scope: !2594, file: !2595, line: 160, type: !34)
!2602 = !DILocalVariable(name: "s22", arg: 5, scope: !2594, file: !2595, line: 160, type: !34)
!2603 = !DILocalVariable(name: "s23", arg: 6, scope: !2594, file: !2595, line: 160, type: !34)
!2604 = !DILocalVariable(name: "s24", arg: 7, scope: !2594, file: !2595, line: 160, type: !34)
!2605 = !DILocalVariable(name: "s25", arg: 8, scope: !2594, file: !2595, line: 160, type: !34)
!2606 = !DILocalVariable(name: "s26", arg: 9, scope: !2594, file: !2595, line: 160, type: !34)
!2607 = !DILocalVariable(name: "s27", arg: 10, scope: !2594, file: !2595, line: 160, type: !34)
!2608 = !DILocalVariable(name: "s28", arg: 11, scope: !2594, file: !2595, line: 160, type: !34)
!2609 = !DILocation(line: 0, scope: !2594, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 234, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2579, file: !291, line: 234, column: 7)
!2612 = !DILocation(line: 162, column: 7, scope: !2613, inlinedAt: !2610)
!2613 = distinct !DILexicalBlock(scope: !2594, file: !2595, line: 162, column: 7)
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2615, file: !2595, line: 146, type: !35)
!2615 = distinct !DISubprogram(name: "strcaseeq1", scope: !2595, file: !2595, line: 146, type: !2616, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!37, !35, !35, !34, !34, !34, !34, !34, !34, !34, !34}
!2618 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2619 = !DILocalVariable(name: "s2", arg: 2, scope: !2615, file: !2595, line: 146, type: !35)
!2620 = !DILocalVariable(name: "s21", arg: 3, scope: !2615, file: !2595, line: 146, type: !34)
!2621 = !DILocalVariable(name: "s22", arg: 4, scope: !2615, file: !2595, line: 146, type: !34)
!2622 = !DILocalVariable(name: "s23", arg: 5, scope: !2615, file: !2595, line: 146, type: !34)
!2623 = !DILocalVariable(name: "s24", arg: 6, scope: !2615, file: !2595, line: 146, type: !34)
!2624 = !DILocalVariable(name: "s25", arg: 7, scope: !2615, file: !2595, line: 146, type: !34)
!2625 = !DILocalVariable(name: "s26", arg: 8, scope: !2615, file: !2595, line: 146, type: !34)
!2626 = !DILocalVariable(name: "s27", arg: 9, scope: !2615, file: !2595, line: 146, type: !34)
!2627 = !DILocalVariable(name: "s28", arg: 10, scope: !2615, file: !2595, line: 146, type: !34)
!2628 = !DILocation(line: 0, scope: !2615, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2610)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !2595, line: 164, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2613, file: !2595, line: 163, column: 5)
!2632 = !DILocation(line: 148, column: 7, scope: !2633, inlinedAt: !2629)
!2633 = distinct !DILexicalBlock(scope: !2615, file: !2595, line: 148, column: 7)
!2634 = !DILocalVariable(name: "s1", arg: 1, scope: !2635, file: !2595, line: 132, type: !35)
!2635 = distinct !DISubprogram(name: "strcaseeq2", scope: !2595, file: !2595, line: 132, type: !2636, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!37, !35, !35, !34, !34, !34, !34, !34, !34, !34}
!2638 = !{!2634, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2639 = !DILocalVariable(name: "s2", arg: 2, scope: !2635, file: !2595, line: 132, type: !35)
!2640 = !DILocalVariable(name: "s22", arg: 3, scope: !2635, file: !2595, line: 132, type: !34)
!2641 = !DILocalVariable(name: "s23", arg: 4, scope: !2635, file: !2595, line: 132, type: !34)
!2642 = !DILocalVariable(name: "s24", arg: 5, scope: !2635, file: !2595, line: 132, type: !34)
!2643 = !DILocalVariable(name: "s25", arg: 6, scope: !2635, file: !2595, line: 132, type: !34)
!2644 = !DILocalVariable(name: "s26", arg: 7, scope: !2635, file: !2595, line: 132, type: !34)
!2645 = !DILocalVariable(name: "s27", arg: 8, scope: !2635, file: !2595, line: 132, type: !34)
!2646 = !DILocalVariable(name: "s28", arg: 9, scope: !2635, file: !2595, line: 132, type: !34)
!2647 = !DILocation(line: 0, scope: !2635, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 153, column: 16, scope: !2649, inlinedAt: !2629)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !2595, line: 150, column: 11)
!2650 = distinct !DILexicalBlock(scope: !2633, file: !2595, line: 149, column: 5)
!2651 = !DILocation(line: 134, column: 7, scope: !2652, inlinedAt: !2648)
!2652 = distinct !DILexicalBlock(scope: !2635, file: !2595, line: 134, column: 7)
!2653 = !DILocalVariable(name: "s1", arg: 1, scope: !2654, file: !2595, line: 118, type: !35)
!2654 = distinct !DISubprogram(name: "strcaseeq3", scope: !2595, file: !2595, line: 118, type: !2655, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!37, !35, !35, !34, !34, !34, !34, !34, !34}
!2657 = !{!2653, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2658 = !DILocalVariable(name: "s2", arg: 2, scope: !2654, file: !2595, line: 118, type: !35)
!2659 = !DILocalVariable(name: "s23", arg: 3, scope: !2654, file: !2595, line: 118, type: !34)
!2660 = !DILocalVariable(name: "s24", arg: 4, scope: !2654, file: !2595, line: 118, type: !34)
!2661 = !DILocalVariable(name: "s25", arg: 5, scope: !2654, file: !2595, line: 118, type: !34)
!2662 = !DILocalVariable(name: "s26", arg: 6, scope: !2654, file: !2595, line: 118, type: !34)
!2663 = !DILocalVariable(name: "s27", arg: 7, scope: !2654, file: !2595, line: 118, type: !34)
!2664 = !DILocalVariable(name: "s28", arg: 8, scope: !2654, file: !2595, line: 118, type: !34)
!2665 = !DILocation(line: 0, scope: !2654, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 139, column: 16, scope: !2667, inlinedAt: !2648)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2595, line: 136, column: 11)
!2668 = distinct !DILexicalBlock(scope: !2652, file: !2595, line: 135, column: 5)
!2669 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2666)
!2670 = distinct !DILexicalBlock(scope: !2654, file: !2595, line: 120, column: 7)
!2671 = !DILocation(line: 120, column: 7, scope: !2654, inlinedAt: !2666)
!2672 = !DILocalVariable(name: "s1", arg: 1, scope: !2673, file: !2595, line: 104, type: !35)
!2673 = distinct !DISubprogram(name: "strcaseeq4", scope: !2595, file: !2595, line: 104, type: !2674, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!37, !35, !35, !34, !34, !34, !34, !34}
!2676 = !{!2672, !2677, !2678, !2679, !2680, !2681, !2682}
!2677 = !DILocalVariable(name: "s2", arg: 2, scope: !2673, file: !2595, line: 104, type: !35)
!2678 = !DILocalVariable(name: "s24", arg: 3, scope: !2673, file: !2595, line: 104, type: !34)
!2679 = !DILocalVariable(name: "s25", arg: 4, scope: !2673, file: !2595, line: 104, type: !34)
!2680 = !DILocalVariable(name: "s26", arg: 5, scope: !2673, file: !2595, line: 104, type: !34)
!2681 = !DILocalVariable(name: "s27", arg: 6, scope: !2673, file: !2595, line: 104, type: !34)
!2682 = !DILocalVariable(name: "s28", arg: 7, scope: !2673, file: !2595, line: 104, type: !34)
!2683 = !DILocation(line: 0, scope: !2673, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 125, column: 16, scope: !2685, inlinedAt: !2666)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2595, line: 122, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2670, file: !2595, line: 121, column: 5)
!2687 = !DILocation(line: 106, column: 7, scope: !2688, inlinedAt: !2684)
!2688 = distinct !DILexicalBlock(scope: !2673, file: !2595, line: 106, column: 7)
!2689 = !DILocation(line: 106, column: 7, scope: !2673, inlinedAt: !2684)
!2690 = !DILocalVariable(name: "s1", arg: 1, scope: !2691, file: !2595, line: 90, type: !35)
!2691 = distinct !DISubprogram(name: "strcaseeq5", scope: !2595, file: !2595, line: 90, type: !2692, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!37, !35, !35, !34, !34, !34, !34}
!2694 = !{!2690, !2695, !2696, !2697, !2698, !2699}
!2695 = !DILocalVariable(name: "s2", arg: 2, scope: !2691, file: !2595, line: 90, type: !35)
!2696 = !DILocalVariable(name: "s25", arg: 3, scope: !2691, file: !2595, line: 90, type: !34)
!2697 = !DILocalVariable(name: "s26", arg: 4, scope: !2691, file: !2595, line: 90, type: !34)
!2698 = !DILocalVariable(name: "s27", arg: 5, scope: !2691, file: !2595, line: 90, type: !34)
!2699 = !DILocalVariable(name: "s28", arg: 6, scope: !2691, file: !2595, line: 90, type: !34)
!2700 = !DILocation(line: 0, scope: !2691, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 111, column: 16, scope: !2702, inlinedAt: !2684)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !2595, line: 108, column: 11)
!2703 = distinct !DILexicalBlock(scope: !2688, file: !2595, line: 107, column: 5)
!2704 = !DILocation(line: 92, column: 7, scope: !2705, inlinedAt: !2701)
!2705 = distinct !DILexicalBlock(scope: !2691, file: !2595, line: 92, column: 7)
!2706 = !DILocation(line: 92, column: 7, scope: !2691, inlinedAt: !2701)
!2707 = !DILocation(line: 235, column: 12, scope: !2611)
!2708 = !DILocation(line: 235, column: 21, scope: !2611)
!2709 = !DILocation(line: 235, column: 5, scope: !2611)
!2710 = !DILocation(line: 0, scope: !2615, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 167, column: 16, scope: !2630, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 236, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2579, file: !291, line: 236, column: 7)
!2714 = !DILocation(line: 148, column: 7, scope: !2633, inlinedAt: !2711)
!2715 = !DILocation(line: 0, scope: !2635, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 153, column: 16, scope: !2649, inlinedAt: !2711)
!2717 = !DILocation(line: 134, column: 7, scope: !2652, inlinedAt: !2716)
!2718 = !DILocation(line: 134, column: 7, scope: !2635, inlinedAt: !2716)
!2719 = !DILocation(line: 0, scope: !2654, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 139, column: 16, scope: !2667, inlinedAt: !2716)
!2721 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2720)
!2722 = !DILocation(line: 120, column: 7, scope: !2654, inlinedAt: !2720)
!2723 = !DILocation(line: 0, scope: !2673, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 125, column: 16, scope: !2685, inlinedAt: !2720)
!2725 = !DILocation(line: 106, column: 7, scope: !2688, inlinedAt: !2724)
!2726 = !DILocation(line: 106, column: 7, scope: !2673, inlinedAt: !2724)
!2727 = !DILocation(line: 0, scope: !2691, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 111, column: 16, scope: !2702, inlinedAt: !2724)
!2729 = !DILocation(line: 92, column: 7, scope: !2705, inlinedAt: !2728)
!2730 = !DILocation(line: 92, column: 7, scope: !2691, inlinedAt: !2728)
!2731 = !DILocalVariable(name: "s1", arg: 1, scope: !2732, file: !2595, line: 76, type: !35)
!2732 = distinct !DISubprogram(name: "strcaseeq6", scope: !2595, file: !2595, line: 76, type: !2733, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!37, !35, !35, !34, !34, !34}
!2735 = !{!2731, !2736, !2737, !2738, !2739}
!2736 = !DILocalVariable(name: "s2", arg: 2, scope: !2732, file: !2595, line: 76, type: !35)
!2737 = !DILocalVariable(name: "s26", arg: 3, scope: !2732, file: !2595, line: 76, type: !34)
!2738 = !DILocalVariable(name: "s27", arg: 4, scope: !2732, file: !2595, line: 76, type: !34)
!2739 = !DILocalVariable(name: "s28", arg: 5, scope: !2732, file: !2595, line: 76, type: !34)
!2740 = !DILocation(line: 0, scope: !2732, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 97, column: 16, scope: !2742, inlinedAt: !2728)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2595, line: 94, column: 11)
!2743 = distinct !DILexicalBlock(scope: !2705, file: !2595, line: 93, column: 5)
!2744 = !DILocation(line: 78, column: 7, scope: !2745, inlinedAt: !2741)
!2745 = distinct !DILexicalBlock(scope: !2732, file: !2595, line: 78, column: 7)
!2746 = !DILocation(line: 78, column: 7, scope: !2732, inlinedAt: !2741)
!2747 = !DILocalVariable(name: "s1", arg: 1, scope: !2748, file: !2595, line: 62, type: !35)
!2748 = distinct !DISubprogram(name: "strcaseeq7", scope: !2595, file: !2595, line: 62, type: !2749, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!37, !35, !35, !34, !34}
!2751 = !{!2747, !2752, !2753, !2754}
!2752 = !DILocalVariable(name: "s2", arg: 2, scope: !2748, file: !2595, line: 62, type: !35)
!2753 = !DILocalVariable(name: "s27", arg: 3, scope: !2748, file: !2595, line: 62, type: !34)
!2754 = !DILocalVariable(name: "s28", arg: 4, scope: !2748, file: !2595, line: 62, type: !34)
!2755 = !DILocation(line: 0, scope: !2748, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 83, column: 16, scope: !2757, inlinedAt: !2741)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !2595, line: 80, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2745, file: !2595, line: 79, column: 5)
!2759 = !DILocation(line: 64, column: 7, scope: !2760, inlinedAt: !2756)
!2760 = distinct !DILexicalBlock(scope: !2748, file: !2595, line: 64, column: 7)
!2761 = !DILocation(line: 236, column: 7, scope: !2579)
!2762 = !DILocation(line: 237, column: 12, scope: !2713)
!2763 = !DILocation(line: 237, column: 21, scope: !2713)
!2764 = !DILocation(line: 237, column: 5, scope: !2713)
!2765 = !DILocation(line: 239, column: 13, scope: !2579)
!2766 = !DILocation(line: 239, column: 11, scope: !2579)
!2767 = !DILocation(line: 239, column: 3, scope: !2579)
!2768 = !DILocation(line: 240, column: 1, scope: !2579)
!2769 = distinct !DISubprogram(name: "quotearg_alloc", scope: !291, file: !291, line: 799, type: !2770, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!33, !35, !92, !323}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !291, line: 799, type: !35)
!2774 = !DILocalVariable(name: "argsize", arg: 2, scope: !2769, file: !291, line: 799, type: !92)
!2775 = !DILocalVariable(name: "o", arg: 3, scope: !2769, file: !291, line: 800, type: !323)
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocalVariable(name: "arg", arg: 1, scope: !2778, file: !291, line: 812, type: !35)
!2778 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !291, file: !291, line: 812, type: !2779, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!33, !35, !92, !551, !323}
!2781 = !{!2777, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2778, file: !291, line: 812, type: !92)
!2783 = !DILocalVariable(name: "size", arg: 3, scope: !2778, file: !291, line: 812, type: !551)
!2784 = !DILocalVariable(name: "o", arg: 4, scope: !2778, file: !291, line: 813, type: !323)
!2785 = !DILocalVariable(name: "p", scope: !2778, file: !291, line: 815, type: !323)
!2786 = !DILocalVariable(name: "e", scope: !2778, file: !291, line: 816, type: !37)
!2787 = !DILocalVariable(name: "flags", scope: !2778, file: !291, line: 818, type: !37)
!2788 = !DILocalVariable(name: "bufsize", scope: !2778, file: !291, line: 819, type: !92)
!2789 = !DILocalVariable(name: "buf", scope: !2778, file: !291, line: 823, type: !33)
!2790 = !DILocation(line: 0, scope: !2778, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 802, column: 10, scope: !2769)
!2792 = !DILocation(line: 815, column: 37, scope: !2778, inlinedAt: !2791)
!2793 = !DILocation(line: 816, column: 11, scope: !2778, inlinedAt: !2791)
!2794 = !DILocation(line: 818, column: 18, scope: !2778, inlinedAt: !2791)
!2795 = !DILocation(line: 818, column: 24, scope: !2778, inlinedAt: !2791)
!2796 = !DILocation(line: 819, column: 69, scope: !2778, inlinedAt: !2791)
!2797 = !DILocation(line: 820, column: 53, scope: !2778, inlinedAt: !2791)
!2798 = !DILocation(line: 821, column: 49, scope: !2778, inlinedAt: !2791)
!2799 = !DILocation(line: 822, column: 49, scope: !2778, inlinedAt: !2791)
!2800 = !DILocation(line: 819, column: 20, scope: !2778, inlinedAt: !2791)
!2801 = !DILocation(line: 822, column: 62, scope: !2778, inlinedAt: !2791)
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !315, line: 216, type: !92)
!2803 = distinct !DISubprogram(name: "xcharalloc", scope: !315, file: !315, line: 216, type: !2804, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!33, !92}
!2806 = !{!2802}
!2807 = !DILocation(line: 0, scope: !2803, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 823, column: 15, scope: !2778, inlinedAt: !2791)
!2809 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2808)
!2810 = !DILocation(line: 824, column: 60, scope: !2778, inlinedAt: !2791)
!2811 = !DILocation(line: 826, column: 32, scope: !2778, inlinedAt: !2791)
!2812 = !DILocation(line: 826, column: 47, scope: !2778, inlinedAt: !2791)
!2813 = !DILocation(line: 824, column: 3, scope: !2778, inlinedAt: !2791)
!2814 = !DILocation(line: 827, column: 9, scope: !2778, inlinedAt: !2791)
!2815 = !DILocation(line: 802, column: 3, scope: !2769)
!2816 = !DILocation(line: 0, scope: !2778)
!2817 = !DILocation(line: 815, column: 37, scope: !2778)
!2818 = !DILocation(line: 816, column: 11, scope: !2778)
!2819 = !DILocation(line: 818, column: 18, scope: !2778)
!2820 = !DILocation(line: 818, column: 27, scope: !2778)
!2821 = !DILocation(line: 818, column: 24, scope: !2778)
!2822 = !DILocation(line: 819, column: 69, scope: !2778)
!2823 = !DILocation(line: 820, column: 53, scope: !2778)
!2824 = !DILocation(line: 821, column: 49, scope: !2778)
!2825 = !DILocation(line: 822, column: 49, scope: !2778)
!2826 = !DILocation(line: 819, column: 20, scope: !2778)
!2827 = !DILocation(line: 822, column: 62, scope: !2778)
!2828 = !DILocation(line: 0, scope: !2803, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 823, column: 15, scope: !2778)
!2830 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2829)
!2831 = !DILocation(line: 824, column: 60, scope: !2778)
!2832 = !DILocation(line: 826, column: 32, scope: !2778)
!2833 = !DILocation(line: 826, column: 47, scope: !2778)
!2834 = !DILocation(line: 824, column: 3, scope: !2778)
!2835 = !DILocation(line: 827, column: 9, scope: !2778)
!2836 = !DILocation(line: 828, column: 7, scope: !2778)
!2837 = !DILocation(line: 829, column: 11, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2778, file: !291, line: 828, column: 7)
!2839 = !DILocation(line: 829, column: 5, scope: !2838)
!2840 = !DILocation(line: 830, column: 3, scope: !2778)
!2841 = distinct !DISubprogram(name: "quotearg_free", scope: !291, file: !291, line: 848, type: !119, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "sv", scope: !2841, file: !291, line: 850, type: !398)
!2844 = !DILocalVariable(name: "i", scope: !2841, file: !291, line: 851, type: !37)
!2845 = !DILocation(line: 850, column: 24, scope: !2841)
!2846 = !DILocation(line: 0, scope: !2841)
!2847 = !DILocation(line: 852, column: 19, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !291, line: 852, column: 3)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !291, line: 852, column: 3)
!2850 = !DILocation(line: 852, column: 17, scope: !2848)
!2851 = !DILocation(line: 852, column: 3, scope: !2849)
!2852 = !DILocation(line: 853, column: 17, scope: !2848)
!2853 = !{!2854, !1199, i64 8}
!2854 = !{!"slotvec", !1399, i64 0, !1199, i64 8}
!2855 = !DILocation(line: 853, column: 5, scope: !2848)
!2856 = !DILocation(line: 852, column: 28, scope: !2848)
!2857 = distinct !{!2857, !2851, !2858}
!2858 = !DILocation(line: 853, column: 20, scope: !2849)
!2859 = !DILocation(line: 854, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2841, file: !291, line: 854, column: 7)
!2861 = !DILocation(line: 854, column: 17, scope: !2860)
!2862 = !DILocation(line: 854, column: 7, scope: !2841)
!2863 = !DILocation(line: 856, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !291, line: 855, column: 5)
!2865 = !DILocation(line: 857, column: 21, scope: !2864)
!2866 = !{!2854, !1399, i64 0}
!2867 = !DILocation(line: 858, column: 20, scope: !2864)
!2868 = !DILocation(line: 859, column: 5, scope: !2864)
!2869 = !DILocation(line: 860, column: 10, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2841, file: !291, line: 860, column: 7)
!2871 = !DILocation(line: 860, column: 7, scope: !2841)
!2872 = !DILocation(line: 862, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !291, line: 861, column: 5)
!2874 = !DILocation(line: 862, column: 7, scope: !2873)
!2875 = !DILocation(line: 863, column: 15, scope: !2873)
!2876 = !DILocation(line: 864, column: 5, scope: !2873)
!2877 = !DILocation(line: 865, column: 10, scope: !2841)
!2878 = !DILocation(line: 866, column: 1, scope: !2841)
!2879 = distinct !DISubprogram(name: "quotearg_n", scope: !291, file: !291, line: 931, type: !106, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2880)
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2879, file: !291, line: 931, type: !37)
!2882 = !DILocalVariable(name: "arg", arg: 2, scope: !2879, file: !291, line: 931, type: !35)
!2883 = !DILocation(line: 0, scope: !2879)
!2884 = !DILocation(line: 933, column: 10, scope: !2879)
!2885 = !DILocation(line: 933, column: 3, scope: !2879)
!2886 = distinct !DISubprogram(name: "quotearg_n_options", scope: !291, file: !291, line: 877, type: !2887, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!33, !37, !35, !92, !323}
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2896, !2899, !2900, !2902, !2903, !2904}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !291, line: 877, type: !37)
!2891 = !DILocalVariable(name: "arg", arg: 2, scope: !2886, file: !291, line: 877, type: !35)
!2892 = !DILocalVariable(name: "argsize", arg: 3, scope: !2886, file: !291, line: 877, type: !92)
!2893 = !DILocalVariable(name: "options", arg: 4, scope: !2886, file: !291, line: 878, type: !323)
!2894 = !DILocalVariable(name: "e", scope: !2886, file: !291, line: 880, type: !37)
!2895 = !DILocalVariable(name: "sv", scope: !2886, file: !291, line: 882, type: !398)
!2896 = !DILocalVariable(name: "preallocated", scope: !2897, file: !291, line: 889, type: !157)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !291, line: 888, column: 5)
!2898 = distinct !DILexicalBlock(scope: !2886, file: !291, line: 887, column: 7)
!2899 = !DILocalVariable(name: "nmax", scope: !2897, file: !291, line: 890, type: !37)
!2900 = !DILocalVariable(name: "size", scope: !2901, file: !291, line: 903, type: !92)
!2901 = distinct !DILexicalBlock(scope: !2886, file: !291, line: 902, column: 3)
!2902 = !DILocalVariable(name: "val", scope: !2901, file: !291, line: 904, type: !33)
!2903 = !DILocalVariable(name: "flags", scope: !2901, file: !291, line: 906, type: !37)
!2904 = !DILocalVariable(name: "qsize", scope: !2901, file: !291, line: 907, type: !92)
!2905 = !DILocation(line: 0, scope: !2886)
!2906 = !DILocation(line: 880, column: 11, scope: !2886)
!2907 = !DILocation(line: 882, column: 24, scope: !2886)
!2908 = !DILocation(line: 884, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2886, file: !291, line: 884, column: 7)
!2910 = !DILocation(line: 884, column: 7, scope: !2886)
!2911 = !DILocation(line: 885, column: 5, scope: !2909)
!2912 = !DILocation(line: 887, column: 7, scope: !2898)
!2913 = !DILocation(line: 887, column: 14, scope: !2898)
!2914 = !DILocation(line: 887, column: 7, scope: !2886)
!2915 = !DILocation(line: 889, column: 31, scope: !2897)
!2916 = !DILocation(line: 0, scope: !2897)
!2917 = !DILocation(line: 892, column: 16, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2897, file: !291, line: 892, column: 11)
!2919 = !DILocation(line: 892, column: 11, scope: !2897)
!2920 = !DILocation(line: 893, column: 9, scope: !2918)
!2921 = !DILocation(line: 895, column: 32, scope: !2897)
!2922 = !DILocation(line: 895, column: 61, scope: !2897)
!2923 = !DILocation(line: 895, column: 58, scope: !2897)
!2924 = !DILocation(line: 895, column: 66, scope: !2897)
!2925 = !DILocation(line: 895, column: 22, scope: !2897)
!2926 = !DILocation(line: 895, column: 15, scope: !2897)
!2927 = !DILocation(line: 896, column: 11, scope: !2897)
!2928 = !DILocation(line: 897, column: 15, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2897, file: !291, line: 896, column: 11)
!2930 = !{i64 0, i64 8, !1398, i64 8, i64 8, !1198}
!2931 = !DILocation(line: 897, column: 9, scope: !2929)
!2932 = !DILocation(line: 898, column: 20, scope: !2897)
!2933 = !DILocation(line: 898, column: 18, scope: !2897)
!2934 = !DILocation(line: 898, column: 15, scope: !2897)
!2935 = !DILocation(line: 898, column: 38, scope: !2897)
!2936 = !DILocation(line: 898, column: 31, scope: !2897)
!2937 = !DILocation(line: 898, column: 48, scope: !2897)
!2938 = !DILocation(line: 0, scope: !2336, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 898, column: 7, scope: !2897)
!2940 = !DILocation(line: 71, column: 10, scope: !2336, inlinedAt: !2939)
!2941 = !DILocation(line: 899, column: 14, scope: !2897)
!2942 = !DILocation(line: 900, column: 5, scope: !2897)
!2943 = !DILocation(line: 903, column: 19, scope: !2901)
!2944 = !DILocation(line: 903, column: 25, scope: !2901)
!2945 = !DILocation(line: 0, scope: !2901)
!2946 = !DILocation(line: 904, column: 23, scope: !2901)
!2947 = !DILocation(line: 906, column: 26, scope: !2901)
!2948 = !DILocation(line: 906, column: 32, scope: !2901)
!2949 = !DILocation(line: 908, column: 55, scope: !2901)
!2950 = !DILocation(line: 909, column: 46, scope: !2901)
!2951 = !DILocation(line: 910, column: 55, scope: !2901)
!2952 = !DILocation(line: 911, column: 55, scope: !2901)
!2953 = !DILocation(line: 907, column: 20, scope: !2901)
!2954 = !DILocation(line: 913, column: 14, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2901, file: !291, line: 913, column: 9)
!2956 = !DILocation(line: 913, column: 9, scope: !2901)
!2957 = !DILocation(line: 915, column: 35, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !291, line: 914, column: 7)
!2959 = !DILocation(line: 915, column: 20, scope: !2958)
!2960 = !DILocation(line: 916, column: 17, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !291, line: 916, column: 13)
!2962 = !DILocation(line: 916, column: 13, scope: !2958)
!2963 = !DILocation(line: 917, column: 11, scope: !2961)
!2964 = !DILocation(line: 0, scope: !2803, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 918, column: 27, scope: !2958)
!2966 = !DILocation(line: 218, column: 10, scope: !2803, inlinedAt: !2965)
!2967 = !DILocation(line: 918, column: 19, scope: !2958)
!2968 = !DILocation(line: 919, column: 69, scope: !2958)
!2969 = !DILocation(line: 921, column: 44, scope: !2958)
!2970 = !DILocation(line: 922, column: 44, scope: !2958)
!2971 = !DILocation(line: 919, column: 9, scope: !2958)
!2972 = !DILocation(line: 923, column: 7, scope: !2958)
!2973 = !DILocation(line: 925, column: 11, scope: !2901)
!2974 = !DILocation(line: 926, column: 5, scope: !2901)
!2975 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !291, file: !291, line: 937, type: !2976, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!33, !37, !35, !92}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !291, line: 937, type: !37)
!2980 = !DILocalVariable(name: "arg", arg: 2, scope: !2975, file: !291, line: 937, type: !35)
!2981 = !DILocalVariable(name: "argsize", arg: 3, scope: !2975, file: !291, line: 937, type: !92)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 939, column: 10, scope: !2975)
!2984 = !DILocation(line: 939, column: 3, scope: !2975)
!2985 = distinct !DISubprogram(name: "quotearg", scope: !291, file: !291, line: 943, type: !112, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2986)
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "arg", arg: 1, scope: !2985, file: !291, line: 943, type: !35)
!2988 = !DILocation(line: 0, scope: !2985)
!2989 = !DILocation(line: 0, scope: !2879, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 945, column: 10, scope: !2985)
!2991 = !DILocation(line: 933, column: 10, scope: !2879, inlinedAt: !2990)
!2992 = !DILocation(line: 945, column: 3, scope: !2985)
!2993 = distinct !DISubprogram(name: "quotearg_mem", scope: !291, file: !291, line: 949, type: !2994, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!33, !35, !92}
!2996 = !{!2997, !2998}
!2997 = !DILocalVariable(name: "arg", arg: 1, scope: !2993, file: !291, line: 949, type: !35)
!2998 = !DILocalVariable(name: "argsize", arg: 2, scope: !2993, file: !291, line: 949, type: !92)
!2999 = !DILocation(line: 0, scope: !2993)
!3000 = !DILocation(line: 0, scope: !2975, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 951, column: 10, scope: !2993)
!3002 = !DILocation(line: 939, column: 10, scope: !2975, inlinedAt: !3001)
!3003 = !DILocation(line: 951, column: 3, scope: !2993)
!3004 = distinct !DISubprogram(name: "quotearg_n_style", scope: !291, file: !291, line: 955, type: !177, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3005)
!3005 = !{!3006, !3007, !3008, !3009}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !291, line: 955, type: !37)
!3007 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !291, line: 955, type: !14)
!3008 = !DILocalVariable(name: "arg", arg: 3, scope: !3004, file: !291, line: 955, type: !35)
!3009 = !DILocalVariable(name: "o", scope: !3004, file: !291, line: 957, type: !324)
!3010 = !DILocation(line: 0, scope: !3004)
!3011 = !DILocation(line: 957, column: 3, scope: !3004)
!3012 = !DILocation(line: 957, column: 32, scope: !3004)
!3013 = !DILocalVariable(name: "style", arg: 1, scope: !3014, file: !291, line: 193, type: !14)
!3014 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !291, file: !291, line: 193, type: !3015, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!325, !14}
!3017 = !{!3013, !3018}
!3018 = !DILocalVariable(name: "o", scope: !3014, file: !291, line: 195, type: !325)
!3019 = !DILocation(line: 0, scope: !3014, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 957, column: 36, scope: !3004)
!3021 = !DILocation(line: 195, column: 26, scope: !3014, inlinedAt: !3020)
!3022 = !{!3023}
!3023 = distinct !{!3023, !3024, !"quoting_options_from_style: argument 0"}
!3024 = distinct !{!3024, !"quoting_options_from_style"}
!3025 = !DILocation(line: 196, column: 13, scope: !3026, inlinedAt: !3020)
!3026 = distinct !DILexicalBlock(scope: !3014, file: !291, line: 196, column: 7)
!3027 = !DILocation(line: 196, column: 7, scope: !3014, inlinedAt: !3020)
!3028 = !DILocation(line: 197, column: 5, scope: !3026, inlinedAt: !3020)
!3029 = !DILocation(line: 198, column: 5, scope: !3014, inlinedAt: !3020)
!3030 = !DILocation(line: 198, column: 11, scope: !3014, inlinedAt: !3020)
!3031 = !DILocation(line: 958, column: 10, scope: !3004)
!3032 = !DILocation(line: 959, column: 1, scope: !3004)
!3033 = !DILocation(line: 958, column: 3, scope: !3004)
!3034 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !291, file: !291, line: 962, type: !3035, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!33, !37, !14, !35, !92}
!3037 = !{!3038, !3039, !3040, !3041, !3042}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !291, line: 962, type: !37)
!3039 = !DILocalVariable(name: "s", arg: 2, scope: !3034, file: !291, line: 962, type: !14)
!3040 = !DILocalVariable(name: "arg", arg: 3, scope: !3034, file: !291, line: 963, type: !35)
!3041 = !DILocalVariable(name: "argsize", arg: 4, scope: !3034, file: !291, line: 963, type: !92)
!3042 = !DILocalVariable(name: "o", scope: !3034, file: !291, line: 965, type: !324)
!3043 = !DILocation(line: 0, scope: !3034)
!3044 = !DILocation(line: 965, column: 3, scope: !3034)
!3045 = !DILocation(line: 965, column: 32, scope: !3034)
!3046 = !DILocation(line: 0, scope: !3014, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 965, column: 36, scope: !3034)
!3048 = !DILocation(line: 195, column: 26, scope: !3014, inlinedAt: !3047)
!3049 = !{!3050}
!3050 = distinct !{!3050, !3051, !"quoting_options_from_style: argument 0"}
!3051 = distinct !{!3051, !"quoting_options_from_style"}
!3052 = !DILocation(line: 196, column: 13, scope: !3026, inlinedAt: !3047)
!3053 = !DILocation(line: 196, column: 7, scope: !3014, inlinedAt: !3047)
!3054 = !DILocation(line: 197, column: 5, scope: !3026, inlinedAt: !3047)
!3055 = !DILocation(line: 198, column: 5, scope: !3014, inlinedAt: !3047)
!3056 = !DILocation(line: 198, column: 11, scope: !3014, inlinedAt: !3047)
!3057 = !DILocation(line: 966, column: 10, scope: !3034)
!3058 = !DILocation(line: 967, column: 1, scope: !3034)
!3059 = !DILocation(line: 966, column: 3, scope: !3034)
!3060 = distinct !DISubprogram(name: "quotearg_style", scope: !291, file: !291, line: 970, type: !185, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3061)
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "s", arg: 1, scope: !3060, file: !291, line: 970, type: !14)
!3063 = !DILocalVariable(name: "arg", arg: 2, scope: !3060, file: !291, line: 970, type: !35)
!3064 = !DILocation(line: 195, column: 26, scope: !3014, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 957, column: 36, scope: !3004, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 972, column: 10, scope: !3060)
!3067 = !DILocation(line: 957, column: 32, scope: !3004, inlinedAt: !3066)
!3068 = !DILocation(line: 0, scope: !3060)
!3069 = !DILocation(line: 0, scope: !3004, inlinedAt: !3066)
!3070 = !DILocation(line: 957, column: 3, scope: !3004, inlinedAt: !3066)
!3071 = !DILocation(line: 0, scope: !3014, inlinedAt: !3065)
!3072 = !{!3073}
!3073 = distinct !{!3073, !3074, !"quoting_options_from_style: argument 0"}
!3074 = distinct !{!3074, !"quoting_options_from_style"}
!3075 = !DILocation(line: 196, column: 13, scope: !3026, inlinedAt: !3065)
!3076 = !DILocation(line: 196, column: 7, scope: !3014, inlinedAt: !3065)
!3077 = !DILocation(line: 197, column: 5, scope: !3026, inlinedAt: !3065)
!3078 = !DILocation(line: 198, column: 5, scope: !3014, inlinedAt: !3065)
!3079 = !DILocation(line: 198, column: 11, scope: !3014, inlinedAt: !3065)
!3080 = !DILocation(line: 958, column: 10, scope: !3004, inlinedAt: !3066)
!3081 = !DILocation(line: 959, column: 1, scope: !3004, inlinedAt: !3066)
!3082 = !DILocation(line: 972, column: 3, scope: !3060)
!3083 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !291, file: !291, line: 976, type: !3084, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!33, !14, !35, !92}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "s", arg: 1, scope: !3083, file: !291, line: 976, type: !14)
!3088 = !DILocalVariable(name: "arg", arg: 2, scope: !3083, file: !291, line: 976, type: !35)
!3089 = !DILocalVariable(name: "argsize", arg: 3, scope: !3083, file: !291, line: 976, type: !92)
!3090 = !DILocation(line: 195, column: 26, scope: !3014, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 965, column: 36, scope: !3034, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 978, column: 10, scope: !3083)
!3093 = !DILocation(line: 965, column: 32, scope: !3034, inlinedAt: !3092)
!3094 = !DILocation(line: 0, scope: !3083)
!3095 = !DILocation(line: 0, scope: !3034, inlinedAt: !3092)
!3096 = !DILocation(line: 965, column: 3, scope: !3034, inlinedAt: !3092)
!3097 = !DILocation(line: 0, scope: !3014, inlinedAt: !3091)
!3098 = !{!3099}
!3099 = distinct !{!3099, !3100, !"quoting_options_from_style: argument 0"}
!3100 = distinct !{!3100, !"quoting_options_from_style"}
!3101 = !DILocation(line: 196, column: 13, scope: !3026, inlinedAt: !3091)
!3102 = !DILocation(line: 196, column: 7, scope: !3014, inlinedAt: !3091)
!3103 = !DILocation(line: 197, column: 5, scope: !3026, inlinedAt: !3091)
!3104 = !DILocation(line: 198, column: 5, scope: !3014, inlinedAt: !3091)
!3105 = !DILocation(line: 198, column: 11, scope: !3014, inlinedAt: !3091)
!3106 = !DILocation(line: 966, column: 10, scope: !3034, inlinedAt: !3092)
!3107 = !DILocation(line: 967, column: 1, scope: !3034, inlinedAt: !3092)
!3108 = !DILocation(line: 978, column: 3, scope: !3083)
!3109 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !291, file: !291, line: 982, type: !3110, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!33, !35, !92, !34}
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DILocalVariable(name: "arg", arg: 1, scope: !3109, file: !291, line: 982, type: !35)
!3114 = !DILocalVariable(name: "argsize", arg: 2, scope: !3109, file: !291, line: 982, type: !92)
!3115 = !DILocalVariable(name: "ch", arg: 3, scope: !3109, file: !291, line: 982, type: !34)
!3116 = !DILocalVariable(name: "options", scope: !3109, file: !291, line: 984, type: !325)
!3117 = !DILocation(line: 0, scope: !3109)
!3118 = !DILocation(line: 984, column: 3, scope: !3109)
!3119 = !DILocation(line: 984, column: 26, scope: !3109)
!3120 = !DILocation(line: 985, column: 13, scope: !3109)
!3121 = !{i64 0, i64 4, !1330, i64 4, i64 4, !1322, i64 8, i64 32, !1330, i64 40, i64 8, !1198, i64 48, i64 8, !1198}
!3122 = !DILocation(line: 0, scope: !1949, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 986, column: 3, scope: !3109)
!3124 = !DILocation(line: 156, column: 62, scope: !1949, inlinedAt: !3123)
!3125 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3123)
!3126 = !DILocation(line: 157, column: 15, scope: !1949, inlinedAt: !3123)
!3127 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3123)
!3128 = !DILocation(line: 158, column: 15, scope: !1949, inlinedAt: !3123)
!3129 = !DILocation(line: 158, column: 25, scope: !1949, inlinedAt: !3123)
!3130 = !DILocation(line: 159, column: 18, scope: !1949, inlinedAt: !3123)
!3131 = !DILocation(line: 159, column: 23, scope: !1949, inlinedAt: !3123)
!3132 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3123)
!3133 = !DILocation(line: 987, column: 10, scope: !3109)
!3134 = !DILocation(line: 988, column: 1, scope: !3109)
!3135 = !DILocation(line: 987, column: 3, scope: !3109)
!3136 = distinct !DISubprogram(name: "quotearg_char", scope: !291, file: !291, line: 991, type: !3137, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!33, !35, !34}
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "arg", arg: 1, scope: !3136, file: !291, line: 991, type: !35)
!3141 = !DILocalVariable(name: "ch", arg: 2, scope: !3136, file: !291, line: 991, type: !34)
!3142 = !DILocation(line: 984, column: 26, scope: !3109, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 993, column: 10, scope: !3136)
!3144 = !DILocation(line: 0, scope: !3136)
!3145 = !DILocation(line: 0, scope: !3109, inlinedAt: !3143)
!3146 = !DILocation(line: 984, column: 3, scope: !3109, inlinedAt: !3143)
!3147 = !DILocation(line: 985, column: 13, scope: !3109, inlinedAt: !3143)
!3148 = !DILocation(line: 0, scope: !1949, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 986, column: 3, scope: !3109, inlinedAt: !3143)
!3150 = !DILocation(line: 156, column: 62, scope: !1949, inlinedAt: !3149)
!3151 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3149)
!3152 = !DILocation(line: 157, column: 15, scope: !1949, inlinedAt: !3149)
!3153 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3149)
!3154 = !DILocation(line: 158, column: 15, scope: !1949, inlinedAt: !3149)
!3155 = !DILocation(line: 158, column: 25, scope: !1949, inlinedAt: !3149)
!3156 = !DILocation(line: 159, column: 18, scope: !1949, inlinedAt: !3149)
!3157 = !DILocation(line: 159, column: 23, scope: !1949, inlinedAt: !3149)
!3158 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3149)
!3159 = !DILocation(line: 987, column: 10, scope: !3109, inlinedAt: !3143)
!3160 = !DILocation(line: 988, column: 1, scope: !3109, inlinedAt: !3143)
!3161 = !DILocation(line: 993, column: 3, scope: !3136)
!3162 = distinct !DISubprogram(name: "quotearg_colon", scope: !291, file: !291, line: 997, type: !112, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3163)
!3163 = !{!3164}
!3164 = !DILocalVariable(name: "arg", arg: 1, scope: !3162, file: !291, line: 997, type: !35)
!3165 = !DILocation(line: 984, column: 26, scope: !3109, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 993, column: 10, scope: !3136, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 999, column: 10, scope: !3162)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocation(line: 0, scope: !3136, inlinedAt: !3167)
!3170 = !DILocation(line: 0, scope: !3109, inlinedAt: !3166)
!3171 = !DILocation(line: 984, column: 3, scope: !3109, inlinedAt: !3166)
!3172 = !DILocation(line: 985, column: 13, scope: !3109, inlinedAt: !3166)
!3173 = !DILocation(line: 0, scope: !1949, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 986, column: 3, scope: !3109, inlinedAt: !3166)
!3175 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3174)
!3176 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3174)
!3177 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3174)
!3178 = !DILocation(line: 987, column: 10, scope: !3109, inlinedAt: !3166)
!3179 = !DILocation(line: 988, column: 1, scope: !3109, inlinedAt: !3166)
!3180 = !DILocation(line: 999, column: 3, scope: !3162)
!3181 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !291, file: !291, line: 1003, type: !2994, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3182)
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "arg", arg: 1, scope: !3181, file: !291, line: 1003, type: !35)
!3184 = !DILocalVariable(name: "argsize", arg: 2, scope: !3181, file: !291, line: 1003, type: !92)
!3185 = !DILocation(line: 984, column: 26, scope: !3109, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1005, column: 10, scope: !3181)
!3187 = !DILocation(line: 0, scope: !3181)
!3188 = !DILocation(line: 0, scope: !3109, inlinedAt: !3186)
!3189 = !DILocation(line: 984, column: 3, scope: !3109, inlinedAt: !3186)
!3190 = !DILocation(line: 985, column: 13, scope: !3109, inlinedAt: !3186)
!3191 = !DILocation(line: 0, scope: !1949, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 986, column: 3, scope: !3109, inlinedAt: !3186)
!3193 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3192)
!3194 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3192)
!3195 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3192)
!3196 = !DILocation(line: 987, column: 10, scope: !3109, inlinedAt: !3186)
!3197 = !DILocation(line: 988, column: 1, scope: !3109, inlinedAt: !3186)
!3198 = !DILocation(line: 1005, column: 3, scope: !3181)
!3199 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !291, file: !291, line: 1009, type: !177, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3200)
!3200 = !{!3201, !3202, !3203, !3204}
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !291, line: 1009, type: !37)
!3202 = !DILocalVariable(name: "s", arg: 2, scope: !3199, file: !291, line: 1009, type: !14)
!3203 = !DILocalVariable(name: "arg", arg: 3, scope: !3199, file: !291, line: 1009, type: !35)
!3204 = !DILocalVariable(name: "options", scope: !3199, file: !291, line: 1011, type: !325)
!3205 = !DILocation(line: 195, column: 26, scope: !3014, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1012, column: 13, scope: !3199)
!3207 = !DILocation(line: 0, scope: !3199)
!3208 = !DILocation(line: 1011, column: 3, scope: !3199)
!3209 = !DILocation(line: 1011, column: 26, scope: !3199)
!3210 = !DILocation(line: 1012, column: 13, scope: !3199)
!3211 = !DILocation(line: 0, scope: !3014, inlinedAt: !3206)
!3212 = !{!3213}
!3213 = distinct !{!3213, !3214, !"quoting_options_from_style: argument 0"}
!3214 = distinct !{!3214, !"quoting_options_from_style"}
!3215 = !DILocation(line: 196, column: 13, scope: !3026, inlinedAt: !3206)
!3216 = !DILocation(line: 196, column: 7, scope: !3014, inlinedAt: !3206)
!3217 = !DILocation(line: 197, column: 5, scope: !3026, inlinedAt: !3206)
!3218 = !DILocation(line: 0, scope: !1949, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1013, column: 3, scope: !3199)
!3220 = !DILocation(line: 156, column: 57, scope: !1949, inlinedAt: !3219)
!3221 = !DILocation(line: 158, column: 12, scope: !1949, inlinedAt: !3219)
!3222 = !DILocation(line: 159, column: 6, scope: !1949, inlinedAt: !3219)
!3223 = !DILocation(line: 1014, column: 10, scope: !3199)
!3224 = !DILocation(line: 1015, column: 1, scope: !3199)
!3225 = !DILocation(line: 1014, column: 3, scope: !3199)
!3226 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !291, file: !291, line: 1018, type: !3227, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!33, !37, !35, !35, !35}
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !291, line: 1018, type: !37)
!3231 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3226, file: !291, line: 1018, type: !35)
!3232 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3226, file: !291, line: 1019, type: !35)
!3233 = !DILocalVariable(name: "arg", arg: 4, scope: !3226, file: !291, line: 1019, type: !35)
!3234 = !DILocalVariable(name: "o", scope: !3235, file: !291, line: 1030, type: !325)
!3235 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !291, file: !291, line: 1026, type: !3236, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!33, !37, !35, !35, !35, !92}
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3234}
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !291, line: 1026, type: !37)
!3240 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3235, file: !291, line: 1026, type: !35)
!3241 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3235, file: !291, line: 1027, type: !35)
!3242 = !DILocalVariable(name: "arg", arg: 4, scope: !3235, file: !291, line: 1028, type: !35)
!3243 = !DILocalVariable(name: "argsize", arg: 5, scope: !3235, file: !291, line: 1028, type: !92)
!3244 = !DILocation(line: 1030, column: 26, scope: !3235, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1021, column: 10, scope: !3226)
!3246 = !DILocation(line: 0, scope: !3226)
!3247 = !DILocation(line: 0, scope: !3235, inlinedAt: !3245)
!3248 = !DILocation(line: 1030, column: 3, scope: !3235, inlinedAt: !3245)
!3249 = !DILocation(line: 1030, column: 30, scope: !3235, inlinedAt: !3245)
!3250 = !DILocation(line: 0, scope: !1989, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1031, column: 3, scope: !3235, inlinedAt: !3245)
!3252 = !DILocation(line: 184, column: 6, scope: !1989, inlinedAt: !3251)
!3253 = !DILocation(line: 184, column: 12, scope: !1989, inlinedAt: !3251)
!3254 = !DILocation(line: 185, column: 8, scope: !2003, inlinedAt: !3251)
!3255 = !DILocation(line: 185, column: 23, scope: !2003, inlinedAt: !3251)
!3256 = !DILocation(line: 185, column: 19, scope: !2003, inlinedAt: !3251)
!3257 = !DILocation(line: 186, column: 5, scope: !2003, inlinedAt: !3251)
!3258 = !DILocation(line: 187, column: 6, scope: !1989, inlinedAt: !3251)
!3259 = !DILocation(line: 187, column: 17, scope: !1989, inlinedAt: !3251)
!3260 = !DILocation(line: 188, column: 6, scope: !1989, inlinedAt: !3251)
!3261 = !DILocation(line: 188, column: 18, scope: !1989, inlinedAt: !3251)
!3262 = !DILocation(line: 1032, column: 10, scope: !3235, inlinedAt: !3245)
!3263 = !DILocation(line: 1033, column: 1, scope: !3235, inlinedAt: !3245)
!3264 = !DILocation(line: 1021, column: 3, scope: !3226)
!3265 = !DILocation(line: 0, scope: !3235)
!3266 = !DILocation(line: 1030, column: 3, scope: !3235)
!3267 = !DILocation(line: 1030, column: 26, scope: !3235)
!3268 = !DILocation(line: 1030, column: 30, scope: !3235)
!3269 = !DILocation(line: 0, scope: !1989, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 1031, column: 3, scope: !3235)
!3271 = !DILocation(line: 184, column: 6, scope: !1989, inlinedAt: !3270)
!3272 = !DILocation(line: 184, column: 12, scope: !1989, inlinedAt: !3270)
!3273 = !DILocation(line: 185, column: 8, scope: !2003, inlinedAt: !3270)
!3274 = !DILocation(line: 185, column: 23, scope: !2003, inlinedAt: !3270)
!3275 = !DILocation(line: 185, column: 19, scope: !2003, inlinedAt: !3270)
!3276 = !DILocation(line: 186, column: 5, scope: !2003, inlinedAt: !3270)
!3277 = !DILocation(line: 187, column: 6, scope: !1989, inlinedAt: !3270)
!3278 = !DILocation(line: 187, column: 17, scope: !1989, inlinedAt: !3270)
!3279 = !DILocation(line: 188, column: 6, scope: !1989, inlinedAt: !3270)
!3280 = !DILocation(line: 188, column: 18, scope: !1989, inlinedAt: !3270)
!3281 = !DILocation(line: 1032, column: 10, scope: !3235)
!3282 = !DILocation(line: 1033, column: 1, scope: !3235)
!3283 = !DILocation(line: 1032, column: 3, scope: !3235)
!3284 = distinct !DISubprogram(name: "quotearg_custom", scope: !291, file: !291, line: 1036, type: !3285, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!33, !35, !35, !35}
!3287 = !{!3288, !3289, !3290}
!3288 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3284, file: !291, line: 1036, type: !35)
!3289 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3284, file: !291, line: 1036, type: !35)
!3290 = !DILocalVariable(name: "arg", arg: 3, scope: !3284, file: !291, line: 1037, type: !35)
!3291 = !DILocation(line: 1030, column: 26, scope: !3235, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1021, column: 10, scope: !3226, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1039, column: 10, scope: !3284)
!3294 = !DILocation(line: 0, scope: !3284)
!3295 = !DILocation(line: 0, scope: !3226, inlinedAt: !3293)
!3296 = !DILocation(line: 0, scope: !3235, inlinedAt: !3292)
!3297 = !DILocation(line: 1030, column: 3, scope: !3235, inlinedAt: !3292)
!3298 = !DILocation(line: 1030, column: 30, scope: !3235, inlinedAt: !3292)
!3299 = !DILocation(line: 0, scope: !1989, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1031, column: 3, scope: !3235, inlinedAt: !3292)
!3301 = !DILocation(line: 184, column: 6, scope: !1989, inlinedAt: !3300)
!3302 = !DILocation(line: 184, column: 12, scope: !1989, inlinedAt: !3300)
!3303 = !DILocation(line: 185, column: 8, scope: !2003, inlinedAt: !3300)
!3304 = !DILocation(line: 185, column: 23, scope: !2003, inlinedAt: !3300)
!3305 = !DILocation(line: 185, column: 19, scope: !2003, inlinedAt: !3300)
!3306 = !DILocation(line: 186, column: 5, scope: !2003, inlinedAt: !3300)
!3307 = !DILocation(line: 187, column: 6, scope: !1989, inlinedAt: !3300)
!3308 = !DILocation(line: 187, column: 17, scope: !1989, inlinedAt: !3300)
!3309 = !DILocation(line: 188, column: 6, scope: !1989, inlinedAt: !3300)
!3310 = !DILocation(line: 188, column: 18, scope: !1989, inlinedAt: !3300)
!3311 = !DILocation(line: 1032, column: 10, scope: !3235, inlinedAt: !3292)
!3312 = !DILocation(line: 1033, column: 1, scope: !3235, inlinedAt: !3292)
!3313 = !DILocation(line: 1039, column: 3, scope: !3284)
!3314 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !291, file: !291, line: 1043, type: !3315, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!33, !35, !35, !35, !92}
!3317 = !{!3318, !3319, !3320, !3321}
!3318 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3314, file: !291, line: 1043, type: !35)
!3319 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3314, file: !291, line: 1043, type: !35)
!3320 = !DILocalVariable(name: "arg", arg: 3, scope: !3314, file: !291, line: 1044, type: !35)
!3321 = !DILocalVariable(name: "argsize", arg: 4, scope: !3314, file: !291, line: 1044, type: !92)
!3322 = !DILocation(line: 1030, column: 26, scope: !3235, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1046, column: 10, scope: !3314)
!3324 = !DILocation(line: 0, scope: !3314)
!3325 = !DILocation(line: 0, scope: !3235, inlinedAt: !3323)
!3326 = !DILocation(line: 1030, column: 3, scope: !3235, inlinedAt: !3323)
!3327 = !DILocation(line: 1030, column: 30, scope: !3235, inlinedAt: !3323)
!3328 = !DILocation(line: 0, scope: !1989, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 1031, column: 3, scope: !3235, inlinedAt: !3323)
!3330 = !DILocation(line: 184, column: 6, scope: !1989, inlinedAt: !3329)
!3331 = !DILocation(line: 184, column: 12, scope: !1989, inlinedAt: !3329)
!3332 = !DILocation(line: 185, column: 8, scope: !2003, inlinedAt: !3329)
!3333 = !DILocation(line: 185, column: 23, scope: !2003, inlinedAt: !3329)
!3334 = !DILocation(line: 185, column: 19, scope: !2003, inlinedAt: !3329)
!3335 = !DILocation(line: 186, column: 5, scope: !2003, inlinedAt: !3329)
!3336 = !DILocation(line: 187, column: 6, scope: !1989, inlinedAt: !3329)
!3337 = !DILocation(line: 187, column: 17, scope: !1989, inlinedAt: !3329)
!3338 = !DILocation(line: 188, column: 6, scope: !1989, inlinedAt: !3329)
!3339 = !DILocation(line: 188, column: 18, scope: !1989, inlinedAt: !3329)
!3340 = !DILocation(line: 1032, column: 10, scope: !3235, inlinedAt: !3323)
!3341 = !DILocation(line: 1033, column: 1, scope: !3235, inlinedAt: !3323)
!3342 = !DILocation(line: 1046, column: 3, scope: !3314)
!3343 = distinct !DISubprogram(name: "quote_n_mem", scope: !291, file: !291, line: 1061, type: !3344, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!35, !37, !35, !92}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !291, line: 1061, type: !37)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !291, line: 1061, type: !35)
!3349 = !DILocalVariable(name: "argsize", arg: 3, scope: !3343, file: !291, line: 1061, type: !92)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 1063, column: 10, scope: !3343)
!3352 = !DILocation(line: 1063, column: 3, scope: !3343)
!3353 = distinct !DISubprogram(name: "quote_mem", scope: !291, file: !291, line: 1067, type: !3354, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!35, !35, !92}
!3356 = !{!3357, !3358}
!3357 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !291, line: 1067, type: !35)
!3358 = !DILocalVariable(name: "argsize", arg: 2, scope: !3353, file: !291, line: 1067, type: !92)
!3359 = !DILocation(line: 0, scope: !3353)
!3360 = !DILocation(line: 0, scope: !3343, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 1069, column: 10, scope: !3353)
!3362 = !DILocation(line: 1063, column: 10, scope: !3343, inlinedAt: !3361)
!3363 = !DILocation(line: 1069, column: 3, scope: !3353)
!3364 = distinct !DISubprogram(name: "quote_n", scope: !291, file: !291, line: 1073, type: !3365, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!35, !37, !35}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3364, file: !291, line: 1073, type: !37)
!3369 = !DILocalVariable(name: "arg", arg: 2, scope: !3364, file: !291, line: 1073, type: !35)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocation(line: 0, scope: !3343, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1075, column: 10, scope: !3364)
!3373 = !DILocation(line: 1063, column: 10, scope: !3343, inlinedAt: !3372)
!3374 = !DILocation(line: 1075, column: 3, scope: !3364)
!3375 = distinct !DISubprogram(name: "quote", scope: !291, file: !291, line: 1079, type: !166, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "arg", arg: 1, scope: !3375, file: !291, line: 1079, type: !35)
!3378 = !DILocation(line: 0, scope: !3375)
!3379 = !DILocation(line: 0, scope: !3364, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1081, column: 10, scope: !3375)
!3381 = !DILocation(line: 0, scope: !3343, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 1075, column: 10, scope: !3364, inlinedAt: !3380)
!3383 = !DILocation(line: 1063, column: 10, scope: !3343, inlinedAt: !3382)
!3384 = !DILocation(line: 1081, column: 3, scope: !3375)
!3385 = distinct !DISubprogram(name: "version_etc_arn", scope: !503, file: !503, line: 61, type: !3386, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3392)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3388, !35, !35, !35, !3391, !92}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3390, line: 7, baseType: !513)
!3390 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3385, file: !503, line: 61, type: !3388)
!3394 = !DILocalVariable(name: "command_name", arg: 2, scope: !3385, file: !503, line: 62, type: !35)
!3395 = !DILocalVariable(name: "package", arg: 3, scope: !3385, file: !503, line: 62, type: !35)
!3396 = !DILocalVariable(name: "version", arg: 4, scope: !3385, file: !503, line: 63, type: !35)
!3397 = !DILocalVariable(name: "authors", arg: 5, scope: !3385, file: !503, line: 64, type: !3391)
!3398 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3385, file: !503, line: 64, type: !92)
!3399 = !DILocation(line: 0, scope: !3385)
!3400 = !DILocation(line: 66, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3385, file: !503, line: 66, column: 7)
!3402 = !DILocation(line: 66, column: 7, scope: !3385)
!3403 = !DILocation(line: 67, column: 5, scope: !3401)
!3404 = !DILocation(line: 69, column: 5, scope: !3401)
!3405 = !DILocation(line: 83, column: 3, scope: !3385)
!3406 = !DILocation(line: 85, column: 3, scope: !3385)
!3407 = !DILocation(line: 88, column: 3, scope: !3385)
!3408 = !DILocation(line: 95, column: 3, scope: !3385)
!3409 = !DILocation(line: 97, column: 3, scope: !3385)
!3410 = !DILocation(line: 105, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3385, file: !503, line: 98, column: 5)
!3412 = !DILocation(line: 106, column: 7, scope: !3411)
!3413 = !DILocation(line: 109, column: 7, scope: !3411)
!3414 = !DILocation(line: 110, column: 7, scope: !3411)
!3415 = !DILocation(line: 113, column: 7, scope: !3411)
!3416 = !DILocation(line: 115, column: 7, scope: !3411)
!3417 = !DILocation(line: 120, column: 7, scope: !3411)
!3418 = !DILocation(line: 122, column: 7, scope: !3411)
!3419 = !DILocation(line: 127, column: 7, scope: !3411)
!3420 = !DILocation(line: 129, column: 7, scope: !3411)
!3421 = !DILocation(line: 134, column: 7, scope: !3411)
!3422 = !DILocation(line: 137, column: 7, scope: !3411)
!3423 = !DILocation(line: 142, column: 7, scope: !3411)
!3424 = !DILocation(line: 145, column: 7, scope: !3411)
!3425 = !DILocation(line: 150, column: 7, scope: !3411)
!3426 = !DILocation(line: 154, column: 7, scope: !3411)
!3427 = !DILocation(line: 159, column: 7, scope: !3411)
!3428 = !DILocation(line: 163, column: 7, scope: !3411)
!3429 = !DILocation(line: 170, column: 7, scope: !3411)
!3430 = !DILocation(line: 174, column: 7, scope: !3411)
!3431 = !DILocation(line: 176, column: 1, scope: !3385)
!3432 = distinct !DISubprogram(name: "version_etc_ar", scope: !503, file: !503, line: 183, type: !3433, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3388, !35, !35, !35, !3391}
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441}
!3436 = !DILocalVariable(name: "stream", arg: 1, scope: !3432, file: !503, line: 183, type: !3388)
!3437 = !DILocalVariable(name: "command_name", arg: 2, scope: !3432, file: !503, line: 184, type: !35)
!3438 = !DILocalVariable(name: "package", arg: 3, scope: !3432, file: !503, line: 184, type: !35)
!3439 = !DILocalVariable(name: "version", arg: 4, scope: !3432, file: !503, line: 185, type: !35)
!3440 = !DILocalVariable(name: "authors", arg: 5, scope: !3432, file: !503, line: 185, type: !3391)
!3441 = !DILocalVariable(name: "n_authors", scope: !3432, file: !503, line: 187, type: !92)
!3442 = !DILocation(line: 0, scope: !3432)
!3443 = !DILocation(line: 189, column: 8, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3432, file: !503, line: 189, column: 3)
!3445 = !DILocation(line: 0, scope: !3444)
!3446 = !DILocation(line: 189, column: 23, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !503, line: 189, column: 3)
!3448 = !DILocation(line: 189, column: 3, scope: !3444)
!3449 = !DILocation(line: 189, column: 52, scope: !3447)
!3450 = distinct !{!3450, !3448, !3451}
!3451 = !DILocation(line: 190, column: 5, scope: !3444)
!3452 = !DILocation(line: 191, column: 3, scope: !3432)
!3453 = !DILocation(line: 192, column: 1, scope: !3432)
!3454 = distinct !DISubprogram(name: "version_etc_va", scope: !503, file: !503, line: 199, type: !3455, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3464)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3388, !35, !35, !35, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !503, line: 192, size: 192, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3458, file: !503, line: 192, baseType: !7, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3458, file: !503, line: 192, baseType: !7, size: 32, offset: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3458, file: !503, line: 192, baseType: !90, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3458, file: !503, line: 192, baseType: !90, size: 64, offset: 128)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3465 = !DILocalVariable(name: "stream", arg: 1, scope: !3454, file: !503, line: 199, type: !3388)
!3466 = !DILocalVariable(name: "command_name", arg: 2, scope: !3454, file: !503, line: 200, type: !35)
!3467 = !DILocalVariable(name: "package", arg: 3, scope: !3454, file: !503, line: 200, type: !35)
!3468 = !DILocalVariable(name: "version", arg: 4, scope: !3454, file: !503, line: 201, type: !35)
!3469 = !DILocalVariable(name: "authors", arg: 5, scope: !3454, file: !503, line: 201, type: !3457)
!3470 = !DILocalVariable(name: "n_authors", scope: !3454, file: !503, line: 203, type: !92)
!3471 = !DILocalVariable(name: "authtab", scope: !3454, file: !503, line: 204, type: !3472)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !385)
!3473 = !DILocation(line: 0, scope: !3454)
!3474 = !DILocation(line: 204, column: 3, scope: !3454)
!3475 = !DILocation(line: 204, column: 15, scope: !3454)
!3476 = !DILocation(line: 0, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !503, line: 206, column: 3)
!3478 = distinct !DILexicalBlock(scope: !3454, file: !503, line: 206, column: 3)
!3479 = !DILocation(line: 208, column: 35, scope: !3477)
!3480 = !DILocation(line: 208, column: 14, scope: !3477)
!3481 = !DILocation(line: 208, column: 33, scope: !3477)
!3482 = !DILocation(line: 208, column: 67, scope: !3477)
!3483 = !DILocation(line: 206, column: 3, scope: !3478)
!3484 = !DILocation(line: 0, scope: !3478)
!3485 = !DILocation(line: 211, column: 3, scope: !3454)
!3486 = !DILocation(line: 213, column: 1, scope: !3454)
!3487 = distinct !DISubprogram(name: "version_etc", scope: !503, file: !503, line: 230, type: !3488, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3388, !35, !35, !35, null}
!3490 = !{!3491, !3492, !3493, !3494, !3495}
!3491 = !DILocalVariable(name: "stream", arg: 1, scope: !3487, file: !503, line: 230, type: !3388)
!3492 = !DILocalVariable(name: "command_name", arg: 2, scope: !3487, file: !503, line: 231, type: !35)
!3493 = !DILocalVariable(name: "package", arg: 3, scope: !3487, file: !503, line: 231, type: !35)
!3494 = !DILocalVariable(name: "version", arg: 4, scope: !3487, file: !503, line: 232, type: !35)
!3495 = !DILocalVariable(name: "authors", scope: !3487, file: !503, line: 234, type: !3496)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !40, line: 52, baseType: !3497)
!3497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3498, line: 32, baseType: !3499)
!3498 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !503, line: 234, baseType: !3500)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3458, size: 192, elements: !75)
!3501 = !DILocation(line: 0, scope: !3487)
!3502 = !DILocation(line: 234, column: 3, scope: !3487)
!3503 = !DILocation(line: 234, column: 11, scope: !3487)
!3504 = !DILocation(line: 236, column: 3, scope: !3487)
!3505 = !DILocation(line: 237, column: 3, scope: !3487)
!3506 = !DILocation(line: 238, column: 3, scope: !3487)
!3507 = !DILocation(line: 239, column: 1, scope: !3487)
!3508 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !503, file: !503, line: 242, type: !119, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !38)
!3509 = !DILocation(line: 244, column: 3, scope: !3508)
!3510 = !DILocation(line: 249, column: 3, scope: !3508)
!3511 = !DILocation(line: 255, column: 3, scope: !3508)
!3512 = !DILocation(line: 260, column: 3, scope: !3508)
!3513 = !DILocation(line: 262, column: 1, scope: !3508)
!3514 = distinct !DISubprogram(name: "xnmalloc", scope: !315, file: !315, line: 99, type: !1616, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3515)
!3515 = !{!3516, !3517}
!3516 = !DILocalVariable(name: "n", arg: 1, scope: !3514, file: !315, line: 99, type: !92)
!3517 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !315, line: 99, type: !92)
!3518 = !DILocation(line: 0, scope: !3514)
!3519 = !DILocation(line: 101, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3514, file: !315, line: 101, column: 7)
!3521 = !DILocation(line: 101, column: 7, scope: !3514)
!3522 = !DILocation(line: 102, column: 5, scope: !3520)
!3523 = !DILocation(line: 103, column: 21, scope: !3514)
!3524 = !DILocalVariable(name: "n", arg: 1, scope: !3525, file: !545, line: 39, type: !92)
!3525 = distinct !DISubprogram(name: "xmalloc", scope: !545, file: !545, line: 39, type: !3526, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!90, !92}
!3528 = !{!3524, !3529}
!3529 = !DILocalVariable(name: "p", scope: !3525, file: !545, line: 41, type: !90)
!3530 = !DILocation(line: 0, scope: !3525, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 103, column: 10, scope: !3514)
!3532 = !DILocation(line: 41, column: 13, scope: !3525, inlinedAt: !3531)
!3533 = !DILocation(line: 42, column: 8, scope: !3534, inlinedAt: !3531)
!3534 = distinct !DILexicalBlock(scope: !3525, file: !545, line: 42, column: 7)
!3535 = !DILocation(line: 42, column: 15, scope: !3534, inlinedAt: !3531)
!3536 = !DILocation(line: 42, column: 10, scope: !3534, inlinedAt: !3531)
!3537 = !DILocation(line: 43, column: 5, scope: !3534, inlinedAt: !3531)
!3538 = !DILocation(line: 103, column: 3, scope: !3514)
!3539 = !DILocation(line: 0, scope: !3525)
!3540 = !DILocation(line: 41, column: 13, scope: !3525)
!3541 = !DILocation(line: 42, column: 8, scope: !3534)
!3542 = !DILocation(line: 42, column: 15, scope: !3534)
!3543 = !DILocation(line: 42, column: 10, scope: !3534)
!3544 = !DILocation(line: 43, column: 5, scope: !3534)
!3545 = !DILocation(line: 44, column: 3, scope: !3525)
!3546 = distinct !DISubprogram(name: "xnrealloc", scope: !315, file: !315, line: 112, type: !3547, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!90, !90, !92, !92}
!3549 = !{!3550, !3551, !3552}
!3550 = !DILocalVariable(name: "p", arg: 1, scope: !3546, file: !315, line: 112, type: !90)
!3551 = !DILocalVariable(name: "n", arg: 2, scope: !3546, file: !315, line: 112, type: !92)
!3552 = !DILocalVariable(name: "s", arg: 3, scope: !3546, file: !315, line: 112, type: !92)
!3553 = !DILocation(line: 0, scope: !3546)
!3554 = !DILocation(line: 114, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3546, file: !315, line: 114, column: 7)
!3556 = !DILocation(line: 114, column: 7, scope: !3546)
!3557 = !DILocation(line: 115, column: 5, scope: !3555)
!3558 = !DILocation(line: 116, column: 25, scope: !3546)
!3559 = !DILocalVariable(name: "p", arg: 1, scope: !3560, file: !545, line: 51, type: !90)
!3560 = distinct !DISubprogram(name: "xrealloc", scope: !545, file: !545, line: 51, type: !3561, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!90, !90, !92}
!3563 = !{!3559, !3564}
!3564 = !DILocalVariable(name: "n", arg: 2, scope: !3560, file: !545, line: 51, type: !92)
!3565 = !DILocation(line: 0, scope: !3560, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 116, column: 10, scope: !3546)
!3567 = !DILocation(line: 53, column: 8, scope: !3568, inlinedAt: !3566)
!3568 = distinct !DILexicalBlock(scope: !3560, file: !545, line: 53, column: 7)
!3569 = !DILocation(line: 53, column: 13, scope: !3568, inlinedAt: !3566)
!3570 = !DILocation(line: 53, column: 10, scope: !3568, inlinedAt: !3566)
!3571 = !DILocation(line: 57, column: 7, scope: !3572, inlinedAt: !3566)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !545, line: 54, column: 5)
!3573 = !DILocation(line: 58, column: 7, scope: !3572, inlinedAt: !3566)
!3574 = !DILocation(line: 61, column: 7, scope: !3560, inlinedAt: !3566)
!3575 = !DILocation(line: 62, column: 8, scope: !3576, inlinedAt: !3566)
!3576 = distinct !DILexicalBlock(scope: !3560, file: !545, line: 62, column: 7)
!3577 = !DILocation(line: 62, column: 13, scope: !3576, inlinedAt: !3566)
!3578 = !DILocation(line: 62, column: 10, scope: !3576, inlinedAt: !3566)
!3579 = !DILocation(line: 63, column: 5, scope: !3576, inlinedAt: !3566)
!3580 = !DILocation(line: 116, column: 3, scope: !3546)
!3581 = !DILocation(line: 0, scope: !3560)
!3582 = !DILocation(line: 53, column: 8, scope: !3568)
!3583 = !DILocation(line: 53, column: 13, scope: !3568)
!3584 = !DILocation(line: 53, column: 10, scope: !3568)
!3585 = !DILocation(line: 57, column: 7, scope: !3572)
!3586 = !DILocation(line: 58, column: 7, scope: !3572)
!3587 = !DILocation(line: 61, column: 7, scope: !3560)
!3588 = !DILocation(line: 62, column: 8, scope: !3576)
!3589 = !DILocation(line: 62, column: 13, scope: !3576)
!3590 = !DILocation(line: 62, column: 10, scope: !3576)
!3591 = !DILocation(line: 63, column: 5, scope: !3576)
!3592 = !DILocation(line: 65, column: 1, scope: !3560)
!3593 = !DILocation(line: 0, scope: !548)
!3594 = !DILocation(line: 176, column: 14, scope: !548)
!3595 = !DILocation(line: 178, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !548, file: !315, line: 178, column: 7)
!3597 = !DILocation(line: 178, column: 7, scope: !548)
!3598 = !DILocation(line: 180, column: 13, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !315, line: 180, column: 11)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !315, line: 179, column: 5)
!3601 = !DILocation(line: 180, column: 11, scope: !3600)
!3602 = !DILocation(line: 188, column: 30, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !315, line: 181, column: 9)
!3604 = !DILocation(line: 189, column: 16, scope: !3603)
!3605 = !DILocation(line: 189, column: 13, scope: !3603)
!3606 = !DILocation(line: 190, column: 9, scope: !3603)
!3607 = !DILocation(line: 191, column: 11, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !315, line: 191, column: 11)
!3609 = !DILocation(line: 191, column: 11, scope: !3600)
!3610 = !DILocation(line: 206, column: 7, scope: !548)
!3611 = !DILocation(line: 207, column: 25, scope: !548)
!3612 = !DILocation(line: 0, scope: !3560, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 207, column: 10, scope: !548)
!3614 = !DILocation(line: 53, column: 10, scope: !3568, inlinedAt: !3613)
!3615 = !DILocation(line: 192, column: 9, scope: !3608)
!3616 = !DILocation(line: 200, column: 69, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !315, line: 200, column: 11)
!3618 = distinct !DILexicalBlock(scope: !3596, file: !315, line: 195, column: 5)
!3619 = !DILocation(line: 201, column: 11, scope: !3617)
!3620 = !DILocation(line: 200, column: 11, scope: !3618)
!3621 = !DILocation(line: 202, column: 9, scope: !3617)
!3622 = !DILocation(line: 203, column: 14, scope: !3618)
!3623 = !DILocation(line: 203, column: 18, scope: !3618)
!3624 = !DILocation(line: 203, column: 9, scope: !3618)
!3625 = !DILocation(line: 53, column: 8, scope: !3568, inlinedAt: !3613)
!3626 = !DILocation(line: 57, column: 7, scope: !3572, inlinedAt: !3613)
!3627 = !DILocation(line: 58, column: 7, scope: !3572, inlinedAt: !3613)
!3628 = !DILocation(line: 61, column: 7, scope: !3560, inlinedAt: !3613)
!3629 = !DILocation(line: 62, column: 8, scope: !3576, inlinedAt: !3613)
!3630 = !DILocation(line: 62, column: 13, scope: !3576, inlinedAt: !3613)
!3631 = !DILocation(line: 62, column: 10, scope: !3576, inlinedAt: !3613)
!3632 = !DILocation(line: 63, column: 5, scope: !3576, inlinedAt: !3613)
!3633 = !DILocation(line: 207, column: 3, scope: !548)
!3634 = distinct !DISubprogram(name: "xcharalloc", scope: !315, file: !315, line: 216, type: !2804, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3634, file: !315, line: 216, type: !92)
!3637 = !DILocation(line: 0, scope: !3634)
!3638 = !DILocation(line: 0, scope: !3525, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 218, column: 10, scope: !3634)
!3640 = !DILocation(line: 41, column: 13, scope: !3525, inlinedAt: !3639)
!3641 = !DILocation(line: 42, column: 8, scope: !3534, inlinedAt: !3639)
!3642 = !DILocation(line: 42, column: 15, scope: !3534, inlinedAt: !3639)
!3643 = !DILocation(line: 42, column: 10, scope: !3534, inlinedAt: !3639)
!3644 = !DILocation(line: 43, column: 5, scope: !3534, inlinedAt: !3639)
!3645 = !DILocation(line: 218, column: 3, scope: !3634)
!3646 = distinct !DISubprogram(name: "x2realloc", scope: !545, file: !545, line: 74, type: !3647, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!90, !90, !551}
!3649 = !{!3650, !3651}
!3650 = !DILocalVariable(name: "p", arg: 1, scope: !3646, file: !545, line: 74, type: !90)
!3651 = !DILocalVariable(name: "pn", arg: 2, scope: !3646, file: !545, line: 74, type: !551)
!3652 = !DILocation(line: 0, scope: !3646)
!3653 = !DILocation(line: 0, scope: !548, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 76, column: 10, scope: !3646)
!3655 = !DILocation(line: 176, column: 14, scope: !548, inlinedAt: !3654)
!3656 = !DILocation(line: 178, column: 9, scope: !3596, inlinedAt: !3654)
!3657 = !DILocation(line: 178, column: 7, scope: !548, inlinedAt: !3654)
!3658 = !DILocation(line: 180, column: 13, scope: !3599, inlinedAt: !3654)
!3659 = !DILocation(line: 180, column: 11, scope: !3600, inlinedAt: !3654)
!3660 = !DILocation(line: 191, column: 11, scope: !3608, inlinedAt: !3654)
!3661 = !DILocation(line: 191, column: 11, scope: !3600, inlinedAt: !3654)
!3662 = !DILocation(line: 206, column: 7, scope: !548, inlinedAt: !3654)
!3663 = !DILocation(line: 0, scope: !3560, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 207, column: 10, scope: !548, inlinedAt: !3654)
!3665 = !DILocation(line: 53, column: 10, scope: !3568, inlinedAt: !3664)
!3666 = !DILocation(line: 192, column: 9, scope: !3608, inlinedAt: !3654)
!3667 = !DILocation(line: 201, column: 11, scope: !3617, inlinedAt: !3654)
!3668 = !DILocation(line: 200, column: 11, scope: !3618, inlinedAt: !3654)
!3669 = !DILocation(line: 202, column: 9, scope: !3617, inlinedAt: !3654)
!3670 = !DILocation(line: 203, column: 14, scope: !3618, inlinedAt: !3654)
!3671 = !DILocation(line: 203, column: 18, scope: !3618, inlinedAt: !3654)
!3672 = !DILocation(line: 203, column: 9, scope: !3618, inlinedAt: !3654)
!3673 = !DILocation(line: 53, column: 8, scope: !3568, inlinedAt: !3664)
!3674 = !DILocation(line: 57, column: 7, scope: !3572, inlinedAt: !3664)
!3675 = !DILocation(line: 58, column: 7, scope: !3572, inlinedAt: !3664)
!3676 = !DILocation(line: 61, column: 7, scope: !3560, inlinedAt: !3664)
!3677 = !DILocation(line: 62, column: 8, scope: !3576, inlinedAt: !3664)
!3678 = !DILocation(line: 62, column: 13, scope: !3576, inlinedAt: !3664)
!3679 = !DILocation(line: 62, column: 10, scope: !3576, inlinedAt: !3664)
!3680 = !DILocation(line: 63, column: 5, scope: !3576, inlinedAt: !3664)
!3681 = !DILocation(line: 76, column: 3, scope: !3646)
!3682 = distinct !DISubprogram(name: "xzalloc", scope: !545, file: !545, line: 84, type: !3526, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3683)
!3683 = !{!3684}
!3684 = !DILocalVariable(name: "n", arg: 1, scope: !3682, file: !545, line: 84, type: !92)
!3685 = !DILocation(line: 0, scope: !3682)
!3686 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !545, line: 93, type: !92)
!3687 = distinct !DISubprogram(name: "xcalloc", scope: !545, file: !545, line: 93, type: !1616, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3688)
!3688 = !{!3686, !3689, !3690}
!3689 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !545, line: 93, type: !92)
!3690 = !DILocalVariable(name: "p", scope: !3687, file: !545, line: 95, type: !90)
!3691 = !DILocation(line: 0, scope: !3687, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 86, column: 10, scope: !3682)
!3693 = !DILocation(line: 100, column: 7, scope: !3694, inlinedAt: !3692)
!3694 = distinct !DILexicalBlock(scope: !3687, file: !545, line: 100, column: 7)
!3695 = !DILocation(line: 101, column: 7, scope: !3694, inlinedAt: !3692)
!3696 = !DILocation(line: 101, column: 18, scope: !3694, inlinedAt: !3692)
!3697 = !DILocation(line: 101, column: 16, scope: !3694, inlinedAt: !3692)
!3698 = !DILocation(line: 100, column: 7, scope: !3687, inlinedAt: !3692)
!3699 = !DILocation(line: 102, column: 5, scope: !3694, inlinedAt: !3692)
!3700 = !DILocation(line: 86, column: 3, scope: !3682)
!3701 = !DILocation(line: 0, scope: !3687)
!3702 = !DILocation(line: 100, column: 7, scope: !3694)
!3703 = !DILocation(line: 101, column: 7, scope: !3694)
!3704 = !DILocation(line: 101, column: 18, scope: !3694)
!3705 = !DILocation(line: 101, column: 16, scope: !3694)
!3706 = !DILocation(line: 100, column: 7, scope: !3687)
!3707 = !DILocation(line: 102, column: 5, scope: !3694)
!3708 = !DILocation(line: 103, column: 3, scope: !3687)
!3709 = distinct !DISubprogram(name: "xmemdup", scope: !545, file: !545, line: 111, type: !3710, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!90, !318, !92}
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "p", arg: 1, scope: !3709, file: !545, line: 111, type: !318)
!3714 = !DILocalVariable(name: "s", arg: 2, scope: !3709, file: !545, line: 111, type: !92)
!3715 = !DILocation(line: 0, scope: !3709)
!3716 = !DILocation(line: 0, scope: !3525, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 113, column: 18, scope: !3709)
!3718 = !DILocation(line: 41, column: 13, scope: !3525, inlinedAt: !3717)
!3719 = !DILocation(line: 42, column: 8, scope: !3534, inlinedAt: !3717)
!3720 = !DILocation(line: 42, column: 15, scope: !3534, inlinedAt: !3717)
!3721 = !DILocation(line: 42, column: 10, scope: !3534, inlinedAt: !3717)
!3722 = !DILocation(line: 43, column: 5, scope: !3534, inlinedAt: !3717)
!3723 = !DILocalVariable(name: "__dest", arg: 1, scope: !3724, file: !2337, line: 31, type: !3727)
!3724 = distinct !DISubprogram(name: "memcpy", scope: !2337, file: !2337, line: 31, type: !3725, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3729)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!90, !3727, !3728, !92}
!3727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!3728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !318)
!3729 = !{!3723, !3730, !3731}
!3730 = !DILocalVariable(name: "__src", arg: 2, scope: !3724, file: !2337, line: 31, type: !3728)
!3731 = !DILocalVariable(name: "__len", arg: 3, scope: !3724, file: !2337, line: 31, type: !92)
!3732 = !DILocation(line: 0, scope: !3724, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 113, column: 10, scope: !3709)
!3734 = !DILocation(line: 34, column: 10, scope: !3724, inlinedAt: !3733)
!3735 = !DILocation(line: 113, column: 3, scope: !3709)
!3736 = distinct !DISubprogram(name: "xstrdup", scope: !545, file: !545, line: 119, type: !112, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !3737)
!3737 = !{!3738}
!3738 = !DILocalVariable(name: "string", arg: 1, scope: !3736, file: !545, line: 119, type: !35)
!3739 = !DILocation(line: 0, scope: !3736)
!3740 = !DILocation(line: 121, column: 27, scope: !3736)
!3741 = !DILocation(line: 121, column: 43, scope: !3736)
!3742 = !DILocation(line: 0, scope: !3709, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 121, column: 10, scope: !3736)
!3744 = !DILocation(line: 0, scope: !3525, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 113, column: 18, scope: !3709, inlinedAt: !3743)
!3746 = !DILocation(line: 41, column: 13, scope: !3525, inlinedAt: !3745)
!3747 = !DILocation(line: 42, column: 8, scope: !3534, inlinedAt: !3745)
!3748 = !DILocation(line: 42, column: 15, scope: !3534, inlinedAt: !3745)
!3749 = !DILocation(line: 42, column: 10, scope: !3534, inlinedAt: !3745)
!3750 = !DILocation(line: 43, column: 5, scope: !3534, inlinedAt: !3745)
!3751 = !DILocation(line: 0, scope: !3724, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 113, column: 10, scope: !3709, inlinedAt: !3743)
!3753 = !DILocation(line: 34, column: 10, scope: !3724, inlinedAt: !3752)
!3754 = !DILocation(line: 121, column: 3, scope: !3736)
!3755 = distinct !DISubprogram(name: "xalloc_die", scope: !566, file: !566, line: 32, type: !119, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !38)
!3756 = !DILocation(line: 34, column: 10, scope: !3755)
!3757 = !DILocation(line: 34, column: 33, scope: !3755)
!3758 = !DILocation(line: 34, column: 3, scope: !3755)
!3759 = !DILocation(line: 40, column: 3, scope: !3755)
!3760 = distinct !DISubprogram(name: "xstrtoumax", scope: !3761, file: !3761, line: 76, type: !3762, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3766)
!3761 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3764, !35, !171, !37, !3765, !35}
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 38, baseType: !5)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3779, !3780, !3783, !3784}
!3767 = !DILocalVariable(name: "s", arg: 1, scope: !3760, file: !3761, line: 76, type: !35)
!3768 = !DILocalVariable(name: "ptr", arg: 2, scope: !3760, file: !3761, line: 76, type: !171)
!3769 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3760, file: !3761, line: 76, type: !37)
!3770 = !DILocalVariable(name: "val", arg: 4, scope: !3760, file: !3761, line: 77, type: !3765)
!3771 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3760, file: !3761, line: 77, type: !35)
!3772 = !DILocalVariable(name: "t_ptr", scope: !3760, file: !3761, line: 79, type: !33)
!3773 = !DILocalVariable(name: "p", scope: !3760, file: !3761, line: 80, type: !171)
!3774 = !DILocalVariable(name: "tmp", scope: !3760, file: !3761, line: 81, type: !1270)
!3775 = !DILocalVariable(name: "err", scope: !3760, file: !3761, line: 82, type: !3764)
!3776 = !DILocalVariable(name: "q", scope: !3777, file: !3761, line: 92, type: !35)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !3761, line: 91, column: 5)
!3778 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 90, column: 7)
!3779 = !DILocalVariable(name: "ch", scope: !3777, file: !3761, line: 93, type: !1957)
!3780 = !DILocalVariable(name: "base", scope: !3781, file: !3761, line: 129, type: !37)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3761, line: 128, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 127, column: 7)
!3783 = !DILocalVariable(name: "suffixes", scope: !3781, file: !3761, line: 130, type: !37)
!3784 = !DILocalVariable(name: "overflow", scope: !3781, file: !3761, line: 131, type: !3764)
!3785 = !DILocation(line: 0, scope: !3760)
!3786 = !DILocation(line: 79, column: 3, scope: !3760)
!3787 = !DILocation(line: 84, column: 3, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3761, line: 84, column: 3)
!3789 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 84, column: 3)
!3790 = !DILocation(line: 86, column: 8, scope: !3760)
!3791 = !DILocation(line: 88, column: 3, scope: !3760)
!3792 = !DILocation(line: 88, column: 9, scope: !3760)
!3793 = !DILocation(line: 0, scope: !3777)
!3794 = !DILocation(line: 94, column: 7, scope: !3777)
!3795 = !DILocation(line: 94, column: 14, scope: !3777)
!3796 = !DILocation(line: 95, column: 15, scope: !3777)
!3797 = distinct !{!3797, !3794, !3798}
!3798 = !DILocation(line: 95, column: 17, scope: !3777)
!3799 = !DILocation(line: 96, column: 14, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3777, file: !3761, line: 96, column: 11)
!3801 = !DILocalVariable(name: "nptr", arg: 1, scope: !3802, file: !3803, line: 336, type: !3806)
!3802 = distinct !DISubprogram(name: "strtoumax", scope: !3803, file: !3803, line: 336, type: !3804, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3808)
!3803 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!1270, !3806, !3807, !37}
!3806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!3807 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!3808 = !{!3801, !3809, !3810}
!3809 = !DILocalVariable(name: "endptr", arg: 2, scope: !3802, file: !3803, line: 336, type: !3807)
!3810 = !DILocalVariable(name: "base", arg: 3, scope: !3802, file: !3803, line: 336, type: !37)
!3811 = !DILocation(line: 0, scope: !3802, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 100, column: 9, scope: !3760)
!3813 = !DILocation(line: 339, column: 10, scope: !3802, inlinedAt: !3812)
!3814 = !DILocation(line: 102, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 102, column: 7)
!3816 = !DILocation(line: 102, column: 10, scope: !3815)
!3817 = !DILocation(line: 102, column: 7, scope: !3760)
!3818 = !DILocation(line: 106, column: 11, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !3761, line: 106, column: 11)
!3820 = distinct !DILexicalBlock(scope: !3815, file: !3761, line: 103, column: 5)
!3821 = !DILocation(line: 106, column: 26, scope: !3819)
!3822 = !DILocation(line: 106, column: 29, scope: !3819)
!3823 = !DILocation(line: 106, column: 33, scope: !3819)
!3824 = !DILocation(line: 106, column: 36, scope: !3819)
!3825 = !DILocation(line: 106, column: 11, scope: !3820)
!3826 = !DILocation(line: 111, column: 12, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3815, file: !3761, line: 111, column: 12)
!3828 = !DILocation(line: 111, column: 12, scope: !3815)
!3829 = !DILocation(line: 116, column: 5, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !3761, line: 112, column: 5)
!3831 = !DILocation(line: 121, column: 8, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3760, file: !3761, line: 121, column: 7)
!3833 = !DILocation(line: 121, column: 7, scope: !3760)
!3834 = !DILocation(line: 123, column: 12, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !3761, line: 122, column: 5)
!3836 = !DILocation(line: 124, column: 7, scope: !3835)
!3837 = !DILocation(line: 127, column: 7, scope: !3782)
!3838 = !DILocation(line: 127, column: 11, scope: !3782)
!3839 = !DILocation(line: 127, column: 7, scope: !3760)
!3840 = !DILocation(line: 0, scope: !3781)
!3841 = !DILocation(line: 133, column: 12, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3781, file: !3761, line: 133, column: 11)
!3843 = !DILocation(line: 133, column: 11, scope: !3781)
!3844 = !DILocation(line: 135, column: 16, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !3761, line: 134, column: 9)
!3846 = !DILocation(line: 136, column: 22, scope: !3845)
!3847 = !DILocation(line: 136, column: 11, scope: !3845)
!3848 = !DILocation(line: 139, column: 7, scope: !3781)
!3849 = !DILocation(line: 151, column: 15, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3761, line: 151, column: 15)
!3851 = distinct !DILexicalBlock(scope: !3781, file: !3761, line: 140, column: 9)
!3852 = !DILocation(line: 151, column: 15, scope: !3851)
!3853 = !DILocation(line: 152, column: 21, scope: !3850)
!3854 = !DILocation(line: 152, column: 13, scope: !3850)
!3855 = !DILocation(line: 155, column: 21, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !3761, line: 155, column: 21)
!3857 = distinct !DILexicalBlock(scope: !3850, file: !3761, line: 153, column: 15)
!3858 = !DILocation(line: 155, column: 29, scope: !3856)
!3859 = !DILocation(line: 155, column: 21, scope: !3857)
!3860 = !DILocation(line: 163, column: 17, scope: !3857)
!3861 = !DILocation(line: 167, column: 7, scope: !3781)
!3862 = !DILocalVariable(name: "err", scope: !3863, file: !3761, line: 67, type: !3764)
!3863 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3761, file: !3761, line: 65, type: !3864, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!3764, !3765, !37, !37}
!3866 = !{!3867, !3868, !3869, !3862}
!3867 = !DILocalVariable(name: "x", arg: 1, scope: !3863, file: !3761, line: 65, type: !3765)
!3868 = !DILocalVariable(name: "base", arg: 2, scope: !3863, file: !3761, line: 65, type: !37)
!3869 = !DILocalVariable(name: "power", arg: 3, scope: !3863, file: !3761, line: 65, type: !37)
!3870 = !DILocation(line: 0, scope: !3863, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 221, column: 22, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3781, file: !3761, line: 168, column: 9)
!3873 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3874, file: !3761, line: 48, type: !37)
!3874 = distinct !DISubprogram(name: "bkm_scale", scope: !3761, file: !3761, line: 48, type: !3875, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!3764, !3765, !37}
!3877 = !{!3878, !3873}
!3878 = !DILocalVariable(name: "x", arg: 1, scope: !3874, file: !3761, line: 48, type: !3765)
!3879 = !DILocation(line: 0, scope: !3874, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3871)
!3881 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3880)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !3761, line: 55, column: 7)
!3883 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3880)
!3884 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3871)
!3885 = !DILocation(line: 229, column: 11, scope: !3781)
!3886 = !DILocation(line: 0, scope: !3863, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 217, column: 22, scope: !3872)
!3888 = !DILocation(line: 0, scope: !3874, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3887)
!3890 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3889)
!3891 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3889)
!3892 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3887)
!3893 = !DILocation(line: 0, scope: !3863, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 204, column: 22, scope: !3872)
!3895 = !DILocation(line: 0, scope: !3874, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3894)
!3897 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3896)
!3898 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3896)
!3899 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3894)
!3900 = !DILocation(line: 0, scope: !3863, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 185, column: 22, scope: !3872)
!3902 = !DILocation(line: 0, scope: !3874, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3901)
!3904 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3903)
!3905 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3903)
!3906 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3901)
!3907 = !DILocation(line: 0, scope: !3874, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 170, column: 22, scope: !3872)
!3909 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3908)
!3910 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3908)
!3911 = !DILocation(line: 171, column: 11, scope: !3872)
!3912 = !DILocation(line: 0, scope: !3874, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 177, column: 22, scope: !3872)
!3914 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3913)
!3915 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3913)
!3916 = !DILocation(line: 178, column: 11, scope: !3872)
!3917 = !DILocation(line: 0, scope: !3863, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 190, column: 22, scope: !3872)
!3919 = !DILocation(line: 0, scope: !3874, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3918)
!3921 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3920)
!3922 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3920)
!3923 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3918)
!3924 = !DILocation(line: 0, scope: !3863, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 195, column: 22, scope: !3872)
!3926 = !DILocation(line: 0, scope: !3874, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3925)
!3928 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3927)
!3929 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3927)
!3930 = !DILocation(line: 0, scope: !3863, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 200, column: 22, scope: !3872)
!3932 = !DILocation(line: 0, scope: !3874, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3931)
!3934 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3933)
!3935 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3933)
!3936 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3931)
!3937 = !DILocation(line: 0, scope: !3863, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 209, column: 22, scope: !3872)
!3939 = !DILocation(line: 0, scope: !3874, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 69, column: 12, scope: !3863, inlinedAt: !3938)
!3941 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3940)
!3942 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3940)
!3943 = !DILocation(line: 69, column: 9, scope: !3863, inlinedAt: !3938)
!3944 = !DILocation(line: 0, scope: !3874, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 213, column: 22, scope: !3872)
!3946 = !DILocation(line: 55, column: 39, scope: !3882, inlinedAt: !3945)
!3947 = !DILocation(line: 55, column: 7, scope: !3874, inlinedAt: !3945)
!3948 = !DILocation(line: 214, column: 11, scope: !3872)
!3949 = !DILocation(line: 225, column: 16, scope: !3872)
!3950 = !DILocation(line: 226, column: 22, scope: !3872)
!3951 = !DILocation(line: 226, column: 11, scope: !3872)
!3952 = !DILocation(line: 0, scope: !3872)
!3953 = !DILocation(line: 230, column: 10, scope: !3781)
!3954 = !DILocation(line: 231, column: 11, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3781, file: !3761, line: 231, column: 11)
!3956 = !DILocation(line: 232, column: 13, scope: !3955)
!3957 = !DILocation(line: 231, column: 11, scope: !3781)
!3958 = !DILocation(line: 107, column: 13, scope: !3819)
!3959 = !DILocation(line: 82, column: 16, scope: !3760)
!3960 = !DILocation(line: 235, column: 8, scope: !3760)
!3961 = !DILocation(line: 236, column: 3, scope: !3760)
!3962 = !DILocation(line: 237, column: 1, scope: !3760)
!3963 = distinct !DISubprogram(name: "rpl_calloc", scope: !573, file: !573, line: 42, type: !1616, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3964)
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DILocalVariable(name: "n", arg: 1, scope: !3963, file: !573, line: 42, type: !92)
!3966 = !DILocalVariable(name: "s", arg: 2, scope: !3963, file: !573, line: 42, type: !92)
!3967 = !DILocalVariable(name: "result", scope: !3963, file: !573, line: 44, type: !90)
!3968 = !DILocalVariable(name: "bytes", scope: !3969, file: !573, line: 56, type: !92)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !573, line: 53, column: 5)
!3970 = distinct !DILexicalBlock(scope: !3963, file: !573, line: 47, column: 7)
!3971 = !DILocation(line: 0, scope: !3963)
!3972 = !DILocation(line: 47, column: 9, scope: !3970)
!3973 = !DILocation(line: 47, column: 19, scope: !3970)
!3974 = !DILocation(line: 47, column: 14, scope: !3970)
!3975 = !DILocation(line: 0, scope: !3969)
!3976 = !DILocation(line: 57, column: 21, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3969, file: !573, line: 57, column: 11)
!3978 = !DILocation(line: 57, column: 11, scope: !3969)
!3979 = !DILocation(line: 59, column: 11, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !573, line: 58, column: 9)
!3981 = !DILocation(line: 59, column: 17, scope: !3980)
!3982 = !DILocation(line: 65, column: 12, scope: !3963)
!3983 = !DILocation(line: 72, column: 3, scope: !3963)
!3984 = !DILocation(line: 73, column: 1, scope: !3963)
!3985 = !DILocation(line: 0, scope: !421)
!3986 = !DILocation(line: 53, column: 12, scope: !421)
!3987 = !DILocation(line: 54, column: 10, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !421, file: !422, line: 54, column: 7)
!3989 = !DILocation(line: 54, column: 7, scope: !421)
!3990 = !DILocation(line: 64, column: 3, scope: !421)
!3991 = !DILocation(line: 64, column: 15, scope: !421)
!3992 = !DILocalVariable(name: "__fd", arg: 1, scope: !3993, file: !151, line: 474, type: !37)
!3993 = distinct !DISubprogram(name: "fstatat", scope: !151, file: !151, line: 474, type: !3994, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3997)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!37, !37, !35, !3996, !37}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!3997 = !{!3992, !3998, !3999, !4000}
!3998 = !DILocalVariable(name: "__filename", arg: 2, scope: !3993, file: !151, line: 474, type: !35)
!3999 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3993, file: !151, line: 474, type: !3996)
!4000 = !DILocalVariable(name: "__flag", arg: 4, scope: !3993, file: !151, line: 474, type: !37)
!4001 = !DILocation(line: 0, scope: !3993, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 65, column: 7, scope: !480)
!4003 = !DILocation(line: 477, column: 10, scope: !3993, inlinedAt: !4002)
!4004 = !DILocation(line: 65, column: 44, scope: !480)
!4005 = !DILocation(line: 65, column: 7, scope: !421)
!4006 = !DILocation(line: 67, column: 24, scope: !479)
!4007 = !DILocation(line: 0, scope: !479)
!4008 = !DILocation(line: 68, column: 7, scope: !479)
!4009 = !DILocation(line: 69, column: 13, scope: !479)
!4010 = !DILocation(line: 72, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !421, file: !422, line: 72, column: 7)
!4012 = !DILocation(line: 72, column: 7, scope: !421)
!4013 = !DILocation(line: 74, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4011, file: !422, line: 73, column: 5)
!4015 = !DILocation(line: 75, column: 7, scope: !4014)
!4016 = !DILocation(line: 75, column: 13, scope: !4014)
!4017 = !DILocation(line: 76, column: 7, scope: !4014)
!4018 = !DILocation(line: 81, column: 3, scope: !421)
!4019 = !DILocation(line: 81, column: 8, scope: !421)
!4020 = !DILocation(line: 82, column: 3, scope: !421)
!4021 = !DILocation(line: 83, column: 22, scope: !421)
!4022 = !DILocation(line: 84, column: 21, scope: !421)
!4023 = !DILocation(line: 85, column: 3, scope: !421)
!4024 = !DILocation(line: 86, column: 20, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !421, file: !422, line: 86, column: 7)
!4026 = !DILocation(line: 86, column: 7, scope: !421)
!4027 = !DILocation(line: 88, column: 19, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !421, file: !422, line: 88, column: 7)
!4029 = !DILocation(line: 88, column: 7, scope: !421)
!4030 = !DILocation(line: 90, column: 13, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4028, file: !422, line: 89, column: 5)
!4032 = !DILocation(line: 91, column: 7, scope: !4031)
!4033 = !DILocation(line: 109, column: 10, scope: !421)
!4034 = !DILocation(line: 109, column: 3, scope: !421)
!4035 = !DILocation(line: 110, column: 1, scope: !421)
!4036 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !576, file: !576, line: 86, type: !4037, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4043)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!92, !4039, !35, !92, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2079, line: 6, baseType: !4042)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !582)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4044 = !DILocalVariable(name: "pwc", arg: 1, scope: !4036, file: !576, line: 86, type: !4039)
!4045 = !DILocalVariable(name: "s", arg: 2, scope: !4036, file: !576, line: 86, type: !35)
!4046 = !DILocalVariable(name: "n", arg: 3, scope: !4036, file: !576, line: 86, type: !92)
!4047 = !DILocalVariable(name: "ps", arg: 4, scope: !4036, file: !576, line: 86, type: !4040)
!4048 = !DILocalVariable(name: "ret", scope: !4036, file: !576, line: 88, type: !92)
!4049 = !DILocalVariable(name: "wc", scope: !4036, file: !576, line: 89, type: !2083)
!4050 = !DILocalVariable(name: "uc", scope: !4051, file: !576, line: 156, type: !1957)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !576, line: 155, column: 5)
!4052 = distinct !DILexicalBlock(scope: !4036, file: !576, line: 154, column: 7)
!4053 = !DILocation(line: 0, scope: !4036)
!4054 = !DILocation(line: 89, column: 3, scope: !4036)
!4055 = !DILocation(line: 105, column: 9, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4036, file: !576, line: 105, column: 7)
!4057 = !DILocation(line: 105, column: 7, scope: !4036)
!4058 = !DILocation(line: 145, column: 9, scope: !4036)
!4059 = !DILocation(line: 154, column: 19, scope: !4052)
!4060 = !DILocation(line: 154, column: 31, scope: !4052)
!4061 = !DILocation(line: 154, column: 26, scope: !4052)
!4062 = !DILocation(line: 154, column: 41, scope: !4052)
!4063 = !DILocation(line: 154, column: 7, scope: !4036)
!4064 = !DILocation(line: 156, column: 26, scope: !4051)
!4065 = !DILocation(line: 0, scope: !4051)
!4066 = !DILocation(line: 157, column: 14, scope: !4051)
!4067 = !DILocation(line: 157, column: 12, scope: !4051)
!4068 = !DILocation(line: 163, column: 1, scope: !4036)
!4069 = distinct !DISubprogram(name: "close_stream", scope: !595, file: !595, line: 56, type: !4070, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !4074)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!37, !4072}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3390, line: 7, baseType: !602)
!4074 = !{!4075, !4076, !4078, !4079}
!4075 = !DILocalVariable(name: "stream", arg: 1, scope: !4069, file: !595, line: 56, type: !4072)
!4076 = !DILocalVariable(name: "some_pending", scope: !4069, file: !595, line: 58, type: !4077)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!4078 = !DILocalVariable(name: "prev_fail", scope: !4069, file: !595, line: 59, type: !4077)
!4079 = !DILocalVariable(name: "fclose_fail", scope: !4069, file: !595, line: 60, type: !4077)
!4080 = !DILocation(line: 0, scope: !4069)
!4081 = !DILocation(line: 58, column: 30, scope: !4069)
!4082 = !DILocalVariable(name: "__stream", arg: 1, scope: !4083, file: !4084, line: 135, type: !4072)
!4083 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4084, file: !4084, line: 135, type: !4070, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !4085)
!4084 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4085 = !{!4082}
!4086 = !DILocation(line: 0, scope: !4083, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 59, column: 27, scope: !4069)
!4088 = !DILocation(line: 137, column: 10, scope: !4083, inlinedAt: !4087)
!4089 = !{!4090, !1323, i64 0}
!4090 = !{!"_IO_FILE", !1323, i64 0, !1199, i64 8, !1199, i64 16, !1199, i64 24, !1199, i64 32, !1199, i64 40, !1199, i64 48, !1199, i64 56, !1199, i64 64, !1199, i64 72, !1199, i64 80, !1199, i64 88, !1199, i64 96, !1199, i64 104, !1323, i64 112, !1323, i64 116, !1399, i64 120, !2330, i64 128, !1200, i64 130, !1200, i64 131, !1199, i64 136, !1399, i64 144, !1199, i64 152, !1199, i64 160, !1199, i64 168, !1199, i64 176, !1399, i64 184, !1323, i64 192, !1200, i64 196}
!4091 = !DILocation(line: 59, column: 43, scope: !4069)
!4092 = !DILocation(line: 60, column: 29, scope: !4069)
!4093 = !DILocation(line: 60, column: 45, scope: !4069)
!4094 = !DILocation(line: 70, column: 17, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4069, file: !595, line: 70, column: 7)
!4096 = !DILocation(line: 58, column: 50, scope: !4069)
!4097 = !DILocation(line: 70, column: 33, scope: !4095)
!4098 = !DILocation(line: 70, column: 53, scope: !4095)
!4099 = !DILocation(line: 70, column: 59, scope: !4095)
!4100 = !DILocation(line: 70, column: 7, scope: !4069)
!4101 = !DILocation(line: 72, column: 11, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4095, file: !595, line: 71, column: 5)
!4103 = !DILocation(line: 73, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4102, file: !595, line: 72, column: 11)
!4105 = !DILocation(line: 73, column: 15, scope: !4104)
!4106 = !DILocation(line: 78, column: 1, scope: !4069)
!4107 = distinct !DISubprogram(name: "hard_locale", scope: !634, file: !634, line: 27, type: !592, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !4108)
!4108 = !{!4109, !4110}
!4109 = !DILocalVariable(name: "category", arg: 1, scope: !4107, file: !634, line: 27, type: !37)
!4110 = !DILocalVariable(name: "locale", scope: !4107, file: !634, line: 29, type: !4111)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2056, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 257)
!4114 = !DILocation(line: 0, scope: !4107)
!4115 = !DILocation(line: 29, column: 3, scope: !4107)
!4116 = !DILocation(line: 29, column: 8, scope: !4107)
!4117 = !DILocation(line: 31, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4107, file: !634, line: 31, column: 7)
!4119 = !DILocation(line: 31, column: 7, scope: !4107)
!4120 = !DILocation(line: 34, column: 12, scope: !4107)
!4121 = !DILocation(line: 34, column: 38, scope: !4107)
!4122 = !DILocation(line: 34, column: 41, scope: !4107)
!4123 = !DILocation(line: 34, column: 66, scope: !4107)
!4124 = !DILocation(line: 35, column: 1, scope: !4107)
!4125 = distinct !DISubprogram(name: "locale_charset", scope: !641, file: !641, line: 831, type: !367, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4126)
!4126 = !{!4127}
!4127 = !DILocalVariable(name: "codeset", scope: !4125, file: !641, line: 833, type: !35)
!4128 = !DILocation(line: 847, column: 13, scope: !4125)
!4129 = !DILocation(line: 0, scope: !4125)
!4130 = !DILocation(line: 911, column: 15, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4125, file: !641, line: 911, column: 7)
!4132 = !DILocation(line: 911, column: 7, scope: !4125)
!4133 = !DILocation(line: 1070, column: 13, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !641, line: 1070, column: 13)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !641, line: 1060, column: 7)
!4136 = distinct !DILexicalBlock(scope: !4125, file: !641, line: 1019, column: 3)
!4137 = !DILocation(line: 1070, column: 24, scope: !4134)
!4138 = !DILocation(line: 1070, column: 13, scope: !4135)
!4139 = !DILocation(line: 1158, column: 3, scope: !4125)
!4140 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1034, file: !1034, line: 269, type: !4141, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!37, !37, !33, !92}
!4143 = !{!4144, !4145, !4146}
!4144 = !DILocalVariable(name: "category", arg: 1, scope: !4140, file: !1034, line: 269, type: !37)
!4145 = !DILocalVariable(name: "buf", arg: 2, scope: !4140, file: !1034, line: 269, type: !33)
!4146 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4140, file: !1034, line: 269, type: !92)
!4147 = !DILocation(line: 0, scope: !4140)
!4148 = !DILocalVariable(name: "category", arg: 1, scope: !4149, file: !1034, line: 91, type: !37)
!4149 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1034, file: !1034, line: 91, type: !4141, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4150)
!4150 = !{!4148, !4151, !4152, !4153, !4154}
!4151 = !DILocalVariable(name: "buf", arg: 2, scope: !4149, file: !1034, line: 91, type: !33)
!4152 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4149, file: !1034, line: 91, type: !92)
!4153 = !DILocalVariable(name: "result", scope: !4149, file: !1034, line: 140, type: !35)
!4154 = !DILocalVariable(name: "length", scope: !4155, file: !1034, line: 154, type: !92)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !1034, line: 153, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4149, file: !1034, line: 142, column: 7)
!4157 = !DILocation(line: 0, scope: !4149, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 274, column: 10, scope: !4140)
!4159 = !DILocalVariable(name: "category", arg: 1, scope: !4160, file: !1034, line: 60, type: !37)
!4160 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1034, file: !1034, line: 60, type: !4161, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!35, !37}
!4163 = !{!4159, !4164}
!4164 = !DILocalVariable(name: "result", scope: !4160, file: !1034, line: 62, type: !35)
!4165 = !DILocation(line: 0, scope: !4160, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 140, column: 24, scope: !4149, inlinedAt: !4158)
!4167 = !DILocation(line: 62, column: 24, scope: !4160, inlinedAt: !4166)
!4168 = !DILocation(line: 142, column: 14, scope: !4156, inlinedAt: !4158)
!4169 = !DILocation(line: 142, column: 7, scope: !4149, inlinedAt: !4158)
!4170 = !DILocation(line: 145, column: 19, scope: !4171, inlinedAt: !4158)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !1034, line: 145, column: 11)
!4172 = distinct !DILexicalBlock(scope: !4156, file: !1034, line: 143, column: 5)
!4173 = !DILocation(line: 145, column: 11, scope: !4172, inlinedAt: !4158)
!4174 = !DILocation(line: 149, column: 16, scope: !4171, inlinedAt: !4158)
!4175 = !DILocation(line: 149, column: 9, scope: !4171, inlinedAt: !4158)
!4176 = !DILocation(line: 154, column: 23, scope: !4155, inlinedAt: !4158)
!4177 = !DILocation(line: 0, scope: !4155, inlinedAt: !4158)
!4178 = !DILocation(line: 155, column: 18, scope: !4179, inlinedAt: !4158)
!4179 = distinct !DILexicalBlock(scope: !4155, file: !1034, line: 155, column: 11)
!4180 = !DILocation(line: 155, column: 11, scope: !4155, inlinedAt: !4158)
!4181 = !DILocation(line: 157, column: 39, scope: !4182, inlinedAt: !4158)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !1034, line: 156, column: 9)
!4183 = !DILocalVariable(name: "__dest", arg: 1, scope: !4184, file: !2337, line: 31, type: !3727)
!4184 = distinct !DISubprogram(name: "memcpy", scope: !2337, file: !2337, line: 31, type: !3725, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4185)
!4185 = !{!4183, !4186, !4187}
!4186 = !DILocalVariable(name: "__src", arg: 2, scope: !4184, file: !2337, line: 31, type: !3728)
!4187 = !DILocalVariable(name: "__len", arg: 3, scope: !4184, file: !2337, line: 31, type: !92)
!4188 = !DILocation(line: 0, scope: !4184, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 157, column: 11, scope: !4182, inlinedAt: !4158)
!4190 = !DILocation(line: 34, column: 10, scope: !4184, inlinedAt: !4189)
!4191 = !DILocation(line: 158, column: 11, scope: !4182, inlinedAt: !4158)
!4192 = !DILocation(line: 162, column: 23, scope: !4193, inlinedAt: !4158)
!4193 = distinct !DILexicalBlock(scope: !4194, file: !1034, line: 162, column: 15)
!4194 = distinct !DILexicalBlock(scope: !4179, file: !1034, line: 161, column: 9)
!4195 = !DILocation(line: 162, column: 15, scope: !4194, inlinedAt: !4158)
!4196 = !DILocation(line: 167, column: 44, scope: !4197, inlinedAt: !4158)
!4197 = distinct !DILexicalBlock(scope: !4193, file: !1034, line: 163, column: 13)
!4198 = !DILocation(line: 0, scope: !4184, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 167, column: 15, scope: !4197, inlinedAt: !4158)
!4200 = !DILocation(line: 34, column: 10, scope: !4184, inlinedAt: !4199)
!4201 = !DILocation(line: 168, column: 15, scope: !4197, inlinedAt: !4158)
!4202 = !DILocation(line: 168, column: 32, scope: !4197, inlinedAt: !4158)
!4203 = !DILocation(line: 169, column: 13, scope: !4197, inlinedAt: !4158)
!4204 = !DILocation(line: 0, scope: !4156, inlinedAt: !4158)
!4205 = !DILocation(line: 274, column: 3, scope: !4140)
!4206 = distinct !DISubprogram(name: "setlocale_null", scope: !1034, file: !1034, line: 301, type: !4161, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4207)
!4207 = !{!4208}
!4208 = !DILocalVariable(name: "category", arg: 1, scope: !4206, file: !1034, line: 301, type: !37)
!4209 = !DILocation(line: 0, scope: !4206)
!4210 = !DILocation(line: 0, scope: !4160, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 304, column: 10, scope: !4206)
!4212 = !DILocation(line: 62, column: 24, scope: !4160, inlinedAt: !4211)
!4213 = !DILocation(line: 304, column: 3, scope: !4206)
!4214 = distinct !DISubprogram(name: "rpl_fclose", scope: !1037, file: !1037, line: 58, type: !4215, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !4219)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!37, !4217}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3390, line: 7, baseType: !1043)
!4219 = !{!4220, !4221, !4222, !4223}
!4220 = !DILocalVariable(name: "fp", arg: 1, scope: !4214, file: !1037, line: 58, type: !4217)
!4221 = !DILocalVariable(name: "saved_errno", scope: !4214, file: !1037, line: 60, type: !37)
!4222 = !DILocalVariable(name: "fd", scope: !4214, file: !1037, line: 61, type: !37)
!4223 = !DILocalVariable(name: "result", scope: !4214, file: !1037, line: 62, type: !37)
!4224 = !DILocation(line: 0, scope: !4214)
!4225 = !DILocation(line: 65, column: 8, scope: !4214)
!4226 = !DILocation(line: 66, column: 10, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4214, file: !1037, line: 66, column: 7)
!4228 = !DILocation(line: 66, column: 7, scope: !4214)
!4229 = !DILocation(line: 67, column: 12, scope: !4227)
!4230 = !DILocation(line: 67, column: 5, scope: !4227)
!4231 = !DILocation(line: 72, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4214, file: !1037, line: 72, column: 7)
!4233 = !DILocation(line: 72, column: 23, scope: !4232)
!4234 = !DILocation(line: 72, column: 33, scope: !4232)
!4235 = !DILocation(line: 72, column: 26, scope: !4232)
!4236 = !DILocation(line: 72, column: 59, scope: !4232)
!4237 = !DILocation(line: 73, column: 7, scope: !4232)
!4238 = !DILocation(line: 73, column: 10, scope: !4232)
!4239 = !DILocation(line: 72, column: 7, scope: !4214)
!4240 = !DILocation(line: 100, column: 12, scope: !4214)
!4241 = !DILocation(line: 105, column: 7, scope: !4214)
!4242 = !DILocation(line: 74, column: 19, scope: !4232)
!4243 = !DILocation(line: 105, column: 19, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4214, file: !1037, line: 105, column: 7)
!4245 = !DILocation(line: 107, column: 13, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4244, file: !1037, line: 106, column: 5)
!4247 = !DILocation(line: 109, column: 5, scope: !4246)
!4248 = !DILocation(line: 112, column: 1, scope: !4214)
!4249 = distinct !DISubprogram(name: "rpl_fflush", scope: !1080, file: !1080, line: 129, type: !4250, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !4254)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!37, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3390, line: 7, baseType: !1086)
!4254 = !{!4255}
!4255 = !DILocalVariable(name: "stream", arg: 1, scope: !4249, file: !1080, line: 129, type: !4252)
!4256 = !DILocation(line: 0, scope: !4249)
!4257 = !DILocation(line: 150, column: 14, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4249, file: !1080, line: 150, column: 7)
!4259 = !DILocation(line: 150, column: 22, scope: !4258)
!4260 = !DILocation(line: 150, column: 27, scope: !4258)
!4261 = !DILocation(line: 150, column: 7, scope: !4249)
!4262 = !DILocation(line: 151, column: 12, scope: !4258)
!4263 = !DILocation(line: 151, column: 5, scope: !4258)
!4264 = !DILocalVariable(name: "fp", arg: 1, scope: !4265, file: !1080, line: 41, type: !4252)
!4265 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1080, file: !1080, line: 41, type: !4266, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !4252}
!4268 = !{!4264}
!4269 = !DILocation(line: 0, scope: !4265, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 156, column: 3, scope: !4249)
!4271 = !DILocation(line: 43, column: 11, scope: !4272, inlinedAt: !4270)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !1080, line: 43, column: 7)
!4273 = !DILocation(line: 43, column: 18, scope: !4272, inlinedAt: !4270)
!4274 = !DILocation(line: 43, column: 7, scope: !4265, inlinedAt: !4270)
!4275 = !DILocation(line: 45, column: 5, scope: !4272, inlinedAt: !4270)
!4276 = !DILocation(line: 158, column: 10, scope: !4249)
!4277 = !DILocation(line: 158, column: 3, scope: !4249)
!4278 = !DILocation(line: 235, column: 1, scope: !4249)
!4279 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1121, file: !1121, line: 28, type: !4280, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1120, retainedNodes: !4285)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!37, !4282, !4284, !37}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3390, line: 7, baseType: !1127)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !40, line: 63, baseType: !66)
!4285 = !{!4286, !4287, !4288, !4289}
!4286 = !DILocalVariable(name: "fp", arg: 1, scope: !4279, file: !1121, line: 28, type: !4282)
!4287 = !DILocalVariable(name: "offset", arg: 2, scope: !4279, file: !1121, line: 28, type: !4284)
!4288 = !DILocalVariable(name: "whence", arg: 3, scope: !4279, file: !1121, line: 28, type: !37)
!4289 = !DILocalVariable(name: "pos", scope: !4290, file: !1121, line: 117, type: !4284)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !1121, line: 113, column: 5)
!4291 = distinct !DILexicalBlock(scope: !4279, file: !1121, line: 52, column: 7)
!4292 = !DILocation(line: 0, scope: !4279)
!4293 = !DILocation(line: 52, column: 11, scope: !4291)
!4294 = !{!4090, !1199, i64 16}
!4295 = !DILocation(line: 52, column: 31, scope: !4291)
!4296 = !{!4090, !1199, i64 8}
!4297 = !DILocation(line: 52, column: 24, scope: !4291)
!4298 = !DILocation(line: 53, column: 7, scope: !4291)
!4299 = !DILocation(line: 53, column: 14, scope: !4291)
!4300 = !{!4090, !1199, i64 40}
!4301 = !DILocation(line: 53, column: 35, scope: !4291)
!4302 = !{!4090, !1199, i64 32}
!4303 = !DILocation(line: 53, column: 28, scope: !4291)
!4304 = !DILocation(line: 54, column: 7, scope: !4291)
!4305 = !DILocation(line: 54, column: 14, scope: !4291)
!4306 = !{!4090, !1199, i64 72}
!4307 = !DILocation(line: 54, column: 28, scope: !4291)
!4308 = !DILocation(line: 52, column: 7, scope: !4279)
!4309 = !DILocation(line: 117, column: 26, scope: !4290)
!4310 = !DILocation(line: 117, column: 19, scope: !4290)
!4311 = !DILocation(line: 0, scope: !4290)
!4312 = !DILocation(line: 118, column: 15, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4290, file: !1121, line: 118, column: 11)
!4314 = !DILocation(line: 118, column: 11, scope: !4290)
!4315 = !DILocation(line: 129, column: 11, scope: !4290)
!4316 = !DILocation(line: 129, column: 18, scope: !4290)
!4317 = !DILocation(line: 130, column: 11, scope: !4290)
!4318 = !DILocation(line: 130, column: 19, scope: !4290)
!4319 = !{!4090, !1399, i64 144}
!4320 = !DILocation(line: 161, column: 7, scope: !4290)
!4321 = !DILocation(line: 163, column: 10, scope: !4279)
!4322 = !DILocation(line: 163, column: 3, scope: !4279)
!4323 = !DILocation(line: 164, column: 1, scope: !4279)
